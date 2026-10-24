# U1A SD Boot Go/No-Go Implementation Plan

## Overview

Prove whether the stock Armbian Cubieboard 1 image boots the Measy U1A from SD with an HDMI console. Record a defensible go/no-go verdict. Every later slice (DTS patch, `measyu1a` board file, fork build) depends on this answer.

This plan produces no `measyu1a` board artifacts and runs no fork build. It prepares the host, runs one physical boot session, captures evidence, and records a verdict.

## Current State Analysis

- The device is a Measy U1A: Allwinner A10 (`sun4i`), 1 GB RAM, HDMI output, internal USB Wi-Fi, no Ethernet, stock Android on NAND.
- The fork has no `measyu1a` artifacts. Only planning docs under `context/` mention the board.
- Cubieboard 1 is the reference board: `config/boards/cubieboard.csc` sets `BOARDFAMILY="sun4i"`, `BOOTCONFIG="Cubieboard_config"`, `HAS_VIDEO_OUTPUT="no"`, `KERNEL_TARGET="current,edge,legacy"`, `MODULES_BLACKLIST="ir_lirc_codec lirc_dev sunxi-cir"`.
- `config/sources/families/sun4i.conf` sources `include/sunxi_common.inc`, which sets `ARCH=armhf`, `BOOTBRANCH=tag:v2026.07`, `BOOTPATCHDIR=v2026.07-sunxi`, `UBOOT_TARGET_MAP=;;u-boot-sunxi-with-spl.bin`, `BOOTSCRIPT=boot-sunxi.cmd:boot.cmd`, `BOOTENV_FILE=sunxi.txt`, `LINUXFAMILY=sunxi`, `OVERLAY_PREFIX=sun4i-a10`. Branch `current` is kernel 6.18, `KERNELPATCHDIR=archive/sunxi-6.18`.
- HDMI console needs no image change. `config/bootenv/sunxi.txt` sets `console=both` and `disp_mode=1920x1080p60`. `config/bootscripts/boot-sunxi.cmd:79-82` maps `display` to `console=tty1`, `serial` to `console=ttyS0,115200`, and `both` to both. `/boot/armbianEnv.txt` on the card overrides at runtime.
- `HAS_VIDEO_OUTPUT="no"` only suppresses the Armbian boot splash. The kernel HDMI driver still runs (`CONFIG_DRM_SUN4I=y`).
- Flash path: `pv -p -b -r -c -N ... | dd of=<dev> bs=1M iflag=fullblock oflag=direct` in `lib/functions/image/write-device.sh`, with a sha256 verify. `pv`, `dd`, `sha256sum`, `xz`, `zstd` exist on the host.
- The host has Docker 29.9.1 and 51 GB free. The download path needs only a few GB, so no fork build is required now.
- The host lacks `sunxi-fel`. The `sunxi-tools` extension builds it inside the ephemeral build container, not on the host.
- First-boot resize runs in `armbian-resize-filesystem.service` with `TimeoutStartSec=6min`. The expected first boot is 5–10 min. A power pull can corrupt the card.
- PRD Open Questions 1–5 (Wi-Fi chip, DRAM, FEL button, GPIO, does it boot) are physical and unresolved.

## Desired End State

- A verified method image and a flashed, checksum-verified SD card.
- `sunxi-tools` installed on the host, so the FEL fallback is ready before the session.
- An operator runbook that covers pre-flight, flash, first boot, capture, verdict, and fallback.
- One `results.md` with: the verdict (PASS / PARTIAL / FAIL), the evidence paths, the Wi-Fi chip and driver status, and answers to the physical open questions.
- Internal NAND untouched. Removing the SD card restores stock Android.
- A PC-side image of the known-good card, taken after a successful boot.

### Key Discoveries:

- Board template and U-Boot hook: `config/boards/cubieboard.csc:1-19`.
- Family values, including `OVERLAY_PREFIX='sun4i-a10'` and `KERNELPATCHDIR`: `config/sources/families/sun4i.conf:10-13` and `config/sources/families/include/sunxi_common.inc:9-41`.
- Console mapping and bootargs assembly: `config/bootscripts/boot-sunxi.cmd:79-89`.
- Default card env: `config/bootenv/sunxi.txt:1-4`.
- Verified card write and checksum: `lib/functions/image/write-device.sh`.
- Resize service timeout: `packages/bsp/common/lib/systemd/system/armbian-resize-filesystem.service`.
- There is no `sun4i*.inc`. Only `sunxi_common.inc` exists.

