---
layout: event
title:  "Property based testing with Java"
date:   2019-01-23 19:15:00 +0200
tags: events
registration: https://www.meetup.com/de-DE/Java-User-Group-Karlsruhe/events/257212103
speakers:
 - jlink
location: chrono24
---

Testgetriebene Entwicklung in Java und anderen objektorientierten Sprachen
setzt bislang meist auf beispielbasierte Testfälle, wie man sie leicht mit
JUnit und ählichen Testframeworks erstellen kann. Schaut man jedoch über den
Tellerrand und auf funktionale Programmiersprachen wie z.B. Haskell oder F#,
findet man dort etwas anderes: Property-Tests.

Property-Tests basieren auf der Idee, die erwünschten Eigenschaften unseres
Programms zu beschreiben und anschließend das Framework selbstständig
Testfälle generieren zu lassen, die diese Eigenschaften bestätigen oder falsifizieren.

In diesem Vortrag werde ich sowohl auf die Theorie hinter Property-based Testing
eingehen als auch konkret zeigen, wie man mit jqwik unter Java und
anderen JVM-Sprachen solche Tests umsetzen kann.
Dabei spielen die Muster zum Finden der Properties eine wichtige Rolle.