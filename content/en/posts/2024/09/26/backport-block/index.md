---
title: "Blog Backport"
weight: 10
date: 2024-09-26T00:37:25-04:00
categories:
    - diary
tags:
    - blogger
    - python
    - migration
---
It occurred to me to migrate the posts from https://p.disfinder.com over to GitHub and Markdown.
<!--more-->
Probably a midlife crisis :)
None of the [official tools listed on the Hugo page](https://gohugo.io/tools/migrations/#blogger) worked for me. Some crashed, some couldn't handle Unicode (in 2024, Carl!) and produced files full of gibberish.
So I had to roll up my sleeves in PyCharm and write some ugly-but-working code to convert my `Google Takeout` Blogger data. Along the way I added HTML->Markdown conversion and post-processing to download images from Google and store them locally in the repository.
It's a bit rough around the edges, but — [150 lines of code](https://github.com/disfinder/b2h) and a few debug sessions later, the blog now has the old posts locally and I'm reflecting on messages from 2008, hehe.
So if anyone reads this blog and follows it via RSS — don't be surprised if 130 new posts suddenly show up in a single day.
I'll probably go through them, add tags, and fix errors.
Comments won't be migrated — a million apologies.

----

And what's the best Ukrainian equivalent for the term `backport`?...
