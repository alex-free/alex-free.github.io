# PicoMemcard For FreePSXBoot

_A Fork by Alex Free_. Based on [MrPalloncini](https://github.com/MrPalloncini)'s [fork](https://github.com/MrPalloncini/PicoMemcard) of the [original PicoMemcard](https://github.com/dangiu/PicoMemcard) (which added GameID support) by [dangiu](https://github.com/dangiu).

This is designed for users of the [Tonyhax International](https://github.com/alex-free/tonyhax/blob/master/readme.md) soft-mod's [FreePSXBoot exploit](https://github.com/alex-free/tonyhax/blob/master/freepsxboot-exploit.md) to use a Bitfunx PSX Memcard/pico memcard plus in the most convient way possible. Previously you could use the FreePSXBoot exploit already with such hardware, however there was one really big annoyance. See the idea is:

1) Boot the console, enter the memory card manager to trigger the FreePSXBoot exploit that is on the BitFunX/picomemcard.

2) Tonyhax International starts up *yay*. Boot up a backup game. This causes Tonyhax International to send GameID to the device. The BitFunX/picomemcard+ changes the memory card image automatically to one specific to the game booted (granting you a 'new' memory card of 15 slots for each disc you boot with Tonyhax International, great automatic memory card management). Another insane plus of this is you have 100% compatibility with booting games via the FreePSXBoot method when compared to other boot methods of Tonyhax International, such as the ROM entrypoint _without having to remove the memory card_. See long ago in the before times, Tonyhax  and UniROM were the only soft-mod options for the PS1. Both projects had discovered that after adding the FreePSXBoot exploit as a boot method, it caused certain games to not boot while the FreePSXBoot exploited memory card was still plugged in. Both projects devised different patches to the kernel to fix this behavior... except both patches don't work with every single psx game. Multiple issues sprung up when booting games with the FreePSXBoot exploit, but not with others. After I forked Tonyhax and created Tonyhax International, I inherited the original Tonyhax FreePSXBoot patches. Since both developers of original Tonyhax and UniROM are much more capable of MIPS assembly then I and still couldn't figure out a 100% patch, I made a _contraversal_  decision and deleted all the patches/modifications of the kernel in regard to FreePSXBoot memory cards. Not only did this save a ton of space in the Tonyhax International executable, it allowed many more games to boot! I just replaced it with `remove the FreePSXBoot memory card now` text displayed to the user before disc initalization. I still stand by this decision today. Little did I know a new type of memory card hardware would make the FreePSXBoot patches even more pointless. Since Tonyhax International applies no patches for FreePSXBoot memory cards, and GameID support that I added switches the memory card to a new one specific to the game disc, this is no longer an issue at all and you don't need to remove a BitFunX/picomemcard+ when using Tonyhax International FreePSXBoot on it!

3) The game starts, you play and save your game. Turn off your console.

4) Here's the problem, the BitFunX/picomemcard+ **track the last game you played, and switches to that memory card file on next boot automatically**.

