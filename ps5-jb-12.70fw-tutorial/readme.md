# PS5 FW 12.70 Jailbreak Tutorial

_By Alex Free_

Since text tutorials are apparently dead, we are all supposed to watch 3 different YouTube videos weeks apart to figure out what to do, and this is still cutting edge stuff, I figured I'd put together a tutorial on how I'm successfully Jailbreaking my PS5 on 12.70 FW. I've been:

* Watching Netflix (the one for NetflixNHax). Somehow the PS5 installed the latest update for this Netflix pkg while Jailbroken and it made it work.
* Watching Youtube (No-PSN PKG). Didn't let any updates get applied to this one as it works fine.
* Playing Neir: Automata (PS4 backup .pkg).
* Playing Pragmata (PS5 backup, game folder dump).
* Running homebrew (PS5 XPlorer .pkg).

## Changelog

* v1.0 (5/30/2026)
* v1.0.1 (5/31/2026) - add FTP setup.

## Background

**Feel free to skip to the [actual start of the tutorial](#what-you-need), this is just some history on how I ended up with a Jailbroken PS5.**

Alrighty, so my setup was that I downloaded Resident Evil 9 on launch day from PSN because it was sold out everywhere (I always do physical copies but this one unlike Silent Hill F on launch day was just impossible). That game came out February 27, 2026, and because I needed to go on PSN I reluctantly updated to the newest firmware at the time, 12.70. Since I honestly never really expected to be able to jailbreak a PS5 I bought in summer 2025 new at $499.99 before the price hike until the next decade, I hadn't been keeping up with the scene. That is until I realized I hadn't turned it on since like March 1st, saw 12.70 got the Patience2Jailbreak exploit, and checked. I at least knew to turn off automatic updates when I got the console, and sure enough 12.70 FW is what I had.

My problem now is you need a user land exploit to run Patience2Jailbreak. I obviously never downloaded Star Wars Racer Revenge from PSN or any LUA games from PSN when it could still connect to PSN. But I had a trick up my sleeve, the disc drive.

So going back to when the Patience2Jailbreak exploit was announced, Star Wars Racer Revenge PS4 discs had already reached ~$500 USD or something like that. Little rich for my blood. Knowing the LUA exploit was still going to be a viable approach once updated (and still to this day **much cheaper** to get a physical copy of such a game), and that KStuff (an important kernel enabler for running unsigned code needed after both a userland exploit and kernel exploit nowadays) would probably gain 12.70 FW around the same time, I bit the bullet and purchased me a physical PS4 disc of Nora Princess and Stray Cat HD. One of the LUA exploit games.

Since it was coming from Japan it took about a week, and by that time everything was updated for 12.70 FW support .that I needed. We have [remote lua loader](https://github.com/n0llptr/remote_lua_loader), [KStuff Lite](https://github.com/EchoStretch/kstuff-lite), and even an improved Patience2Jailbreak (included in Remote Lua Loader) that takes the exploit time from 2hrs to about 1hr.

## What You Need

* PS5 on 12.70 or less.

* An [exploitable Lua game](https://github.com/n0llptr/remote_lua_loader) previously downloaded when your PS5 could connect to PSN, or a physical copy of one if you never did that (like me).

* Your account needed to have at least signed into PSN **once** when it was on the latest firmware at the time.

* A USB HDD or flash drive.

* A computer on the same network as your PS5.

* [Remote Lua Loader fork](https://github.com/n0llptr/remote_lua_loader/archive/refs/heads/main.zip) by [n0llptr](https://github.com/n0llptr).

* [Kstuff Lite](https://github.com/EchoStretch/kstuff-lite/releases) by [EchoStretch](https://github.com/EchoStretch).

* [LapyJB](https://git.etawen.dev/soniciso/elf-arsenal/raw/branch/main/payloads/lapyjb.elf) by [soniciso](https://git.etawen.dev/soniciso) from his tool [Elf Arsenal](https://git.etawen.dev/soniciso/elf-arsenal/src/branch/main/payloads).

* [ShadowMountPlus](https://github.com/drakmor/ShadowMountPlus/releases) by [drakmor](https://github.com/drakmor).

* [FTPSrv](https://github.com/ps5-payload-dev/ftpsrv) by [ps5-payload-dev](https://github.com/ps5-payload-dev).

Notes:

* At this time, I understand ETAHEN and ItemFlowz both don't really work on 12.70 FW.

* I am aware of [PS5 Lua Autoloader](https://github.com/itsPLK/ps5-lua-autoloader) but it is currently way to unstable for daily use on FW 12.70. I tried it like 5 times and it kernel pannicked every time.

## Setting Up The Lua Exploit

1) On the PS5, go to `Settings->Network->Settings->Connect To Internet` and turn this off.

2) On the PS5, go to `Settings->System->System Software->System Software Update And Settings`. Turn off `Download Update Files Automatically` and `Install Update Files Automatically`.

3) Start your exploitable Lua game, make a save.

4) Restart your PS5. This is very important. In order to copy the save you made to a USB drive, you must restart the PS5 without an internet connection. If your PS5 was connected to the internet at any point since it's been turned on and you try to move saves from internal storage to usb or vice versa, it will ask you to sign into PSN.

5) Format a USB drive to Exfat on your computer, and plug it into the PS5.

6) Go to `Settings->Storage->Console Storage->Saved Data->PS4 Games`. Select the save game you made for the exploitable Lua game, and `Copy To USB Drive`.

7) Exit out of Settings to the PS5 home screen, and remove the USB HDD or flash drive.

8) Plug the USB drive into a computer and when it mounts copy the PS4 folder to your computer.

9) Open [garlicsaves.com](https://garlicsaves.com/) on your computer web browser. Make an account (no email required, and it's legit).

10) Setup your PSN profile on your new Garlic Saves account. You will need to enter the exact name of the account and the hexadecimal representation, which can be found through a link on Garlic Saves.

