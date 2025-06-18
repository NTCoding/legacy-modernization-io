---
title: "Legacy Event Republishing"
description: "Convert events from the legacy into the new model and republish them"
subtitle: false
menu:
  doc:
    name: Legacy Event Republishing
    parent: migration
    pre: replay
categories: [migration]
tags: []
weight: 6
---

Events coming out of a legacy system represent the legacy model. Allowing many consumers to consume raw legacy events means all of those consumers are coupled to the legacy model. The Legacy Event Republishing pattern requires the domain conceptually responsible for a legacy event to translate it to the new model and then republish to other domains who are therefore decoupled from the legacy model.

<div class="title title--sans title--third">
  <img src="/patterns/migration/legacy-event-republishing/legacy-event-republishing.png" alt="Legacy Event Republishing Pattern" style="max-width: 100%; width: 100%; height: auto;">
</div>

{{< comingsoon >}}

