---
layout: event
title:  "Überraschungen und Grundlagen bei der nebenläufigen Programmierung in Java"
date:   2013-10-16 19:15:00
tags: events
speakers:
 - ckumpe
parleys: http://parleys.com/play/52ee04d4e4b0050b3782745d
location: netpioneer
slides:
    name: PDF
    url: /assets/slides/Ueberraschungen-und-Grundlagen-bei-der-nebenlaeufigen-Programmierung-in-Java.pdf
---

Viele Softwareentwickler arbeiten täglich mit Java und verwenden dessen Konstrukte zur nebenläufigen Programmierung (synchronized, volatile und Co.) ohne sich Gedanken über deren technischen Hintergrund zu machen. Doch gerade bei der Suche nach Erklärungen zu subtilen Fehlern hilft einem ein grobes Verständnis der Grundlagen oft weiter.
Der Vortrag startet mit einem einfachen fehlerhaften Beispiel, dessen Fehler den meisten direkt auffallen dürfte, die sich schon mit Nebenläufigkeit in Java beschäftigt haben. Dabei werden wir unter anderem beobachten, dass

- der Code bei normaler Ausführung so nicht funktioniert.
- der Code, im Debugger ausgeführt, offensichtlich aber korrekt arbeitet.
- der Code nach dem Einfügen einer Debug-Ausgabe plötzlich zuverlässig funktioniert.

Die Erklärung für diese (vielleicht überraschenden) Beobachtungen liefert das Java Memory Model und ein Blick auf die Optimierungen des Just in Time (JIT) Compilers. Der Vortrag erläutert die wichtigsten Grundlagen für das Zusammenspiel des Java Memory Model und des JIT Compilers für eine korrekte, performante und plattformunabhängige Ausführung von Code in der JVM.