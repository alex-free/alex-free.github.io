# EzRe (Easy Release)

_By Alex Free_

Do you hate writing GNU Makefiles, but love the simplicity and portability they allow? Then your gonna this simple and sane build system targeting all major operating systems, that writes those pesky GNU Makefiles for you! All you need to do is fill in some variables into a text file after installing this build system. Linux (i386 and x86_64), Windows (i686 and x86_64), and Mac OS (PowerPC, Intel, ARM) targets are supported, enabling rapid development and deployment of C and C++ programs from a Linux or Mac OS computer. Cross Compiling for Windows works on either. Worry about code, not releases!

| [Homepage](https://alex-free.github.io/ezre) | [Github](https://github.com/alex-free/ezre) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [Additional Info](#additional-info)
* [Examples](#examples)
* [EzRe For Shell Scripts](#ezre-for-shell-scripts)
* [License](#license)
* [Building](build.md)

## Features:

* The only pre-requisite is having [GNUMake](https://www.gnu.org/software/make/) installed.

* Installation [consists](#usage) of changing into your source directory, and executing the `ezre` command found in the releases.

* No need to write or edit a GNUMakefile! Simply input your values into an easy to use [configuration](https://github.com/alex-free/ezre/blob/master/template-files/variables.mk) text file.

* No need to write or edit a "how to build" document for most use cases, as a generic [build.md](https://github.com/alex-free/ezre/blob/master/template-files/build.md) is provided.

* Specify build dependencies for various package managers. Currently both `dnf` and `apt` are supported for Linux. Mac OS supports MacPorts.

* Generate `.deb` packages (i386 and x86_64) for Debian based Linux distributions.

* Generate `.rpm` packages (i386 and x86_64) for RedHat based Linux distributions.

* Generate release zip files for Windows (i686 and x86_64), Mac OS (any arch/version), and Linux (i386 and x86_64).

* Provides 2 different value sets for Mac OS with a `LEGACY=TRUE` argument after any rules (i.e. `make mac-os-release LEGACY=TRUE`).

* Passes a `VERSION` string to source files (no need to edit the version number directly in source files).

## Downloads

### Version 1.1.6 (1/24/2026)

Changes:

* Append `-DVERSION` to HOST_32_BIT target.

---------------------------------------------

* [ezre-v1.1.6.zip](https://github.com/alex-free/ezre/releases/download/v1.1.6/ezre-v1.1.6.zip) _Portable zip release for Linux and Mac OS_

* [ezre-v1.1.6.deb](https://github.com/alex-free/ezre/releases/download/v1.1.6/ezre-v1.1.6.deb) _Deb package for Linux_

* [ezre-v1.1.6-1.noarch.rpm](https://github.com/alex-free/ezre/releases/download/v1.1.6/ezre-v1.1.6-1.noarch.rpm) _RPM package for Linux_

---------------------------------------------

[Previous Versions](changelog.md).

## Usage

Note: Currently, EzRe expects either a Linux or Mac OS host system.

1) Change into your source directory.

2) Execute the `ezre` command.

3) Open the `variables.mk` file copied into your source directory by the `ezre` command in your favorite text editor.

4) Fill in all required information in the `variables.mk` file and save it.

5) Execute the `ezre` command again to apply the information you entered in `variables.mk`.

6) Type `make` to build your software. Type `make all` to build your software for all targets (see [build.md](template-files/build.md)).

## Additional Info

To update the EzRe build system in the future for your software, execute the `ezre` command again in your source directory. As of EzRe v1.0.8, all future versions are forward compatible this way.

To apply new information modified/entered into `variables.mk`, execute the `ezre` command again in your source directory.

To update the version number of your program, run `ezre -u <version number>`. For example,  `ezre -u 1.0.1` will change the version number of your project to 1.0.1 from whatever it was previously.

To auto-confirm overwriting existing EzRe generated files, run `ezre -y`.

If you want to build a library and link it with each target executable, you can easily do so by using the `SCRIPT_HOST`, `SCRIPT_MAC`, `SCRIPT_MAC_LEGACY`, `SCRIPT_WINDOWS_I686`, and `SCRIPT_WINDOWS_X86_64` values in combination with `LDFLAGS_HOST`, `LDFLAGS_MAC`, `LDFLAGS_MAC_LEGACY`, `LDFLAGS_WINDOWS_I686`, and `LDFLAGS_WINDOWS_X86_64`.

## Examples

The [example](https://github.com/alex-free/ezre/blob/master/example) directory contains a test use case for EzRe (hello world in C). You can get a grasp of what is possible by trying it out.

In addition to the above example, I use this for many of my portable C/C++ projects. I'm still working on upgrading the build system in these to the current version, as well as implementing it in some of my other projects. But this shows how tested and it is and other implementation details:

* [Tonyhax International GameShark Generator](https://github.com/alex-free/tonyhax-international-gameshark-generator)
* [LibCrypt Patcher](https://github.com/alex-free/libcrypt-patcher)
* [EDCRE](https://github.com/alex-free/edcre)
* [PSX80MP](https://github.com/alex-free/psx80mp)
* [Open95Keygen](https://github.com/alex-free/open95keygen)
* [PSX Undither](https://github.com/alex-free/psx-undither)
* [Aprip](https://github.com/alex-free/aprip)

## EzRe For Shell Scripts

For releasing shell scripts, please modify the [build](https://github.com/alex-free/ezre/blob/master/build) script! This is what builds ezre itself, but obviously it can be used for other things (which I will probably end up doing for my own scripts). You need `control` and `ezre.spec` too though.

## License

EzRe is released with the 3-BSD license, see [license.md](license.md).
