---
layout: event
title:  "Lass die Affen testen - Das Ende der Bananensoftware!"
date:   2015-06-17 19:15:00 +0100
tags: events
speakers:
 - jroessler
slides:
    name: PDF
    url: /assets/slides/roesler-affen-testen.pdf
location: tefabrik
links:
- http://retest.de/
---

Wer hat den Teufelskreis aus Testing und Debugging noch nicht erlebt: In zwei Wochen ist Release-Date und die Tester finden täglich neue Fehler. Jeder Fehler führt zu einer Änderung im Programm. Und jede Änderung kann selbst wieder Fehler verursachen und muss deshalb getestet werden...

Kosten entstehen hauptsächlich durch manuelles Testen bzw. manuelle Testfallerstellung. GUI-Tests sind brüchig und bringen demzufolge einen hohen Pflegeaufwand mit sich - was die Amortisation verzögert. Deshalb werden heute 85% aller Oberflächentests noch manuell ausgeführt. Was wenn man automatisch Testen könnte? Und d.h. nicht manuell erstellte Tests (die will sowieso keiner erstellen und erst recht keiner pflegen) automatisch ablaufen lassen, sondern wirklich vollautomatisch Testen?

Monkey-Testing bezeichnet zufallsbasiertes Testen von Software über die Benutzeroberfläche, und findet vollautomatisch und kostengünstig Fehler. In diesem Vortrag zeige ich, wie jeder Anwesende mit ein paar Zeilen Code einen eigenen primitiven Affen zum automatischen Testen programmieren kann. Davon ausgehend zeige ich Ansätze und Konzepte, wie man diesen Affen (u.a. mit genetischen Algorithmen) immer weiter verbessern kann, bis er teilweise bessere Ergebnisse als menschliche Tester bringt. Dazu gibt es Demos und Erfahrungsberichte aus großen Projekten.
