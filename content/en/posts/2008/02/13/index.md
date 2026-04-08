---
title: "ssh"
date: "2008-02-13T19:21:00.001Z"
categories:
    - diary
    - p.disfinder.com
tags:
    - imported
    - r:eviewed
    - ssh
    - freebsd
    - shellguard
---

First rake. ShellGuard, my beloved ShellGuard \- won't connect. sshd is running and configured, I can log in locally on 127\.0\.0\.1. Even PuTTY connected. Though sluggishly.
But ShellGuard says
> `no matching comp found. Client zlib Server: none,zlib@openssh.com`

Thanks to opennet. Turns out the fix is

> `"Compression yes"` in `/etc/ssh/sshd_config`

and also

> `PasswordAuthentication yes`


Though it connected sluggishly too. I'm blaming the huge number of interfaces and a running torrent. If it's this slow on a real machine (up to 30 seconds to log in), the question will come up again.