## What We're NOT Doing

- No fork build (`./compile.sh build`). That is Phase 3 work.
- No `config/boards/measyu1a.wip` or `sun4i-a10-measy-u1a` DTS patch.
- No DRAM, U-Boot, or device-tree tuning.
- No UART adapter purchase or soldering.
- No Wi-Fi driver or firmware work beyond identification.
- No upstream PR.
- No writes to internal NAND. Never run `armbian-install` or `nand-sata-install`.
- No repartitioning or reformatting of the boot card.

## Implementation Approach

Three phases with a hard stop between each.

Phase 1 makes the host ready and writes the runbook. Do the physical fact-gathering here, so the boot session is one uninterrupted pass.

Phase 2 is the physical boot. It has a manual gate: the operator confirms the login prompt and the resize window.

Phase 3 turns observation into evidence. Logs go to `/boot` on the card, then to the host. The verdict is recorded, and the FEL path runs only if the image does not boot.

All artifacts stay under `context/changes/u1a-go-no-go/`, which is untracked.

## Critical Implementation Details

- **Correct board image:** download the Cubieboard 1 (Allwinner A10) image, not the Cubietruck (A20) image. Both are listed near each other on the Armbian download page. An A20 image cannot boot an A10.
- **First boot:** do not power off or pull the card during the resize window. The service has a 6-minute timeout, and the card is being resized in place.
- **Console visibility:** the HDMI console appears only after the kernel takes over the display. Do not treat a blank screen during U-Boot as a failure. Wait the full 10 minutes before calling FAIL.
- **NAND guardrail:** never run `armbian-install` or `nand-sata-install`. These write to NAND and break the Android fallback.

## Phase 1: Host Prep and Image Acquisition

### Overview

Make the host ready, obtain and verify the image, install the FEL tool, and write the operator runbook. Capture the physical facts that block later phases.

### Changes Required:

#### 1. Pre-flight check script

**File**: `context/changes/u1a-go-no-go/preflight.sh`

**Intent**: One command answers "is this host ready for the boot session". It prevents a failed session caused by a missing tool or low disk.

**Contract**: Bash script, exit 0 on pass and non-zero on fail. Check each item and print `PASS` or `FAIL` with the observed value:
- `pv`, `dd`, `sha256sum`, `xz`, `zstd` present.
- `sunxi-fel` present and reports a version.
- At least 8 GB free on the filesystem that holds the image.
- List removable block devices from `lsblk` for the operator to identify the card.
- At least one Cubieboard image file found in the image directory.

#### 2. Operator runbook

**File**: `context/changes/u1a-go-no-go/runbook.md`

**Intent**: Single source for the physical session. The operator follows it without re-deriving commands.

**Contract**: Sections in this order: Pre-flight, Image download and verify, Flash, First boot, Evidence capture, Verdict, FEL fallback, Restore Android. Each step has the exact command and the expected output. Include the time boxes: 10 minutes for first boot, 2 minutes for later boots.

#### 3. Host FEL tooling

**File**: host system, not the repo.

**Intent**: Make the `sunxi-fel` fallback available before the boot attempt. The build extension installs into a container, so the host needs its own copy.

**Contract**: `sunxi-fel version` prints a version on the host. Install from the distro package if available, else build from `https://github.com/linux-sunxi/sunxi-tools`.

#### 4. Image acquisition and verification

**File**: image directory outside the repo, recorded in `results.md`.

**Intent**: Obtain the current official Cubieboard 1 image and prove it is intact and correct.

**Contract**: Record in `results.md`: source URL, filename, download date, published checksum, computed sha256, and the kernel version from the filename. Verify with `sha256sum -c`. Confirm the filename is the A10 Cubieboard 1 image, not Cubietruck.

#### 5. Results scaffold

**File**: `context/changes/u1a-go-no-go/results.md`

**Intent**: Capture evidence and the verdict in one place as they are produced, not from memory later.

**Contract**: Sections: Environment, Image, Card, Boot, Evidence index, Hardware facts, Verdict, Follow-ups. The Verdict section starts empty and accepts only `PASS`, `PARTIAL`, or `FAIL`. The Hardware facts section holds the RAM silkscreen, FEL button location and entry sequence, and the Wi-Fi `lsusb` line.

### Success Criteria:

