---
title: "Strangler Fig"
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

The Strangler Fig pattern is used to gradually migrate away from a legacy system. As each new piece of code is built, traffic is directed away from the old system to the new piece.

## How It Works

1. Identify a part of the system to migrate
2. Move or re-implement the functionality outside of the legacy system
3. Introduce a router that is able to intercept and redirect requests
4. Route request to the new code instead of the old
5. Repeat as required

## Benefits

- **Incremental Modernization**: Avoids the risks of a "big bang" rewrite.
- **Benefit from modernized code**: Instantly start building some functionality outside of the legacy with new tech and potentially without tech debt
- **No need to fully replace the legacy**: You don't have to replace all of the legacy, you can keep some parts if they aren't worth modernizing 

## Drawbacks

- **Increased Complexity**: During the transition, you must maintain both the legacy and modern systems. Data synchronization can be extremely challenging.
- **Longer Timeframe**: Incremental modernization can take longer than a full rewrite.
- **Incomplete Migration**: There is no pressure to finish which you might never finish, and the result can be having to maintain the legacy and new system forever.
- **Incompatible Interfaces**: Routing requests from the old to the new assumes the interfaces will be similar, but in many cases the old domain boundaries and interfaces will require significant redesign and so a simple re-routing will not be possible. (E.g. [Poor Modularity](../../legacy-challenges/poor-modularity/) and [Semantic Drift](../../legacy-challenges/semantic-drift/) )
- **Logic in Infrastructure**: Where translation is required, it can easily end up in the router without good discipline. This can impact reliability and make it harder to diagnose problems.
- **Introducing a router**: Introducing a router that is able to accept all requests of a certain type may not be straightforward.

## Alternative Approaches

1. As new code is built with new APIs based on a new domain model, it is sometimes easier to simply ask each client to migrate to the new API.
2. [Inner-Sourced Migration](../../organization/inner-sourced-migration/)
3. [Bubble](../bubble/_index.md)

## When to Use

- The legacy system is too large or complex to replace all at once.
- You need to minimize disruption to users during modernization.
- You want to adopt modern technologies incrementally.
- You are reliable able to route traffice from the legacy to the new

## Other Resources

- [Martin Fowler](https://martinfowler.com/bliki/StranglerFigApplication.html)
- [Sam Newman](https://samnewman.io/patterns/refactoring/strangler-fig-application/)