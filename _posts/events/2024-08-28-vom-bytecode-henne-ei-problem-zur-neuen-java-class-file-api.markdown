---
layout: event
title:  "Vom Bytecode-Henne-Ei-Problem zur neuen Java Class-File API"
date:   2024-08-28 19:15:00 +0200
registration: synyx-glas
tags: events
speakers:
- bweidig
location: https://www.meetup.com/java-user-group-karlsruhe/events/302427396/
---

Bytecode-Manipulation hat eine lange Tradition im Java-Ökosystem.
Die Gründe dafür sind vielfältig: von Leistungsoptimierungen über
Codemanipulation bis hin zur dynamischen Implementierung zur Laufzeit.

Traditionell werden für das Low-Level-Handling Tools wie ASM, CGLib,
Javassist und andere verwendet.
Java selbst setzt z.B. ASM direkt im JDK ein.
Jedoch genau diese Abhängigkeit von Java auf ein externes Tool, das
selbst abhängig ist von den neuesten Java-Features, erzeugt ein
Henne-Ei-Problem.

Mit Java 22 wurde die Class-File API als Preview-Feature vorgestellt.
Sie zielt darauf ab, eine standardisierte API für das Parsen,
Manipulieren und Generieren von Bytecode bereitzustellen.
Statt bestehende Ansätze zu kopieren, beschreitet die API neue Wege und
nutzt alle modernen Tools, die Java inzwischen bietet.
Der Einsatz von Lambdas und Records ermöglicht eine intuitivere Nutzung
und bessere Performance.

In diesem Vortrag werden wir uns zuerst eine Übersicht über die
verschiedenen Tools und Ansätze zur Bytecode-Manipulation verschaffen.
Anschließend gehen wir auf die Unterschiede (und vor allem
Verbesserungen) von JEP 457/466 ein.
Vergleichende Codebeispiele für verschiedene Bytecode-Tasks verdeutlichen
den praktischen Nutzen der neuen API.
