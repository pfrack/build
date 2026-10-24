# U1A SD Boot Go/No-Go — Plan Brief

> Full plan: `context/changes/u1a-go-no-go/plan.md`
> Foundation: `context/foundation/prd.md`, `context/foundation/fork-bootstrap.md`

## What & Why

Prove whether the stock Armbian Cubieboard 1 image boots the Measy U1A from SD with an HDMI console. This is the first slice. It gates all board-port work: if the image does not boot, a DTS and board file target unknown hardware.

## Starting Point

The fork has no `measyu1a` artifacts. Cubieboard 1 is the reference board (`config/boards/cubieboard.csc`), and the sun4i family already supplies the U-Boot config and boot script. HDMI console works unchanged through `console=both` in `config/bootenv/sunxi.txt`. The host has Docker, `pv`, `dd`, and 51 GB free, but no `sunxi-fel`.

## Desired End State

The operator has run one physical boot session and recorded a verdict in `results.md`: PASS, PARTIAL, or FAIL. The evidence (`dmesg`, `lsusb`) is on the host, the Wi-Fi chip is identified, and the NAND is untouched. If the image did not boot, the FEL check says whether the SoC is alive.

## Key Decisions Made

| Decision | Choice | Why (1 sentence) | Source |
| --- | --- | --- | --- |
| Image source | Download official Cubieboard 1 image | Fast, no 50 GB build, isolates hardware validation from build validation | Plan |
| Log capture | Write to the SD boot partition | Needs no UART, network, or extra hardware | Plan |
| Go/no-go | Tiered PASS / PARTIAL / FAIL | Keeps the verdict honest when Wi-Fi is unresolved | Frame (PRD) |
| No-boot fallback | `sunxi-fel` liveness first | Confirms the SoC without a UART purchase | Frame (PRD) |
| Hardware data | Record silkscreen, FEL button, `lsusb` | Closes the physical open questions without tuning | Frame (PRD) |
| Backup | `dd` the known-good card after success | Protects later DTS experiments | Plan |
| Scope | Go/no-go only | Keeps the slice bounded and unblocks the port | Frame (PRD) |

## Scope

**In scope:**
- Host pre-flight and `sunxi-tools` install
- Image download and checksum verification
- Operator runbook
- Flash, first boot, HDMI login
- `dmesg`/`lsusb` capture
- Wi-Fi chip identification
- Verdict and FEL fallback

**Out of scope:**
- Fork build
- `measyu1a` board file and DTS patch
- DRAM, U-Boot, and device-tree tuning
- UART purchase or soldering
- Wi-Fi driver work
- Upstream PR

## Architecture / Approach

```
Host: preflight.sh → download + verify → sunxi-tools → runbook
                          ↓
SD card: flash → checksum verify
                          ↓
U1A: boot → HDMI login → dmesg/lsusb to /boot → poweroff
                          ↓
Host: mount p1 → evidence/ → verdict in results.md
                          ↓
No boot? → FEL liveness → record
```

## Phases at a Glance

| Phase | What it delivers | Key risk |
| --- | --- | --- |
| 1. Host Prep and Image Acquisition | Verified image, FEL tool, runbook, results scaffold | Wrong board image (Cubietruck A20 instead of Cubieboard A10) |
| 2. Flash and First Boot | Verified card and HDMI login | Power pull during resize corrupts the card |
| 3. Diagnostics, Go/No-Go, and Fallback | Evidence, Wi-Fi ID, verdict | No boot, and the FEL button sequence is unknown |

**Prerequisites:** SD card, HDMI TV, USB keyboard, power supply, card reader.
**Estimated effort:** One prep session plus one physical boot session (~1–2 hours).

## Open Risks & Assumptions

- The FEL button location and entry sequence are unknown (PRD Open Question 3).
- The U1A DRAM may not match the Cubieboard `CONFIG_DRAM_CLK=432`; a boot failure may be DRAM-related.
- The internal Wi-Fi radio may have no mainline driver.
- The image may not boot at all, which turns this slice into a failure report plus a FEL result.

## Success Criteria (Summary)

- A checksum-verified card boots to an HDMI login on the U1A.
- NAND is untouched and removing the SD restores Android.
- `results.md` holds one verdict, the evidence paths, and a concrete next action.
