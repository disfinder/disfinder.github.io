---
title: "rsync to exfat"
weight: 10
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
date: 2018-12-23T01:46:12-05:00
---

```shell
rsync -vrltD --progress --stats /source/a/ /dest/a
```

https://www.scivision.co/rsync-to-exfat-drive/

> If one uses the standard rsync options like: `rsync -a` they don’t work with an EXFAT drive. You’ll get errors like: `RSYNC: MKSTEMP … FAILED: FUNCTION NOT IMPLEMENTED (38)` because EXFAT doesn’t understand permissions, owners, or groups.
