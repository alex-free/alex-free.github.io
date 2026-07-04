## [CRISPY DOOM SOURCE PORT FOR PS5](readme.md) -> Porting Notes

* USB keyboard controls are technically functionally, but the input pulling is not high enough for it to be usable. Too many keys pressed at once, or pressing different keys too fast will drop inputs, making it an unplayable expierence. This is what I suspect to be a limitation with SDL2 in pacbrew-repo with how it is reading input from the PS5 OS (USB keyboards are natively supported by it). **Controllers don't have this issue at all.**

* I don't want anything to write outside of the self-contained folder. Extraconfig (crispy-xyz.cfg), default.cfg, save games, WAD search path, and music-packs all take place in the folder for the game engine, found inside the portable self-contained `CrispyDoom` folder extracted from the release.

* Automatic controller configuration is provided by the custom default extraconfigs and custom default extra configs (found in, surprisingly I know, the `default-configs` folder). For controller support to work OTB I:


1) Ran crispy-xyz-setup for each game, selected `Configure Gamepad/Joystick` with arrow keys then pressed enter, Controller is highlighted on the next screen by default, pressed enter here again, and pressed X on my PS5 controller (any button will do) while joysticks and everything else was all neutral. 

2) Important: ran the game and played, then closed cleanly so that the vanilla config would be created with `use_joystick 1` set for me.

3) Copied over the vanilla config and extraconfig to PC. Needed to have default vanilla configs and extraconfigs to have controller working OTB.

4) I tested and the GUID should work for any standard PS5 controller (but perhaps not the PS5 DualSense Pro Edge controller by default OTB as it seems like it may have a different enugh GUID), changing the communication mode from bluetooth to USB via `Settings->Accessories->Communication Method->USB` (need to unplug and replug in USB controller cord, you'll get notified by the PS5 OS once it's using USB and not bluetooth), and even using a Guest profile all worked fine.

* Also related to configs, I edited `music_pack_path` to `music_pack_path               "music-packs"`. This is because by default it wants to use `/user/home/<your username random numbers here>/crispy-doom`, so instead it now looks for a relative path and avoids that folder interley due to everything else that could be written to it also being configured to use the self-contained path.

* Same thing as `music_pack_path` was done to `autoload_path`, making `autoload_path                 "autoload"`. This prevents anything being written/used in `/user/home/<your username random numbers here>/crispy-doom`, however it will make an empty folder.

* I do plan on perhaps making a way to disable the creation of the `/user/home/<your username random numbers here>/crispy-doom` empty folder entirely.

* Because `/tmp` isn't a thing on PS5 OS, and we need it for MIDI extraction from WADs for music to play, I made tmp folders in each game engine folder and use envars to specify them that Crispy Doom recently got support for (how convient). They are cleared once you exit the game so this is a quite nice way to handle such a thing.
