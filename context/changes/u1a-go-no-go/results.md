# U1A SD Boot Results

Evidence and verdict for the U1A go/no-go session. Fill sections as data
arrives. Do not record a verdict from memory.

## Environment

- Host: Arch Linux, kernel `6.18.57-2-lts`, `x86_64`.
- Image directory: `/home/pawel/armbian-images/u1a-go-no-go`.
- Free space on the image filesystem at download: 121808940 KB (~116 GiB).
- Required tools present: `pv`, `dd`, `sha256sum`, `xz`, `zstd`.
- FEL tool: `sunxi-tools 1.4.2-4`; `sunxi-fel version` needs a device in FEL
  mode, so the device probe is deferred to the fallback step.
- Card reader: Realtek RTSX PCI SD reader at PCI `0000:05:00.0` (`rtsx_pci_sdmmc`).

## Image

- Source page: <https://www.armbian.com/cubieboard/>
- URL: <https://github.com/armbian/community/releases/download/26.11.0-trunk.108/Armbian_community_26.11.0-trunk.108_Cubieboard_trixie_current_6.18.57_minimal.img.xz>
- Filename: `Armbian_community_26.11.0-trunk.108_Cubieboard_trixie_current_6.18.57_minimal.img.xz`
- Download date: 2026-10-24.
- Kernel from filename: 6.18.57.
- Published SHA256: `f3f3f83ae403960aef8714e98b5095ae506cf1e6fbefd15b16fd0c2b5ae45a4c`
- Computed SHA256: `f3f3f83ae403960aef8714e98b5095ae506cf1e6fbefd15b16fd0c2b5ae45a4c`
- `sha256sum -c`: OK.
- Board check: Cubieboard 1 (A10), not Cubietruck (A20). Image metadata:
  `BOARD=cubieboard`, `BOARD_NAME="Cubieboard 1"`, `BOARDFAMILY=sun4i`,
  kernel `6.18.57-current-sunxi`.

## Card

- Device: `/dev/mmcblk0` (laptop Realtek RTSX reader).
- Card: 28.9 GB SDHC, model `USD00`, serial `0x748d43bb`.
- Write-protect: initial insert reported `ro=1`; after the slider was moved
  and the card reinserted, `ro=0`.
- Flashed: 2026-10-24 with `dd` (`oflag=direct`), exit 0.
- Image SHA256 (compressed file): `f3f3f83ae403960aef8714e98b5095ae506cf1e6fbefd15b16fd0c2b5ae45a4c`
- Image SHA256 (uncompressed): `7bef2c6243762765ef5cab731aff794493bee230fd22cac4f8945947ddba4ce8`
- Card SHA256 (first 1497366528 bytes): `7bef2c6243762765ef5cab731aff794493bee230fd22cac4f8945947ddba4ce8` (match)
- Partition layout: one ext4 partition `mmcblk0p1`, label `armbi_root`,
  start sector 8192, 2916352 sectors, 1.4 GiB before first boot.

## Boot

- Boot date: 2026-10-24.
- Kernel: `6.18.57-current-sunxi`, `armv7l`, 1 CPU.
- Machine model: `Cubietech Cubieboard`.
- Memory: 991 MiB total, 495 MiB zram swap.
- Resize: EXT4 grew from 364544 to 7502848 blocks, started at 44.99 s and
  finished at 47.91 s.
- Console: DRM frame buffer `fb0` took over at 82.6 s. Login prompt followed.
- Login `root` / `1234`: pass. The operator ran the evidence commands.
- No power pull during the resize: yes. The kernel log is one continuous
  boot with no restart.
- Kernel errors: `ahci-sunxi` probe failed with `error -5` (no SATA on the
  U1A); `sun4i-emac` found no PHY (no Ethernet on the U1A); `sun4i-drm`
  reported `Unsupported infoframe type: 131`. No `Oops`, `panic`, or `BUG:`
  lines.
- Display: 1920x1080p60. The operator reports visible flicker.
- SD removed, stock Android starts: yes. Stock Android booted.

## Evidence index

`context/changes/u1a-go-no-go/evidence/`:

| File | Size |
| --- | --- |
| `armbianEnv.txt` | 203 B |
| `cpuinfo` | 317 B |
| `dmesg` | 43.6 KiB |
| `free` | 207 B |
| `lsusb` | 478 B |
| `model` | 21 B |
| `uname` | 92 B |

## Hardware facts

- DRAM: SK hynix `H5TQ2G83CFR-H9C`, 2 Gbit DDR3 SDRAM, 256M x8,
  DDR3-1333 (speed bin H9), 1.5 V, 78-ball FBGA. 256 MB per chip. The
  operator confirmed four chips on the board (1 GiB total), which matches the
  991 MiB visible to the kernel. The stock Cubieboard image booted with the
  Cubieboard DRAM init, so the Cubieboard 1 DRAM parameters work with this
  board. `CONFIG_DRAM_CLK=432` is below the 667 MHz rating of the chip.
- NAND: SK hynix `H27UBG8T2BTR-BC`, 32 Gbit (4 GB) MLC NAND flash, TSOP-48.
  It holds stock Android. It is not used for SD boot.
- FEL/recovery button: present inside the case. Orientation: A10 side, HDMI at
  the top. Location: right edge of the PCB, just below the microSD slot, next
  to the top-right corner of the A10. It is a small white/metal micro switch
  with a black plunger that sticks out to the right. Expected entry sequence:
  hold the button while connecting micro-USB to the host, release after
  enumeration. The sequence is not verified.
- Wi-Fi: `0bda:8179 Realtek Semiconductor Corp. RTL8188EUS 802.11n Wireless
  Network Adapter`. Driver `rtl8xxxu` (kernel config `CONFIG_RTL8XXXU=m`).
  Firmware `rtlwifi/rtl8188eufw.bin` revision 11.1 loaded. Interface
  `wlx000f05003493` associated to an access point. Wi-Fi works.

## Verdict

**PASS**

- HDMI login prompt reached. `root` / `1234` login works.
- HDMI console works. The screen flickers at 1920x1080p60; this is not fatal.
- `dmesg` has no `Oops`, `panic`, or `BUG:` lines. The SATA and Ethernet
  failures come from Cubieboard-only hardware that the U1A does not have.
- Wi-Fi works: RTL8188EUS on `rtl8xxxu`, firmware loaded, associated to an AP.
- NAND untouched: stock Android starts when the SD card is removed.
- Evidence: `context/changes/u1a-go-no-go/evidence/`.

Next action: record the RAM silkscreen and FEL entry sequence, then start the
`measyu1a` board file and DTS slice.

## Follow-ups

- First SD card failed to initialize in the host reader on 2026-10-24
  (`mmc0: error -110`, no `/dev/mmcblk*`). Replaced with a 28.9 GB SDHC card.
  The second card needed the write-protect slider moved before it reported
  `ro=0`.
- Display flicker: `disp_mode` lowered to 1280x720p60 on 2026-10-24. Boot
  again and confirm the flicker is gone.
- RAM silkscreen and FEL button location are recorded. The FEL entry sequence
  is not verified (PRD Open Question 3).
- FEL test deferred by the operator on 2026-10-24. Verify `sunxi-fel version`
  with the U1A in FEL mode before the next hardware experiment.
- Make a PC-side image of the known-good card after the display test. Not
  required for recovery: the stock image is re-downloadable and the config
  changes are documented. Back up only if a fast restore of the configured
  state is worth 29 GB.
- UART adapter remains the last resort if FEL does not respond.
