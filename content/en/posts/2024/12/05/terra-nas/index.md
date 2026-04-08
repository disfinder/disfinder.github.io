---
title: "Terra Nas"
weight: 10
date: 2024-12-05T03:53:19-05:00
categories:
    - diary
tags:
    - nas
    - hardware
    - shopping
    - blackfriday
    - terramaster
    - storage
---
## Hunger Is No Joke

As we know, [you can never have too much space](posts/2020/06/15/). To the green Barracuda — once the biggest at 8TB — three red IronWolfs at 12TB each were added, replacing the 4TB WD drives. But all good things come to an end, and inevitably so did the free space on all those disks.
For quite a while I had an expansion unit on my wishlist — a box that lets you connect a few extra drives to an existing Synology. And then Black Friday 2024 arrived.
<!--more-->
As always — [no decent discounts on decent things](posts/2020/11/25/), but like it or not, something had to be done about the storage situation.

## A Difficult and Unexpected Decision

I had already added it to my cart and was hovering my finger over the "buy" button, but for some reason decided to read the reviews first. It's unclear why I even went there — it's Synology after all, [you know what to expect from them](/posts/2021/02/22/) — but one review caught my attention:

> Make Sure U really want it!
> Real Review - For the Price your can just get a 4 bay Nas and have it in a different location. I wish i had did that, now im stuck with a 5 bay box that needs my 920+ to work..... just think i could have put that money into getting a second NAS

A rather unexpected, though generally legitimate point of view — this expansion unit won't work without another Synology box, and costs roughly the same as a 4-bay NAS, while only providing 5 additional slots.

So I hesitated a little longer, moved my finger away from the "buy" button, and instead picked up the cheapest 4-bay NAS I could find on Amazon, which turned out to be the [TERRAMASTER F4-212](https://a.co/d/7hgmJjU) for $220.

## What Is It

Some completely unknown-to-me company, without particularly glowing reviews, though it's known on Reddit and people even write that you can install a proper OS on their boxes instead of their proprietary junk.

I got a bit ahead of myself on that — a proper OS goes on proper hardware, and what you get for two hundred dollars comes with only 1GB of RAM that can't be expanded, runs on ARM, and has no well-documented flashing success stories.

Well, cheap fish makes bad soup, but for that price you can't expect top-tier capabilities, so forward we go — expanding the home network with yet another little box. Conveniently, the last WD 4TB from the very first batch bought for the Synology was sitting around — time to give it a try.

The boring installation screenshots follow, because I took them, even though they don't offer much value. It didn't install on the first try, but eventually got there on the third or fifth attempt — nothing new there. It's up and running, humming away, getting settled in.
Hopefully it's not leaking my LAN-shared documents to the Chinese government...

Well damn, there's a Russian localization but no normal one...
![Well damn, there's a Russian localization but no normal one...](image-21.png)

## Boring Installation Screenshots

### Attempt 1, Online

![loading](image.png)
![no-hard-drive](image-1.png)
![with-hard-drive](image-2.png)
![compatibility](image-3.png)
![adefault or custom](image-4.png)
![choose hard drive](image-5.png)
![good](image-6.png)
![warning-data-deletion](image-7.png)
![online tos](image-8.png)
![install-tos-01](image-9.png)

### Online installation failed, let's try again — offline this time.

![offline progress](image-10.png)
![done](image-11.png)
![storage-pool-0](image-12.png)
![volume-1](image-13.png)
![filesystem](image-14.png)
![create-volume1](image-15.png)
![warning](image-16.png)
![finally](image-17.png)
![eula](image-18.png)

### Quick Post-Config

![security scan](image-19.png)
![security isolation](image-20.png)
