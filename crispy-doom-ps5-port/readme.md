# CRISPY DOOM SOURCE PORT FOR PS5

_By Alex Free_

This is a native PS5 port of [Crispy Doom](https://github.com/fabiangreffrath/crispy-doom) for the PS5. 

## Table Of Contents

* [Features](#features).

* [Games You Can Play](#games-you-can-play).

* [Downloads](#downloads).

* [Usage](#usage).

* [Config Files](#config-files).

* [Crispy Setup Programs GUI To Change Config Files](#crispy-setup-programs-gui-to-change-config-files).

* [Mods](#mods).

* [Music Pakcs](#music-packs).

* [Notes](#notes).

* [Source](#source).

## Features

* Controller support pre-configured. [GUI controller button/device mapping](#crispy-setup-programs-gui-to-change-config-files).

* Support for all 4 engines (Doom, Heretic, Hexen, and Strife).

* Includes all shareware available for each engine (Doom, Heretic, Hexen).

* [Easy](#usage) to use [WebSrv](https://github.com/ps5-payload-dev/websrv) GUI frontend.

* Tested on (at this time) latest FW 12.70.

* Portable and self-contained. All config files, save files, WAD files, temp files, and game engine executables are inside the `CrispyDoom` folder you extract from the release, and you can put it anywhere on your system.

* Game engine specific folders, each game engine has it's own folder organizing your config files, save files, WADs, mods, music-packs, etc..

* The ability to pick [WAD files](#wadssaves) each launch.

## Games You Can Play

 Non-exaustive list:

* Doom 1 Shareware **(v1.9 is included in PS5 port release)**.

* Doom 1 Registered.

* Ultimate Doom (Expansion).

* Final Doom (TNT: Evilution and the Plutonia Experiment).

* Chex Quest. 

* Doom 2 (Retail). Note that Doom 2 never got a shareware version.

* Master Levels for Doom II (Expansion).

* Heretic Shareware **(v1.2 included in PS5 port release)**.

* Heretic Registered.

* Hexen.

* Hexen Shareware **(v1.1 included in PS5 port release)**.

* Hexen: Deathkings of the Dark Citadel (Expansion).

* Strife (Retail). Please note that while a demo exists, it is [not supported by source ports](https://github.com/fabiangreffrath/crispy-doom/blob/master/README.Strife.md#what-are-some-known-problems) due to the retail version being signifigantly different and because the original source code was lost, as of now only the retail version was reverse engineered.

## Downloads

### Version 1.0-7.1.0 (6/29/2026)

Changes: Intial release.

* [crispy-doom-ps5-v1.0-7.1.0.zip](https://github.com/alex-free/crispy-doom-ps5/releases/download/v1.0/crispy-doom-ps5-v1.0-7.1.0.zip)

## Usage

1) Extract the release zip file.

2) Copy the extracted `CrispyDoom` folder to one of the following locations (where all your other [PS5 WebSrv](https://github.com/ps5-payload-dev/websrv) stuff lives. So i.e., `/mnt/usb0/homebrew/CrispyDoom`):

`/data/homebrew`

`/mnt/usb%d/homebrew`

`/mnt/ext%d/homebrew`

3) Make sure you have installed the [PS5 WebSrv PKG](https://github.com/ps5-payload-dev/websrv/blob/master/homebrew/IV9999-FAKE00000_00-HOMEBREWLOADER01.pkg) and sent over the [websrv-ps5.elf](https://github.com/ps5-payload-dev/websrv/releases/latest/download/websrv-ps5.elf) payload (both those previosuly mentioned links will always be the latest versions btw).

4) Launch `Homebrew Launcher` from your homescreen.

5) Select `CrispyDoom` from the homebrew menu.

6) Pick ELF file of the game engine you want to play. So `crispy-doom.elf` for Doom 1 and Doom 2 engine games, `crispy-heretic.elf` for Heretic, `crispy-hexen.elf` for Hexen, and `crispy-strife.elf` for Strife.

7) Pick the WAD file you want to use. Since you can have multiple WAD files in for example the `CrispyDoom/doom` folder, this allows you to pick either Doom 1 or Doom 2. Same with the other engines.

8) Press the options button on your controller. Select `Close Card`. Enjoy.

9) When done playing, to get back to the homescreen do as you would any PS5 WebSrv homebrew. PS button->Switcher->Cross button->Homebrew Launcher->Close Game.

## Config Files

Config files are already ready to go in the releases. They include PS5 controller support enabled, and paths setup for custom `music-packs` as well as mods.

`CrispyDoom/doom/doom.cfg` - Doom 1 and Doom 2 engine 'vanilla' config (equivelent to original MSDOS version options).

`CrispyDoom/doom/crispy-doom.cfg` - Doom 1 and Doom 2 engine 'extra' config (additional options brought to you by Crispy Doom).

`CrispyDoom/hereritc/heretic.cfg` - Heretic engine 'vanilla' config (equivelent to original MSDOS version options).

`CrispyDoom/heretic/crispy-heretic.cfg` - Heretic engine 'extra' config (additional options brought to you by Crispy Doom).

`CrispyDoom/hexen/hexen.cfg` - Hexen engine 'vanilla' config (equivelent to original MSDOS version options).

`CrispyDoom/hexen/crispy-hexen.cfg` - Hexen engine 'extra' config (additional options brought to you by Crispy Doom).

`CrispyDoom/strife/strife.cfg` - Strife engine 'vanilla' config (equivelent to original MSDOS version options).

`CrispyDoom/hexen/crispy-strife.cfg` - Strife engine 'extra' config (additional options brought to you by Crispy Doom).

## Wads/Saves

`CrispyDoom/doom` - WAD/save file location for Doom 1 and Doom 2 engine games.

`CrispyDoom/heretic` - WAD/save file location for Heretic engine games.

`CrispyDoom/hexen` - WAD/save file location for Hexen engine games.

`CrispyDoom/strife` - WAD/save file location for Strife engine games.

## Crispy Setup Programs (GUI To Change Config Files)

You may notice that there are 4 additional ELFs:

`crispy-doom-setup.elf`

`crispy-heretic-setup.elf`

`crispy-hexen-setup.elf`

`crispy-strife-setup.elf`

These are GUI programs that allow you to modify the config files. It can detect controllers, remap buttons, change visual details, and more.

Note 1: There is NO controller input support to these programs, so you need a USB keyboard to use them. You can do just about anything these can by just editing the config files in a text editor with FTP or something similar though if you don't want to use a keyboard. But Controller mapping/adding is the best UX with the setup programs IMO.

Note 2: These programs are supposed to be able to launch the game after saving the configuration if you wish it to do so. Currently, that isn't setup to work. You should just keep hitting escape until you get a prompt to save your changes, close Homebrew launcher with the app switcher, and then run your game with your changes now being applied.

## Mods

Note 1: Crispy Doom's design goal is "a limit-removing enhanced-resolution Doom source port based on Chocolate Doom". Chocolate Doom is a bug for bug compatible, modernized vanillia Doom expierence in itself. What does this mean for you and your mods? Make sure your mods either target vanilla Doom, and or explicitly state compatibility with Crispy Doom being supported. Great example of this is the [Deathless](https://www.doomworld.com/idgames/levels/doom/Ports/megawads/deathless) mod!

Note 2: Mod support currently requires an explicit filepath to point to the `autoload` folder. This is currently unavoidable and one of the only things not self-containable by this port to the PS5.  You can change it to whatever you want though.

Note 3: Crispy Doom uses an autoload folder. The idea is you create a subfolder in the autoload folder named after your WAD file. Then you put the mod in the subfolder named after the WAD.

I have chosen the following paths for mods by default:

`/mnt/usb0/homebrew/CrispyDoom/doom/autoload` - put Doom 1 and Doom 2 engine mods here. I.e. for Final Doom with Deathless this is `/mnt/usb0/homebrew/CrispyDoom/doom/autoload/doom.wad/deathless.wad`.

`/mnt/usb0/homebrew/CrispyDoom/heretic/autoload` - put Heretic engine mods here.

`/mnt/usb0/homebrew/CrispyDoom/hexen/autoload` - put Hexen engine mods here.

`/mnt/usb0/homebrew/CrispyDoom/strife/autoload` - put Strife engine mods here.

The mod path is in the extraconfig file for your game, under `autoload_path` and can be changed to whatever you want.

## Music Packs

Note: Music pack support currently requires an explicit filepath to point to the `autoload` folder. This is currently unavoidable and besides mods the only thing not self-containable by this port to the PS5. You can change it to whatever you want though.

`/mnt/usb0/homebrew/CrispyDoom/doom/music-packs` - for Doom 1 and Doom 2 engine games.

`/mnt/usb0/homebrew/CrispyDoom/heretic/music-packs` - for Heretic engine games.

`/mnt/usb0/homebrew/CrispyDoom/hexen/music-packs` - for Hexen engine games.

`/mnt/usb0/homebrew/CrispyDoom/strife/music-packs` - for Strife engine games.

## Notes

* Due to [Issue #12](https://github.com/ps5-payload-dev/SDL/issues/12) with [ps5-payload-dev/SDL](https://github.com/ps5-payload-dev/SDL) using a USB keyboard in-game is not currently feasible. Use a controller, which works perfect!


## Source

* [My pacbrew-repo fork, crispydoom branch](https://github.com/alex-free/pacbrew-repo/tree/crispydoom).

* [My websrv fork, crispydoom branch](https://github.com/alex-free/websrv/tree/crispydoom).