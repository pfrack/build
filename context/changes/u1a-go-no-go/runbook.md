# U1A SD Boot Runbook

One physical session. Follow the sections in order. Do not skip the NAND
guardrail.

Artifacts live in `context/changes/u1a-go-no-go/`. Images live outside the
repo in `$HOME/armbian-images/u1a-go-no-go/`.

Time boxes: first boot 10 minutes, later boots 2 minutes.

## 1. Pre-flight

Run on the host:

```bash
cd /home/pawel/code/measyu1a
bash context/changes/u1a-go-no-go/preflight.sh
```

Expected: every line starts with `PASS` or `INFO`, and the last line is
`Pre-flight result: PASS`. Exit code 0.

Check by hand:

- HDMI cable from the U1A to the TV.
- USB keyboard in the U1A.
- 5 V power supply for the U1A.
- The SD card is inserted in the host reader.

## 2. Image download and verify

Image directory: `$HOME/armbian-images/u1a-go-no-go/`.

Image (verified 2026-10-24):

- Source page: <https://www.armbian.com/cubieboard/>
- URL: <https://github.com/armbian/community/releases/download/26.11.0-trunk.108/Armbian_community_26.11.0-trunk.108_Cubieboard_trixie_current_6.18.57_minimal.img.xz>
- File: `Armbian_community_26.11.0-trunk.108_Cubieboard_trixie_current_6.18.57_minimal.img.xz`
- Kernel: 6.18.57
- SHA256: `f3f3f83ae403960aef8714e98b5095ae506cf1e6fbefd15b16fd0c2b5ae45a4c`

Verify:

```bash
cd "$HOME/armbian-images/u1a-go-no-go"
sha256sum -c Armbian_community_26.11.0-trunk.108_Cubieboard_trixie_current_6.18.57_minimal.img.xz.sha
```

Expected: `...img.xz: OK`.

Guardrail: the filename must say `Cubieboard`, not `Cubietruck`. Cubietruck is
A20 and cannot boot the A10 U1A.

## 3. Flash

Insert the card. Check that it is writable:

```bash
cat /sys/block/mmcblk0/ro
```

Expected: `0`. If `1`, slide the write-protect switch on the SD adapter,
reinsert the card, and check again.

Identify it:

```bash
lsblk -o NAME,SIZE,MODEL,SERIAL,TRAN,RM,TYPE,MOUNTPOINTS
```

Expected: a removable disk with the card size. Note its name, for example
`/dev/sdc`. Confirm the size and model. Unmount every partition of that disk.

Set the device explicitly (replace `sdX`):

```bash
DEV=/dev/sdX
lsblk "$DEV"
```

Expected: the card disk and its partitions. No partitions are mounted.

Write the image:

```bash
cd "$HOME/armbian-images/u1a-go-no-go"
xz -dc Armbian_community_26.11.0-trunk.108_Cubieboard_trixie_current_6.18.57_minimal.img.xz \
  | pv -p -b -r -c -N u1a | sudo dd of="$DEV" bs=1M iflag=fullblock oflag=direct status=none
sync
```

Expected: `pv` reaches 100 % with no write error.

Verify the write against the image:

```bash
SIZE=$(xz -l --robot Armbian_community_26.11.0-trunk.108_Cubieboard_trixie_current_6.18.57_minimal.img.xz \
  | awk -F '\t' '$1 == "totals" {print $5; exit}')
xz -dc Armbian_community_26.11.0-trunk.108_Cubieboard_trixie_current_6.18.57_minimal.img.xz \
  | sha256sum
sudo dd if="$DEV" bs=1M status=none | head -c "$SIZE" | sha256sum
```

Expected: two identical SHA256 lines. If they differ, reflash.

Show the partition layout:

```bash
lsblk -o NAME,SIZE,FSTYPE,LABEL,MOUNTPOINTS "$DEV"
```

Expected: one ext4 partition labeled `armbi_root`, about 1.4 GiB before the
first boot. The first boot grows it to fill the card. Record the layout in
`results.md`.

## 4. First boot

1. Insert the card into the U1A.
2. Connect HDMI and the USB keyboard.
3. Apply power.
4. Wait up to 10 minutes. Do not remove power during the resize.

Expected: kernel messages on the TV, then the resize message, then a login
prompt.

Do not treat a blank screen during U-Boot as a failure. The HDMI console
appears only after the kernel takes over the display.

Log in:

```text
login: root
password: 1234
```

Expected: a shell prompt. Change nothing.

Record in `results.md`: time to login prompt, whether the resize message
appeared, and any visible kernel errors.

If no login prompt after 10 minutes, stop and go to section 7 (FEL fallback).

## 5. Evidence capture

On the U1A console, write the evidence to the boot partition:

```bash
mkdir -p /boot/u1a-evidence
dmesg > /boot/u1a-evidence/dmesg
lsusb > /boot/u1a-evidence/lsusb
uname -a > /boot/u1a-evidence/uname
cat /proc/cpuinfo > /boot/u1a-evidence/cpuinfo
free -h > /boot/u1a-evidence/free
cat /proc/device-tree/model > /boot/u1a-evidence/model
cat /boot/armbianEnv.txt > /boot/u1a-evidence/armbianEnv.txt
sync
poweroff
```

Expected: `poweroff` completes and the LED turns off.

On the host, after power-off, move the card to the reader and mount the root
partition read-only. Replace `sdX1` with the only partition:

```bash
sudo mkdir -p /mnt/u1a-boot
sudo mount -o ro /dev/sdX1 /mnt/u1a-boot
mkdir -p context/changes/u1a-go-no-go/evidence
cp /mnt/u1a-boot/boot/u1a-evidence/* context/changes/u1a-go-no-go/evidence/
sudo umount /mnt/u1a-boot
ls -l context/changes/u1a-go-no-go/evidence/
```

Expected: seven files, all non-empty. Record the file list in `results.md`.

Check for fatal lines:

```bash
grep -nE 'Oops|panic|BUG:' context/changes/u1a-go-no-go/evidence/dmesg
```

Expected: no matches, or only matches from Cubieboard-only drivers
(Ethernet, SATA).

## 6. Verdict

Record in `results.md`, section Verdict. Use exactly one tier:

- PASS: login prompt reached, HDMI works, `dmesg` has no fatal errors beyond
  Cubieboard-only hardware, NAND untouched, SD removal restores Android.
- PARTIAL: boots to login, but Wi-Fi or USB is unresolved.
- FAIL: no login prompt after 10 minutes.

Also record the evidence paths and one next action.

## 7. FEL fallback

Use only if the image did not boot.

1. Remove power and the SD card.
2. Enter FEL with the sequence recorded in `results.md` (Hardware facts).
3. Connect the U1A USB port to the host.
4. Run:

```bash
sunxi-fel version
sunxi-fel sid
```

Expected if the SoC is alive: a BROM version line, the `sunxi-fel` tool
version, and a SID value. Record both outputs.

If `sunxi-fel` reports `Allwinner USB FEL device not found`, the SoC did not
enter FEL. Record that and stop. The UART adapter becomes a separate
follow-up.

## 8. Restore Android

Do this after evidence capture, before any further experiment.

1. Power off the U1A.
2. Remove the SD card.
3. Apply power.

Expected: stock Android starts. This proves the NAND was not touched.

Record the result in `results.md` (Boot section). Reinsert the card only after
the check passes.

## Backup after success

After a successful boot and Android check:

```bash
sudo dd if=/dev/sdX bs=1M status=progress of="$HOME/armbian-images/u1a-go-no-go/u1a-known-good.img"
```

Keep this image as the known-good baseline for later DTS experiments.
