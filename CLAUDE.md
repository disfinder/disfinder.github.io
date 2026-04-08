# CLAUDE.md

## Repository

Hugo static site blog with multilingual content. Languages: Ukrainian (`content/ua/`), English (`content/en/`), Russian (`content/ru/`).

## Translation workflow

To translate all Ukrainian content to English, iterate over `content/ua/**/*.md`. For each file that has no corresponding `content/en/` counterpart, spawn **one foreground subagent** to translate it and write the result. Do this sequentially, one file at a time.

Find the next untranslated file:
```sh
find content/ua -name "*.md" | sort | while IFS= read -r ua; do
  en=$(echo "$ua" | sed 's|content/ua/|content/en/|')
  [ ! -f "$en" ] && echo "$ua" && break
done
```

Count remaining:
```sh
find content/ua -name "*.md" | sort | while IFS= read -r ua; do
  en=$(echo "$ua" | sed 's|content/ua/|content/en/|')
  [ ! -f "$en" ] && echo "$ua"
done | wc -l
```

### Translation rules for each file

- Keep all frontmatter keys intact (do not add or remove keys)
- Do **NOT** translate tag values
- **DO** translate `title`, `description`, and other descriptive frontmatter fields
- Translate the full body text (Ukrainian or Russian → English)
- Preserve all markdown formatting, image references, links, and code blocks exactly

### Subagent instructions template

```
Read the file `content/ua/path/to/file.md`, translate it from Ukrainian (or Russian)
to English, then write the English version to `content/en/path/to/file.md`
(create directories as needed with Bash mkdir -p).

Rules:
- Keep all frontmatter keys intact
- Do NOT translate tag values
- DO translate title, description, and other descriptive frontmatter fields
- Translate the full body text
- Preserve all markdown formatting, image references, links, and code blocks exactly
```

### Permissions

`.claude/settings.json` auto-allows `Write(content/en/**)` and `Bash(*)` for subagents so no interactive approval is needed per file.

### Important lessons learned

- Use foreground agents (not background) — background agents cannot get interactive tool approval
- Use `sed 's|content/ua/|content/en/|'` for path substitution, not bash string replacement (which adds literal backslashes)
- Do NOT batch multiple files into one agent — one agent per file, sequentially
- Get the full file list once with `find`, then iterate from memory without re-running `find` between files
- Do NOT create Python scripts for file listing; use `find` in bash

## Image symlinks

Images live next to their Ukrainian source posts. The English versions need access to the same images. Instead of copying, create relative symlinks in `content/en/` pointing back to `content/ua/`.

### Create symlinks for all missing images

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

The `content/en/static/img/images` directory is covered by a single directory-level symlink:
```sh
ln -s "../../../ua/static/img/images" "content/en/static/img/images"
```

### Check for broken symlinks

```sh
find content/en -type l | while read f; do [ ! -e "$f" ] && echo "BROKEN: $f"; done
```

## Hugo

Build: `hugo`
Dev server: `hugo server`

Content structure:
- `content/ua/` — Ukrainian source content
- `content/en/` — English translations
- `content/ru/` — Russian content
- `content/ua/posts/LJ/` — LiveJournal archive (2007–2017, ~181 posts)
