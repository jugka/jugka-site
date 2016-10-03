---
layout: event
title:  "Lasttests mit Selenium"
date:   2016-12-07 19:15:00 +0100
registration: tba
tags: events
speakers: 
 - ckumpe
location: netpioneer 
---
 
In einem aktuellen Projekt haben wir uns entschieden die Lastests nicht mit den "klassischen" Tools wie JMeter oder Gattling umzusetzen, sondern unsere Applikation mit massiv parallelen Selenium-Webtests unter Last zu setzen. Hauptargumente dafür waren:

- Schwieriges Setup einer realistischen Lastsimulation bei stark AJAX-lastigen Webseiten mit den klassischen Tools.
- Wiederverwendung der Webtests und deren Infrastruktur und Page Objects in den Lastest.
- Vertrauter Java Code in den Tests (keine Einarbeitung in neue Tools nötig).
- Messung der Lade- und Interaktionszeiten während der Lastests in echten Browsers.

Kern dieses Konzepts war ein neuer JUnit-Runner mit welchem wir beliebige Tests n-fach parallel und m-fach nacheinander ausführen können, kombiniert mit der Möglichkeit diese Tests über Spring flexibel konfigurieren zu können. Hinzu kam ein Selenium-Grid, welches die Browser-Instanzen zur Verfügung stellt und eine Statistikkomponenten zum Erfassen verschiedener Zeitstempel innerhalb der Browser (über JavaScript) und in den Tests selbst.

Der Vortrag stellt die technischen Details des Setups dar, berichtet über die von uns gesammelten Erfahrungen und soll die Zuhörer in die Lage versetzen das Setup in eigenen Projekten zu verwenden.