# The Ultimate Guide To PSX CD-Rs

_By Alex Free - v1.1.8- 7/16/2024_ 

By using a high-quality [CD-R burner](#cd-r-burner), high-quality [CD-R media](#cd-r-media), [correct burn speed](#burn-speed), and the correct options in [burning software](#burning-software) you will avoid common issues with burned CD-R media on the PSX/PS1, such as:

*   Extremely slow loading times.
*   Game freezes (drive gets loud, spins fast, disc stops spinning, because it can't read the disc).
*   FMV playback issues (lags, skips, or cuts out).
*   Audio playback issues (cuts out or skips).

Inspired by the GBATemp thread [Do modern burners/CD's make lower quality PS1 backups?](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/), this guide documents all findings on creating the best PSX CD-Rs.

Before continuing, if your drive has issues reading original PlayStation CD-ROMs and or [known high quality CD-Rs](#cd-r-media) you should really try my [PSX CD drive refurbishment guide](https://alex-free.github.io/unofficial-ps1-cd-drive-service-manual/) first. This guide is the next step you should take.

## Table Of Contents:

_CD-R:_

*   [CD-R Capacity](#cd-r-capacity)
*   [CD-R Composition](#cd-r-composition)
*   [CD-R Media](#cd-r-media)

_Ripping & Burning:_

*   [CD-R Burners](#cd-r-burner)
*   [Burn Speed](#burn-speed)
*   [Ripping PSX CDROMs](#ripping-psx-cd-roms)
*   [Burning Software](#burning-software)
*   [CD-R Care](#cd-r-care)

_Playing:_

*   [Console Model](#console-model)
*   [Orientation Trick](#orientation-trick)

## CD-R Capacity

### History

The CD-R was invented by Sony, Phillips and Taiyo Yuden in 1988. Originally there was only one capacity/density, 63 minute/550MB. Cyanine dye was the first formulation used, and initially this led to issues with low reflectivity and stability in the aging process.

By the early 90s, the original Cyanine formulation was improved by Taiyo Yuden into what we now know, which while not commonly referred as, is considered 'super cyanine' by comparison. This change and the strictest quality control in the industry led to Taiyo Yuden being the best CD-R manufacturer.

The next step in CD-R evolution was the 71 minute/620MB capacity, although this appears to have only been [sold](https://web.archive.org/web/20020307134130/http://www.yuden.co.jp/product/jump_cd-r.htm) for "specific business purposes" by Taiyo Yuden. Sony did contract Taiyo Yuden for this exact capacity/density for the PlayStation Master Disc 71PS, not only for the original PS1 but also the PS2 CD titles (TimeSplitters). It is only known that this capacity/density was made by Taiyo Yuden at this time. By 1995, 74 minute/650MB media was phasing out all lower capacity/densities. 

80 minute/700MB CD-Rs, while originally only used in high-end audio equipment, began to appear on the market in 1998. While extremely expensive at introduction compared to lower capacity CD-Rs ($25 a piece!), by 1999 they had gone down significantly ($2 a piece). An 80 minute/700MB capacity marginally violates the Orange Book standard specifications, and at first only low-quality manufacturers were making 80 minute/700MB CD-Rs. High-quality manufacturers did not make them at first due to Orange Book violation, manufacturing tolerances, and compatibility issues with existing burners and drives. Sony and HP were among the biggest to explicitly not support this capacity of CD-R well into 1999 in their burners, firmware, and drive hardware. Eventually all of this was backtracked and high-quality manufactures of CD-Rs such as Taiyo Yuden even began selling their own 80 minute/700MB CD-Rs. Sony and HP burners/firmware/hardware also added official support.

By the mid 2000s, 74 minute media stopped being produced, being replaced entirely by 80 minute/700MB CD-R products.

### The Ideal Capacity For The PSX

The PSX CD-ROM drive hardware has a [seek table](https://problemkaputt.de/psx-spx.htm#cdromresponsetimings) that was designed for 71 minute/620MB discs. This seek table is a hardcoded optimization that is used to specify how the laser is to handle seeking to different parts of the discs. While all PSX CD-ROMs and PSX CD-R Master Discs were made in this capacity, unfortunately there are no longer any CD-Rs being manufactured at this specification. Even back in 1995 on the [SCEA BBS archives](https://psx.arthus.net/sdk/Psy-Q/DOCS/BBS/scea_bbs.pdf) Sony did not recommend the then popular 74 minute CD-Rs for working with the dev console hardware. 71 minute media was what was recommended at that time because that is what the console is tuned for:

_From the SCEA BBS (edited formatting):_

`3/29/95 2:34 PM`

`Why 71 minute? Why 900e?`

`BillÊ"Angus" Guschwan`

`CD`

`I had 2 CD questions:` 

`1 - Can we use the CDW950E with the CDGEN software? Why or why not?`

`CD-ROM Generator doesn't support CDW-950E. CDW-950E doesn't have compatibility in SCSI
protocol and doesn't have capability to create master disc.`

`2 - Why do we need to use 71 minute media? Some people like to use the cheaper >74 minute
media. Can you tell me why we need the 71 minute CDRs?`

`The 71min disc is different from 74min at the dencity. PlayStaion is tuned up for 71min and
make reliability for data read. A 74min disc makes error rate more higher`

All these different capacity discs are the same [12cm size](http://www.osta.org/technology/cdqa7.htm) physically, so to increase capacity the spiral windings of the data are packed tighter and tighter. This means that the seek table of the PSX will most likely overshoot and have to compensate (increasing seek time, likelihood of disc read errors, etc.) in finding the sector data it really wants to read if you're using a disc with a capacity of higher than 71 minutes. This problem gets exponentially worse as you increase capacity from say 74 minute to 80 minute discs. Looser spiral windings in lower capacity CD-R media also means larger pits and lands which again are easier to read.

63 minute CD-Rs are also extremely rare and expensive. They probably are better then 74 minute ones, but maybe they have the reverse issue with >71 minute media?

The best CD-R capacity to use for the PSX is 71 minutes, specifically you want the PSX CD-R Master Disc 71PS. However they now go for over $100 per unit on eBay!

74 minute CD-Rs while somewhat rare and expensive (but not nearly as much as the lower capacities) are still much better then 80 minute media. They can be found as new old stock on eBay for varying prices. They are the most obtainable, ideal media for the money.

80 minute CD-Rs are the only capacity still made brand new to this day. They are the cheapest and most plentiful option available, although they are also much harder to read for the PSX compared to 74 minute discs. Seek issues are very prevalent with this capacity.  Early PS2 console models (SCPH-10000 to SCPH-39004) have a more fatal experience with [80 minute media when it comes to some games](https://github.com/socram8888/tonyhax/issues/24), but luckily this has a  workaround now by patching the CD image before burning it with my [PSX 80 Minute Patcher](https://alex-free.github.io/psx80mp).


##  CD-R Composition

CD-Rs are a bit harder to read compared to CD-ROMs, since they are on average [60-70%](https://www.scientificamerican.com/article/how-do-rewriteable-cds-wo/) as reflective. Some really early CD audio players and even CD-ROM drives are known to not be able to read CD-Rs. The PSX CD-ROM drive luckily can read CD-Rs. The dev consoles have the same overall CD-ROM drive hardware and Sony officially supported using CD-Rs when testing in-production games with these dev consoles, see the old [SCEA BBS archives](https://psx.arthus.net/sdk/Psy-Q/DOCS/BBS/scea_bbs.pdf) from 1995.

CD-RW discs are even less reflective than CD-Rs, at around 25% when compared to CD-ROMs. This is why CD-RWs can not be used on the PSX (without modification to the laser power of the CD-ROM drive, which will cause it to burn out).

For the CD-R, you want:

* High-quality dye (Best to worst for the PSX in this order: Cyanine, Phthalocyanine, AZO, SuperAZO).
* A highly reflective layer system.
* High-quality polycarbonate and "sealing" process combining all parts of the CD-R.

The best CD-R to use is the original PlayStation Master Disc 71PS. These are the correct density  (71 minutes/620MB), use the high quality Taiyo Yuden manufacturing process, and [Cyanine (Type 0)](https://cdmediaworld.com/hardware/cdrom/taiyo_yuden.shtml). Sony required use of these for development of PS1 and PS2 titles, they were meant to be used in dev units for testing and for shipment of the final build to Sony. Using these CD-Rs today is unrealistic due to the insane prices these rare discs fetch now.

The PSX works best with a specific dye/ATIP info, and that info has been derived from the official Sony [PlayStation Master Disc 71PS CD-R (71 minutes)](playstation-master-disc-71ps-71-minutes.md) used for development of PSX titles back in the day. The closer you are to this reference, the better your 'retail' CD-R will perform:

    ATIP info from disk:
    Indicated writing power: 4
    Is not unrestricted
    Is not erasable
    ATIP start of lead in: -11849 (97:24/01)
    ATIP start of lead out: 319725 (71:05/00)
    Disk type: Long strategy type (Cyanine, AZO or similar)
    Manuf. index: 25
    Manufacturer: Taiyo Yuden Company Limited

Essentially you are looking for [Cyanine (Type 0) dye](https://cdmediaworld.com/hardware/cdrom/taiyo_yuden.shtml), and manufacturing index 25 by Taiyo Yuden Company Limited.

Taiyo Yuden's manufacturing process and QA is the [best in the industry](https://yuden.com/). JVC merged with Taiyo Yuden in [2009](https://forums.stevehoffman.tv/threads/taiyo-yuden-jvc.190046/), and globally labeled their professional line as JVC Taiyo Yuden until 12/31/2015 when the last Taiyo Yuden factory closed. Afterwards, Taiyo Yuden engineers would [bring](https://yuden.com/) the process to [CMC](https://www.gotmedia.com/taiyo-yuden-cdr-shiny-silver.html) factories (the last remaining manufacturer of CD-Rs today) to create the [CMC Pro Powered By Taiyo Yuden Technology](cmc-pro-powered-by-taiyo-yuden-technology-80-minutes.md) line. **These are the best discs still manufactured.**

[CDMediaWorld](https://cdmediaworld.com) did an artificial [aging test](https://cdmediaworld.com/hardware/cdrom/cd_quality.shtml) to test the quality of the various CD manufacturers at the time. So while currently unconfirmed, other high quality manufacturers should also perform excellently with the PSX:

----------------------------------------

|CD Manufacturer  | CD Brand | Quality |
| --------------- | ------------- | ------------- |
| Mitsui Chemicals 	| HP, Mitsui, Philips & Sony | High
| Taiyo Yuden Company Limited 	| Taiyo Yuden, 3M, Sony, Philips, Boeder & Imation | High |
| TDK Corporation 	| 3M, Pioneer, TDK & Yamaha | High |
| Kodak Japan Limited 	| BASF & Kodak | High |
| Pioneer Video Corporation | Pioneer | High |
| Ricoh Company | KAO & Ricoh | High |
| Mitsubishi Chemicals Corporation | Sony, Traxdata & Verbatim | Mid |
| Hitachi Maxell, Ltd. |	KingTech & Maxell | Mid |
| Fuji Photo Film Co, Ltd. |	FujiFilm | Mid |
| Princo Corporation | BTC, Princo & KingTech | Bad |
| Gigastorage Corporation | Gigastorage | Bad |
| Lead Data Inc. | Lead Data, Lenco & Targa | Bad |
| Fornet International Pte Ltd. |	Fornet & Magnex | Bad |
| Ritek Co. |	Arita, BASF, Dysan, FujiFilm, Hi-Space, Intenso, JTEC, Memorex, MegaData, MMore, Onkyo, Philips, Pony, Ricoh, Rimax, Samsung, Targa, TDK, Traxdata, Waitec & War | Bad |
| CMC Magnetics Corporation |	BASF, CMC & Imation | Bad |

There were once many different competing manufactures of CD-R media, but as of 2023 one single monopoly known as CMC Magnetics has [bought out every good manufacturer of CD-R media](https://github.com/alex-free/tonyhax/issues/30).

## CD-R Media

Real PSX performance test results with multiple CD-Rs:

--------------------------------------------

|CD-R Brand  | Capacity | Quality | Tester |
| --------------- | ------------- | ------------- | ------------- |
| [PlayStation Master Disc 71PS](playstation-master-disc-71ps-71-minutes.md) | 71 minutes/620MB | High | Alex Free |
| [Taiyo Yuden That's CD-R CDR-74ZY](taiyo-yuden-thats-cd-r-cdr-74zy-74-minutes.md) | 74 minutes/650MB | High | Alex Free |
| [JVC Taiyo Yuden](jvc-taiyo-yuden-80-minutes.md) | 80 minutes/700MB | High | _Implied_ |
| [CMC Pro Powered By Taiyo Yuden Technology](cmc-pro-powered-by-taiyo-yuden-technology-80-minutes.md) | 80 minutes/700MB | High | Alex Free |
| [TDK Data CD-R For Computer Writers](tdk-data-cd-r-for-computer-writers-74-minutes.md) | 74 minutes/650MB | Mid | Alex Free |
| [Verbatim DataLifePlus](verbatim-datalifeplus-74-minutes.md) | 74 minutes/650MB | Mid | Alex Free |
| [Verbatim DataLifePlus](verbatim-datalifeplus-80-minutes.md) | 80 minutes/700MB | Mid | Alex Free |
| [Verbatim UltraLifePlus](verbatim-ultralifeplus-80-minutes.md)  | 80 minutes/700MB | Mid | Alex Free |
| [Maxell CD-R](maxell-80-minutes.md) | 80 minutes/700MB | Bad | Alex Free |
| [Verbatim](verbatim-80-minutes.md) | 80 minutes/700MB | Bad | Alex Free |

## CD-R Burner

The EMF signal strength on burned discs produced by most modern burners is extremely weak (thanks [Ramapcsx2](https://github.com/ramapcsx2) for this info!). This is a key factor in how well the CD-R will work in the PSX. The PSX requires a burned disc with a strong EMF signal. ATAPI/IDE drives pre 2005 are very likely to produce discs with a strong EMF signal.

In a general sense, stay away from CD burners that:

* Are found in laptops.
* Are modern portable USB units without external wall power being required.
* Use SATA instead of ATAPI/IDE.
* Were manufactured in 2005 or later.

These are not hard rules, but rather a general idea for what you should be looking for in a burner. There will be exceptions to the above, but it's a great place to start your journey.

---------------------------

| Burner  | Quality | Tester 
| --------------- | ------------- | ------------- |
| HL-DT-ST GU90n  | Excellent | Kamil (psxdev discord)|
| IHAS124B Lite On | Excellent | [wolffangalchemist](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-7#post-10369990) |
| IHas124E Lite On | Excellent | [Armadillo](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-9#post-10409420) |
| IHas124Y Lite On | Excellent | [SquidDude](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-8#post-10401567) |
| Matshita UJ-8A8 | Excellent (no RAW-DAO ability to bypass EDC/ECC protection however) | [Blades](https://gbatemp.net/members/blades.711467/) |
| Matshita UJ-8E1 | Excellent | [Blades](https://gbatemp.net/members/blades.711467/) |
| NEC ND-3550A | Excellent | [Fien](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-2#post-10126429)  |
| **Plextor PX-708A**  | **Excellent** | **Alex Free**  |
| Pioneer DVR-AO4  | Excellent  | [DanHans42](https://github.com/danhans42) |
| Pioneer DVR-107DB  | Excellent | [Fien](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-7#post-10369813)  |
| Plextor PX-760A  | Excellent | [SylverRez](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-4#post-10236072) | 
| TEAC DW-224E-V  | Excellent | [DanHans42](https://github.com/danhans42) |
| Toshiba SD-R2102 | Excellent (no RAW-DAO ability to bypass EDC/ECC protection however) | [Blades](https://gbatemp.net/members/blades.711467/) |
| ASUS DRW-24F1ST | Bad | [Fien](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-2#post-10126429)  |
| IOMega ZIPCD 650 USB | Bad | [Alex Free](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-8#post-10408818) |
| LG GP63EX70 | Bad | Alex Free |
| Philips RWDV3210 | Bad | [Fien](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-7#post-10380318)
| Plextor PX-891SAF | Bad | [Ramapcsx2](https://github.com/ramapcsx2) |
| Sony AW-Q160S | Bad | [Fien](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-7#post-10367903) | 
| Sony-Optiarc AD-7280S | Bad | [Fien](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-7#post-10367903) | 
| TS-H492C | Bad | [Fien](https://gbatemp.net/threads/do-modern-burners-cds-make-lower-quality-ps1-backups.628708/page-2#post-10126429)  |

## Burn Speed

CD-Rs have ATIP info that explains to the burner how the disc should be burned (and at what speed they can be successfully burned). Each different CD-R media type has a unique dye/substrate/manufacturing process combination and an optimal way to be burned, which even varies with burn speed. This is known as a ['strategy'](https://www.tapeheads.net/threads/cdr-is-speed-all.33741/). Modern CD burners have fewer strategies in their firmware because it is 'good enough for most cases' to use a generic strategy that mostly works for modern writers, media, and readers (and it saves on flash storage space in the CD burner firmware). Key words, 'mostly works for modern readers', which the PSX certainly is not. The PSX came out in 1994, **before consumer grade CD-R burners were even available for [under $1000](https://web.archive.org/web/20030202233907/http://www.roxio.com/en/support/cdr/historycdr.html)**.

There isn't a best answer to what burn speed you should use with your specific CD-R burner and media, because the EMF signal strength varies by burn speed. You really need to do some trial and error tests to find what works best for your burner and media combination. Be aware that almost all modern (brand new as of 2020) CD burners are incapable of writing at a speed less then 10x, and most can't even do less then 16x. Older burners are capable of a wider speed range.

## Ripping PSX CD-ROMs

The below instructions cover ripping the entire PSX library successfully, including games which utilize EDC/EEC protection. 

LibCrypt protected games can simply be ripped by any standard CD burning software and then patched using my [LibCrypt Patcher](https://alex-free.github.io/libcrypt-patcher). The below instuctions do not 'preserve' the protection in any way since it is unnecessary with said patcher being available.

Documented ripping process:

* [Ripping With CDRDAO](ripping-with-cdrdao.md)

## Burning Software

While most burning software can burn a majority of PSX disc images just fine, there are some exceptions:

* Some games test for intentional invalid EDC/EEC data as an additional anti-piracy measure known as [EDC protection](https://alex-free.github.io/tonyhax-international/anti-piracy-bypass.html#edc). By using specific software with options available specifying to not regenerate the EDC/EEC data written to disc, we can completely get around this protection. Software that don't include this option most notably includes IMGBurn. Said software can therefore not burn EDC/ECC protected games correctly, but can burn unprotected or patched games just fine.

* A more advanced burn detection anti-piracy protection was released exclusively in some PSX games released in the PAL region, known as LibCrypt. That protection can be patched out with my [libCrypt patcher](https://github.com/alex-free/libcrypt-patcher) and then the disc burned will work in all burning software.


| Burning Software  | Supports EDC/ECC Protection | Burn Guide Available | Tester |
| --------------- | ------------- | ------------- | ------------ |
| CDRDao | Yes | [Yes](burning-with-cdrdao.md) | Alex Free |
| CDRecord | Yes |  **No, and not recommended for PSX specifically, has [other issues](https://alex-free.github.io/cdrtools/#usage)** | Alex Free |
| ImgBurn | No | No | Alex Free |

## CD-R Care

Tips:

* Keep Them Clean. Wiping with a clean high thread count microfiber cloth from the inner ring to the outer edge of the disc in all directions is the proper way to clean CDs.

* Keep Them Out Of The Elements. CD-Rs should be kept sealed in a Jewel case and not left loose (where they will collect dust). They should also be kept out of direct sunlight (in a dark closet or something is best).

* Don't put any sticky labels on them! I'm not sure about writing on discs with a Sharpie, so I just invested in a label maker and just put the label on the jewel case for the CD-R and call it a day.

## Console Model

CD-ROM technology was still developing at the time of the PlayStation's initial release in Japan (December 4th 1994). The original model's CDROM controller hardware is quite primitive compared to the last models, and what was found in PS2s. Disc reading tolerances improved greatly throughout the lifespan of the console. From best to worst disc reading performance and tolerances:

1) SCPH-10000 to SCPH-39004 PS2s, SCPH-9XXX PSX, SCPH-7XXX PSX - VC3A or VC3B controllers.

2) SCPH-1XX PSone - theory: made cheaper then any of the above? It is a VC3B or VC3C, but seems a bit less performant to many.

3) SCPH-5XXX - VC2 controller, auto bias/gain software focus, all-digital servo.

4) SCPH-1XXX, SCPH-3XXX - original VC0 or VC1 controller, analog servo, constant, manual hardware bias/gain set by screws on motherboard.

CDROM controller versions (from [no $ psx-spx](https://psx-spx.consoledev.net/cdromdrive/#19h20h-int3yymmddver)):


      (unknown)        ;DTL-H2000 (with SPC700 instead HC05)
      94h,09h,19h,C0h  ;PSX (PU-7)               19 Sep 1994, version vC0 (a)
      94h,11h,18h,C0h  ;PSX (PU-7)               18 Nov 1994, version vC0 (b)
      94h,11h,28h,01h  ;PSX (DTL-H2000)          28 Nov 1994, version v01 (debug)
      95h,05h,16h,C1h  ;PSX (LATE-PU-8)          16 May 1995, version vC1 (a)
      95h,07h,24h,C1h  ;PSX (LATE-PU-8)          24 Jul 1995, version vC1 (b)
      95h,07h,24h,D1h  ;PSX (LATE-PU-8,debug ver)24 Jul 1995, version vD1 (debug)
      96h,08h,15h,C2h  ;PSX (PU-16, Video CD)    15 Aug 1996, version vC2 (VCD)
      96h,08h,18h,C1h  ;PSX (LATE-PU-8,yaroze)   18 Aug 1996, version vC1 (yaroze)
      96h,09h,12h,C2h  ;PSX (PU-18) (japan)      12 Sep 1996, version vC2 (a.jap)
      97h,01h,10h,C2h  ;PSX (PU-18) (us/eur)     10 Jan 1997, version vC2 (a)
      97h,08h,14h,C2h  ;PSX (PU-20)              14 Aug 1997, version vC2 (b)
      98h,06h,10h,C3h  ;PSX (PU-22)              10 Jun 1998, version vC3 (a)
      99h,02h,01h,C3h  ;PSX/PSone (PU-23, PM-41) 01 Feb 1999, version vC3 (b)
      A1h,03h,06h,C3h  ;PSone/late (PM-41(2))    06 Jun 2001, version vC3 (c)
      (unknown)        ;PS2,   xx xxx xxxx, late PS2 models...?`

**This isn't to say you can't get great CD-R reading performance from all consoles at all**, just that there is different technology and tolerances in different models of the console!

## Orientation Trick

If your console is having issues reading discs, an old trick involves changing the console to a vertical, diagonal, or upside-down orientation while playing the disc. This can sometimes improve the CD-R disc reading ability of the console. It is recommended to try both left and right orientation changes and different angles in a slight diagonal to figure out the exact best position.

Sometimes the above issue can be alleviated or disappear entirely by following my [PSX CD drive refurbishment guide](https://alex-free.github.io/unofficial-ps1-cd-drive-service-manual/).