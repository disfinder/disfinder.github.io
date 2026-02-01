---
title: "Hugo Update"
weight: 10
date: 2026-02-01T02:23:40-05:00
categories:
    - diary
tags:
    - hugo
    - blog
    - updates
---
Що б робити, якби не оновлення.
<!--more-->
Коли писав [статтю про ліхтарики](/docs/projects/hardware-tools/flashlights/), забув як робиться expand щоб поховати не дуже потрібні картинки і поліз в документацію.
Документація сказала "отак", а Hugo сказав "кря" і зарендерити не зміг.

Поліз я оновити тему - Хʼюго сказав ["I'm too old for this shit"](https://www.reddit.com/r/movies/comments/gxpw6h/im_too_old_for_this_shit_the_movie_supercut/) і захотів обновитися.

Обновив я і Хʼюго і він знову сказав "кря" і зарендерити не зміг: бо виявляється у якомусь давньому-предавньому дописі я вже робив expand, який тоді називався - супрайз-супрайз - `expand`, але тепер його перейменували в `details`!


Тож ідіть тепер юзери і міняйте в сотнях тисяч ваших файлів одне на інше, а там ще і синтаксис трошки помінявся....

Спробував я відкотитися, але якщо тему відкотити ще туди-сюди можна, то сам Хʼюго я вже старіший не поставлю, нема такого в брю...

(а що зміни мабуть були в темі, а не в самому движку, то від того не легше - бо якщо оновить тільки двіжок, починає падати на якихось інших штуках)

{{% details  "" %}}
```txt
ERROR deprecated: resources.ToCSS was deprecated in Hugo v0.128.0 and subsequently removed. Use css.Sass instead.
ERROR deprecated: .Sites.First was deprecated in Hugo v0.127.0 and subsequently removed. Use .Sites.Default instead.
```
{{% /details %}}


Поїхали всі ці оновлення у репозиторій, а тепер осьо ще трошки треба підрихтувати, бо то там, то сям маленькі косячки повилазили...

Люблю оновлення.

PS. ну бляяя....

```txt
WARN  Section shortcode is deprecated and will be removed
WARN  Hint shortcode is deprecated, use markdown alerts format: '> [!NOTE] ...'
```
