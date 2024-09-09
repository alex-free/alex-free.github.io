# Github SSH Setup (GSSHS)

_By Alex Free_.

Setup Github SSH in a flash!

| [Homepage](https://alex-free.github.io/gsshs) | [Github](https://github.com/alex-free/github-ssh-setup) |

## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [License](#license)
* [Building](build.md)

## Downloads

### Version 1.0 (9/8/2024)

Changes:

* Initial release.

---------------------------------------

* [gsshs-v1.0.zip](https://github.com/alex-free/github-ssh-setup/releases/download/v1.0/gsshs-v1.0.zip) _Portable Zip file for Linux._

* [gsshs-v1.0.deb](https://github.com/alex-free/github-ssh-setup/releases/download/v1.0/gsshs-v1.0.deb) _Portable Deb package file for Linux._

---------------------------------------

## Usage

`Usage:`

`gsshs	<github account email>`

---------------------------------------

1) Save your login for Github in your default browser.
2) Execute `./gsshs <github account email>` found in the portable release using a Terminal application. Alternatively if you have install the `.deb` package file `gsshs` will be available as a global user command to the system, so just `gsshs <github account email>` works fine.
3) Your default browser will open to the Github SSH key page. Your new SSH key was copied to the clipboard by `gsshs`, so just paste the key and add it. Done.

## License

Github SSH Setup (gsshs) is released as open source software under the [3-BSD license](license.md).

