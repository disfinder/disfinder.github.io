---
title: "Github Actions Break"
weight: 10
date: 2025-03-13T17:23:41-04:00
categories:
    - diary
tags:
    - github
    - fail
    - grumpy
---
І вдогонку - поламалися гітхаб акшони для публікації блогу
<!--more-->
[Гітхаб щось там сансентув](https://github.com/orgs/community/discussions/142581), я нічого не нажимав, але все упало.  
Швидко нагуглилося і фікс в принципі невеликий, але неприємно. Все більше неприємно що індустрія якось від стабільності котиться все далі і далі...


[Фікс](https://github.com/disfinder/disfinder.github.io/commit/7c2776fbccb012c6822ab933aa9fb21ef5681abe) нагуглив [отут](https://discourse.gohugo.io/t/build-failed-because-it-uses-a-deprecated-version-of-actions-upload-artifact-v3/53335/2)


> In .github/workflows/publish.yaml…

| Old value                        | New value                        |
| -------------------------------- | -------------------------------- |
| actions/cache@v3                 | actions/cache@v4                 |
| actions/configure-pages@v3       | actions/configure-pages@v5       |
| actions/deploy-pages@v2          | actions/deploy-pages@v4          |
| actions/upload-pages-artifact@v2 | actions/upload-pages-artifact@v3 |
| peaceiris/actions-hugo@v2        | peaceiris/actions-hugo@v3        |