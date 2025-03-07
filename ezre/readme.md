# EzRe

_By Alex Free_

EzRe (Easy Release) provides a simple and sane build system for Linux (i386 and x86_64), Windows (i686 and x86_64), and Mac OS (PowerPC, Intel, ARM) targets, tailored to rapid development and deployment of C/C++ programs from a Linux or Mac OS computer. It includes an easy to use configuration tool and installer that automatically writes GNU Makefiles using the information you provide. EZRE has been written in a way to minimize the amount of user-supplied information required to build all the packages and releases for all these systems.

| [Homepage](https://alex-free.github.io/ezre) | [Github](https://github.com/alex-free/ezre) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [Example](#example)
* [License](#license)
* [Building](build.md)

## Features:

* The only pre-requisite is having [GNUMake](https://www.gnu.org/software/make/) installed.

* Installation consist of changing into your source directory, and executing the `ezre` command found in the releases.

* No need to write or edit a Makefile for most use cases.

* No need to write or edit a "how to build" document for most use cases, as a generic `build.md` is provided.

* Specify build dependencies for various package managers. Currently both `dnf` and `apt` are supported for Linux. Mac OS uses MacPorts.

* Generate `.deb` packages (i386 and x86_64) for Debian based Linux distributions.

* Generate `.rpm` packages (i386 and x86_64) for Redhat based Linux distributions).

* Generate portable release .zip files for Windows (i686 and x86_64) and Linux (i386 and x86_64).

* Generate Mac OS executables and release .zip files for any arch (PowerPC, Intel, ARM).

* Passes a `VERSION` string to source files (no need to edit the version number directly in source files).

* Support for building libraries and linking them with the target executable.

* Highly configurable, expandable, and hackable.

## Downloads

### Version 1.0.7 (2/26/2025)

Changes:

* Fixed Makefile not prepending a v to version string.

---------------------------------------------

*   [ezre-v1.0.7.zip](https://github.com/alex-free/ezre/releases/download/v1.0.7/ezre-v1.0.7.zip) _Portable zip release for Linux and Mac OS_

*   [ezre-v1.0.7.deb](https://github.com/alex-free/ezre/releases/download/v1.0.7/ezre-v1.0.7.deb) _Portable deb release for Linux_

*   [ezre-1.0.7-1.noarch.rpm](https://github.com/alex-free/ezre/releases/download/v1.0.7/ezre-1.0.7-1.noarch.rpm) _Portable rpm release for Linux_

## Usage

Note: Currently, EzRe expects a Linux x86_64 host system.

1) Change into your source directory.

2) Execute the `ezre` command.

3) Enter any information prompted by the `ezre` command related to your project.

4) Type `make` to build your software. Type `make all` to build your software for all targets (see [build.md](template-files/build.md)).

For more advanced use cases, you can edit the `Makefile` and `variables.mk` files generated by EzRe for your project.

To update the EzRe build system in your software, run `ezre` again in your source directory.

To update the version number, run `ezre -u <version number>`. For example,  `ezre -u 1.0.1` will change the version number of your project to 1.0.1.

To auto-confirm overwriting existing EzRe generated files, run `ezre -y`.

## Example

The [example](https://github.com/alex-free/ezre/blob/master/example) directory contains a test use case for EzRe (hello world in C). You can get a grasp of what is possible by trying it out.

## License

EzRe is released with the 3-BSD license, see [license.md](license.md).
