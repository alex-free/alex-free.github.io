# Widevine Installer

_By Alex Free_.

Installs Widevine DRM for chromium based browsers (such as [Ungoogled Chromium](https://github.com/ungoogled-software/ungoogled-chromium)) on Linux.

| [Homepage](https://alex-free.github.io/widevine-installer) | [Github](https://github.com/alex-free/widevine-installer) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [Notes](#notes)
* [License](license.md)
* [Building](build.md)

## Downloads

### Version 1.0 (5/31/2026)

Changes:

* Initial release.

----------------------------------------------------

* [wvinst-v1.0.zip](https://github.com/alex-free/widevine-installer/releases/download/v1.0/wvinst-v1.0.zip) _Portable Zip file for Linux_

* [wvinst-v1.0-1.noarch.rpm](https://github.com/alex-free/widevine-installer/releases/download/v1.0/wvinst-v1.0-1.noarch.rpm) _RPM package file for Linux._

* [wvinst-v1.0.deb](https://github.com/alex-free/widevine-installer/releases/download/v1.0/wvinst-v1.0.deb) _Deb package file for Linux._

---------------------------------------

## Usage

`wvinst` - attempts to find Chromium based browsers installed to the system (.e. from a [Fedora COPR](https://copr.fedorainfracloud.org/coprs/wojnilowicz/ungoogled-chromium)). Note that not any other system installation is covered yet.

`wvinst <path to chromium based browser>`. Give the 1st argument as the folder to a chromium installation. Note: may need sudo if giving it a system folder. Works for things like the [Portable Linux 64-bit](https://ungoogled-software.github.io/ungoogled-chromium-binaries/) builds of [Ungoogled Chromium](https://github.com/ungoogled-software/ungoogled-chromium).


## Notes

* There are many ways to test out that it worked, such as [https://bitmovin.com/demos/drm/](https://bitmovin.com/demos/drm/) as well as going to like Netflix or Crunchyroll (both work). Some sites may not even accept L3 Widevine so also keep that in mind. This installer just gets you the equievelent that Linux Chrome can support.

* Note that on Linux we are limited to Widevine L3, just is what it is so higher resolution support is limited without further tricks.

* Ideally I'd like this to work more then just on Chromium based browsers on Linux. If you can add support for more situations, let me know.

* Make sure you close your browser and open it again so it can use Widevine. You may need to do this more then once if it doesn't show up on the [test website](https://bitmovin.com/demos/drm/) immmedietly.