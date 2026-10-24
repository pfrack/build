# Measy U1A Board Port Implementation Plan

## Overview

Add a `measyu1a` board to the armbian/build fork and build a bootable image from it. The slice delivers FR-009: `config/boards/measyu1a.tvb`, a `sun4i-a10-measy-u1a` DTS, a Docker build of the current 6.18 kernel, and a verified boot on the stick.

The slice reuses the Cubieboard 1 U-Boot configuration and boot script. It adds a board-specific DTB that disables the Cubieboard-only Ethernet, SATA, IR, SPI, and LED nodes. The stock Android on NAND stays disabled and untouched.

FR-010 (update policy) stays out of scope. The card backup is an operational prerequisite, not the full recovery policy.

## Current State Analysis

- Go/no-go passed on 2026-10-24. The stock Cubieboard 1 image boots the U1A from SD: kernel `6.18.57-current-sunxi`, HDMI login, 991 MiB RAM, RTL8188EUS Wi-Fi on `rtl8xxxu`, NAND untouched, Android fallback works.
- The stock image reports Cubieboard-only failures: `ahci-sunxi` probe `-5` (no SATA), `sun4i-emac` no PHY (no Ethernet). The U1A has neither.
- Display flickers at 1920x1080p60. The card was changed to 1280x720p60; the fix is unconfirmed.
- The fork has no `measyu1a` artifacts. `git status --short` shows only `?? context/`.
- Board template: `config/boards/cubieboard.csc:1-19` sets `BOARDFAMILY="sun4i"`, `BOOTCONFIG="Cubieboard_config"`, `HAS_VIDEO_OUTPUT="no"`, `KERNEL_TARGET="current,edge,legacy"`, `MODULES_BLACKLIST="ir_lirc_codec lirc_dev sunxi-cir"`, and the U-Boot hook `CONFIG_DRAM_CLK=432` + `CONFIG_VIDEO_DE2` disabled.
- Family: `config/sources/families/sun4i.conf:10-13` and `config/sources/families/include/sunxi_common.inc:9-41` set `ARCH=armhf`, `BOOTBRANCH=tag:v2026.07`, `BOOTPATCHDIR=v2026.07-sunxi`, `BOOTSCRIPT=boot-sunxi.cmd:boot.cmd`, `BOOTENV_FILE=sunxi.txt`, `LINUXFAMILY=sunxi`, `OVERLAY_PREFIX=sun4i-a10`, and `KERNELPATCHDIR=archive/sunxi-6.18` for `current`.
- `.tvb` is a recognized board class: `lib/functions/main/config-prepare.sh:99-112` searches `conf`, `wip`, `csc`, `eos`, `tvb`. The build finds `config/boards/measyu1a.tvb`.
- `BOOT_FDT_FILE` is documented at `config/boards/README.md:101` and written to `/boot/armbianEnv.txt` by `lib/functions/rootfs/distro-agnostic.sh:276-279`. `config/bootscripts/boot-sunxi.cmd` strips the `allwinner/` prefix and loads `dtb/allwinner/<file>`.
- The DTS mechanism is `dt_32`, not a `.patch`: `patch/kernel/archive/sunxi-6.18/0000.patching_config.yaml` copies `dt_32/*.dts` to `arch/arm/boot/dts/allwinner` and auto-patches the Makefile. The fork-bootstrap's "patches.armbian" note is corrected here.
- The Cubieboard DTS (Linux v6.18) enables `ahci`, `codec`, `emac`, `emac_sram`, `ir0`, `mdio`, `spi0`, `leds`, and `reg_ahci_5v`. The U1A does not need them.
- `reg_ahci_5v` uses GPIO PB8: `sunxi-common-regulators.dtsi:48-57`. The Cubieboard LEDs use PH20/PH21.
- The build auto-delegates to Docker when the daemon is usable: `lib/functions/cli/utils-cli.sh:306-330`. Docker is installed; the daemon is not running. The user is in the `docker` group.
- Host: 117 GB free, `debugfs`, `losetup`, `shellcheck`, `pv`, `xz`, `zstd`; `dtc` is missing (install it for image verification, or use the build container). The card is 28.9 GB.
- NAND: `sun4i-a10.dtsi` leaves `&nfc` disabled. The Cubieboard DTS does not enable it. The U1A DTS must not enable it.

## Desired End State

