---
title: "Увеличение подкачки"
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

Создание файла подкачки в FreeBSD

1.Убедитесь, что в файле настройки ядра присутствует драйвер виртуального диска (md(4)). Он есть в ядре GENERIC.

```
device md # Memory "disks"
```

2.Создайте файл подкачки (/usr/swap0):

```shell
# dd if=/dev/zero of=/usr/swap0 bs=1024k count=64
```

3.Установите подходящие права на (/usr/swap0):

```shell
# chmod 0600 /usr/swap0
```

4. Включите файл подкачки в /etc/rc.conf:

```txt
swapfile="/usr/swap0" # Set to name of swapfile if aux swapfile desired.
```

5. Перегрузите компьютер или для включения подкачки прямо сейчас введите:

```txt
# mdconfig -a -t vnode -f /usr/swap0 -u 0 && swapon /dev/md0
```
