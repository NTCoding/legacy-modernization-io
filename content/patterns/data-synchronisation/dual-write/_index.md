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

The **Dual Write** pattern applied in the context of legacy migration involves the new system writing to both the new datastore and the legacy datastore at the same time, so that both the new application and legacy have upto data information in their datastores. It's immediately consistent rather than relying on asynchronous events that provide only eventual consistency.

{{< comingsoon >}}
