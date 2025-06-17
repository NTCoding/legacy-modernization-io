---
title: "Migrate Reads First"
description: "TODO"
subtitle: false
menu:
  doc:
    name: Migrate Reads First
    parent: migration
    pre: visibility
categories: [migration]
tags: []
weight: 2
---

When planning a migration for a specific subsystem/subdomain, one approach to enable a gradual migration is to migrate read operations first. All read operations will be handled by the new system, while all write operations still go to the legacy and are synchronised across to the new.

{{< comingsoon >}}

