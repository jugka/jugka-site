---
layout: event
title:  "Lean Microservices with OSGi"
date:   2017-02-15 19:15:00 +0100
registration: https://www.xing.com/events/lean-microservices-with-osgi-1779833
tags: events
speakers: 
 - cschneider
location: netpioneer
 slides:
    name: Slideshare
    url: https://www.slideshare.net/ChristianSchneider3/lean-microservices-on-osgi
links:
 - https://github.com/cschneider/osgi-chat
---

Microservices and their frameworks like spring boot allow to start fast but can easily produce ugly monoliths or tangled webs of fine grained dependencies. OSGi on the other hand provides great modularity but is regarded as more complex than spring boot and alike. This Talk shows how to create lean and modular microservices using OSGi, maven, bndtools and Apache Karaf. The build result is a runnable jar or docker image and nicely fits microservice deployments. See how OSGi allows the flexibility to deploy each microservice on its own and let them communicate over (REST) remote calls or deploy them together and talk using OSGi services locally using the same business code bundles.