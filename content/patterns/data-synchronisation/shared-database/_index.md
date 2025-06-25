---
title: "Shared Database"
description: "Share the same database between new and legacy to minimise synchronisation"
featured: "/patterns/data-synchronisation/shared-database/shared-database.svg"
subtitle: false
menu:
  doc:
    name: Shared Database
    parent: data-synchronization
    pre: storage
categories: [data-synchronization]
tags: []
weight: 10
---

To avoid having to synchronise the data between new and legacy systems, a shared database can be used in a configuration where both new and legacy read and write the same data, benefitting from the transactional guarantees offered by the database..

<div style="text-align: center; margin: 2rem 0;">
  <img src="/patterns/data-synchronisation/shared-database/shared-database.svg" alt="Shared Database Pattern Diagram" style="max-width: 100%; height: auto;">
</div>

{{< comingsoon >}}
