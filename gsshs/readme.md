# Github SSH Setup (GSSHS)

_By Alex Free_.

Fast and easy SSH setup for Github on Mac OS and Linux.

| [Homepage](https://alex-free.github.io/gsshs) | [Github](https://github.com/alex-free/github-ssh-setup) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [License](license.md)
* [Building](build.md)

## Downloads

### Version 1.0.1 (7/15/2025)

Changes:

* Mac OS support.

* Improved build script.

* RPM package file release available.

* Sets `user.name` and `user.email` git globals.

* Checks that `git` is installed.

---------------------------------------

* [gsshs-v1.0.1.zip](https://github.com/alex-free/github-ssh-setup/releases/download/v1.0.1/gsshs-v1.0.1.zip) _Portable Zip file for Mac OS and Linux._

* [gsshs-v1.0.1.deb](https://github.com/alex-free/github-ssh-setup/releases/download/v1.0.1/gsshs-v1.0.1.deb) _Deb package file for Linux._

* [gsshs-v1.0.1-1.noarch.rpm](https://github.com/alex-free/github-ssh-setup/releases/download/v1.0.1/gsshs-v1.0.1-1.noarch.rpm) _RPM package file for Linux._

---------------------------------------

## Usage

`Usage:`

`gsshs	<github account email> <github user name>`

---------------------------------------

1) Save your login for Github in your default browser.

2) Execute `./gsshs <github account email> <github user name>` found in the portable release using a Terminal application. Alternatively if you have install the `.deb` or `.rpm` package files,ß `gsshs` will be available as a global user command to the system, so just `gsshs <github account email> <github user name>` works fine.

3) Your default browser will open to the Github SSH key page. Your new SSH key was copied to the clipboard by `gsshs`, so just paste the key and add it. Done.
