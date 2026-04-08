---
title: "Tardis"
weight: 0200
date: 2025-06-07T21:50:21-14:00

tags:
    - tardis
    - rack
    - cabinet
    - iot
    - storage
    - 3dprint
    - ddd
categories:
    - projects

---

## Have you met Tardis?

A blue kitchen cabinet, whose primary purpose is to house 3D printers and associated junk.

{{< img-thumb-cap "tardis/0001_tardis_itself.png" "400x" >}}{{</ img-thumb-cap >}}

{{< img-thumb-cap "tardis/0002_tardis_itself.png" "400x" >}}{{</ img-thumb-cap >}}

## Plan

- [x] door locks
- [ ] slabs for printers
  - [x] one for Calculon
  - [ ] another for Eva
- [/] vinyl sound insulation
  - [/] rear and side walls at the bottom
  - [ ] rear and side walls at the top
  - [ ] bottom doors
  - [ ] top doors?
- [/] foam seal insulation
- [/] electrification
  - [ ] extra set of outlets inside?
  - [/] chargers for
    - [ ] phone
    - [x] tablet
    - [ ] laptop
- [/] placing printers
- [ ] ventilation (forced, ducted?)
- [ ] dynamic fan control
- [ ] kill-switch for the printer via smart plug
- [ ] placing servers
- [x] shelf pull-out stoppers
  - [x] design
  - [x] print
- [/] grommets for cable holes, 2 pcs
  - [/] design
  - [ ] print
  - [ ] installation
- [ ] bottom shelf
- [/] bricks
  - [x] paint
  - [ ] dry
  - [ ] install

## Progress

### Door Locks

{{< img-thumb-cap "tardis/0003_door_lock.png" "400x" >}}{{</ img-thumb-cap >}}

### Slab for Calculon

{{< img-thumb-cap "tardis/0004_slab_for_calculon.png" "400x" >}}{{</ img-thumb-cap >}}

### Vinyl Sound Insulation

{{< img-thumb-cap "tardis/0005_vynil_insulation.png" "400x" >}}{{</ img-thumb-cap >}}

### Printers in Place

{{< img-thumb-cap "tardis/0006_printers_in_place.png" "400x" >}}{{</ img-thumb-cap >}}

### Shelf Stoppers

Why they are needed: shelves rest on four pins, and if you slide a shelf forward, the rear edge of the shelf falls off the two back pins.

If a shelf loaded with junk is sitting above a printer — that's trouble. A simple way to prevent this is to block the shelves from sliding forward.

{{< img-thumb-cap "tardis/0007_shelf_stoppers.png" "400x" >}}{{</ img-thumb-cap >}}

{{< img-thumb-cap "tardis/0008_shelf_stoppers.png" "400x" >}}{{</ img-thumb-cap >}}

{{< img-thumb-cap "tardis/0009_shelf_stoppers.png" "400x" >}}{{</ img-thumb-cap >}}

### Foam Seal Insulation

To reduce noise, I not only nailed vinyl panels to the side and rear walls, but also glued winter draught-seal foam tape to the bottom doors.

Predictably, this affected convection and temperature.

Nothing to compare against yet, since there is no historical data.

### Thermal Monitoring

Bought and installed a bunch of temperature/humidity sensors.

After half an hour of printing, the temperature rose from a stable 23°C to almost 31°C.

{{< img-thumb-cap "tardis/0010_temperature.png" "400x" >}}{{</ img-thumb-cap >}}

A brief airing brought the temperature down a little — waiting for the results of a 4-hour print.

### Smarthoming

Since alongside the sensors there are also smart plugs, and one can control the other — the idea is to dynamically switch the supply and exhaust fans on when it gets very hot (40°C, for example) and forcibly kill the printer when the temperature becomes critical (50°C, for example).
