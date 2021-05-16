# Cheatsheets

# VS Code
## custom color titlebar
```json
{
    "workbench.colorCustomizations": {
        "titleBar.activeForeground": "#000",
        "titleBar.inactiveForeground": "#000000CC",
        "titleBar.activeBackground": "#F3DB04",
        "titleBar.inactiveBackground": "#f3db04bd"
        }
}
```
# inbox

## wget grab the site
```bash
wget --mirror \
  --convert-links \
  --adjust-extension \
  --page-requisites \
  --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" \
  --restrict-file-names=nocontrol \
  https://example.com
```

## jenkins timezone
is adjustable per user - anyone can set its own TZ to show times in.