- `config/boards/measyu1a.tvb` and `patch/kernel/archive/sunxi-6.18/dt_32/sun4i-a10-measy-u1a.dts` exist in the fork.
- `./compile.sh build BOARD=measyu1a BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes` exits 0.
- The image contains `/boot/dtb/allwinner/sun4i-a10-measy-u1a.dtb` and `fdtfile=allwinner/sun4i-a10-measy-u1a.dtb` in `armbianEnv.txt`.
- The card is backed up, then flashed with the new image. The U1A boots it, shows `Measy U1A` in `/proc/device-tree/model`, reaches the HDMI login, and runs Wi-Fi.
- `dmesg` has no Ethernet or SATA probe errors. No `Oops`, `panic`, or `BUG:` lines.
- NAND is untouched. Removing the SD card boots stock Android.
- `results.md` records the build and boot evidence plus one verdict. `evidence/` holds the logs.

### Key Discoveries:

- Board template + U-Boot hook: `config/boards/cubieboard.csc:1-19`.
- `BOOT_FDT_FILE`: `config/boards/README.md:101`; written by `lib/functions/rootfs/distro-agnostic.sh:276-279`.
- Boot script fdtfile path: `config/bootscripts/boot-sunxi.cmd` (`vendor=allwinner`, `sub` prefix, fallback to `deffdt_file`).
- DTS drop-in: `patch/kernel/archive/sunxi-6.18/0000.patching_config.yaml`.
- Family values: `config/sources/families/include/sunxi_common.inc:9-41`.
- Build Docker delegation: `lib/functions/cli/utils-cli.sh:306-330`.
- U-Boot hook call: `lib/functions/compilation/uboot.sh:206`.
- `.tvb` class lookup: `lib/functions/main/config-prepare.sh:99-112`.
- Cubieboard DTS nodes: upstream `sun4i-a10-cubieboard.dts` (Linux v6.18).
- `reg_ahci_5v` GPIO: `sunxi-common-regulators.dtsi:48-57`.
- The DTC grammar accepts repeated matching `/dts-v1/;` headers (`headers` rule in `dtc-parser.y`), so the include of the Cubieboard `.dts` is valid.

## What We're NOT Doing

- No FR-010 update policy. The card backup is a prerequisite, not the policy.
- No `edge` (7.3) or `legacy` (6.12) DTS copies.
- No NAND enable or write. Never run `armbian-install` or `nand-sata-install`.
- No LED, IR, or recovery GPIO reverse-engineering. The unknown nodes stay disabled.
- No custom U-Boot defconfig. Reuse `Cubieboard_config` with the Cubieboard hook.
- No kernel config changes. `CONFIG_RTL8XXXU=m`, `CONFIG_DRM_SUN4I=y`, and the Wi-Fi firmware already match the stock image.
- No family-wide display default change. The family stays at 1920x1080p60; the test card uses 1280x720p60.
- No standalone DTS copy. The U1A DTS includes the Cubieboard DTS.
- No `.wip` class. The board ships as `.tvb` per the user's choice.
- No upstream PR. The fork is shallow; `git fetch --unshallow` is a later step.
- No UART, soldering, or Wi-Fi driver work.

## Implementation Approach

Four phases with a manual gate after each.

Phase 1 writes the board file and DTS. A `configdump` proves the build framework recognizes the board and the DTB path.

Phase 2 starts Docker and builds the image. It verifies the image, DTB, `armbianEnv.txt`, kernel config, and firmware. The build runs in the background with a log; the operator can review it.

Phase 3 backs up the current card, flashes the new image, sets 720p on the card, and boots. The manual gate is the HDMI login and the Wi-Fi association. The NAND/Android check closes the guardrail.

Phase 4 writes `results.md`, copies the evidence, sets `change.md` to `implemented`, and records the follow-ups.

All change artifacts stay under `context/changes/u1a-board-port/`. The built image and card backup stay outside the repo under `/home/pawel/armbian-images/u1a-board-port/`. The board artifacts are tracked by git only when the user asks for a commit; this slice does not commit.

## Critical Implementation Details

- **Board file**: `config/boards/measyu1a.tvb`:

