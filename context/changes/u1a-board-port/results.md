# Measy U1A Board Port Results

Evidence and verdict for the `u1a-board-port` slice. Fill sections as data
arrives. Do not record a verdict from memory.

## Environment

- Host: Arch Linux, kernel `6.18.57-2-lts`, `x86_64`.
- Build: Docker container `ghcr.io/armbian/docker-armbian-build:armbian-debian-trixie-latest`, privileged; host binfmt_misc now registers `qemu-arm`/`qemu-aarch64` via `qemu-user-static` + `qemu-user-static-binfmt`.
- Host tools added for this slice: `dtc` (v1.8.1), `qemu-user-static`, `qemu-user-static-binfmt`.
- Free space: 108 GiB on NVMe build device.
- Note: first attempt aborted because the container image ships no binfmt registration files and the host had no qemu binfmt; fixed by enabling host binfmts.

## Build

- Command: `./compile.sh build BOARD=measyu1a BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes KERNEL_CONFIGURE=no`
- Docker run finished after 1030s; result: successful.
- The U-Boot DRAM hook fired (`set dram clock`, `disable de2 to improve edid detection`); no DTS/patch errors in the log.
- Evidence: `evidence/build-summary.md`, `evidence/build-log.ans`.

## Image

- File: `output/images/Armbian-unofficial_26.11.0-trunk_Measyu1a_trixie_current_6.18.58_minimal.img` (1472 MiB).
- SHA256 (`image.sha`): `76076fa76e54e3ba4d9f0eb38384e254731e0650966ba1ab93366901535c02e2` (verified with `sha256sum -c`: OK).
- `/etc/armbian-release`: `BOARD=measyu1a`, `BOARD_NAME="Measy U1A"`, `BOARDFAMILY=sun4i`.

## DTB

- DTB present in image at `/boot/dtb-6.18.58-current-sunxi/sun4i-a10-measy-u1a.dtb` and `/usr/lib/linux-image-6.18.58-current-sunxi/sun4i-a10-measy-u1a.dtb`; no `dtb/allwinner/` directory (current image layout).
- Decoded with host `dtc -I dtb -O dts`: `model = "Measy U1A"`; `compatible = "measy,u1a", "allwinner,sun4i-a10"`.
- `/boot/armbianEnv.txt` contains `fdtfile=allwinner/sun4i-a10-measy-u1a.dtb`.
- Kernel config: `CONFIG_ARCH_SUNXI=y`, `CONFIG_RTL8XXXU=m`, `CONFIG_DRM_SUN4I=y` (config file `boot/config-6.18.58-current-sunxi`).
- Firmware: `usr/lib/firmware/rtlwifi/rtl8188eufw.bin` present.
- Evidence: `evidence/image.verification.txt`.

## Card backup

- Skipped at operator discretion: the card was treated as sacrificial (plain stock state), and the source image is re-downloadable.
- Deviation note: plan success criterion 3.1 is not satisfied by this slice; the operator explicitly deferred the backup.

## Flash

- Target device: `/dev/mmcblk0` (28.9 GB, serial `0x748d43bb` — matches the go/no-go card; distinct from the `nvme` system disks).
- Command: `sudo dd if=output/images/Armbian-unofficial_26.11.0-trunk_Measyu1a_trixie_current_6.18.58_minimal.img of=/dev/mmcblk0 bs=1M oflag=direct status=progress` — exit 0, 1472 records, 1.47 GiB.
- Written region verified: `cmp -n 1543503872 $img /dev/mmcblk0` → matches.
- Display: set `disp_mode=1280x720p60` in `/boot/armbianEnv.txt` (was `1920x1080p60`); left `fdtfile=allwinner/sun4i-a10-measy-u1a.dtb`.
- The custom DTB is present on the card at `/boot/dtb-6.18.58-current-sunxi/sun4i-a10-measy-u1a.dtb`.

## Boot

## Wi-Fi

## NAND

## Verdict

## Follow-ups