#### Automated Verification:

- Pre-flight passes: `bash context/changes/u1a-go-no-go/preflight.sh`
- FEL tool works: `sunxi-fel version`
- Image checksum verifies: `sha256sum -c <image>.sha256`
- Artifacts exist: `runbook.md`, `results.md`, and `preflight.sh` exist in the change folder

#### Manual Verification:

- The downloaded image is the Cubieboard 1 A10 image, not Cubietruck
- RAM chip silkscreen and FEL button location/entry sequence are recorded in `results.md`

**Implementation Note**: After this phase and all automated checks pass, pause for manual confirmation before Phase 2.

---

## Phase 2: Flash and First Boot

### Overview

Write the verified image to the SD card, boot the U1A, and confirm the HDMI console and login. Preserve the NAND guardrail.

### Changes Required:

#### 1. Card identification and write

**File**: `context/changes/u1a-go-no-go/runbook.md` (procedure); output recorded in `results.md`.

**Intent**: Write the image to the correct device and prove the write.

**Contract**: Identify the card by size, model, and `lsblk` tree; require the operator to state the device name. Write with `pv <image> | dd of=<dev> bs=1M iflag=fullblock oflag=direct status=none`. Re-read the card head or a fixed length and compare the sha256 with the image. Record the device name, size, and checksums.

#### 2. First boot

**File**: procedure in `runbook.md`; observations in `results.md`.

**Intent**: Reach a login prompt without corrupting the card.

**Contract**: Insert the card, apply power, wait up to 10 minutes. Do not power off during resize. Log in at the HDMI console as `root` with password `1234`. Record: time to login prompt, whether the resize message appeared, and any visible kernel errors.

#### 3. NAND guardrail and Android fallback

**File**: procedure in `runbook.md`; result in `results.md`.

**Intent**: Prove the NAND was not touched and the stock Android still boots.

**Contract**: Do not run any installer. Power off, remove the card, boot again, and confirm Android starts. Reinsert the card only after the check passes. Record the result.

### Success Criteria:

#### Automated Verification:

- Card checksum matches the image checksum
- `lsblk` shows the expected partition layout on the card

#### Manual Verification:

- HDMI console shows a login prompt
- `root` / `1234` login succeeds
- First boot completes within 10 minutes without a power pull
- Removing the SD card restores stock Android

**Implementation Note**: After this phase and all automated checks pass, pause for manual confirmation before Phase 3.

---

## Phase 3: Diagnostics, Go/No-Go, and Fallback

### Overview

Capture logs from the running system, identify the Wi-Fi chip, apply the tiered criteria, record the verdict, and run the FEL fallback if the image did not boot.

### Changes Required:

#### 1. Evidence capture to the card

**File**: `context/changes/u1a-go-no-go/evidence/` (host copies)

**Intent**: Move `dmesg` and `lsusb` off the device without a UART cable or network.

**Contract**: On the stick, write these to `/boot`: `dmesg`, `lsusb`, `uname -a`, `cat /proc/cpuinfo`, `free -h`, `cat /proc/device-tree/model`, and `cat /boot/armbianEnv.txt`. Then `poweroff`. On the host, mount partition 1 read-only and copy the files into `evidence/`. Record the file list in `results.md`.

#### 2. Wi-Fi identification

**File**: `results.md` (Hardware facts section)

**Intent**: Close PRD Open Question 1 as far as possible without driver work.

**Contract**: Record the `lsusb` VID:PID and product string. Map it to a driver name. Check `config/kernel/linux-sunxi-current.config` for that driver and note whether it is `=y`, `=m`, or absent. Record the conclusion: driver present, firmware missing, or unsupported.

#### 3. Verdict

**File**: `results.md` (Verdict section)

**Intent**: Turn the observations into a decision the next slice can act on.

**Contract**: Apply these tiers:
- **PASS**: login prompt reached, HDMI works, `dmesg` has no fatal errors beyond Cubieboard-only hardware (Ethernet, SATA), NAND untouched, SD removal restores Android.
- **PARTIAL**: boots to login but at least one must-have peripheral (Wi-Fi or USB) is unresolved.
- **FAIL**: no login prompt after 10 minutes.

Record the tier, the evidence paths, and one next action.

#### 4. FEL fallback

**File**: `results.md` (Verdict section)

**Intent**: Distinguish a dead board from a bad image or boot path when the boot fails.

