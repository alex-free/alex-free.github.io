# EzRe

_By Alex Free_

EzRe (Easy Release) provides a simple and sane build system for Linux (i386 and x86_64) and Windows (i686 and x86_64) targets, tailored to rapid development and deployment of C/C++ programs from a Linux OS. Consisting of a generalized GNU `Makefile` configured by a user-edited `variables.mk` file, it can easily be expanded to work for other languages, architectures, and operating systems.

| [Homepage](https://alex-free.github.io/ezre) | [Github](https://github.com/alex-free/ezre) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [Example](#example)
* [License](#license)
* [Building](build.md)

## Features:

* Installation consist of changing into your source directory and executing a command.

* The only pre-requisite is having [GNUMake](https://www.gnu.org/software/make/) installed.

* No need to write or edit a Makefile for most use cases.

* No need to write or edit a "how to build" document for most use cases (a generic `build.md` is provided by the template files).

* Specify build dependencies for various package managers. Currently both `dnf` and `apt` are supported.

* Generate `.deb` packages (i386 and x86_64) for Linux.

* Generate portable release .zip files for Windows (i686 and x86_64) and Linux (i386 and x86_64).

* Passes a `VERSION` string to source files (no need to edit the version number directly in source files).

* Support for building libraries and linking them with the target executable.

* Highly configurable, expandable, and hackable.

## Downloads

### Version 1.0.2 (7/8/2024)

Changes:

* New deb package release for Linux distributions.

* New `ezre` command copies the latest EZRE template files into your current directory from the local release files (and prompts if you want to overwrite any existing files).

* New `ezre-dl` command downloads the latest EZRE template files into your current directory (and prompts if you want to overwrite any existing files).

* Fixed `deps-apt` and `deps-dnf` makefile rules.

* Added the new variable, `BUILD_LIB`. When `BUILD_LIB=YES` is set in your `variables.mk`, the EZRE `Makefile` will first compile any libraries and use those in the linking process of building the target executable. Setting `BUILD_LIB=YES` requires you to edit the template information in the EZRE `Makefile`, which is found in the conditional `ifeq ("BUILD_LIB","YES")` block. `BUILD_LIB` is by default set to no (`BUILD_LIB=NO`), so no editing of the `Makefile` is required _unless_ you are compiling additional libraries with EZRE.

* Added new variable, `COMPILER_FLAGS_LIB`. This allows you to use different compiler flags when building a library to be used in the target executable.

* Added new variables, `AR`, `WINDOWS_I686_AR`, and `WINDOWS_X86_64_AR` (related to new library support). 

---------------------------------------------

*   [EzRe v1.0.2.zip](https://github.com/alex-free/ezre/releases/download/v1.0.2/ezre-v1.0.2.zip) _Portable zip release for Linux_

*   [EzRe v1.0.2.deb](https://github.com/alex-free/ezre/releases/download/v1.0.2/ezre-v1.0.2.deb) _Portable deb release for Linux_

## Usage

1) The EZRE releases come with 2 commands, `ezre` and `ezre-dl`. If you execute the `ezre` command it will copy the ezre template files into your source directory (prompting for overwrites). If you execute the `ezre-dl` command it will download the latest ezre template files from github into your source directory (prompting for overwrites). 


2) Edit `control-i386`, `control-x86_64`, and `variables.mk`  with your project information. For most use cases, you do not need to edit the `Makefile` at all! Additionally, [build.md](https://github.com/alex-free/ezre/blob/master/) has been written in a generic way, so that in most cases you don't need to write docs on how to build your software using the EZRE build system.

## Example

The [example](https://github.com/alex-free/ezre/blob/master/example) directory contains a test use case for EzRe (hello world in C). You can get a grasp of what is possible by trying it out and reading the edited [control-i386](https://github.com/alex-free/ezre/blob/master/example/control-i386), [control-x86_64](https://github.com/alex-free/ezre/blob/master/example/control-x86_64), and [variables.mk](https://github.com/alex-free/ezre/blob/master/example/variables.mk) files to see a working implementation. The [Makefile](https://github.com/alex-free/ezre/blob/master/example/Makefile) and [build.md](https://github.com/alex-free/ezre/blob/master/example/build.md) was not edited at all for this example.

## License

EzRe is released with the 3-BSD license, see [license.md](https://github.com/alex-free/ezre/blob/master/license.md).