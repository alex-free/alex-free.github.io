# title

_By Alex Free_.

breif description

| [Homepage](https://alex-free.github.io/program) | [Github](https://github.com/alex-free/program) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [License](#license)
* [Building](build.md)

## Downloads

### Version 1.0 (7/23/2024)

Changes:

* Initial release.

----------------------------------------------------

* [program-v1.0-windows-i686-static.zip](https://github.com/alex-free/program/releases/download/v1.0/program-v1.0-windows-i686-static.zip) _Portable Release For Windows 95 OSR 2.5 and above, Pentium CPU minimum (32 bit)_

* [program-v1.0-windows-x86\_64-static.zip](https://github.com/alex-free/program/releases/download/v1.0/program-v1.0-windows-x86_64-static.zip) _Portable Release For x86_64 Windows (64 bit)_

* [program-v1.0-linux-i386-static.zip](https://github.com/alex-free/program/releases/download/v1.0/program-v1.0-linux-i386-static.zip) _Portable Release For Linux 3.2.0 and above, 386 CPU minimum (32 bit)_

* [program-v1.0-linux-i386-static.deb](https://github.com/alex-free/program/releases/download/v1.0/program-v1.0-linux-i386-static.deb) _Deb package file For Linux 3.2.0 and above, 386 CPU minimum (32 bit)_

* [program-v1.0-linux-x86\_64-static.zip](https://github.com/alex-free/program/releases/download/v1.0/program-v1.0-linux-x86_64-static.zip) _Portable Release For x86\_64 Linux 3.2.0 and above (64 bit)_

* [program-v1.0-linux-x86\_64-static.deb](https://github.com/alex-free/program/releases/download/v1.0/program-v1.0-linux-x86_64-static.deb) _Deb package file for x86_64 Linux 3.2.0 and above (64 bit)_

---------------------------------------

## Usage

`program <input file>`

`<input file>      Can be either the data track bin file of a PlayStation 1 disc image (the sole .bin file or the .bin file named something like track 01), or a DuckStation RAM dump file.`

There are 2 ways you can interact with the patcher:

### Drag n' Drop

On Windows and most Linux distributions, you can simply drag the input file on top of the `program.exe` (Windows releases) or `program` (linux releases) executable file found in the portable releases.

### Traditional CLI

On Windows execute `program.exe` with the input file as an argument, i.e. `program.exe <input file>` using `cmd.exe`, `command.com`  or similar shell. On Linux execute `./program <input file>` found in the portable release using the Terminal application. Alternatively if you have install the `.deb` package file `program`  is available as a global user command to the system, so just `program <input file>` works fine.

## License

program is released as open source software under the 3-BSD license. 

