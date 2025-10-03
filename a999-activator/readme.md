# A999 Activator: A9, iOS 9, 9 Years Later

_By Alex Free_

A completely automatic solution that tether downgrades to iOS 9.2-9.3.3, jailbreaks, and activates any iPhone 6S, iPhone 6S Plus, or iPhone SE. Made possible by the work of many [others](#credits). iOS 9 WILL NEVER DIE. I had an iPhone 6S that I jailbroke with Pangu 9 on iOS 9.0.something back in the day, hence why I made this.

For those unfamilar, A9 iOS 9 activation doesn't work normally anymore for many iPhones and no one really knows why. Apple seems to have broken something during downgrade party. After [turdus_merula](https://sep.lol) dropped there were more iOS 9 users then there had been in years, many now expierencing the activation issue (including myself). A999Activator takes all the public knowlege on activating A9 iOS 9 devices and uses some [new](#how-this-works) techniques to make the proccess as seemless as possible for the end user. I hope you enjoy this as much as I. I've been out of the scene mostly for years, so if you can contribute to this and make it better please do!

| [Github](https://github.com/alex-free/a999activator) | [Homepage](https://github.com/alex-free/a999activator) | [Reddit Post](https://www.reddit.com/r/setupapp/comments/1kux73s/a999activator_automatic_downgrade_to_ios_9_with/) |

# Table Of Contents

* [Downloads](#downloads)
* [Important Info](#important-info)
* [Usage](#usage)
* [Additional Info](#additional-info)
* [How This Works](#how-this-works)
* [What about iOS 9.0.x/9.1/9.3.4/9.3.5??](#what-about-ios-90x91934935)
* [Credits](#credits)
* [License](#license)
* [Building](build.md)

## Downloads

### Version 1.0.3 (10/3/2025)

* [a999activator-v1.0.3-mac-os-universal.zip](https://github.com/alex-free/a999activator/releases/download/v1.0.3/a999-activator-v1.0.3-mac-os-universal.zip) _For Mac OS 10.12 and newer_

Changes:

* Fixes [issue 4](https://github.com/alex-free/a999activator/issues/4) which caused an iPhone 6S set to downgrade to iOS 9.2 to mistakenly downgrade to iOS 9.2.1 instead.

* Fixes issue where booting iOS 9 into Normal Mode on some Mac OS versions got stuck and never progressed the script.

* Now downgrades to iOS 10.2.1 before going to target iOS 9 version. Previously this was iOS 10.3.3, but due to issues during the restore to iOS 9 as well as booting the ramdisk iOS 10.2.1 is now used (issue is caused most likely because iOS 10.3.3 is APFS while 10.2.1 was still JHFS+). Huge thanks to [BuyLife4267](https://reddit.com/user/BuyLife4267/) for this fix. Fixes [issue 6](https://github.com/alex-free/a999activator/issues/6) and [issue 7](https://github.com/alex-free/a999activator/issues/5).

* Updated turdus_ra1n to [v1.1](https://sep.lol/), fixing the iPhone SE no cellular on iOS 9 problem and many others. This fixes [issue 1](https://github.com/alex-free/a999activator/issues/1) and [issue 7](https://github.com/alex-free/a999activator/issues/7).

* Updated latest iOS initial stage to use iOS 15.8.5 fixing issues with getting activation files from a signed iOS, [fixing this isue](https://github.com/alex-free/a999activator/issues/7).

* Improved UX when intially detecting if iPhone is in Normal Mode, Recovery Mode, or Recovery Mode.

* Improved activation file detection. This change fixes an issue where if the user didn't follow instructions and sign in to iCloud, complete Setup.app, get to the home screen, have an active carrier SIM in (if wanting to use a carrier once on iOS 9) and make sure Find My iPhone has been turned off the downgrade could fail.

* Improved getting activation files to make it more automatic.

[Previous versions](changelog.md).

## Important Info

The following information will be given to you while A999Activator is running as well. There are some limitations for certain iOS 9 versions you need to be aware of. I recommend downgrading to iOS 9.2 or iOS 9.2.1 (I daily drove 9.2 for a week!).

* You can't sign into iCloud initially when you get to Setup.app on iOS 9.2 and iOS 9.2.1. If you attempt to sign-in to your iCloud while in Setup.app on these versions it will never complete and you'll need to reboot the iPhone. **Instead on these versions don't sign into iCloud until after you complete Setup.app. Go to the Settings.app from the home screen and sign into iCloud there.**

* You can't sign into iMessage or FaceTime on iOS 9.3, iOS 9.3.1, iOS 9.3.2, and iOS 9.3.3. **There is no workaround (yet??) other then to use iOS 9.2 or iOS 9.2.1 (if not an iPhone SE user) which can sign in and work.**

* You can't setup Touch-ID in Setup.app. **Complete Setup.app and then setup Touch ID in Settings.app.**

| iOS Version | Cellular | WiFi | iMessage | FaceTime | App Store | iCloud Sign in (Setup.app) | iCloud Sign in (Settings app) | Sideloading |
|-------------|----------|------|----------|----------|-----------|----------------------------|------------------------------|-------------|
| 9.2         | Yes      | Yes  | Yes      | Yes      | Yes       | No                         | Yes                          | Yes         |
| 9.2.1       | Yes      | Yes  | Yes      | Yes      | Yes       | No                         | Yes                          | Yes         |
| 9.3         | Yes      | Yes  | No       | No       | Yes       | Yes                        | Yes                          | Yes         |
| 9.3.1       | Yes      | Yes  | No       | No       | Yes       | Yes                        | Yes                          | Yes         |
| 9.3.2       | Yes      | Yes  | No       | No       | Yes       | Yes                        | Yes                          | Yes         |
| 9.3.3       | Yes      | Yes  | No       | No       | Yes       | Yes                        | Yes                          | Yes         |

## Usage

Requirements: You need Mac OS 10.12 or newer, and you need either the [MacPorts](https://www.macports.org/install.php) or [Homebrew](https://brew.sh/) package manager installed.

1) Download the latest release and extract it.

2) Execute it in Terminal.app (this is a command line program).

_For tethered restores (no blobs):_

`./a999`

_For untethered restores (with blobs)_ **(UNTESTED PLEASE OPEN AN [ISSUE](https://github.com/alex-free/a999activator/issues/new) IF THIS WORKS OR DOESN'T WORK):**

`./a999 -b myblob.shsh`

3) Follow the prompts.

## Additional Info

* It is important to sign out of Find My iPhone on iOS 15 before the downgrade. If you forget to do this, you will have strange iMessage and Facetime notification behavior. If your on iOS 9 and forgot to do this, turn it off and then back on in the Settings app to fix it (this can take some time to take effect though and 'fix' it, so I recommend just re-doing the downgrade with Find My iPhone off).

* On the first run of a999activator, there are many additional steps in the proccess that will trigger automatically for you. Subsequent runs will be signifigantly shorter and take fewer steps as it caches needed data from the first run locally in the `data` folder. That `data` folder is very important and personalized to your iPhone. You should back it up because you can put it back in any future a999activator release and it will use that data when it detects your iPhone!.

* Certian aspects of Turdus_ra1n (exploiting SEP, booting exploited iOS) can fail the first time. This is why A999activator has very extensive if-fail-then-retry logic. It will eventually work, and it won't continue the proccess until it does. So don't be discouraged when it says `Something went wrong, lets try that again` because it's really just working as intended and trying again (sometimes many times to get that PTEBlock) does eventually work out. One exception to this is if turdusra1n/turdus_merula crashes at `- <Log> checkm8 setup stage`. If your stuck here for a long time (more then 30 seconds) I would `ctrl+c` to exit a999activator, unpulg the USB-A to Lightning cable from the USB port on the Mac, then plug it back in before running the `a999` command again. Unfortunately I don't have a better solution for this yet as it is a turdus merula problem.

* In a similar vein to above, if you fail to enter DFU mode when prompted or the custom ramdisk fails to boot a999activator notices this and goes back to correct it.

* Very rarely Turdus Merula fails to restore iOS 9. This is an A9 Turdus Merula issue. If this occurs you will see a bunch of errors when the ramdisk boots up the second time. In this case, `ctrl+c` out of a999activator and run it again.

* I have extensively tested a999activator with 2 different iPhone 6S Pluses. I have literally activated iOS 15 100+ times with the same Apple ID. I have written support for iPhone 6S and iPhone SE because it should work the same. iPads in theory can work too in a future update, as well as any other A9 device not currently supported. But if your having some issues with a 6S or SE let me know because I don't have those yet.

* A999activator will ALWAY restore iOS 10.2.1 first, even if your already on iOS 9. This is required because on iOS 9.3.x you might get greyed out WiFi even after being on 9.3.x already, and it ensures the final iOS 9 restore works correctly.

## How This Works

Remember, this is all automatic (as possible)!

1) Restores the latest iOS if your iPhone is not on the latest iOS and activation files have not yet been backed up.

2) Prompts user to activate, sign into iCloud, complete Setup.app, and turn off Find My iPhone if activation files have not yet been backed up. Additionally, if you want to use an active SIM card with your carrier it mentions that should be working on the latest iOS before continuing.

3) Boots a custom ramdisk in Recovery mode to create iOS 15 activation tarball files which are transferred to the computer.

4) Downgrades to iOS 10.3.3 to work around 2 issues (random rebooting to Recovery Mode and random disabled Wifi in iOS 9.3.x). This is the first step if activation files have already been backed up.

5) Downgrades to target iOS (9.2-9.3.3).

6) Boots a custom ramdisk in Recovery mode that puts the activation tarball files, an activation script, and a launch daemon all on /. Jailbreaks the iPhone (needs a trigger to enable it but bootstrap is installed), disables Setup.app, and then reboots into Recovery Mode.

7) Boots iOS 9.2-9.3.3.

8) User is prompted to sign in to Wi-Fi and then go to http://jbme.ddw.nu to enable the Jailbreak.

9) Jailbreak triggers the previously in-active launch daemon. Launch daemon extracts all activation tarball files that were put on / into the proper /var places. It then modifies a plist file for activation needed for iOS 9.3.x. After that it deletes itself and all other temp files. Setup.app is then re-enabled, and the iPhone is rebooted into Recovery mode.

10) iPhone is booted into iOS 9.2-9.3.3. Activation status is checked and if successful a special boot script is created dynamically in the same directory as the a999 command which can be used to boot the device from Recovery Mode in the future.

## What about iOS 9.0.x/9.1/9.3.4/9.3.5??

So iOS 9.0.x/iOS 9.1/9.3.4/9.3.5 have jailbreaks. The problem here is that these jailbreaks require an activated iOS 9 iPhone. Chicken and egg problem, we need a jailbreak to activate. This could be developed in the future if it can be done from a ramdisk entrypoint similar to how iOS 9.2-9.3.3 are handled and then triggered with some kind of untether or Safari exploit.

## Credits

* [u/iPh0ne4s](https://www.reddit.com/user/iPh0ne4s/) and [u/_alecbaldwin](https://www.reddit.com/user/_alecbaldwin/) for the activation method posted by [u/roolw](https://www.reddit.com/user/roolw/): [How to fully activate iOS 9.2-9.3.5](https://www.reddit.com/r/setupapp/comments/1jwmv8s/how_to_fully_activate_ios_92_935/).

* [@John011235](https://x.com/John011235) for this [post](https://x.com/John011235/status/1756498551385755682) about plutil.

* [Sep.lol team](https://sep.lol/) for turdus merula.

* [LukeZGD](https://github.com/LukeZGD) for [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit).

## License

A999activator itself is released under the 3-BSD license, see [license.md](license.md). A999Activator uses many other dependency programs which are not under that license, such as:

* Turdus Merula (closed source, open source is planned).

* Legacy-iOS-Kit (GNU GPL v3.0). This uses my [forked version](https://github.com/alex-free/Legacy-iOS-Kit) by the way.