---
project: "Measy U1A Armbian Port"
created: 2026-10-24
updated: 2026-10-24
type: fork-bootstrap
---

# Fork bootstrap — Measy U1A Armbian Port

Record of the armbian/build fork bring-in. Corrects PRD assumptions with verified layout facts.

## Fork identity

- Fork: `pfrack/build` (created 2026-10-24 from `armbian/build`, default branch `main`, fork tip `e8e1f4a`).
- cwd `/home/pawel/code/measyu1a` is now the fork working tree root; `context/` preserved untracked alongside.
- Remotes: `origin` → `pfrack/build`, `upstream` → `armbian/build` (sync: `git fetch upstream main`).
- Clone is **shallow** (`--depth 1`) — disk was 99% full (3.5 G free at write time). Before opening a PR run `git fetch --unshallow upstream main`.

## Structure map (verified against fork tip)

| Phase-3 artifact | Location | Notes |
|---|---|---|
| Board file | `config/boards/measyu1a.wip` → `.tvb` | Copy template: `config/boards/cubieboard.csc` |
| Kernel DTS patch | `patch/kernel/archive/sunxi-6.18/patches.armbian/*.patch` | `KERNELPATCHDIR="archive/sunxi-${KERNEL_MAJOR_MINOR}"` set in `config/sources/families/include/sunxi_common.inc` |
| Kernel config | `config/kernel/linux-sunxi-current.config` (+ `edge` = 7.3) | family name for kernels is `sunxi`, not `sun4i` |
| U-Boot | `BOOTBRANCH tag:v2026.07`, patch dir `patch/u-boot/v2026.07-sunxi/` | A10 uses `u-boot-sunxi`; `BOOTCONFIG="Cubieboard_config"` |
| Boot env/script | `config/bootenv/sunxi.txt`, `config/bootscripts/boot-sunxi.cmd` | HDMI console extraargs go through `armbianEnv.txt` on the card at runtime, not here |

## Facts from `config/boards/cubieboard.csc` (template)

- `BOARDFAMILY="sun4i"`; `KERNEL_TARGET="current,edge,legacy"`; `KERNEL_TEST_TARGET="current"`.
- `HAS_VIDEO_OUTPUT="no"`; `MODULES_BLACKLIST="ir_lirc_codec lirc_dev sunxi-cir"` — TV-stick-relevant, since U1A has no IR need either.
- U-Boot post-config hook: `CONFIG_DRAM_CLK=432`, `CONFIG_VIDEO_DE2` disabled (EDID fix). U1A DRAM timing is an Open Question — reuse the hook pattern, verify against the RAM chip found on silkscreen.

## Corrections vs PRD assumptions

1. PRD/plan wrote `KERNELPATCHDIR` under `patch/kernel/sunxi-*`; actual value is `archive/sunxi-<branch>`.
2. Cubieboard 1 is a `.csc` board file here (community-supported class), not `.conf`. `.wip`/`.tvb` classes both exist in the tree, so the `measyu1a.wip → .tvb` path stays valid.
3. Family split: board tree says `sun4i`, kernel sources say `sunxi` (A10 = 32-bit sunxi vs sunxi64). DTS patch and kernel config keys follow `sunxi`; overlay prefix is `sun4i-a10`.

## Phase sequence (from PRD)

1. **Physical (user):** flash current Armbian Cubieboard 1 image to SD, boot U1A, wait out first-boot resize, HDMI login, paste `dmesg`/`lsusb` back. Go/no-go. If no boot: FEL liveness check via `sunxi-fel`, UART adapter only as approved last resort.
2. **Temporary on-device (user + agent):** DTB variations on the card.
3. **Real deliverable (agent):** board file + DTS patch in this fork, Docker `./compile.sh build BOARD=measyu1a BRANCH=current`, SD image backup/restore procedure, update policy.
