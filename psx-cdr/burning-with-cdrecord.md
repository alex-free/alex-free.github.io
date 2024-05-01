# [The Ultimate Guide To PSX CD-Rs](readme.md) -> [Burning Software](readme.md#burning-software)

## Burning With [CDRecord](https://cdrtools.sourceforge.net/private/cdrecord.html)

_(Portable [Linux x86_64 build](https://alex-free.github.io/cdrtools).)_

`cdrecord -raw16 --speed=x cuefile=yourgame.cue`

Breakdown of arguments:

`-raw16` specifies using the raw 16 writing mode to burn the cd image, which does not regenerate EDC/ECC data before writing to disc.

Note: You can't use the default dao writing mode mode anyways because there is some bug in regards to handling the pre-gap between the data and audio tracks when burning with the latest cdrecord currently anyways.

`--speed=x` specifies the burn speed. Replace `x` with a number.

`cuefile=yourgame.cue` specifies that your using a cue file named `yourgame.cue`. Replace `yourgame.cue` with the game's cue file your burning.
