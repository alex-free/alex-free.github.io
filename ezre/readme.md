# EzRe

_By Alex Free_

EzRe (Easy Release) provides a simple and sane build system for Linux (i386 and x86_64) and Windows (i686 and x86_64) targets, tailored to rapid development and deployment of simple C/C++ programs from a Linux OS. Consisting of a generalized GNU `Makefile` configured by a user-edited `variables.mk` file, it can easily be expanded to work for other languages, architectures, and operating systems.

## Features:

* Installation consist of [copying 4 files](#downloads) into your source tree. The only pre-requisite is having [GNUMake](https://www.gnu.org/software/make/) installed.
* No need to write or edit a Makefile for most use cases, just set some variables in the `variables.mk` configuration file.
* Specify build dependencies for various package managers.
* Generate .deb packages for Linux.
* Generate portable release .zip files for Windows and Linux.
* Passes a `VERSION` string to source files (no need to edit the version number directly in source files).
* Highly configurable, expandable, and hackable.

## Links

[Homepage](https://alex-free.github.io/ezre)

[Github](https://github.com/alex-free/ezre)

## Downloads

### Version 1.0 (3/22/2024)

*   Initial release.

_Zip release_: 

[EzRe v1.0](https://github.com/alex-free/ezre/releases/download/v1.0/ezre-v1.0.zip)

_Git clone_

`git clone https://github.com/alex-free/ezre`

_One-liner_ - download the latest template files directly into the current directory (your source tree):

`curl -O https://raw.githubusercontent.com/alex-free/ezre/master/Makefile; curl -O https://raw.githubusercontent.com/alex-free/ezre/master/variables.mk; curl -O https://raw.githubusercontent.com/alex-free/ezre/master/control-i386; curl -O https://raw.githubusercontent.com/alex-free/ezre/master/control-x86_64`

## Setup

1) Copy [control-i386](https://github.com/alex-free/ezre/blob/master/control-i386), [control-x86_64](https://github.com/alex-free/ezre/blob/master/control-x86_64), [Makefile](https://github.com/alex-free/ezre/blob/master/Makefile), and [variables.mk](https://github.com/alex-free/ezre/blob/master/variables.mk) to the root of your source tree.

2) Edit [control-i386](https://github.com/alex-free/ezre/blob/master/control-i386), [control-x86_64](https://github.com/alex-free/ezre/blob/master/control-x86_64), and [variables.mk](https://github.com/alex-free/ezre/blob/master/variables.mk)  with your project information. For most use cases, you do not need to edit the [Makefile](https://github.com/alex-free/ezre/blob/master/Makefile) at all!

## Example

The [example](https://github.com/alex-free/ezre/blob/master/example) directory contains a test use case for EzRe (hello world in C). You can get a grasp of what is possible by trying it out and reading the edited [control-i386](https://github.com/alex-free/ezre/blob/master/example/control-i386), [control-x86_64](https://github.com/alex-free/ezre/blob/master/example/control-x86_64), and [variables.mk](https://github.com/alex-free/ezre/blob/master/variables.mk) files to see a working implementation. The [Makefile](https://github.com/alex-free/ezre/blob/master/example/Makefile) was not edited at all for this example.

`cd example`

`make deps-apt` to install the build dependencies required to compile the example

`make` creates a `hello` executable for x86_64 Linux (the host platform set) in the specified `build` directory found in the root of the source tree where all the EzRe files are copied to.

`make clean` delete only the generated executable file created by only executing `make`.

`make clean-build` deletes the generated `build` directory in it's entirety.

`make all` will generate all of the following in the `build` directory found in the root of the source tree:

### For Windows 95 OSR 2.5 and above, Pentium CPU minimum (32 bit)

*   Windows i686 static executable file
*   Portable Windows i386 release .zip file

### For Windows x86_64 (64 bit)

*   Windows x86_64 static executable file
*   Portable Windows x86_64 release .zip file

### For Linux 3.2.0 and above, 386 CPU minimum (32 bit)

*   Linux i386 static executable file (Linux 3.2.0 32 bit and above)
*   Portable Linux i386 release .zip file (Linux 3.2.0 32 bit and above)
*   Linux i386 release .deb file (Linux 3.2.0 32 bit and above)

### For Linux 3.2.0 and above, x86_64 (64 bit)

*   Linux x86_64 static executable file
*   Portable Linux x86_64 release .zip file
*   Linux x86_64 release .deb file

## License

EzRe is released with the 3-BSD license, see [license.md](https://github.com/alex-free/ezre/blob/master/license.md).