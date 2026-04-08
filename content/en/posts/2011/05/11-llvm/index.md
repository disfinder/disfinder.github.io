---
title: " LVM and Repositories"
date: "2011-05-11T22:02:00.002Z"
categories:
    - diary
    - p.disfinder.com
tags:
    - imported
    - r:eviewed
---

As I mentioned, I'm setting up a local mirror of repositories — so that the fleet of Linux machines gets updates quickly and over Ethernet.
For this, I attached a 100 GB disk to a virtual machine, and now a specially crafted script is downloading repos for two architectures (i386 and amd64) of one distribution — 10.10.
If the percentages the script prints to the screen are to be trusted, the final mirror size will be around 60 GB. I think I'll also need to download repos for 11.04 (and eventually 11.10 as well), so expanding partitions with LVM is becoming practically useful — and even necessary.
Once the download finishes (currently at about 15%), I'll try it out and post recommendations [there](disfinder.com).
