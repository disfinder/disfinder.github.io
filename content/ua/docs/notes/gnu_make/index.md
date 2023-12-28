---
title: "GNU make"
weight: 10
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
date: 2023-12-28T16:28:39-05:00
---


# Make cheatsheets

## function in Makefile

```make
define func
    foo
    bar
enddef

target:
    $(call func)
```
