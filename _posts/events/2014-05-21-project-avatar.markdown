---
layout: event
title:  "Project Avatar: more than just Node.js on the JVM"
date:   2014-05-21 19:15:00
tags: events
speakers:
 - nkoebler
 - hspindler
location: hs-karlsruhe-m202
---

Aktuell sind leichtgewichtige Architekturen gefragt, in denen der Server lediglich die Ressourcen per (REST-/Push-)Services zur Verfügung stellt und ein großer Teil der Logik in HTML5-Clients per JavaScript implementiert ist. Das Projekt Avatar macht mit seiner Thin-Server-Architektur (TSA) JavaEE Ressourcen direkt per JavaScript zugreifbar, egal ob auf dem Application Server (Service Components) oder dem Client (View Components).

Serverseitig basiert Avatar auf der Node-Implementierung für die JVM (Avatar.js für die Nashorn Scripting-Engine) und stellt somit fast die gesamte Node.js API zur Verfügung und nutzt ebenfalls das Node-Programmingmodel einer Single Threaded Event-Loop (REPL) - falls gewünscht, auch parallel in mehreren Threads.
Auf dem Client sorgt das Framework für das Binding der Ressourcen an HTML5-Widgets und beschränkt sich dabei auf so wenig JavaScript wie möglich und nur so viel wie gerade nötig. Die Programmierung erinnert hier stark an die Expression Language und ist so für den erfahrenen Java-Entwickler einfach umsetzbar. Da bei einer TSA Client und Server losgelöst voneinander sind und nur protokollbasiert miteinander kommunizieren, ist die Verwendung der View Components nicht zwingend nötig. Hier kann der Entwickler auf das Framework seiner Wahl zurückgreifen.

Die Live-Demo zeigt, wie eine vollständige JavaEE Applikation ganz ohne Java Code erstellt werden kann, nur mit dem Einsatz von JavaScript.