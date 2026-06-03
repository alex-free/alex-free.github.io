# PS5 Make FSelf Recursive

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

### Version 1.0 (6/2/2026)

Changes:

* Initial release.

----------------------------------------------------

* [ps5mfr-v1.0.zip](https://github.com/alex-free/ps5-make-fself-recursive/releases/download/v1.0/ps5mfr-v1.0.zip) _Portable Zip file for Linux_

* [ps5mfr-v1.0-1.noarch.rpm](https://github.com/alex-free/ps5-make-fself-recursive/releases/download/v1.0/ps5mfr-v1.0-1.noarch.rpm) _RPM package file for Linux._

* [ps5mfr-v1.0.deb](https://github.com/alex-free/ps5-make-fself-recursive/releases/download/v1.0/ps5mfr-v1.0.deb) _Deb package file for Linux._

---------------------------------------

## Usage

`ps5mfr <path to decrypted game dump>`

## Notes

* Finds eboot.elf automatically.

* Finds any files with `.prx` extension (dynamic libraries) recursively.

* Requires python, but contains it's own copy of `make_fself.py`.
