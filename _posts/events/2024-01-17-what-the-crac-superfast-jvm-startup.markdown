---
layout: event
title:  "What the CRaC - Superfast JVM startup"
date:   2024-01-17 19:15:00 +0100
registration: https://www.meetup.com/de-DE/java-user-group-karlsruhe/events/298050613/
tags: events
speakers:
 - ggrunwald
location: disy2
slides:
   name: PDF
   url: /assets/slides/WhatTheCRaC_Gerrit_Grunwald.pdf
---

In a world where microservices are more and more a standard architecture for Java based applications running in the cloud, the JVM warmup time can become a limitation. Especially when you look at spinning up new instances of an app as response to changes in load, the warmup time can be a problem. Native images are one solution to solve these problems because their statically ahead of time compiled code simply doesn’t have to warmup and so has short startup time. But even with the shorter startup time and smaller footprint it doesn’t come without a drawback. The overall performance might be slower because of the missing JIT optimisations at runtime. There is a new OpenJDK project called CRaC (Coordinated Restore at Checkpoint) which goal it is to address the JVM warmup problem with a different approach. The idea is to take a snapshot of the running JVM, store it in files and restore the JVM at a later point in time (or even on another machine). This session will give you a short overview of the CRaC project and shows some results from a proof of concept implementation.

*Wichtiger Hinweis!*

Auf der Veranstaltung werden Film- und Tonaufnahmen sowie Fotos gemacht, mit deren auch späteren Verwendung Sie sich durch den Besuch der Veranstaltung einverstanden erklären. Wenn Sie nicht fotografiert oder gefilmt werden möchten, können Sie direkt den/die FotografIn oder den/die Kameramann/-frau ansprechen.

Die Aufnahmen können im Internet, auf Social Media Kanälen sowie in Rundfunk-, TV-, und Printmedien (auch Büchern) veröffentlicht werden.

Die Verarbeitung erfolgt aufgrund des berechtigten Interesses der Verantwortlichen, die von ihr organisierte Veranstaltung bildlich zu dokumentieren und einer größeren Öffentlichkeit positiv darüber zu berichten

Eine Veranstaltung des iJUG e.V., organisiert durch die JUG Karlsruhe.
