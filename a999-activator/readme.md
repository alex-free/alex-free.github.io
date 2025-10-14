# A999 Activator: A9, iOS 9, 9 Years Later

_By Alex Free_

A completely automatic solution that tether downgrades to iOS 9.2-9.3.3, jailbreaks, and activates any iPhone 6S, iPhone 6S Plus, or iPhone SE. Made possible by the work of many [others](#credits). iOS 9 WILL NEVER DIE. I had an iPhone 6S that I jailbroke with Pangu 9 on iOS 9.0.something back in the day, hence why I made this.

For those unfamilar, A9 iOS 9 activation doesn't work normally anymore for many iPhones and no one really knows why. Apple seems to have broken something during downgrade party. After [turdus_merula](https://sep.lol) dropped there were more iOS 9 users then there had been in years, many now expierencing the activation issue (including myself). A999Activator takes all the public knowlege on activating A9 iOS 9 devices and uses some [new](#how-this-works) techniques to make the proccess as seemless as possible for the end user. I hope you enjoy this as much as I. I've been out of the scene mostly for years, so if you can contribute to this and make it better please do!

* There's many things you can do on iOS 9 that perhaps you didn't think you still could, here's just a [few](#interesting-things-to-do-on-ios-9).

* To find out what iOS version is right for you to downgrade to, please check the [Important Info](#important-info) section.

* If your curious how this works, please check the [How This Works](#how-this-works) section.

* Please check the [FAQ](#faq) section for more information and solutions. If you have an issue, please open a [Github issue](https://github.com/alex-free/a999activator/issues/new?template=issue.md) and fill out the information.

| [Github](https://github.com/alex-free/a999activator) | [Homepage](https://github.com/alex-free/a999activator) | [Reddit Post](https://www.reddit.com/r/setupapp/comments/1kux73s/a999activator_automatic_downgrade_to_ios_9_with/) |

# Table Of Contents

* [Downloads](#downloads)
* [Important Info](#important-info)
* [Usage](#usage)
* [FAQ](#faq)
* [How This Works](#how-this-works)
* [Credits](#credits)
* [License](#license)
* [Building](build.md)

## Downloads

### Version 1.0.7 (10/12/2025)

* [a999activator-v1.0.7.zip](https://github.com/alex-free/a999activator/releases/download/v1.0.7/a999-activator-v1.0.7.zip) _For Mac OS and for Linux_

A999 Activator is designed to work on Debian, Fedora, and Mac OS 10.12 or newer. x86_64 and ARM64 arches are supported.

Changes:

* Now uses my own [idevice-tool-kit](https://github.com/alex-free/idevice-tool-kit) function library.

[Previous versions](changelog.md).

## Important Info

If you have an iPhone 6S or iPhone 6S plus, is it is recommended to downgrade to iOS 9.2 or iOS 9.2.1. These versions have everything working:

* Activation.
* iMessage sign-in.
* FaceTime sign-in.
* iCloud sign-in.
* Cellular/carrier SIM functionality.
* Sideloading (but you can also just install cracked IPAs).

On iOS 9.3, 9.3.1, 9.3.2, and 9.3.3 all of the above also works, except iMessage and FaceTime sign-in. This is a known issue due to Apple making changes for iOS 9.3 and above that currently does not have a fix yet.

## Requirements

Mac requirements:

* Mac OS 10.12 or newer.

* Either the [MacPorts](https://www.macports.org/install.php) or [Homebrew](https://brew.sh/) package manager installed.

Linux requirements:

* Fedora or Debian Linux (x86_64 or arm64).

## Usage

1) Download the latest release and extract it.

2) Execute it in Terminal (this is a command line program). Drag the `a999` command into your Terminal window and press enter. Or if you want, cd into the extracted release and:

`./a999`

Note that on Linux you must run `a999` with root privilages, i.e. `sudo ./a999`. On Mac you do not need to do this.

3) Follow the prompts.

## Interesting Things To Do On iOS 9

* Instagram still works from the AppStore.

* YouTube in Safari works. The Safari browser in iOS 9 is so old that ads are broken and never show, but videos do play if you put the iPhone in a landscape orientation.

* You can use iOS 9.2 and iOS 9.2.1 to send/recieve FaceTime calls and iMessages to your main iPhone.

* You can use it as your main iPhone (I did for a few weeks). T-Mobile/Mint Mobile in the USA are confirmed working carriers.

## FAQ

### My iPhone Won't Detect On Fedora Linux

This may happen the first time you ever use A999 Activator on Fedora Linux. Reboot your computer, and try a999 activator again. 

### The Jailbreak Website Shows An Error In Safari And Reloads After Hitting Go

You gotta hit go again. It takes a few tries sometimes.

### Stuck on Checkmate?

Disconnect and reconnect the lightning cable to get past it.

### Error Failed To Open Handle (No Device) After Checkmate?

This error occurs on Linux when booting iOS 9. Disconnect and reconnect the lightning cable to get past it. The error will appear again but be non-fatal and work.

### Unable To Successfully Restore Device

Wait until your prompted to enter DFU Mode again, and before you do disconnect and reconnect the lightning cable. The next restore should work.

### My iPhone Is Stuck In The Ramdisk Ran Right After iOS 9 Is Restored.

This means turdus merula didn't restore iOS 9 correctly (known issue) and the ramdisk couldn't mount the filesystem correctly in order to continue. Exit out of the `a999` command  (`ctrl+c`) and execute the `a999` command again to get past it. 

### How Do I Boot My Downgraded iOS 9 iPhone If The Battery Dies Or I Turn It Off?

In the same folder that the `a999` command is in, there will be a new command starting with `boot` which is generated after a successful downgrade automatically. All you have to do is execute that command starting with `boot` while your iPhone is in Recovery Mode and connected to your computer.

### Why Is My iPhone Not Detected?

Make sure your using a USB-A to lightning cable. If you have to, you can also use a USB-C to USB-A adapter with the USB-A lightning cable plugged into it. If you are using a USBA-A lightning cable correctly, try unplugging the cable and then plugging it back in. Then execute `a999` again.

### iMessage and or FaceTime not activating on iOS 9.2/iOS 9.2.1, I thought they worked on those versions?

Sometimes it can take a few tries for it to login correctly. If that is not working, this can also happen because Find My iPhone was left on. It is important to sign out of Find My iPhone on iOS 15 before the downgrade. If you forget to do this, you will have strange iMessage and Facetime notification behavior. If your on iOS 9 and forgot to do this, turn it off and then back on in the Settings app to fix it (this can take some time to take effect though and 'fix' it, so I recommend just re-doing the downgrade with Find My iPhone off).

### Why Does It Take So Long? You Say It's Much Faster The Next Time You Run It?

On the first run of a999activator, there are many additional steps in the proccess that will trigger automatically for you. **Subsequent runs will be signifigantly shorter and take fewer steps as it caches needed data from the first run locally in the `data` folder.** That `data` folder is very important and personalized to your iPhone. You should back it up because you can put it back in any future a999activator release and it will use that data when it detects your iPhone!

Similar to the data folder are the `boot*` scripts. These get generated once your iPhone downgrades successfully automatically, and are also personalized to your iPhone and should be backed up so you can reboot the iPhone from Recovery Mode if it dies or your turn it off.

You can also use the `a999` command to transfer your `data` and `boot*` files from a previous release of A999 Activator:

`./a999 -u <path to new update of a999 activator>`

### How Are Errors Handled?

Certian aspects of Turdus_ra1n (exploiting SEP, booting exploited iOS) can fail the first time. This is why A999activator has very extensive if-fail-then-retry logic. It will eventually work, and it won't continue the proccess until it does. So don't be discouraged when it says `Something went wrong, lets try that again` because it's really just working as intended and trying again (sometimes many times to get that PTEBlock) does eventually work out. One exception to this is if turdusra1n/turdus_merula crashes at `- <Log> checkm8 setup stage`. If your stuck here for a long time (more then 30 seconds) I would `ctrl+c` to exit a999activator, unpulg the USB-A to Lightning cable from the USB port on the Mac, then plug it back in before running the `a999` command again. Unfortunately I don't have a better solution for this yet as it is a turdus merula problem. In a similar vein to above, if you fail to enter DFU mode when prompted or the custom ramdisk fails to boot a999activator notices this and goes back to correct it.

### What Has A999Activator Been Tested On?

I have extensively tested a999activator with 2 different iPhone 6S Pluses with MacBook Airs on Mac OS 12 as well as a Mac mini on Mac OS 10.12. It is reported to work on even the latest Mac OS. Linux support was developed on Fedora Linux.

I have literally activated iOS 15 100+ times with the same Apple ID. I have written support for iPhone 6S and iPhone SE because it should work the same. 

### What About iPads with A9(X)?

iPads in theory can work too in a future update, as well as any other A9 device not currently supported.

### What about iOS 9.0.x/9.1/9.3.4/9.3.5??

So iOS 9.0.x/iOS 9.1/9.3.4/9.3.5 have jailbreaks. The problem here is that these jailbreaks require an activated iOS 9 iPhone. Chicken and egg problem, we need a jailbreak to activate. This could be developed in the future if it can be done from a ramdisk entrypoint similar to how iOS 9.2-9.3.3 are handled and then triggered with some kind of untether or Safari exploit.

## How This Works

Remember, this is all automatic (as possible)!

1) Restores the latest iOS if your iPhone is not on the latest iOS and activation files have not yet been backed up.

2) Prompts user to activate, sign into iCloud, complete Setup.app, and turn off Find My iPhone if activation files have not yet been backed up. Additionally, if you want to use an active SIM card with your carrier it mentions that should be working on the latest iOS before continuing.

3) Boots a custom ramdisk in Recovery mode to create iOS 15 activation tarball files which are transferred to the computer.

4) Downgrades to iOS 10.2.1 to work around 2 issues (random rebooting to Recovery Mode and random disabled Wifi in iOS 9.3.x). This is the first step if activation files have already been backed up.

5) Downgrades to target iOS (9.2-9.3.3).

6) Boots a custom ramdisk in Recovery mode that puts the activation tarball files, an activation script, and a launch daemon all on /. Jailbreaks the iPhone (needs a trigger to enable it but bootstrap is installed), disables Setup.app, and then reboots into Recovery Mode.

7) Boots iOS 9.2-9.3.3.

8) User is prompted to sign in to Wi-Fi and then go to http://jbme.ddw.nu to enable the Jailbreak.

9) Jailbreak triggers the previously in-active launch daemon. Launch daemon extracts all activation tarball files that were put on / into the proper /var places. It then modifies a plist file for activation needed for iOS 9.3.x. After that it deletes itself and all other temp files. Setup.app is then re-enabled, and the iPhone is rebooted into Recovery mode.

10) iPhone is booted into iOS 9.2-9.3.3. Activation status is checked and if successful a special boot script is created dynamically in the same directory as the a999 command which can be used to boot the device from Recovery Mode in the future.

## Credits

* [u/iPh0ne4s](https://www.reddit.com/user/iPh0ne4s/) and [u/_alecbaldwin](https://www.reddit.com/user/_alecbaldwin/) for the activation method posted by [u/roolw](https://www.reddit.com/user/roolw/): [How to fully activate iOS 9.2-9.3.5](https://www.reddit.com/r/setupapp/comments/1jwmv8s/how_to_fully_activate_ios_92_935/).

* [@John011235](https://x.com/John011235) for this [post](https://x.com/John011235/status/1756498551385755682) about plutil.

* [Sep.lol team](https://sep.lol/) for turdus merula.

* [LukeZGD](https://github.com/LukeZGD) for [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit).

## License

A999activator itself is released under the 3-BSD license, see [license.md](license.md). A999Activator uses many other dependency programs which are not under that license, such as:

* Turdus Merula (closed source, open source is planned).

* Legacy-iOS-Kit (GNU GPL v3.0). This uses my [forked version](https://github.com/alex-free/Legacy-iOS-Kit) by the way.