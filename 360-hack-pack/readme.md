# 360 Hack Pack - The Ultimate Xbox 360 Starter Pack

_By Alex Free_.

Everything you need to hack an Xbox 360, ready to be copied onto a USB drive in one download! This currently includes:

* [BadUpdate](https://github.com/grimdoomer/Xbox360BadUpdate) v1.1.
* [FreeMyXe](https://github.com/FreeMyXe/FreeMyXe) beta 5.
* [XexMenu Live](https://digiex.net/threads/xexmenu-1-1-download-xex-menu-iso-live-and-xex-file-manager-for-xbox-360.11096/) v1.1.
* [Aurora](http://phoenix.xboxunity.net/#/news) v0.7b2.
* [Simple 360 Nand Flasher](https://github.com/Swizzy/XDK_Projects) v1.5b Read Only (Special BadUpdate Edition).
* [Rock Band Blitz](https://digiex.net/threads/rock-band-blitz-xbox-live-arcade-download-delisted-from-xbla.15780/).
* [Dashboard / System Update 2.0.17559.0](https://digiex.net/threads/xbox-360-dashboard-system-update-2-0-17559-0-download-with-avatars.16047/).

| [Homepage](https://alex-free.github.io/360-hack-pack) | [Github](https://github.com/alex-free/360-hack-pack) | [GBATemp Thread](https://gbatemp.net/threads/xbox-360-hack-pack-everything-you-need-in-one-download.668769/) | [PSX-Scene Thread](https://www.psx-place.com/threads/xbox-360-hack-pack-everything-you-need-in-one-download.47216/#post-410883) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [Additional Info](#additional-info)
* [License](license.md)
* [Credits](#credits)
* [Building](build.md)

## Downloads

### Version 1.0.1 (3/28/2025)

Changes:

* Now includes a build of Simple 360 Nand Flasher v1.5b (latest commit as of 3/27/2025) using the new Read Only target. The Read Only builds do not allow writing to the NAND, only dumping of it. This is specifically for BadUpdate consoles that can't write to NAND without bricking.

----------------------------------------------------

* [360-hack-pack-v1.0.1-ready-to-copy.zip](https://github.com/alex-free/360-hack-pack/releases/download/v1.0.1/360-hack-pack-v1.0.1-ready-to-copy.zip) _Complete file set_

* [360-hack-pack-v1.0.1-downloader.zip](https://github.com/alex-free/360-hack-pack/releases/download/v1.0.1/360-hack-pack-v1.0.1-downloader.zip) _Downloader for Linux/Mac OS_

---------------------------------------

[Previous versions](changelog.md).

## Usage

There are 2 different releases. 'Ready To Copy' is the complete starter pack in full. 'Downloader' only contains a script which downloads all the files from the internet.

1) Create a new offline profile on your Xbox 360 that will not use Xbox live. I recommend either turning auto-sign in on for that local offline profile, or turning auto-sign in off completely.

2) Disconnect from the internet on your Xbox 360. If you have a wired ethernet connection, physically unplug the cord. If you have a WiFi connection, forget your WiFi network.

3) Disable auto-power off on your Xbox 360.

4) Format your USB drive using your Xbox 360.

5) Eject your USB drive from your Xbox 360.

6) Connect your USB drive to your computer.

7) Extract the latest 360 Hack Pack release.

8) If you are using the 'Ready To Copy' release, open the `files` directory in the extracted 360 Hack Pack release. Copy everything inside of `files` onto the root of your USB drive. Note: on Mac, the Finder does not allow a simple copy and paste because of the hidden `Content` folder. To work around this you can use the `360hp` command included in the 'Ready To Copy' release. The `360hp` command needs the path to your USB drive, i.e. `360hp /Volumes/NO\ NAME`. If you are using the 'Downloader' release, it is the same command.

9) Eject your USB drive from your computer.

10) Plug in your USB drive to your Xbox 360. If you are prompted to update the dashboard, do so. You should already disconnected from the internet so this will only show if you need to update your dash for BadUpdate, and it will pull the update from the USB drive. **DO NOT UPDATE VIA THE INTERNET IN CASE A NEW DASHBOARD UPDATE THAT PATCHES BADUPDATE COMES OUT!**

11) Launch Rock Band Blitz.

12) Press A.

## Additional Info

BadUpdate is not a 100% reliable exploit (~30% chance of success). If the music and animation on the title screen in Rock Band Blitz stops the exploit failed. When that happens turn off the console, turn on the console, and try again. You may or may not need to do this many times until it works as success is completely random.

Once BadUpdate brings you back to the dash board, you can connect to the internet because Xbox Live is blocked. Before turning off the console, you should disconnect from the internet however. If you have a wired ethernet connection, physically unplug the cord. If you have a WiFi connection, forget your WiFi network. If you have a power loss in your home and were not able to do this, as long as you turned off auto-sign in to an Xbox live profile and or turned on auto-sign in for an offline profile you should be ok. You can also skip signing in until your exploited again (recommended).

JTAG/RGH consoles are capable of modifying NAND. BadUpdate consoles can not modify NAND without bricking! Some homebrew programs do allow you to modify the NAND for some features, because it was never a problem before BadUpdate came out. For this reason I have for example built Simple 360 NAND Flasher with the new Read Only target, which disables all NAND flashing functionality but still allows you to dump and backup your NAND. You should backup your NAND immediately after first exploiting your console with the included Simple 360 NAND flasher read-only build. Even though you can't write the NAND backup with a BadUpdate console, if you brick it by accidentally writing to the NAND with some other home brew you could JTAG/RGH it and use said NAND backup to fix it (or have someone else do that for you if you supply said NAND backup).

Updating to a new version of the hack pack is easy. You can safely overwrite an existing USB drive like it was a clean install (no existing files are deleted by design). You may get duplicate versions of older applications in your `apps` folder, you can delete the oldest one safely.
 
 ## Credits

* [Grimdoomer](https://github.com/grimdoomer) for BadUpdate.
* [InvoxiPlayGames](https://github.com/InvoxiPlayGames) for FreeMyXe.
* [Swizzy](https://github.com/Swizzy) for Simple 360 Nand Flasher.
* All Developers of the included homebrew I did not explicitly credit yet.