# PS5 Drive Pairing

Pairing a PS5 Disc Drive means updating to the latest FW version and connecting to PSN, so it's good to have an understanding of how this system works. This information is my attempt at trying to understand this system from various internet sources.

It is important to note that a simple backup/restore of data will [NOT unpair your disc drive](https://old.reddit.com/r/PS5_Jailbreak/comments/1tsamdp/does_restoring_gezines_y2jb_backup_15_require_you/). There is another citation [here](https://www.reddit.com/r/PS5_Jailbreak/comments/1u0w5w0/got_y2jb_working_without_psn_at_1270/). 

## PS5 Fat Disc Edition

The drive is [internal](https://www.psdevwiki.com/ps5/Serial_Number_guide) and soldered into the console. It is **impossible** for it to require pairing on become unpaired, as it was done so at the factory. This is the only console that you do a full PS5 OS reinstallation/wipe using a `.pup` file from a USB device in safe mode and keep disc drive functionallity.

## PS5 Slim Disc Editon

The PS5 Slim Disc Edition is basically a PS5 Slim Digital Edition with the detachable disc drive attached at the time of manufacture, and sold to you as a complete package.

The earliest PS5 Slim Disc Edition consoles shipped with FW 7.x, and are not be paired with the disc drive out the box. So if your trying to find a sealed slim and happen to be unlucky enough to find one that comes with FW 7.x, your not going to be able to use the disc drive unless you update to the latest FW. 

All PS5 Slim Disc Edition consoles that shipped with FW 8.0 or higher are [paired at the factory](https://www.psdevwiki.com/ps5/Serial_Number_guide). This means if you find a sealed slim and it comes on FW 8.0 or newer, you can use the disc drive out the box without needing to update to the latest FW. If you do not ever update the PS5 Slim Disc Edition from the FW it comes with, you can also use the system reset to factory settings feature and it [keeps the pairing](https://twitterwebviewer.com/?tweet=1996553822567637280). If you ever update past the FW it shipped on, you will loose the ability to keep the pairing after a restore to factory settings.

## PS5 Fat Digital Edition / PS5 Slim Digital Edition / PS5 Pro

These consoles are not shipped with any disc drive, and so they require PSN pairing on the latest FW at the time when you do attach one to them.


| Console                            | OTB | Reset To Factory Settings On OTB FW | Reset to Factory Settings After Updating From OTB FW | Safe Mode Restore | Restoring A Backup |
| -----------------------------------|-----|-------------------------------------|------------------------------------------------------|-------------------|--------------------|
| PS5 Fat Disc Edition               | YES | YES                                 | YES                                                  | YES               | YES                |
| PS5 Fat Digital Edition            | N/A | N/A                                 | NO                                                   | NO                | YES                |
| PS5 Slim Disc Edition OTB FW 7.x   | NO  | NO                                  | NO                                                   | NO                | YES                |
| PS5 Slim Disc Edition OTB FW 8.0+  | YES | YES                                 | NO                                                   | NO                | YES                |
| PS5 Slim Digital Edition           | N/A | N/A                                 | NO                                                   | NO                | YES                |
| PS5 Pro                            | N/A | N/A                                 | NO                                                   | NO                | YES                |
