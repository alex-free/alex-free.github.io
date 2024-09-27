# EzRe

_By Alex Free_

EzRe (Easy Release) provides a simple and sane build system for Linux (i386 and x86_64) and Windows (i686 and x86_64) targets, tailored to rapid development and deployment of C/C++ programs from a Linux OS. Consisting of a generalized GNU `Makefile` configured by a user-edited `variables.mk` file, it can easily be expanded to work for other languages, architectures, and operating systems. EZRE has been written in a way to minimize the amount of user-supplied information required to build all the packages and releases for all these systems.

| [Homepage](https://alex-free.github.io/ezre) | [Github](https://github.com/alex-free/ezre) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [Example](#example)
* [License](#license)
* [Building](build.md)

## Features:

* The only pre-requisite is having [GNUMake](https://www.gnu.org/software/make/) installed.

* Installation consist of changing into your source directory, and executing a command.

* No need to write or edit a Makefile for most use cases.

* No need to write or edit a "how to build" document for most use cases, as a generic `build.md` is provided.

* Specify build dependencies for various package managers. Currently both `dnf` and `apt` are supported.

* Generate `.deb` packages (i386 and x86_64) for Debian based Linux distributions.

* Generate `.rpm` packages (i386 and x86_64) for Redhat based Linux distributions).

* Generate portable release .zip files for Windows (i686 and x86_64) and Linux (i386 and x86_64).

* Passes a `VERSION` string to source files (no need to edit the version number directly in source files).

* Support for building libraries and linking them with the target executable.

* Highly configurable, expandable, and hackable.

## Downloads

### Version 1.0.3 (9/27/2024)

Changes:

* Added support for building `.rpm` package files for i386 and x86_64 Linux.

* Added `.rpm` release of EzRe itself.

* Added sanity checks for if required variables are not set.

* Changed some variables for naming consistency.

* Added executable stripping by default.

* Removed `ezre-dl` command variant,

* The `ezre` command now prompts you for info so that it can create the `control-i386`, `control-x86_64`, `ezre.spec`, and `variables.mk` files for you with your project information automatically.

---------------------------------------------

*   [ezre-v1.0.3.zip](https://github.com/alex-free/ezre/releases/download/v1.0.3/ezre-v1.0.3.zip) _Portable zip release for Linux_

*   [ezre-v1.0.3.deb](https://github.com/alex-free/ezre/releases/download/v1.0.3/ezre-v1.0.3.deb) _Portable deb release for Linux_

*   [ezre-1.0.3-1.noarch.rpm](https://github.com/alex-free/ezre/releases/download/v1.0.3/ezre-1.0.3-1.noarch.rpm) _Portable rpm release for Linux_

## Usage

Note: Currently, EzRe expects a Linux x86_64 host system.

1) Change into your source directory.

2) Execute the `ezre` command.

3) Enter any information prompted by the `ezre` command related to your project.

4) Type `make` to build your software. Type `make all` to build your software for all targets (see [build.md](template-files/build.md)).

For most use cases, you do not need to edit the `Makefile` or `variables.mk` at all! Additionally, [build.md](https://github.com/alex-free/ezre/blob/master/) has been written in a generic way, so that in most cases you don't need to write docs on how to build your software using the EZRE build system if you don't want to.

## Example

The [example](https://github.com/alex-free/ezre/blob/master/example) directory contains a test use case for EzRe (hello world in C). You can get a grasp of what is possible by trying it out.

## License

EzRe is released with the 3-BSD license, see [license.md](https://github.com/alex-free/ezre/blob/master/license.md).