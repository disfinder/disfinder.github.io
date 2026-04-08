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

# Screenshots in MacOS

To change the folder where screenshots are saved (by default it's the desktop, which is silly) in macOS, you need to run these two commands:

```shell
defaults write com.apple.screencapture location ~/Pictures/screenshot
killall SystemUIServer
```
