# Fedora Setup By Alex.

_By Alex Free_.

Script to setup Fedora Linux how I like it.

| [Homepage](https://alex-free.github.io/fedora-setup-by-alex) | [Github](https://github.com/alex-free/fedora-setup-by-alex) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [License](license.md)
* [Building](build.md)

## Downloads

### Version 1.0 (5/2/2026)

Changes:

* Remove debug in release.

---------------------------------------

* [fedora-setup-by-alex-v1.0.zip](https://github.com/alex-free/fedora-setup-by-alex/releases/download/v1.0/fedora-setup-by-alex-v1.0.zip) _Portable Zip file._

* [fedora-setup-by-alex-v1.0-1.noarch.rpm](https://github.com/alex-free/fedora-setup-by-alex/releases/download/v1.0/fedora-setup-by-alex-v1.0-1.noarch.rpm) _RPM package file for Linux._

---------------------------------------

## Usage

`Usage:`

`fedora-setup-by-alex`

---------------------------------------

What it does:

* Infinite timeout for sudo. You will only ever be asked for your sudo password once per session.

* Keep all downloaded `dnf` packages for archival purposes. These can be found at `/var/cache/libdnf5`.

* Enable 3rd party repos.

* Add mullvad repo.

* Add Ungoogled chromium repo.

* Enable proprietary video codecs.

* Install `mullvad-vpn`, `ungoogled-chromium`, `vlc`, `qbittorrent`, `nicotine+`, `git`, `bless`, `wine`, `qt5-qttools`, and `openssh-server`.

* Remove firefox and dragon video player.

* Set default web browser to Ungoogled Chromium.

* Set default video player to VLC.

* Enable OpenSSH server.