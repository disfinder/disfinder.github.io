---
title: "ssh"
date: "2008-02-13T19:21:00.001Z"
categories:
    - diary
tags:
    - imported
    - r:eviewed
    - ssh
    - freebsd
    - shellguard
---

Первая грабля. Шелгвард, любимый шелгвард \- не конектицо. sshd запущен и настроен, локально на 127\.0\.0\.1 захожу. Даже putty \- и та подключилась. Хотя и как\-то тормознуто.  
А ShellGuard пишет 
> `no matching comp found. Client zlib Server: none,zlib@openssh.com`

 Спасибо опеннету. Оказалось, лечится  

> `"Compression yes" в /etc/ssh/sshd_config`

и кроме того  

> `PasswordAuthentication yes`


правда, подключился он тож тормознуто. Грешу на жуткое количество интерфейсов и запущенный торрент. Если и на реальную тачку будет так цепляться (до 30 секунд на логон), то вопрос апнется.
