# [YT-DLP Mac OS Legacy](readme.md) -> Building

Install MacPorts on the minimum Mac OS version you are targetting (i.e. Mac OS 10.12 is what I build this on). I have this setup with an FFmpeg static binary compatible with Mac OS X 10.9 as a minimum, so as long as YT-DLP builds on your Mac OS X version and it's 10.9 or newer you won't even need to change anything. 

If you need to target a lower Mac OS X, you'll need to change the build script and FFmpeg binary it downloads.

Once you have MacPorts, just run the `build` script.