11) Go to the [garlicsaves.com/decrypt](https://garlicsaves.com/decrypt) in your web browser. Upload savedata and save data.bin from your PS4 folder. It will be something like /home/alex/Desktop/remote-lua-loader/og-save/PS4/SAVEDATA/3307ff7acaaa5a17/CUSA13303/savedata and /home/alex/Desktop/remote-lua-loader/og-save/PS4/SAVEDATA/3307ff7acaaa5a17/CUSA13303/savedata.bin. Decrypt the save, and download it. Note that Garlic Saves can take a few attempts before you will get a stable download. I ran into an issue where I kept getting download errors where the download would cut short and give me a corrupted zip file. As long as your able to extract the downloaded zip file without errors, you have a valid decrypted save so keep trying until you get one.

12) Extract the decrypted save zip file, you will get a savedata folder. Copy everything inside the savedata folder found in the [Remote Lua Loader fork](https://github.com/n0llptr/remote_lua_loader/archive/refs/heads/main.zip) download into your savedata folder you just extracted from the decrypted save zip file. Overwrite any files when prompted. Compress this merged savedata folder into a zip file, i.e. savedata.zip.

13) Go to the [garlicsaves.com/encrypt](https://garlicsaves.com/encrypt) in your web browser. Upload your savedata.zip file. Download the newly encrypted save zip file.

14) Extract the newly encrypted save zip file to get a PS4 folder. Delete the PS4 folder on the flash drive. Copy this new PS4 folder to the USB HDD or flash drive for the PS5.

15) Eject the USB HDD or flash drive for the PS5, and connect it to the PS5. On the PS5 go to `Settings->Storage->Console Storage->Saved Data and Game/App Settings->Saved Data (PS4)->Copy Or Delete From USB Drive->Copy From USB Drive`. Select the save game you made for the exploitable Lua game, and `Copy To Console Storage`.

16) On the PS5, go to `Settings->Network->Settings->Connect To Internet` and turn this on.

## Running Patience2Jailbreak Kernel Exploit And Enabling Unsigned Code

17) Go to PS5 home, launch the exploitable Lua game. It will say `remote lua loader, running on PS5 12.70, listening on <IP address>:9026`. In my example this was `10.0.0.174:9026`.

