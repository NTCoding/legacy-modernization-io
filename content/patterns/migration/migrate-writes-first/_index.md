---
title: "Migrate Writes First"
description: "Migrate write operations first within a specific scope"
subtitle: false
menu:
  doc:
    name: Migrate Writes First
    parent: migration
    pre: edit_note
categories: [migration]
tags: []
weight: 8
---

When planning a migration for a specific subsystem/subdomain, one approach to enable a gradual migration is to migrate the write operations first. All write operations will be handled by the new system and synchronised across to the legacy which still handles all read operations within the scope.

<div class="title title--sans title--third">
  <img src="/patterns/migration/migrate-writes-first/migrate-writes-first.png" alt="Migrate Writes First Pattern" style="max-width: 100%; width: 100%; height: auto;">
</div>

{{< comingsoon >}}
