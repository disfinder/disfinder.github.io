---
title: " LVM і репозиторії"
date: "2011-05-11T22:02:00.002Z"
categories:
    - diary
    - p.disfinder.com
tags:
    - imported
    - r:eviewed
---

Як я писав, роблю локальне зеркало репозиторіїв - щоб парк лінухових машин оновлювався швидко і по Езернету.  
Для цього підключив до віртуалки 100-гіговий диск, і зараз спеціально навчений скрипт качає репи для двох архітектур (i386 та amd64) одного дистрибутиву - 10.10.  
Якщо ті проценти, що скрипт виводить на екран, не брешуть - то кінцевий розмір зеркала буде порядку 60 гіг. Думаю, мені доведеться викачувати і для 11.04 (а в перспективі - і для 11.10), тому розширення розділів за допомогою LVM набуває практичного сенсу і навіть необхідності.  
Як докачається (зараз близько 15%), буду пробувати і відписувати рекомендації [там](disfinder.com).
