# Convert from Allegro to Altium

Big thanks to edgeforce for the bat file that makes the last step work:
https://github.com/edgeforce/cds2f/tree/main

Place Cadence Allegro `.brd` files in the boards directory, then run `migrate.sh` from a bash shell on windows

Tested with Cadence OrCad X Professional Trial and Altium Develop Trial October of 2025

Please feel free to make contributions if this is helpful to you, I just ask that you create a pull request in the event
this is a helpful tool for you. This took me a minute to piece together and I wish it was available.

## Missing Features and issues
I am horrible with bash, so if you can clean it up, go for it :)

This only imports PCBs, The AD Import Wizard works fine with OrCad Capture Schematics, unfortunately connectivity across
the PCB, Schematics, and libraries has to be manually resolved after importing to Altium. This would be a nice to have.

Board outline importing fails about 5% of the time so far as I have tested but is easilly cleaned up in Altium.