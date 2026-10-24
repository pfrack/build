<details><summary>Build: PREFER_DOCKER=no BUILD_MINIMAL=yes ARMBIAN_BUILD_UUID=9e442751-1dbe-4bdb-9592-78d9506bdc6c ARMBIAN_RELAUNCHED=yes BRANCH=current BOARD=measyu1a SKIP_LOG_ARCHIVE=yes SET_OWNER_TO_UID=1000 DOCKER_NICE=0 RELEASE=trixie KERNEL_CONFIGURE=no build</summary>
<p>

### Armbian logs for 9e442751-1dbe-4bdb-9592-78d9506bdc6c
#### Armbian build at Sat Oct 24 17:25:33 UTC 2026 on 5920d5bf1668
#### Repeat build: ./compile.sh build BOARD=measyu1a BRANCH=current BUILD_MINIMAL=yes KERNEL_CONFIGURE=no RELEASE=trixie
#### ARGs: `'PREFER_DOCKER=no' 'BUILD_MINIMAL=yes' 'ARMBIAN_BUILD_UUID=9e442751-1dbe-4bdb-9592-78d9506bdc6c' 'ARMBIAN_RELAUNCHED=yes' 'BRANCH=current' 'BOARD=measyu1a' 'SKIP_LOG_ARCHIVE=yes' 'SET_OWNER_TO_UID=1000' 'DOCKER_NICE=0' 'RELEASE=trixie' 'KERNEL_CONFIGURE=no' 'build'`


</p></details>


<details><summary>Aggregation: debootstrap: 5; rootfs: 49; image: 2; apt-sources: 0; hash: 665d3a23b59545a0</summary>
<p>

### `AGGREGATED_PACKAGES_DEBOOTSTRAP`
- `apt-utils`: *added*
  - `initial:config/cli/trixie/debootstrap/packages:1`
- `locales`: *added*
  - `initial:config/cli/trixie/debootstrap/packages:2`
- `console-setup`: *added*
  - `initial:config/cli/trixie/debootstrap/packages:3`
- `gpgv`: *added*
  - `initial:config/cli/trixie/debootstrap/packages:4`
- `ca-certificates`: *added*
  - `initial:config/cli/trixie/debootstrap/packages:5`
- `cpufrequtils`: *remove*
  - `remove::379`
- `software-properties-common`: *remove*
  - `remove::384`
  - `remove::384`
- `software-properties-gtk`: *remove*
  - `remove::384`
### `AGGREGATED_PACKAGES_ROOTFS`
- `alsa-utils`: *added*
  - `initial:config/cli/trixie/main/packages:1:symlink->config/cli/common/main/packages`
- `bash-completion`: *added*
  - `initial:config/cli/trixie/main/packages:2:symlink->config/cli/common/main/packages`
- `bc`: *added*
  - `initial:config/cli/trixie/main/packages:3:symlink->config/cli/common/main/packages`
- `btrfs-progs`: *added*
  - `initial:config/cli/trixie/main/packages:4:symlink->config/cli/common/main/packages`
- `console-setup`: *added*
  - `initial:config/cli/trixie/main/packages:5:symlink->config/cli/common/main/packages`
- `cron`: *added*
  - `initial:config/cli/trixie/main/packages:6:symlink->config/cli/common/main/packages`
- `curl`: *added*
  - `initial:config/cli/trixie/main/packages:7:symlink->config/cli/common/main/packages`
- `dbus-user-session`: *added*
  - `initial:config/cli/trixie/main/packages:8:symlink->config/cli/common/main/packages`
- `dialog`: *added*
  - `initial:config/cli/trixie/main/packages:9:symlink->config/cli/common/main/packages`
- `debconf-utils`: *added*
  - `initial:config/cli/trixie/main/packages:10:symlink->config/cli/common/main/packages`
- `debsums`: *added*
  - `initial:config/cli/trixie/main/packages:11:symlink->config/cli/common/main/packages`
- `dosfstools`: *added*
  - `initial:config/cli/trixie/main/packages:12:symlink->config/cli/common/main/packages`
- `e2fsprogs`: *added*
  - `initial:config/cli/trixie/main/packages:13:symlink->config/cli/common/main/packages`
- `fake-hwclock`: *added*
  - `initial:config/cli/trixie/main/packages:14:symlink->config/cli/common/main/packages`
- `fdisk`: *added*
  - `initial:config/cli/trixie/main/packages:15:symlink->config/cli/common/main/packages`
- `figlet`: *added*
  - `initial:config/cli/trixie/main/packages:16:symlink->config/cli/common/main/packages`
- `htop`: *added*
  - `initial:config/cli/trixie/main/packages:17:symlink->config/cli/common/main/packages`
- `iputils-ping`: *added*
  - `initial:config/cli/trixie/main/packages:18:symlink->config/cli/common/main/packages`
- `init`: *added*
  - `initial:config/cli/trixie/main/packages:19:symlink->config/cli/common/main/packages`
- `initramfs-tools`: *added*
  - `initial:config/cli/trixie/main/packages:20:symlink->config/cli/common/main/packages`
- `iproute2`: *added*
  - `initial:config/cli/trixie/main/packages:21:symlink->config/cli/common/main/packages`
- `iw`: *added*
  - `initial:config/cli/trixie/main/packages:22:symlink->config/cli/common/main/packages`
- `jq`: *added*
  - `initial:config/cli/trixie/main/packages:23:symlink->config/cli/common/main/packages`
- `logrotate`: *added*
  - `initial:config/cli/trixie/main/packages:24:symlink->config/cli/common/main/packages`
- `less`: *added*
  - `initial:config/cli/trixie/main/packages:25:symlink->config/cli/common/main/packages`
- `linux-base`: *added*
  - `initial:config/cli/trixie/main/packages:26:symlink->config/cli/common/main/packages`
- `lsof`: *added*
  - `initial:config/cli/trixie/main/packages:27:symlink->config/cli/common/main/packages`
- `man-db`: *added*
  - `initial:config/cli/trixie/main/packages:28:symlink->config/cli/common/main/packages`
- `mmc-utils`: *added*
  - `initial:config/cli/trixie/main/packages:29:symlink->config/cli/common/main/packages`
- `ncurses-term`: *added*
  - `initial:config/cli/trixie/main/packages:30:symlink->config/cli/common/main/packages`
- `nano`: *added*
  - `initial:config/cli/trixie/main/packages:31:symlink->config/cli/common/main/packages`
- `openssh-server`: *added*
  - `initial:config/cli/trixie/main/packages:32:symlink->config/cli/common/main/packages`
- `pahole`: *added*
  - `initial:config/cli/trixie/main/packages:33:symlink->config/cli/common/main/packages`
- `parted`: *added*
  - `initial:config/cli/trixie/main/packages:34:symlink->config/cli/common/main/packages`
- `psmisc`: *added*
  - `initial:config/cli/trixie/main/packages:35:symlink->config/cli/common/main/packages`
- `rsync`: *added*
  - `initial:config/cli/trixie/main/packages:36:symlink->config/cli/common/main/packages`
- `rsyslog`: *added*
  - `initial:config/cli/trixie/main/packages:37:symlink->config/cli/common/main/packages`
- `sudo`: *added*
  - `initial:config/cli/trixie/main/packages:38:symlink->config/cli/common/main/packages`
- `systemd-resolved`: *added*
  - `initial:config/cli/trixie/main/packages:39:symlink->config/cli/common/main/packages`
- `toilet`: *added*
  - `initial:config/cli/trixie/main/packages:40:symlink->config/cli/common/main/packages`
- `tzdata`: *added*
  - `initial:config/cli/trixie/main/packages:41:symlink->config/cli/common/main/packages`
- `u-boot-tools`: *added*
  - `initial:config/cli/trixie/main/packages:42:symlink->config/cli/common/main/packages`
- `usbutils`: *added*
  - `initial:config/cli/trixie/main/packages:43:symlink->config/cli/common/main/packages`
- `wget`: *added*
  - `initial:config/cli/trixie/main/packages:44:symlink->config/cli/common/main/packages`
- `wireguard-tools`: *added*
  - `initial:config/cli/trixie/main/packages:45:symlink->config/cli/common/main/packages`
- `wireless-regdb`: *added*
  - `initial:config/cli/trixie/main/packages:46:symlink->config/cli/common/main/packages`
- `wpasupplicant`: *added*
  - `initial:config/cli/trixie/main/packages:47:symlink->config/cli/common/main/packages`
- `gpiod`: *added*
  - `initial:config/optional/architectures/armhf/_config/cli/trixie/main/packages:1`
- `mtd-utils`: *added*
  - `initial:config/optional/architectures/armhf/_config/cli/trixie/main/packages:2`
- `cpufrequtils`: *remove*
  - `remove::379`
- `software-properties-common`: *remove*
  - `remove::384`
  - `remove::384`
- `software-properties-gtk`: *remove*
  - `remove::384`
### `AGGREGATED_PACKAGES_IMAGE`
- `systemd-timesyncd`: *added*
  - `initial:timesyncd.sh:8`
- `netplan.io`: *added*
  - `initial:networkd.sh:13`
- `cpufrequtils`: *remove*
  - `remove::379`
- `software-properties-common`: *remove*
  - `remove::384`
  - `remove::384`
- `software-properties-gtk`: *remove*
  - `remove::384`
