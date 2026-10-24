---
project: "Measy U1A Armbian Port"
context_type: brownfield
created: 2026-10-24
updated: 2026-10-24
checkpoint:
  current_phase: 8
  phases_completed: [1, 2, 3, 4, 5, 6, 7]
  gray_areas_resolved:
    - topic: project name
      decision: "Measy U1A Armbian Port"
    - topic: change category
      decision: "New board support in an existing framework (add U1A to armbian/build)"
    - topic: primary persona
      decision: "Single named user — the owner/maintainer (self)"
    - topic: diagnostic constraint
      decision: "No UART; all diagnostics via HDMI console, dmesg, lsusb, FEL mode"
    - topic: access model
      decision: "Armbian default root login retained; SSH added for headless access; no multi-user roles"
    - topic: MVP timeline
      decision: "Minimal tier fits in ~3 weeks; delivery_weeks=3"
    - topic: blast radius
      decision: "SD card integrity (chosen); NAND-never-written retained as hard guardrail"
  frs_drafted: 10
  quality_check_status: accepted
---

# Shape Notes — Measy U1A Armbian Port

Brownfield session. Body anticipates the 11 brownfield PRD sections.

## Current System Overview

- **System purpose:** A Measy U1A Android TV stick — a low-cost HDMI TV stick running stock Android from internal NAND.
- **Key architecture:** Allwinner A10 (sun4i) SoC, 1 GB RAM, HDMI output, internal USB Wi-Fi radio, no Ethernet; boots from internal NAND.
- **Tech stack (existing):** Allwinner A10 SoC; stock Android on NAND.
- **Tech stack (target, forward-looking):** mainline Linux 6.x, mainline U-Boot, Armbian build framework.
- **Current user base:** Single operator — the device owner (the user).
- **Core functionality today:** Media playback via stock Android on the TV.

## Problem Statement & Motivation

- **Pain / gap:** No modern, maintained, updatable Linux runs on the stick. The realistic alternatives are a frozen/abandoned community image (historical precedent: Picuntu for RK3066/RK3188 sticks — dead project, frozen old Linux) or staying on stock Android.
- **Why now:** The A10 is still in mainline Linux; `sun4i-a10-cubieboard.dts` lives in kernel master. Cubieboard 1 is a currently-supported Armbian community board with fresh images (Debian 13 trixie / Ubuntu 26.04, kernel 6.18.x) from armbian.com/boards/cubieboard. U-Boot mainline supports A10 via the Cubieboard defconfig. SoC-level kernel work is DONE — this is a board port, not a SoC bring-up.
- **Current workaround and its cost:** No viable workaround; the cost is an unmaintained device that cannot receive security or kernel updates.
- **Must preserve:** Internal NAND is never written; removing the SD card must always fall back to stock Android.

## User & Persona

- **Primary persona:** Single named user — the owner/maintainer (the user), an embedded Linux engineer doing after-hours bring-up with no UART debug cable.
- **Moment they reach for this:** They want a modern, updatable Linux on the stick they already own, bootable from SD without disturbing the Android they may still want to use.
- **Secondary persona:** None for the MVP. (Broader embedded/Linux community is the eventual PR audience, not the MVP user.)

## Access Control Changes

- **Current model:** Stock Android on NAND; no Linux login on the stick today.
- **[new] SSH for headless administration** — once Wi-Fi works, the board can be managed over the network instead of only at the TV console.
- **Retained:** Armbian default single-root login (root/1234) on the local HDMI console remains the fallback when Wi-Fi/SSH is unavailable.
- **No multi-user roles:** single operator only; no admin/member/guest separation.
- **Preserved:** the local console login path must keep working even if the network path is unavailable.

## Success Criteria

### Primary
- The U1A boots the current Armbian Cubieboard 1 image from SD with the HDMI console, USB, and Wi-Fi working.
- Internal NAND is untouched; removing the SD card restores stock Android.

### Secondary
- The `measyu1a` board builds cleanly from the armbian/build fork and boots on the stick, ready to submit as a PR (the "Full" tier).
- SSH headless access works once Wi-Fi is up.

### Guardrails
- Internal NAND is never written — boot exclusively from SD; no dependency on NAND.
- No manual on-device DTB patching as the permanent solution; the end state is reproducible from a git repo.
- SD card integrity preserved: wait out the first-boot resize (no power pull), keep a PC-side image of the stock card.
- The system stays modern and updatable (current Armbian build framework, mainline 6.x kernel); no frozen distro, no abandoned community image.

## Scope of Change

### Boot & storage
- FR-001: The system boots exclusively from the SD card. Priority: must-have. Change: modified
  > Socrates: No counter-argument; stands as written.
- FR-002: The system never writes to internal NAND, and removing the SD card restores stock Android. Priority: must-have. Change: preserved
  > Socrates: No counter-argument; stands as written.

### Console & diagnostics (no UART)
- FR-003: Kernel output is visible on the HDMI console. Priority: must-have. Change: new
  > Socrates: Counter-argument considered: "HDMI console is redundant once SSH works." Resolution: kept as written; with no UART, HDMI is the only pre-networking diagnostic path.
- FR-004: The operator can diagnose without a UART cable — FEL liveness (sunxi-fel) and dmesg/lsusb capture. Priority: must-have. Change: new
  > Socrates: Counter-argument considered: "Pre-kernel failures stay invisible without UART." Resolution: kept as written; the UART purchase is the explicit last-resort fallback for exactly this gap.

