#!/bin/bash
set -u
DEST=/boot/board-evidence
mkdir -p "$DEST"
{
  echo "=== date ==="; date -u
  echo "=== model ==="; cat /proc/device-tree/model 2>&1
  echo "=== compatible ==="; tr '\0' ' ' < /proc/device-tree/compatible 2>&1
  echo "=== uname ==="; uname -a
  echo "=== lsblk ==="; lsblk
  echo "=== free ==="; free -h
  echo "=== armbianEnv.txt ==="; cat /boot/armbianEnv.txt
  echo "=== ip a ==="; ip a
  echo "=== ip route ==="; ip route
  echo "=== lsusb ==="; lsusb
  echo "=== dmesg (full) ==="; dmesg
  echo "=== dmesg SATA/ETH ==="; dmesg | rtg -iE 'ahci-sunxi|sun4i-emac|error -5|no PHY|panic|BUG:|Oops' || echo "none"
  echo "=== armbian-release ==="; cat /etc/armbian-release
} > "$DEST/log.txt" 2>&1
chmod -R a+r "$DEST"
echo "wrote $DEST/log.txt ($(du -h $DEST/log.txt | cut -f1))"
echo "=== ip a ==="; ip a
echo "=== ssh: root@<ip-above> ==="
