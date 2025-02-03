## Source Engine Fork By Alex Free

Improvements over the [original](https://github.com/nillerusr/source-engine) include:

* Compiles on Macs with a case-sensitive filesystem (thanks to [er2off](https://github.com/er2off)'s [fixes](https://github.com/nillerusr/source-engine/pull/249)).

* Can be compiled with either [Homebrew](https://brew.sh/) or [MacPorts](https://www.macports.org/). Previously, only Homebrew worked to build it.

| [Homepage](https://alex-free.github.io/source-engine) | [Github](https://github.com/alex-free/source-engine) |

## Prerequisites:

* Xcode command line tools installed. This can be done by opening terminal and executing `xcode select --install`. Alternatively, the website [xcodereleases.com](https://xcodereleases.com/) lists direct download links from Apple. 

* [MacPorts](https://www.macports.org/install.php) or [Homebrew](https://brew.sh/) installed.

## MacPorts Dependencies

`sudo port -N install libsdl2 freetype fontconfig pkgconfig libopus libpng libedit libjpeg-turbo curl`

## Homebrew Dependencies

`brew install sdl2 freetype2 fontconfig pkg-config opus libpng libedit`

## Building 

1) Clone my fork recursively:

`git clone --recursive https://github.com/alex-free/source-engine`

2) Change into the `source-engine` directory:

`cd source-engine`

3) Configure the build. You can pass `--prefix=/somedirectory` and have it install there later. I choose `/Users/alex/half-life-2`:

`python3 ./waf configure -T release --prefix=/Users/alex/half-life-2`

Note: The [official wiki](https://github.com/nillerusr/source-engine/wiki/Source-Engine-(EN)#common-build-instructions-for-all-os) states "If you need a 64 bit build add -8 or --64bits argument to WAF." but this is outdated and in fact if you do this `waf` will give you an error in the official repo and my fork.

4) Build:

`python3 ./waf build`.

5) Install it:

`python3 waf install`