5) So you go back into the memory card manager to start back up Tonyhax International, and instead get the saves from your last game! :(

So yes, there is a way you can already change memory cards with a button combination:

* START + SELECT + DPAD UP will switch to the next image (e.g from 1.MCR to 2.MCR).
* START + SELECT + DPAD DOWN will switch to the previous image (e.g from 1.MCR to 0.MCR).

But imagine a situation where you have 30 game discs you've made saves on, so that's 30 memory card files. And the game you played is `17.MCR`. So with the picomemcard+ with GameID support for MrPalloncini, your telling me you really want to hit START+SELECT+DPAD DOWN 17 times to get back to the FreePSXBoot exploit image, if you can even remember what number `*.MCR` file the game you were playing 3 months ago was? And then to have to do this again every single boot? R U Serious?

BEGONE YOUR TROUBLES!

My fork simply never automatically updates `LASTMEMCARD` in index.txt. This way you can boot your console and enter the memory card manager which starts Tonyhax International. Then boot your game, Tonyhax International switches your memory card from the FreePSXBoot exploit image to one specific to the game disc your booting with Tonyhax International. Then you play, save, turn off/reboot your console. And when you enter the memory card manager once again it successfully triggers the FreePSXBoot exploit as you'd expect! A simple niecty.

But you say "I want to change the default memory card image on boot!" (I guess so you can see a specific memory card image in the memory card manager without doing button combos a bunch of times?) You can still do that as well! You just do it manually.

| [Homepage](https://alex-free.github.io/picomemcard) | [Github](https://github.com/alex-free/picomemcard) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [License](LICENSE)
* [Building](#building)

## Downloads

### Version 1.0 (9/23/2025)

Changes:

* Initial release.

----------------------------------------------------

* [pico-memcard-plus-freepsxboot-v1.0.zip](https://github.com/alex-free/picomemcard/releases/download/v1.0/pico-memcard-plus-freepsxboot-v1.0.zip)

## Usage

1) Find something that will allow you to access the BOOT button (it's at the bottom of a small access hole next to the USB-C charging port). You can use an unbent paper clip, phone SIM removal tool, or sacrifice a clicky pen for a pen spring that can be unbent.

2) Using a good USB-C cable (I have 2 that are complete garbage and don't do data transfers), connect the Bitfunx PSXMemCard/picomemcard+ to the computer while the BOOT button is being pressed.

3) Once the Bitfunx PSXMemCard is mounted as `RPI-RP2`, drag and drop the `*.uf2` file from the extracted download onto the `RPI-RP2` volume.

4) Wait for the Bitfunx PSXMemCard to unmount, and mount again as a standard volume (i.e. mine appears as 503MB Volume with the included micro SD card).

3) Download the latest [Tonyhax International](https://github.com/alex-free/tonyhax?tab=readme-ov-file#downloads). Copy the [(SLOT 1) FreePSXBoot memory card image for you console](https://github.com/alex-free/tonyhax/blob/master/freepsxboot-exploit.md#installation) onto Bitfunx/picomemcard+ as `0.MCR`.


5) (If you've used a Bitfunx/picomemcard+ before on your psx) Open `index.txt` on Bitfunx/picomemcard+. Make sure the top line is `LASTMEMCARD:000.MCR`. If this is a totally new device ignore this as you won't have an `index.txt` to edit, and my fork will do this for you while creating the `index.txt`.

6) Eject the BitFunX psx memcard/picomemcard+ into your console (SLOT 1), and boot it up. Enter the memory card manager.

7) Tonyhax International starts up. Put in your import or backup disc and boot it up like normal.

8) You now have a memory card image specifc to your game with 15 slots available. You can also 'assign' an existing memory card file to said game by carefully editing `index.txt` to point to one that you copy to the BitFunX psx memcard/picomemcard+ from i.e. an emulator or other source. [MemcardRex](https://github.com/ShendoXT/memcardrex) (which even works on Linux if you know how, I'll be releasing something soon to make that easier then it is as well).

9) Now when you save your game and reboot/power off/turn on the console later you'll be able to use the FreePSXBoot exploit again no problem.

## Building

Fedora:

`sudo dnf install gcc-arm-linux-gnu arm-none-eabi-gcc-cs-c++ arm-none-eabi-gcc-cs arm-none-eabi-binutils arm-none-eabi-newlib'

Debian:

`sudo apt install cmake python3 build-essential gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib'

Then

`git clone --recursive https://github.com/alex-free/PicoMemcard`

`cd PicoMemcard`
`mkdir build`
`cd build`
`cmake ..`
`make`

You will recive a `PicoMemcard.uf2` file!

## Changes

Forked "no-OS-FatFS-SD-SPI-RPi-Pico" from the included submodule to one that actually compiles on Fedora Linux at least.

Fixed a few issues in compilation with GCC14.

Stopped automatic tracking of last memory card, intialized a defaulr case.