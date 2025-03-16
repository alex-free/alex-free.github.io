# [EZRE](readme.md) -> Building Releases

**Note: this documents how to build an ezre release. It is not the `build.md` template file, that is in the `template-files` directory.**

1) Change into the source directory.

2) Execute `./build deps` to install the required build dependencies. This supports the apt and dnf package managers on Linux. On Mac OS, MacPorts is supported.

3) Execute `./build` to generate a Linux deb file, Linux RPM file, and a portable zip release for Mac OS and Linux.

If you want to clean the built releases, execute `./build clean`.

