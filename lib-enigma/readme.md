# Lib Enigma - A PlayStation 1/2 CD Image C Library For Patching And Identification (Spiritual Successor To PPF)

_by Alex Free_

Enigma: a person or thing that is mysterious, puzzling, or difficult to understand.
Paradox: a seemingly absurd or self-contradictory statement or proposition that when investigated or explained may prove to be well founded or true.

This is a C library that can be used in your program to:

* Ensure validity of a PlayStation 1 or 2 CD disc image in MODE2/2352 format.

* Get the boot file name (i.e. SLUS_XXX.XX) of the disc image. PSX.EXE games are supported (some still need to be identified by the library but many already are). When a PSX.EXE game is identified, the serial/product code on the original CD case of the game is returned in the same manner as a proper boot file game. See example 1 and example 2.

* Identify different disc images that share the same boot file name by checking revision differences. See example 2.

* Identify if a bin file will fit on a 71 minute, 74 minute, or 80 minute CD-R.

* Apply PARADOX PPF v1, PPF v2, and PPF v3 patches from unsigned char arrays. You can convert your PPF patch file into an unsigned char array, use the library to apply the patch, and create a standalone single executable patcher for your project/tool that requires no external files (see example 2).

* Find and replace method for byte patterns, with advanced options. Traditional find and replace with i.e. a hex editor DO NOT WORK for BIN/CUE PSX CD images because of how raw sectors are laid out:

Full Sector (0x930/2532 bytes) layout:
Sync header - 0x18 bytes - tells the psx what sector/where in the CD the laser is reading.
User data - 0x800 bytes - actual data for the game or software.
EDC - 0x04 bytes - a checksum used to check if a data read by the CD drive was successful.
ECC - 0x114 bytes - repair data, if the EDC checksum mismatches with what is read, this data can be used to 'fix' what was read, unless it's really off.

So keep in mind sectors are chained together. So you could have a byte pattern that starts at the very end of the user data on say sector 40. The data will be cut off at offset 0x818 in the sector (a total of 0x800 bytes are in the user sector, then the header itself was 0x18 bytes). So then you have your 0x04 bytes of EDC, 0x114 bytes of ECC, ANOTHER header of 0x18 bytes for sector 41, then finally you arrive at the user data of sector 41. This is where the REST of the byte pattern ends in this example. Because half of the byte pattern was cut off 0x136 bytes before the rest of it started, simple hex editor find n replace will FAIL if you encounter something like this.

Another thing about this feature, is you can specify offsets that you want to ignore in your byte pattern. So for example if you are looking for a byte pattern of 08, 0F, 16, 24, and after 24 you know there is going to be 6 bytes you don't care about, but then there is 1C, 37, 4A that is supported! You can tell the library to ignore certain offsets of your pattern, and it will do so! This increases the strength of finding your unique pattern, and enables more advanced find and replace. See example 3.