```bash
# Allwinner A10 TV stick, 1GB RAM, HDMI, USB Wi-Fi
BOARD_NAME="Measy U1A"
BOARD_VENDOR="measy"
BOARDFAMILY="sun4i"
BOARD_MAINTAINER=""
INTRODUCED="2012"
BOOTCONFIG="Cubieboard_config"
BOOT_FDT_FILE="allwinner/sun4i-a10-measy-u1a.dtb"
HAS_VIDEO_OUTPUT="no"
KERNEL_TARGET="current"
KERNEL_TEST_TARGET="current"
MODULES_BLACKLIST="ir_lirc_codec lirc_dev sunxi-cir"

function post_config_uboot_target__extra_configs_for_measyu1a() {
	display_alert "$BOARD" "set dram clock" "info"
	run_host_command_logged scripts/config --set-val CONFIG_DRAM_CLK "432"

	display_alert "$BOARD" "disable de2 to improve edid detection" "info"
	run_host_command_logged scripts/config --disable CONFIG_VIDEO_DE2
}
```

  The hook name suffix is arbitrary; the framework calls every `post_config_uboot_target__*` function.
- **DTS**: `patch/kernel/archive/sunxi-6.18/dt_32/sun4i-a10-measy-u1a.dts`:

```dts
/dts-v1/;
#include "sun4i-a10-cubieboard.dts"

/ {
	model = "Measy U1A";
	compatible = "measy,u1a", "allwinner,sun4i-a10";
};

&ahci { status = "disabled"; };
&codec { status = "disabled"; };
&emac { status = "disabled"; };
&emac_sram { status = "disabled"; };
&ir0 { status = "disabled"; };
&mdio { status = "disabled"; };
&reg_ahci_5v { status = "disabled"; };
&spi0 { status = "disabled"; };
&{/leds} { status = "disabled"; };
```

  The included Cubieboard DTS keeps the AXP209, HDMI, SD, USB, and UART nodes. The overrides remove only the Cubieboard-only hardware. The second `/dts-v1/;` is valid: the DTC grammar accepts repeated matching headers.
- **DTB selection**: `BOOT_FDT_FILE` writes `fdtfile=allwinner/sun4i-a10-measy-u1a.dtb` into `/boot/armbianEnv.txt`. The boot script strips `allwinner/` and loads `dtb/allwinner/sun4i-a10-measy-u1a.dtb`. If the file is missing, the script falls back to the U-Boot Cubieboard DTB.
- **No `.patch` file**: `0000.patching_config.yaml` copies `dt_32/*.dts` and auto-patches the Makefile. Do not add a `patches.armbian/*.patch` for the DTS.
- **U-Boot**: reuse `Cubieboard_config`; the hook sets DRAM 432 MHz and disables DE2, matching the stock image. Do not create a U-Boot defconfig.
- **Build**: start Docker (`sudo systemctl start docker`; `docker info`), then `./compile.sh build BOARD=measyu1a BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes`. The build auto-relaunches in Docker. Run it in `tmux`/`nohup` with a log; a first build takes 1–2 hours.
- **Image verification**: find `output/images/*Measy*_trixie_current_*_minimal.img*`; decompress; mount the root partition read-only (`losetup -Pf`) or use `debugfs`; check the DTB, `armbianEnv.txt`, `/boot/config-*` (`CONFIG_RTL8XXXU=m`, `CONFIG_DRM_SUN4I=y`, `CONFIG_ARCH_SUNXI=y`), and `rtlwifi/rtl8188eufw.bin`. Install `dtc` on the host if available, or use the build container; `strings` on the DTB is a fallback.
- **Card backup first**: back up `/dev/mmcblk0` (28.9 GB) to `/home/pawel/armbian-images/u1a-board-port/card-backup-2026-10-24.img.zst`; verify with `zstd -t` and record the SHA256. Restore with `zstd -dc ... | dd of=/dev/mmcblk0 ...`.
- **Flash**: decompress the new image and `dd` to `/dev/mmcblk0` with `oflag=direct`; compare the written region with the uncompressed image (`cmp -n`). Identify the card by size/model/serial; require the operator to confirm the device.
- **Display**: after flashing, mount the root partition and set `disp_mode=1280x720p60` in `/boot/armbianEnv.txt`. Do not change `config/bootenv/sunxi.txt`.
- **NAND guardrail**: never run `armbian-install` or `nand-sata-install`. The DTS leaves `&nfc` disabled. Verify Android boots with the card removed.
- **First boot**: wait 5–10 min for the resize; do not power off. Login `root`/`1234`. Capture evidence to `/boot/board-evidence/`; poweroff; copy to `context/changes/u1a-board-port/evidence/`.
- **Wi-Fi**: use the same association method as the go/no-go session. Verify `rtl8xxxu` loads, `0bda:8179` is present, firmware loads, and the interface associates. The minimal image uses systemd-networkd; do not assume NetworkManager.
- **Verdict**: PASS if build+boot+model+HDMI+Wi-Fi+USB+no fatal dmesg+NAND/Android hold; PARTIAL if a must-have peripheral is unresolved; FAIL if the image does not boot.

