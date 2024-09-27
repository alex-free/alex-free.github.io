# [EzRe](readme.md) -> Changelog

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