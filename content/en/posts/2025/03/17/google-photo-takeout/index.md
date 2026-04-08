---
title: "Backing Up Photos from Google Photos"
weight: 10
date: 2025-03-23T09:40:44-04:00
categories:
    - diary
tags:
    - google
    - photo
    - takeout
    - backup
---
Preparing for [World Backup Day](https://en.wikipedia.org/wiki/World_Backup_Day) — March 31st, the eve of April Fools' Day — I revisited the topic of [Google Takeout](posts/2024/01/15/google-takeout/)
<!--more-->

## What happened

This time with a focus solely on photos, because the 200 GB of storage I purchased is 90% full of photos/videos, and the annoying Gmail notification that my mail will stop working requires some kind of solution.

## What can be done

There are essentially two options:

- pay Google more money for more storage
- reduce usage of the existing storage by deleting junk.

Since Google's policies have long stopped suiting me (I really should write about that separately — strange I haven't already), I don't want to give them more money. I decided to declare videos as the junk:

- they take up the most space
- they're not viewed as often as photos
- and they're not as useful
- they're backed up to Synology
  - [x] need to update the [backup article](/docs/projects/backup/)
- they're also available in [Google Takeout](/tags/takeout/) archives

## Pitfalls

If I delete videos from Google Photos, then every subsequent backup (takeout) could potentially be missing data that was previously in Photos. This complicates the backup — I can no longer simply keep the latest takeout copy and trust that it has everything; I'll have to somehow repack it.

Since the [last time I dealt with Google Takeout](posts/2024/01/15/google-takeout/) — it hasn't gotten better — it's still impossible to automate the download (someone on Reddit got it working once somehow, I couldn't) — so I'm again manually downloading 8 files of 50 GB each via browser to my laptop, then rsyncing from the laptop to the server. I had to re-upload a few times because the laptop went to sleep; after waking up rsync would continue, but in the end the md5 checksums of a couple of files didn't match.

Though, something did get better — the server is now (finally) connected via cable instead of WiFi, so the upload was noticeably faster.

## The problem

So I have two (in the future more) sets of archive files that I need to merge into one folder without losing anything along the way — some photos may have been deleted for quality reasons, but others (like videos) — for lack of space. Some I might want to delete locally because they're duplicates and Google put them in several folders multiple times (although I probably won't bother since properly you'd want to replace deleted ones with relative symlinks... sounds like yet another project...)

## Why not git?

Late at night, my sleepy brain produced this algorithm:

- create a git repository in an empty folder with one initial commit
- put the first version of photos from Takeout-01 there and commit
- put (rsync) the second version of photos from Takeout-02 and look at the diff:
  - how many files were added
  - how many were changed
  - no deletions expected at all
- commit the second version
- evaluate how much time and other additional resources this approach takes
- reassess the decision
- if the reassessment is positive, continue with Takeout-N+1

## Unpacking

The server isn't very fast in terms of either storage or computing power: unpacking took 3.5 hours

```shell
$ time for i in $(\ls *.tgz); do echo $i; tar xf $i -C extract ; done
takeout-20250313T040306Z-001.tgz
takeout-20250313T040306Z-002.tgz
takeout-20250313T040306Z-003.tgz
takeout-20250313T040306Z-004.tgz
takeout-20250313T040306Z-005.tgz
takeout-20250313T040306Z-006.tgz
takeout-20250313T040306Z-007.tgz

real    216m57.269s
user    47m39.655s
sys     113m16.870s

$ ncdu
...
Total disk usage: 316.7 GiB
```

## git add

I forgot to add `time` to the `git add .` command, so we won't know exactly how long it took — I realized too late, and it's a shame to waste time restarting.

Although maybe we will find out, because there's a chance the partition will run out of space before I get to draw any conclusions.

### Nine freaking hours

```shell
$ time git add .

real    556m16.660s
user    338m58.527s
sys     77m12.387s
```

### Two hundred freaking gigabytes

```text
---------------- .git ---------------
  211.4 GiB [###############] /objects
   15.7 MiB [               ]  index
  176.0 KiB [               ] /hooks
   24.0 KiB [               ] /logs
   12.0 KiB [               ] /refs
   12.0 KiB [               ] /info
   12.0 KiB [               ]  config
   12.0 KiB [               ]  description
   12.0 KiB [               ]  HEAD
   12.0 KiB [               ]  COMMIT_EDITMSG
```

### git tuning

I redid the git not because I ran out of space, but because:
a) I was still curious how long it actually took, and
b) I forgot to tweak the git settings a bit, and not knowing at which point they take effect — during add or commit — it's safer to start over, especially since I hadn't gotten very far.

The git settings are as follows

### .gitattributes

do not apply delta compression, do not merge, do not convert line endings for all files listed here

```.gitattributes
[attr]media -diff -merge -text -delta
*.jpg  media
*.jpeg media
*.png  media
*.gif  media
*.heic media
*.mov  media
*.mp4  media
*.webp media
*.m4v  media
*.avi  media
```

### Ukrainian filenames

For some reason git was showing Ukrainian file and directory names as something like `\312\313\554` — which I suspect is Unicode encoding, but I'd rather have it in the usual readable form. Fixed like this:

```shell
git config core.quotepath false
```

## Conclusions

The idea is interesting in theory and technically works — but in practice it proved impractical.
Burying 240 GB underground (in `.git`) for the dubious benefit of knowing "what changed between one archival and the next" — and at the cost of rather long git operations — seems like too high a price to pay.
I'll simply "repack" the contents of the takeout archives, overwriting changed files on top of the old ones and adding new ones.

## Statistics

### git commit

Not that bad, actually

```text
real 17m56.089s
user 0m7.987s
sys 0m37.107s
```

### git status before adding files

```text
$ time git status
On branch master
nothing to commit, working tree clean

real 0m22.238s
user 0m0.398s
sys 0m10.211s
```

### add a files from newest takeout

```text
rsync blablabla
sent 348,875,203,737 bytes  received 3,209,024 bytes  14,322,067.89 bytes/sec
total size is 356,587,688,292  speedup is 1.02

real    405m59.681s
user    37m38.025s
sys     102m19.912s
```

### git status after adding files

```text
It took 16.44 seconds to enumerate untracked files.
See 'git help status' for information on how to improve this.

no changes added to commit (use "git add" and/or "git commit -a")

real    57m33.692s
user    31m15.525s
sys     12m55.463s
```
