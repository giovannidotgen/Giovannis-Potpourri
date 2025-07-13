# Sprite Bank System
The sprite bank system featured in Giovanni's Potpourri enables users to add a theoretically unlimited amount of sprites (well, not really, but good luck finding the storage space for 65,536 sprites per character!)

This document describes the changes made to the player objects. Please read this document carefully, to ensure you understand how it all works.
## Features
 - Enables users to add a theoretical maximum of 65,536 player sprites per player;
 - Seamlessly transitions between banks;
 - Accounted for by alternate game modes and objects such as the after images.
## Base game changes
 - All of Super Sonic's sprite data has been separated from Sonic: this enables hassle-free importing of sprites in Sonic's mappings when using Flex 2;
 - Super Sonic's extra sprites are now loaded through the Sprite Bank system;
 - Tails' extra art data is now loaded through the Sprite Bank system.
## How to use
The sprite bank system depends on two primary changes, one being the animation format, and one being a "Sprite bank list". Bank switches occur on a per-animation basis.
### Animation Format
A new byte has been prepended to each animation's data, which corresponds to which bank the sprite data will be pulled from. Changing the first byte of the animation will change the pointers from which the sprite data will be read from. How the game decides where to read the data from is described in the next section.
### Sprite Bank Lists
Each player has one sprite bank list, which can be found under [PlayerName]_SpriteBankList. One entry is comprised of 12 bytes' worth of pointers, which, in order, are the following:
 - Mappings data;
 - Uncompressed art data;
 - Dynamic Pattern Load Cue data.

To add a new bank, just add a new entry to the list, following the formatting of the rest of the entries.
## How the system works
The animation routines and formats of each character have been changed. As stated earlier, the first byte of each animation corresponds to the bank from which the animation's sprites will be pulled from. Demonstrations of the use can be found by looking at Sonic, Super Sonic, or Tails' animations.

Each player's animation routine sets a variable, `Player_curr_bank` (or `Player_curr_bank_P2` for Tails).

Immediately after the player's animation routine, another routine is called that sets a3 to a list of pointers, the format of which was specified in "Sprite Bank Lists". a3 must point to this list of pointers, as it will be immediately after used by the routine that actually loads character graphics into VRAM via DPLC. These routines have been altered to use pointers from the list of pointers, instead of using strictly defined locations.
## Hardcoded animations
Sonic 3 & Knuckles has a series of hardcoded animations that require special handling. These would be the following:

 - Everything related to Knuckles' glide ability;
 - The animation Player 1 enters when picked up by Tails;
 - Some animations controlled by the continue screen for Sonic and Tails.

By default, these animations have been hardcoded to assume bank 0 is the one you wish to use. You should be able to tell where they are by looking for explicit clears of the `Player_curr_bank` variable. The explicit clears will be commented with references to my frustration in having to deal with them. :P