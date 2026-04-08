---
title: "mp3 tags decode"
weight: 10
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
date: 2016-08-18T01:52:27-05:00
---

# Decoding mp3 tags

To automatically convert tags from Windows encoding to UTF-8:

```shell
find . -iname "*mp3" -print0 | xargs -0 mid3iconv -e CP1251 -d
```
