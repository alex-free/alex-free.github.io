# [Lib Enigma](readme.md) -> Building From Source

Note: Execute `./build clean` to clean source tree.

## Library Release Zip

`./build` (also builds all examples for all targets possible on host). The built examples are found in `<example>/build`, but they are also copied to `all-examples` in the root of the source tree.

## Examples

If you want just one example, `cd` into the example and execute `make deps all` for all targets possible on host for that example.

## Library

Execute the build script for your target:

`build-lib-enigma-host` - build for Linux (or maybe BSD).

`build-lib-enigma-host-32-bit` - build for Linux 32 bit (or maybe BSD 32 bit) from a 64 bit Host.

`build-lib-enigma-mac-os` - build for Mac OS.

`build-lib-enigma-mac-os-legacy` - build for older Mac OS (older compilers/OS have issue with some CFLAGS so if the regular mac build script doesn't work use this).

`build-lib-enigma-windows-i686` - cross compile on Linux/Mac for Win 32 pentium minimum CPU, Windows 95 OSR 2.5 or newer.

`build-lib-enigma-windows-x86_64` - cross compile on 
Linux/Mac for Win 64.
