---
title: "Bubble"
description: "Gradually modernize a subsystem by building a new domain model."
featured: "/patterns/migration/bubble/bubble.png"
subtitle: false
menu:
  doc:
    name: Bubble
    parent: migration
    pre: bubble_chart
categories: [migration]
tags: []
weight: 12
---

The Bubble or Bubble Context pattern was defined by Eric Evans, the author of Domain-Driven Design. The idea is to gradually build a new domain model for a given subsystem/subdomain that sits in front of the legacy model.

Over time, as more logic gets built in the new model (the bubble), it delegates less and less to the legacy, until eventually the bubble "pops" - the legacy is gone.

<div class="title title--sans title--third">
  <img src="/patterns/migration/bubble/bubble.png" alt="Bubble pattern" style="max-width: 100%; width: 100%; height: auto;">
</div>


## How It Works

TODO

## Benefits

- TODO

## Drawbacks

- TODO

## When to Use

TODO
