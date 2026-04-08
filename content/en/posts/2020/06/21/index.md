---
title: "mikrotik"
date: "2020-06-21T12:30:00Z"
categories:
    - diary
    - p.disfinder.com
tags:
    - imported
    - r:eviewed
    - wifi
    - qrcode
    - router
---
Another necropost dug out of drafts. In principle, everything is still fairly accurate and relevant, except that "recently" (became the owner) — it's not even clear when.... Couldn't find the purchase data, which is rather strange. But roughly off the top of my head, 2015 or so.....
<!--more-->
I recently became the owner of a simple little router from MikroTik — the hAP ac lite. "Lite" means it doesn't do 1Gb, but otherwise it's a dual-band Wi-Fi router (2 and 5 GHz) with a 600 MHz CPU on board, 5 Ethernet ports, and PoE support.

And if you're as hospitable a host as I am and don't mind sharing your internet with friends and family, here's how you can generate a QR code offline (no need to expose your password on some sketchy website) for sharing your Wi-Fi network (googled from [Reddit](https://www.reddit.com/r/InternetIsBeautiful/comments/33evqp/generate_a_qr_code_for_wifi_networks/)):

```bash
qrencode -o - "Ce n'est pas un QR code" | display -resize 450x450 -
```

```text
WIFI:T:<authentication>;S:<yourSSID>;P:<yourpassword/PSK>;H:<true/false>;
```

Format description:

> Hidden is optional (defaults to false), replace values in <> with your info (without the <>). T: is the authenthication method, WPA works for both WPA and WPA2. The last semicolon (for H) needs to be included even if H: itself is omitted.

example:

```text
WIFI:T:WPA;S:mywifi;P:hunter2;;

```
