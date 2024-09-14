
# Building From Source

In the source directory, you may execute any of the following:

`make deps-apt` - installs the build dependencies required to compile the program on a Linux system with the `apt` package manager.

`make deps-dnf` - installs the build dependencies required to compile the program on a Linux system with the `dnf` package manager.

`make` - creates an executable from Linux.

`make clean` - deletes only the generated executable file created by only executing `make`.

`make clean-build` - deletes the generated build directory in it's entirety.

`make all` - **generate all of the following:**

### For Windows x86_64 (64 bit)

* Windows x86_64 static executable file.
* Portable Windows x86_64 release .zip file.

All output is found in the `build` directory created in the source directory.