**Contract**: Power off and remove the card. Enter FEL using the recorded button sequence. Run `sunxi-fel version` and `sunxi-fel sid`. Record the output. If FEL responds, the SoC is alive and the fault is the image or boot path. If FEL does not respond, record that and stop; the UART decision becomes a separate follow-up.

#### 5. Close-out

**File**: `change.md`

**Intent**: Leave the change in a truthful state for the next skill.

**Contract**: Set `status` to `implemented` when the verdict is recorded. Leave `archived_at: null`.

### Success Criteria:

#### Automated Verification:

- Evidence files exist in `context/changes/u1a-go-no-go/evidence/`
- `dmesg` has no `Oops`, `panic`, or `BUG:` lines outside the Cubieboard-only drivers
- `results.md` contains exactly one of `PASS`, `PARTIAL`, or `FAIL` in the Verdict section

#### Manual Verification:

- Wi-Fi chip and driver status are recorded
- NAND untouched is confirmed
- The verdict and next action are reviewed and agreed

---

## Testing Strategy

### Unit Tests:

- Run `preflight.sh` with a missing tool on `PATH`; it must exit non-zero and name the tool.
- Run `preflight.sh` with all tools present; it must exit 0.

### Integration Tests:

- Flash a spare card, then compare the first 64 MiB of the card with the image.
- Mount partition 1 read-only on the host and confirm the captured files are readable.

### Manual Testing Steps:

1. Boot the stick and wait the full 10 minutes.
2. Log in at the HDMI console and run `dmesg | tail -50`.
3. Confirm `lsusb` lists the internal Wi-Fi radio.
4. Power off, remove the card, and confirm Android boots.
5. If no boot, run the FEL commands from the runbook.

## Performance Considerations

- First boot takes 5–10 minutes because the resize service grows the partition and filesystem in place.
- Later boots take about 2 minutes.
- The image download is roughly 0.5–1 GB. The host has 51 GB free, which is sufficient.

## Migration Notes

- No data migration. The device keeps stock Android on NAND.
- Restore Android by removing the SD card.
- After a successful boot, `dd` the working card to a PC image. Keep it as the known-good baseline for later DTS experiments.
- The fork clone is shallow. Run `git fetch --unshallow upstream main` before any PR work, not in this slice.

## References

- PRD: `context/foundation/prd.md`
- Fork bootstrap record: `context/foundation/fork-bootstrap.md`
- Board template: `config/boards/cubieboard.csc`
- Family include: `config/sources/families/include/sunxi_common.inc`
- Console mapping: `config/bootscripts/boot-sunxi.cmd:79-89`
- Card env: `config/bootenv/sunxi.txt`
- Card write implementation: `lib/functions/image/write-device.sh`
- Resize service: `packages/bsp/common/lib/systemd/system/armbian-resize-filesystem.service`

## Progress

> Convention: `- [ ]` pending, `- [x]` done. Append ` — <commit sha>` when a step lands. Do not rename step titles. See `references/progress-format.md`.

### Phase 1: Host Prep and Image Acquisition

#### Automated

- [x] 1.1 Pre-flight script passes
- [x] 1.2 `sunxi-fel version` succeeds on the host
- [x] 1.3 Image checksum verifies
- [x] 1.4 Runbook, results scaffold, and pre-flight script exist

#### Manual

- [x] 1.5 Downloaded image is the Cubieboard 1 A10 image, not Cubietruck
- [x] 1.6 RAM silkscreen and FEL button location/entry sequence recorded

### Phase 2: Flash and First Boot

#### Automated

- [x] 2.1 Card checksum matches the image checksum
- [x] 2.2 Partition layout on the card is as expected

#### Manual

- [x] 2.3 HDMI console shows a login prompt
- [x] 2.4 `root` / `1234` login succeeds
- [x] 2.5 First boot completes within 10 minutes without a power pull
- [x] 2.6 SD removal restores stock Android

### Phase 3: Diagnostics, Go/No-Go, and Fallback

#### Automated

- [x] 3.1 Evidence files captured to the change folder
- [x] 3.2 `dmesg` has no Oops, panic, or BUG lines outside Cubieboard-only drivers
- [x] 3.3 `results.md` records exactly one verdict

#### Manual

- [x] 3.4 Wi-Fi chip and driver status recorded
- [x] 3.5 NAND untouched confirmed
- [x] 3.6 Verdict and next action reviewed and agreed
