# [EzRe](readme.md) -> Changelog

## Version 1.0.6 (2/23/2025)

Changes:

* Fixed `ezre` command not setting RELEASE_FILES var.

* Added info about specifying -y if it wasn't specified.

* Fixed GNU sed compatibility making garbage backup files, not setting VERSION with -u <version>, and other issues.

* Improved build.md template file.

---------------------------------------------

*   [ezre-v1.0.6.zip](https://github.com/alex-free/ezre/releases/download/v1.0.6/ezre-v1.0.6.zip) _Portable zip release for Linux and Mac OS_

*   [ezre-v1.0.6.deb](https://github.com/alex-free/ezre/releases/download/v1.0.6/ezre-v1.0.6.deb) _Portable deb release for Linux_

*   [ezre-1.0.6-1.noarch.rpm](https://github.com/alex-free/ezre/releases/download/v1.0.6/ezre-1.0.6-1.noarch.rpm) _Portable rpm release for Linux_

## Version 1.0.5 (2/18/2025)

Changes:

* Better BSD vs GNU sed detection/compatibility.

* Improved Makefile and variables.mk.

* Added `-y` option to auto-confirm overwriting existing files.

---------------------------------------------

*   [ezre-v1.0.5.zip](https://github.com/alex-free/ezre/releases/download/v1.0.5/ezre-v1.0.5.zip) _Portable zip release for Linux and Mac OS_

*   [ezre-v1.0.5.deb](https://github.com/alex-free/ezre/releases/download/v1.0.5/ezre-v1.0.5.deb) _Portable deb release for Linux_

*   [ezre-1.0.5-1.noarch.rpm](https://github.com/alex-free/ezre/releases/download/v1.0.5/ezre-1.0.5-1.noarch.rpm) _Portable rpm release for Linux_

## Version 1.0.4 (2/14/2025)

Changes:

* Added Mac OS support. PowerPC, Intel, and ARM Macs can all make Mac OS builds as hosts.

* Updated the `ezre` command to save the info you give it about your software. This allows you to seamlessly update to newer versions of `ezre` when they come out.

* The `ezre` command now can set all required variables.

* Implemented the `-u argument` to update the version of your project easily.

* Added missing dnf dependencies.

---------------------------------------------

*   [ezre-v1.0.4.zip](https://github.com/alex-free/ezre/releases/download/v1.0.4/ezre-v1.0.4.zip) _Portable zip release for Linux and Mac OS_

*   [ezre-v1.0.4.deb](https://github.com/alex-free/ezre/releases/download/v1.0.4/ezre-v1.0.4.deb) _Portable deb release for Linux_

*   [ezre-1.0.4-1.noarch.rpm](https://github.com/alex-free/ezre/releases/download/v1.0.4/ezre-1.0.4-1.noarch.rpm) _Portable rpm release for Linux_

## Version 1.0.3 (9/27/2024)

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

## Version 1.0.2 (7/8/2024)

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


## Version 1.0.1 (7/4/2024)

Changes:

*   Added missing apt build dependencies for C++ Linux i386.

---------------------------------------------

*   [EzRe v1.0.1](https://github.com/alex-free/ezre/releases/download/v1.0.1/ezre-v1.0.1.zip)

## Version 1.0 (3/22/2024)

*   [EzRe v1.0](https://github.com/alex-free/ezre/releases/download/v1.0/ezre-v1.0.zip)
