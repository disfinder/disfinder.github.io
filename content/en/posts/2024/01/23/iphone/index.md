---
title: "Iphone"
weight: 10
date: 2023-01-23T00:50:33-04:00
categories:
    - diary
tags:
    - pixel
    - pixel4
    - android
    - ios
    - iphone
    - iphone15
    - migration
    - mobile
---

## new iphone

In 2024 the last bastion fell — I finally switched from Android to iPhone.
<!--more-->

There were several reasons for this, one (and the main one) being that my old Pixel 4 was on its last legs: it wouldn't hold a charge and was sluggish. And it's supposed to be a flagship — not even five years old!
The second (less major) reason — I had wanted to make this migration a few years earlier (I had my eye on the symbolically numbered model 13), but put it off for a better time, and well, here it is, that "better" time. At least I got to wait for USB-C.

## What's good

When turned on, the iPhone found a nearby iPad, asked me to enter the PIN from that iPad, and automatically pulled in the WiFi settings and Apple ID. Cool, because this is usually a chicken-and-egg problem — the account password is in KeePass, but to install KeePass you need the account password.
Like a "bring a friend" setup — I liked it.

What else is good:

- battery lasts more than a day of heavy use
- AirPods integration across all devices — they switch from tablet to phone to laptop quickly and seamlessly
- Face ID works faster and more reliably than Google's (though the Google phone is considerably older)
- can play music/podcasts directly to Sonos speakers (the speakers support AirPlay but not Android, so this is more of a speaker limitation than an iPhone achievement)
- bright screen

## What's bad

- the stock keyboard is garbage, the Google keyboard can't be customized
  - found [Microsoft SwiftKey AI Keyboard](https://apps.apple.com/us/app/microsoft-swiftkey-ai-keyboard/id911813648)
- can't set a male voice in Google Maps
- can't freely arrange app icons on the home screen
- loading ringtones for calls or alarms is a complete mess

## What hasn't changed

- Firefox
- Gmail, all Google products (Sheets, voice, Fi)
- Telegram

## App migration

### Honored mentions

- Stocard — an app for storing loyalty cards (basically just barcodes) — migrated without a hitch.
- Time Buddy — a simple but useful app to check what time it is across time zones. Nice that it's available on both platforms.
- Google Authenticator — actually learned to sync, unexpectedly!

### Disappointment of the year

A while back (a few years ago) I chose **Duo Mobile** as my two-factor authentication app, and it had several advantages:

- the code timeout countdown started when you tapped the code, not when you opened the app (convenient — a little more time)
- allowed editing accounts — giving them custom names and icons
- migration between devices

Compared to the Google Authenticator of the time, it was so much more convenient and better — Google's wouldn't even let you rename added accounts, let alone offer any kind of sync.

However, when migrating Android -> iOS, it was actually Google Authenticator that handled things perfectly. In the years I hadn't used it, it had grown a migration feature and even some basic editing, and a couple of my accounts transferred without issues.
Duo Mobile, on the other hand, responded to pressing "Connect a new phone" with this lovely message:

```txt
Something went wrong
We were unable to generate a qr code for your accounts
```

And the only thing that came up when searching for this error was [a support reply on the Cisco forum](https://community.cisco.com/t5/duo-mobile-app/android-qr-code-quot-something-went-wrong-quot/td-p/4877969)

```txt
It appears that if Instant Restore was already performed once, it cannot be performed again.
```

I have no words other than WTF???

Spent an evening logging into every important account — GitHub, AWS, etc. — disabling 2FA there and re-enabling it with the new app.

### Disappointment of the month

Notebloc, a great app for scanning documents with your phone camera that I liked so much I actually bought it (though the free version works fine, just with ads) — does not support syncing data from Android to iOS.
I even wrote them an email — and got a reply saying "we're working on it and will have it done soon," but the last update in the App Store was a year ago, so I had to look for an alternative.
A shame, really — it took decent photos, exported to JPG/PDF of your choice, and also served as storage for digital copies of documents (passports, vaccination cards, etc.).
Will have to find a replacement.

### Replacements

- Podcast addict -> Overcast
- Keepass mobile -> keePassium
- aCalendar -> [Calendars](https://apps.apple.com/us/app/calendars-planner-organizer/id608834326)
- Notebloc -> Microsoft OneNote (+ MS Lens)


## New apps

### widgetsmith

## alarm

How to load files for the alarm? Sync via iTunes!

## ringtone

[instructions on how to set a ringtone](https://mashable.com/article/how-to-set-a-song-as-your-ringtone-on-iphone) in 18 steps — and you need Garage Band...
