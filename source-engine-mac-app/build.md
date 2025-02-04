# [Source Engine Mac App](readme.md) -> Building

You need Xcode/Xcode Command line tools installed. You can get a list of direct download links hosted by Apple from [xcodereleases.com](https://xcodereleases.com/). You also need either [MacPorts](https://www.macports.org/) (recommended) or [Homebrew](https://www.macports.org/) on your Mac.

1) Clone recursively from Github: 

`git clone --recursive https://github.com/alex-free/source-engine-mac-app`

2) Change into the source directory: 

`cd source-engine-mac-app`

3) Execute `./build` to generate a portable zip release.

If you want to clean the built release, execute `./build clean`.