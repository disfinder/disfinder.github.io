---
title: "Hugo"
weight: 10
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
date: 2023-12-28T16:22:45-05:00
---

# Hugo cheatsheet

## Commands

### Via hugo

```shell
hugo new content docs/notes/hugo/index.md
```

### Via Makefile in this repo

```shell
NAME=hugo make note
```

## Content formattign

### Images in menus

```toml
[[menu.main]]
    name = "Home"
    url  = "/"
    weight = 1
    pre = "<img src='/img/og.jpg' style='height: 20px; width: 20px;' alt='test menu image'>"
```

[source](https://discourse.gohugo.io/t/images-in-menus/6094/5)