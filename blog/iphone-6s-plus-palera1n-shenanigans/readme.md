# iPhone 6S Plus Palera1n Shenanigans

_By Alex Free_

1/15/2025

You need to use verbose boot to install a root-full jailbreak. You also need to specify verbose boot. So:

1) Connect iPhone to the computer with a USB-A lightning cable.
2) Execute `./palera1n -c -f -v`.
3) It gets stuck at `Booting PongoOS...` because it's an A9 device. `ctrl+c` out of the program and run `./palera1n -c -f -v` once more to finish the job.
4) Execute `./palera1n -f` or `./palera1n -f -v`. It gets stuck again at `Booting PongoOS...` because it's an A9 device. `ctrl+c` out of the program and run `./palera1n -f` or `./palera1n -f -v` once more to finish the job.

Repeat step 4 to jailbreak it again in the future.
