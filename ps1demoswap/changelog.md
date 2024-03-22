# Changelog

## Version 1.0.8 (7/5/2023)

*   [Windows x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.8_win_x86.zip)
*   [Linux x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.8_linux_x86_static.zip) _For modern 32-bit Linux distros (static build)._
*   [Linux x86\_64](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.8_linux_x86_64_static.zip) _For modern 64-bit Linux distros (static build)._

Changes:

*   Fixed sector exe insertion.

## Version 1.0.6 (7/2/2023)

*   [Windows x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.6_win_x86.zip)
*   [Linux x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.6_linux_x86_static.zip) _For modern 32-bit Linux distros (static build)._
*   [Linux x86\_64](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.6_linux_x86_64_static.zip) _For modern 64-bit Linux distros (static build)._

Changes:

*   Fixed CLI argument bug.

*   Fixed 'Writing Japanese license' text being printed twice for TOCPerfect patch mode.

*   Significantly improved documentation.

## Version 1.0.5 (6/29/2023)

*   [Windows x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.5_win_x86.zip)
*   [Linux x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.5_linux_x86_static.zip) _For modern 32-bit Linux distros (static build)._
*   [Linux x86\_64](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.5_linux_x86_64_static.zip) _For modern 64-bit Linux distros (static build)._

Changes:

*   Updated Tonyhax International from v1.0.9 to v1.3.6!

*   Reverted patching method to `SYSTEM.CNF` editing like in the original DemoSwap Patcher (for TOCPerfect).

## Version 1.0.4 (9/15/2022)

*   [Windows x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.4_win_x86.zip)
*   [Linux x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.4_linux_x86_static.zip) _For modern 32-bit Linux distros (static build)._
*   [Linux x86\_64](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.4_linux_x86_64_static.zip) _For modern 64-bit Linux distros (static build)._

New in version 1.0.4:

*   Switched officially to the [Tonyhax International](https://alex-free.github.io/tonyhax-international) loader program.
*   Added support for DemoDemo PlayStation Vol. 22 (NTSC-J PS1 Demos Disc) in DiscLib.txt and updated internal database.
*   Mac OS X/Mac OS support has been dropped.
*   TOCPerfect patching now supports games which reference files outside of the first data track as if they were apart of the first data track. This new support now means certain games that didn't work in previous versions of PS1 DemoSwap Patcher (like Tekken 3) work on real hardware finally (and not just in emulation as they did before).
*   The TOCPerfect Patching mode now renames `SYSTEM.CNF` (to `SYSTEM.CN2`) and inserts `tonyhax.exe` (which is named `PSX.EXE` in the disc image after patching) instead of editing the contents of the file `SYSTEM.CNF` and inserting `tonyhax.exe`.
*   FreePSXBoot memory card images have been removed from PS1 DemoSwap Patcher releases, they are now part of [Tonyhax International](https://alex-free.github.io/tonyhax-international).
*   Rewritten documentation.
*   Early SCPH-3000 consoles (with VC0B CDROM Controller BIOS firmware) are now officially supported by TOCPerfect patching. TOCPerfect Patching now also changes the license data in any game it patches to the Japanese license/boot logo data. This ensures one TOCPerfect patched burned CD-R game can be booted on any console with the [CD Player Swap Trick](#cdplayerswaptrick).

## Version 1.0.3 (6/1/2022)

*   [Windows x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.3_win_x86.zip)
*   [Mac OS X](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.3_mac_os_x.zip) _For PowerPC, 32-bit Intel, and 64-bit Intel Macs running Mac OS X 10.3.9 and up._
*   [Linux x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.3_linux_x86_static.zip) _For modern 32-bit Linux distros (static build)._
*   [Linux x86\_64](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.3_linux_x86_64_static.zip) _For modern 64-bit Linux distros (static build)._

New in version 1.0.3:

*   Fixed Japanese VC3 console laser calibration, now works correctly on consoles such as SCPH-7500.
*   When using the DemoSwap Patch or a FreePSXBoot memory card, blocking the lid sensor is automatically detected with no user input required.
*   All japanese consoles now work the same way in the Tonyhax loader. CDDA audio/multi track games are automatically detected on SCPH-1000/SCPH-3000 in the new SetSession fix.

## Version 1.0.2 (5/26/2022)

*   [Windows x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.2_win_x86.zip)
*   [Mac OS X](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.2_mac_os_x.zip) _For PowerPC, 32-bit Intel, and 64-bit Intel Macs running Mac OS X 10.3.9 and up._
*   [Linux x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.2_linux_x86_static.zip) _For modern 32-bit Linux distros (static build)._
*   [Linux x86\_64](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.2_linux_x86_64_static.zip) _For modern 64-bit Linux distros (static build)._

## Version 1.0.1 (3/14/2022)

*   [Windows x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.1_win_x86.zip)
*   [Mac OS X](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.1_mac_os_x.zip) _For PowerPC, 32-bit Intel, and 64-bit Intel Macs running Mac OS X 10.3.9 and up._
*   [Linux x86](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.1_linux_x86_static.zip) _For modern 32-bit Linux distros (static build)._
*   [Linux x86\_64](https://alex-free.github.io/ps1demoswap/ps1_demoswap_patcher_1.0.1_linux_x86_64_static.zip) _For modern 64-bit Linux distros (static build)._

## Version 1.0 (2/28/2022)

The first release of PS1 DemoSwap Patcher by MottZilla.

*   [Windows x86](https://alex-free.github.io/ps1demoswap/PS1_DemoSwap_v1.0.zip)

## TOCPerfect v1.0 (11/3/2021)

The first and only release of the original, [TOCPerfect standalone Patcher](https://alex-free.github.io/tocperfect). This program is what originally gave MottZilla the idea to create PS1 DemoSwap Patcher using a new method of accomplishing the goals of the original TOCPerfect v1.0.

*   [Windows x86\_64](https://github.com/alex-free/tonyhax/releases/download/v1.0tp/tocperfect-1.0-windows.zip) _For Windows 7 64-bit and above._