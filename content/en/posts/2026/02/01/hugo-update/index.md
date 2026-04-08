---
title: "Hugo Update"
weight: 10
date: 2026-02-01T02:23:40-05:00
categories:
    - diary
tags:
    - hugo
    - blog
    - updates
---
What would we do without updates.
<!--more-->
When I was writing [the article about flashlights](/en/docs/projects/hardware-tools/flashlights/), I forgot how to use expand to hide images that aren't really necessary, so I went digging through the documentation.
The documentation said "do it like this," and Hugo said "quack" and couldn't render it.

So I went to update the theme — Hugo said ["I'm too old for this shit"](https://www.reddit.com/r/movies/comments/gxpw6h/im_too_old_for_this_shit_the_movie_supercut/) and wanted to update itself.

I updated Hugo, and it said "quack" again and couldn't render: because it turns out that in some ancient long-forgotten post I had already used expand, which back then was called — surprise surprise — `expand`, but now it's been renamed to `details`!

So off you go, users, go change one thing to another across your hundreds of thousands of files, and on top of that the syntax changed a little too....

I tried to roll back, but while you can roll back the theme back and forth, I can't install an older Hugo itself — it's not available in brew...

(and even though the changes were probably in the theme rather than the engine itself, that's no comfort — because if you update only the engine, it starts crashing on other things)

{{% details  "" %}}
```txt
ERROR deprecated: resources.ToCSS was deprecated in Hugo v0.128.0 and subsequently removed. Use css.Sass instead.
ERROR deprecated: .Sites.First was deprecated in Hugo v0.127.0 and subsequently removed. Use .Sites.Default instead.
```
{{% /details %}}


All these updates went into the repository, and now there are still a few small things to fix here and there, because little glitches have been popping up...

Love updates.

PS. oh come ooon....

```txt
WARN  Section shortcode is deprecated and will be removed
WARN  Hint shortcode is deprecated, use markdown alerts format: '> [!NOTE] ...'
```
