---
title: "screenshots in MacOs"
weight: 10
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
date: 2016-11-14T01:50:47-05:00
---

Щоб змінити папку, куди зберігаються скріншоти (по дефолту це робочий стіл, що за дурість) у макос треба виконати отакі дві команди:

```shell
defaults write com.apple.screencapture location ~/Pictures/screenshot
killall SystemUIServer
```
