# Fallout 2 Mac Mod Enabler

_By Alex Free_

Enables mod support for Fallout 2's native PowerPC Mac OS X port, released in 2002.

Initially Fallout 2 was going to release simultaniously on Mac and PC, like Fallout 2 did. But due to poor sales, this would be cancelled, then uncancelled and released in [2002](https://web.archive.org/web/20050220065242/http://www.macplay.com/press/pr-fallout2-ships.php). This port hasn't seen alot of attention in the modding community, so I decided to make an easy to use mod-enabler.

| [Github](https://github.com/alex-free/fallout-2-mac-mod-enabler) | [Website](https://alex-free.github.io/fallout-2-mac-mod-enabler) |

## Important Info:

* Fallout 2's native PowerPC port works on Mac OS X 10.1.4-Mac OS X 10.4. It may not work on some Macs running Mac OS X 10.5.2-10.6.8 since some of the graphics drivers in these versions don't support 256 bit color mode. It certainly does not work on Mac OS X 10.7 due to the removal of Rosetta.

* The Fallout 2 PowerPC Mac version's latest patch is v1.02a. This mod enabler will work with or without this patch.

* Fallout 2 PowerPC Mac version has different GVARs, script files, and save files made on the PC version do not work on the Mac version. Strictly asset releated mods that change art or things like that should work from PC mods. Things that modify scripts may not work without having to be recreated using the Mac related files as a base. In [my mod](https://alex-free.github.io/miria-must-live-fo2-mod/) I have a Mac version and a PC version for example, because I modify script files.

* There is no support for fancy things like custom .dat files. This is old-school 'extracted dat file directory structure', exactly like how you mod Fallout 2 v1.0 or v1.02d on PC without SFall. To make this convient, the mod enabler creates a symlink to the folder where your mods need to be installed. This symlink is at `/Applications/Fallout 2 Mods`, and points to `~/Library/Application Support/Fallout2/Data`.

* Normally the Mac version plays an audio file when you start it (duckandcover.aiff) which I found personally annoying because it makes it take longer to launch because it waits for the audio file to play in it's entirety, then starts loading the game. I disable it with the mod-enabler script so you don't have to listen to it and the game starts faster. If you want it back for some reason you can rename `/Applications/Fallout 2.app/Contents/Resources/duckandcover.aiff.disabled` back to it's original name `/Applications/Fallout 2.app/Contents/Resources/duckandcover.aiff`. You could also comment out or delete that line in the `mod-enabler` script.

## Downloads

### v1.0 (2/5/2026)

* [fallout-2-mac-mod-enabler-v1.0](https://github.com/alex-free/fallout-2-mac-mod-enabler/releases/download/v1.0/fallout-2-mac-mod-enabler-v1.0.zip)

### Usage

1) Copy `Fallout 2.app` to `/Applications/Fallout 2.app`. I recommend installing the v1.02a patch, but it is not required.

2) Drag `mod-enabler` into the terminal and run it.

3) Place your mods into `/Applications/Fallout 2 Mods`.