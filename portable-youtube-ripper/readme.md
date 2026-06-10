# Portable YouTube Ripper (PYTR) - YouTube How YOU Want It

_By Alex Free_.

Portable YouTube Ripper runs a wide range on Mac OS and Linux versions, with portable self-contained builds available as well as packages (for Linux). With PYTR YOU select you desired video and audio codecs. YOU select your desired maximum resolution. YOU get YouTube how you want it, archived forever.

| [Homepage](https://alex-free.github.io/portable-youtube-ripper) | [Github](https://github.com/alex-free/portable-youtube-ripper) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [Formats](#formats)
* [Resolutions](#resolution)
* [Bundled Software](#bundled-software)
* [License](license.md)
* [Building](build.md)

## Downloads

The portable releases include all the dependencies required to run Portable YouTube Ripper in a self-contained folder you extract, and is ready to run. The `.deb` and `.rpm` Linux package files will use your Linux package manager to install the dependencies and makes the `pytr` command available system-wide.

### Version 1.0 (6/9/2026)

Changes:

* Initial release.
----------------------------------------------------

* [pytr-v1.0-mac-os-x86\_64-portable.zip](https://github.com/alex-free/portable-youtube-ripper/releases/download/v1.0/pytr-v1.0-mac-os-x86_64-portable.zip) _Portable Release for Mac OS 10.12 and above (64 bit)_

* [pytr-v1.0-linux-x86\_64-portable.zip](https://github.com/alex-free/portable-youtube-ripper/releases/download/v1.0/pytr-v1.0-linux-x86_64-portable.zip) _Portable Release for x86\_64 Linux (64 bit)_

* [pytr-v1.0.deb](https://github.com/alex-free/portable-youtube-ripper/releases/download/v1.0/pytr-v1.0.deb) _Deb package file for x86\_64 Linux (64 bit)_

* [pytr-v1.0-1.x86\_64.rpm](https://github.com/alex-free/portable-youtube-ripper/releases/download/v1.0/pytr-v1.0-1.x86_64.rpm) _RPM package file for x86\_64 Linux (64 bit)_

---------------------------------------

## Usage

```
Usage:

pytr <input url>     Download YouTube video in specified format up to specified resolution.

pytr -cformat      Change format downloaded (avc1, vp9, or av01).

pytr -cres     Change the maximum resolution that is allowed to be downloaded.
    
```

## Formats

YouTube hosts videos in multiple formats. You can choose which to download with `pytr -cformat`. By default the format is set to VP9.

**AVC1** is essentially H.264 with AAC M4A audio. This has the best compatibility with older video players, and is the least CPU/GPU intensive format Google offers.

**VP9** is Google's baby, their own format, and it is paired with Opus audio. It is the least CPU/GPU intensive format that they offer at higher resolutions, such as 1440p and 2160p (4k). The tradeoff compared to their other 4k format is the amount of space the video takes up. Any modern device can play back VP9 just fine. For 2160p (4K) and 1440p, you nead a realitvely powerful device. I'd put the 4k minimum requirements at 2.5GHz dual core i5 + Intel HD 4000 with at least 8GBs of RAM. 

The Mac mini Late 2012 fits the minimum 2160p (4k) requirements for VP9, and if you use an active display port to HDMI 4k/60hz adapter, you can drive a display or TV at 4k/30hz. The HDMI port is only capable of 1080p/60hz, but this workaround indeed works on both Linux and Mac OS. You need a minimum of Mac OS X 10.9 to drive a 4k display, and a relativly up to date video player.

**AV01** is the newest format Google offers also comes with Opus audio. It is the most CPU/GPU intensive, and requires a powerful modern device and video player for higher resolutions. It has much better compression then VP9 and video files take up less space then VP9, but as for if it looks better then VP9 is up to debate.

## Resolutions

YouTube hosts videos in multiple resolutions. You can choose the highest allowed resolution with `pytr -cres`. By default the resolution is set to the maximum available. I say 'highest allowed' because not all resolutions are available for every video, and not every resolution is available in every format. Some YouTube videos were only uploaded in 360p, 720p, etc. so they will never have a higher resolution available for download. And AVC1 does not offer 1440p or 2160p at all, you need to use VP9 or AV01 for those resolutions if they are offered for your video.

If you specify the AVC1 format, you will be able to download


## Bundled Software

The portable Linux release uses FFmpeg v8.1.1 from Fedora  (LGPLv3 license), made portable with my [PLED](https://github.com/alex-free/pled) tool (3-BSD license).

The portable Mac release uses my [yt-dlp-macos-legacy](https://github.com/alex-free/yt-dlp-macos-legacy) standalone binary, which includes a static FFmpeg build from [https://evermeet.cx/ffmpeg/](https://evermeet.cx/ffmpeg/).

* [YouTube-DLP](https://github.com/yt-dlp/yt-dlp) is released under the unlicense. If you are using the portable Linux build, you may update yt-dlp by running `pytr -u`. If you are using the portable Mac build, this is not available, to update yt-dlp you must download a newer release of Portable YouTube Ripper. The Linux `.deb` and `.rpm` packages use your system's FFmpeg and YouTube-DLP from the package manager repos.

