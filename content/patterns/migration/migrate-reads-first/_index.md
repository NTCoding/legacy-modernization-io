---
title: "Migrate Reads First"
description: "Migrate read operations first within a specific scope"
subtitle: false
menu:
  doc:
    name: Migrate Reads First
    parent: migration
    pre: visibility
categories: [migration]
tags: []
weight: 7
---

When planning a migration for a specific subsystem/subdomain, one approach to enable a gradual migration is to migrate read operations first. All read operations will be handled by the new system, while all write operations still go to the legacy and are synchronised across to the new.

<div class="title title--sans title--third">
  <img src="/patterns/migration/migrate-reads-first/migrate-reads-first.svg" alt="Migrate Reads First Pattern" style="max-width: 100%; width: 100%; height: auto;">
</div>

{{< comingsoon >}}

