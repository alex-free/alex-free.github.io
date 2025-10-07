# [A999 Activator: A9, iOS 9, 9 Years Later](readme.md) -> Changelog

## Version 1.0.4 (10/3/2025)

* [a999activator-v1.0.4-mac-os-universal.zip](https://github.com/alex-free/a999activator/releases/download/v1.0.4/a999-activator-v1.0.4-mac-os-universal.zip) _For Mac OS 10.12 and newer_

Changes:

* Improved UX prompts and messags.

* Preperations for Linux release.

* Improved documentation.

## Version 1.0.3 (10/3/2025)

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

## Version 1.0.2 (6/7/2025)

* [a999activator-v1.0.2-mac-os-universal.zip](https://github.com/alex-free/a999activator/releases/download/v1.0.2/a999-activator-v1.0.2-mac-os-universal.zip) _For Mac OS 10.12 and newer_

Changes:

* Improved activate launch daemon. Activation files are now set to super user immutable to prevent overwrite/deletion/deactivation by iOS.

* Changed activation data cache format. Do not use an existing `data` folder generated with either v1.0.1 or v1.0 with v1.0.2.

* Added support for untethered restores. Give blobs like `./a999 -b myblob.shsh`. NOTE: I do not have blobs so this is untested, please open an issue if you expierence any problems using blobs.

## Version 1.0.1 (5/29/2025)

* [a999activator-v1.0.1-mac-os-universal.zip](https://github.com/alex-free/a999activator/releases/download/v1.0.1/a999-activator-v1.0.1-mac-os-universal.zip) _For Mac OS 10.12 and newer_

Changes:

* Added an important information table explaining the functionallity offered.

* Removed option to downgrade to the newer revised build of iOS 9.2.1 (13D20). Apple released 2 versions of iOS 9.2.1 for Touch-ID capable iPhones to fix a "[bug](https://www.idownloadblog.com/2016/02/18/ios-9-2-1-build-13d20-ipad/)" related to non-apple Touch-ID replacement home buttons causing a fail to activate, connect to iTunes and "error 53" after the update to the intial release of iOS 9.2.1 (13D15). The newer revised version of iOS 9.2.1 (13D20) does not work with http://jbme.ddw.nu, but the original iOS 9.2.1 (13D15) does. The newer revision was never pushed OTA and only as an IPSW file available for iTunes meant for affected users to manually use, so it probably was just never tested when http://jbme.ddw.nu came out. Anyways as of right now the newer revision of iOS 9.2.1 (13D20) can not be used since the jailbreak is required to update.

* Lets user know when Recovery Mode is being entered from normal mode.

* Lets user know what IPSW file is being downloaded.

* Tweak to cached data format. Versions are now described with version number AND build number. If your using a `data` folder from v1.0, some data may need to be cached again (SEP PTE/SHCBlocks) leading to some additional DFU related steps re-triggering. However your activation data will be properly found and used so you don't need to do that again.

* Informs user to turn off Find My iPhone before the downgrade. This fixes an issue with iMessage notifications if your downgraded iPhone didn't have a SIM card in it, where you wouldn't get notifications sent to a Phone number but would if it was sent to an email.

* General cleanup/improved functions. Many more comments for those interested in how this works as well.

* Added update functionallity. Do i.e. `a999 -u /path/to/old/a999activator-v1.0-mac-os-universal` and it will automatically copy over the data folder and any boot scripts into the newer release of a999activator.

* Fixed an issue where activation data cache folder was sometimes not created and detected properly.

## Version 1.0 (5/25/2025)

* [a999activator-v1.0-mac-os-universal.zip](https://github.com/alex-free/a999activator/releases/download/v1.0/a999-activator-v1.0-mac-os-universal.zip) _For Mac OS 10.12 and newer_