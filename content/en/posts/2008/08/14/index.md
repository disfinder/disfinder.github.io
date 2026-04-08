---
title: "Increasing swap"
date: "2008-08-14T19:06:00.001Z"
categories:
    - diary
    - p.disfinder.com
tags:
    - imported
    - r:eviewed
    - freebsd
    - swap
---

Creating a swap file in FreeBSD

1. Make sure the virtual disk driver (md(4)) is present in the kernel configuration file. It is included in the GENERIC kernel.

```
device md # Memory "disks"
```

2. Create a swap file (/usr/swap0):

```shell
# dd if=/dev/zero of=/usr/swap0 bs=1024k count=64
```

3. Set appropriate permissions on (/usr/swap0):

```shell
# chmod 0600 /usr/swap0
```

4. Enable the swap file in /etc/rc.conf:

```txt
swapfile="/usr/swap0" # Set to name of swapfile if aux swapfile desired.
```

5. Reboot the computer, or to enable swap right now enter:

```txt
# mdconfig -a -t vnode -f /usr/swap0 -u 0 && swapon /dev/md0
```
