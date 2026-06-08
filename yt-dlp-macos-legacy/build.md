# [YT-DLP Mac OS Legacy](readme.md) -> Building

Install MacPorts on the minimum Mac OS version you are targetting (i.e. Mac OS 10.12 is what I build this on). I have this setup with an FFmpeg static binary compatible with Mac OS X 10.9 as a minimum, so as long as YT-DLP builds on your Mac OS X version and it's 10.9 or newer you won't even need to change anything. 

If you need to target a lower Mac OS X, you'll need to change the build script and FFmpeg binary it downloads.

Once you have MacPorts, just run the `build` script.

Note: [Libheif](https://ports.macports.org/port/libheif/details/) is broken on Mac OS 10.12 (probably other older Mac OS versions as well), which is a dependency of yt-dlp with MacPorts. I have a [pull request](https://github.com/macports/macports-ports/pull/33032) open to try to resolve this. You can use the same modification to get the build script to succeed.
