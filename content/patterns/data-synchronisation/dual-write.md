---
title: "Dual Write"
description: "Writing data to both the legacy and modern system"
menu:
  doc:
    parent: data-synchronization
    name: Dual Write
    identifier: dual-write
    weight: 10
    pre: call_split
---

The **Dual Write** pattern is used during legacy migration to keep both the old and new systems up to date. Each write operation is applied in the database of both of systems.
