---
title: "Reading speed"
weight: 10
date: 2026-01-23T15:00:04-05:00
categories:
    - diary
tags:
    - reading
    - measurement
---
I got into a conversation with a colleague about reading speed. 
<!--more-->

I decided to test myself using Jules Verne's The Mysterious Island.

I opened it in FBReader and timed how long it took to read 10 pages. It turned out that it only displays odd pages, so I ended up reading 12. It took 5 minutes and 19 seconds.

## How long to finish the book

The book's length in the reader is 690 pages, so at this pace, the entire book can be read in approximately 5 hours:

```txt
5min 19s = 12 p
x = 690 p

x = 690 p * 5min12s / 12p = 57.5 * 312 s = 17940 s ≈ 4.98 hours
```

## How many words per minute

There are approximately 2800 words in the section I read.

```txt
$ pbpaste | wc
      75    2808   35291

2808 / 5m ≈ 560 words/min
```
