---
title: "Hugo cheatsheet"
weight: 10
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
date: 2023-12-28T16:22:45-05:00
---

## Commands

### Via hugo

```shell
hugo new content docs/notes/hugo/index.md
```

### Via Makefile in this repo

```shell
NAME=hugo make note
```

## Content formatting

### Images in menus

```toml
[[menu.main]]
    name = "Home"
    url  = "/"
    weight = 1
    pre = "<img src='/img/og.jpg' style='height: 20px; width: 20px;' alt='test menu image'>"
```

[source](https://discourse.gohugo.io/t/images-in-menus/6094/5)

### book theme

Notes about [current theme](https://themes.gohugo.io/themes/hugo-book/)

#### hints

Hint shortcode can be used as hint/alerts/notification block.  
There are 3 colors to choose: `info`, `warning` and `danger`.

```tpl
{{</* hint [info|warning|danger] */>}}
**Markdown content**  
Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
{{</* /hint */>}}
```

## scripts

```shell
# sort articles by weight
grep -Hr weight . | sort -k 3 -t :
```

## This site

Notes to self about this site/blog

### Tags vs categories

Tags - as many as possible, cover anything related.
Categories - curated list to distinct different directions, like "educational" vs "daily life"

Would be nice to come up with some set of categories.
