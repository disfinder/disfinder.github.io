---
title: "How I (with AI's help) translated 409 blog articles in one session"
weight: 10
date: 2026-04-08
categories:
    - diary
tags:
    - blog
    - hugo
    - AI
    - claude
    - slop
---

I have a Hugo blog with content in Ukrainian — posts, notes, articles, and a LiveJournal archive spanning 2007–2017. About 409 markdown files in total. And I'd long wanted to make an English version of it.

<!--more-->

Doing it manually — not realistic. Hiring a translator for 409 files — expensive and slow. But there's Claude Code.

## What was done

All content from `content/ua/` now has corresponding translations in `content/en/`. That includes:

- **Posts** from 2008 through 2026
- **The LiveJournal archive** — 181 entries from 2007 to 2017: technical notes, diary entries, poetry, political commentary, film reviews… all written by a younger me in a mix of Ukrainian and Russian
- **Articles and notes** — more structured content under `docs/`
- **Project pages**

## How it was done

The idea is straightforward: Claude Code can spawn subagents. For each file that doesn't yet have an English counterpart, a separate agent is launched with the following task:

1. Read `content/ua/path/to/file.md`
2. Translate from Ukrainian (or Russian — the LJ archive was often mixed) to English
3. Save to `content/en/path/to/file.md`

Translation rules:
- Frontmatter structure is preserved in full
- Tag values are **not translated** (tags are identifiers)
- Title, description, and other descriptive frontmatter fields — translated
- All body text — translated
- Markdown formatting, images, links, and code blocks — preserved exactly

Agents ran sequentially, one per file. Parallelism doesn't work well here — both because of API rate limits and because it's important not to drop any file.

## Technical details

**Permissions.** Claude Code asks for confirmation on every write operation by default. For subagents this is a problem — they can't get interactive confirmation when running in the foreground without a human in the loop for each one. Solution: a `.claude/settings.json` file with pre-approved permissions:

```json
{
  "permissions": {
    "allow": [
      "Write(content/en/**)",
      "Bash(*)"
    ]
  }
}
```

**Finding untranslated files.** A simple shell script:

```sh
find content/ua -name "*.md" | sort | while IFS= read -r ua; do
  en=$(echo "$ua" | sed 's|content/ua/|content/en/|')
  [ ! -f "$en" ] && echo "$ua"
done
```

**An important lesson:** `find | xargs` without `-print0 / -0` breaks on filenames with spaces. We have a directory called `content/en/docs/projects/hardware-tools/3d printers/` — and that produced an immediate error. The correct way:

```sh
find content/en -name "*.md" -print0 | xargs -0 sed -i '' -e 's|old|new|g'
```

## Additional fixes

After translation, a few more issues surfaced.

**Internal links.** The Hugo blog has `defaultContentLanguage: ua`, meaning links like `/docs/articles/foo/` or `/posts/2024/bar/` without a language prefix point to the Ukrainian version. In English files, all such links need to become `/en/docs/...` and `/en/posts/...`. Absolute links like `https://www.disfinder.com/docs/...` also needed to become relative `/en/docs/...` paths.

Fixed in bulk with `sed`:

```sh
find content/en -name "*.md" -print0 | xargs -0 sed -i '' \
  -e 's|](/docs/|](/en/docs/|g' \
  -e 's|](/posts/|](/en/posts/|g'
```

**Images.** Images live alongside their Ukrainian posts — `content/ua/posts/2024/foo/image.png`. The English version of the post can't see them because it lives at `content/en/posts/2024/foo/`. Solution: symlinks.

```sh
find content/ua -not -name "*.md" -type f -print0 | while IFS= read -r -d '' ua; do
  en=$(echo "$ua" | sed 's|content/ua/|content/en/|')
  if [ ! -e "$en" ] && [ ! -L "$en" ]; then
    mkdir -p "$(dirname "$en")"
    python3 -c "
import os, sys
ua, en = sys.argv[1], sys.argv[2]
rel = os.path.relpath(ua, os.path.dirname(en))
os.symlink(rel, en)
" "$ua" "$en"
  fi
done
```

The relative path is computed via Python to correctly handle any nesting depth.

## The result

409 files. A few hours of work (with pauses for API rate limits). Minimal manual effort — just supervision and occasional course correction.

Translation quality is solid for technical and diary content. Idioms, slang, Soviet cultural references — the agent tried to explain or adapt all of it. Poetry was translated preserving line structure but without rhyme (forced rhyme in translation usually destroys meaning).

Everything is documented in `CLAUDE.md` — so next time we don't start from scratch.

---

*P.S. This article was also written by Claude. I just asked. We're good.*
