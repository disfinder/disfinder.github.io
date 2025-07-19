---
title: "Тюнінг файлової системи"
date: "2011-06-16T20:50:00Z"
categories:
    - diary
    - p.disfinder.com
tags:
    - imported
    - r:eviewed
---

Щось мене дістала повільна робота Мінта, особливо у порівнянні із звіром-машинкою на роботі.   

Дописав у **/etc/fstab**  опції **noatime,nodiratime** та виконав підглянуту команду   

```shell
tune2fs -O has_journal -o journal_data_writeback /dev/sda5
```

щоб відключити журнал на кореневому розділі. Чекаю, поки синхронізується Дропбокс та спробую перезавантажиться.
