---
layout: event
title:  "Structured Concurrency + Deterministic Unit Tests for Multithreaded Java"
date:   2026-03-02 19:15:00 +0100
registration: tba
tags: events
speakers:
  - nparlog
  - tkrieger
location: disy2
---

## Talk 1: Structured Concurrency

In Java 25, the structured concurrency API sees its fifth preview with
considerable changes over previous iterations.
With chances being good that it will finalize without a further overhaul,
let's put it into action and explore how to:

* structure concurrent code
* process and propagate errors and cancellation
* observe thread relationships
* refactor from a reactive approach

After this presentation you'll be ready to put the structured
concurrency API into action in your project.

## Talk 2: Deterministic Unit Tests for Multithreaded Java with VMLens

Testing multithreaded Java is hard because it is non-deterministic.

By systematically iterating over all thread interleavings, we can turn concurrency testing into a deterministic process.
This talk introduces VMLens, an open-source tool that automates this approach and enables deterministic unit testing for multithreaded Java applications.
After this talk you will be able to test if your classes are thread safe or not.