# Cheatsheets


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
