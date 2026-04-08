---
title: "My Backups"
weight: 0050
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
date: 2023-12-28T17:20:27-05:00
---

{{< hint warning >}}
# WARNING
this article is still a work in progress.
{{< /hint >}}

# Backups

## Sources — what we actually want to back up

- personal important documents `~/documents`
- developer folder `~/develop`
- photos from phone(s)
- the entire photo collection: from phones, cameras, etc.
- keys/passwords
- personal laptop system (why? because there's a mechanism for it)
- Telegram chats
- Google Drive
- Dropbox
- YouTube — accounts get banned, videos get deleted, but the content can be interesting and useful

- server configuration
- router configuration

So it became clear that backup sources fall into two categories — internal (documents, passwords) and external (YouTube, Google Drive).

## What we won't back up

No multimedia (except personal photos/videos) is worth backing up.
Your own photos and videos are priceless, but music or movies — you can find those one way or another, and if you can't — you can do without.
One exception is YouTube: here we're talking about creating an offline copy just in case, and backing up that copy itself would be too expensive due to its large size.

## How about structuring the data into a table

| Source                        | Name          |
| ----------------------------- | ------------- |
| personal important documents  | `~/documents` |
| developer folder              | `~/develop`   |
| photos from phones            | `DCIM`        |
| entire photo collection       | `photo`       |
| keys/passwords                | `passwords`   |
| personal laptop disk          | `laptop`      |
| Telegram chats                | `telegram`    |
| Google Drive                  | `gdrive`      |
| Dropbox                       | `dropbox`     |
| YouTube                       | `youtube`     |

## What is currently being backed up

### documents

Important documents are stored locally on the laptop and synced to the home Synology NAS using Synology Drive Client.

### telegram chats

Telegram chats and groups turn out to be a source of information, and the important ones need backups. You never know when Telegram will shut down or start charging for history older than one week (like free Slack does, for example).
To export, I had to install the ugly macOS desktop client (the nice one has no export) and export manually for now.

### photos from phones

The phones have the Synology Moments/Photos mobile apps installed, which can sync photos/videos from the camera roll to Synology over the local network or via [vpn](posts/2024/09/28/tailscale/).

### Google Photos

Using `Google Takeout`:

- archives are periodically created, 50 GB per file
- manually downloaded to the laptop
- manually synced to Synology (use syncthing?)
- manually extracted into a single rolling-update destination folder
- ~~committed to git (?)~~

### Google Drive

Same as Google Photos. Takeout file size is 1.5 GB.

### youtube

Using a fork of `youtube-dl`, it pulls the "History" playlist — which is the watch history — and downloads those videos locally. (Takes up 4.7T)
~~Runs on a cron job on the server.~~
Google changed something and now the cookies that previously allowed downloading the private history playlist expire after the first use, so running it automatically no longer works. Each time you need to extract a fresh cookie file, pass it to the script, and run it manually. Couldn't get it fixed yet. It works in principle, but it's yet another manual step on top of many others.

```shell
...save cookies
make yt-cookies-get yt-cookies-update
ssh boxtree && ...


[youtube:tab] history page 156: Downloading API JSON
[youtube:tab] history page 157: Downloading API JSON
[youtube:tab] history page 158: Downloading API JSON
[youtube:tab] Playlist history: Downloading 27231 items of 27231

```

### 23andme

In light of news that 23andme might shut down due to lack of funding, I decided to download my data from their system. They also recommend requesting deletion — still thinking about it.
The process is similar to Takeout — you submit an archive request, it churns away for a while and sends an email when you can download.