3 examples are [available](https://github.com/alex-free/lib-enigma/releases), compiled for multiple operating systems w/source code:

Example 1: Prints out boot file of psx game bin file, with support for early PSX.EXE games.
Example 2: Single executable that uses no external files, applies english translation patch w/save fix for the game King's Field (Japan).
Example 3: Patches LibCrypt v1 if it detects the game MediEvil (Europe) using 'lossy' patching without hardcoded offsets. If any other game is given as input it will patch APv2 protection if it is detected. This patch for APv2 protection allows the game to work with a soft-mod correctly, if their is not a non-stealth mod-chip in the console.

| [Homepage](https://alex-free.github.io/lib-enigma) | [GitHub](https://github.com/alex-free/lib-enigma) |


## Table Of Contents

* [Downloads](#downloads)
* [Usage](#usage)
* [History](#history)
* [License](license.md)
* [Building](build.md)

## Downloads

### v1.0 (1/16/2025)

* [v1.0.zip](https://github.com/alex-free/lib-enigma/archive/refs/tags/v1.0.zip)

## Usage

`int is_ps_cd(FILE *bin);` returns 1 if `bin` is a PlayStation 1 or 2 CD image in MODE2/2352 format. Returns 0 if it is not. Should be called before any of the functions below.

`int get_volume_creation_timestamp(FILE *bin, char *volume_creation_timestamp);` Returns 1 if regualar `SYSTEM.CNF` game, or if `PSX.EXE` game was detected successfully and proper boot file return was reconstructed. Returns 2 if PSX.EXE game is not yet in library database, so you need to call get_volume_creation_timestamp manually. Returns 0 on failure.

`int get_boot_file_name(FILE *bin, char *bootfile);` Returns boot file name in `bin` as `char *boot_file`. 

`int id_rev(FILE *bin, const unsigned int difference_offset, const unsigned char old_byte, const unsigned char new_byte);` Returns 0 if `bin` has `old_byte` at `difference_offset`. Returns 1 if `bin` has `new_byte` at `difference_offset`. Returns 2 if neither are found at `different_offset`.

`void get_volume_creation_timestamp(FILE *bin, char *volume_creation_timestamp)` sets volume_creation_timestamp with value from bin file. Useful for identifying PSX.EXE boot file games that are not yet in the library's database and are not automatically identified using get_boot_file_name(). If get_boot_file_name() returns `PSX.EXE`, you can use this to identify it uniquely, as many discs are sharing that boot file name.

`int cdr_minimum_requirement(FILE *bin)` - returns 0 if the bin file will fit on a 71 minute CD-R. Returns 1 if at least a 74 minute CD-R is required. Returns 2 if an 80 minute CD-R is required.

```
void bin_patch(FILE *bin,
               const unsigned char *pattern,
               int pattern_len,

               bool contains_unmatchable_bytes,
               
               const unsigned char *unmatchable_byte_offsets,
               int unmatchable_byte_offsets_len,
               
               const unsigned char *patch,
               int patch_len,

               const unsigned char *unpatchable_byte_offsets,
               int unpatchable_byte_offsets_len);
``` 
- Applies lossy patch (no hardcoded offsets). Unmatchable bytes is optional, please see example 3 for implementation details.

`void apply_ppf(const unsigned char ppf[], unsigned int ppf_len, FILE *bin)` - apply PPF patch from unsigned char array.
`void undo_ppf(const unsigned char ppf[], unsigned int ppf_len, FILE *bin)` - undo PPF patch from unsigned char array.


## History

I have developed quite a few patchers for the PlayStation:

* [Aprip](https://github.com/alex-free/aprip) - generic anti-piracy patcher that doesn't use any hard coded patches. Finds new bypasses automatically as a development aid to myself for [Tonyhax International](https://github.com/alex-free/tonyhax). To my surprise, that never stopped end users from using it.

* [PSX Undither](https://github.com/alex-free/psx-undither) - generic patcher to remove the dithering effect from PSX games, without any hardcoded patches.

* [Libcrypt Patcher](https://github.com/alex-free/libcrypt-patcher) - Identifies disc images with LibCrypt protection and removes it using both existing patches from back in the hey-day of the scene, as well as some new ones. All hardcoded patches for specifific disc images/revisions.

* [PSX80MP](https://github.com/alex-free/psx80mp) - Increases/adds dummy data to PSX/PS2 CD games to improve seeking performance/allow them to boot when they are burned to 80  minute CD-R media.

I grew very, very tired of rewriting the same functions for each of these. And then, when I fixed bugs/made improvements to one, all of the other patchers if using similar functions would need to be rewritten with the same improvements. This kept making less and less sense until I ended up making 2 different libraries (both now obsoleted by Lib-Enigma, PLEASE don't use these):

The first was [lib-ps-cd-id](https://github.com/alex-free/lib-ps-cd-id), which identifies the boot file of a PSX cd image bin file and if it is valid. This had many issues due to being the first library I ever wrote, and lack of understanding of the CD bin MODE2/2352 format. If the boot file of a bin file:

* Wasn't in the root directory (so if it was in a subfolder, i.e. [Tekken 3](http://redump.org/disc/1464/) has it as `\TEKKEN3\SLUS-004.02`).

* Wasn't the standard sony format (SCPS, SLPS, SCUS, SCES, SLES, etc.) or in a variation of the standard sony format, but with strange capitalization (I've seen it somewhere, `Slus_XXX.XX` or even `slus_xxx.xx`.

* Pre-dated `SYSTEM.CNF` conventions, so was just named `PSX.EXE` in the root directory (that's REALLY helpful in identifying what file you have isn't it?).

Then lib-ps-cd-id failed to identify it. There were also problems due to myself being inexpierenced with building libraries on how the syntax/return values should be handled, making it just akward/less flexible to implement (requiring specific names for your variables, etc.). I've fixed EVERYTHING mentioned with lib-enigma.

The second library I wrote was [lib-ppf](https://github.com/alex-free/lib-ppf). YEARS ago, the almighty PARADOX group famous for PSX/Dreamcast during the turn of the century (Sega bribed them with stock in return of leaving the poor Dreamcast alone, totally happened trust me bro) created one of if not THE best patching formats ever. Incredibly, it is still popular with random unrelated things like Super Mario 64 hacking. But it always originally was PlaystationPatchFile (PPF). There were 3 different versions. The last including support to do things like fancy descriptions during the patch, as well as optionally including data to undo the patch and restore your bin file back to how it was originally. It also had 4GB+ file (so DVD-DL is fine) support. 

Anyways, I saw this problem. Patching LibCrypt protection for PSX games sucked in early 2023. You needed to do so much stuff manually. You needed to find the PPF patch for your LibCrypt game, hopefully it was the correct revesion too since this format is very hard-coded. Hopefully the patch didn't have a cracktro (or did if your into that). Sometimes you needed DOSBOX to run some exotic patch tool. And then you needed to specify the bin file your patching. Why?? PARADOX released the source code to the PPF patcher/creator in like 2001. So I thought, why does this have to suck? Can't we just identify what the bin file is, what boot file and revision, and then apply the correct patch? And why do we even need external patch files? Can't all of this be in one single `.exe`?

Well, yes. I took the patcher for linux source code that was released by PARADOX way back when. And I had one goal. I didn't want to modify anything really, except for one single goal. I wanted to turn the patcher into a library. I wanted to be able to call a function, and give it an unsigned char array. Said unsigned char array was just a PPF patch file's bytes. This meant we could just make sense. You give a program a PSX bin file. The program detects what the bin file is (magic) and then figures out exactly what patch will defeat this protection. It loads the patch from the executable data itself and applies it. One single file to modify your game to remove this protection. And it's not just LibCrypt, anything really. English translations are in PPF format too. Super Mario 64 ROM hacks as well. You can use PPF to do anything with a file, if it's a hardcoded patch.

And before you tell me I stole the code, please read what PARADOX put in the source code:

```
 *     ApplyPPF3.c (Linux Version)
 *     written by Icarus/Paradox
 *
 *     Big Endian support by Hu Kares.
 *
 *     Applies PPF1.0, PPF2.0 & PPF3.0 Patches (including PPF3.0 Undo support)
 *     Feel free to use this source in and for your own
 *     programms.
```

This was the early 2000s. If they were OK with it being used in even closed source programs, then I think the 3-BSD license is more then acceptable. Also, at the point that I've modified it, it doesn't even do the same thing nor is it designed too. Using memory/RAM/executable data is very different then reading a patch file and using it as a reference like the original PARADOX patcher. It's actually kinda sad no one else but me saw the potentional in this. And again, much code is rewritten for memory data vs reading a patch file. I'd like to think the original PARADOX team would be proud.

I have much respect for the PPF format, and have so far seen no need to modify it. If I ever did, I would declare it as PPF v4.0, but PPF v3.0 again supports even DVD-DL, fancy descriptions, undoing the patch previously applied, etc. They maxxed out the hard-coded patcher format in the early 2000s and always will be legends. Their 'loosley open source declared format' is still relevent today as discussed due to how well it does what it was designed to do...

Okay enough PARADOX praising... But yes, it makes sense to make this a library. You can still make a very much sub 1MB portable executable self-containing a PPF patch, and have the user just drag the file to be patched into the executable on i.e. Windows and have it 100% automatic. And I just want to make it clear, we all start from somewhere. My first C program was written horribly in 2020, and even in 2023 this was really hard to figure out some random 90s C code and how it worked. But I did thank god, and it has always matched 1 to 1 with using the official patcher vs this library from what I've tested (including advanced things like undo support and fancy descriptions). So surprisingly I've never had to fix any bugs with this lib-ppf technology I've created from thier original work, since I stuck strickly to the philosphy of (if it does this with a file, it would do this with RAM/memory/executable data that is self-contained).

So really, it only makes sense to combine this work with the very much improved boot file detection/bin file validator functions I was already working on in the original lib-ps-cd-id. Hence, lib-enigma was born.

I also saw fit that some other functions be added. I added one to detect if the CD image is too large to fit on certain CD-R capacities (`int cdr_minimum_requirement(FILE *bin)`). The PSX80MP patcher adds enough dummy data to an existing PSX bin file to make it work with 80 minute CD-Rs correctly, so this may be important to know by a patcher so the user doesn't waste a rare 71 minute or 74 minute CD-R.

Another thing is the volume creation timestamp. What this does is figure out WHEN the original file was generated. In 1994 and early 1995, Sony specified all game executables should be named `PSX.EXE` and located in the root directory. The PSX BIOS looks for either a `PSX.EXE` executable file in the root directory, or it looks for a `SYSTEM.CNF` text file to find a custom named file. In early 1995, Sony specified newer games should start using the serial number on the CD case as the executable name, and therefore use a `SYSTEM.CNF` file to specify it. This led to a problem no one really saw a need to solve for a long time. How do you identify WHAT a `PSX.EXE` game is? The first real neccesity was when the MemCardPro/GameID devices became prevalent. While other soft-mods just ignored the uniqueness of the `PSX.EXE` executables and sent that as GameID. I took a further look. The first idea was to do some kind of checksum on the executable. This idea died quite quickly due to a few things. For one, most `PSX.EXE` games are early Japanese, so english translations are pretty common like for King's Feild. Once patched, the checksum doesn't match. Another issue with checksums is hacks, or even just revision differences. While Lib-Enigma can detect what revision a game is with additional checking functions, you shouldn't have to if you don't care what the revision is and just want to figure out if it's the same game in the end.

The last issue was about modifying CD images. There is a volume modification timestamp as well. But that can change if the image is edited. Which is finally why the volume creation timestamp is the only one which makes sense. It always stays the same, it is 16 unique bytes, and so far not a single collision. This was implemented for Tonyhax International, where it allowed a soft-mod for the first time to detect what the PSX.EXE game is.