### Hardware
- FR-005: USB and Wi-Fi (internal USB radio) are functional. Priority: must-have. Change: new
  > Socrates: Counter-argument considered: "Wi-Fi is a Cubieboard assumption." Resolution: kept as written; the U1A radio must be identified (lsusb) and its driver/firmware confirmed — see Open Questions / hardware checklist.
- FR-006: The system reboots stably. Priority: must-have. Change: new
  > Socrates: Counter-argument considered: "Without UART you can't distinguish a clean reboot from a watchdog reset." Resolution: kept as written; reboot stability is the practical no-brick signal available without UART.

### System quality
- FR-007: The system runs a modern, updatable OS (current Armbian build framework, mainline 6.x kernel). Priority: must-have. Change: modified
  > Socrates: Counter-argument considered: "A frozen-but-working kernel may be more reliable." Resolution: kept as written; maintainability is the core goal, and a frozen distro is the exact failure being avoided.
- FR-008: SSH provides headless access. Priority: must-have. Change: new
  > Socrates: Counter-argument considered: "SSH is a network-exposed service with no auth hardening." Resolution: kept as written; headless access is the point of a stick behind a TV — auth hardening is a downstream concern.

### Board packaging (the real deliverable)
- FR-009: A measyu1a board config and sun4i-a10-measy-u1a DTS are added to armbian/build, and the image builds via ./compile.sh in Docker. Priority: must-have. Change: new
  > Socrates: No counter-argument; stands as written.
- FR-010: An SD-card image backup/restore procedure exists, and the update policy prevents kernel/DTB updates from clobbering the working config. Priority: must-have. Change: new
  > Socrates: Counter-argument considered: "The update policy is untestable until the board is upstreamed." Resolution: kept as written; the recovery path is required regardless, and the policy is validated as far as the fork allows.

## User Stories

### US-01: Boot U1A from SD with HDMI console
- **Given** a U1A stick with stock Android on NAND and an SD card flashed with the current Armbian Cubieboard 1 image
- **When** the operator inserts the card, powers on, and waits out the first-boot resize
- **Then** the kernel console appears on the HDMI TV, the operator logs in at root/1234, and dmesg/lsusb show a booted system with only Cubieboard-only errors (Ethernet, SATA)

#### Acceptance Criteria
- Boot completes within the first-boot window (5–10 min) without a power pull.
- Internal NAND remains unchanged.
- Removing the SD card restores stock Android.
- dmesg shows no fatal errors beyond Cubieboard-only hardware (Ethernet, SATA).

## Business Logic Changes

No domain logic change. This is an infrastructure/technical change: a board port that adds U1A support to the Armbian build framework. The only "rule" is a boot policy — boot from SD, never write NAND, fall back to Android — which is a constraint, not a domain decision.

## Constraints & Compatibility

- **Preserved (hard requirement):** internal NAND is never written; removing the SD card restores stock Android.
- **Preserved (chosen):** the maintained Cubieboard 1 board must not regress — shared Armbian config/DTB changes must not break the existing supported board.
- **No backward-compatibility surface:** single operator, no API consumers, no data contracts; no data migration is involved.
- **Deployment target:** the SD card only — no network deployment, no OTA, no remote infrastructure.

## Non-Functional Requirements

- A clean rebuild from the git repository reproduces a bootable image.
- The first boot completes within 10 minutes, and subsequent boots complete within 2 minutes.
- No write ever reaches internal NAND; removing the SD card always restores stock Android.
- Wi-Fi associates to an access point and passes traffic; USB enumerates attached devices.
- The board remains buildable on the current Armbian build framework.

## Product Framing

- **product_type:** other — embedded Linux board image (ARM SBC / TV stick)
- **target_scale.users:** small — single operator
- **timeline_budget.delivery_weeks:** 3
- **timeline_budget.hard_deadline:** null
- **timeline_budget.after_hours_only:** true

## Non-Goals

- Avoid building our own bootloader or SoC support from scratch — the A10 is already mainline; use the maintained U-Boot and kernel.
- Avoid building from scratch anything a maintained upstream project already provides — the deliverable extends Armbian, it does not replace it.
- Avoid any hardware modifications — no soldering; the USB-UART adapter is an explicit last-resort fallback, not part of the plan.

## Open Questions

1. **What is the U1A's internal USB Wi-Fi radio chip, and which driver + firmware does it need?** — Owner: user (physical, via lsusb). Blocks FR-005.
2. **What is the RAM chip / DRAM configuration, and do the Cubieboard 1 DRAM parameters apply?** — Owner: user (silkscreen). Blocks bring-up if mismatched.
3. **Where is the recovery/FEL button, and what is the exact FEL-entry sequence?** — Owner: user (physical).
4. **What GPIO differences (LED, IR, recovery) exist vs the Cubieboard 1 DTS?** — Owner: user (physical).
5. **Does the current Armbian Cubieboard 1 image actually boot on the U1A from SD?** — Owner: user (physical). Blocks the go/no-go.

## Quality cross-check

No gaps. All six brownfield elements present: Access Control, Business Logic (infrastructure-only, valid), Project artifacts, Timeline-cost ack (delivery_weeks: 3), Non-Goals, Preserved behavior.

## Forward: tech-stack

- Stack-shaped concerns are intentionally NOT captured here (they are downstream of `/10x-prd`). Noted for the next chain step: the deliverable is a fork of `armbian/build`; build via `./compile.sh` in Docker; kernel target `current` (mainline 6.x); board status `.wip` → `.tvb`.
