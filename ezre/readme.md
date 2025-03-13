# EzRe

_By Alex Free_

EzRe (Easy Release) provides a simple and sane build system for Linux (i386 and x86_64), Windows (i686 and x86_64), and Mac OS (PowerPC, Intel, ARM) targets, tailored to rapid development and deployment of C/C++ programs from a Linux or Mac OS computer. It includes an easy to use configuration tool and installer that automatically writes GNU Makefiles using the information you provide. EZRE has been written in a way to minimize the amount of user-supplied information required to build all the packages and releases for all these systems.

| [Homepage](https://alex-free.github.io/ezre) | [Github](https://github.com/alex-free/ezre) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [Additional Info](#additional-info)
* [Example](#example)
* [License](#license)
* [Building](build.md)

## Features:

* The only pre-requisite is having [GNUMake](https://www.gnu.org/software/make/) installed.

* Installation consist of changing into your source directory, and executing the `ezre` command found in the releases.

* No need to write or edit a Makefile! Input your values into an easy to use configuration text file to configure the Makefile.

* No need to write or edit a "how to build" document for most use cases, as a generic `build.md` is provided.

* Specify build dependencies for various package managers. Currently both `dnf` and `apt` are supported for Linux. Mac OS uses MacPorts.

* Generate `.deb` packages (i386 and x86_64) for Debian based Linux distributions.

* Generate `.rpm` packages (i386 and x86_64) for Redhat based Linux distributions).

* Generate portable release .zip files for Windows (i686 and x86_64) and Linux (i386 and x86_64).

* Generate Mac OS executables and release .zip files for any arch (PowerPC, Intel, ARM). Provides 2 different value sets with a `LEGACY=TRUE` argument to make after any rules (i.e. `make mac-os-release LEGACY=TRUE`).

* Passes a `VERSION` string to source files (no need to edit the version number directly in source files).

* Cross compiling for Windows from Linux and Mac OS (i686 and x86_64) built in.

* Target specific values.

## Downloads

### Version 1.0.8 (3/13/2025)

Changes:

* Major rewrite. EzRe no longer walks you through writing `variable-values.txt`, as that file has been obsoleted. EzRe now obtains your values from any existing `variables.mk` file and moves them to an up to date one. If this is a fresh source directory not containing EzRe at all, then you are expected to edit the `variables.mk` file yourself. From v1.0.8+ onwards, all `variables.mk` files will be forwards compatible with future versions. Versions 1.0.7 and below need some manual editing after an upgrade to v1.0.8+.

* Ability to set custom `CFLAGS`, `LDFLAGS`, `COMPILERS`, and `STRIP` for different targets.

* Added new target, `MAC_LEGACY`. On Mac OS you may do i.e. `make LEGACY=TRUE` or `make mac-os-release LEGACY=TRUE` for special values on older Mac OS versions (i.e. PowerPC).

* Removed `BUILD_LIB`. Idea is to compile any libraries you want first separately and then link them with custom `LDFLAGS` values.

* Improved `build.md` template file.

---------------------------------------------

*   [ezre-v1.0.8.zip](https://github.com/alex-free/ezre/releases/download/v1.0.8/ezre-v1.0.8.zip) _Portable zip release for Linux and Mac OS_

*   [ezre-v1.0.8.deb](https://github.com/alex-free/ezre/releases/download/v1.0.8/ezre-v1.0.8.deb) _Portable deb release for Linux_

*   [ezre-v1.0.8-1.noarch.rpm](https://github.com/alex-free/ezre/releases/download/v1.0.8/ezre-v1.0.8-1.noarch.rpm) _Portable rpm release for Linux_

---------------------------------------------

[Previous Versions](changelog.md).

## Usage

Note: Currently, EzRe expects either a Linux or Mac OS host system.

1) Change into your source directory.

2) Execute the `ezre` command.

3) Open the `variables.mk` file copied into your source directory by the `ezre` command in your favorite text editor.

4) Fill in any and all required information in the `variables.mk` file and save it.

5) Run `ezre` again to update to apply information you entered to the linux package files.

6) Type `make` to build your software. Type `make all` to build your software for all targets (see [build.md](template-files/build.md)).

## Additional Info

To update the EzRe build system in your software, run `ezre` again in your source directory. As of EzRe v1.0.8, all future versions are forward compatible this way.

To update the version number, run `ezre -u <version number>`. For example,  `ezre -u 1.0.1` will change the version number of your project to 1.0.1.

To auto-confirm overwriting existing EzRe generated files, run `ezre -y`.

## Example

The [example](https://github.com/alex-free/ezre/blob/master/example) directory contains a test use case for EzRe (hello world in C). You can get a grasp of what is possible by trying it out.

## License

EzRe is released with the 3-BSD license, see [license.md](license.md).
