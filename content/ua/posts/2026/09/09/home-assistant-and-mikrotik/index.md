---
title: "Ніззя просто так взяти і прибрати літеру «s»"
weight: 10
date: 2026-09-09T13:47:56-04:00
categories:
    - diary
tags:
    - smart-home
    - home-assistant
    - net
    - mikrotik
    - slop
---
Після [апгрейду Мікротіка](/posts/2026/09/08/upgrade-67/) пішов перевіряти, чи все в домі живе — і виявив, що Home Assistant на роутер образився.
<!--more-->

## Симптом

Ще [в січні](/posts/2026/01/07/home-assistant-printer/) я хвалився [кастомною інтеграцією](https://github.com/tomaae/homeassistant-mikrotik_router), яка показує в Home Assistant все роутерне добро — порти, трафік, хто сидить у вайфаї. Той пост закінчувався переможним «Поборов!» — так от, боровся я тоді саме із цим звіром. А тепер сенсори посіріли, і в лозі кожні кілька секунд:

```
ERROR (MainThread) [custom_components.mikrotik_router.mikrotikapi]
Mikrotik 10.10.200.0 error while connecting:
connect() got an unexpected keyword argument 'login_methods'.
Did you mean 'login_method'?
```

Пайтон навіть ввічливо підказує, де собака порилася - пропала одна літера "s".

## Розслідування

Свіжооновлений роутер я навіть не підозрював, хоч таймінг і натякав — цю помилку я впізнав одразу, стара січнева знайома. Та й `TypeError` вилітає ще до того, як хоч один пакет полетів у мережу: роутер невинний, він взагалі не в курсі, що до нього хтось хотів. Лишалося тільки заново відтворити рішення — бо куди я його в січні записав, історія замовчує.

Розкопки показали таке:

- чергове оновлення Home Assistant притягло нову версію бібліотеки `librouteros`, а там аргумент `login_methods` перейменували на `login_method` — і замість рядочка `"plain"` тепер треба передавати функцію
- інтеграція ж (v2.2 — остання, що є в HACS) досі передає по-старому
- проблема давно відома ([issue #488](https://github.com/tomaae/homeassistant-mikrotik_router/issues/488)), фікс вже навіть вмерджений у master — але релізу із ним досі немає

А куди ж поділося січневе лікування? Його зʼїло чергове перекачування інтеграції через HACS: воно чесно притягло свіжий (все ще зламаний) код і тихенько затерло мій патч.

## Лікування

Дві стрічки у файлі `custom_components/mikrotik_router/mikrotikapi.py`.

Після `import librouteros` додати:

```python
from librouteros.login import plain, token
```

І замінити

```python
"login_methods": self._login_method,
```

на

```python
"login_method": plain if self._login_method == "plain" else token,
```

Просто перейменувати ключ недостатньо — отримаєш `'str' object is not callable`, бо бібліотека тепер хоче саме функцію, а не її назву.

Рестарт Home Assistant (перезавантаження інтеграції не допоможе, пайтон вже все закешував) — і сенсори ожили.

## Щоб не злетіло знову

Гарна новина: оновлення самого Home Assistant цей файл не чіпають. Затерти патч може тільки перекачування інтеграції через HACS — а воно само по собі не відбувається, треба тицьнути кнопку.

Клод нарадив мені цілий план:

- на GitHub повісити Watch → Custom → Releases: щойно вийде реліз новіший за v2.2 — у ньому фікс буде з коробки, оновлюйся і забудь
- а для параноїків — ще й повісити сенсор-сигналізацію, яка перевіряє, чи не повернувся старий код:

```yaml
command_line:
  - binary_sensor:
      name: Mikrotik patch overwritten
      command: 'grep -c "\"login_methods\"" /config/custom_components/mikrotik_router/mikrotikapi.py || echo 0'
      value_template: "{{ value | int > 0 }}"
      scan_interval: 3600
      device_class: problem
```

До такої бюрократії я поки що морально не готовий. Мій план простіший: просто не тицяти кнопку оновлення, доки в HACS висить v2.2 — там нічого нового, тільки той самий баг (:
