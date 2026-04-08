---
title: "Filesystem Tuning"
date: "2011-06-16T20:50:00Z"
categories:
    - diary
    - p.disfinder.com
tags:
    - imported
    - r:eviewed
---

I got fed up with Mint running slowly, especially compared to the beast of a machine at work.

Added the **noatime,nodiratime** options to **/etc/fstab** and ran the following command I found:

```shell
tune2fs -O has_journal -o journal_data_writeback /dev/sda5
```

to disable the journal on the root partition. Waiting for Dropbox to sync and then I'll try rebooting.
