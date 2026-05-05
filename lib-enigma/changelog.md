# [Lib Enigma - A PlayStation 1/2 CD Image C Library For Patching And Identification (Spiritual Successor To PPF)](readme.md) -> Changelog

## v1.0.3 (5/4/2026)

Changes: 

* Completely rewritten the advanced find n replace sector boundary aware function. Instead of giving it a file, you give it a sector. This allows you to run multiple find n replace searches at once per sector through the entire disc image.

* [Example 3](https://github.com/alex-free/lib-enigma/tree/master/example-3-piracy-patcher) now patches every Libcrypt v1 game.

* Added write sector user data function.

* Upgraded `build-examples` script to use [ezre](https://github.com/alex-free/ezre) submodule and update all example version numbers to correspond with the lib-enigma one by editing one line.

## v1.0.2 (4/22/2026)

Changes: 

* Added many more PSX.EXE game identifications thanks to [@Ronnie Sahlberg](https://www.psx-place.com/members/ronnie-sahlberg.86285/).

* Syntax/comment cleanup.

* 4 new sector read functions.

* [v1.0.2.zip](https://github.com/alex-free/lib-enigma/archive/refs/tags/v1.0.2.zip).

## v1.0.1 (4/4/2026)

Changes: 

* Added many more PSX.EXE game identifications thanks to [@Ronnie Sahlberg](https://www.psx-place.com/members/ronnie-sahlberg.86285/).

* Syntax/comment cleanup.


* [v1.0.1.zip](https://github.com/alex-free/lib-enigma/archive/refs/tags/v1.0.1.zip).

---------------------------------------
## v1.0 (1/16/2026)

* [v1.0.zip](https://github.com/alex-free/lib-enigma/archive/refs/tags/v1.0.zip)
