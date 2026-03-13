---
layout: event
title:  "arcAI42: Extending arc42 for AI Systems"
date:   2026-04-09 18:15:00 +0100
registration: https://www.meetup.com/de-de/java-user-group-karlsruhe/events/313771253/
tags: events
speakers:
  - ngolovko
location: diva-e-23
---

arc42 has given us a precise and disciplined way to document software architecture — but AI systems behave fundamentally differently. They don’t stay static. They learn, drift, depend heavily on data quality, and make probabilistic decisions. Yet today, we still document them as if they were ordinary code components. And that’s where things break.

In real projects, we see the same recurring problems: invisible data dependencies, unclear assumptions, models no one can explain, domain language drifting away from training data, unpredictable deployments, missing ownership, and no architectural place to describe feedback loops, retraining logic, or drift mitigation. When these elements aren’t captured architecturally, AI systems become unmaintainable and impossible to govern.

arcAI42 introduces a small set of lightweight extensions to arc42 that make these learning systems architecturally visible. It adds a Data and Domain Context that describes data sources and meaning, a Model Context that explains model assumptions and provides transparency into model behavior, a Lifecycle & Feedback View that shows how a model evolves, and a Governance & Risk section that captures drift, bias, ownership, and mitigation strategies. It also clarifies how models are tested, deployed, monitored, and rolled back.

In essence, arcAI42 transforms AI from a black box into a first-class architectural element — giving architects and data scientists a shared language, and ensuring these systems remain explainable, traceable, and safe as they become part of everyday infrastructure.