### `AGGREGATED_APT_SOURCES`
## Potential paths 
- `config/cli/_all_distributions/debootstrap/components`
- `config/cli/_all_distributions/debootstrap/config_cli_minimal/components`
- `config/cli/_all_distributions/debootstrap/config_cli_minimal/packages`
- `config/cli/_all_distributions/debootstrap/config_cli_minimal/packages.remove`
- `config/cli/_all_distributions/debootstrap/packages`
- `config/cli/_all_distributions/debootstrap/packages.remove`
- `config/cli/_all_distributions/main/config_cli_minimal/packages`
- `config/cli/_all_distributions/main/config_cli_minimal/packages.external`
- `config/cli/_all_distributions/main/config_cli_minimal/packages.remove`
- `config/cli/_all_distributions/main/packages`
- `config/cli/_all_distributions/main/packages.external`
- `config/cli/_all_distributions/main/packages.remove`
- `config/cli/trixie/debootstrap/components`
- `config/cli/trixie/debootstrap/config_cli_minimal/components`
- `config/cli/trixie/debootstrap/config_cli_minimal/packages`
- `config/cli/trixie/debootstrap/config_cli_minimal/packages.remove`
- `config/cli/trixie/debootstrap/packages`
- `config/cli/trixie/debootstrap/packages.remove`
- `config/cli/trixie/main/config_cli_minimal/packages`
- `config/cli/trixie/main/config_cli_minimal/packages.external`
- `config/cli/trixie/main/config_cli_minimal/packages.remove`
- `config/cli/trixie/main/packages`
- `config/cli/trixie/main/packages.external`
- `config/cli/trixie/main/packages.remove`
- `config/optional/_any_board/_config/cli/_all_distributions/debootstrap/components`
- `config/optional/_any_board/_config/cli/_all_distributions/debootstrap/config_cli_minimal/components`
- `config/optional/_any_board/_config/cli/_all_distributions/debootstrap/config_cli_minimal/packages`
- `config/optional/_any_board/_config/cli/_all_distributions/debootstrap/config_cli_minimal/packages.remove`
- `config/optional/_any_board/_config/cli/_all_distributions/debootstrap/packages`
- `config/optional/_any_board/_config/cli/_all_distributions/debootstrap/packages.remove`
- `config/optional/_any_board/_config/cli/_all_distributions/main/config_cli_minimal/packages`
- `config/optional/_any_board/_config/cli/_all_distributions/main/config_cli_minimal/packages.external`
- `config/optional/_any_board/_config/cli/_all_distributions/main/config_cli_minimal/packages.remove`
- `config/optional/_any_board/_config/cli/_all_distributions/main/packages`
- `config/optional/_any_board/_config/cli/_all_distributions/main/packages.external`
- `config/optional/_any_board/_config/cli/_all_distributions/main/packages.remove`
- `config/optional/_any_board/_config/cli/trixie/debootstrap/components`
- `config/optional/_any_board/_config/cli/trixie/debootstrap/config_cli_minimal/components`
- `config/optional/_any_board/_config/cli/trixie/debootstrap/config_cli_minimal/packages`
- `config/optional/_any_board/_config/cli/trixie/debootstrap/config_cli_minimal/packages.remove`
- `config/optional/_any_board/_config/cli/trixie/debootstrap/packages`
- `config/optional/_any_board/_config/cli/trixie/debootstrap/packages.remove`
- `config/optional/_any_board/_config/cli/trixie/main/config_cli_minimal/packages`
- `config/optional/_any_board/_config/cli/trixie/main/config_cli_minimal/packages.external`
- `config/optional/_any_board/_config/cli/trixie/main/config_cli_minimal/packages.remove`
- `config/optional/_any_board/_config/cli/trixie/main/packages`
- `config/optional/_any_board/_config/cli/trixie/main/packages.external`
- `config/optional/_any_board/_config/cli/trixie/main/packages.remove`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/debootstrap/components`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/debootstrap/config_cli_minimal/components`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/debootstrap/config_cli_minimal/packages`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/debootstrap/config_cli_minimal/packages.remove`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/debootstrap/packages`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/debootstrap/packages.remove`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/main/config_cli_minimal/packages`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/main/config_cli_minimal/packages.external`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/main/config_cli_minimal/packages.remove`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/main/packages`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/main/packages.external`
- `config/optional/architectures/armhf/_config/cli/_all_distributions/main/packages.remove`
- `config/optional/architectures/armhf/_config/cli/trixie/debootstrap/components`
- `config/optional/architectures/armhf/_config/cli/trixie/debootstrap/config_cli_minimal/components`
- `config/optional/architectures/armhf/_config/cli/trixie/debootstrap/config_cli_minimal/packages`
- `config/optional/architectures/armhf/_config/cli/trixie/debootstrap/config_cli_minimal/packages.remove`
- `config/optional/architectures/armhf/_config/cli/trixie/debootstrap/packages`
- `config/optional/architectures/armhf/_config/cli/trixie/debootstrap/packages.remove`
- `config/optional/architectures/armhf/_config/cli/trixie/main/config_cli_minimal/packages`
- `config/optional/architectures/armhf/_config/cli/trixie/main/config_cli_minimal/packages.external`
- `config/optional/architectures/armhf/_config/cli/trixie/main/config_cli_minimal/packages.remove`
- `config/optional/architectures/armhf/_config/cli/trixie/main/packages`
- `config/optional/architectures/armhf/_config/cli/trixie/main/packages.external`
- `config/optional/architectures/armhf/_config/cli/trixie/main/packages.remove`
- `userpatches/cli/_all_distributions/debootstrap/components`
- `userpatches/cli/_all_distributions/debootstrap/config_cli_minimal/components`
- `userpatches/cli/_all_distributions/debootstrap/config_cli_minimal/packages`
- `userpatches/cli/_all_distributions/debootstrap/config_cli_minimal/packages.remove`
- `userpatches/cli/_all_distributions/debootstrap/packages`
- `userpatches/cli/_all_distributions/debootstrap/packages.remove`
- `userpatches/cli/_all_distributions/main/config_cli_minimal/packages`
- `userpatches/cli/_all_distributions/main/config_cli_minimal/packages.external`
- `userpatches/cli/_all_distributions/main/config_cli_minimal/packages.remove`
- `userpatches/cli/_all_distributions/main/packages`
- `userpatches/cli/_all_distributions/main/packages.external`
- `userpatches/cli/_all_distributions/main/packages.remove`
- `userpatches/cli/trixie/debootstrap/components`
- `userpatches/cli/trixie/debootstrap/config_cli_minimal/components`
- `userpatches/cli/trixie/debootstrap/config_cli_minimal/packages`
- `userpatches/cli/trixie/debootstrap/config_cli_minimal/packages.remove`
- `userpatches/cli/trixie/debootstrap/packages`
- `userpatches/cli/trixie/debootstrap/packages.remove`
- `userpatches/cli/trixie/main/config_cli_minimal/packages`
- `userpatches/cli/trixie/main/config_cli_minimal/packages.external`
- `userpatches/cli/trixie/main/config_cli_minimal/packages.remove`
- `userpatches/cli/trixie/main/packages`
- `userpatches/cli/trixie/main/packages.external`
- `userpatches/cli/trixie/main/packages.remove`


</p></details>
<details><summary>u-boot patching: 0 total patches; 0 applied; 0 with problems</summary>
<p>

- No patches found.


</p></details>
<details><summary>kernel patching: 581 total patches; 581 applied; 14 with problems; 14 needs_rebase</summary>
<p>

| Status | Patch  | Diffstat Summary | Files patched | Author / Subject |
| :---:    | :---   | :---   | :---   | :---  |
|  🤖  ✅  | `[kernel-drivers/]` `sha1_2926d88bb7fc4608fd942453d929c39e4e5ec006_sunxi_current_68f5ac00_46571e51-01ba4719` | `(+0/-0)[]` | `?` | `Armbian Autopatcher` _[AUTOGEN] /armbian/cache/patch/kernel-drivers/sha1_2926d88bb7fc4608fd942453d929c39e4e5ec006_sunxi_current_68f5ac00_46571e51-01ba4719_ |
|  📜  ✅  | `[a711-6.18/]` `0001-nfc-pn544-Add-support-for-VBAT-PVDD-regulators` | `(+29/-2)[1M]` | `i2c.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _nfc: pn544: Add support for VBAT/PVDD regulators_ |
|  📜  ✅  | `[a711-6.18/]` `0002-bluetooth-bcm-Restore-drive_rts_on_open-true-behavio` | `(+6/-1)[1M]` | `hci_bcm.c` | `Ondrej Jirman` _bluetooth: bcm: Restore drive_rts_on_open = true behavior on bcm20702a1_ |
|  📜  ✅  | `[a711-6.18/]` `0003-mmc-add-delay-after-power-class-selection` | `(+4/-0)[1M]` | `mmc.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _mmc: add delay after power class selection_ |
|  📜  ✅  | `[a711-6.18/]` `0004-ARM-dts-sun8i-a83t-tbs-a711-Add-PN544-NFC-support` | `(+15/-3)[1M]` | `sun8i-a83t-tbs-a711.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t-tbs-a711: Add PN544 NFC support_ |
|  📜  ✅  | `[a711-6.18/]` `0005-ARM-dts-sun8i-a83t-tbs-a711-Add-powerup-down-support` | `(+12/-1)[1M]` | `sun8i-a83t-tbs-a711.dts` | `Mylene Josserand` _ARM: dts: sun8i-a83t-tbs-a711: Add powerup/down support for the 3G modem_ |
|  📜  ✅  | `[a711-6.18/]` `0006-ARM-dts-sun8i-a83t-Add-cedrus-video-codec-support-to` | `(+10/-0)[1M]` | `sun8i-a83t.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t: Add cedrus video codec support to A83T [untested]_ |
|  📜  ✅  | `[a711-6.18/]` `0007-ARM-dts-suni-a83t-Add-i2s0-pins` | `(+5/-0)[1M]` | `sun8i-a83t.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: suni-a83t: Add i2s0 pins_ |
|  📜  ✅  | `[a711-6.18/]` `0008-ARM-dts-sun8i-a83t-tbs-a711-Add-sound-support-via-AC` | `(+85/-0)[1M]` | `sun8i-a83t-tbs-a711.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t-tbs-a711: Add sound support via AC100 codec_ |
|  📜  ✅  | `[a711-6.18/]` `0009-ARM-dts-sun8i-a83t-tbs-a711-Add-regulators-to-the-ac` | `(+2/-0)[1M]` | `sun8i-a83t-tbs-a711.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t-tbs-a711: Add regulators to the accelerometer_ |
|  📜  ✅  | `[a711-6.18/]` `0010-ARM-dts-sun8i-a83t-tbs-a711-Add-camera-sensors-HM506` | `(+99/-2)[1M]` | `sun8i-a83t-tbs-a711.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t-tbs-a711: Add camera sensors (HM5065, GC2145)_ |
|  📜  ✅  | `[a711-6.18/]` `0011-ARM-dts-sun8i-a83t-tbs-a711-Add-flash-led-support` | `(+9/-0)[1M]` | `sun8i-a83t-tbs-a711.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t-tbs-a711: Add flash led support_ |
|  📜  ⚠️`[needs_rebase]`  | `[a711-cams-6.18/]` `0001-MAINTAINERS-Add-entry-for-Himax-HM5065` | `(+6/-0)[1M]` | `MAINTAINERS` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _MAINTAINERS: Add entry for Himax HM5065_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0002-dt-bindings-media-Add-bindings-for-Himax-HM5065-came` | `(+49/-0)[1A]` | `hm5065.txt` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _dt-bindings: media: Add bindings for Himax HM5065 camera sensor_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0003-hm5065-yaml-bindings-wip` | `(+90/-0)[1A]` | `hm5065.yaml` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _hm5065: yaml bindings (wip)_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0004-media-hm5065-Add-subdev-driver-for-Himax-HM5065-came` | `(+2218/-0)[2M, 1A]` | `hm5065.c`, `Kconfig`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _media: hm5065: Add subdev driver for Himax HM5065 camera sensor_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0005-media-i2c-gc2145-Move-upstream-driver-out-of-the-way` | `(+3/-3)[3M, 1R]` | `Kconfig`, `Makefile`, `gc2145-mipi.c` | `Ondrej Jirman` _media: i2c: gc2145: Move upstream driver out of the way_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0006-media-gc2145-Galaxycore-camera-module-driver` | `(+2263/-0)[2M, 1A]` | `gc2145.c`, `Kconfig`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _media: gc2145: Galaxycore camera module driver_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0007-media-gc2145-Added-BGGR-bayer-mode` | `(+5/-0)[1M]` | `gc2145.c` | `Martijn Braam` _media: gc2145: Added BGGR bayer mode_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0008-media-gc2145-Disable-debug-output` | `(+2/-2)[1M]` | `gc2145.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _media: gc2145: Disable debug output_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0009-media-gc2145-Add-PIXEL_RATE-HBLANK-and-VBLANK-contro` | `(+258/-211)[1M]` | `gc2145.c` | `Benjamin Schaaf` _media: gc2145: Add PIXEL_RATE, HBLANK and VBLANK controls_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0010-media-gc2145-implement-system-suspend` | `(+37/-0)[1M]` | `gc2145.c` | `Andrey Skvortsov` _media: gc2145: implement system suspend_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0011-media-gc2145-fix-white-balance-colors` | `(+97/-21)[1M]` | `gc2145.c` | `Andrey Skvortsov` _media: gc2145: fix white-balance colors_ |
|  📜  ✅  | `[a711-cams-6.18/]` `0012-media-i2c-gc2145-Parse-and-register-properties` | `(+9/-0)[1M]` | `gc2145.c` | `Robert Mader` _media: i2c: gc2145: Parse and register properties_ |
|  📜  ✅  | `[a711-chgled-6.18/]` `0001-dt-bindings-leds-Add-a-binding-for-AXP813-charger-le` | `(+24/-0)[1A]` | `leds-axp20x.yaml` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _dt-bindings: leds: Add a binding for AXP813 charger led_ |
|  📜  ✅  | `[a711-chgled-6.18/]` `0002-leds-axp20x-Support-charger-LED-on-AXP20x-like-PMICs` | `(+272/-0)[3M, 1A]` | `leds-axp20x.c`, `Kconfig`, `axp20x.c`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _leds: axp20x: Support charger LED on AXP20x like PMICs_ |
|  📜  ✅  | `[a711-chgled-6.18/]` `0003-ARM-dts-axp813-Add-charger-LED` | `(+5/-0)[1M]` | `axp81x.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: axp813: Add charger LED_ |
|  📜  ✅  | `[a711-chgled-6.18/]` `0004-ARM-dts-sun8i-a83t-tbs-a711-Enable-charging-LED` | `(+4/-0)[1M]` | `sun8i-a83t-tbs-a711.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t-tbs-a711: Enable charging LED_ |
|  📜  ✅  | `[a711-vibrator-6.18/]` `0001-dt-bindings-input-gpio-vibrator-Don-t-require-enable` | `(+6/-1)[1M]` | `gpio-vibrator.yaml` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _dt-bindings: input: gpio-vibrator: Don't require enable-gpios_ |
|  📜  ✅  | `[a711-vibrator-6.18/]` `0002-input-gpio-vibra-Allow-to-use-vcc-supply-alone-to-co` | `(+18/-7)[1M]` | `gpio-vibra.c` | `Ondrej Jirman` _input: gpio-vibra: Allow to use vcc-supply alone to control the vibrator_ |
|  📜  ✅  | `[a711-vibrator-6.18/]` `0003-ARM-dts-sun8i-a83t-tbs-a711-Add-support-for-the-vibr` | `(+5/-0)[1M]` | `sun8i-a83t-tbs-a711.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t-tbs-a711: Add support for the vibrator motor_ |
|  📜  ✅  | `[a711-vibrator-6.18/]` `0004-ARM-dts-sun8i-a83t-tbs-a711-Increase-voltage-on-the-` | `(+2/-2)[1M]` | `sun8i-a83t-tbs-a711.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t-tbs-a711: Increase voltage on the vibrator_ |
|  📜  ✅  | `[a83t-suspend-6.18/]` `0001-mailbox-Allow-to-run-mailbox-while-timekeeping-is-su` | `(+19/-1)[1M]` | `mailbox.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _mailbox: Allow to run mailbox while timekeeping is suspended_ |
|  📜  ✅  | `[a83t-suspend-6.18/]` `0002-ARM-sunxi-Add-experimental-suspend-to-memory-impleme` | `(+46/-0)[1M]` | `sunxi.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: sunxi: Add experimental suspend to memory implementation for A83T_ |
|  📜  ✅  | `[a83t-suspend-6.18/]` `0003-ARM-sunxi-sunxi_cpu0_hotplug_support_set-is-not-supp` | `(+3/-0)[1M]` | `mc_smp.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: sunxi: sunxi_cpu0_hotplug_support_set is not supported on A83T_ |
|  📜  ✅  | `[a83t-suspend-6.18/]` `0004-firmware-scpi-Add-support-for-sending-a-SCPI_CMD_SET` | `(+11/-0)[2M]` | `arm_scpi.c`, `scpi_protocol.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _firmware: scpi: Add support for sending a SCPI_CMD_SET_SYS_PWR_STATE msg_ |
|  📜  ✅  | `[a83t-suspend-6.18/]` `0005-ARM-sunxi-Use-SCPI-to-send-suspend-message-to-SCP-on` | `(+13/-2)[1M]` | `sunxi.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: sunxi: Use SCPI to send suspend message to SCP on A83T_ |
|  📜  ✅  | `[a83t-suspend-6.18/]` `0006-gnss-ubx-Send-soft-powerdown-message-on-suspend` | `(+35/-0)[1M]` | `ubx.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _gnss: ubx: Send soft powerdown message on suspend_ |
|  📜  ✅  | `[a83t-suspend-6.18/]` `0007-clk-sunxi-ng-Export-CLK_DRAM-for-devfreq` | `(+2/-7)[2M]` | `sun8i-a83t-ccu.h`, `ccu-sun8i-a83t.h` | `Samuel Holland` _clk: sunxi-ng: Export CLK_DRAM for devfreq_ |
|  📜  ✅  | `[a83t-suspend-6.18/]` `0008-ARM-dts-sun8i-a83t-Add-MBUS-node` | `(+15/-0)[1M]` | `sun8i-a83t.dtsi` | `Samuel Holland` _ARM: dts: sun8i: a83t: Add MBUS node_ |
|  📜  ✅  | `[anx-6.18/]` `0001-phy-allwinner-sun4i-usb-Add-support-for-usb_role_swi` | `(+51/-1)[2M]` | `phy-sun4i-usb.c`, `Kconfig` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _phy: allwinner: sun4i-usb: Add support for usb_role_switch_ |
|  📜  ✅  | `[anx-6.18/]` `0002-regulator-axp20x-Add-support-for-vin-supply-for-driv` | `(+27/-3)[1M]` | `axp20x-regulator.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _regulator: axp20x: Add support for vin-supply for drivevbus_ |
|  📜  ✅  | `[anx-6.18/]` `0003-regulator-axp20x-Turn-N_VBUSEN-to-input-on-x-powers-` | `(+12/-0)[2M]` | `axp20x-regulator.c`, `sun50i-a64-pinephone-1.2.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _regulator: axp20x: Turn N_VBUSEN to input on x-powers,sense-vbus-en_ |
|  📜  ✅  | `[anx-6.18/]` `0004-drm-bridge-dw-hdmi-Allow-to-accept-HPD-status-from-o` | `(+59/-4)[1M]` | `dw-hdmi.c` | `Ondrej Jirman` _drm: bridge: dw-hdmi: Allow to accept HPD status from other drivers_ |
|  📜  ✅  | `[anx-6.18/]` `0005-drm-bridge-dw-hdmi-Report-HDMI-hotplug-events` | `(+8/-2)[1M]` | `dw-hdmi.c` | `Ondrej Jirman` _drm: bridge: dw-hdmi: Report HDMI hotplug events_ |
|  📜  ✅  | `[anx-6.18/]` `0006-usb-typec-anx7688-Add-driver-for-ANX7688-USB-C-HDMI-` | `(+2209/-0)[2M, 1A]` | `anx7688.c`, `Kconfig`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: anx7688: Add driver for ANX7688 USB-C HDMI bridge_ |
|  📜  ✅  | `[arasan-6.18/]` `0001-sdhci-arasan-Add-runtime-PM-support` | `(+85/-2)[1M]` | `sdhci-of-arasan.c` | `Ondrej Jirman` _sdhci: arasan: Add runtime PM support_ |
|  📜  ✅  | `[audio-6.18/]` `0001-dt-bindings-sound-Add-jack-type-property-to-sun8i-a3` | `(+9/-0)[1M]` | `allwinner,sun8i-a33-codec.yaml` | `Ondrej Jirman` _dt-bindings: sound: Add jack-type property to sun8i-a33-codec_ |
|  📜  ✅  | `[audio-6.18/]` `0002-ASoC-sun8i-codec-Allow-the-jack-type-to-be-set-via-d` | `(+13/-0)[1M]` | `sun8i-codec.c` | `Ondrej Jirman` _ASoC: sun8i-codec: Allow the jack type to be set via device tree_ |
|  📜  ✅  | `[audio-6.18/]` `0003-ASoC-sun8i-codec-define-button-keycodes` | `(+7/-0)[1M]` | `sun8i-codec.c` | `Ondrej Jirman` _ASoC: sun8i-codec: define button keycodes_ |
|  📜  ✅  | `[audio-6.18/]` `0004-ASoC-sun8i-codec-Add-debug-output-for-jack-detection` | `(+31/-1)[1M]` | `sun8i-codec.c` | `Ondrej Jirman` _ASoC: sun8i-codec: Add debug output for jack detection_ |
|  📜  ✅  | `[audio-6.18/]` `0005-ASoC-sun8i-codec-Set-jack_type-from-DT-in-probe` | `(+7/-7)[1M]` | `sun8i-codec.c` | `Ondrej Jirman` _ASoC: sun8i-codec: Set jack_type from DT in probe_ |
|  📜  ✅  | `[audio-6.18/]` `0006-ASoC-simple-card-Allow-to-define-pins-for-aux-jack-d` | `(+40/-0)[1M]` | `simple-card-utils.c` | `Ondrej Jirman` _ASoC: simple-card: Allow to define pins for aux jack devices_ |
|  📜  ✅  | `[audio-6.18/]` `0007-clk-sunxi-ng-a64-Increase-PLL_AUDIO-base-frequency` | `(+32/-9)[1M]` | `ccu-sun50i-a64.c` | `Samuel Holland` _clk: sunxi-ng: a64: Increase PLL_AUDIO base frequency_ |
|  📜  ✅  | `[audio-6.18/]` `0008-dt-bindings-mfd-Add-codec-related-properties-to-AC10` | `(+38/-0)[1M]` | `x-powers,ac100.yaml` | `Ondrej Jirman` _dt: bindings: mfd: Add codec related properties to AC100 PMIC_ |
|  📜  ✅  | `[audio-6.18/]` `0009-sound-soc-ac100-codec-Support-analog-part-of-X-Power` | `(+1006/-0)[4M, 1A]` | `ac100-codec.c`, `Kconfig`, `ac100.c`, `ac100.h`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _sound: soc: ac100-codec: Support analog part of X-Powers AC100 codec_ |
|  📜  ✅  | `[audio-6.18/]` `0010-sound-soc-sun8i-codec-Add-support-for-digital-part-o` | `(+212/-8)[2M]` | `sun8i-codec.c`, `Kconfig` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _sound: soc: sun8i-codec: Add support for digital part of the AC100 codec_ |
|  📜  ✅  | `[audio-6.18/]` `0011-ASoC-ec25-New-codec-driver-for-the-EC25-modem` | `(+99/-0)[2M, 1A]` | `ec25.c`, `Kconfig`, `Makefile` | `Samuel Holland` _ASoC: ec25: New codec driver for the EC25 modem_ |
|  📜  ✅  | `[aw-opp-6.18/]` `0001-clk-sunxi-ng-Set-maximum-P-and-M-factors-to-1-for-H3` | `(+15/-9)[1M]` | `ccu-sun8i-h3.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _clk: sunxi-ng: Set maximum P and M factors to 1 for H3 pll-cpux clock_ |
|  📜  ✅  | `[aw-opp-6.18/]` `0003-ARM-dts-sun8i-h3-Use-my-own-more-aggressive-OPPs-on-` | `(+36/-0)[1M]` | `sun8i-h3.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-h3: Use my own more aggressive OPPs on H3_ |
|  📜  ✅  | `[aw-opp-6.18/]` `0004-arm64-dts-sun50i-h5-Use-my-own-more-aggressive-OPPs-` | `(+22/-22)[1M]` | `sun50i-h5-cpu-opp.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-h5: Use my own more aggressive OPPs on H5_ |
|  📜  ✅  | `[aw-opp-6.18/]` `0005-ARM-dts-sun8i-h3-orange-pi-pc-Increase-max-CPUX-volt` | `(+2/-1)[1M]` | `sun8i-h3-orangepi-pc.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-h3-orange-pi-pc: Increase max CPUX voltage to 1.4V_ |
|  📜  ✅  | `[aw-opp-6.18/]` `0006-ARM-dts-sun8i-a83t-Improve-CPU-OPP-tables-go-up-to-1` | `(+22/-58)[1M]` | `sun8i-a83t.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t: Improve CPU OPP tables (go up to 1.8GHz)_ |
|  📜  ✅  | `[aw-opp-6.18/]` `0007-cpufreq-sun50i-Show-detected-CPU-bin-for-easier-debu` | `(+2/-0)[1M]` | `sun50i-cpufreq-nvmem.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _cpufreq: sun50i: Show detected CPU bin, for easier debugging_ |
|  📜  ✅  | `[aw-suspend-6.18/]` `0001-clk-sunxi-ng-Mark-TWD-clocks-as-critical` | `(+3/-3)[3M]` | `ccu-sun50i-a100-r.c`, `ccu-sun50i-h6-r.c`, `ccu-sun8i-r.c` | `Samuel Holland` _clk: sunxi-ng: Mark TWD clocks as critical_ |
|  📜  ✅  | `[aw-suspend-6.18/]` `0002-firmware-arm_scpi-Support-unidirectional-mailbox-cha` | `(+46/-12)[1M]` | `arm_scpi.c` | `Samuel Holland` _firmware: arm_scpi: Support unidirectional mailbox channels_ |
|  📜  ✅  | `[aw-suspend-6.18/]` `0003-ARM-dts-sunxi-a83t-Add-SCPI-protocol` | `(+21/-0)[1M]` | `sun8i-a83t.dtsi` | `Samuel Holland` _ARM: dts: sunxi: a83t: Add SCPI protocol_ |
|  📜  ✅  | `[aw-suspend-6.18/]` `0004-ARM-dts-sunxi-h3-h5-Add-SCPI-protocol` | `(+33/-0)[3M]` | `sun8i-h3.dtsi`, `sun50i-h5.dtsi`, `sunxi-h3-h5.dtsi` | `Samuel Holland` _ARM: dts: sunxi: h3/h5: Add SCPI protocol_ |
|  📜  ✅  | `[aw-suspend-6.18/]` `0005-ARM-dts-sun8i-a83t-tbs-a711-Give-Linux-more-privileg` | `(+5/-2)[1M]` | `sun8i-a83t.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t-tbs-a711: Give Linux more privileges over SCPI_ |
|  📜  ✅  | `[aw-suspend-6.18/]` `0006-rtc-sun6i-Allow-RTC-wakeup-after-shutdown` | `(+11/-1)[1M]` | `rtc-sun6i.c` | `Samuel Holland` _rtc: sun6i: Allow RTC wakeup after shutdown_ |
|  📜  ✅  | `[axp-6.18/]` `0001-dt-bindings-axp20x-adc-allow-to-use-TS-pin-as-GPADC` | `(+5/-0)[1M]` | `x-powers,axp209-adc.yaml` | `Icenowy Zheng` _dt-bindings: axp20x-adc: allow to use TS pin as GPADC_ |
|  📜  ✅  | `[axp-6.18/]` `0002-iio-adc-axp20x_adc-allow-to-set-TS-pin-to-GPADC-mode` | `(+6/-0)[1M]` | `axp20x_adc.c` | `Icenowy Zheng` _iio: adc: axp20x_adc: allow to set TS pin to GPADC mode_ |
|  📜  ✅  | `[axp-6.18/]` `0003-power-axp20x_battery-Allow-to-set-target-voltage-to-` | `(+5/-0)[1M]` | `axp20x_battery.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _power: axp20x_battery: Allow to set target voltage to 4.35V_ |
|  📜  ✅  | `[axp-6.18/]` `0004-power-supply-axp20x_battery-Add-support-for-reportin` | `(+23/-0)[1M]` | `axp20x_battery.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _power: supply: axp20x_battery: Add support for reporting OCV_ |
|  📜  ✅  | `[axp-6.18/]` `0005-regulator-axp20x-Enable-over-temperature-protection-` | `(+7/-0)[1M]` | `axp20x-regulator.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _regulator: axp20x: Enable over-temperature protection and 16s reset function_ |
|  📜  ✅  | `[axp-6.18/]` `0006-power-supply-axp20x_battery-Setup-thermal-regulation` | `(+53/-0)[1M]` | `axp20x_battery.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _power: supply: axp20x_battery: Setup thermal regulation (experimental)_ |
|  📜  ✅  | `[axp-6.18/]` `0007-power-supply-axp20x_battery-Fix-charging-done-detect` | `(+3/-2)[1M]` | `axp20x_battery.c` | `Samuel Holland` _power: supply: axp20x_battery: Fix charging done detection_ |
|  📜  ✅  | `[axp-6.18/]` `0008-mfd-axp20x-Add-battery-IRQ-resources` | `(+36/-0)[1M]` | `axp20x.c` | `Samuel Holland` _mfd: axp20x: Add battery IRQ resources_ |
|  📜  ✅  | `[axp-6.18/]` `0009-power-supply-axp20x_battery-Send-uevents-for-status-` | `(+54/-2)[1M]` | `axp20x_battery.c` | `Ondrej Jirman` _power: supply: axp20x_battery: Send uevents for status changes_ |
|  📜  ✅  | `[axp-6.18/]` `0010-power-supply-axp20x_battery-Monitor-battery-health` | `(+56/-2)[1M]` | `axp20x_battery.c` | `Samuel Holland` _power: supply: axp20x_battery: Monitor battery health_ |
|  📜  ✅  | `[axp-6.18/]` `0011-power-supply-axp20x-usb-power-Change-Vbus-hold-volta` | `(+12/-0)[1M]` | `axp20x_usb_power.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _power: supply: axp20x-usb-power: Change Vbus hold voltage to 4.5V_ |
|  📜  ✅  | `[axp-6.18/]` `0012-power-axp803-Add-interrupts-for-low-battery-power-co` | `(+4/-0)[2M]` | `axp20x.c`, `axp20x_battery.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _power: axp803: Add interrupts for low battery power condition_ |
|  📜  ✅  | `[axp-6.18/]` `0013-power-supply-axp20x-battery-Support-POWER_SUPPLY_PRO` | `(+31/-0)[1M]` | `axp20x_battery.c` | `Ondrej Jirman` _power: supply: axp20x-battery: Support POWER_SUPPLY_PROP_CHARGE_BEHAVIOUR_ |
|  📜  ✅  | `[axp-6.18/]` `0014-power-supply-axp20x-battery-Enable-poweron-by-RTC-al` | `(+5/-0)[1M]` | `axp20x_battery.c` | `Ondrej Jirman` _power: supply: axp20x-battery: Enable poweron by RTC alarm_ |
|  📜  ✅  | `[axp-6.18/]` `0015-power-supply-axp20x-battery-Add-support-for-POWER_SU` | `(+26/-4)[1M]` | `axp20x_battery.c` | `Ondrej Jirman` _power: supply: axp20x-battery: Add support for POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN_ |
|  📜  ✅  | `[axp-6.18/]` `0016-power-supply-Add-support-for-USB_BC_ENABLED-and-USB_` | `(+4/-0)[2M]` | `power_supply_sysfs.c`, `power_supply.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _power: supply: Add support for USB_BC_ENABLED and USB_DCP_INPUT_CURRENT_LIMIT_ |
|  📜  ✅  | `[axp-6.18/]` `0017-power-supply-axp20x-usb-power-Add-missing-interrupts` | `(+11/-2)[2M]` | `axp20x_usb_power.c`, `axp20x.c` | `Ondrej Jirman` _power: supply: axp20x-usb-power: Add missing interrupts_ |
|  📜  ✅  | `[axp-6.18/]` `0018-power-supply-axp20x-battery-Improve-probe-error-repo` | `(+12/-16)[1M]` | `axp20x_battery.c` | `Ondrej Jirman` _power: supply: axp20x-battery: Improve probe error reporting_ |
|  📜  ✅  | `[besdbg-6.18/]` `0001-besdbg-Add-a-debug-driver-for-controlling-the-wifi-c` | `(+596/-0)[1M, 1A]` | `besdbg.c`, `Makefile` | `Ondrej Jirman` _besdbg: Add a debug driver for controlling the wifi chip_ |
|  📜  ✅  | `[besdbg-6.18/]` `0002-mmc-Add-pwrseq_bes-driver-for-powering-up-BES2600-on` | `(+133/-0)[1M, 1A]` | `pwrseq_bes.c`, `Makefile` | `Ondrej Jirman` _mmc: Add pwrseq_bes driver for powering up BES2600 on PineTab2_ |
|  📜  ✅  | `[bt-6.18/]` `0001-bluetooth-h5-Don-t-re-initialize-rtl8723cs-on-resume` | `(+1/-1)[1M]` | `hci_h5.c` | `Ondrej Jirman` _bluetooth: h5: Don't re-initialize rtl8723cs on resume_ |
|  📜  ✅  | `[cw1200-6.18/]` `0001-cw1200-support-loading-cw1x60-FW` | `(+42/-6)[2M]` | `fwio.c`, `hwio.h` | `Jernej Skrabec` _cw1200: support loading cw1x60 FW_ |
|  📜  ✅  | `[cw1200-6.18/]` `0002-cw1200-xr819-hacks` | `(+128/-35)[9M]` | `cw1200_sdio.c`, `sta.c`, `fwio.c`, `main.c`, `wsm.c`, `cw1200.h`, `queue.h`, `cw1200_spi.c`, `fwio.h` | `Jernej Skrabec` _cw1200: xr819 hacks_ |
|  📜  ✅  | `[cw1200-6.18/]` `0003-cw1200-use-kmalloc-allocation-instead-of-stack` | `(+126/-30)[3M]` | `hwio.h`, `hwio.c`, `bh.c` | `Jernej Skrabec` _cw1200: use kmalloc() allocation instead of stack_ |
|  📜  ✅  | `[cw1200-6.18/]` `0004-net-wireless-cw1200-Add-support-for-BES2600` | `(+1181/-14)[9M, 1A]` | `bes2600.c`, `cw1200_sdio.c`, `wsm.c`, `fwio.c`, `cw1200.h`, `main.c`, `bh.c`, `fwio.h`, `Makefile`, `wsm.h` | `Ondrej Jirman` _net: wireless: cw1200: Add support for BES2600_ |
|  📜  ✅  | `[cw1200-6.18/]` `0005-cw1200-Improve-error-reporting-from-probe` | `(+14/-8)[1M]` | `cw1200_sdio.c` | `Ondrej Jirman` _cw1200: Improve error reporting from probe_ |
|  📜  ✅  | `[cw1200-6.18/]` `0006-cw1200-Disable-automatic-module-loading-until-the-mo` | `(+1/-1)[1M]` | `cw1200_sdio.c` | `Ondrej Jirman` _cw1200: Disable automatic module loading (until the module is working)_ |
|  📜  ✅  | `[cw1200-6.18/]` `0007-cw1200-Enable-FW-loader-debug-mode` | `(+2/-0)[1M]` | `bes2600.c` | `Ondrej Jirman` _cw1200: Enable FW loader debug mode_ |
|  📜  ✅  | `[defcon-6.18/]` `0002-Defconfigs-for-all-my-devices` | `(+3941/-0)[6A]` | `orangepi_defconfig`, `pinephone_defconfig`, `pinephone_multidist_defconfig`, `tbs_a711_defconfig`, `pocketbook_touch_lux_3_defconfig` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _Defconfigs for all my devices_ |
|  📜  ✅  | `[ebaz4205-6.18/]` `0001-Add-minimal-EBAZ4205-defconfig` | `(+367/-0)[1A]` | `ebaz4205_defconfig` | `Ondrej Jirman` _Add minimal EBAZ4205 defconfig_ |
|  📜  ✅  | `[ebaz4205-6.18/]` `0002-dt-bindings-Add-Zynq-clocks` | `(+62/-0)[1M, 1A]` | `xlnx-zynq-clk.h`, `zynq-ebaz4205.dts` | `Ondrej Jirman` _dt-bindings: Add Zynq clocks_ |
|  📜  ✅  | `[ebaz4205-6.18/]` `0003-arm-xilinx-ebaz4205-Add-test-config-for-various-PL-p` | `(+74/-0)[1M]` | `zynq-ebaz4205.dts` | `Ondrej Jirman` _arm: xilinx: ebaz4205: Add test config for various PL peripherals_ |
|  📜  ✅  | `[err-6.18/]` `0001-sunxi-Use-dev_err_probe-to-handle-EPROBE_DEFER-error` | `(+25/-12)[5M]` | `phy-sun4i-usb.c`, `i2c-gpio.c`, `phy-sun6i-mipi-dphy.c`, `topology.c`, `panel-sitronix-st7703.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _sunxi: Use dev_err_probe to handle EPROBE_DEFER errors_ |
|  📜  ✅  | `[err-6.18/]` `0003-i2c-mv64xxx-Don-t-make-a-fuss-when-pinctrl-recovery-` | `(+8/-0)[1M]` | `i2c-mv64xxx.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _i2c: mv64xxx: Don't make a fuss when pinctrl recovery state is not present_ |
|  📜  ✅  | `[err-6.18/]` `0004-iio-st_sensors-Don-t-report-error-when-the-device-is` | `(+7/-0)[1M]` | `st_sensors_core.c` | `Ondrej Jirman` _iio: st_sensors: Don't report error when the device is not present on I2C bus_ |
|  📜  ✅  | `[err-6.18/]` `0005-opp-core-Avoid-confusing-error-when-no-regulator-is-` | `(+5/-0)[1M]` | `core.c` | `Ondrej Jirman` _opp: core: Avoid confusing error when no regulator is defined in DT_ |
|  📜  ✅  | `[err-6.18/]` `0006-rtc-Print-which-error-caused-RTC-read-failure` | `(+2/-1)[1M]` | `class.c` | `Ondrej Jirman` _rtc: Print which error caused RTC read failure_ |
|  📜  ✅  | `[fixes-6.18/]` `0001-ARM-dts-sun8i-a83t-Add-missing-GPU-trip-point` | `(+9/-0)[1M]` | `sun8i-a83t.dtsi` | `Ondrej Jirman` _ARM: dts: sun8i-a83t: Add missing GPU trip point_ |
|  📜  ✅  | `[fixes-6.18/]` `0002-arm64-dts-sun50i-h5-Add-missing-GPU-trip-point` | `(+9/-0)[1M]` | `sun50i-h5.dtsi` | `Ondrej Jirman` _arm64: dts: sun50i-h5: Add missing GPU trip point_ |
|  📜  ✅  | `[fixes-6.18/]` `0003-arm64-dts-allwinner-a64-Fix-LRADC-compatible` | `(+1/-1)[1M]` | `sun50i-a64.dtsi` | `Icenowy Zheng` _arm64: dts: allwinner: a64: Fix LRADC compatible_ |
|  📜  ✅  | `[fixes-6.18/]` `0005-ASoC-rockchip-Fix-doubling-of-playback-speed-after-s` | `(+7/-0)[1M]` | `rockchip_i2s.c` | `Ondrej Jirman` _ASoC: rockchip: Fix doubling of playback speed after system sleep_ |
|  📜  ✅  | `[fixes-6.18/]` `0006-usb-musb-sunxi-Avoid-enabling-host-side-code-on-SoCs` | `(+33/-7)[2M]` | `sunxi.c`, `musb_core.c` | `Ondrej Jirman` _usb: musb: sunxi: Avoid enabling host side code on SoCs where it's not used_ |
|  📜  ✅  | `[fixes-6.18/]` `0007-arm64-dts-allwinner-Enforce-consistent-MMC-numbering` | `(+18/-0)[3M]` | `sun50i-a64.dtsi`, `sun50i-h5.dtsi`, `sun50i-h6.dtsi` | `Samuel Holland` _arm64: dts: allwinner: Enforce consistent MMC numbering_ |
|  📜  ✅  | `[fixes-6.18/]` `0008-ARM-dts-sunxi-Add-aliases-for-MMC` | `(+18/-0)[3M]` | `sun5i.dtsi`, `sun8i-a83t.dtsi`, `sun8i-h3.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sunxi: Add aliases for MMC_ |
|  📜  ✅  | `[fixes-6.18/]` `0009-drm-rockchip-Fix-panic-on-reboot-when-DRM-device-fai` | `(+2/-0)[1M]` | `rockchip_drm_drv.c` | `Ondrej Jirman` _drm: rockchip: Fix panic on reboot when DRM device fails to bind_ |
|  📜  ✅  | `[fixes-6.18/]` `0011-mmc-dw-mmc-rockchip-fix-sdmmc-after-soft-reboot` | `(+12/-0)[1M]` | `dw_mmc-rockchip.c` | `Peter Geis` _mmc: dw-mmc-rockchip: fix sdmmc after soft reboot_ |
|  📜  ✅  | `[fixes-6.18/]` `0012-Revert-drm-sun4i-lvds-Invert-the-LVDS-polarity` | `(+3/-1)[1M]` | `sun4i_tcon.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _Revert "drm/sun4i: lvds: Invert the LVDS polarity"_ |
|  📜  ✅  | `[fixes-6.18/]` `0013-of-property-fw_devlink-Support-allwinner-sram-links` | `(+22/-0)[1M]` | `property.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _of: property: fw_devlink: Support allwinner,sram links_ |
|  📜  ✅  | `[fixes-6.18/]` `0014-Fix-broken-allwinner-sram-dependency-on-h616-h618` | `(+3/-2)[1M]` | `property.c` | `Steinar H. Gunderson` _Fix broken allwinner,sram dependency on h616, h618_ |
|  📜  ✅  | `[fixes-6.18/]` `0015-arm64-dts-rockchip-rk356x-Fix-PCIe-register-map-and-` | `(+1/-1)[1M]` | `rk356x-base.dtsi` | `Ondrej Jirman` _arm64: dts: rockchip: rk356x: Fix PCIe register map and ranges_ |
|  📜  ✅  | `[fixes-6.18/]` `0016-Fix-intptr_t-typedef` | `(+4/-0)[1M]` | `types.h` | `Ondrej Jirman` _Fix intptr_t typedef_ |
|  📜  ✅  | `[fixes-6.18/]` `0017-mmc-sunxi-mmc-Remove-runtime-PM` | `(+22/-14)[1M]` | `sunxi-mmc.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _mmc: sunxi-mmc: Remove runtime-PM_ |
|  📜  ✅  | `[fixes-6.18/]` `0018-pci-Workaround-ITS-timeouts-on-poweroff-reboot-on-Or` | `(+1/-1)[1M]` | `portdrv.c` | `Ondrej Jirman` _pci: Workaround ITS timeouts on poweroff/reboot on Orange Pi 5 Plus_ |
|  📜  ✅  | `[fixes-6.18/]` `0019-usb-serial-option-add-reset_resume-callback-for-WWAN` | `(+1/-0)[1M]` | `option.c` | `Thomas Thorne` _usb: serial: option: add 'reset_resume' callback for WWAN devices_ |
|  📜  ✅  | `[fixes-6.18/]` `0020-media-ov5648-Fix-call-to-pm_runtime_set_suspended` | `(+1/-1)[1M]` | `ov5648.c` | `Ondrej Jirman` _media: ov5648: Fix call to pm_runtime_set_suspended_ |
|  📜  ✅  | `[fixes-6.18/]` `0021-drm-rockchip-dw-mipi-dsi-rockchip-Fix-ISP1-PHY-initi` | `(+8/-0)[1M]` | `dw-mipi-dsi-rockchip.c` | `Ondrej Jirman` _drm: rockchip: dw-mipi-dsi-rockchip: Fix ISP1 PHY initialization_ |
|  📜  ✅  | `[fixes-6.18/]` `0022-arm64-dts-rk3399-Add-dmc_opp_table` | `(+29/-0)[1M]` | `rk3399.dtsi` | `Ondrej Jirman` _arm64: dts: rk3399: Add dmc_opp_table_ |
|  📜  ✅  | `[fixes-6.18/]` `0023-arm64-dts-rockchip-rk3399-s-Add-DMC-table` | `(+29/-0)[1M]` | `rk3399-s.dtsi` | `Ondrej Jirman` _arm64: dts: rockchip: rk3399-s: Add DMC table_ |
|  📜  ✅  | `[fixes-6.18/]` `0024-Revert-usb-dwc3-Abort-suspend-on-soft-disconnect-fai` | `(+12/-13)[2M]` | `gadget.c`, `core.c` | `Ondrej Jirman` _Revert "usb: dwc3: Abort suspend on soft disconnect failure"_ |
|  📜  ✅  | `[fusb302-6.18/]` `0001-usb-typec-fusb302-Slightly-increase-wait-time-for-BC` | `(+2/-2)[1M]` | `fusb302.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: fusb302: Slightly increase wait time for BC1.2 result_ |
|  📜  ✅  | `[fusb302-6.18/]` `0002-usb-typec-fusb302-Set-the-current-before-enabling-pu` | `(+8/-8)[1M]` | `fusb302.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: fusb302: Set the current before enabling pullups_ |
|  📜  ✅  | `[fusb302-6.18/]` `0003-usb-typec-fusb302-Extend-debugging-interface-with-dr` | `(+78/-0)[1M]` | `fusb302.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: fusb302: Extend debugging interface with driver state dumps_ |
|  📜  ✅  | `[fusb302-6.18/]` `0004-usb-typec-fusb302-Retry-reading-of-CC-pins-status-if` | `(+32/-2)[1M]` | `fusb302.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: fusb302: Retry reading of CC pins status if activity is detected_ |
|  📜  ✅  | `[fusb302-6.18/]` `0005-usb-typec-fusb302-More-useful-of-logging-status-on-i` | `(+104/-17)[1M]` | `fusb302.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: fusb302: More useful of logging status on interrupt_ |
|  📜  ✅  | `[fusb302-6.18/]` `0006-usb-typec-fusb302-Update-VBUS-state-even-if-VBUS-int` | `(+8/-6)[1M]` | `fusb302.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: fusb302: Update VBUS state even if VBUS interrupt is not triggered_ |
|  📜  ✅  | `[fusb302-6.18/]` `0007-usb-typec-fusb302-Add-OF-extcon-support` | `(+10/-0)[1M]` | `fusb302.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: fusb302: Add OF extcon support_ |
|  📜  ✅  | `[fusb302-6.18/]` `0008-usb-typec-fusb302-Fix-register-definitions` | `(+7/-9)[1M]` | `fusb302_reg.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: fusb302: Fix register definitions_ |
|  📜  ✅  | `[fusb302-6.18/]` `0009-usb-typec-fusb302-Clear-interrupts-before-we-start-t` | `(+7/-0)[1M]` | `fusb302.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: fusb302: Clear interrupts before we start toggling_ |
|  📜  ✅  | `[goodix-6.18/]` `0001-Input-goodix-Add-config-debugfs-file` | `(+18/-0)[2M]` | `goodix.c`, `goodix.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _Input: goodix: Add config debugfs file_ |
|  📜  ✅  | `[goodix-6.18/]` `0002-Input-goodix-Add-option-to-power-off-the-controller-` | `(+38/-0)[2M]` | `goodix.c`, `goodix.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _Input: goodix: Add option to power off the controller during suspend_ |
|  📜  ✅  | `[goodix-6.18/]` `0003-Input-goodix-Try-to-keep-regulator-enable-disable-ba` | `(+1/-0)[1M]` | `goodix.c` | `Ondrej Jirman` _Input: goodix: Try to keep regulator enable/disable balanced_ |
|  📜  ✅  | `[goodix-6.18/]` `0004-input-touchscreen-goodix-Respect-IRQ-flags-from-DT-w` | `(+8/-1)[2M]` | `goodix.c`, `goodix.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: touchscreen: goodix: Respect IRQ flags from DT when asked to_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0001-ASOC-sun9i-hdmi-audio-Initial-implementation` | `(+187/-0)[2M, 1A]` | `sun9i-hdmi-audio.c`, `Kconfig`, `Makefile` | `Jernej Skrabec` _ASOC: sun9i-hdmi-audio: Initial implementation_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0002-ARM-dts-sunxi-h3-h5-Add-hdmi-sound-card` | `(+15/-0)[1M]` | `sunxi-h3-h5.dtsi` | `Jernej Skrabec` _ARM: dts: sunxi: h3/h5: Add hdmi sound card_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0003-ARM-dts-sun8i-h3-Enable-hdmi-sound-card-on-boards-wi` | `(+80/-0)[10M]` | `sun8i-h3-beelink-x2.dts`, `sun8i-h3-emlid-neutis-n5h3-devboard.dts`, `sun8i-h3-nanopi-m1-plus.dts`, `sun8i-h3-nanopi-m1.dts`, `sun8i-h3-orangepi-2.dts`, `sun8i-h3-orangepi-lite.dts`, `sun8i-h3-orangepi-one.dts`, `sun8i-h3-orangepi-pc.dts`, `sun8i-h3-orangepi-zero-plus2.dts`, `sun8i-h3-rervision-dvk.dts` | `Jernej Skrabec` _ARM: dts: sun8i: h3: Enable hdmi sound card on boards with hdmi_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0004-ARM-dts-sun8i-h2-plus-bananapi-m2-zero-Enable-HDMI-a` | `(+8/-0)[1M]` | `sun8i-h2-plus-bananapi-m2-zero.dts` | `Jernej Skrabec` _ARM: dts: sun8i: h2-plus: bananapi-m2-zero: Enable HDMI audio_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0005-ARM-dts-sun8i-a83t-Add-hdmi-sound-card` | `(+15/-0)[1M]` | `sun8i-a83t.dtsi` | `Jernej Skrabec` _ARM: dts: sun8i: a83t: Add hdmi sound card_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0006-ARM-dts-sun8i-a83t-Enable-hdmi-sound-card-on-boards-` | `(+16/-0)[2M]` | `sun8i-a83t-bananapi-m3.dts`, `sun8i-a83t-cubietruck-plus.dts` | `Jernej Skrabec` _ARM: dts: sun8i: a83t: Enable hdmi sound card on boards with hdmi_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0007-ARM-dts-sun8i-r40-Add-hdmi-sound-card` | `(+15/-0)[1M]` | `sun8i-r40.dtsi` | `Jernej Skrabec` _ARM: dts: sun8i: r40: Add hdmi sound card_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0008-ARM-dts-sun8i-r40-bananapi-m2-ultra-Enable-HDMI-audi` | `(+8/-0)[1M]` | `sun8i-r40-bananapi-m2-ultra.dts` | `Jernej Skrabec` _ARM: dts: sun8i: r40: bananapi-m2-ultra: Enable HDMI audio_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0009-ARM-dts-sun8i-v40-bananapi-m2-berry-Enable-HDMI-audi` | `(+8/-0)[1M]` | `sun8i-v40-bananapi-m2-berry.dts` | `Jernej Skrabec` _ARM: dts: sun8i: v40: bananapi-m2-berry: Enable HDMI audio_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0010-arm64-dts-allwinner-h6-Add-hdmi-sound-card` | `(+16/-0)[1M]` | `sun50i-h6.dtsi` | `Jernej Skrabec` _arm64: dts: allwinner: h6: Add hdmi sound card_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0011-arm64-dts-allwinner-h6-Enable-hdmi-sound-card-on-boa` | `(+32/-0)[4M]` | `sun50i-h6-beelink-gs1.dts`, `sun50i-h6-orangepi-3.dts`, `sun50i-h6-orangepi.dtsi`, `sun50i-h6-pine-h64.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: allwinner: h6: Enable hdmi sound card on boards with hdmi_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0012-arm64-dts-allwinner-a64-Add-hdmi-sound-card` | `(+15/-0)[1M]` | `sun50i-a64.dtsi` | `Jernej Skrabec` _arm64: dts: allwinner: a64: Add hdmi sound card_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0013-arm64-dts-allwinner-a64-Enable-hdmi-sound-card-on-bo` | `(+55/-0)[7M]` | `sun50i-a64-bananapi-m64.dts`, `sun50i-a64-nanopi-a64.dts`, `sun50i-a64-orangepi-win.dts`, `sun50i-a64-pine64.dts`, `sun50i-a64-sopine-baseboard.dts`, `sun50i-a64-teres-i.dts`, `sun50i-a64-olinuxino.dts` | `Jernej Skrabec` _arm64: dts: allwinner: a64: Enable hdmi sound card on boards with hdmi_ |
|  📜  ✅  | `[hdmi-audio-6.18/]` `0014-arm64-dts-allwinner-h5-Enable-hdmi-sound-card-on-boa` | `(+32/-0)[4M]` | `sun50i-h5-emlid-neutis-n5-devboard.dts`, `sun50i-h5-orangepi-pc2.dts`, `sun50i-h5-orangepi-prime.dts`, `sun50i-h5-orangepi-zero-plus2.dts` | `Jernej Skrabec` _arm64: dts: allwinner: h5: Enable hdmi sound card on boards with hdmi_ |
|  📜  ✅  | `[husb311-6.18/]` `0001-usb-typec-husb311-Add-HUSB311-TCPI-driver` | `(+301/-0)[2M, 1A]` | `tcpci_husb311.c`, `Kconfig`, `Makefile` | `Ondrej Jirman` _usb: typec: husb311: Add HUSB311 TCPI driver_ |
|  📜  ✅  | `[imx258-6.18/]` `0001-media-i2c-imx258-Add-i2c-supply` | `(+1/-0)[1M]` | `imx258.c` | `Ondrej Jirman` _media: i2c: imx258: Add i2c supply_ |
|  📜  ✅  | `[imx258-6.18/]` `0002-media-i2c-imx258-Add-debug-register-access` | `(+48/-0)[1M]` | `imx258.c` | `Ondrej Jirman` _media: i2c: imx258: Add debug register access_ |
|  📜  ✅  | `[imx258-6.18/]` `0003-media-imx258-Add-reset-gpio` | `(+15/-0)[1M]` | `imx258.c` | `Ondrej Jirman` _media: imx258: Add reset gpio_ |
|  📜  ✅  | `[imx258-6.18/]` `0004-media-imx258-Drop-interface-speed-to-1224-mbps` | `(+8/-8)[1M]` | `imx258.c` | `Ondrej Jirman` _media: imx258: Drop interface speed to 1224 mbps_ |
|  📜  ✅  | `[modem-6.18/]` `0001-misc-modem-power-Power-manager-for-modems` | `(+1998/-0)[2M, 1A]` | `modem-power.c`, `Kconfig`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _misc: modem-power: Power manager for modems_ |
|  📜  ✅  | `[opi3-eth-6.18/]` `0001-net-stmmac-sun8i-Use-devm_regulator_get-for-PHY-regu` | `(+10/-17)[1M]` | `dwmac-sun8i.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _net: stmmac: sun8i: Use devm_regulator_get for PHY regulator_ |
|  📜  ✅  | `[opi3-eth-6.18/]` `0002-net-stmmac-sun8i-Rename-PHY-regulator-variable-to-re` | `(+9/-9)[1M]` | `dwmac-sun8i.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _net: stmmac: sun8i: Rename PHY regulator variable to regulator_phy_ |
|  📜  ✅  | `[opi3-eth-6.18/]` `0003-net-stmmac-sun8i-Add-support-for-enabling-a-regulato` | `(+19/-1)[1M]` | `dwmac-sun8i.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _net: stmmac: sun8i: Add support for enabling a regulator for PHY I/O pins_ |
|  📜  ✅  | `[opi3-eth-6.18/]` `0004-arm64-dts-allwinner-orange-pi-3-Enable-ethernet` | `(+40/-0)[1M]` | `sun50i-h6-orangepi-3.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: allwinner: orange-pi-3: Enable ethernet_ |
|  📜  ✅  | `[ov5640-6.18/]` `0001-media-ov5640-Experiment-Try-to-disable-denoising-sha` | `(+17/-0)[1M]` | `ov5640.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _media: ov5640: [Experiment] Try to disable denoising/sharpening_ |
|  📜  ✅  | `[ov5640-6.18/]` `0002-media-ov5640-Sleep-after-poweroff-to-ensure-next-pow` | `(+1/-0)[1M]` | `ov5640.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _media: ov5640: Sleep after poweroff to ensure next poweron is not too early_ |
|  📜  ✅  | `[ov5640-6.18/]` `0003-media-ov5640-Don-t-powerup-the-sensor-during-driver-` | `(+12/-42)[1M]` | `ov5640.c` | `Ondrej Jirman` _media: ov5640: Don't powerup the sensor during driver probe_ |
|  📜  ✅  | `[ov5640-6.18/]` `0004-media-ov5640-set-default-ae-target-lower` | `(+1/-1)[1M]` | `ov5640.c` | `Martijn Braam` _media: ov5640: set default ae target lower_ |
|  📜  ✅  | `[ov5640-6.18/]` `0005-media-ov5640-Improve-error-reporting` | `(+6/-2)[1M]` | `ov5640.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _media: ov5640: Improve error reporting_ |
|  📜  ✅  | `[ov5640-6.18/]` `0006-media-ov5640-Implement-autofocus` | `(+279/-0)[1M]` | `ov5640.c` | `Ondrej Jirman` _media: ov5640: Implement autofocus_ |
|  📜  ✅  | `[ov5640-6.18/]` `0007-media-ov5640-Improve-firmware-load-time` | `(+71/-26)[1M]` | `ov5640.c` | `Benjamin Schaaf` _media: ov5640: Improve firmware load time_ |
|  📜  ✅  | `[ov5640-6.18/]` `0008-media-ov5640-Fix-focus-commands-blocking-until-compl` | `(+18/-49)[1M]` | `ov5640.c` | `Benjamin Schaaf` _media: ov5640: Fix focus commands blocking until complete_ |
|  📜  ✅  | `[ov5640-6.18/]` `0009-media-ov5640-Add-read-only-property-for-vblank` | `(+1/-0)[1M]` | `ov5640.c` | `Adam Pigg` _media: ov5640: Add read-only property for vblank_ |
|  📜  ✅  | `[ov5640-6.18/]` `0010-media-ov5640-use-pm_runtime_force_suspend-resume-for` | `(+2/-0)[1M]` | `ov5640.c` | `Andrey Skvortsov` _media: ov5640: use pm_runtime_force_suspend/resume for system suspend_ |
|  📜  ✅  | `[pb-6.18/]` `0001-Revert-Input-cyttsp4-remove-driver` | `(+3067/-56)[4M, 6A]` | `cyttsp4_core.c`, `cyttsp4_core.h`, `cyttsp4_spi.c`, `cyttsp_i2c_common.c`, `cyttsp4_i2c.c`, `cyttsp4.h`, `cyttsp_i2c.c`, `Kconfig`, `Makefile`, `cyttsp_core.h` | `Ondrej Jirman` _Revert "Input: cyttsp4 - remove driver"_ |
|  📜  ✅  | `[pb-6.18/]` `0002-input-cyttsp4-Port-to-6.16` | `(+1/-1)[1M]` | `cyttsp4_core.c` | `Ondrej Jirman` _input: cyttsp4: Port to 6.16_ |
|  📜  ✅  | `[pb-6.18/]` `0003-input-cyttsp4-De-obfuscate-platform-data-for-keys` | `(+9/-25)[2M]` | `cyttsp4_core.c`, `cyttsp4.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: De-obfuscate platform data for keys_ |
|  📜  ✅  | `[pb-6.18/]` `0004-input-cyttsp4-Remove-useless-indirection-with-driver` | `(+128/-149)[3M]` | `cyttsp4_core.c`, `cyttsp4.h`, `cyttsp4_core.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: Remove useless indirection with driver/platform data_ |
|  📜  ✅  | `[pb-6.18/]` `0005-input-cyttsp4-Remove-unused-enable_vkeys` | `(+0/-1)[1M]` | `cyttsp4.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: Remove unused enable_vkeys_ |
|  📜  ✅  | `[pb-6.18/]` `0006-input-cyttsp4-De-obfuscate-MT-signals-setup-platform` | `(+66/-89)[3M]` | `cyttsp4_core.c`, `cyttsp4.h`, `cyttsp4_core.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: De-obfuscate MT signals setup/platform data_ |
|  📜  ✅  | `[pb-6.18/]` `0007-input-cyttsp4-Clear-the-ids-buffer-in-a-saner-way` | `(+1/-2)[1M]` | `cyttsp4_core.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: Clear the ids buffer in a saner way_ |
|  📜  ✅  | `[pb-6.18/]` `0008-input-cyttsp4-ENOSYS-error-is-ok-when-powering-up` | `(+2/-1)[1M]` | `cyttsp4_core.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: ENOSYS error is ok when powering up_ |
|  📜  ✅  | `[pb-6.18/]` `0009-input-cyttsp4-Faster-recovery-from-failed-wakeup-HAC` | `(+1/-1)[1M]` | `cyttsp4_core.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: Faster recovery from failed wakeup (HACK)_ |
|  📜  ✅  | `[pb-6.18/]` `0010-input-cyttsp4-Use-i2c-spi-names-directly-in-the-driv` | `(+3/-5)[3M]` | `cyttsp4_i2c.c`, `cyttsp4_spi.c`, `cyttsp4.h` | `Ondrej Jirman` _input: cyttsp4: Use i2c/spi names directly in the driver_ |
|  📜  ✅  | `[pb-6.18/]` `0011-input-cyttsp4-Port-the-driver-to-use-device-properti` | `(+151/-189)[2M, 1D]` | `cyttsp4_core.c`, `cyttsp4.h`, `cyttsp4_core.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: Port the driver to use device properties_ |
|  📜  ✅  | `[pb-6.18/]` `0012-input-cyttsp4-Restart-on-wakeup-wakeup-by-I2C-read-d` | `(+20/-10)[1M]` | `cyttsp4_core.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: Restart on wakeup (wakeup by I2C read doesn't work)_ |
|  📜  ✅  | `[pb-6.18/]` `0013-input-cyttsp4-Fix-warnings` | `(+3/-1)[1M]` | `cyttsp4_core.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: Fix warnings_ |
|  📜  ✅  | `[pb-6.18/]` `0014-input-cyttsp4-Make-the-driver-not-hog-the-system-s-w` | `(+16/-7)[2M]` | `cyttsp4_core.c`, `cyttsp4_core.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _input: cyttsp4: Make the driver not hog the system's workqueue_ |
|  📜  ✅  | `[pb-6.18/]` `0015-input-cyttsp4-Fix-probe-oops` | `(+3/-0)[1M]` | `cyttsp4_core.c` | `Ondrej Jirman` _input: cyttsp4: Fix probe oops_ |
|  📜  ✅  | `[pb-6.18/]` `0016-input-cyttsp4-Fix-compile-issue` | `(+1/-1)[1M]` | `cyttsp4_core.c` | `Ondrej Jirman` _input: cyttsp4: Fix compile issue_ |
|  📜  ✅  | `[pb-6.18/]` `0017-video-fbdev-eInk-display-driver-for-A13-based-Pocket` | `(+1229/-0)[2M, 3A]` | `sun5i-eink.c`, `sun5i-eink-neon.c`, `Kconfig`, `sun5i-eink.h`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _video: fbdev: eInk display driver for A13 based PocketBooks_ |
|  📜  ✅  | `[pb-6.18/]` `0018-regulator-Add-simple-driver-for-enabling-a-regulator` | `(+145/-0)[2M, 1A]` | `userspace-consumer-of.c`, `Kconfig`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _regulator: Add simple driver for enabling a regulator from userspace_ |
|  📜  ✅  | `[pb-6.18/]` `0019-regulator-tp65185x-Add-tp65185x-eInk-panel-regulator` | `(+437/-0)[2M, 1A]` | `tp65185x.c`, `Kconfig`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _regulator: tp65185x: Add tp65185x eInk panel regulator driver_ |
|  📜  ✅  | `[pb-6.18/]` `0020-regulator-tp65185-Add-hwmon-device-for-reading-tempe` | `(+127/-7)[1M]` | `tp65185x.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _regulator: tp65185: Add hwmon device for reading temperature_ |
|  📜  ✅  | `[pb-6.18/]` `0021-iio-adc-sun4i-gpadc-iio-Allow-to-use-sun5i-a13-gpadc` | `(+8/-1)[3M]` | `sun5i.dtsi`, `sun4i-gpadc-iio.c`, `sun4i-gpadc.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _iio: adc: sun4i-gpadc-iio: Allow to use sun5i-a13-gpadc-iio from DT_ |
|  📜  ✅  | `[pb-6.18/]` `0022-mtd-spi-nor-Add-vdd-regulator-support` | `(+7/-0)[1M]` | `core.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _mtd: spi-nor: Add vdd regulator support_ |
|  📜  ✅  | `[pb-6.18/]` `0023-ARM-dts-sun5i-Add-soc-handle` | `(+1/-1)[1M]` | `sun5i.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun5i: Add soc handle_ |
|  📜  ✅  | `[pb-6.18/]` `0024-ARM-dts-sun5i-Add-PocketBook-Touch-Lux-3-display-ctp` | `(+103/-2)[1M]` | `sun5i-a13-pocketbook-touch-lux-3.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun5i: Add PocketBook Touch Lux 3 display/ctp support_ |
|  📜  ✅  | `[pb-6.18/]` `0025-ARM-dts-sun5i-a13-pocketbook-touch-lux-3-Add-RTC-clo` | `(+1/-0)[1M]` | `sun5i-a13-pocketbook-touch-lux-3.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun5i-a13-pocketbook-touch-lux-3: Add RTC clock-cells_ |
|  📜  ✅  | `[pinetab-6.18/]` `0001-arm64-dts-allwinner-a64-pinetab-add-front-camera` | `(+44/-6)[1M]` | `sun50i-a64-pinetab.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: allwinner: a64: pinetab: add front camera_ |
|  📜  ✅  | `[pinetab-6.18/]` `0002-arm64-allwinner-dts-a64-enable-K101-IM2BYL02-panel-f` | `(+3/-5)[1M]` | `sun50i-a64-pinetab.dts` | `Icenowy Zheng` _arm64: allwinner: dts: a64: enable K101-IM2BYL02 panel for PineTab_ |
|  📜  ✅  | `[pinetab-6.18/]` `0003-arm64-dts-sun50i-a64-pinetab-Name-sound-card-PineTab` | `(+1/-0)[1M]` | `sun50i-a64-pinetab.dts` | `Ondrej Jirman` _arm64: dts: sun50i-a64-pinetab: Name sound card PineTab_ |
|  📜  ✅  | `[pinetab-6.18/]` `0004-arm64-dts-sun50i-a64-pinetab-Add-accelerometer` | `(+9/-1)[1M]` | `sun50i-a64-pinetab.dts` | `Ondrej Jirman` _arm64: dts: sun50i-a64-pinetab: Add accelerometer_ |
|  📜  ✅  | `[pinetab-6.18/]` `0005-arm64-dts-sun50i-a64-pinetab-enable-RTL8723CS-blueto` | `(+14/-0)[1M]` | `sun50i-a64-pinetab.dts` | `Icenowy Zheng` _arm64: dts: sun50i-a64-pinetab: enable RTL8723CS bluetooth_ |
|  📜  ✅  | `[pp-6.18/]` `0001-arm64-dts-sun50i-a64-pinephone-Add-front-back-camera` | `(+89/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Add front/back cameras_ |
|  📜  ✅  | `[pp-6.18/]` `0002-arm64-dts-sun50i-a64-pinephone-Add-Type-C-support-fo` | `(+299/-1)[4M]` | `sun50i-a64-pinephone-1.0.dts`, `sun50i-a64-pinephone-1.1.dts`, `sun50i-a64-pinephone.dtsi`, `sun50i-a64-pinephone-1.2.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Add Type-C support for all PP variants 1.0-1.2_ |
|  📜  ✅  | `[pp-6.18/]` `0003-arm64-dts-sun50i-a64-pinephone-Add-modem-power-manag` | `(+68/-0)[3M]` | `sun50i-a64-pinephone-1.1.dts`, `sun50i-a64-pinephone-1.2.dts`, `sun50i-a64-pinephone-1.0.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Add modem power manager_ |
|  📜  ✅  | `[pp-6.18/]` `0004-arm64-dts-sun50i-a64-pinephone-Fix-BH-modem-manager-` | `(+2/-2)[1M]` | `sun50i-a64-pinephone-1.1.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Fix BH modem manager behavior_ |
|  📜  ✅  | `[pp-6.18/]` `0005-arm64-dts-sun50i-a64-pinephone-Add-detailed-OCV-to-c` | `(+151/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Add detailed OCV to capactiy conversion table_ |
|  📜  ✅  | `[pp-6.18/]` `0006-arm64-dts-sun50i-a64-pinephone-Shorten-post-power-on` | `(+3/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Shorten post-power-on-delay on mmcs_ |
|  📜  ✅  | `[pp-6.18/]` `0007-arm64-dts-sun50i-a64-pinephone-Add-support-for-Bluet` | `(+1/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `Samuel Holland` _arm64: dts: sun50i-a64-pinephone: Add support for Bluetooth audio_ |
|  📜  ✅  | `[pp-6.18/]` `0008-arm64-dts-sun50i-a64-pinephone-Enable-internal-HMIC-` | `(+4/-0)[1M]` | `sun50i-a64-pinephone-1.0.dts` | `Samuel Holland` _arm64: dts: sun50i-a64-pinephone: Enable internal HMIC bias_ |
|  📜  ✅  | `[pp-6.18/]` `0009-arm64-dts-sun50i-a64-pinephone-Add-support-for-modem` | `(+24/-1)[1M]` | `sun50i-a64-pinephone.dtsi` | `Samuel Holland` _arm64: dts: sun50i-a64-pinephone: Add support for modem audio_ |
|  📜  ✅  | `[pp-6.18/]` `0010-arm64-dts-sun50i-a64-pinephone-Bump-I2C-frequency-to` | `(+2/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Bump I2C frequency to 400kHz_ |
|  📜  ✅  | `[pp-6.18/]` `0011-arm64-dts-sun50i-a64-pinephone-Add-interrupt-pin-for` | `(+2/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Add interrupt pin for WiFi_ |
|  📜  ✅  | `[pp-6.18/]` `0012-arm64-dts-sun50i-a64-pinephone-Power-off-the-touch-c` | `(+1/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Power off the touch controller in sleep_ |
|  📜  ✅  | `[pp-6.18/]` `0013-arm64-dts-sun50i-a64-pinephone-Don-t-make-lradc-keys` | `(+1/-1)[1M]` | `sun50i-a64-pinephone.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Don't make lradc keys a wakeup source_ |
|  📜  ✅  | `[pp-6.18/]` `0014-arm64-dts-sun50i-a64-pinephone-Set-minimum-backlight` | `(+2/-31)[2M]` | `sun50i-a64-pinephone-1.2.dts`, `sun50i-a64-pinephone-1.1.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Set minimum backlight duty cycle to 10%_ |
|  📜  ✅  | `[pp-6.18/]` `0015-arm64-dts-sun50i-a64-pinephone-Add-supply-for-i2c-bu` | `(+3/-0)[3M]` | `sun50i-a64-pinephone-1.0.dts`, `sun50i-a64-pinephone-1.1.dts`, `sun50i-a64-pinephone-1.2.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Add supply for i2c bus to anx7688_ |
|  📜  ✅  | `[pp-6.18/]` `0016-arm64-dts-sun50i-a64-pinephone-Workaround-broken-HDM` | `(+15/-3)[3M]` | `sun50i-a64-pinephone-1.0.dts`, `sun50i-a64-pinephone-1.1.dts`, `sun50i-a64-pinephone-1.2.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Workaround broken HDMI HPD signal_ |
|  📜  ✅  | `[pp-6.18/]` `0017-arm64-dts-sun50i-a64-pinephone-Add-support-for-Pinep` | `(+136/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Add support for Pinephone keyboard_ |
|  📜  ✅  | `[pp-6.18/]` `0018-arm64-dts-sun50i-a64-pinephone-Enable-Pinephone-Keyb` | `(+9/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `Ondrej Jirman` _arm64: dts: sun50i-a64-pinephone: Enable Pinephone Keyboard power manager_ |
|  📜  ✅  | `[pp-6.18/]` `0020-arm64-dts-sun50i-a64-pinephone-Add-power-supply-to-s` | `(+1/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `Ondrej Jirman` _arm64: dts: sun50i-a64-pinephone: Add power supply to stk3311_ |
|  📜  ✅  | `[pp-6.18/]` `0021-arm64-dts-sun50i-a64-pinephone-Add-reboot-mode-drive` | `(+37/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64-pinephone: Add reboot mode driver_ |
|  📜  ✅  | `[pp-6.18/]` `0022-arm64-dts-sun50i-a64-pinephone-Use-newer-jack-detect` | `(+2/-1)[1M]` | `sun50i-a64-pinephone.dtsi` | `Ondrej Jirman` _arm64: dts: sun50i-a64-pinephone: Use newer jack detection implementaion_ |
|  📜  ✅  | `[pp-6.18/]` `0023-arm64-dts-sun50i-Define-orientation-and-rotation-for` | `(+3/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `Arnav Singh` _arm64: dts: sun50i: Define orientation and rotation for PinePhone rear camera_ |
|  📜  ✅  | `[pp-6.18/]` `0024-arm64-dts-sun50i-Define-orientation-and-rotation-for` | `(+3/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `Arnav Singh` _arm64: dts: sun50i: Define orientation and rotation for PinePhone front camera_ |
|  📜  ✅  | `[pp-6.18/]` `0025-arm64-dts-sun50-a64-pinephone-Define-jack-pins-in-DT` | `(+4/-0)[1M]` | `sun50i-a64-pinephone.dtsi` | `Ondrej Jirman` _arm64: dts: sun50-a64-pinephone: Define jack pins in DT_ |
|  📜  ✅  | `[ppkb-6.18/]` `0001-power-supply-ip5xxx-Report-remaining-battery-capacit` | `(+43/-0)[1M]` | `ip5xxx_power.c` | `Ondrej Jirman` _power: supply: ip5xxx: Report remaining battery capacity_ |
|  📜  ✅  | `[ppkb-6.18/]` `0002-power-supply-ip5xxx-Modify-initial-configuration` | `(+17/-6)[1M]` | `ip5xxx_power.c` | `Ondrej Jirman` _power: supply: ip5xxx: Modify initial configuration_ |
|  📜  ✅  | `[ppkb-6.18/]` `0003-power-supply-ip5xxx-Add-boost-status-property` | `(+16/-1)[1M]` | `ip5xxx_power.c` | `Ondrej Jirman` _power: supply: ip5xxx: Add boost status property_ |
|  📜  ✅  | `[ppkb-6.18/]` `0004-power-supply-ip5xxx-Add-ip5xxx-usb-supply` | `(+49/-0)[1M]` | `ip5xxx_power.c` | `Ondrej Jirman` _power: supply: ip5xxx: Add ip5xxx-usb supply_ |
|  📜  ✅  | `[ppkb-6.18/]` `0005-power-supply-ip5xxx-Add-support-for-POWER_SUPPLY_PRO` | `(+30/-0)[1M]` | `ip5xxx_power.c` | `Ondrej Jirman` _power: supply: ip5xxx: Add support for POWER_SUPPLY_PROP_CHARGE_BEHAVIOUR_ |
|  📜  ✅  | `[ppkb-6.18/]` `0006-power-supply-ip5xxx-Add-support-for-POWER_SUPPLY_PRO` | `(+10/-0)[1M]` | `ip5xxx_power.c` | `Ondrej Jirman` _power: supply: ip5xxx: Add support for POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN_ |
|  📜  ✅  | `[ppkb-6.18/]` `0007-input-pinephone-keyboard-Allow-disabling-the-keyboar` | `(+7/-0)[1M]` | `pinephone-keyboard.c` | `Ondrej Jirman` _input: pinephone-keyboard: Allow disabling the keyboard input_ |
|  📜  ✅  | `[ppkb-6.18/]` `0008-input-pinephone-keyboard-Allow-to-disable-Fn-layer-p` | `(+12/-0)[1M]` | `pinephone-keyboard.c` | `Ondrej Jirman` _input: pinephone-keyboard: Allow to disable Fn layer processing_ |
|  📜  ✅  | `[ppkb-6.18/]` `0009-input-pinephone-keyboard-Don-t-print-error-when-the-` | `(+5/-0)[1M]` | `pinephone-keyboard.c` | `Ondrej Jirman` _input: pinephone-keyboard: Don't print error when the keyboard is not connected_ |
|  📜  ✅  | `[ppkb-6.18/]` `0010-input-pinephone-keyboard-Wait-a-bit-after-enabling-v` | `(+2/-0)[1M]` | `pinephone-keyboard.c` | `Ondrej Jirman` _input: pinephone-keyboard: Wait a bit after enabling vbus_ |
|  📜  ✅  | `[ppkb-6.18/]` `0011-misc-ppkb-manager-Pinephone-Keyboard-power-manager` | `(+951/-0)[2M, 1A]` | `ppkb-manager.c`, `Kconfig`, `Makefile` | `Ondrej Jirman` _misc: ppkb-manager: Pinephone Keyboard power manager_ |
|  📜  ✅  | `[ppkb-6.18/]` `0012-misc-ppkb-manager-Remove-BLOCKED-flag` | `(+0/-8)[1M]` | `ppkb-manager.c` | `Ondrej Jirman` _misc: ppkb-manager: Remove BLOCKED flag_ |
|  📜  ✅  | `[ppkb-6.18/]` `0013-misc-ppkb-manager-Disable-ppkb-manager-by-default-ca` | `(+2/-1)[1M]` | `ppkb-manager.c` | `Ondrej Jirman` _misc: ppkb-manager: Disable ppkb-manager by default (can be enabled at runtime)_ |
|  📜  ✅  | `[ppkb-6.18/]` `0014-misc-ppkb-manager-Show-read-write-error-codes` | `(+3/-3)[1M]` | `ppkb-manager.c` | `Ondrej Jirman` _misc: ppkb-manager: Show read/write error codes_ |
|  📜  ✅  | `[ppkb-6.18/]` `0015-misc-ppkb-manager-Disable-debug-mode` | `(+1/-1)[1M]` | `ppkb-manager.c` | `Ondrej Jirman` _misc: ppkb-manager: Disable debug mode_ |
|  📜  ✅  | `[ppkb-6.18/]` `0016-ip5xxx-fix-POWER_SUPPLY_PROP_CHARGE_BEHAVIOUR` | `(+4/-5)[1M]` | `ip5xxx_power.c` | `Ondrej Jirman` _ip5xxx: fix POWER_SUPPLY_PROP_CHARGE_BEHAVIOUR_ |
|  📜  ✅  | `[private-6.18/]` `0001-Make-microbuttons-on-Orange-Pi-PC-and-PC-2-work-as-p` | `(+2/-2)[2M]` | `sun8i-h3-orangepi-one.dts`, `sun50i-h5-orangepi-pc2.dts` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _Make microbuttons on Orange Pi PC and PC 2 work as power off buttons_ |
|  📜  ✅  | `[private-6.18/]` `0003-ARM-dts-sun8i-h3-orange-pi-one-Enable-all-gpio-heade` | `(+6/-3)[1M]` | `sun8i-h3-orangepi-one.dts` | `Ondrej Jirman` _ARM: dts: sun8i-h3-orange-pi-one: Enable all gpio header UARTs_ |
|  📜  ✅  | `[private-6.18/]` `0004-mtd-spi-nor-Add-Alliance-memory-support` | `(+27/-0)[3M, 1A]` | `alliance.c`, `Makefile`, `core.c`, `core.h` | `Ondrej Jirman` _mtd: spi-nor: Add Alliance memory support_ |
|  📜  ✅  | `[rp64-6.18/]` `0001-arm64-dts-rk3399-rockpro64-Add-DMC-nodes` | `(+33/-0)[1M]` | `rk3399-rockpro64.dtsi` | `Ondrej Jirman` _arm64: dts: rk3399-rockpro64: Add DMC nodes_ |
|  📜  ✅  | `[rp64-6.18/]` `0002-arm64-dts-rk3399-rockpro64-Add-Type-C-OTG-Alt-DP-sup` | `(+99/-2)[1M]` | `rk3399-rockpro64.dtsi` | `Ondrej Jirman` _arm64: dts: rk3399-rockpro64: Add Type-C OTG/Alt-DP support_ |
|  📜  ✅  | `[rt5640-6.18/]` `0001-ASoC-codecs-rt5640-Fix-output-mixer-input-channel-li` | `(+13/-17)[2M]` | `rt5640.h`, `rt5640.c` | `Ondrej Jirman` _ASoC: codecs: rt5640: Fix output mixer input channel list_ |
|  📜  ✅  | `[rt5640-6.18/]` `0002-ASoC-codecs-rt5640-Fix-hpout-restore-when-lout-is-en` | `(+2/-1)[1M]` | `rt5640.c` | `Ondrej Jirman` _ASoC: codecs: rt5640: Fix hpout restore when lout is enabled_ |
|  📜  ✅  | `[rt5640-6.18/]` `0003-ASoC-codecs-rt5640-Resolve-failure-to-set-DMIC-clock` | `(+3/-0)[1M]` | `rt5640.c` | `Ondrej Jirman` _ASoC: codecs: rt5640: Resolve failure to set DMIC clock after playback_ |
|  📜  ✅  | `[rt5640-6.18/]` `0004-ASoC-codecs-rt5640-Add-input-mixer-input-volume-cont` | `(+14/-0)[1M]` | `rt5640.c` | `Ondrej Jirman` _ASoC: codecs: rt5640: Add input mixer input volume controls_ |
|  📜  ✅  | `[rt5640-6.18/]` `0005-ASoC-codecs-rt5640-Allow-to-control-single-ended-dif` | `(+4/-0)[1M]` | `rt5640.c` | `Ondrej Jirman` _ASoC: codecs: rt5640: Allow to control single-ended/differential mode_ |
|  📜  ✅  | `[rt5640-6.18/]` `0006-ASoC-codecs-rt5640-Keep-the-codec-enabled-when-idle` | `(+2/-0)[1M]` | `rt5640.c` | `Ondrej Jirman` _ASoC: codecs: rt5640: Keep the codec enabled when idle_ |
|  📜  ✅  | `[rt5640-6.18/]` `0007-ASoC-codecs-rt5640-Add-support-for-power-supplies` | `(+16/-0)[1M]` | `rt5640.c` | `Ondrej Jirman` _ASoC: codecs: rt5640: Add support for power supplies_ |
|  📜  ✅  | `[rtw88-6.18/]` `0001-Implement-adaptivity-functions` | `(+53/-2)[2M]` | `rtw8703b.c`, `rtw8703b.h` | `Fiona Klute` _Implement adaptivity functions_ |
|  📜  ✅  | `[rtw88-6.18/]` `0002-Implement-CFO-tracking` | `(+150/-3)[4M]` | `rtw8703b.c`, `rtw8703b.h`, `main.h`, `rtw8723x.h` | `Fiona Klute` _Implement CFO tracking_ |
|  📜  ✅  | `[speed-6.18/]` `0001-arm64-dts-sun50i-a64-Set-fifo-size-for-uarts` | `(+5/-0)[1M]` | `sun50i-a64.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: dts: sun50i-a64: Set fifo-size for uarts_ |
|  📜  ✅  | `[speed-6.18/]` `0002-ARM-dts-sun8i-a83t-Set-fifo-size-for-uarts` | `(+5/-0)[1M]` | `sun8i-a83t.dtsi` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _ARM: dts: sun8i-a83t: Set fifo-size for uarts_ |
|  📜  ✅  | `[speed-6.18/]` `0003-Mark-some-slow-drivers-for-async-probe-with-PROBE_PR` | `(+2/-0)[2M]` | `bma180.c`, `i2c.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _Mark some slow drivers for async probe with PROBE_PREFER_ASYNCHRONOUS_ |
|  📜  ✅  | `[speed-6.18/]` `0004-arm64-xor-Select-32regs-without-benchmark-to-speed-u` | `(+4/-10)[1M]` | `xor.h` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _arm64: xor: Select 32regs without benchmark to speed up boot_ |
|  📜  ✅  | `[stk3310-6.18/]` `0001-iio-light-stk3310-Implement-vdd-supply-and-power-it-` | `(+42/-2)[1M]` | `stk3310.c` | `Ondrej Jirman` _iio: light: stk3310: Implement vdd supply and power it off during suspend_ |
|  📜  ✅  | `[stk3310-6.18/]` `0002-iio-light-stk3310-Add-support-for-I2C-regulator` | `(+25/-1)[1M]` | `stk3310.c` | `Ondrej Jirman` _iio: light: stk3310: Add support for I2C regulator_ |
|  📜  ✅  | `[stk3310-6.18/]` `0003-iio-stk3310-Fix-regulator-disable-enable-order` | `(+11/-10)[1M]` | `stk3310.c` | `Ondrej Jirman` _iio: stk3310: Fix regulator disable/enable order_ |
|  📜  ✅  | `[sun6i-csi-6.18/]` `0001-media-sun6i-csi-capture-Use-subdev-operation-to-acce` | `(+17/-26)[3M]` | `sun6i_csi_capture.c`, `sun6i_csi_bridge.c`, `sun6i_csi_bridge.h` | `Laurent Pinchart` _media: sun6i-csi: capture: Use subdev operation to access bridge format_ |
|  📜  ✅  | `[sun6i-csi-6.18/]` `0002-media-sun6i-csi-subdev-Use-subdev-active-state-to-st` | `(+73/-78)[2M]` | `sun6i_csi_bridge.c`, `sun6i_csi_bridge.h` | `Ondrej Jirman` _media: sun6i-csi: subdev: Use subdev active state to store active format_ |
|  📜  ✅  | `[sun6i-csi-6.18/]` `0003-media-sun6i-csi-merge-sun6i_csi_formats-and-sun6i_cs` | `(+102/-115)[2M]` | `sun6i_csi_capture.c`, `sun6i_csi_capture.h` | `Adam Pigg` _media: sun6i-csi: merge sun6i_csi_formats and sun6i_csi_formats_match_ |
|  📜  ✅  | `[sun6i-csi-6.18/]` `0004-media-sun6i-csi-add-V4L2_CAP_IO_MC-capability` | `(+34/-3)[1M]` | `sun6i_csi_capture.c` | `Adam Pigg` _media: sun6i-csi: add V4L2_CAP_IO_MC capability_ |
|  📜  ✅  | `[sun6i-csi-6.18/]` `0005-media-sun6i-csi-implement-vidioc_enum_framesizes` | `(+24/-0)[1M]` | `sun6i_csi_capture.c` | `Adam Pigg` _media: sun6i-csi: implement vidioc_enum_framesizes_ |
|  📜  ✅  | `[sun6i-csi-6.18/]` `0006-media-sun6i-csi-Add-multicamera-support-for-parallel` | `(+33/-22)[2M]` | `sun6i_csi_bridge.c`, `sun6i_csi_bridge.h` | `Ondrej Jirman` _media: sun6i-csi: Add multicamera support for parallel bus_ |
|  📜  ✅  | `[tcpm-6.18/]` `0001-Revert-usb-typec-tcpm-unregister-existing-source-cap` | `(+1/-6)[1M]` | `tcpm.c` | `Ondrej Jirman` _Revert "usb: typec: tcpm: unregister existing source caps before re-registration"_ |
|  📜  ✅  | `[tcpm-6.18/]` `0002-usb-typec-altmodes-displayport-Respect-DP_CAP_RECEPT` | `(+27/-5)[1M]` | `displayport.c` | `Ondrej Jirman` _usb: typec: altmodes: displayport: Respect DP_CAP_RECEPTACLE bit_ |
|  📜  ✅  | `[tcpm-6.18/]` `0003-usb-typec-tcpm-Unregister-altmodes-before-registerin` | `(+3/-0)[1M]` | `tcpm.c` | `Ondrej Jirman` _usb: typec: tcpm: Unregister altmodes before registering new ones_ |
|  📜  ✅  | `[tcpm-6.18/]` `0004-usb-typec-tcpm-Fix-PD-devices-capabilities-registrat` | `(+29/-8)[1M]` | `tcpm.c` | `Ondrej Jirman` _usb: typec: tcpm: Fix PD devices/capabilities registration_ |
|  📜  ✅  | `[tcpm-6.18/]` `0005-usb-typec-tcpm-Improve-logs` | `(+11/-4)[1M]` | `tcpm.c` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: tcpm: Improve logs_ |
|  📜  ✅  | `[typec-extcon-6.18/]` `0001-usb-typec-typec-extcon-Add-typec-extcon-bridge-drive` | `(+338/-0)[2M, 1A]` | `typec-extcon.c`, `Kconfig`, `Makefile` | `=?UTF-8?q?Ond=C5=99ej=20Jirman?=` _usb: typec: typec-extcon: Add typec -> extcon bridge driver_ |
|  📜  ✅  | `[typec-extcon-6.18/]` `0002-usb-typec-typec-extcon-Enable-debugging-for-now` | `(+1/-0)[1M]` | `typec-extcon.c` | `Ondrej Jirman` _usb: typec: typec-extcon: Enable debugging for now_ |
|  📜  ✅  | `[typec-extcon-6.18/]` `0003-usb-typec-typec-extcon-Allow-to-force-reset-on-each-` | `(+15/-0)[1M]` | `typec-extcon.c` | `Ondrej Jirman` _usb: typec: typec-extcon: Allow to force reset on each mux change_ |
|  📜  ✅  | `[patches.drm/]` `0001-drm-sun4i-mixer-Fix-up-DE33-channel-macros` | `(+4/-1)[1M]` | `sun8i_mixer.h` | `Jernej Skrabec` _drm/sun4i: mixer: Fix up DE33 channel macros_ |
|  📜  ✅  | `[patches.drm/]` `0002-drm-sun4i-mixer-Remove-ccsc-cfg-for-DE3` | `(+0/-2)[1M]` | `sun8i_mixer.c` | `Jernej Skrabec` _drm/sun4i: mixer: Remove ccsc cfg for >= DE3_ |
|  📜  ✅  | `[patches.drm/]` `0003-drm-sun4i-de2-Initialize-layer-fields-earlier` | `(+10/-8)[2M]` | `sun8i_ui_layer.c`, `sun8i_vi_layer.c` | `Jernej Skrabec` _drm/sun4i: de2: Initialize layer fields earlier_ |
|  📜  ✅  | `[patches.drm/]` `0004-drm-sun4i-ui_layer-Move-check-from-update-to-check-c` | `(+11/-7)[1M]` | `sun8i_ui_layer.c` | `Jernej Skrabec` _drm/sun4i: ui_layer: Move check from update to check callback_ |
|  📜  ✅  | `[patches.drm/]` `0005-drm-sun4i-vi_layer-Move-check-from-update-to-check-c` | `(+11/-7)[1M]` | `sun8i_vi_layer.c` | `Jernej Skrabec` _drm/sun4i: vi_layer: Move check from update to check callback_ |
|  📜  ✅  | `[patches.drm/]` `0006-drm-sun4i-layers-Make-atomic-commit-functions-void` | `(+14/-26)[2M]` | `sun8i_ui_layer.c`, `sun8i_vi_layer.c` | `Jernej Skrabec` _drm/sun4i: layers: Make atomic commit functions void_ |
|  📜  ✅  | `[patches.drm/]` `0007-drm-sun4i-Move-blender-config-from-layers-to-mixer` | `(+20/-41)[3M]` | `sun8i_ui_layer.c`, `sun8i_vi_layer.c`, `sun8i_mixer.c` | `Jernej Skrabec` _drm/sun4i: Move blender config from layers to mixer_ |
|  📜  ✅  | `[patches.drm/]` `0008-drm-sun4i-ui-layer-Write-attributes-in-one-go` | `(+16/-34)[1M]` | `sun8i_ui_layer.c` | `Jernej Skrabec` _drm/sun4i: ui layer: Write attributes in one go_ |
|  📜  ✅  | `[patches.drm/]` `0009-drm-sun4i-vi-layer-Write-attributes-in-one-go` | `(+27/-44)[1M]` | `sun8i_vi_layer.c` | `Jernej Skrabec` _drm/sun4i: vi layer: Write attributes in one go_ |
|  📜  ✅  | `[patches.drm/]` `0010-drm-sun4i-mixer-Move-layer-enabling-to-atomic_update` | `(+24/-26)[3M]` | `sun8i_mixer.c`, `sun8i_ui_layer.c`, `sun8i_vi_layer.c` | `Jernej Skrabec` _drm/sun4i: mixer: Move layer enabling to atomic_update_ |
|  📜  ✅  | `[patches.drm/]` `0011-drm-sun4i-de2-de3-Simplify-CSC-config-interface` | `(+40/-69)[3M]` | `sun8i_csc.c`, `sun8i_vi_layer.c`, `sun8i_csc.h` | `Jernej Skrabec` _drm/sun4i: de2/de3: Simplify CSC config interface_ |
|  📜  ✅  | `[patches.drm/]` `0012-drm-sun4i-csc-Simplify-arguments-with-taking-plane-s` | `(+40/-46)[3M]` | `sun8i_csc.c`, `sun8i_vi_layer.c`, `sun8i_csc.h` | `Jernej Skrabec` _drm/sun4i: csc: Simplify arguments with taking plane state_ |
|  📜  ✅  | `[patches.drm/]` `0013-drm-sun4i-de2-de3-Move-plane-type-determination-to-m` | `(+17/-10)[5M]` | `sun8i_mixer.c`, `sun8i_ui_layer.c`, `sun8i_vi_layer.c`, `sun8i_ui_layer.h`, `sun8i_vi_layer.h` | `Jernej Skrabec` _drm/sun4i: de2/de3: Move plane type determination to mixer_ |
|  📜  ✅  | `[patches.drm/]` `0014-drm-sun4i-ui_layer-Change-index-meaning` | `(+5/-5)[2M]` | `sun8i_mixer.c`, `sun8i_ui_layer.c` | `Jernej Skrabec` _drm/sun4i: ui_layer: Change index meaning_ |
|  📜  ✅  | `[patches.drm/]` `0015-drm-sun4i-layer-move-num-of-planes-calc-out-of-layer` | `(+14/-15)[5M]` | `sun8i_mixer.c`, `sun8i_vi_layer.c`, `sun8i_ui_layer.c`, `sun8i_ui_layer.h`, `sun8i_vi_layer.h` | `Jernej Skrabec` _drm/sun4i: layer: move num of planes calc out of layer code_ |
|  📜  ✅  | `[patches.drm/]` `0016-drm-sun4i-ui_layer-use-layer-struct-instead-of-multi` | `(+30/-32)[1M]` | `sun8i_ui_layer.c` | `Jernej Skrabec` _drm/sun4i: ui_layer: use layer struct instead of multiple args_ |
|  📜  ✅  | `[patches.drm/]` `0017-drm-sun4i-vi_layer-use-layer-struct-instead-of-multi` | `(+28/-30)[1M]` | `sun8i_vi_layer.c` | `Jernej Skrabec` _drm/sun4i: vi_layer: use layer struct instead of multiple args_ |
|  📜  ✅  | `[patches.drm/]` `0018-drm-sun4i-ui_scaler-use-layer-instead-of-mixer-for-a` | `(+14/-13)[3M]` | `sun8i_ui_scaler.c`, `sun8i_ui_layer.c`, `sun8i_ui_scaler.h` | `Jernej Skrabec` _drm/sun4i: ui_scaler: use layer instead of mixer for args_ |
|  📜  ✅  | `[patches.drm/]` `0019-drm-sun4i-vi_scaler-use-layer-instead-of-mixer-for-a` | `(+16/-16)[4M]` | `sun8i_vi_scaler.c`, `sun8i_ui_layer.c`, `sun8i_vi_layer.c`, `sun8i_vi_scaler.h` | `Jernej Skrabec` _drm/sun4i: vi_scaler: use layer instead of mixer for args_ |
|  📜  ✅  | `[patches.drm/]` `0020-drm-sun4i-layers-Make-regmap-for-layers-configurable` | `(+50/-41)[8M]` | `sun8i_vi_scaler.c`, `sun8i_vi_layer.c`, `sun8i_ui_scaler.c`, `sun8i_ui_layer.c`, `sun8i_mixer.c`, `sun8i_mixer.h`, `sun8i_ui_layer.h`, `sun8i_vi_layer.h` | `Jernej Skrabec` _drm/sun4i: layers: Make regmap for layers configurable_ |
|  📜  ✅  | `[patches.drm/]` `0021-drm-sun4i-csc-use-layer-arg-instead-of-mixer` | `(+8/-8)[3M]` | `sun8i_csc.c`, `sun8i_csc.h`, `sun8i_vi_layer.c` | `Jernej Skrabec` _drm/sun4i: csc: use layer arg instead of mixer_ |
|  📜  ✅  | `[patches.drm/]` `0022-drm-sun4i-layers-add-physical-index-arg` | `(+23/-11)[6M]` | `sun8i_mixer.c`, `sun8i_ui_layer.c`, `sun8i_vi_layer.c`, `sun8i_mixer.h`, `sun8i_ui_layer.h`, `sun8i_vi_layer.h` | `Jernej Skrabec` _drm/sun4i: layers: add physical index arg_ |
|  📜  ✅  | `[patches.drm/]` `0023-drm-sun4i-vi_scaler-Update-DE33-base-calculation` | `(+4/-1)[2M]` | `sun8i_vi_scaler.c`, `sun8i_vi_scaler.h` | `Jernej Skrabec` _drm/sun4i: vi_scaler: Update DE33 base calculation_ |
|  📜  ✅  | `[patches.drm/]` `0024-drm-sun4i-mixer-Convert-heuristics-to-quirk` | `(+19/-5)[3M]` | `sun8i_vi_layer.c`, `sun8i_mixer.c`, `sun8i_mixer.h` | `Jernej Skrabec` _drm/sun4i: mixer: Convert heuristics to quirk_ |
|  📜  ✅  | `[patches.drm/]` `0025-drm-sun4i-ui_scaler-drop-sanity-checks` | `(+0/-6)[1M]` | `sun8i_ui_scaler.c` | `Jernej Skrabec` _drm/sun4i: ui_scaler: drop sanity checks_ |
|  📜  ✅  | `[patches.drm/]` `0026-drm-sun4i-mixer-Add-quirk-for-number-of-VI-scalers` | `(+18/-5)[3M]` | `sun8i_mixer.c`, `sun8i_ui_scaler.c`, `sun8i_mixer.h` | `Jernej Skrabec` _drm/sun4i: mixer: Add quirk for number of VI scalers_ |
|  📜  ✅  | `[patches.drm/]` `0027-drm-sun4i-mixer-split-out-layer-config` | `(+123/-76)[6M]` | `sun8i_mixer.c`, `sun8i_mixer.h`, `sun8i_vi_layer.c`, `sun8i_csc.c`, `sun8i_ui_layer.c`, `sun8i_ui_scaler.c` | `Jernej Skrabec` _drm/sun4i: mixer: split out layer config_ |
|  📜  ✅  | `[patches.drm/]` `0028-drm-sun4i-layer-replace-mixer-with-layer-struct` | `(+66/-67)[9M]` | `sun8i_vi_layer.c`, `sun8i_mixer.h`, `sun8i_ui_layer.c`, `sun8i_vi_scaler.c`, `sun8i_ui_scaler.c`, `sun8i_mixer.c`, `sun8i_csc.c`, `sun8i_ui_layer.h`, `sun8i_vi_layer.h` | `Jernej Skrabec` _drm/sun4i: layer: replace mixer with layer struct_ |
|  📜  ✅  | `[patches.drm/]` `0029-drm-sun4i-vi_scaler-Find-mixer-from-crtc` | `(+3/-1)[1M]` | `sun8i_vi_layer.c` | `Jernej Skrabec` _drm/sun4i: vi_scaler: Find mixer from crtc_ |
|  📜  ✅  | `[patches.drm/]` `0030-drm-sun4i-Nuke-mixer-pointer-from-layer-code` | `(+5/-14)[6M]` | `sun8i_mixer.c`, `sun8i_ui_layer.c`, `sun8i_vi_layer.c`, `sun8i_mixer.h`, `sun8i_ui_layer.h`, `sun8i_vi_layer.h` | `Jernej Skrabec` _drm/sun4i: Nuke mixer pointer from layer code_ |
|  📜  ✅  | `[patches.drm/]` `0031-drm-sun4i-Add-support-for-DE33-CSC` | `(+76/-0)[2M]` | `sun8i_csc.c`, `sun8i_csc.h` | `Jernej Skrabec` _drm/sun4i: Add support for DE33 CSC_ |
|  📜  ✅  | `[patches.drm/]` `0032-drm-sun4i-vi_layer-Limit-formats-for-DE33` | `(+35/-1)[1M]` | `sun8i_vi_layer.c` | `Jernej Skrabec` _drm/sun4i: vi_layer: Limit formats for DE33_ |
|  📜  ✅  | `[patches.drm/]` `0033-clk-sunxi-ng-de2-Export-register-regmap-for-DE33` | `(+50/-3)[1M]` | `ccu-sun8i-de2.c` | `Jernej Skrabec` _clk: sunxi-ng: de2: Export register regmap for DE33_ |
|  📜  ✅  | `[patches.drm/]` `0034-dt-bindings-display-allwinner-Add-DE33-planes` | `(+44/-0)[1A]` | `allwinner,sun50i-h616-de33-planes.yaml` | `Jernej Skrabec` _dt-bindings: display: allwinner: Add DE33 planes_ |
|  📜  ✅  | `[patches.drm/]` `0035-drm-sun4i-Add-planes-driver` | `(+257/-0)[2M, 2A]` | `sun50i_planes.c`, `sun50i_planes.h`, `Kconfig`, `Makefile` | `Jernej Skrabec` _drm/sun4i: Add planes driver_ |
|  📜  ✅  | `[patches.drm/]` `0036-dt-bindings-display-allwinner-Update-H616-DE33-bindi` | `(+10/-6)[1M]` | `allwinner,sun8i-a83t-de2-mixer.yaml` | `Jernej Skrabec` _dt-bindings: display: allwinner: Update H616 DE33 binding_ |
|  📜  ✅  | `[patches.drm/]` `0037-drm-sun4i-switch-DE33-to-new-bindings` | `(+71/-69)[2M]` | `sun8i_mixer.c`, `sun8i_mixer.h` | `Jernej Skrabec` _drm/sun4i: switch DE33 to new bindings_ |
|  📜  ✅  | `[patches.drm/]` `0038-drm-sun4i-Add-H616-TCON-TV-support` | `(+15/-0)[2M]` | `sun4i_tcon.c`, `sun4i_tcon.h` | `Jernej Skrabec` _drm/sun4i: Add H616 TCON TV support_ |
|  📜  ✅  | `[patches.drm/]` `0039-srm-sun4i-Add-support-for-H616-HDMI-PHY` | `(+71/-0)[1M]` | `sun8i_hdmi_phy.c` | `Jernej Skrabec` _srm/sun4i: Add support for H616 HDMI PHY_ |
|  📜  ✅  | `[patches.drm/]` `0040-drm-sun4i-Add-compatible-for-H616-display-engine` | `(+1/-0)[1M]` | `sun4i_drv.c` | `Jernej Skrabec` _drm/sun4i: Add compatible for H616 display engine_ |
|  📜  ✅  | `[patches.drm/]` `0041-arm64-dts-allwinner-h616-Add-display-pipeline` | `(+310/-0)[1M]` | `sun50i-h616.dtsi` | `Jernej Skrabec` _arm64: dts: allwinner: h616: Add display pipeline_ |
|  📜  ✅  | `[patches.drm/]` `0042-arm64-dts-allwinner-h616-Enable-HDMI-on-several-boar` | `(+135/-0)[7M]` | `sun50i-h313-tanix-tx1.dts`, `sun50i-h616-x96-mate.dts`, `sun50i-h618-transpeed-8k618-t.dts`, `sun50i-h618-yuzukihd-chameleon.dts`, `sun50i-h616-orangepi-zero.dtsi`, `sun50i-h616-orangepi-zero2.dts`, `sun50i-h618-orangepi-zero3.dts` | `Jernej Skrabec` _arm64: dts: allwinner: h616: Enable HDMI on several boards_ |
|  📜  ✅  | `[patches.drm/]` `0043-T95-broken-CD` | `(+1/-1)[1M]` | `sun50i-h616-x96-mate.dts` | `Jernej Skrabec` _T95 broken CD_ |
|  📜  ✅  | `[patches.media/]` `media-cedrus-Don-t-CPU-map-source-buffers` | `(+1/-0)[1M]` | `cedrus_video.c` | `Jernej Skrabec` _media: cedrus: Don't CPU map source buffers_ |
|  📜  ✅  | `[patches.media/]` `media-Add-NV12-and-P010-AFBC-compressed-formats` | `(+6/-0)[2M]` | `videodev2.h`, `v4l2-ioctl.c` | `Jernej Skrabec` _media: Add NV12 and P010 AFBC compressed formats_ |
|  📜  ✅  | `[patches.media/]` `media-cedrus-add-format-filtering-based-on-depth-and-src-format` | `(+9/-0)[2M]` | `cedrus_video.c`, `cedrus_video.h` | `Jernej Skrabec` _media: cedrus: add format filtering based on depth and src format_ |
|  📜  ✅  | `[patches.media/]` `media-cedrus-Implement-AFBC-YUV420-formats-for-H265` | `(+71/-1)[5M]` | `cedrus_video.c`, `cedrus_hw.c`, `cedrus.h`, `cedrus_regs.h`, `cedrus_h265.c` | `Jernej Skrabec` _media: cedrus: Implement AFBC YUV420 formats for H265_ |
|  📜  ✅  | `[patches.media/]` `media-cedrus-Increase-H6-clock-rate` | `(+1/-1)[1M]` | `cedrus.c` | `Jernej Skrabec` _media: cedrus: Increase H6 clock rate_ |
|  📜  ✅  | `[patches.media/]` `dma-sun6i-dma-add-sun50i-h616-support` | `(+23/-0)[1M]` | `sun6i-dma.c` | `The-going` _dma: sun6i-dma: add sun50i-h616 support_ |
|  📜  ✅  | `[patches.backports/]` `0001-ASoC-dt-bindings-allwinner-sun4i-a10-i2s-Add-compati` | `(+3/-1)[1M]` | `allwinner,sun4i-a10-i2s.yaml` | `Chen-Yu Tsai` _ASoC: dt-bindings: allwinner,sun4i-a10-i2s: Add compatible for A523_ |
|  📜  ✅  | `[patches.backports/]` `0001-ASoC-dt-bindings-allwinner-sun4i-a10-spdif-Add-compa` | `(+38/-6)[1M]` | `allwinner,sun4i-a10-spdif.yaml` | `Chen-Yu Tsai` _ASoC: dt-bindings: allwinner,sun4i-a10-spdif: Add compatible for A523_ |
|  📜  ✅  | `[patches.backports/]` `0001-ASoC-sun4i-spdif-Support-SPDIF-output-on-A523-family` | `(+24/-2)[1M]` | `sun4i-spdif.c` | `Chen-Yu Tsai` _ASoC: sun4i-spdif: Support SPDIF output on A523 family_ |
|  📜  ✅  | `[patches.backports/]` `0001-arm64-dts-allwinner-a523-Add-DMA-controller-device-n` | `(+56/-0)[1M]` | `sun55i-a523.dtsi` | `Chen-Yu Tsai` _arm64: dts: allwinner: a523: Add DMA controller device nodes_ |
|  📜  ✅  | `[patches.backports/]` `0001-arm64-dts-allwinner-a523-Add-GMAC200-ethernet-contro` | `(+55/-0)[1M]` | `sun55i-a523.dtsi` | `Chen-Yu Tsai` _arm64: dts: allwinner: a523: Add GMAC200 ethernet controller_ |
|  📜  ✅  | `[patches.backports/]` `0001-arm64-dts-allwinner-a523-Add-I2S2-pins-on-PI-pin-gro` | `(+8/-0)[1M]` | `sun55i-a523.dtsi` | `Chen-Yu Tsai` _arm64: dts: allwinner: a523: Add I2S2 pins on PI pin group_ |
|  📜  ✅  | `[patches.backports/]` `0001-arm64-dts-allwinner-a523-Add-SPDIF-TX-pin-on-PB-and-` | `(+14/-0)[1M]` | `sun55i-a523.dtsi` | `Chen-Yu Tsai` _arm64: dts: allwinner: a523: Add SPDIF TX pin on PB and PI pins_ |
|  📜  ✅  | `[patches.backports/]` `0001-arm64-dts-allwinner-a523-Add-device-node-for-SPDIF-b` | `(+15/-0)[1M]` | `sun55i-a523.dtsi` | `Chen-Yu Tsai` _arm64: dts: allwinner: a523: Add device node for SPDIF block_ |
|  📜  ✅  | `[patches.backports/]` `0001-arm64-dts-allwinner-a523-Add-device-nodes-for-I2S-co` | `(+56/-0)[1M]` | `sun55i-a523.dtsi` | `Chen-Yu Tsai` _arm64: dts: allwinner: a523: Add device nodes for I2S controllers_ |
|  📜  ✅  | `[patches.backports/]` `0001-arm64-dts-allwinner-t527-avaota-a1-enable-second-Eth` | `(+24/-2)[1M]` | `sun55i-t527-avaota-a1.dts` | `Chen-Yu Tsai` _arm64: dts: allwinner: t527: avaota-a1: enable second Ethernet port_ |
|  📜  ✅  | `[patches.backports/]` `0001-arm64-dts-allwinner-t527-orangepi-4a-Enable-Ethernet` | `(+23/-0)[1M]` | `sun55i-t527-orangepi-4a.dts` | `Chen-Yu Tsai` _arm64: dts: allwinner: t527: orangepi-4a: Enable Ethernet port_ |
|  📜  ✅  | `[patches.backports/]` `0001-dt-bindings-dma-allwinner-sun50i-a64-dma-Add-compati` | `(+4/-1)[1M]` | `allwinner,sun50i-a64-dma.yaml` | `Chen-Yu Tsai` _dt-bindings: dma: allwinner,sun50i-a64-dma: Add compatibles for A523_ |
|  📜  ✅  | `[patches.backports/]` `0001-arm64-dts-allwinner-a527-cubie-a5e-Enable-second-Eth` | `(+26/-2)[1M]` | `sun55i-a527-cubie-a5e.dts` | `Chen-Yu Tsai` _arm64: dts: allwinner: a527: cubie-a5e: Enable second Ethernet port_ |
|  📜  ✅  | `[patches.backports/]` `05-dt-bindings-mfd-x-powers-axp152-Add-polyphased-prope` | `(+14/-0)[1M]` | `x-powers,axp152.yaml` | `Andre Przywara` _dt-bindings: mfd: x-powers,axp152: Add polyphased property_ |
|  📜  ✅  | `[patches.backports/]` `06-mfd-axp20x-Refactor-axp20x_is_polyphase_slave` | `(+45/-46)[1M]` | `axp20x-regulator.c` | `Andre Przywara` _mfd: axp20x: Refactor axp20x_is_polyphase_slave()_ |
|  📜  ✅  | `[patches.backports/]` `07-mfd-axp20x-Allow-programming-dual-phase-regulator-pa` | `(+68/-0)[1M]` | `axp20x-regulator.c` | `Andre Przywara` _mfd: axp20x: Allow programming dual-phase regulator pairs_ |
|  📜  ✅  | `[patches.backports/]` `08-mfd-axp20x-Support-tri-phase-setup` | `(+45/-0)[1M]` | `axp20x-regulator.c` | `Andre Przywara` _mfd: axp20x: Support tri-phase setup_ |
|  📜  ✅  | `[patches.backports/]` `09-arm64-dts-allwinner-a523-Mark-dual-phased-regulators` | `(+16/-4)[4M]` | `sun55i-a527-cubie-a5e.dts`, `sun55i-h728-x96qpro+.dts`, `sun55i-t527-avaota-a1.dts`, `sun55i-t527-orangepi-4a.dts` | `Andre Przywara` _arm64: dts: allwinner: a523: Mark dual-phased regulators_ |
|  📜  ✅  | `[patches.backports/]` `10-Allwinner-A523-add-support-for-A523-THS0-1-controllers` | `(+53/-3)[1M]` | `allwinner,sun8i-a83t-ths.yaml` | `Mikhail Kalashnikov` _dt-bindings: thermal: sun8i: Add A523 THS0/1_ |
|  📜  ✅  | `[patches.backports/]` `10-Allwinner-A523-add-support-for-A523-THS0-1-controllers` | `(+8/-0)[1M]` | `sun8i_thermal.c` | `Mikhail Kalashnikov` _auto-split from bundle_ |
|  📜  ✅  | `[patches.backports/]` `10-Allwinner-A523-add-support-for-A523-THS0-1-controllers` | `(+1/-15)[1M]` | `sun8i_thermal.c` | `Mikhail Kalashnikov` _auto-split from bundle_ |
|  📜  ✅  | `[patches.backports/]` `10-Allwinner-A523-add-support-for-A523-THS0-1-controllers` | `(+52/-25)[1M]` | `sun8i_thermal.c` | `Mikhail Kalashnikov` _auto-split from bundle_ |
|  📜  ✅  | `[patches.backports/]` `10-Allwinner-A523-add-support-for-A523-THS0-1-controllers` | `(+133/-0)[1M]` | `sun8i_thermal.c` | `Mikhail Kalashnikov` _auto-split from bundle_ |
|  📜  ✅  | `[patches.backports/]` `10-Allwinner-A523-add-support-for-A523-THS0-1-controllers` | `(+154/-0)[1M]` | `sun55i-a523.dtsi` | `Mikhail Kalashnikov` _auto-split from bundle_ |
|  📜  ✅  | `[patches.backports/]` `21-Enable-uart1-on-Radxa-Cubie-A5E` | `(+15/-0)[1M]` | `sun55i-a527-cubie-a5e.dts` | `Juan Sanchez Fuentes` _Enable BT on Radxa Cubie A5E_ |
|  📜  ✅  | `[patches.backports/]` `22-Enable-wifi-on-Radxa-Cubie-A5E` | `(+34/-0)[1M]` | `sun55i-a527-cubie-a5e.dts` | `Juan Sanchez Fuentes` _Update WiFi node patch on Radxa Cubie A5E_ |
|  📜  ✅  | `[patches.backports/]` `30-allwinner-a523-support-spi-controllers` | `(+133/-4)[5M]` | `sun55i-a523.dtsi`, `sun55i-t527-orangepi-4a.dts`, `sun55i-a527-cubie-a5e.dts`, `spi-sun6i.c`, `allwinner,sun6i-a31-spi.yaml` | `Chen-Yu Tsai` _arm64: allwinner: a523: Support SPI controllers_ |
|  📜  ✅  | `[patches.backports/]` `34-fix-wifi-regulator-cubie-a5e` | `(+1/-0)[1M]` | `sun55i-a527-cubie-a5e.dts` | `Juan Sanchez Fuentes` _Add regulator-always-on for wifi on sun55i-a527-cubie-a5e.dts_ |
|  📜  ✅  | `[patches.armbian/]` `0201-drv-mfd-ac200-add-support` | `(+203/-0)[2M, 1A]` | `ac200.c`, `Kconfig`, `Makefile` | `Jernej Skrabec` _mfd: Add support for X-Powers AC200_ |
|  📜  ✅  | `[patches.armbian/]` `0202-drv-net-phy-ac200-ephy-add` | `(+102/-0)[2M, 1A]` | `ac200-phy.c`, `Kconfig`, `Makefile` | `Jernej Skrabec` _net: phy: Add support for AC200 EPHY_ |
|  📜  ✅  | `[patches.armbian/]` `0301-arm64-dts-sun50i-h616-add-emac1-rmii-pins` | `(+26/-0)[1M]` | `sun50i-h616.dtsi` | `Jernej Skrabec` _arm64: dts: sun50i-h616: Add EMAC1 and RMII pins_ |
|  📜  ✅  | `[patches.armbian/]` `0302-arm64-dts-sun50i-h618-orangepi-zero2w-add-emac-sound` | `(+190/-0)[1M]` | `sun50i-h618-orangepi-zero2w.dts` | `chraac` _arm64: dts: sun50i-h618-orangepi-zero2w: Add missing nodes_ |
|  📜  ✅  | `[patches.armbian/]` `0401-arm64-dts-sun50i-h6-add-ac200-ephy` | `(+73/-0)[1M]` | `sun50i-h6.dtsi` | `Jernej Skrabec` _arm64: dts: allwinner: h6: Add AC200 EPHY nodes_ |
|  📜  ✅  | `[patches.armbian/]` `0402-arm64-dts-sun50i-h6-add-ac200-codec` | `(+42/-0)[1M]` | `sun50i-h6.dtsi` | `Jernej Skrabec` _arm64: dts: allwinner: h6: add AC200 codec nodes_ |
|  📜  ✅  | `[patches.armbian/]` `0403-arm64-dts-sun50i-h6-enable-ac200-codec` | `(+64/-0)[3M]` | `sun50i-h6-orangepi-3.dts`, `sun50i-h6-pine-h64.dts`, `sun50i-h6-tanix-tx6-mini.dts` | `Jernej Skrabec` _arm64: dts: allwinner: h6: enable AC200 codec_ |
|  📜  ✅  | `[patches.armbian/]` `0501-drv-mmc-sunxi-add-h5-emmc-compatible` | `(+8/-0)[1M]` | `sunxi-mmc.c` | `The-going` _drv:mmc:host:sunxi-mmc: add h5 emmc compatible_ |
|  📜  ✅  | `[patches.armbian/]` `0502-drv-mmc-sunxi-disable-ddr52-a20-emmc` | `(+3/-1)[1M]` | `sunxi-mmc.c` | `Mitko Gamishev` _drv:mmc:host:sunxi-mmc Disable DDR52 mode on all A20 based boards_ |
|  📜  ✅  | `[patches.armbian/]` `0503-drv-mmc-sunxi-fix-h6-emmc` | `(+4/-1)[1M]` | `sunxi-mmc.c` | `Ukhellfire` _mmc/host/sunxi-mmc: Fix H6 emmc_ |
|  📜  ✅  | `[patches.armbian/]` `0701-arm64-dts-sun50i-h616-orangepi-zero-enable-sound` | `(+4005/-1)[6M, 14A]` | `snd_sunxi_ahub.c`, `snd_sunxi_ahub_dam.c`, `snd_sunxi_mach.c`, `snd_sunxi_mach_utils.c`, `snd_sunxi_ahub_dam.h`, `snd_sunxi_common.c`, `snd_sunxi_mach_utils.h`, `snd_sunxi_ahub.h`, `snd_sunxi_common.h`, `drv_hdmi.h`, `sun50i-h616.dtsi`, `Kconfig`, `snd_sunxi_log.h`, `soc-core.c`, `snd_sunxi_mach.h`, _and 3 more_ | `Stephen Graf` _Sound for H616, H618 Allwinner SOCs_ |
|  📜  ✅  | `[patches.armbian/]` `0702-arm64-dts-sun50i-h616-add-digital-audio-node` | `(+39/-26)[6M]` | `snd_sunxi_ahub_dam.c`, `sun50i-h616.dtsi`, `ccu-sun50i-h616.c`, `sun4i-codec.c`, `snd_sunxi_ahub.c`, `sun50i-h616-ccu.h` | `joakimtoe` _sun50i-h616: HDMI audio clocking and analog LINEOUT half-rate_ |
|  📜  ✅  | `[patches.armbian/]` `arch-arm-patch-flush-icache-earlier` | `(+9/-3)[1M]` | `patch.c` | `Mikhail Iakhiaev` _arm/patch: call flush_icache ASAP after writing new instruction._ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sunxi-h3-describe-the-tv-encoder-pipeline` | `(+114/-3)[2M]` | `sunxi-h3-h5.dtsi`, `sun8i-h3.dtsi` | `enthropy7` _ARM: dts: sunxi: h3: describe the TV encoder pipeline_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-add-axp313a-pmic` | `(+64/-0)[1A]` | `axp313a.dtsi` | `The-going` _arm64: dts: allwinner: Add axp313a.dtsi_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-allwinner-h5-add-the-tv-encoder` | `(+22/-0)[1M]` | `sun50i-h5.dtsi` | `enthropy7` _arm64: dts: allwinner: h5: add the TV encoder_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64.dtsi-adjust-thermal-trip-points` | `(+3/-3)[1M]` | `sun50i-a64.dtsi` | `Stefan Saraev` _arm64:dts:sun50i-a64.dtsi adjust thermal trip points_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-bananapi-m64-keep-wifi-power-in-suspend` | `(+1/-0)[1M]` | `sun50i-a64-bananapi-m64.dts` | `Igor Pecovnik` _arm64: dts: sun50i-a64-bananapi-m64: keep Wi-Fi power in suspend_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-bananapi-m64-heartbeat-on-red-led` | `(+1/-1)[1M]` | `sun50i-a64-bananapi-m64.dts` | `Igor Pecovnik` _arm64: dts: sun50i-a64-bananapi-m64: blink red LED as heartbeat_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-force-mmc0-bus-width` | `(+1/-0)[1M]` | `sun50i-a64.dtsi` | `The-going` _arm64:dts: sun50i-a64 force mmc0 bus-width_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-nanopi-fix-ethernet-phy-mode` | `(+1/-1)[1M]` | `sun50i-a64-nanopi-a64.dts` | `root` _arm64:dts: nanopi-a64 set right phy-mode to rgmii-id_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-olinuxino-add-regulator-audio-mmc` | `(+46/-0)[1M]` | `sun50i-a64-olinuxino.dts` | `The-going` _arm64:dts: FIXME: a64-olinuxino add regulator audio mmc_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-olinuxino-emmc-enable-bluetooth` | `(+17/-0)[1M]` | `sun50i-a64-olinuxino-emmc.dts` | `Stefan Saraev` _arm64:dts: sun50i-a64-olinuxino-emmc: enable bluetooth_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-orangepi-win-add-alias-ethernet1` | `(+1/-0)[1M]` | `sun50i-a64-orangepi-win.dts` | `The-going` _arm64:dts: sun50i-a64-orangepi-win add aliase ethernet1_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-pine64-add-spi0` | `(+29/-0)[1M]` | `sun50i-a64-pine64.dts` | `The-going` _arm64:dts: sun50i-a64-pine64 add spi0_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-pine64-enable-wifi-mmc1` | `(+8/-2)[1M]` | `sun50i-a64-pine64.dts` | `Icenowy Zheng` _arm64:dts: sun50i-a64-pine64 enable wifi mmc1_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-pinephone-fix-mailbox` | `(+4/-3)[1M]` | `sun50i-a64-pinephone.dtsi` | `AGM1968` _arm64: dts: sun50i-a64-pinephone: Fix mailbox wifi power_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-sopine-baseboard-enable-Bluetooth` | `(+9/-1)[1M]` | `sun50i-a64-sopine-baseboard.dts` | `Vasily Khoruzhick` _arm64:dts: sun50i-a64-sopine-baseboard enable Bluetooth_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-a64-sopine-baseboard-mmc1-status-okay` | `(+1/-1)[1M]` | `sun50i-a64-sopine-baseboard.dts` | `Vasily Khoruzhick` _arm64:dts: sun50i-a64-sopine-baseboard: mmc1: status = "okay"_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h313-x96q-lpddr3` | `(+98/-0)[1A]` | `sun50i-h313-cpu-opp.dtsi` | `The-going` _arm64: dts: sun50i-h313-x96q-lpddr3_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h5-add-cpu-opp-refs` | `(+4/-0)[4M]` | `sun50i-h5-bananapi-m2-plus.dts`, `sun50i-h5-nanopi-neo-plus2.dts`, `sun50i-h5-nanopi-neo2.dts`, `sun50i-h5-orangepi-prime.dts` | `The-going` _arm64:dts:sun50i-h5 add cpu opp refs_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h5-add-thermal-zones` | `(+54/-12)[1M]` | `sun50i-h5.dtsi` | `The-going` _arm64:dts:sun50i-h5 add termal zones_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h5-nanopi-neo2-add-regulator-led-trigger` | `(+22/-1)[1M]` | `sun50i-h5-nanopi-neo2.dts` | `The-going` _arm64:dts: sun50i-h5-nanopi-neo2 add regulator, led triger_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h5-nanopi-r1s-h5-add-rtl8153-support` | `(+9/-1)[1M]` | `sun50i-h5-nanopi-r1s-h5.dts` | `The-going` _arm64: dts: sun50i-h5-nanopi-r1s-h5: add rtl8153 support_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h5-orangepi-pc2-add-spi-flash` | `(+19/-6)[1M]` | `sun50i-h5-orangepi-pc2.dts` | `The-going` _arm64:dts: sun50i-h5-orangepi-pc2 add spi flash_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h5-orangepi-prime-add-regulator` | `(+36/-7)[1M]` | `sun50i-h5-orangepi-prime.dts` | `The-going` _arm64:dts: sun50i-h5-orangepi-prime add regulator_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h5-orangepi-prime-add-rtl8723cs` | `(+5/-0)[1M]` | `sun50i-h5-orangepi-prime.dts` | `The-going` _arm64:dts: sun50i-h5-orangepi-prime add rtl8723cs_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h5-orangepi-prime-enable-power-button` | `(+2/-1)[1M]` | `sun50i-h5-orangepi-prime.dts` | `Gunjan Gupta` _arm64: dts: sun50i: h5: enable power button for orangepi prime_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h5-orangepi-zero-plus-add-regulator` | `(+24/-1)[1M]` | `sun50i-h5-orangepi-zero-plus.dts` | `The-going` _arm64:dts: sun50i-h5-orangepi-zero-plus add regulator_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-add-i2c-uart-pinctrl` | `(+103/-0)[1M]` | `sun50i-h616.dtsi` | `The-going` _arm64: sun50i-h616: Add i2c(2,3,4), uart(2,5) pins_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-add-lradc-keys` | `(+9/-0)[2M]` | `sun4i-lradc-keys.c`, `sun50i-h616.dtsi` | `Exodus` _h616: add keys_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-add-pwm-nodes` | `(+103/-0)[1M]` | `sun50i-h616.dtsi` | `The-going` _arm64: dts: sun50i-h616: add pwm nodes support_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-add-vpu-node` | `(+24/-0)[1M]` | `sun50i-h616.dtsi` | `Jernej Skrabec` _arm64:dts:allwinner: sun50i-h616 Add VPU node_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-bananapi-m4-berry-fix-rgmii-pins` | `(+2/-2)[1M]` | `sun50i-h616.dtsi` | `The-going` _arm64: allwinner: Add sun50i-h618-bananapi-m4-berry support_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-bananapi-m4-zero-add-pinctrl` | `(+12/-0)[1M]` | `sun50i-h616.dtsi` | `Patrick Yavitz` _Add BananaPi BPI-M4-Zero pinctrl_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-bigtreetech-cb1` | `(+237/-16)[1M]` | `sun50i-h616-bigtreetech-cb1.dtsi` | `Alan` _arm64: dts: sun50i-h616: Add BigTreeTech CB1 board support_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-bigtreetech-cb1-emac1-ac300` | `(+53/-5)[1M]` | `sun50i-h616-bigtreetech-cb1.dtsi` | `JohnTheCoolingFan` _arm64: dts: allwinner: BigTreeTech CB1 emac1 ac300_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-increase-bl31-reserved-memory` | `(+2/-2)[1M]` | `sun50i-h616.dtsi` | `The-going` _arm64: dts: sun50i-h616.dtsi: reserved memory 512K for BL31_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-orangepi-zero2-enable-expansion-board-usb` | `(+15/-0)[1M]` | `sun50i-h616-orangepi-zero.dtsi` | `Michal Dziekonski` _arm64: dts: allwinner: h616 orangepi zero2: Enable expansion board USB ports_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-orangepi-zero2-enable-gpu-mali` | `(+1/-0)[1M]` | `sun50i-h616-orangepi-zero2.dts` | `Jernej Skrabec` _arm64:dts: sun50i-h616-orangepi-zero2 Enable GPU mali_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-orangepi-zero2-enable-usb1-vbus` | `(+1/-0)[1M]` | `sun50i-h616-orangepi-zero.dtsi` | `The-going` _arm64: dts: sun50i-h616-orangepi-zero2: reg_usb1_vbus status ok_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-orangepi-zero2-fix-led-functions` | `(+4/-3)[1M]` | `sun50i-h616-orangepi-zero.dtsi` | `AGM1968` _LED-green_power_on-red_status_heartbeat arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero.dtsi_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-orangepi-zero2-zero3-add-wifi` | `(+38/-0)[1M]` | `sun50i-h616-orangepi-zero.dtsi` | `Gunjan Gupta` _arm64: dts: h616: add wifi support for orange pi zero 2 and zero3_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h616-x96-mate-enable-emac1` | `(+20/-0)[1M]` | `sun50i-h616-x96-mate.dts` | `Jernej Skrabec` _arm64: dts: sun50i-h616-x96-mate: Enable EMAC1 with RMII PHY_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h618-orangepi-zero2w-zero3-cpu-dvfs.dtsi` | `(+14/-0)[2M]` | `sun50i-h618-orangepi-zero2w.dts`, `sun50i-h618-orangepi-zero3.dts` | `MichaIng` _[ARCHEOLOGY] orangepizero2w/zero3: add dvfs patch more cleanly_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h618-orangepi-zero3-enable-gpu-mali` | `(+1/-0)[1M]` | `sun50i-h618-orangepi-zero3.dts` | `Gunjan Gupta` _arm64:dts: sun50i-h618-orangepi-zero3 Enable GPU mali_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-Add-r_uart-uart2-3-pins` | `(+50/-10)[1M]` | `sun50i-h6.dtsi` | `The-going` _arm64:dts: sun50i-h6 Add r_uart uart2-3 pins_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6.dtsi-add-pinctrl-pins-for-spi` | `(+4/-0)[1M]` | `sun50i-h6.dtsi` | `The-going` _arm64:dts: sun50i-h6.dtsi add pinctrl pins for spi_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6.dtsi-improve-thermals` | `(+55/-13)[1M]` | `sun50i-h6.dtsi` | `The-going` _arm64:dts: sun50i-h6.dtsi improve thermals_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-fix-emmc-compatible` | `(+1/-2)[1M]` | `sun50i-h6.dtsi` | `Ukhellfire` _arm64: dts/allwinner/sun50i-h6: Fix H6 emmc_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-h616-add-sunxi-info-nodes` | `(+38/-0)[2M]` | `sun50i-h6.dtsi`, `sun50i-h616.dtsi` | `The-going` _add nodes for sunxi-info, sunxi-addr and sunxi-dump-reg_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-orangepi-3-add-ruart-alias` | `(+1/-0)[1M]` | `sun50i-h6-orangepi-3.dts` | `The-going` _arm64:dts: sun50i-h6-orangepi-3 add r_uart aliase_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-orangepi-3-delete-node-spi0` | `(+2/-0)[1M]` | `sun50i-h6-orangepi-3.dts` | `The-going` _arm64:dts: sun50i-h6-orangepi-3 delete-node &spi0_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-orangepi-add-cpu-opp-refs` | `(+5/-0)[1M]` | `sun50i-h6-orangepi.dtsi` | `The-going` _arm64:dts: sun50i-h6-orangepi add cpu opp refs_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-orangepi-increase-vdd-cpu-max-volt` | `(+1/-1)[1M]` | `sun50i-h6-orangepi.dtsi` | `The-going` _arm64:dts: sun50i-h6-orangepi enable higher clock regulator-max-microvolt_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-orangepi-lite2-spi0-usb3phy-dwc3-enable` | `(+26/-0)[1M]` | `sun50i-h6-orangepi-lite2.dts` | `Igor Pecovnik` _arm64:dts: sun50i-h6-orangepi-lite2 spi0, usb3phy, dwc3 enable_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-pine-h64-add-wifi-rtl8723cs` | `(+38/-0)[1M]` | `sun50i-h6-pine-h64.dts` | `The-going` _arm64:dts: sun50i-h6-pine-h64 add wifi rtl8723cs_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-pine-h64-enable-usb3` | `(+9/-0)[1M]` | `sun50i-h6-pine-h64.dts` | `The-going` _arm64:dts: sun50i-h6-pine-h64 add dwc3 usb3phy_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun50i-h6-tanix-enable-ethernet` | `(+38/-0)[1M]` | `sun50i-h6-tanix.dtsi` | `Jernej Skrabec` _arm64: dts: allwinner: h6: tanix: enable Ethernet_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun55i-a527-cubie-a5e-enable-usbc-pcie-combophy` | `(+58/-0)[1M]` | `sun55i-a527-cubie-a5e.dts` | `Marvin Wewer` _arm64: dts: allwinner: a527-cubie-a5e: enable PCIe/USB-C combophy_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun55i-dtsi-add-iommu-usbc-pcie-combophy-nodes` | `(+84/-0)[1M]` | `sun55i-a523.dtsi` | `Marvin Wewer` _arm64: dts: allwinner: sun55i-a523: add iommu and PCIe/USB-C nodes_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-sun55i-t527-orangepi-4a-enable-pcie-combophy` | `(+15/-0)[1M]` | `sun55i-t527-orangepi-4a.dts` | `Marvin Wewer` _arm64: dts: allwinner: t527-orangepi-4a: enable PCIe combophy_ |
|  📜  ✅  | `[patches.armbian/]` `arm-arm64-dts-axp209-axp22x-axp81x-axp803-add-led-charger` | `(+20/-0)[4M]` | `axp209.dtsi`, `axp22x.dtsi`, `axp81x.dtsi`, `axp803.dtsi` | `The-going` _arm:arm64:dts: Add leds axp20x charger_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-h3-nanopi-neo-Add-regulator-leds-mmc2` | `(+57/-0)[1M]` | `sun8i-h3-nanopi-neo.dts` | `The-going` _arm:dts: h3-nanopi-neo Add regulator, leds, mmc2_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-h3-nanopi-neo-air-Add-regulator-camera-wifi-bluetooth-o` | `(+153/-0)[1M]` | `sun8i-h3-nanopi-neo-air.dts` | `The-going` _arm:dts: h3-nanopi-neo-air Add regulator camera wifi bluetooth otg_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-h3-orangepi-2-Add-regulator-vdd-cpu` | `(+29/-0)[1M]` | `sun8i-h3-orangepi-2.dts` | `The-going` _arm:dts: h3-orangepi-2 Add regulator vdd cpu_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun4i-a10-cubieboard-green-LED-mmc0-default-trigger` | `(+1/-1)[1M]` | `sun4i-a10-cubieboard.dts` | `The-going` _arm: dts: sun4i-a10-cubieboard green LED mmc0 default-trigger_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun4i-a10-emac-enable-dma` | `(+2/-0)[1M]` | `sun4i-a10.dtsi` | `Ryzer58` _Enable DMA support for the Allwinner A10 EMAC, which already exist in the sun4i-emac driver_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun4i-a10-pcduino-add-hdmi` | `(+25/-0)[1M]` | `sun4i-a10-pcduino.dts` | `Ryzer58` _Add HDMI support for pcDuino 1 and 2 by including HDMI and DE nodes_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun5i-a13-olinuxino-Add-panel-lcd-olinuxino-4.3-needed-` | `(+44/-35)[1M]` | `sun5i-a13-olinuxino.dts` | `hehopmajieh` _arm:dts:sun5i-a13-olinuxino Add panel lcd-olinuxino-4.3 needed to fix overlay tests_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun5i-a13-olinuxino-micro-add-panel-lcd-olinuxino-4.3` | `(+60/-2)[1M]` | `sun5i-a13-olinuxino-micro.dts` | `Mitko Gamishev` _arm:dts:sun5i-a13-olinuxino-micro add panel lcd-olinuxino-4.3_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-bananapro-add-AXP209-regulators` | `(+50/-0)[1M]` | `sun7i-a20-bananapro.dts` | `The-going` _arm: dts: sun7i-a20-bananapro: add AXP209 regulators_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-bananapro-add-hdmi-connector-de` | `(+30/-0)[1M]` | `sun7i-a20-bananapro.dts` | `The-going` _arm:dts: sun7i-a20-bananapro add hdmi-connector, de_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-cubietruck-add-alias-uart2` | `(+1/-0)[1M]` | `sun7i-a20-cubietruck.dts` | `The-going` _arm:dts: sun7i-a20-cubietruck add alias uart2_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-cubietruck-disable-oob-irq-brcm-wifi` | `(+26/-6)[2M]` | `sun7i-a20-bananapro.dts`, `sun7i-a20-cubietruck.dts` | `The-going` _arm:dts:sun7i-a20 Disable OOB IRQ for brcm-wifi on Cubietruck and Banana-Pro_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-cubietruck-green-LED-mmc0-default-trigger` | `(+1/-0)[1M]` | `sun7i-a20-cubietruck.dts` | `The-going` _arm: dts: sun7i-a20-cubietruck green LED mmc0 default-trigger_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-olimex-som-204-evb-olinuxino-micro-decrease-d` | `(+3/-3)[3M]` | `sun7i-a20-olimex-som-evb.dts`, `sun7i-a20-olimex-som204-evb.dts`, `sun7i-a20-olinuxino-micro.dts` | `Stefan Saraev` _arm:dts:sun7i-a20: olimex-som(204)-evb,olinuxino-micro decrease dcdc2 min voltage_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-olinuxino-lime2-enable-audio-codec` | `(+4/-0)[1M]` | `sun7i-a20-olinuxino-lime2.dts` | `Stefan Saraev` _arm:dts:sun7i-a20-olinuxino-lime2 enable audio codec_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-olinuxino-lime2-enable-ldo3-always-on` | `(+1/-1)[1M]` | `sun7i-a20-olinuxino-lime2.dts` | `hehopmajieh` _arm:dts:sun7i-a20-olinuxino-lime2 enable ldo3 always-on_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-olinuxino-micro-emmc-Add-vqmmc-node` | `(+1/-0)[1M]` | `sun7i-a20-olinuxino-micro-emmc.dts` | `hehopmajieh` _arm:dts:sun7i-a20-olinuxino-micro-emmc Add vqmmc node_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-orangepi-fix-ethernet-phy-mode` | `(+31/-2)[2M]` | `sun7i-a20-orangepi.dts`, `sun7i-a20-orangepi-mini.dts` | `The-going` _arm:dts: a20-orangepi and mini fix phy-mode, hdmi_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun7i-a20-pcduino3-add-hdmi` | `(+25/-0)[1M]` | `sun7i-a20-pcduino3.dts` | `Ryzer58` _Add HDMI support for pcDuino 3 by including HDMI and DE nodes_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-a83t-fix-cpu-opp-table` | `(+32/-20)[1M]` | `sun8i-a83t.dtsi` | `The-going` _fix: cpu opp table sun8i-a83t_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-h2-plus-orangepi-zero-fix-usb_otg-dr_mode` | `(+1/-1)[1M]` | `sun8i-h2-plus-orangepi-zero.dts` | `Your Name` _arm: dts: sun8i-h2-plus-orangepi-zero: fix usb_otg dr_mode_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-h2-plus-orangepi-zero-fix-xradio-interrupt` | `(+5/-0)[1M]` | `sun8i-h2-plus-orangepi-zero.dts` | `The-going` _arm:dts: sun8i-h2-plus-orangepi-zero fix xradio interrupt_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-h3-add-thermal-zones` | `(+55/-13)[1M]` | `sun8i-h3.dtsi` | `The-going` _arm:dts:sun8i-h3 add thermal zones_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-h3-bananapi-m2-plus-add-wifi_pwrseq` | `(+5/-0)[1M]` | `sun8i-h3-bananapi-m2-plus.dts` | `The-going` _arm:dts:sun8i-h3-bananapi-m2-plus add wifi_pwrseq_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-h3-nanopi-add-leds-pio-pins` | `(+23/-0)[1M]` | `sun8i-h3-nanopi.dtsi` | `The-going` _arm:dts: sun8i-h3-nanopi add leds pio pins_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-h3-nanopi-duo2-enable-emac` | `(+7/-0)[1M]` | `sun8i-h3-nanopi-duo2.dts` | `Gunjan Gupta` _ARM: dts: sun8i: nanopiduo2: enable ethernet_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-h3-nanopi-duo2-enable-power-button` | `(+2/-1)[1M]` | `sun8i-h3-nanopi-duo2.dts` | `Gunjan Gupta` _ARM: dts: sun8i: nanopiduo2: Use key-0 as power button_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-h3-orangepi-pc-plus-add-wifi_pwrseq` | `(+6/-0)[1M]` | `sun8i-h3-orangepi-pc-plus.dts` | `The-going` _arm:dts: sun8i-h3-orangepi-pc-plus add wifi_pwrseq_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-h3-reduce-opp-microvolt` | `(+4/-3)[1M]` | `sun8i-h3.dtsi` | `Gunjan Gupta` _arm: dts: sun8i: h3: reduce opp-microvolt to prevent not supported by regulator error_ |
|  📜  ✅  | `[patches.armbian/]` `ARM-dts-sun8i-h3-zeropi-drop-the-K1-power-key` | `(+2/-0)[1M]` | `sun8i-h3-zeropi.dts` | `Igor Pecovnik` _ARM: dts: sun8i-h3-zeropi: drop the K1 power key_ |
|  📜  ✅  | `[patches.armbian/]` `ARM-dma-mapping-do-not-cross-sparsemem-sections-in-dcache-clean-loop` | `(+1/-1)[1M]` | `dma-mapping.c` | `Igor Pecovnik` _ARM: dma-mapping: do not cross sparsemem sections in dcache clean loop_ |
|  📜  ✅  | `[patches.armbian/]` `ARM-dts-sun8i-h3-orangepi-pc-plus-keep-wifi-power-in-suspend` | `(+1/-0)[1M]` | `sun8i-h3-orangepi-pc-plus.dts` | `Igor Pecovnik` _ARM: dts: sun8i-h3-orangepi-pc-plus: keep Wi-Fi power in suspend_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-r40-add-clk-out-a` | `(+17/-0)[1M]` | `sun8i-r40.dtsi` | `The-going` _arm:dts: sun8i-r40 add clk_out_a fix bananam2ultra_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-r40-bananapi-m2-ultra-add-codec-analog` | `(+28/-0)[2M]` | `sun8i-r40.dtsi`, `sun8i-r40-bananapi-m2-ultra.dts` | `The-going` _arm:dts: sun8i-r40 bananapi-m2-ultra add codec analog_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-r40-bananapi-m2-ultra-add-usb0-otg-host` | `(+39/-0)[2M]` | `sun8i-r40.dtsi`, `sun8i-r40-bananapi-m2-ultra.dts` | `ell` _arm: dts: sun8i-r40: bananapi-m2-ultra: enable USB0 OTG as host_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun8i-v3s-s3-pinecube-enable-sound-codec` | `(+28/-0)[2M]` | `sun8i-s3-pinecube.dts`, `sun8i-v3s.dtsi` | `The-going` _arm:dts: sun8i-v3s/s3-pinecube enable sound codec_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-add-HDMI` | `(+55/-0)[1M]` | `sun9i-a80.dtsi` | `Igor Pecovnik` _ARM: dts: sun9i: a80: add HDMI_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-add-I2S1-and-HDMI-audio` | `(+28/-0)[1M]` | `sun9i-a80.dtsi` | `Igor Pecovnik` _ARM: dts: sun9i: a80: add I2S1 and HDMI audio_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-add-the-DMA-controller` | `(+9/-0)[1M]` | `sun9i-a80.dtsi` | `Igor Pecovnik` _ARM: dts: sun9i: a80: add the DMA controller_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-add-thermal-sensor` | `(+11/-0)[1M]` | `sun9i-a80.dtsi` | `Philipp Rossak` _arm:dts: sun9i-a80 add thermal sensor_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-add-thermal-zone` | `(+26/-0)[1M]` | `sun9i-a80.dtsi` | `Philipp Rossak` _arm:dts: sun9i-a80 add thermal zone_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-cpu-OPP-tables-and-thermal-trips` | `(+181/-0)[1M]` | `sun9i-a80.dtsi` | `Igor Pecovnik` _ARM: dts: sun9i: a80: add CPU OPP tables and thermal trips_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-cubieboard4-add-CPU-supplies` | `(+37/-1)[1M]` | `sun9i-a80-cubieboard4.dts` | `Igor Pecovnik` _ARM: dts: sun9i: a80-cubieboard4: add CPU supplies_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-cubieboard4-enable-Bluetooth` | `(+23/-0)[1M]` | `sun9i-a80-cubieboard4.dts` | `Igor Pecovnik` _arm: dts: sun9i-a80-cubieboard4: enable Bluetooth_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-cubieboard4-enable-HDMI-audio` | `(+8/-0)[1M]` | `sun9i-a80-cubieboard4.dts` | `Igor Pecovnik` _ARM: dts: sun9i: a80-cubieboard4: enable HDMI audio_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-cubieboard4-enable-HDMI` | `(+21/-0)[1M]` | `sun9i-a80-cubieboard4.dts` | `Igor Pecovnik` _ARM: dts: sun9i: a80-cubieboard4: enable HDMI_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-cubieboard4-enable-USB-host` | `(+46/-0)[1M]` | `sun9i-a80-cubieboard4.dts` | `Igor Pecovnik` _arm: dts: sun9i-a80-cubieboard4: enable USB host_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sun9i-a80-cubieboard4-red-LED-heartbeat` | `(+1/-0)[1M]` | `sun9i-a80-cubieboard4.dts` | `Igor Pecovnik` _arm: dts: sun9i-a80-cubieboard4: red LED heartbeat_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sunxi-h3-h5.dtsi-add-i2s0-i2s1-pins` | `(+10/-0)[1M]` | `sunxi-h3-h5.dtsi` | `The-going` _arm:dts:sunxi-h3-h5.dtsi add i2s0 i2s1 pins_ |
|  📜  ✅  | `[patches.armbian/]` `arm-dts-sunxi-h3-h5.dtsi-force-mmc0-bus-width` | `(+1/-0)[1M]` | `sunxi-h3-h5.dtsi` | `The-going` _arm:dts: sunxi-h3-h5.dtsi force mmc0 bus-width_ |
|  📜  ✅  | `[patches.armbian/]` `build-makefile-config-shell-use-bash` | `(+3/-1)[1M]` | `Makefile` | `The-going` _Makefile: CONFIG_SHELL fix for builddeb packaging_ |
|  📜  ✅  | `[patches.armbian/]` `build-scripts-add-overlay-compilation` | `(+21/-2)[3M]` | `Makefile.dtbinst`, `Makefile.dtbs`, `.gitignore` | `The-going` _scripts: add overlay compilation support_ |
|  📜  ✅  | `[patches.armbian/]` `build-scripts-add-scr-fixup-support` | `(+11/-0)[1M]` | `Makefile.lib` | `Werner` _sun50i-h616: add overlays and fixup_ |
|  📜  ✅  | `[patches.armbian/]` `build-scripts-dtc-enable-symbols-node` | `(+5/-0)[1M]` | `Makefile.dtbs` | `Patrick Yavitz` _Enable creation of __symbols__ node_ |
|  📜  ✅  | `[patches.armbian/]` `clk-sunxi-ng-a80-fix-the-audio-PLL` | `(+17/-3)[1M]` | `ccu-sun9i-a80.c` | `Igor Pecovnik` _clk: sunxi-ng: a80: fix the audio PLL_ |
|  📜  ✅  | `[patches.armbian/]` `clk-sunxi-ng-a80-prepare-CPU-clusters-for-cpufreq` | `(+50/-1)[1M]` | `ccu-sun9i-a80.c` | `Igor Pecovnik` _clk: sunxi-ng: a80: prepare the CPU clusters for cpufreq_ |
|  📜  ✅  | `[patches.armbian/]` `clk-sunxi-ng-h3-add-the-tve-clock` | `(+17/-2)[1M]` | `ccu-sun8i-h3.c` | `enthropy7` _clk: sunxi-ng: h3: add the TVE clock_ |
|  📜  ✅  | `[patches.armbian/]` `dmaengine-sun6i-add-A80-support` | `(+42/-8)[1M]` | `sun6i-dma.c` | `Igor Pecovnik` _dmaengine: sun6i: add A80 support_ |
|  📜  ✅  | `[patches.armbian/]` `Doc-dt-bindings-usb-allwinner-dwc3` | `(+39/-0)[1A]` | `allwinner,dwc3.txt` | `Icenowy Zheng` _Doc:dt-bindings:usb: add binding for DWC3 controller on Allwinner SoC_ |
|  📜  ✅  | `[patches.armbian/]` `drm-sun4i-fix-null-deref-when-unbinding-the-tv-encoder` | `(+0/-2)[1M]` | `sun4i_tv.c` | `enthropy7` _drm/sun4i: fix NULL deref when unbinding the TV encoder_ |
|  📜  ✅  | `[patches.armbian/]` `drm-sun4i-support-the-h3-and-h5-tv-encoders` | `(+98/-6)[3M]` | `sun8i_mixer.c`, `sun4i_tv.c`, `sun8i_mixer.h` | `enthropy7` _drm/sun4i: support the H3 and H5 TV encoders_ |
|  📜  ✅  | `[patches.armbian/]` `drv-asoc-ac200-codec` | `(+784/-0)[2M, 1A]` | `ac200.c`, `Kconfig`, `Makefile` | `Jernej Skrabec` _ASoC: AC200: Initial driver_ |
|  📜  ✅  | `[patches.armbian/]` `drv-asoc-sunxi-provoke-early-load-sun8i-codec-analog` | `(+1/-1)[1M]` | `Makefile` | `wuweidong` _sound:soc:sunxi: Provoke the early load of sun8i-codec-analog_ |
|  📜  ✅  | `[patches.armbian/]` `drv-asoc-sunxi-sun4i-codec-select-capture-source` | `(+47/-4)[1M]` | `sun4i-codec.c` | `The-going` _sound:soc:sunxi:sun4i-codec adcis select capture source_ |
|  📜  ✅  | `[patches.armbian/]` `drv-asoc-sunxi-sun8i-codec-analog-enable-sound` | `(+6/-2)[1M]` | `sun8i-codec-analog.c` | `The-going` _sound:soc:sunxi:sun8i-codec-analog enable sound_ |
|  📜  ✅  | `[patches.armbian/]` `drv-bluetooth-hci-sprd-broken-park-link-quirk-v6.16-plus` | `(+13/-1)[3M]` | `hci_ldisc.c`, `hci.h`, `hci_sync.c` | `Paolo Sabatino` _fix spreadtrum (sprd) bluetooth broken park link status_ |
|  📜  ✅  | `[patches.armbian/]` `drv-char-add-dump-reg-sysinfo-drivers` | `(+1445/-0)[2M, 8A]` | `dump_reg.c`, `dump_reg_misc.c`, `sunxi-sysinfo.c`, `dump_reg.h`, `Kconfig`, `Makefile` | `afaulkner420` _Add dump_reg and sunxi-sysinfo drivers_ |
|  📜  ✅  | `[patches.armbian/]` `drv-clk-gate-add-regmap-gate-support` | `(+89/-7)[2M]` | `clk-gate.c`, `clk-provider.h` | `Andre Przywara` _clk: gate: add support for regmap based gates_ |
|  📜  ✅  | `[patches.armbian/]` `drv-clk-sunxi-ng-fix-clock-handling-for-ccu-sun55i-a523` | `(+13/-1)[2M]` | `ccu-sun55i-a523.c`, `sun55i-a523-ccu.h` | `Marvin Wewer` _clk: sunxi-ng: add A523 USB3 ref clock and reset_ |
|  📜  ✅  | `[patches.armbian/]` `drv-clk-sunxi-ng-a523-fix-mp-clocks` | `(+42/-36)[1M]` | `ccu-sun55i-a523.c` | `Juan Sanchez Fuentes` _clk: sunxi-ng: a523: fix MP clocks with only one divider_ |
|  📜  ✅  | `[patches.armbian/]` `drv-clk-sunxi-ng-a523-r-fix-mp-clocks` | `(+5/-8)[1M]` | `ccu-sun55i-a523-r.c` | `Juan Sanchez Fuentes` _clk: sunxi-ng: a523-r: fix MP clocks with P divider only_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `arm64-dts-allwinner-sun55i-a523-add-e906-rproc-node` | `(+78/-0)[2M]` | `sun55i-t527-avaota-a1.dts`, `sun55i-a523.dtsi` | `Juan Sanchez Fuentes` _arm64: dts: allwinner: a523: add E906 RISC-V remoteproc node_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `arm64-dts-allwinner-sun55i-a523-add-ir-receiver-nodes` | `(+28/-0)[1M]` | `sun55i-a523.dtsi` | `Justin Suess` _arm64: dts: allwinner: a523: add IR receiver nodes_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-allwinner-sun55i-t527-avaota-a1-enable-ir` | `(+11/-0)[2M]` | `sun55i-a523.dtsi`, `sun55i-t527-avaota-a1.dts` | `Justin Suess` _arm64: dts: allwinner: a523: enable IR on the Avaota A1_ |
|  📜  ✅  | `[patches.armbian/]` `arm64-dts-allwinner-sun55i-t527-avaota-a1-enable-spi-lcd` | `(+32/-0)[1M]` | `sun55i-t527-avaota-a1.dts` | `Juan Sanchez Fuentes` _arm64: dts: allwinner: sun55i-t527-avaota-a1: Enable SPI LCD_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `arm64-dts-and-drivers-sun55i-t527-avaota-a1-st7789v-lcd-fix` | `(+45/-58)[3M]` | `fb_st7789v.c`, `panel-sitronix-st7789v.c`, `sun55i-t527-avaota-a1.dts` | `Juan Sanchez Fuentes` _Avaota A1: fix ST7789V LCD write errors and panel geometry_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `arm64-dts-sun55i-a527-cubie-a5e-enable-spi-nor` | `(+12/-0)[1M]` | `sun55i-a527-cubie-a5e.dts` | `Juan Sanchez Fuentes` _arm64: dts: sun55i-a527-cubie-a5e: enable SPI NOR_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `arm64-dts-sun55i-t527-avaota-a1-enable-wifi-bt` | `(+43/-0)[1M]` | `sun55i-t527-avaota-a1.dts` | `Juan Sanchez Fuentes` _arm64: dts: allwinner: t527: avaota-a1: enable WiFi and Bluetooth_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `drm-sun4i-a523-crtc-vblank-order` | `(+2/-2)[1M]` | `sun4i_crtc.c` | `juanesf` _[ARCHEOLOGY] sun55iw3: HDMI display pipeline (DE33/RCQ), PCIe/NVMe on U-Boot 2026.07 and board support (#10587)_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `drv-mailbox-sun55i-add-msgbox-driver` | `(+587/-0)[2M, 2A]` | `sun55i-msgbox.c`, `allwinner,sun55i-a523-msgbox.yaml`, `Kconfig`, `Makefile` | `Juan Sanchez Fuentes` _mailbox: sun55i: add T527/A523 msgbox driver_ |
|  📜  ✅  | `[patches.armbian/]` `drv-remoteproc-copy-rsc-table-to-iomem` | `(+25/-11)[5M]` | `remoteproc_core.c`, `imx_rproc.c`, `remoteproc_internal.h`, `remoteproc_elf_loader.c`, `remoteproc.h` | `Juan Sanchez` _remoteproc: copy the loaded resource table into MMIO memory_ |
|  📜  ✅  | `[patches.armbian/]` `drv-remoteproc-sun55i-e906-add-rv-driver` | `(+781/-0)[2M, 2A]` | `sun55i_e906_rproc.c`, `allwinner,sun55i-a523-rproc.yaml`, `Kconfig`, `Makefile` | `Juan Sanchez` _[ARCHEOLOGY] sunxi-7.1: add E906 RISC-V remoteproc support_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `drv-rpmsg-char-bind-sunxi-channels` | `(+38/-0)[2M]` | `rpmsg_char.c`, `virtio_rpmsg_bus.c` | `Juan Sanchez` _[ARCHEOLOGY] sunxi-7.1: add E906 RISC-V remoteproc support_ |
|  📜  ✅  | `[patches.armbian/]` `drv-staging-media-sunxi-cedrus-add-sun55i-a523-video-engine` | `(+34/-4)[4M]` | `cedrus.c`, `cedrus_hw.c`, `cedrus.h`, `allwinner,sun4i-a10-video-engine.yaml` | `juanesf` _[ARCHEOLOGY] sun55iw3: HDMI display pipeline (DE33/RCQ), PCIe/NVMe on U-Boot 2026.07 and board support (#10587)_ |
|  📜  ✅  | `[patches.armbian/]` `dt-bindings-display-dw-hdmi-add-sun55i-a523-and-sound-dai-cells` | `(+60/-21)[1M]` | `allwinner,sun8i-a83t-dw-hdmi.yaml` | `Juan Sanchez` _dt-bindings: display: dw-hdmi: add sun55i A523 compatible and #sound-dai-cells_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `dt-bindings-sound-simple-card-add-playback-capture-only` | `(+10/-0)[1M]` | `simple-card.yaml` | `Juan Sanchez` _dt-bindings: sound: simple-card: add playback-only and capture-only_ |
|  📜  ✅  | `[patches.armbian/]` `drv-asoc-simple-card-utils-fix-playback-only` | `(+2/-2)[1M]` | `simple-card-utils.c` | `Shengjiu Wang` _ASoC: simple-card-utils: Check value of is_playback_only and is_capture_only_ |
|  📜  ✅  | `[patches.armbian/]` `media-dt-bindings-allwinner-sun4i-a10-ir-add-a523-compatible` | `(+5/-3)[1M]` | `allwinner,sun4i-a10-ir.yaml` | `Justin Suess` _media: dt-bindings: allwinner,sun4i-a10-ir: add A523 compatible_ |
|  📜  ✅  | `[patches.armbian/]` `drv-clk-sunxi-ng-ccu-common-atomic-lock-wait` | `(+10/-2)[1M]` | `ccu_common.c` | `Alastair D'Silva` _[ARCHEOLOGY] clk: sunxi-ng: ccu_common: Replace ktime-dependent lock wait loop with udelay (#10119)_ |
|  📜  ✅  | `[patches.armbian/]` `drv-clocksource-timer-fix-a64-timejump` | `(+14/-11)[1M]` | `arm_arch_timer.c` | `The-going` _drv:clocksource:arm_arch_timer fix a64 timejump_ |
|  📜  ✅  | `[patches.armbian/]` `drv-devfreq-sun8i-a33-mbus-disable-autorefresh` | `(+2/-2)[1M]` | `sun8i-a33-mbus.c` | `Gunjan Gupta` _drivers: devfreq: sun8i-a33-mbus: disable autorefresh_ |
|  📜  ✅  | `[patches.armbian/]` `drv-drm-panel-simple-add-olinuxino-lcd` | `(+121/-4)[1M]` | `panel-simple.c` | `The-going` _drv:gpu:drm: panel-simple Add compability olinuxino lcd_ |
|  📜  ✅  | `[patches.armbian/]` `drm-prime-limit-scatter-list-size-with-dedicated-dma-device` | `(+1/-1)[1M]` | `drm_prime.c` | `Chen-Yu Tsai` _drm/prime: Limit scatter list size with dedicated DMA device_ |
|  📜  ✅  | `[patches.armbian/]` `drm-sun4i-dw-hdmi-add-A80-support` | `(+20/-0)[1M]` | `sun8i_dw_hdmi.c` | `Igor Pecovnik` _drm/sun4i: dw-hdmi: add A80 support_ |
|  📜  ✅  | `[patches.armbian/]` `drm-gem-dma-support-dedicated-dma-device-for-allocation-and-mapping` | `(+12/-9)[1M]` | `drm_gem_dma_helper.c` | `Chen-Yu Tsai` _drm/gem-dma: Support dedicated DMA device for allocation and mapping_ |
|  📜  ✅  | `[patches.armbian/]` `drm-sun4i-use-backend-mixer-as-dedicated-dma-device` | `(+30/-24)[2M]` | `sun4i_backend.c`, `sun8i_mixer.c` | `Chen-Yu Tsai` _drm/sun4i: Use backend/mixer as dedicated DMA device_ |
|  📜  ✅  | `[patches.armbian/]` `drv-drm-sun4i-hdmi-add-audio-support` | `(+523/-11)[4M, 1A]` | `sun4i_hdmi_audio.c`, `sun4i_hdmi.h`, `sun4i_hdmi_enc.c`, `Kconfig`, `Makefile` | `The-going` _drv:gpu:drm:sun4i: Add HDMI audio support_ |
|  📜  ✅  | `[patches.armbian/]` `drv-i2c-busses-mv64xxx-pin-runtime-pm` | `(+12/-0)[1M]` | `i2c-mv64xxx.c` | `Alastair D'Silva` _[ARCHEOLOGY] sunxi: pin mmc and i2c controllers to active to break circular PM deadlock (#10120)_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-bluetooth-hci-ignore-def-link-policy-error` | `(+12/-2)[1M]` | `hci_sync.c` | `EvilOlaf` _[ARCHEOLOGY] bt-hci: ignore -22 for uwe5622_ |
|  📜  ✅  | `[patches.armbian/]` `drv-iio-adc-axp20x-enable-hwmon-thermal` | `(+91/-0)[2M]` | `axp20x_adc.c`, `axp803.dtsi` | `Mitko Gamishev` _drv:iio:adc:axp20x_adc arm64:dts:axp803 hwmon enable thermal_ |
|  📜  ✅  | `[patches.armbian/]` `drv-input-axp20x-pek-enable-wakeup-shutdown` | `(+6/-0)[1M]` | `axp20x-pek.c` | `Samuel Holland` _Input: axp20x-pek - allow wakeup after shutdown_ |
|  📜  ✅  | `[patches.armbian/]` `drv-input-touchscreen-sun4i-ts-Enable-parsing` | `(+15/-4)[1M]` | `sun4i-ts.c` | `Mitko Gamishev` _drv:input:touchscreen:sun4i-ts Enable parsing_ |
|  📜  ✅  | `[patches.armbian/]` `drv-input-tsc2007-add-polling-method` | `(+100/-0)[2M]` | `tsc2007_core.c`, `tsc2007.h` | `Alan` _Optimize: TSC2007 touchscreen add polling method_ |
|  📜  ✅  | `[patches.armbian/]` `drv-iommu-sunxi-add-iommu-driver` | `(+2319/-0)[2M, 5A]` | `sun55i-iommu.c`, `sun55i-iommu-pgtable.c`, `sun55i-iommu-pgtable.h`, `sun55i-iommu.h`, `sunxi-iommu.h`, `Kconfig`, `Makefile` | `Marvin Wewer` _iommu: sunxi: add sun55i (A523) IOMMU driver_ |
|  📜  ✅  | `[patches.armbian/]` `drv-leds-ws2812-add-h616-driver` | `(+235/-0)[2M, 1A]` | `leds-ws2812.c`, `Kconfig`, `Makefile` | `Alan` _Add: ws2812 RGB driver for allwinner H616_ |
|  📜  ✅  | `[patches.armbian/]` `drv-media-dvb-frontends-si2168-fix-cmd-timeout` | `(+1/-1)[1M]` | `si2168.c` | `Koumes` _drv:media:dvb-frontends:si2168: fix cmd timeout_ |
|  📜  ✅  | `[patches.armbian/]` `drv-mfd-ac200-add-ephy-syscon` | `(+309/-0)[2M, 1A]` | `ac200-ephy-ctl.c`, `Kconfig`, `Makefile` | `Andre Przywara` _mfd: Add support for X-Powers AC200 EPHY syscon_ |
|  📜  ✅  | `[patches.armbian/]` `drv-mfd-axp20x-add-sysfs` | `(+614/-0)[1M]` | `axp20x.c` | `The-going` _drv:mfd:axp20x add sysfs interface_ |
|  📜  ✅  | `[patches.armbian/]` `drv-misc-sunxi-add-addr-mgt-driver-uwe5622` | `(+547/-0)[2M, 4A]` | `sunxi-addr.c`, `sha256.c`, `Kconfig`, `Makefile` | `afaulkner420` _Add sunxi-addr driver - Used to fix uwe5622 bluetooth MAC addresses_ |
|  📜  ✅  | `[patches.armbian/]` `drv-mmc-sunxi-add-r40-emmc-compatible` | `(+7/-0)[1M]` | `sunxi-mmc.c` | `ell` _mmc: sunxi: add sun8i-r40-emmc compatible, fixes eMMC boot hang_ |
|  📜  ✅  | `[patches.armbian/]` `drv-mtd-nand-add-h27ubg8t2btr-nand` | `(+4/-0)[1M]` | `nand_ids.c` | `The-going` _drv:mtd:nand:raw:nand_ids.c add H27UBG8T2BTR-BC nand_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-stmmac-dwmac-sun8i-add-second-emac-clock` | `(+10/-2)[1M]` | `dwmac-sun8i.c` | `Andre Przywara` _drv:net:stmmac:dwmac-sun8i: second EMAC clock register_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-phy-ac300-phy-add` | `(+361/-0)[2M, 1A]` | `ac300-phy.c`, `Kconfig`, `Makefile` | `Alastair D'Silva` _[ARCHEOLOGY] Feature/sunxi mainline stmmac ac300 (#9952)_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-phy-add-maxio-mae0621-phy-driver` | `(+539/-0)[3M, 1A]` | `maxio.c`, `stmmac_main.c`, `Kconfig`, `Makefile` | `KickPi` _drv: net: phy: Add Maxio MAE0621 PHY driver_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-phy-maxio-honor-rgmii-delay-modes` | `(+48/-19)[1M]` | `maxio.c` | `Novice-PG` _[ARCHEOLOGY] kickpi-k2b-v2: fix 1G Ethernet packet loss (RGMII delays)_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-stmmac-dwmac-sun8i-add-h616-internal-phy` | `(+64/-11)[1M]` | `dwmac-sun8i.c` | `Alastair D'Silva` _[ARCHEOLOGY] Feature/sunxi mainline stmmac ac300 (#9952)_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-stmmac-dwmac-sun8i-reset-emac-on-open` | `(+30/-19)[1M]` | `dwmac-sun8i.c` | `Pedro Santos` _drv:net:stmmac:dwmac-sun8i: reset the EMAC when opening, not probing_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-usb-r8152-add-led-configuration-from-of` | `(+23/-0)[1M]` | `r8152.c` | `David Bauer` _net: usb: r8152: add LED configuration from OF_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-wireless-brcmfmac-add-ap6330-firmware` | `(+5/-1)[1M]` | `sdio.c` | `Al Nahian` _[ARCHEOLOGY] Feat/add tanix tx6s axp313 (#10290)_ |
|  📜  ✅  | `[patches.armbian/]` `drv-net-wireless-rtw88-sdio-fix-interrupt-storm` | `(+0/-1)[1M]` | `sdio.c` | `Alastair D'Silva` _wifi: rtw88: sdio: Fix RCU stalls / interrupt storm by clearing RX_REQUEST interrupt_ |
|  📜  ✅  | `[patches.armbian/]` `drv-nvmem-sunxi-add-chipid-serial-helpers` | `(+28/-0)[1M]` | `sunxi_sid.c` | `The-going` _nvmem: sunxi_sid: add sunxi_get_soc_chipid, sunxi_get_serial_ |
|  📜  ✅  | `[patches.armbian/]` `drv-nvmem-sunxi-add-h616-support` | `(+7/-0)[1M]` | `sunxi_sid.c` | `Kali Prasad` _drv:nvmem:sunxi_sid: Support SID on H616_ |
|  📜  ✅  | `[patches.armbian/]` `drv-of-add-overlay-configfs-interface` | `(+287/-1)[3M, 1A]` | `configfs.c`, `Kconfig`, `fdt_address.c`, `Makefile` | `The-going` _drv:of: Device Tree Overlay ConfigFS interface_ |
|  📜  ✅  | `[patches.armbian/]` `drv-pci-sunxi-enable-pcie-support` | `(+3190/-0)[2M, 8A]` | `pcie-sunxi-plat.c`, `pcie-sunxi-rc.c`, `pcie-sunxi.h`, `pcie-sunxi-dma.h`, `pcie-sunxi-dma.c`, `sunxi-gpio.h`, `Kconfig`, `Makefile` | `Marvin Wewer` _pci: sunxi: add sun55i PCIe RC and DMA support_ |
|  📜  ✅  | `[patches.armbian/]` `drv-phy-allwinner-add-pcie-usb3-driver` | `(+1202/-0)[2M, 1A]` | `sunxi-inno-combophy.c`, `Kconfig`, `Makefile` | `Marvin Wewer` _phy: allwinner: add INNO PCIe/USB3 combo PHY driver_ |
|  📜  ✅  | `[patches.armbian/]` `drv-phy-sun4i-usb-Allow-reset-line-to-be-shared` | `(+1/-1)[1M]` | `phy-sun4i-usb.c` | `Andre Przywara` _drv:phy: sun4i-usb: Allow reset line to be shared_ |
|  📜  ✅  | `[patches.armbian/]` `drv-pinctrl-sun50i-a64-disable-strict-mode` | `(+1/-0)[1M]` | `pinctrl-sun50i-a64.c` | `WaterByWind` _drv:pinctrl: pinctrl-sun50i-a64 disable_strict_mode_ |
|  📜  ✅  | `[patches.armbian/]` `drv-pinctrl-sun50i-h6-disable-strict-mode` | `(+1/-0)[1M]` | `pinctrl-sun50i-h6.c` | `The-going` _drv:pinctrl:sunxi:pinctrl-sun50i-h6.c GPIO disable_strict_mode_ |
|  📜  ✅  | `[patches.armbian/]` `drv-pwm-sun50i-h616-add-pwm-driver` | `(+1264/-0)[2M, 2A]` | `pwm-sunxi-enhance.c`, `pwm-sunxi-enhance.h`, `Kconfig`, `Makefile` | `chraac` _drivers: pwm: Add pwm-sunxi-enhance driver for h616_ |
|  📜  ✅  | `[patches.armbian/]` `drv-rtc-pcf8563-pass-driver-data-to-irq-handler` | `(+1/-1)[1M]` | `rtc-pcf8563.c` | `Igor Velkov` _rtc: pcf8563: pass the driver data to the alarm interrupt handler_ |
|  📜  ✅  | `[patches.armbian/]` `drv-soc-sunxi-sram-add-h616-sram-c1` | `(+10/-0)[1M]` | `sunxi_sram.c` | `Jernej Skrabec` _drv:soc: sunxi: sram: Add SRAM C1 H616 handling_ |
|  📜  ✅  | `[patches.armbian/]` `drv-spidev-add-armbian-spi-dev-compatible` | `(+4/-0)[1M]` | `spidev.c` | `The-going` _drv:spi:spidev Add armbian spi-dev compatible_ |
|  📜  ✅  | `[patches.armbian/]` `drv-spidev-fix-include-uapi-header` | `(+1/-2)[1M]` | `spidev.c` | `The-going` _Fix include uapi spi spidev module_ |
|  📜  ✅  | `[patches.armbian/]` `drv-spi-sun4i-fix-sck-low` | `(+3/-2)[1M]` | `spi-sun4i.c` | `The-going` _drv:spi:spi-sun4i.c spi bug low on sck_ |
|  📜  ✅  | `[patches.armbian/]` `drv-staging-media-sunxi-cedrus-add-H616-variant` | `(+4/-0)[1M]` | `cedrus.c` | `Jernej Skrabec` _drv:staging:media:sunxi:cedrus: add H616 variant_ |
|  📜  ✅  | `[patches.armbian/]` `drv-staging-rtl8723bs-AP-bugfix` | `(+1/-1)[1M]` | `ioctl_cfg80211.c` | `The-going` _drv:staging:rtl8723bs: AP bugfix_ |
|  📜  ✅  | `[patches.armbian/]` `drv-thermal-sun8i-guard-against-null-caldata` | `(+3/-3)[1M]` | `sun8i_thermal.c` | `ell` _drv:thermal:sun8i: guard against NULL caldata in calibrate functions_ |
|  📜  ✅  | `[patches.armbian/]` `drv-usb-gadget-composite-rename-serial-manufacturer` | `(+1/-1)[1M]` | `composite.c` | `The-going` _drv:usb:gadget:composite rename gadget serial console manufacturer_ |
|  📜  ✅  | `[patches.armbian/]` `drv-video-st7796s-fb-tft-driver` | `(+111/-0)[2M, 1A]` | `fb_st7796s.c`, `Kconfig`, `Makefile` | `Alan` _Add: FB_TFT ST7796S driver_ |
|  📜  ✅  | `[patches.armbian/]` `dt-bindings-display-allwinner-add-h3-h5-tv-encoder-and-mixer1` | `(+6/-2)[2M]` | `allwinner,sun4i-a10-tv-encoder.yaml`, `allwinner,sun8i-a83t-de2-mixer.yaml` | `enthropy7` _dt-bindings: display: allwinner: add H3/H5 TV encoder and H3 mixer1_ |
|  📜  ✅  | `[patches.armbian/]` `include-uapi-drm_fourcc-add-ARM-tiled-format-modifier` | `(+9/-0)[1M]` | `drm_fourcc.h` | `Qiang Yu` _include:uapi:drm_fourcc: add ARM tiled format modifier_ |
|  📜  ✅  | `[patches.armbian/]` `soc-sunxi-mbus-drop-the-A80-display-engine` | `(+0/-2)[1M]` | `sunxi_mbus.c` | `Igor Pecovnik` _soc: sunxi: mbus: drop the A80 display engine_ |
|  📜  ✅  | `[patches.armbian/]` `thermal-sun8i-add-A80-THS-support` | `(+14/-0)[1M]` | `sun8i_thermal.c` | `Igor Pecovnik` _thermal/drivers/sun8i: add A80 THS support_ |
|  📜  ✅  | `[patches.armbian/]` `wifi-brcmfmac-demote-unexpected-firmware-channel-message` | `(+2/-2)[1M]` | `cfg80211.c` | `Igor Pecovnik` _wifi: brcmfmac: demote unexpected firmware channel message to debug_ |
|  📜  ✅  | `[patches.armbian/]` `wifi-brcmfmac-ignore-P2P-probe-requests-without-P2P-interface` | `(+7/-0)[1M]` | `fweh.c` | `Igor Pecovnik` _wifi: brcmfmac: ignore P2P probe requests without a P2P interface_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `7000-drm-sun55i-a523-hdmi` | `(+2249/-18)[9M, 3A]` | `sun55i_de.c`, `sun8i_hdmi_phy.c`, `sun55i_de_scaler.h`, `sun55i_de.h`, `sun8i_mixer.c`, `sun4i_tcon.c`, `sun50i-iommu.c`, `sun8i_mixer.h`, `sunxi_engine.h`, `Makefile`, `sun4i_backend.c`, `sun8i_dw_hdmi.h` | `juanesf` _[ARCHEOLOGY] sun55iw3: HDMI display pipeline (DE33/RCQ), PCIe/NVMe on U-Boot 2026.07 and board support (#10587)_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `7002-clk-and-dts-sun55i-a523` | `(+433/-3)[7M]` | `sun55i-a523.dtsi`, `sun55i-a527-cubie-a5e.dts`, `sun55i-t527-orangepi-4a.dts`, `sun55i-t527-avaota-a1.dts`, `ccu-sun55i-a523.c`, `sun55i-a523-ccu.h` | `juanesf` _[ARCHEOLOGY] sun55iw3: HDMI display pipeline (DE33/RCQ), PCIe/NVMe on U-Boot 2026.07 and board support (#10587)_ |
|  📜  ✅  | `[patches.armbian/]` `7003-drm-sun55i-a523-cursor-rcq` | `(+87/-8)[1M]` | `sun55i_de.c` | `juanesf` _[ARCHEOLOGY] sun55iw3: HDMI display pipeline (DE33/RCQ), PCIe/NVMe on U-Boot 2026.07 and board support (#10587)_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `7005-clk-and-dts-sun55i-a523-remoteproc` | `(+38/-0)[1M]` | `sun55i-a527-cubie-a5e.dts` | `juanesf` _[ARCHEOLOGY] sun55iw3: HDMI display pipeline (DE33/RCQ), PCIe/NVMe on U-Boot 2026.07 and board support (#10587)_ |
|  📜  ⚠️`[needs_rebase]`  | `[patches.armbian/]` `7006-arm64-dts-sun55i-a523-hdmi-audio` | `(+115/-0)[4M]` | `sun55i-a527-cubie-a5e.dts`, `sun55i-t527-avaota-a1.dts`, `sun55i-t527-orangepi-4a.dts`, `sun55i-a523.dtsi` | `Juan Sanchez` _arm64: dts: allwinner: a523: HDMI audio through I2S2 and DW-HDMI_ |


</p></details>
