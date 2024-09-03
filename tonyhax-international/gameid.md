# [Tonyhax International](readme.md) -> GameID

Tonyhax International as of v1.5.3 has support for GameID. GameID is sent by Tonyhax International to tell a MemCard Pro, SD2PSX, or pico memcard to switch to a memory card image specific to the game being started. Currently, **the MemCard Pro, SD2PSX, or pico memcard must be in slot 1 of the console to be detected by Tonyhax International.**

All other projects that have implemented GameID support (ODEs, soft-mods, etc.) have ignored the early Japanese launch games in regards to proper GameID implementation. This is due to said games sharing the same exact same boot file name ('PSX.EXE'). When I implemented GameID support into Tonyhax International, I devised a first of it's kind PSX.EXE identification system which has made it possible to send the serial number listed on the CD case of these games as the GameID. This means **Tonyhax International provides GameID support covering the entire officially licensed catalog of PSX discs.** Each PSX.EXE officially licensed title should be identified by Tonyhax International. If you get `Unknown PSX.EXE ID, unique GameID unavailable.` please open an [issue](https://github.com/alex-free/tonyhax/issues/new) so support may be added.