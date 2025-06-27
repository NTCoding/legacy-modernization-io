---
title: "Sync and Backfill"
description: "Synchronize ongoing changes while backfilling historical data"
featured: "/patterns/data-synchronisation/sync-and-backfill/sync-and-backfill.svg"
subtitle: false
menu:
  doc:
    name: Sync and Backfill
    parent: data-synchronization
    pre: sync
categories: [data-synchronization]
tags: []
weight: 5
---

Sync and Backfill is a data synchronization pattern that combines real-time or near-real-time synchronization of ongoing changes with a separate process to backfill historical data. This approach allows systems to begin processing new data immediately while gradually catching up on past records, enabling faster initial deployment and reduced downtime during data migration.

{{< comingsoon >}}