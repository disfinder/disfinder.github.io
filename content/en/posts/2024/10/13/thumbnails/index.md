---
title: "Image thumbnails"
weight: 10
date: 2024-10-13T21:06:28-04:00
categories:
    - diary
tags:
    - hugo
    - blog
---
How to make scaled-down images in Hugo?
<!--more-->
One of the downsides of a Markdown-based blog is that you have to do everything by hand, including image management.

Until now I hadn't really bothered and just shoved images in as-is, letting the browser scale them to the screen width. But having decided to finally flesh out my tools catalog a bit, I did a quick Google search for available approaches.
I settled on [a solution by blogger Sam](https://sam.hooke.me/note/2018/02/automatic-image-thumbnails-in-hugo-from-static-directory/) — dump images into a meta-post (a fake post) and write a Hugo shortcode that pulls images from that location, resized to the requested dimensions. Since I'm neither a web designer nor a Hugo developer, I didn't want to spend a long time tinkering — tested it, it works, commit and push, off we go.
