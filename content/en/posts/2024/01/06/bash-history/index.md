---
title: "bash history: rewriting history"
date: 2024-01-06T22:30:53-05:00
# bookComments: false
# bookSearchExclude: false
categories:
    - technical
tags:
    - bash
    - shell
    - history
    - awk
    - sponge

---

## The problem with bash history

At some point I thought it was a good idea to have a timestamp for every command executed in the terminal.
<!--more-->
The bash developers agreed, so you can easily set this up if you want:

This line in your profile

```shell
export HISTTIMEFORMAT="[%F %T] "
```

makes bash history look like this:

```shell
12715  [2024-01-06 22:24:48] gs
12716  [2024-01-06 22:24:50] git diff
12717  [2024-01-06 22:24:54] git add -u
12718  [2024-01-06 22:24:54] gs
12720  [2024-01-06 22:25:41] gs
12721  [2024-01-06 22:27:56] history
12722  [2024-01-06 22:28:16] history | wc -l
12723  [2024-01-06 22:28:24] history | head -10
12724  [2024-01-06 22:28:24] history | head -10
12725  [2024-01-06 22:28:38] history | head -10 | awk '{print $5}'
```

However, a small problem turned up — the total number of entries in history was 12k, while unique ones were only ~5k, meaning almost a threefold overhead.

```shell
$ history | awk -F] '{print $2}' |  wc -l
   12741
$ history | awk -F] '{print $2}' | sort -u | wc -l
    4741
```

It turns out that enabling timestamps causes bash to ignore (or fail to handle properly) the setting

```shell
export HISTCONTROL=ignoreboth:erasedups
```

which was supposed to prevent duplicates from appearing in history.

Time to make a backup and fix it.

## Making a backup

Since [my dotfiles live in a git repository](https://github.com/disfinder/pimp-my-mac/blob/master/playbook-init.yml#L155-L167), backing up is straightforward:

```shell
j dotfiles && git add .bash_history && git cm 'SAVE: before changing bash history'
```

## Fixing it

{{< hint info >}}
My profile, like many other things, is managed through [an Ansible playbook I wrote myself](https://github.com/disfinder/pimp-my-mac), so I don't edit configs directly — I edit the templates and then apply everything with Ansible.
{{< /hint >}}

Comment out the line with `export HISTTIMEFORMAT="[%F %T] "` in the [bash profile template](https://github.com/disfinder/pimp-my-mac/blob/master/bash/bash.bashrc)

We'll also need `sponge`, so it has to be added to the [list of brew packages](https://github.com/disfinder/pimp-my-mac/blob/7ffd9faaa02a8f8c3bed4033e2f88c46c4259bb5/playbook-init.yml#L17)

Close all bash sessions, launch `zsh`, and update the bash profile and brew packages:
```shell
./playbook-init.yml --tags bash,brew
```

## Rewriting the old history

Even after the changes, the current history file will still contain timestamps. To get rid of them, we need `sponge` — without it, [it's tricky to write to the same file you're reading from](https://mywiki.wooledge.org/BashPitfalls#cat_file_.7C_sed_s.2Ffoo.2Fbar.2F_.3E_file).

```shell
cat ~/.bash_history | grep -v '#' | sort -u | sponge  ~/.bash_history
```

{{< hint warning >}}
Commands that contained the `#` character will also be lost — I realized this after the fact. I checked the backed-up version: such commands were there, but not many, and they hold no "historical" value, so I'll leave it. Too lazy to redo it.
{{< /hint >}}

## Verifying

```shell
$ history | awk '{$1="";print $0}' | wc -l # print everything except the first field
    4802

$ history | wc -l
    4802
```

Voila.
