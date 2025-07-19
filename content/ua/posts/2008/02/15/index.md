---
title: "NAT"
date: "2008-02-15T14:58:00.002Z"
categories:
    - diary
    - p.disfinder.com
tags:
    - imported
    - r:eviewed
    - nat
    - freebsd

---

вопрос \- нужно ли для настройки НАТа устанавливать еще чего\-нибудь, или ppp может натить самостоятельно?
нашел вот такое:

http://www.opennet.ru/openforum/vsluhforumID3/3173\.html\#1

```
/etc/ppp/ppp.conf:

default:
set device PPPoE:ed0:my_isp's_name
set speed sync
set mru 1492
set mtu 1492
set ctsrts off
enable lqr
add default HISADDR
set timeout 0
set redial 0 0
#NAT
nat enable yes
nat log yes
nat same_ports yes
nat unregistered_only yes
enable dns

my_isp's_name:
set authname username
set authkey password
```

В rc.conf:

```
ppp_enable="YES"
ppp_profile="iinet"
ppp_mode="ddial"
ppp_nat="YES"
ppp_user="root"
#ЕВРИКА!! спасибо Владу
gateway_enable="YES"
```

URL: http://members.iinet.net.au/\~yance/pppoenat.html
Новость: http://www.opennet.ru/opennews/art.shtml?num\=3340