## Phase 1: Board File and DTS

### Overview

Add the board and DTS artifacts. Prove the framework recognizes `measyu1a` and resolves the DTB path before spending time on a build.

### Changes Required:

#### 1. Board file

**File**: `config/boards/measyu1a.tvb`

**Intent**: Declare the U1A as a sun4i TV board, reuse the Cubieboard U-Boot config, and force the custom DTB.

**Contract**: Exact values as in Critical Implementation Details. `BOARD_TYPE=tvb`; `BOOT_FDT_FILE` points to the custom DTB; `KERNEL_TARGET=current`; the U-Boot hook sets DRAM 432 and disables DE2.

#### 2. DTS drop-in

**File**: `patch/kernel/archive/sunxi-6.18/dt_32/sun4i-a10-measy-u1a.dts`

**Intent**: Give the U1A a board identity and disable the Cubieboard-only nodes without duplicating the whole DTS.

**Contract**: Includes `sun4i-a10-cubieboard.dts`; overrides `model` and `compatible`; disables `ahci`, `codec`, `emac`, `emac_sram`, `ir0`, `mdio`, `reg_ahci_5v`, `spi0`, and `/leds`. Does not enable `&nfc`.

#### 3. Results scaffold

**File**: `context/changes/u1a-board-port/results.md`

**Intent**: Capture build and boot evidence in one place.

**Contract**: Sections: Environment, Build, Image, DTB, Card backup, Flash, Boot, Wi-Fi, NAND, Verdict, Follow-ups. Verdict starts empty and accepts only PASS, PARTIAL, or FAIL.

### Success Criteria:

#### Automated Verification:

- `bash -n config/boards/measyu1a.tvb` passes
- `./compile.sh configdump BOARD=measyu1a BRANCH=current RELEASE=trixie` reports `BOARD_TYPE=tvb`, `BOOT_FDT_FILE=allwinner/sun4i-a10-measy-u1a.dtb`, `KERNEL_TARGET=current`
- The DTS file exists and does not enable `&nfc`
- `results.md` exists

#### Manual Verification:

- The board file values match the PRD (U1A name, vendor, current kernel, no IR)
- The DTS overrides are reviewed: only unused Cubieboard nodes are disabled; AXP209, HDMI, SD, USB, UART stay enabled

**Implementation Note**: After this phase and all automated checks pass, pause for manual confirmation before Phase 2.

---

## Phase 2: Docker Build

### Overview

Start Docker, build the `measyu1a` image with the current kernel, and verify the DTB, boot env, kernel config, and firmware inside the image.

### Changes Required:

#### 1. Docker start and build

**File**: build output under `output/`; log under `output/logs/`.

**Intent**: Produce the image from the fork.

**Contract**: `sudo systemctl start docker`; `docker info` succeeds. Run `./compile.sh build BOARD=measyu1a BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes` in `tmux`/`nohup` with a log. Exit code 0.

#### 2. Image verification

**File**: `results.md` (Build/Image/DTB sections); evidence under `context/changes/u1a-board-port/evidence/`.

**Intent**: Prove the image contains the board-specific DTB and the expected kernel/firmware.

**Contract**: Find the image; decompress; inspect `/boot/dtb/allwinner/sun4i-a10-measy-u1a.dtb`, `/boot/armbianEnv.txt` (`fdtfile=allwinner/sun4i-a10-measy-u1a.dtb`), `/boot/config-*` (`CONFIG_RTL8XXXU=m`, `CONFIG_DRM_SUN4I=y`, `CONFIG_ARCH_SUNXI=y`), and `rtlwifi/rtl8188eufw.bin`. The build log shows the U-Boot DRAM hook and no patch/DTS errors.

### Success Criteria:

#### Automated Verification:

- `docker info` exits 0
- The build exits 0
- The image exists under `output/images/`
- The image contains the custom DTB
- `armbianEnv.txt` contains the custom `fdtfile`
- The kernel config and firmware checks pass

#### Manual Verification:

- The build log shows `set dram clock` and no DTS/patch failures
- The image name/board metadata identify `Measy U1A` (or `measyu1a`)

**Implementation Note**: After this phase and all automated checks pass, pause for manual confirmation before Phase 3.

---

## Phase 3: Card Backup, Flash, and Boot

