---
layout: event
title:  "Tick..tick..tick.. BOOM! -- How to size thread pools and timeouts without getting caught in an explosion"
date:   2020-02-12 19:15:00 +0100
tags: events
registration: https://www.meetup.com/de-DE/Java-User-Group-Karlsruhe/events/268197841
speakers:
 - crehn
slides:
   name: PDF
   url: /assets/slides/TickTickTickBoom_JUG.pdf
location: 1und1
---

You think about appropriate values for timeouts and thread pool sizes all the time, right? No, you don't. You rely on sensible default values like everyone does. I am no exception.

But every now and then, there is an incident and people start to tinker. Can we mitigate the problem by tweaking some of these values? Sure we can. But tweaking those values is a minefield of its own. Some people cry for circuit breakers in those situations. But are circuit breakers really the panacea for all your resilience problems?

In this talk we will have a look at the aspects to consider when choosing timeout values and thread pool sizes. And we will also talk about the effects that occur when these values are too large or too small.