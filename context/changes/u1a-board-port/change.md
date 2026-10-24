---
change_id: u1a-board-port
title: U1A board port (measyu1a)
status: implementing
created: 2026-10-24
updated: 2026-10-24
archived_at: null
archived_at: null
---

## Notes

Next slice after the go/no-go PASS. Add `config/boards/measyu1a.tvb` and the `sun4i-a10-measy-u1a` DTS, build the current 6.18 image in Docker, back up and flash the card, and verify the boot, Wi-Fi, and NAND guardrail.
