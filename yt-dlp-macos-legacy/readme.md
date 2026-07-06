# YT-DLP Mac OS Legacy

_By Alex Free_.

[YT-DLP](https://github.com/yt-dlp/yt-dlp) used to support a standalone binary release for Mac OS 10.9-10.14, called `yt-dlp_macos_legacy`. This was [dropped](https://github.com/yt-dlp/yt-dlp/issues/13856) earlier this year, leaving people to be 'forced' to use newer Mac OS versions if they wanted to use the standalone binary (which does not require you to install anything like MacPorts or Homebrew to use it). This project aims to restore the 'macos_legacy' target. It also contains FFMpeg internally, so you can merge audio+videos streams as well as use any other FFmpeg related functionallity out the box.

| [Homepage](https://alex-free.github.io/yt-dlp-macos-legacy) | [Github](https://github.com/alex-free/yt-dlp-macos-legacy) | [MacRumors Thread](https://forums.macrumors.com/threads/yt-dlp-mac-os-legacy-reviving-standalone-yt-dlp-binaries-for-older-mac-os-versions.2483468/) |

## Table Of Contents

* [Downloads](#downloads).

* [Building](build.md).

* [License](license.md).

## Downloads

### Version 1.0.2-2026.07.04 (7/5/2026)

Changes:

* Updated to latest [yt-dlp](https://github.com/yt-dlp/yt-dlp) 2026.07.0.

* Remove [patch](https://github.com/macports/macports-ports/pull/33032) for [libheif](https://ports.macports.org/port/libheif/) as it has been fixed by Macports upstream.

---------------------------------------

* [yt-dlp-macos-legacy-v1.0.2-2026.07.04.zip](https://github.com/alex-free/yt-dlp-macos-legacy/releases/download/v1.0.2/yt-dlp-macos-legacy-v1.0.2-2026.07.04.zip) _Standalone binary for Mac OS 10.12+_

---------------------------------------

[Previous versions](changelog.md)

