# [Lib PS-CD-ID](readme.md) -> Building From Source

## Building The Library Manually

This is for compiling the library separably. Note that the example's makefile already does this and it isn't required to build the example with the included makefile.

`gcc -Wall -Wextra -Werror -pedantic -c lib-ps-cd-id.c -o build/lib-ps-cd-id.o`

`ar rcs build/libps-cd-id.a build/lib-ps-cd-id.o` (Static) (`libps-cd-id.a`)

`gcc -shared -o build/libps-cd-id.so build/lib-ps-cd-id.o` (Shared) (`libps-cd-id.so`)

## Building The Example From Source

In the source directory, you may execute any of the following:

`make deps-apt` - installs the build dependencies required to compile the program.

`make` - creates an executable for x86_64 Linux.

`make clean` - deletes only the generated executable file created by only executing `make`.

`make clean-build` - deletes the generated build directory in it's entirety.

`make all` - **generate all of the following:**

### For Windows 95 OSR 2.5 and above, Pentium CPU minimum (32 bit)

*   Windows i686 static executable file
*   Portable Windows i386 release .zip file

### For Windows x86_64 (64 bit)

*   Windows x86_64 static executable file
*   Portable Windows x86_64 release .zip file

### For Linux 3.2.0 and above, 386 CPU minimum (32 bit)

*   Linux i386 static executable file
*   Portable Linux i386 release .zip file
*   Linux i386 release .deb file

### For Linux 3.2.0 and above, x86_64 (64 bit)

*   Linux x86_64 static executable file
*   Portable Linux x86_64 release .zip file
*   Linux x86_64 release .deb file

All output is found in the build directory created in the source directory.