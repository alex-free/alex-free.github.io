# FLAC2MP3

_By Alex Free_.

Recursively convert a folder of FLAC files to one containing 320kbs stereo MP3 files.

| [Homepage](https://alex-free.github.io/flac2mp3) | [Github](https://github.com/alex-free/flac2mp3) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [License](license.md)
* [Building](build.md)

## Downloads

### Version 1.0 (1/6/2025)

Changes:

* Initial release.

----------------------------------------------------

* [flac2mp3-v1.0.zip](https://github.com/alex-free/flac2mp3/releases/download/v1.0/flac2mp3-v1.0.zip) _Portable zip release_

* [flac2mp3-v1.0.deb](https://github.com/alex-free/flac2mp3/releases/download/v1.0/flac2mp3-v1.0.deb) _Portable deb release_

* [flac2mp3-1.0-1.fc40.noarch.rpm](https://github.com/alex-free/flac2mp3/releases/download/v1.0/flac2mp3-1.0-1.fc40.noarch.rpm) _Portable rpm release_

---------------------------------------

## Usage

`flac2mp3 <input folder>`

`<input folder>      Folder of FLAC files.`

FLAC2MP3 expects a folder of FLAC files as it's sole argument. It will then recursively convert each FLAC file to a 320kbs stereo MP3 file (the gold standard of compressed music files in terms of compatibility and quality IMHO). The converted files as well as any other non-FLAC files in the input directory given to FLAC2MP3 will be placed in a sub directory within the input directory of the same name. This ensures any cover artwork, playlist files, etc are still present in the folder of converted files. The original FLAC files remain untouched.
