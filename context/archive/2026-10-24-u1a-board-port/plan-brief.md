# Measy U1A Board Port — Plan Brief

> Full plan: `context/changes/u1a-board-port/plan.md`
> Foundation: `context/foundation/prd.md`, `context/foundation/fork-bootstrap.md`

## What & Why

Add a `measyu1a` board and a `sun4i-a10-measy-u1a` DTS to the armbian/build fork. Build the image in Docker and boot it on the U1A. This is FR-009: the real board-port deliverable after the go/no-go PASS.

## Starting Point

The stock Cubieboard 1 image boots the U1A: HDMI, Wi-Fi, USB, NAND untouched. The fork has no `measyu1a` artifacts. Cubieboard 1 is the reference board. The sun4i family supplies the U-Boot config, boot script, and kernel 6.18. The DTS drop-in mechanism is `dt_32`; `BOOT_FDT_FILE` selects the DTB. Docker is installed but not running; 117 GB free. The card is 28.9 GB and holds the working go/no-go image.

## Desired End State

`config/boards/measyu1a.tvb` and `sun4i-a10-measy-u1a.dts` exist. `./compile.sh build BOARD=measyu1a BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes` succeeds. The image contains the custom DTB and `fdtfile`. The card is backed up, flashed, and boots with `Measy U1A` in `/proc/device-tree/model`; Wi-Fi works; Ethernet/SATA errors are gone; NAND is untouched; Android fallback works. `results.md` has one verdict.

## Key Decisions Made

| Decision | Choice | Why (1 sentence) | Source |
| --- | --- | --- | --- |
| Scope | Board + DTS + build + boot | FR-009 needs a booted image, not just files | User |
| DTS | Include Cubieboard DTS + overrides | Minimal; inherits upstream; custom model and disabled nodes | User |
| NAND | Leave disabled | Protects stock Android | User |
| Branches | current 6.18 only | Matches the stock image; one DTS copy | User |
| Display | 1080p default; 720p on card | No family-wide change; test avoids flicker | User |
| Board class | `.tvb` | User choice; community TV class | User |
| Card | Backup, then overwrite | Preserves the working card before the test | User |
| U-Boot | `Cubieboard_config` + DRAM/DE2 hook | Stock image proved it; no new defconfig | Plan |
| DTB selection | `BOOT_FDT_FILE` | Framework writes `fdtfile` into `armbianEnv.txt` | Research |
| DTS mechanism | `dt_32` drop-in | Auto-copies and patches the Makefile; no `.patch` | Research |
| Build | Docker, trixie, minimal, current | Matches the stock image | Plan |

## Scope

**In scope:**
- `config/boards/measyu1a.tvb`
- `patch/kernel/archive/sunxi-6.18/dt_32/sun4i-a10-measy-u1a.dts`
- Docker build of the current 6.18 image
- Image verification (DTB, `armbianEnv.txt`, kernel config, firmware)
- Card backup, flash, 720p card setting
- Boot test, Wi-Fi, USB, NAND/Android check
- `results.md` and close-out

**Out of scope:**
- FR-010 update policy
- edge/legacy DTS
- NAND enable/write
- LED/IR/recovery GPIO tuning
- Custom U-Boot defconfig
- Kernel config changes
- Family-wide display change
- Standalone DTS
- Upstream PR
- UART/Wi-Fi driver work

## Architecture / Approach

```
Phase 1: board file + DTS → configdump
                ↓
Phase 2: Docker build → image + DTB + fdtfile + config/firmware checks
                ↓
Phase 3: card backup → flash → 720p → boot → model/Wi-Fi/USB → NAND/Android
                ↓
Phase 4: results.md → change.md implemented
```

## Phases at a Glance

| Phase | What it delivers | Key risk |
| --- | --- | --- |
| 1. Board File and DTS | Recognized board, custom DTB | DTS syntax or include issue |
| 2. Docker Build | Bootable image with custom DTB | Build failure, Docker daemon/network |
| 3. Card Backup, Flash, Boot | Verified boot, Wi-Fi, NAND guardrail | Card corruption, no boot, Wi-Fi mismatch |
| 4. Results and Close-out | Verdict, evidence, status | Missing evidence |

**Prerequisites:** 28.9 GB SD card, HDMI TV, USB keyboard, power supply, card reader, Docker daemon.
**Estimated effort:** 1–2 h build plus 1–2 h physical test, plus card backup.

## Open Risks & Assumptions

- The U1A's USB VBUS/GPIOs may differ from the Cubieboard; the stock image worked, so the Cubieboard base is safe.
- LED/IR GPIOs are unknown; the nodes are disabled, not tuned.
- The custom DTB inherits future Cubieboard changes.
- The build's Docker image/network and disk use are untested in this fork.
- The 1080p flicker stays the family default; the test card uses 720p.
- The Wi-Fi driver/firmware already work in the stock image; the build should match.
- The NAND stays disabled; any `armbian-install` run is forbidden.

## Success Criteria (Summary)

- The board file and DTS are in the fork and recognized by `configdump`.
- The image builds and contains the custom DTB and `fdtfile`.
- The U1A boots the image with `Measy U1A` as the model, Wi-Fi works, and Ethernet/SATA errors are gone.
- The NAND is untouched; removing the SD boots Android.
- `results.md` holds one verdict and the evidence paths.
