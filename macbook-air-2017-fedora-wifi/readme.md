# Fedora 41 WiFi On The Macbook Air 2017

_By Alex Free_

Last updated 4/3/2026

Note: this will almost certainly work for the 2015 Macbook Airs as well.

`sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm`

`sudo dnf upgrade`

`sudo dnf install broadcom-wl`

`sudo reboot`

Or if your into one liners:

`sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && sudo dnf upgrade -y && sudo dnf install -y broadcom-wl && sudo reboot`

DO NOT SKIP ANY STEPS OR IT WONT WORK.

To get internet to do the above (I hate this circular requirement so much)"

* Your iPhone's USB hotspot.

* Use a WiFi to USB adapter (such as the [TPLink USB](https://www.amazon.com/wifi-adapter-usb-pc-network/dp/B008IFXQFU?th=1) that is compatible OTB with Linux).