### Overview

Back up the known-good card, flash the new image, set 720p, and boot the U1A. Verify the custom DTB, Wi-Fi, USB, and the NAND guardrail.

### Changes Required:

#### 1. Card backup

**File**: `/home/pawel/armbian-images/u1a-board-port/card-backup-2026-10-24.img.zst`; record in `results.md`.

**Intent**: Preserve the working card before overwriting it.

**Contract**: Identify `/dev/mmcblk0` by size/model/serial. `sudo dd if=/dev/mmcblk0 bs=1M iflag=fullblock status=progress | zstd -T0 -3 -o <backup>.zst`; `zstd -t <backup>.zst`; record the SHA256. Confirm the backup exists and the card is the expected device.

#### 2. Flash and 720p

**File**: procedure in `results.md`; card state.

**Intent**: Write the new image and avoid the 1080p flicker during the test.

**Contract**: Decompress the image and `dd` to `/dev/mmcblk0`; compare the written region with the image. Mount the root partition; set `disp_mode=1280x720p60` in `/boot/armbianEnv.txt`; unmount.

#### 3. First boot and evidence

**File**: `context/changes/u1a-board-port/evidence/`; observations in `results.md`.

**Intent**: Prove the image boots and the U1A hardware works.

**Contract**: Boot; wait 5–10 min; login `root`/`1234`. Capture `/proc/device-tree/model`, `dmesg`, `lsusb`, `uname -a`, `free -h`, `cat /boot/armbianEnv.txt`, `ip a`, `lsblk`, and `cat /etc/armbian-release` to `/boot/board-evidence/`; poweroff; copy to the host.

#### 4. Wi-Fi and NAND check

**File**: `results.md`.

**Intent**: Close FR-005 and the NAND guardrail.

**Contract**: Configure/confirm Wi-Fi as in the go/no-go session; record `rtl8xxxu`, `0bda:8179`, firmware load, and association. Power off, remove the SD, boot Android; confirm; reinsert the card.

### Success Criteria:

#### Automated Verification:

- The card backup exists, passes `zstd -t`, and has a recorded SHA256
- The written region matches the uncompressed image
- The card's `armbianEnv.txt` has `disp_mode=1280x720p60`
- The evidence files exist on the host

#### Manual Verification:

- HDMI login prompt appears; `root`/`1234` works
- `/proc/device-tree/model` is `Measy U1A`
- `dmesg` has no fatal errors and no Ethernet/SATA probe errors
- Wi-Fi associates; USB enumerates
- Removing the SD boots stock Android

**Implementation Note**: After this phase and all automated checks pass, pause for manual confirmation before Phase 4.

---

## Phase 4: Results and Close-out

### Overview

Record the verdict, the evidence index, and the follow-ups. Set the change status.

### Changes Required:

#### 1. Results and evidence index

**File**: `context/changes/u1a-board-port/results.md`

**Intent**: Leave a defensible record for the next slice.

**Contract**: Fill all sections; one verdict; evidence paths; follow-ups (display flicker, IR/LED GPIOs, FEL entry, FR-010, upstream PR).

#### 2. Change close-out

**File**: `context/changes/u1a-board-port/change.md`

**Intent**: Mark the slice implemented.

**Contract**: `status: implemented`; `updated` date; `archived_at: null`.

### Success Criteria:

#### Automated Verification:

- `results.md` contains exactly one of PASS, PARTIAL, or FAIL
- `change.md` has `status: implemented`

#### Manual Verification:

- The verdict and follow-ups are reviewed and agreed

---

## Testing Strategy

### Unit Tests:

- `bash -n config/boards/measyu1a.tvb`.
- `configdump` reports the expected board variables.
- The DTS is compiled by the kernel build; a syntax error fails the build.

### Integration Tests:

- Build the full image; inspect the DTB, `armbianEnv.txt`, kernel config, and firmware.
- Flash after backup; compare the written region with the image.

### Manual Testing Steps:

1. Boot the new image; wait the full first-boot window.
2. Log in; check `/proc/device-tree/model` and `dmesg`.
3. Confirm Wi-Fi and USB.
4. Remove the SD; confirm Android.
5. Record the verdict.

## Performance Considerations

- First build: 1–2 hours; image ~0.5–1 GB compressed.
- Card backup: 28.9 GB read; 10–20 minutes; compressed backup ~1–2 GB.
- First boot: 5–10 minutes; later boots ~2 minutes.
- Disk: 117 GB free; the build cache plus the card backup plus images fit.

