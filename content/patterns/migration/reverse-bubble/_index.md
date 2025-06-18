---
title: "Reverse Bubble"
description: "Placeholder for the Reverse Bubble pattern."
featured: "/patterns/migration/bubble/bubble.png"
subtitle: false
menu:
  doc:
    name: Reverse Bubble
    parent: migration
    pre: bubble_chart
categories: [migration]
weight: 4
---

The reverse bubble pattern is based on the [Bubble](/content/patterns/migration/bubble/_index.md) pattern. However, rather than the bubble sitting in front of the legacy, the bubble is built behind the legacy and gradually moves logic from the legacy to the bubble and proxies requests from the legacy to the bubble.

When all of the logic has been moved to the reverse bubble, the traffic from the legacy can be redirected to the reverse bubble and the legacy decommissioned.

<div class="title title--sans title--third">
  <img src="/patterns/migration/reverse-bubble/reverse-bubble.png" alt="Reverse Bubble Pattern" style="max-width: 100%; width: 100%; height: auto;">
</div>

{{< comingsoon >}}