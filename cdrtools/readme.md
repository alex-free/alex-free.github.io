# CDRTools-PLED

_A portable x86_64 Linux release of the latest CDRtools/CDRecord, by Alex Free_

Created using [PLED](https://alex-free.github.io/pled).

| [CDRTools Official WebSite](https://cdrtools.sourceforge.net/private/cdrecord.html) | [CDRTools SourceForge Repository](https://sourceforge.net/projects/cdrtools/) | [CDRTools-PLED Github](https://alex-free.github.io/cdrtools-pled) | [CDRTools-PLED HomePage](https://alex-free.github.io/cdrtools) | [CDRTools Unofficial Github Mirror](https://github.com/alex-free/cdrtools) |

## Downloads

### Version 3.02a09-pled-1.0.1 (4/10/2024)

Changes:

*   Updated [PLED](https://alex-free.github.io/pled) to v1.0.5.
*   Slight tweaks for build script.

--------

[cdrtools-v3.02a09-pled-1.0.1](https://github.com/alex-free/cdrtools-pled/releases/download/v1.0.1/cdrtools-v3.02a09-pled-1.0.1-linux-x86_64.zip)

--------

[Previous Versions](changelog.md)

## Usage

CDRTools/CDRecord **works great for burning Sega Dreamcast games**. I utilize it in [dreamcast cdi burner](https://alex-free.github.io/dcdib) and [video2dreamcastdisc](https://alex-free.github.io/video2dreamcastdisc).

CDRTools/CDRecord is **not recommended for burning standard BIN/CUE images containing CD audio tracks.** I have expierenced the following issues when using cdrtools in specific to PSX games:

| Game | Problem |
|------|---------|
| Quake II | Doesn't boot unless `-raw16` or `-raw96r` writing mode is specified. This is due to some kind of pregap issue? |
| Tomb Raider | Doesn't play some audio tracks of Laura's hints in it's entirerty (cut short by a second or so) in 'Laura's House. This is either the same issue as above, or possibly something related to [subchannel Q seeking](https://www.psx-place.com/threads/ninja-shadow-of-darkness-patch-by-krhacken.30709/). |

It is therefore recommended to instead use [cdrdao-pled](https://alex-free.github.io/cdrdao) instead for PSX games, which has no such issues.
