---
title: "stderr for AI"
weight: 10
date: 2025-10-03T13:22:49-04:00
categories:
    - diary
tags:
    - ai
    - ideas
---
All these chats and various AI CLIs must have `stderr`
<!--more-->

In fact, the UNIX founders invented `stdin`, `stdout`, and `stderr` with purpose - and made it possible to interact with everything separately.

Similarly, modern ChatGPT and similar tools must have a main output stream for results, while all their side "thinking… searching the web… activating the orbital laser to strike the Kremlin…" should be sent to `stderr`.

Even better—don’t limit yourself to just two streams, but provide multiple streams depending on the type of output:

- **stdout** – the answer
- **stdfix** – here’s your corrected query
- **stderr** – here I wrote that your tokens ran out
- **stdvoice** – here goes the voice output
- **stdpicture** – here’s your image
