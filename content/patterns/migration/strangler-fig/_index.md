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

The Strangler Fig pattern is a metaphor first defined by Martin Fowler to describe a gradual migration from a legacy system to a new modernized application. The Strangler Fig Application lives alongside the legacy slowly taking away all it's responsibilities until there is nothing left of the legacy.

<div class="title title--sans title--third">
  <img src="/patterns/migration/strangler-fig/stranger-fig.png" alt="Strangler Fig Pattern" style="max-width: 100%; width: 100%; height: auto;">
</div>

Although the Strangler Fig Pattern is just a metaphor and doesn't prescribe any specific approach to gradual migration, proponents of the strangler fig often include the concept of an interceptor or router which is able to take incoming request or messages intended for the legacy and route them to the strangler fig when the relevant functionality exists there.

## How It Works

1. Identify a part of the system to migrate
2. Move or re-implement the functionality outside of the legacy system in the strangler fig application
3. Introduce an interceptor/router that is able to intercept and redirect requests
4. Route specific requests to the new code instead of the old
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
- **Introducing a router**: Introducing a router that is able to accept all requests of a certain type may not be straightforward. You may need to introduce multiple routers (e.g. for front and back office) and ensure they are synchronised

## Alternative Approaches

Since the strangler fig is just a metaphor that describes any gradual migration, there aren't really any alternatives. However, instead of intercepting and routing requests (the canonical version of strangler fig) you can choose alternative approaches like:
1. As new code is built with new APIs based on a new domain model, it is sometimes easier to simply ask each client to migrate to the new API.
2. [Inner-Sourced Migration](../../organization/inner-sourced-migration/)
3. [Bubble](../bubble/_index.md)
4. Client-side Feature flags: The decision of where to send a request/message lives in the client and the client decides where to send the request based on the value of a feature flag.

## When to Use

- The legacy system is too large or complex to replace all at once.
- You need to minimize disruption to users during modernization.
- You want to adopt modern technologies incrementally.
- You are reliable able to route traffice from the legacy to the new

## Other Resources

- [Martin Fowler](https://martinfowler.com/bliki/StranglerFigApplication.html)
- [Sam Newman](https://samnewman.io/patterns/refactoring/strangler-fig-application/)