# PS5 Make FSELF Recursive

_By Alex Free_.

Runs [make_fself.py](https://github.com/ps5-payload-dev/sdk/blob/master/samples/install_app/make_fself.py) recursively on a given decrypted game dump folder (such as from [ps5 app dumper](https://github.com/EchoStretch/ps5-app-dumper)). This allows said dump to run on a Jailbroken PS5, given the game can be ran as a dumped folder with something like [shadowmountplus](https://github.com/drakmor/ShadowMountPlus).

| [Homepage](https://alex-free.github.io/ps5-make-fself-recursive) | [Github](https://github.com/alex-free/ps5-make-fself-recursive) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [Notes](#notes)
* [License](license.md)
* [Building](build.md)

## Downloads

### Version 1.0.1 (6/2/2026)

Changes:

* Added detection for multiple `.bin`, `.elf`, and `.sprx` files.

----------------------------------------------------

* [ps5mfr-v1.0.1.zip](https://github.com/alex-free/ps5-make-fself-recursive/releases/download/v1.0.1/ps5mfr-v1.0.1.zip) _Portable Zip file for Linux_

* [ps5mfr-v1.0.1-1.noarch.rpm](https://github.com/alex-free/ps5-make-fself-recursive/releases/download/v1.0.1/ps5mfr-v1.0.1-1.noarch.rpm) _RPM package file for Linux._

* [ps5mfr-v1.0.1.deb](https://github.com/alex-free/ps5-make-fself-recursive/releases/download/v1.0.1/ps5mfr-v1.0.1.deb) _Deb package file for Linux._

---------------------------------------

[Changelog](changelog.md)

## Usage

`ps5mfr <path to decrypted game dump>`

## Notes

* Finds any files with `.prx`, `.sprx`, `.bin`, or `.elf` recursively.

* Requires python, but contains it's own copy of `make_fself.py`.
