# Fedora 41 WiFi On The Mac Mini Late 2012

_By Alex Free_

v1.0, 2/13/2025

`sudo dnf upgrade`

`sudo dnf install akmod-wl`

`sudo reboot`

DO NOT SKIP ANY STEPS OR IT WONT WORK.

To get internet to do the above (I hate this circular requirement so much)"

* Use an Ethernet cable.

* Use a WiFi to USB adapter (such as the [TPLink USB](https://www.amazon.com/wifi-adapter-usb-pc-network/dp/B008IFXQFU?th=1) that is compatible OTB with Linux).

* Your iPhone's USB hotspot. Granted some Linux updates break the USB hotspot functionality all the time seemingly (like the latest?). The kernel shipped with Fedora 41 does work for this.