## Migration Notes

- The card backup restores the go/no-go state: `zstd -dc <backup>.zst | sudo dd of=/dev/mmcblk0 bs=1M iflag=fullblock oflag=direct`.
- The stock Cubieboard image and checksums stay at `/home/pawel/armbian-images/u1a-go-no-go/`.
- The fork is shallow; `git fetch --unshallow upstream main` before a PR, not in this slice.
- The U1A DTS inherits the Cubieboard DTS; upstream Cubieboard changes apply automatically.
- The family display default stays 1920x1080p60; the card uses 1280x720p60.
- No NAND writes; removing the SD restores Android.

## References

- PRD: `context/foundation/prd.md` (FR-009, FR-010, guardrails)
- Fork bootstrap: `context/foundation/fork-bootstrap.md`
- Go/no-go results: `context/changes/u1a-go-no-go/results.md`
- Board template: `config/boards/cubieboard.csc`
- Board options: `config/boards/README.md:101`
- Family include: `config/sources/families/include/sunxi_common.inc`
- DTS drop-in: `patch/kernel/archive/sunxi-6.18/0000.patching_config.yaml`
- Boot env write: `lib/functions/rootfs/distro-agnostic.sh:276-279`
- Boot script: `config/bootscripts/boot-sunxi.cmd`
- U-Boot hook: `lib/functions/compilation/uboot.sh:206`
- Board class lookup: `lib/functions/main/config-prepare.sh:99-112`
- Docker delegation: `lib/functions/cli/utils-cli.sh:306-330`
- Upstream DTS: `sun4i-a10-cubieboard.dts` (Linux v6.18)
- Regulators: `sunxi-common-regulators.dtsi:48-57`
- DTC grammar: `dtc-parser.y` (`headers` rule)

## Progress

> Convention: `- [ ]` pending, `- [x]` done. Append ` — <commit sha>` when a step lands. Do not rename step titles. See `references/progress-format.md`.

### Phase 1: Board File and DTS

#### Automated

- [x] 1.1 `config/boards/measyu1a.tvb` exists and `bash -n` passes — 302f705
- [x] 1.2 `patch/kernel/archive/sunxi-6.18/dt_32/sun4i-a10-measy-u1a.dts` exists — 302f705
- [x] 1.3 `configdump` reports the expected board variables — 302f705
- [x] 1.4 The DTS does not enable `&nfc` — 302f705
- [x] 1.5 `results.md` scaffold exists — 302f705

#### Manual

- [x] 1.6 Board values match the PRD
- [x] 1.7 DTS overrides reviewed (only unused Cubieboard nodes disabled)

### Phase 2: Docker Build

#### Automated

- [x] 2.1 `docker info` succeeds — dfc1a58
- [x] 2.2 The build exits 0 — dfc1a58
- [x] 2.3 The image exists in `output/images/` — dfc1a58
- [x] 2.4 The image contains the custom DTB — dfc1a58
- [x] 2.5 `armbianEnv.txt` contains the custom `fdtfile` — dfc1a58
- [x] 2.6 Kernel config and Wi-Fi firmware checks pass — dfc1a58

#### Manual

- [x] 2.7 Build log shows the DRAM hook and no DTS/patch failures — dfc1a58
- [x] 2.8 Image metadata identifies `Measy U1A` — dfc1a58

### Phase 3: Card Backup, Flash, and Boot

#### Automated

- [ ] 3.1 Card backup exists, passes `zstd -t`, and has a SHA256 (skipped at operator request)
- [x] 3.2 Written card region matches the uncompressed image — e179ddc
- [x] 3.3 Card `armbianEnv.txt` has `disp_mode=1280x720p60` — e179ddc
- [x] 3.4 Evidence files exist on the host — e179ddc

#### Manual

- [x] 3.5 HDMI login prompt; `root`/`1234` works — e179ddc
- [x] 3.6 `/proc/device-tree/model` is `Measy U1A` — e179ddc
- [x] 3.7 `dmesg` has no fatal errors and no Ethernet/SATA probe errors — e179ddc
- [x] 3.8 Wi-Fi associates and USB enumerates — e179ddc
- [x] 3.9 Removing the SD boots stock Android — e179ddc

### Phase 4: Results and Close-out

#### Automated

- [x] 4.1 `results.md` records one verdict
- [x] 4.2 `change.md` status is `implemented`

#### Manual

- [x] 4.3 Verdict and follow-ups reviewed — operator: "pass"
