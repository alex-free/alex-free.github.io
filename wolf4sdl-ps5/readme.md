# WOLF4SDL SOURCE PORT FOR PS5

_By Alex Free_

This is a native PS5 port of [Wolf4SDL](https://github.com/alex-free/wolf4sdl/tree/sdl2remap) for the PS5. 

| [Github](https://github.com/alex-free/wolf4sdl-ps5) | [Homepage](https://alex-free.github.io/wolf4sdl-ps5) |

## Table Of Contents

* [Features](#features).

* [Downloads](#downloads).

* [Usage](#usage).

* [Notes](#notes).

* [Source](#source).

## Features

* Completely portable and self-contained. All config files, save files, WL* files, temp files, and game engine executables are inside the `Wolf4SDL` folder you extract from the release.

* Shareware/Registerd engine specific folders, each game engine has it's own folder organizing your config files, save files, WL* files, etc..

## Downloads

### Version 1.0-5e63997 (7/4/2026)

Changes: Intial release.

* [wolf4sdl-ps5-v1.0-5e63997.zip](https://github.com/alex-free/wolf4sdl-ps5/releases/download/v1.0/wolf4sdl-ps5-v1.0-5e63997.zip)

## Usage

1) Extract the release zip file.

2) Copy the extracted `Wolf4SDL` folder to one of the following locations (where all your other [PS5 WebSrv](https://github.com/ps5-payload-dev/websrv) stuff lives. So i.e., `/mnt/usb0/homebrew/Wolf4SDL`):

`/data/homebrew`

`/mnt/usb%d/homebrew`

`/mnt/ext%d/homebrew`

3) Make sure you have installed the [PS5 WebSrv PKG](https://github.com/ps5-payload-dev/websrv/blob/master/homebrew/IV9999-FAKE00000_00-HOMEBREWLOADER01.pkg) and sent over the [websrv-ps5.elf](https://github.com/ps5-payload-dev/websrv/releases/latest/download/websrv-ps5.elf) payload (both those previosuly mentioned links will always be the latest versions btw).

3) Launch `Homebrew Launcher` from your homescreen.

4) Select `Wolf4SDL` from the homebrew menu.

5) Pick ELF file of the game engine you want to play. So `wolf4sdl-shareware.elf` to play the included shareware version, or `wolf4sdl-registered.elf` for the registered version. **For the registered version, you need to put the `*.WL6` files into the `Wolf4SDL/registered` folder**.

6) Press the circle button to close the terminal display, and play the game.

7) When done playing, to get back to the homescreen do as you would any PS5 WebSrv homebrew. PS button->Switcher->Cross button->Homebrew Launcher->Close Game.

## Notes

Due to [Issue #12](https://github.com/ps5-payload-dev/SDL/issues/12) with [ps5-payload-dev/SDL](https://github.com/ps5-payload-dev/SDL) using a USB keyboard in-game is not currently feesable. Use a controller, which works perfect!

## Source

* [My Wolf4SDL fork](https://github.com/alex-free/wolf4sdl/tree/sdl2remap).

* [My Pacbrew wolf4sdl branch](https://github.com/alex-free/pacbrew-repo/tree/wolf4sdl).

* [My Websrv wolf4sdl branch](https://github.com/alex-free/websrv/tree/wolf4sdl)