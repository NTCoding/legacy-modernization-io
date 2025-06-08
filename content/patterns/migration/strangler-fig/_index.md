---
title: "Strangler Fig Pattern"
description: "Gradually replace legacy systems by building new functionality around them."
subtitle: false
menu:
  doc:
    name: Strangler Fig
    parent: migration
    pre: nature
categories: [migration]
tags: ["incremental modernization"]
weight: 1
---

# Strangler Fig Pattern

The Strangler Fig Pattern is a technique for modernizing legacy systems by incrementally replacing them with new functionality while keeping the old system operational.

## How It Works

1. Identify a small, self-contained piece of functionality in the legacy system.
2. Build a new implementation for that functionality in the modern system.
3. Redirect traffic or usage from the legacy system to the new implementation.
4. Repeat the process until the legacy system is fully replaced.

## Benefits

- **Incremental Modernization**: Avoids the risks of a "big bang" rewrite.
- **Reduced Downtime**: The legacy system remains operational during the transition.
- **Improved Flexibility**: Allows for gradual adoption of modern technologies.

## Drawbacks

- **Increased Complexity**: During the transition, you must maintain both the legacy and modern systems.
- **Longer Timeframe**: Incremental modernization can take longer than a full rewrite.
- **Dependency Management**: Ensuring smooth integration between old and new systems can be challenging.

## When to Use

The Strangler Fig Pattern is ideal when:
- The legacy system is too large or complex to replace all at once.
- You need to minimize disruption to users during modernization.
- You want to adopt modern technologies incrementally.