#!/usr/bin/env bash
#
# Pre-flight check for the U1A SD boot go/no-go session.
# Exit 0 when the host is ready, non-zero when any required item fails.
#
# Usage: bash context/changes/u1a-go-no-go/preflight.sh [--image-dir DIR]

set -u

IMAGE_DIR="${IMAGE_DIR:-$HOME/armbian-images/u1a-go-no-go}"
MIN_FREE_GB=8
FAILURES=0

if [[ "${1:-}" == "--image-dir" ]]; then
	IMAGE_DIR="${2:?--image-dir needs a path}"
fi

pass() { printf 'PASS  %s\n' "$*"; }
fail() { printf 'FAIL  %s\n' "$*"; FAILURES=$((FAILURES + 1)); }
info() { printf 'INFO  %s\n' "$*"; }

echo "U1A pre-flight: $(date -Is)"
echo "Image directory: $IMAGE_DIR"
echo

echo "== Required tools =="
for tool in pv dd sha256sum xz zstd; do
	if path=$(command -v "$tool" 2>/dev/null); then
		pass "$tool -> $path"
	else
		fail "$tool is missing"
	fi
done

echo
echo "== FEL tool =="
if path=$(command -v sunxi-fel 2>/dev/null); then
	fel_out=$(sunxi-fel version 2>&1)
	if [[ $? -eq 0 ]]; then
		pass "sunxi-fel -> $path ($(printf '%s' "$fel_out" | tr '\n' ' '))"
	elif printf '%s' "$fel_out" | grep -qi 'FEL device not found'; then
		pkg_ver=""
		if command -v pacman >/dev/null 2>&1; then
			pkg_ver=$(pacman -Q sunxi-tools 2>/dev/null | awk '{print $2}')
		elif command -v dpkg-query >/dev/null 2>&1; then
			pkg_ver=$(dpkg-query -W -f='${Version}' sunxi-tools 2>/dev/null)
		fi
		pass "sunxi-fel -> $path (${pkg_ver:-installed}); no device in FEL mode, version probe deferred"
	else
		fail "sunxi-fel -> $path ($fel_out)"
	fi
else
	fail "sunxi-fel is missing"
fi

echo
echo "== Disk space =="
if [[ -d "$IMAGE_DIR" ]]; then
	free_kb=$(df -Pk "$IMAGE_DIR" | awk 'NR==2 {print $4}')
	free_gb=$((free_kb / 1024 / 1024))
	if [[ $free_gb -ge $MIN_FREE_GB ]]; then
		pass "$free_gb GB free on the image filesystem (minimum $MIN_FREE_GB GB)"
	else
		fail "$free_gb GB free on the image filesystem (minimum $MIN_FREE_GB GB)"
	fi
else
	fail "image directory does not exist: $IMAGE_DIR"
fi

echo
echo "== Removable block devices =="
removable=$(lsblk -dno NAME,SIZE,MODEL,RM,TYPE 2>/dev/null | awk '$4 == "1" && $5 == "disk"')
if [[ -n "$removable" ]]; then
	printf 'PASS  removable disks found:\n'
	printf '%s\n' "$removable" | while IFS= read -r line; do printf '      %s\n' "$line"; done
else
	info "no removable disks found; attach the card reader and re-run"
fi
info "identify the card by size, model, and lsblk tree before any write"

echo
echo "== Cubieboard image =="
if [[ -d "$IMAGE_DIR" ]]; then
	mapfile -t images < <(find "$IMAGE_DIR" -maxdepth 1 -type f -name '*Cubieboard*.img.xz' | sort)
	if [[ ${#images[@]} -gt 0 ]]; then
		for image in "${images[@]}"; do
			pass "image -> $image"
			sha_file="${image}.sha"
			if [[ -f "$sha_file" ]]; then
				if (cd "$IMAGE_DIR" && sha256sum -c --status "$(basename "$sha_file")"); then
					pass "checksum -> $(basename "$sha_file")"
				else
					fail "checksum mismatch -> $(basename "$sha_file")"
				fi
			else
				info "no checksum file next to $(basename "$image")"
			fi
		done
	else
		fail "no *Cubieboard*.img.xz in $IMAGE_DIR"
	fi
else
	fail "cannot look for images: $IMAGE_DIR does not exist"
fi

echo
if [[ $FAILURES -eq 0 ]]; then
	echo "Pre-flight result: PASS"
	exit 0
fi

echo "Pre-flight result: FAIL ($FAILURES item(s))"
exit 1
