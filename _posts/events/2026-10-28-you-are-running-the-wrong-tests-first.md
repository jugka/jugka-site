---
layout: event
title:  "You Are Running the Wrong Tests First"
date:   2026-10-28 19:15:00 +0100
registration: https://www.meetup.com/java-user-group-karlsruhe/events/316976002/
tags: events
speakers:
  - jbechberger
location: synyx-glas
---

Having lots of tests is great, but it also takes a long time to run them on every change. While this gives us confidence, it also slows down feedback loops, sometimes dramatically. But what if we could fail faster?

Instead of blindly executing the entire test suite, we identify which tests actually exercise the modified classes, using bytecode instrumentation. These tests are executed first, giving you relevant feedback as quickly as possible. We’ll introduce an experimental open-source tool that integrates with Maven and JUnit that brings this idea to life. Along the way, we’ll also look at how this works under the hood, using instrumentation techniques to track which classes are actually used during tests.

If you care about developer productivity, fast feedback, and smarter CI pipelines, this talk is for you.