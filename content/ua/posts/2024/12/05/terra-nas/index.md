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
## Голод не тітка

Як ми знаємо, [місця забагато не буває](posts/2020/06/15/). До зеленої Баракуди - колись найбільшої, на 8Т додалися ще 3 червоних IronWolf по 12Т кожен, замінивши 4Т WDшки, але все хороше колись закінчується - так само неминуче закінчилося і вільне місце на всіх цих дисках.
Досить давно у мене у вішлісті лежав expansion unit - така собі коробка, що дозволяє до існуючого Synology підключити ще декілька дисків. І от настала Чорна Пʼятниця 2024.
<!--more-->
Як завжди - [ніяких достойних знижок на достойні речі не буває](posts/2020/11/25/), але хочеш-нехочеш, а із місцем треба щось робити. 

## Важке і несподіване рішення

Вже давно додав у корзину і заніс палець над кнопкою "купити", та чогось вирішив почитати відгуки. Неясно, чому мене туди понесло - Сінолоджі та й Сінолоджі, [відомо чого від них чекати](/posts/2021/02/22/), але один привернув мою увагу:

> Make Sure U really want it!  
> Real Review - For the Price your can just get a 4 bay Nas and have it in a different location. I wish i had did that, now im stuck with a 5 bay box that needs my 920+ to work..... just think i could have put that money into getting a second NAS

Досить неочікувана, хоча і в цілому легітимна точка зору - цей expansion unit таки не буде працювати без іншої коробки Synology і коштує десь як 4х-дисковий NAS, надаючи при цьому додаткових 5 слотів.

Тож я посумнівався ще трошки, прибрав пальця із кнопки "купити" і натомість взяв найдешевший із знайдених на Амазоні 4х-дисковий NAS, яким виявився [TERRAMASTER F4-212](https://a.co/d/7hgmJjU) за $220 баксів.

## Що воно таке

Якась суцільно невідома мені контора, без особливо позитивних відгуків, хоча на реддіті знана і навіть пишуть що на їх коробку можна встановити якусь нормальну ОС замість їх пропрієтарного хламу.

Із цим я трошки поспішив, нормальна ОС ставиться на нормальне залізо, а те що продають за двісті долярів - воно мало що із 1 Гб оперативки, яка не розширяється, так іще і на ARMі і без вдалих кейсів перепрошивання.

Ну, тут дешева рибка - погана юшка, але за таку ціну очікувати супер можливостей не доводиться, тому вперед - розширяємо домашню мережу іще однією коробочкою. Якраз завалявся останній WD 4T із ще самих перших, куплених для Сінолоджі - буду пробувати.


Далі будуть нудні скріншоти процесу установки, бо наробив, хоча значної цінності вони не представляють. Не поставилось з першого разу, та поставилося врешті з третього-пʼятого, до цього не звикати. Стоїть, жужжить, освоюється.  
Сподіваюся, не зливає мої розшарені в ЛАН документи китайському уряду...

От курва, росіянська локалізація значить є, а нормальної нема..
![От курва, росіянська локалізація значить є, а нормальної нема...](image-21.png)

## Нудні скріншоти процесу установки

### Спроба 1, онлайн

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

### Онлайн установка не завелася, спробуємо заново і оффлайн.

![оффлайн прогресс](image-10.png)
![готово](image-11.png)
![storage-pool-0](image-12.png)
![volume-1](image-13.png)
![filesystem](image-14.png)
![create-volume1](image-15.png)
![warning](image-16.png)
![finally](image-17.png)
![eula](image-18.png)

### Швидкий постконфіг

![security scan](image-19.png)
![security isolation](image-20.png)