18) On your computer connected to the same network as the PS5, open your Terminal and cd into the payloads folder found inside of the [Remote Lua Loader fork](https://github.com/n0llptr/remote_lua_loader/archive/refs/heads/main.zip) download. Run `python send_lua.py <IP address> 9026 p2jb.lua`. So in my case I ran `python send_lua.py 10.0.0.174 9026 p2jb.lua`. Wait for about an hour for it to complete or (rarely) fail. If it fails restart the console and try again. On success you will see `karw success you can be happy now :) that you wasted 1 hour of energy on this.` On the PS5, go to the PS5 home.

19) Send [Kstuff Lite](https://github.com/EchoStretch/kstuff-lite/releases) to the console. The command is `nc <IP address> 9021 < <kstuff.elf path>`. Note that this port for sending ELF files is different then the one used to send over Patience2Jailbreak, it will be 9021 instead of 9026. So in my case it was `nc 10.0.0.174 9021 < /home/alex/Downloads/kstuff.elf`. Once you see the notification on the PS5 go ahead and CTRL+C to exit out of netcat (nc command).

20) Send over [LapyJB](https://git.etawen.dev/soniciso/elf-arsenal/raw/branch/main/payloads/lapyjb.elf) to the console. The command is `nc < <IP address> 9021 < <path to lapyjb.elf>`. So in my case it was `nc 10.0.0.174 9021 < /home/alex/Downloads/lapyjb.elf`. Same thing, once you see the notification on the PS5 go ahead and CTRL+C to exit out of netcat (nc command). This enables us to use things that would otherwise require Homebrew ENabler (HEN), like PS5 Xplorer (a file manager for PS5).

21) Send over [FTPSrv](https://github.com/ps5-payload-dev/ftpsrv) to the console. The command is `nc < <IP address> 9021 < <path to ftpsrv-ps5.elf>`. So in my case it was  `nc 10.0.0.174 9021 < /home/alex/Downloads/ftpsrv-ps5.elf`. Same thing, once you see the notification on the PS5 go ahead and CTRL+C to exit out of netcat (nc command). FTP server needs no user name or password, and is on port 2121.


## Installing .PKG Files


22) Go ahead and get any .pkg files (PS4 games or PS4/PS5 homebrew) onto the root of your USB drive from your computer. You can install these by going to Settings->Debug Settings->Game->Package Installer and select any of your .pkgs to be installed on your internal console storage.

## Installing PS5 Games

23) For PS5 games, you have a couple of options. You can use a 'dumped' folder of loose files ripped from the game, or you can take that folder and create an image file for the best results/performance. By far the easiest way to do this is to find out what the title ID of the game is (i.e. Pragmata is `PPSA-02530`, just google it for your game). Rename the extracted game dump folder to the title id. This tutorial is not yet covering the image file formats created from game dumps.

24) Copy either the game dump folder to the root of a USB HDD (recommended for speed) or flash drive.

25) On your computer, send over [ShadowMountPlus](https://github.com/drakmor/ShadowMountPlus/releases). The command will be `nc <IP address> 9021 < <path to shadow mount plus elf file>`. So in my case it was `nc 10.0.0.174 9021 < /home/alex/Downloads/ShadowMountPlus_1.6test11/shadowmountplus.elf`. Once you see the notification on the PS5 go ahead and CTRL+C to exit out of netcat (nc command). As long as your  game dump folder is found in the root of the USB HDD or flash drive, you should get notified that the game is ready and be able to launch it from the homescreen.

Notes for PS5 games:

* You can run PS5 games from internal storage (which will be much faster load times then anything over USB) by creating a homebrew folder insider /data, using i.e. PS5 Xplorer. I've noticed that sometimes if PS5 Xplorer is copying multiple, very big files it can error (Pragmata alone has one 25GB file and one 55GB file among others in a game dump folder). One solution to this for now is you can use `R1` to select files in stages, and do multiple copies. For really big files (like that 55GB one) I for example only copied that file over first to internal storage, then I copied the other files (all much smaller) and had no issue. However, some games may not work this way (at least in the game dump folder format Pragmata say "Can not start" when launched from internal storage, but is fine on USB HDD).

* You can find the usb drives in /mnt/usb0, /mnt/usb1, etc. If you have a slow WiFi network speed then copying to some kind of intermediete USB HDD or USB SSD is going to be the best option (I do the same for Xbox 360 games).

* Copying games to the M.2 NVME drive is also possible, but I don't have one yet so can't say much about that. This would workaround any games that can't be launched from internal storage.

* ShadowMountPlus should auto-detect any 'new' games at the various [paths it autoscans](https://github.com/drakmor/ShadowMountPlus#scan-paths), but you can always run it again with netcat to force it. You can also delete the `/data/shadowmount` folder to reset everything it configures.
