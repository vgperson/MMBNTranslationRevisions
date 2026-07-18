# Documentation of Base Patch Changes

This goes into technical detail about the exact changes made by each base patch. These base patches are applied to the original English game before inserting the updated script files, and handle changes that can't be accomplished by scripts. All references to addresses are based on the English versions they're meant to be applied to.

## General Notes

The explanations here assume some basic knowledge of hexadecimal values and hex editing. Assembly code explanations (outside of just the final list of byte changes) also assume some knowledge of assembly basics like instructions and registers.

GBA games use little-endian numbers, meaning the bytes that make up values go from least to most significant. For example, the bytes for 0x0fba (4026 decimal) are written as "ba 0f," and 0x01d2c3d4 is written as "d4 c3 d2 01."

Edits to uncompressed graphics were done using YY-CHR. Assembly edits were figured out via a combination of mGBA's debugger console and other functions (looking for values in memory, adding watchpoints for memory addresses and breakpoints for assembly code addresses), and using Ghidra to partially decompile and keep track of functions and data.

---

## Mega Man Battle Network 2

### New Ellipsis Character

- 0x698060 - 0x698067
  - 11 11 11 11 11 11 11 11 -> 13 31 11 13 23 31 12 23

Adds tile graphics for an ellipsis character in the empty space after the other characters in the font. (Take note of the TextPet plugin changes that have to be made as well to actually use it; see the "plugins" folder.)

---

## Mega Man Battle Network 3

### Alphabetical Sort Order Changes

- 0x11580 - 0x13be0 (both versions)
  - Numerous one-or-two-byte changes

Revisions to alphabetical order of chips in the chip data list. (I did this by loading the chip data into a custom program that determined new ordering values based on their names, with some adjustments to ensure the Recov chips went in numerical order and Navi chips went in the right order regardless of differing name abbreviations.)

Each chip data entry is 0x20 (32) bytes long, and the alphabetical ordering number is a two-byte value at 0x10-11 in each entry.

### Higsby's Order Chip Code Fixes

- 0x456c4 (Blue), 0x456dac (White)
  - 09 (J code) -> 00 (A code) (for LavaStge)
- 0x4570c (Blue), 0x4572a (White)
  - 08 (I code) -> 04 (E code) (for Jelly)

Fixes incorrect codes in Higsby's Chip Order shop inventory. (Purely a visual issue, as the actual chip you get does come in the correct valid code.) This initial inventory data is copied to your save data upon starting a new game, so this won't fix it in existing saves; for that, you'd need to make a similar edit to the "active" shop inventory data in the save file.

The Higsby's Chip Order initial inventory data starts at 0x45130 in Blue and 0x45148 in White. Each entry is 8 bytes long, and the first byte specifies item type, with chips being 02. For chips, 0x02-03 specifies the chip ID and 0x04 specifies the code, which goes from 00 (A) to 19 (Z) to 1A (*).

### Beach Street Poster Graphics (Blue only)

- Large replacement from around 0x4b92bc to 0x4bba38

The compressed tile graphics for Beach Street were edited to localize the poster that said "PLUG IN" to say "JACK IN" (only in Blue, as it's a different poster entirely in White). A small change, but it resulted in a lot of changed bytes on account of the entire tile sheet being one compressed image. (This was done by using GBA Graphics Editor to replace the compressed Beach Street graphics at offset 4b9200, or "image 105.")

### Font Changes

- 0x67ae7C - 0x67ae97 (Blue), 0x67ad70 - 0x67ad97 (White)
  - 10 10 10 00 00 02 02 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 -> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 10 00 01 21 10 02 21 20 00 02 20

Moves the first (originally vertically aligned in the middle) ellipsis character down and adds a pixel of height.

- 0x67aecc - 0x67aed5 (Blue), 0x67adcc - 0x67add5 (White)
  - 00 00 00 00 10 00 00 00 00 02 -> 10 01 00 00 10 21 00 00 00 22

Makes the period larger (2x2).

- 0x67b78c - 0x67b797 (Blue), 0x67b68c - 0x67b697 (White)
  - 00 00 00 00 10 10 10 00 00 02 02 02 -> 01 10 00 01 21 10 02 21 20 00 02 20

Adds a pixel of height to the second (baseline) ellipsis character.

---

## Mega Man Battle Network 4

### Alphabetical Sort Order Changes

- 0x1985c - 0x1cda4 (both versions)
  - Numerous one-or-two-byte changes

Revisions to alphabetical order of chips in the chip data list. (I did this by loading the chip data into a custom program that determined new ordering values based on their names, with some adjustments to ensure the Recov chips went in numerical order and Navi chips went in the right order regardless of differing name abbreviations.)

Each chip data entry is 0x2C (44) bytes long, and the alphabetical ordering number is a two-byte value at 0x18-19 in each entry.

### Altering Chip IDs (For Folder Edit Only) to Change PrixPowr's Sort Behavior

While it is possible to edit chip IDs in the data directly, similar to how the alphabetical sort was changed, this causes issues with the Library (and maybe other things too) in existing saves, so this effect was instead achieved via assembly edits.

Here's a breakdown of the relevant original assembly code. (This is all using Red Sun addresses; the Blue Moon addresses are offset by +4.)

    PACK_WORKSPACE_SET_ID:
    (This is part of a function that sets up a temporary "workspace" for the Pack list.
    Changing IDs in the workspace affects how they sort, but does not affect anything else, which is perfect!
    This part specifically is what defines the chip IDs for entries in that workspace.
    Note that each sortable aspect is combined with a secondary "sort value" derived from the ID and letter code.
    For instance, if you sort by Element, this ensures chips of the same element go in ID and letter code order.)
    08030248 a8 8b   ldrh   r0,[r5,#0x1c]   Load chip ID from chip data (*r5 (data start) + 1C) into r0
    0803024a 00 04   lsl    r0,r0,#0x10     Shift ID value (r0) left 16 bits
    0803024c 10 43   orr    r0,r2           Bitwise-or ID value (r0) with sort value (r2)
    0803024e 20 60   str    r0,[r4,#0x0]    Store final value (r0) at start of pack workspace entry (*r4)
    
    FOLDER_WORKSPACE_SET_ID:
    (This is exactly the same as the above, but for setting up the Folder workspace.)
    08030540 a8 8b   ldrh   r0,[r5,#0x1c]   Load chip ID from chip data (*r5 (data start) + 1C) into r0
    08030542 00 04   lsl    r0,r0,#0x10     Shift ID value (r0) left 16 bits
    08030544 10 43   orr    r0,r2           Bitwise-or ID value (r0) with sort value (r2)
    08030546 20 60   str    r0,[r4,#0x0]    Store final value (r0) at start of folder workspace entry (*r4)
    
    SWAP_SET_ID:
    (This is also pretty much the same, but runs when swapping between the Folder and Pack.
    However, note that the roles of r0 and r2 are reversed.)
    08030ef4 aa 8b   ldrh   r2,[r5,#0x1c]   Load chip ID from chip data (*r5 (data start) + 1C) into r2
    08030ef6 12 04   lsl    r2,r2,#0x10     Shift ID value (r2) left 16 bits
    08030ef8 02 43   orr    r2,r0           Bitwise-or ID value (r2) with sort value (r0)
    08030efa 32 60   str    r2,[r6,#0x0]    Store final value (r2) at start of target workspace entry (*r6)

We want to change the chip ID part of this according to our needs. Basically, PrixPowr should have its ID changed from 291 (after the last GigaChip) to 281 (before the first GigaChip), while IDs 281 or higher should be moved up to avoid overlapping with it (which results in inconsistent behavior between sorting forward and backward).

Below are versions of that code modified to jump out to new functions which will handle the desired ID changes.

    PACK_WORKSPACE_SET_ID:
    (Two 2-byte instructions were replaced with a 4-byte instruction that jumps out to a new function.
    That function includes those replaced instructions at the end, so nothing is actually lost.)
    08030248 a8 8b        ldrh   r0,[r5,#0x1c]   Load chip ID from chip data (*r5 (data start) + 1C) into r0
    0803024a 03 f1 d1 fa  bl     0x081337f0      Jump out to new function (r0 version)
    0803024e 20 60        str    r0,[r4,#0x0]    Store final value (r0) at start of pack workspace entry (*r4)
    
    FOLDER_WORKSPACE_SET_ID:
    (The same thing. However, note that the bytecode for the jump instruction actually differs.
    While it goes to the same address, the bytecode is based on the offset from the current address.)
    08030540 a8 8b        ldrh   r0,[r5,#0x1c]   Load chip ID from chip data (*r5 (data start) + 1C) into r0
    08030542 03 f1 55 f9  bl     0x081337f0      Jump out to new function (r0 version)
    08030546 20 60        str    r0,[r4,#0x0]    Store final value (r0) at start of folder workspace entry (*r4)
    
    SWAP_SET_ID:
    (Pretty much the same, but calls a similar but different function to account for r2 and r0 being reversed.)
    08030ef4 aa 8b        ldrh   r2,[r5,#0x1c]   Load chip ID from chip data (*r5 (data start) + 1C) into r0
    08030ef6 02 f1 8b fc  bl     0x08133810      Jump out to new function (r2 version) <new>
    08030efa 32 60        str    r2,[r6,#0x0]    Store final value (r2) at start of target workspace entry (*r6)

And these are the brand new functions being called, inserted in an unused (as far as I can tell) region:

    SHIFT_IDS_R0:
    081337f0 02 b5   push   {r1,lr}       Back up r1 and return address on stack
    081337f2 ff 21   mov    r1,#0xff      Set r1 to 0xFF
    081337f4 19 31   add    r1,#0x19      Add 0x19 to get 0x118 (280)
    081337f6 08 45   cmp    r0,r1         Compare chip ID in r0 to 280
    081337f8 04 dd   ble    0x08133804    If ID is less than or equal to 280, skip to last step
    081337fa 0b 31   add    r1,#0xb       Add 11 to get 0x123 (291)
    081337fc 08 45   cmp    r0,r1         Compare chip ID in r0 to 291
    081337fe 00 d1   bne    0x08133782    If ID is not equal to 291, skip next instruction but still add 1
    08133780 0b 38   sub    r0,#0xb       Subtract 11 to make 280, which will be incremented to 281
    08133782 01 30   add    r0,#0x1       Add 1 to chip ID
    
    LAST_STEP_R0:
    08133804 00 04   lsl    r0,r0,#0x10   Shift value (r0) left 16 bits
    08133806 10 43   orr    r0,r2         Bitwise-or value (r0) with sort value (r2)
    08133808 02 bd   pop    {r1,pc}       Restore original value of r1 and go back to return address
    
    SHIFT_IDS_R2:
    (This is exactly the same as the above function, but with r0 and r2 swapped.)
    08133810 02 b5   push   {r1,lr}       Back up r1 and return address on stack
    08133812 ff 21   mov    r1,#0xff      Set r1 to 0xFF
    08133814 19 31   add    r1,#0x19      Add 0x19 to get 0x118 (280)
    08133816 0a 45   cmp    r2,r1         Compare chip ID in r2 to 280
    08133818 04 dd   ble    0x08133824    If ID is less than or equal to 280, skip to last step
    0813381a 0b 31   add    r1,#0xb       Add 11 to get 0x123 (291)
    0813381c 0a 45   cmp    r2,r1         Compare chip ID in r2 to 291
    0813381e 00 d1   bne    0x08133822    If ID is not equal to 291, skip next instruction but still add 1
    08133820 0b 3a   sub    r2,#0xb       Subtract 11 to make 280, which will be incremented to 281
    08133822 01 32   add    r2,#0x1       Add 1 to chip ID
    
    LAST_STEP_R2:
    08133824 12 04   lsl    r2,r2,#0x10   Shift value (r2) left 16 bits
    08133826 02 43   orr    r2,r0         Bitwise-or value (r2) with sort value (r0)
    08133828 02 bd   pop    {r1,pc}       Restore original value of r1 and go back to return address

These functions ultimately affect the chip IDs as follows:
- Special MegaChip: Relocated to be at end of MegaChips/before GigaChips
  - PrixPowr: ID 291 (23 01) -> 281 (19 01)
- GigaChips: Shifted up to make room for PrixPowr
  - RedSun: ID 281 (19 01) -> 282 (1A 01)
  - HolyDrem: ID 282 (1A 01) -> 283 (1B 01)
  - Bass: ID 283 (1B 01) -> 284 (1C 01)
  - BugCharg: ID 284 (1C 01) -> 285 (1D 01)
  - BlakBarr: ID 285 (1D 01) -> 286 (1E 01)
  - BlueMoon: ID 286 (1E 01) -> 287 (1F 01)
  - SignlRed: ID 287 (1F 01) -> 288 (20 01)
  - BassAnly: ID 288 (20 01) -> 289 (21 01)
  - BugCurse: ID 289 (21 01) -> 290 (22 01)
  - DeltaRay: ID 290 (22 01) -> 291 (23 01)
- Special GigaChip: Also shifted up, an unnecessary but harmless effect of the simple ">= 281" check
  - Duo: ID 292 (24 01) -> 293 (25 01)

**Ultimately, all these code changes translate to the following byte changes:**

- RS 0x30248, BM 0x3024c: a8 8b 03 f1 d1 fa 20 60
  - Inserts function call into PACK_WORKSPACE_SET_ID
- RS 0x30540, BM 0x30544: a8 8b 03 f1 55 f9 20 60
  - Inserts function call into FOLDER_WORKSPACE_SET_ID
- RS 0x30ef4, BM 0x30ef8: aa 8b 02 f1 8b fc 32 60
  - Inserts function call into SWAP_SET_ID
- RS 0x1337f0, BM 0x1337f4: 02 b5 ff 21 19 31 08 45 04 dd 0b 31 08 45 00 d1 0b 38 01 30 00 04 10 43 02 bd
  - New SHIFT_IDS_R0 function
- RS 0x133810, BM 0x133814: 02 b5 ff 21 19 31 0a 45 04 dd 0b 31 0a 45 00 d1 0b 3a 01 32 12 04 02 43 02 bd
  - New SHIFT_IDS_R2 function

### Restoring Records Screen Full Time Display and Shifting Layout

(Everything here is using Red Sun addresses unless otherwise specified.)

Here's a breakdown of the original version of the most relevant function. Based on the numbers calculated for each record time, this sets up the tile data that will be drawn. (A different function reads that data from memory and uses it to actually draw the tiles onto the background.)

    SET_TILES_FOR_RECORD_TIME:
    (This function starts with the following arguments stored in registers:
    r2: Starting write address for upper tiles.
    Letters/numbers are 8x16 pixels, and tiles are 8x8, so each one is made up of an upper and lower tile.
    r3: Starting write address for lower tiles.
    r6: Starting tile value for "number"-type tiles.
    This is added to in order to get the tile values for 0 through 9, :, and -.
    r8: The calculated numbers in the time.
    When written as hex, they look exactly as printed: 2:34:56 is 0x23456.)
    
    (The following registers also act as local variables:
    r0: Tracks current shift amount (digit) for time numbers.
    r1: Holds value of character to write and some other temporary values.)
    
    0803c278 f1 b5   push   {r0,r4,r5,r6,r7,lr}   Back up registers and return address on stack
    0803c27a 0c 20   mov    r0,#0xc               Initialize shift value (at tens digit of seconds)
    0803c27c 00 27   mov    r7,#0x0               Initialize loop index
    0803c27e 00 21   mov    r1,#0x0               Initialize current character as blank
    0803c280 0e e0   b      0x0803c2a0            Jump to SET_TILES_FOR_CHAR
    
    CHECK_FOR_COLON:
    0803c282 03 2f   cmp    r7,#0x3               Compare loop index to 3
    0803c284 01 d1   bne    0x0803c28a            If it's not 3, go to next check, CHECK_IF_OVER_MAX
    0803c286 0b 21   mov    r1,#0xb               Otherwise, set next character to 0xB (colon)
    0803c288 0a e0   b      0x0803c2a0            Jump to SET_TILES_FOR_CHAR
    
    CHECK_IF_OVER_MAX:
    0803c28a 41 46   mov    r1,r8                 Put time numbers into r1
    0803c28c 0a 4d   ldr    r5,[0x0803c2b8]       Load MAX_TIME_NUMBERS (0x095999, data past end of function) into r5
    0803c28e a9 42   cmp    r1,r5                 Compare time numbers with MAX_TIME_NUMBERS
    0803c290 01 dd   ble    0x0803c296            If it's less than or equal to max, go to SET_NEXT_CHARACTER_DEFAULT
    0803c292 0c 21   mov    r1,#0xc               Otherwise, all non-colon characters will be set to 0xC (dash)
    0803c294 04 e0   b      0x0803c2a0            Jump to SET_TILES_FOR_CHAR
    
    SET_NEXT_CHARACTER_DEFAULT:
    0803c296 c1 40   lsr    r1,r0                 Shift time numbers in r1 right by shift amount in r0
    0803c298 0f 25   mov    r5,#0xf               Store 0xF in r5
    0803c29a 29 40   and    r1,r5                 Logical-and r1 with 0xF to leave only the desired single digit
    0803c29c 01 31   add    r1,#0x1               Add 1 to get relative tile number (tile #1 is "0", tile #2 is "1")
    0803c29e 04 38   sub    r0,#0x4               Subtract 4 from the shift value to get next digit next time
    
    SET_TILES_FOR_CHAR:
    0803c2a0 49 00   lsl    r1,r1,#0x1            Shift character value left 1 (AKA multiply by 2)
    0803c2a2 34 1c   add    r4,r6,#0x0            Set r4 to starting tile index
    0803c2a4 64 18   add    r4,r4,r1              Add doubled value to r4 to get (upper) tile for character
    0803c2a6 14 80   strh   r4,[r2,#0x0]          Store upper tile value at upper tile address
    0803c2a8 01 34   add    r4,#0x1               Add 1 to r4 to get corresponding lower tile value
    0803c2aa 1c 80   strh   r4,[r3,#0x0]          Store lower tile value at lower tile address
    0803c2ac 02 32   add    r2,#0x2               Increment upper tile address by 2
    0803c2ae 02 33   add    r3,#0x2               Increment lower tile address by 2
    0803c2b0 01 37   add    r7,#0x1               Increment loop index
    0803c2b2 06 2f   cmp    r7,#0x6               Compare loop count to 6
    0803c2b4 e5 db   blt    0x0803c282            If loop count is less than 6, return to CHECK_FOR_COLON
    0803c2b6 f1 bd   pop    {r0,r4,r5,r6,r7,pc}   Restore register values and go back to return address

To sum up what needs to be changed here: this function always places tiles for a blank character, 2 numbers (the seconds), a colon, and 2 more numbers (the milliseconds). We want it to not include that blank character (to leave as much room as possible for the Navi names), start from the minutes digit, draw an extra number, and draw an extra colon.

Here's the rewritten version of the function that makes those changes:

    SET_TILES_FOR_RECORD_TIME:
    0803c278 f1 b5   push   {r0,r4,r5,r6,r7,lr}   Back up registers and return address on stack
    0803c27a 10 20   mov    r0,#0x10              Initialize shift value (at ones digit of minutes) <increased>
    0803c27c 00 27   mov    r7,#0x0               Initialize loop index
    (Since we're no longer writing a blank first, the two instructions that were here are unnecessary.
    This leaves room to add two new instructions in CHECK_FOR_COLON.)
    
    CHECK_FOR_COLON:
    0803c27e 01 2f   cmp    r7,#0x1               Compare loop index to 1 (position of minutes-seconds colon)
    0803c280 01 d0   beq    0x0803c286            If it's 1, jump to colon setting
    0803c282 04 2f   cmp    r7,#0x4               Compare loop index to 4 (position of seconds-milliseconds colon)
    0803c284 01 d1   bne    0x0803c28a            If it's not 4, go to next check, CHECK_IF_OVER_MAX
    0803c286 0b 21   mov    r1,#0xb               Set next character to 0xB (colon)
    0803c288 0a e0   b      0x0803c2a0            Jump to SET_TILES_FOR_CHAR
    
    CHECK_IF_OVER_MAX:
    (no changes)
    
    SET_NEXT_CHARACTER_DEFAULT:
    (no changes)
    
    SET_TILES_FOR_CHAR:
    (no changes, until...)
    0803c2b2 07 2f   cmp    r7,#0x7               Compare loop count to 7 <increased loop count>
    0803c2b4 e3 db   blt    0x0803c27e            If loop count is less than 7, return to CHECK_FOR_COLON <earlier position>
    0803c2b6 f1 bd   pop    {r0,r4,r5,r6,r7,pc}   Restore register values and go back to return address

To accommodate the increased size of the tile data, and to shift some positions, some other miscellaneous code changes need to be made in various functions involved in setting up the Records screen. I'm not going to go into the full context for these, just the gist and effect of the particular necessary changes.

Before SET_TILES_FOR_RECORD_TIME is called, the area of memory it writes to is first initialized with blank tile values. This doesn't particularly matter if the menu has a full 7 rows and thus all the tiles get filled with something, but if you enter it *before* registering that many entries, it results in garbled tiles appearing in the blank rows. And since we're using more tiles, the size of the area being blanked needs to be increased as well: 2 bytes per tile index * 2 tiles per symbol graphic * 7 symbols per row * 7 rows = 196 (0xc4), 28 more than before.

    0803c08e a8 21   mov   r1,#0xa8
    ->
    0803c08e c4 21   mov   r1,#0xc4

Do the same thing in the equivalent function for the RS/BM Record times:

    0803c0be a8 21   mov   r1,#0xa8
    ->
    0803c0be c4 21   mov   r1,#0xc4

In the function that "sets up" the My Record times (a parent function which calls the time-calculation function followed by SET_TILES_FOR_RECORD_TIME), increase the size of each entry from 12 (6 characters * 2 tiles) to 14 (7 characters * 2 tiles):

    0803c12e 0c 23   mov   r3,#0xc
    ->
    0803c12e 0e 23   mov   r3,#0xe
    
    0803c14a 0c 32   add   r2,#0xc
    0803c14c 0c 33   add   r3,#0xc
    ->
    0803c14a 0e 32   add   r2,#0xe
    0803c14c 0e 33   add   r3,#0xe

Do the same thing in the equivalent function for the RS/BM Record times:

    0803c192 0c 23   mov   r3,#0xc
    ->
    0803c192 0e 23   mov   r3,#0xe
    
    0803c1be 0c 32   add   r2,#0xc
    0803c1c0 0c 33   add   r3,#0xc
    ->
    0803c1be 0e 32   add   r2,#0xe
    0803c1c0 0e 33   add   r3,#0xe

In the function that draws the My Record tile data onto the background, increase the length of each row from 6 to 7:

    0803c16e 06 24   mov   r4,#0x6
    ->
    0803c16e 07 24   mov   r4,#0x7

Do the same thing in the equivalent function for the RS/BM Record times:

    0803c1e6 06 24   mov   r4,#0x6
    ->
    0803c1e6 07 24   mov   r4,#0x7

Shift the initial X coordinate for drawing the RS/BM Record column 1 tile to the right:

    0803c0d2 11 20   mov   r0,#0x11
    ->
    0803c0d2 12 20   mov   r0,#0x12

Shift the initial X coordinate for drawing the ATK column 1 tile to the right:

    0803c102 18 20   mov   r0,#0x18
    ->
    0803c102 19 20   mov   r0,#0x19

Shift the X coordinates for the header sprites ("MY," "RECORD," "RS," "RECORD," "ATK") 8 pixels to the right. (These are defined not by instructions, but in a block of data.)

- 0x10b400: 50 -> 58
  - "MY" X position
- 0x10b404: 6c -> 74
  - First "RECORD" X position
- 0x10b408: 90 -> 98
  - "RS" X position
- 0x10b40c: ac -> b4
  - Second "RECORD" X position
- 0x10b410: d4 -> dc
  - "ATK" X position

**Ultimately, all of this translates to the following byte changes:**

- RS 0x3c08e, BM 0x3C096: a8 -> c4
  - My Record tile data size for initialization
- RS 0x3c0be, BM 0x3C0C6: a8 -> c4
  - Best Record tile data size for initialization
- RS 0x3c0d2, BM 0x3c0da: 11 -> 12
  - Best Record column starting X position
- RS 0x3c102, BM 0x3c10a: 18 -> 19
  - ATK column starting X position
- RS 0x3c12e, BM 0x3c136: 0c -> 0e
  - My Record entry length
- RS 0x3c14a, BM 0x3c152: 0c -> 0e
  - My Record entry length
- RS 0x3c14c, BM 0x3c154: 0c -> 0e
  - My Record entry length
- RS 0x3c16e, BM 0x3c176: 06 -> 07
  - My Record row length
- RS 0x3c192, BM 0x3c19a: 0c -> 0e
  - Best Record entry length
- RS 0x3c1be, BM 0x3c1c6: 0c -> 0e
  - Best Record entry length
- RS 0x3c1c0, BM 0x3c1c8: 0c -> 0e
  - Best Record entry length
- RS 0x3c1e6, BM 0x3c1ee: 06 -> 07
  - Best Record row length
- RS 0x3c27a, BM 0x3c282: 10 20 00 27 01 2f 01 d0 04 2f 01 d1 0b 21 0a e0
  - Edits to start of SET_TILES_FOR_RECORD_TIME
- RS 0x3c2b2, BM 0x3c2ba: 06 -> 07
  - Loop length near end of SET_TILES_FOR_RECORD_TIME
- RS 0x3c2b4, BM 0x3c2bc: e5 -> e3
  - Slightly different jump offset for loop
- RS 0x10b400, BM 0x10b414: 50 -> 58
  - "MY" header sprite X position
- RS 0x10b404, BM 0x10b418: 6c -> 74
  - First "RECORD" header sprite X position
- RS 0x10b408, BM 0x10b41c: 90 -> 98
  - "RS" header sprite X position
- RS 0x10b40c, BM 0x10b420: ac -> b4
  - Second "RECORD" header sprite X position
- RS 0x10b410, BM 0x10b424: d4 -> dc
  - "ATK" header sprite X position

### Removing Rank Check for Navi Record Times

Included to go along with the full record time display, as otherwise times more than a minute won't even be recorded in practice.

A very simple change: just replace the instruction responsible (which skips the record update check if the battle rank is 10 or below) with one that does nothing. (This instruction is preceded by a "cmp" instruction doing the actual comparison, but it doesn't particularly matter if that one is blanked or not.)

    08021ec0 21 dd   ble   0x08021f06
    ->
    08021ec0 00 00   mov   r0,r0

**Byte changes:**

- RS 0x21ec0, BM 0x21ec4: 21 dd -> 00 00

### Restoring City/Hawk Tournament Board Colors (Blue Moon Only)

In the original English release of Blue Moon, the City and Hawk tournament boards used the same colors as their Red Sun equivalents. The Japanese background colors, and appropriately matching header colors, have been restored in this patch.

Blue Moon English color addresses:

- 0x6c5642 - 0x6c567f: City Battle Tournament (green to light-blue gradient, orange bar, yellow text, same as Red Sun's Den Battle Tournament)
- 0x6c56c2 - 0x6c56ff: Hawk Tournament (purple to pink gradient, blue bar, yellow text, same as Red Sun's Eagle Battle Tournament)

Blue Moon Japanese color addresses (for background gradient only; headers are objects in this version instead of being part of background, so palette for them is separate):

- 0x6c572a - 0x6c5751: City Battle Tournament (magenta to coral-yellow gradient)
- 0x6c57aa - 0x6c57d1: Hawk Tournament (jade-green to light-green gradient)

Since the styling of the headers differs between English and Japanese, I went with the closest-matching header colors that already existed in the English versions.

**Byte changes (for Blue Moon only):**

- 0x6c5642: c0 0a e1 12 01 1f 22 2b 43 2f 63 33 64 37 85 3f 85 47 86 4b a7 53 a7 5b c8 5f c9 67 ea 6f 00 00 40 06 60 06 80 0a a0 0a -> 19 30 59 34 ba 3c fb 44 5c 4d bc 55 fd 5d 5e 66 bf 6e df 6a 1f 67 5f 67 7f 63 bf 5f ff 5f 00 00 35 3c 35 3c 56 40 77 44
  - City Battle Tournament gradient colors (green/light-blue to magenta/coral-yellow)
- 0x6c5678: bf 02 1f 01 f6 18 53 14 -> 28 7f 07 76 47 59 43 49
  - City Battle Tournament header bar colors (orange to blue)
- 0x6c56c2: 37 54 37 54 58 58 79 58 9a 5c bb 60 dc 60 fd 64 1e 69 5d 69 bd 6d 1d 72 5d 76 bd 7a 1d 7f 00 00 13 44 14 48 15 4c 16 50 -> 20 4a 60 4a 80 4a a0 42 c1 3e e1 3a 01 37 22 37 83 33 e4 2f e9 3f ee 4f f3 5f f8 6f fc 7f 00 00 a0 41 c0 45 00 4a 20 4a
  - Hawk Tournament gradient colors (purple/pink to jade-green/light-green)
- 0x6c56ea: b9 6f fc 77 d9 3b d7 03 52 0b cc 12 24 29 -> fd 7f ff 67 bf 37 7e 0f fc 16 17 1a ca 14
  - Hawk Tournament text colors (green to yellow)
- 0x6c56f8: 28 7f 07 76 47 59 43 49 -> de 64 3b 50 72 20 0f 18
  - Hawk Tournament header bar colors (blue to purple)

### Restoring Original Free Tournament/Operation Battle Navi Win Text

In the original English version, the "NUMBERMAN WIN!" text shown when NumberMan wins in a Free Tournament or Operation Battle was shortened to "NUMBRMAN WIN!", possibly for consistency with the "NUMBRMAN DELETED" text (which was shortened as such in the Japanese version as well). In addition, for the text shown when they win Free Tournaments, "NORMAL NAVI WIN" was changed to "NOMLNAVI WIN" and "HEEL NAVI WIN" to "HEALNAVI WIN."

There's no good reason for these changes (and "HealNavi" is obviously wrong), so the originals have been restored in this patch. I also changed it to "NUMBERMAN DELETED," which can fit the internal width limit if the spaces on the sides are removed; this was done for other long Navi names, but not that one for some reason.

Each text string of this type is stored as an X/Y position followed by a list of pointers to graphics data, which includes tiles for the left and right edges of the bar, for spaces (AKA bar segment with no letter on it), and for nothing at all (as filler after all the actually-used tiles). Aside from the "nothing at all" tile pointer, these graphics pointers differ between each version; English Blue Moon's graphics pointers are all offset by -0x570 from English Red Sun's.

#### Data for "NUMBRMAN WIN!" at 0x173ec in both English Red Sun and English Blue Moon (differing pointers are given as Red Sun / Blue Moon):

- 34 40 00 00: Position
  - **Change to 30 40 00 00** to center properly for added character
- 40 03 75 08 / d0 fd 74 08: left edge
- c0 02 75 08 / 50 fd 74 08: Space
- 80 ff 74 08 / 10 fa 74 08: N
- 40 01 75 08 / d0 fb 74 08: U
- 40 ff 74 08 / d0 f9 74 08: M
- 80 fc 74 08 / 10 f7 74 08: B
- **Insert 40 fd 74 08 / d0 f7 74 08: E**
- 80 00 75 08 / 10 fb 74 08: R
- 40 ff 74 08 / d0 f9 74 08: M
- 40 fc 74 08 / d0 f6 74 08: A
- 80 ff 74 08 / 10 fa 74 08: N
- c0 02 75 08 / 50 fd 74 08: Space
- c0 01 75 08 / 50 fc 74 08: W
- 40 fe 74 08 / d0 f8 74 08: I
- 80 ff 74 08 / 10 fa 74 08: N
- 00 03 75 08 / 90 fd 74 08: !
- c0 02 75 08 / 50 fd 74 08: Space
- 80 03 75 08 / 10 fe 74 08: Right edge
- 84 7a 01 08: Nothing
  - One of the nothing tiles gets "overwritten" by addition of new characters
- 84 7a 01 08: Nothing
- 84 7a 01 08: Nothing

**Byte changes for Red Sun:**

- 0x173ec: 30 40 00 00 40 03 75 08 c0 02 75 08 80 ff 74 08 40 01 75 08 40 ff 74 08 80 fc 74 08 40 fd 74 08 80 00 75 08 40 ff 74 08 40 fc 74 08 80 ff 74 08 c0 02 75 08 c0 01 75 08 40 fe 74 08 80 ff 74 08 00 03 75 08 c0 02 75 08 80 03 75 08 84 7a 01 08 84 7a 01 08

**Byte changes for Blue Moon:**

- 0x173ec: 30 40 00 00 d0 fd 74 08 50 fd 74 08 10 fa 74 08 d0 fb 74 08 d0 f9 74 08 10 f7 74 08 d0 f7 74 08 10 fb 74 08 d0 f9 74 08 d0 f6 74 08 10 fa 74 08 50 fd 74 08 50 fc 74 08 d0 f8 74 08 10 fa 74 08 90 fd 74 08 50 fd 74 08 10 fe 74 08 84 7a 01 08 84 7a 01 08

#### Data for "NOMLNAVI WIN!" at 0x17590 in both English Red Sun and English Blue Moon (differing pointers are given as Red Sun / Blue Moon):

- 34 40 00 00: Position
  - **Change to 28 40 00 00** to center properly for added characters
- 40 03 75 08 / d0 fd 74 08: Left edge
- c0 02 75 08 / 50 fd 74 08: Space
- 80 ff 74 08 / 10 fa 74 08: N
- c0 ff 74 08 / 50 fa 74 08: O
- **Insert 80 00 75 08 / 10 fb 74 08: R**
- 40 ff 74 08 / d0 f9 74 08: M
- **Insert 40 fc 74 08 / d0 f6 74 08: A**
- 00 ff 74 08 / 90 f9 74 08: L
- **Insert c0 02 75 08 / 50 fd 74 08: Space**
- 80 ff 74 08 / 10 fa 74 08: N
- 40 fc 74 08 / d0 f6 74 08: A
- 80 01 75 08 / 10 fc 74 08: V
- 40 fe 74 08 / d0 f8 74 08: I
- c0 02 75 08 / 50 fd 74 08: Space
- c0 01 75 08 / 50 fc 74 08: W
- 40 fe 74 08 / d0 f8 74 08: I
- 80 ff 74 08 / 10 fa 74 08: N
- 00 03 75 08 / 90 fd 74 08: !
- c0 02 75 08 / 50 fd 74 08: Space
- 80 03 75 08 / 10 fe 74 08: Right edge
- 84 7a 01 08: Nothing
- 84 7a 01 08: Nothing
- 84 7a 01 08: Nothing
  - All three nothing tiles get "overwritten" by addition of new characters

**Byte changes for Red Sun:**

- 0x17590: 28 40 00 00 40 03 75 08 c0 02 75 08 80 ff 74 08 c0 ff 74 08 80 00 75 08 40 ff 74 08 40 fc 74 08 00 ff 74 08 c0 02 75 08 80 ff 74 08 40 fc 74 08 80 01 75 08 40 fe 74 08 c0 02 75 08 c0 01 75 08 40 fe 74 08 80 ff 74 08 00 03 75 08 c0 02 75 08 80 03 75 08

**Byte changes for Blue Moon:**

- 0x17590: 28 40 00 00 d0 fd 74 08 50 fd 74 08 10 fa 74 08 50 fa 74 08 10 fb 74 08 d0 f9 74 08 d0 f6 74 08 90 f9 74 08 50 fd 74 08 10 fa 74 08 d0 f6 74 08 10 fc 74 08 d0 f8 74 08 50 fd 74 08 50 fc 74 08 d0 f8 74 08 10 fa 74 08 90 fd 74 08 50 fd 74 08 10 fe 74 08

#### Data for "HEALNAVI WIN!" at 0x175e4 in both English Red Sun and English Blue Moon (differing pointers are given as Red Sun / Blue Moon):

- 34 40 00 00: Position (for 17 used tiles out of 20)
  - **Change to 30 40 00 00** to center properly for added character
- 40 03 75 08 / d0 fd 74 08: Left edge
- c0 02 75 08 / 50 fd 74 08: Space
- 00 fe 74 08 / 90 f8 74 08: H
- 40 fd 74 08 / d0 f7 74 08: E
- 40 fc 74 08 / d0 f6 74 08: A
  - **Change to 40 fc 74 08 / d0 f7 74 08: E**
- 00 ff 74 08 / 90 f9 74 08: L
- **Insert c0 02 75 08 / 50 fd 74 08: Space**
- 80 ff 74 08 / 10 fa 74 08: N
- 40 fc 74 08 / d0 f6 74 08: A
- 80 01 75 08 / 10 fc 74 08: V
- 40 fe 74 08 / d0 f8 74 08: I
- c0 02 75 08 / 50 fd 74 08: Space
- c0 01 75 08 / 50 fc 74 08: W
- 40 fe 74 08 / d0 f8 74 08: I
- 80 ff 74 08 / 10 fa 74 08: N
- 00 03 75 08 / 90 fd 74 08: !
- c0 02 75 08 / 50 fd 74 08: Space
- 80 03 75 08 / 10 fe 74 08: Right edge
- 84 7a 01 08: Nothing
  - One of the nothing tiles gets "overwritten" by addition of new characters
- 84 7a 01 08: Nothing
- 84 7a 01 08: Nothing

**Byte changes for Red Sun:**

- 0x175e4: 30 40 00 00 40 03 75 08 c0 02 75 08 00 fe 74 08 40 fd 74 08 40 fc 74 08 00 ff 74 08 c0 02 75 08 80 ff 74 08 40 fc 74 08 80 01 75 08 40 fe 74 08 c0 02 75 08 c0 01 75 08 40 fe 74 08 80 ff 74 08 00 03 75 08 c0 02 75 08 80 03 75 08 84 7a 01 08 84 7a 01 08

**Byte changes for Blue Moon:**

- 0x175e4: 30 40 00 00 d0 fd 74 08 50 fd 74 08 90 f8 74 08 d0 f7 74 08 d0 f7 74 08 90 f9 74 08 50 fd 74 08 10 fa 74 08 d0 f6 74 08 10 fc 74 08 d0 f8 74 08 50 fd 74 08 50 fc 74 08 d0 f8 74 08 10 fa 74 08 90 fd 74 08 50 fd 74 08 10 fe 74 08 84 7a 01 08 84 7a 01 08

#### Data for "NUMBRMAN DELETED" at 0x17884 in both English Red Sun and English Blue Moon (differing pointers are given as Red Sun / Blue Moon):

- 28 40 00 00: Position (for 20 used tiles out of 20)
  - **Change to 2c 40 00 00** to center properly for fewer used tiles
- 40 03 75 08 / d0 fd 74 08: Left edge
- c0 02 75 08 / 50 fd 74 08: Space
  - **Remove to make room**
- 80 ff 74 08 / 10 fa 74 08: N
- 40 01 75 08 / d0 fb 74 08: U
- 40 ff 74 08 / d0 f9 74 08: M
- 80 fc 74 08 / 10 f7 74 08: B
- **Insert 40 fd 74 08 / d0 f7 74 08: E**
- 80 00 75 08 / 10 fb 74 08: R
- 40 ff 74 08 / d0 f9 74 08: M
- 40 fc 74 08 / d0 f6 74 08: A
- 80 ff 74 08 / 10 fa 74 08: N
- c0 02 75 08 / 50 fd 74 08: Space
- 00 fd 74 08 / 90 f7 74 08: D
- 40 fd 74 08 / d0 f7 74 08: E
- 00 ff 74 08 / 90 f9 74 08: L
- 40 fd 74 08 / d0 f7 74 08: E
- 00 01 75 08 / 90 fb 74 08: T
- 40 fd 74 08 / d0 f7 74 08: E
- 00 fd 74 08 / 90 f7 74 08: D
- c0 02 75 08 / 50 fd 74 08: Space
  - **Remove to make room**
- 80 03 75 08 / 10 fe 74 08: Right edge
- **Insert 84 7a 01 08 / 84 7a 01 08: Nothing**
  - To fill space, since one less tile is used overall

**Byte changes for Red Sun:**

- 0x17884: 2c 40 00 00 40 03 75 08 80 ff 74 08 40 01 75 08 40 ff 74 08 80 fc 74 08 40 fd 74 08 80 00 75 08 40 ff 74 08 40 fc 74 08 80 ff 74 08 c0 02 75 08 00 fd 74 08 40 fd 74 08 00 ff 74 08 40 fd 74 08 00 01 75 08 40 fd 74 08 00 fd 74 08 80 03 75 08 84 7a 01 08

**Byte changes for Blue Moon:**

- 0x17884: 2c 40 00 00 d0 fd 74 08 10 fa 74 08 d0 fb 74 08 d0 f9 74 08 10 f7 74 08 d0 f7 74 08 10 fb 74 08 d0 f9 74 08 d0 f6 74 08 10 fa 74 08 50 fd 74 08 90 f7 74 08 d0 f7 74 08 90 f9 74 08 d0 f7 74 08 90 fb 74 08 d0 f7 74 08 90 f7 74 08 10 fe 74 08 84 7a 01 08

### Editing PET Menu Headers

This patch changes the headers for the WaitingRoom menus from "RGSTRATION" and "AWAY GAME" to "RECEPTION" and "DISPATCH."

These are stored as lists of tile numbers (which remain the same between Red Sun and Blue Moon) used to create the background. Each letter is assembled from two tiles, top and bottom; the letter tiles aren't in much of an order, and some tiles are usable for the top or bottom of multiple letters, so it's a bit hard to illustrate the logic - you'll just have to trust these are the ones to use for these letters.

The tile data for the background that contains "RGSTRATION" starts at 0x6db01c in Red Sun and 0x6dab10 in Blue Moon.

- Tile row 1:
  - 01 00 02 00 02 00 (Tiles for the left window border and two leading spaces)
  - 0f 00 5d 00 09 00 0a 00 0f 00 04 00 0a 00 06 00 0b 00 03 00 (Tiles for the top half of "RGSTRATION")
  - 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 (Filler spaces)
  - 10 00 (Tile for the right window border)
- Tile row 2:
  - 31 00 32 00 32 00 (Tiles for the left window border and two leading spaces; these are different tiles from row 1 because they contain both the darker-colored "header" area and a bit of the lighter-colored "body" area)
  - 3a 00 38 00 99 00 35 00 3a 00 6d 00 35 00 35 00 38 00 18 01 (Tiles for the bottom half of "RGSTRATION")
  - 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 (Filler spaces)
  - 3B 00 (Tile for the right window border)

The tile data for the background that contains "AWAY GAME" starts at 0x6db4cc in Red Sun and 0x6dafc0 in Blue Moon.

- Tile row 1:
  - 01 00 02 00 02 00 (Tiles for the left window border and two leading spaces)
  - 04 00 17 01 04 00 11 01 02 00 5d 00 04 00 0c 00 0e 00 (Tiles for the top half of "AWAY GAME")
  - 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 (Filler spaces)
  - 10 00 (Tile for the right window border)
- Tile row 2:
  - 31 00 32 00 32 00 (Tiles for the left window border and two leading spaces; these are different tiles from row 1 because they contain both the darker-colored "header" area and a bit of the lighter-colored "body" area)
  - 6d 00 19 01 6d 00 35 00 32 00 38 00 6d 00 6e 00 33 00 (Tiles for the bottom half of "AWAY GAME")
  - 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 (Filler spaces)
  - 3B 00 (Tile for the right window border)
  
Obviously the important part to replace is the tiles corresponding to letters (though keep in mind the number of filler spaces may also change), so here they are for "RECEPTION":

- Tile row 1:
  - 0f 00 0e 00 07 00 0e 00 03 00 0a 00 06 00 0b 00 03 00
- Tile row 2:
  - 3a 00 33 00 33 00 33 00 36 00 35 00 35 00 38 00 18 01

And here they are for "DISPATCH":

- Tile row 1:
  - 30 00 06 00 09 00 03 00 04 00 0a 00 07 00 08 00
- Tile row 2:
  - 39 00 35 00 99 00 36 00 6d 00 35 00 33 00 34 00

**Byte changes:**

- RS 0x6db01c, BM 0x6dab10: 01 00 02 00 02 00 0f 00 0e 00 07 00 0e 00 03 00 0a 00 06 00 0b 00 03 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 10 00 31 00 32 00 32 00 3a 00 33 00 33 00 33 00 36 00 35 00 35 00 38 00 18 01 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 3b 00
  - First two tile rows for "RECEPTION"
- RS 0x6db4cc, BM 0x6dafc0: 01 00 02 00 02 00 30 00 06 00 09 00 03 00 04 00 0a 00 07 00 08 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 02 00 10 00 31 00 32 00 32 00 39 00 35 00 99 00 36 00 6d 00 35 00 33 00 34 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 3b 00
  - First two tile rows for "DISPATCH"

### Fix Unset Record-Holder Names Being Invisible

If Navi deletion record times are hacked in without a record-holder name being properly set, the default name uses characters that were dashes in Japanese, but are invisible in the English version.

The default name is stored as 82 82 82; changing it to 49 49 49 will make it use English-version dashes. Note that this only applies on starting a new game, as afterward, the names are stored in the save file.

**Byte changes:**

- RS 0x3c590, BM 0x3c598: 82 82 82 -> 49 49 49

### Shifting Misaligned Eagle Tournament Banner Text (Red Sun Only)

- Large replacement from around 0x6c4e41 to 0x6c5aef

The tile graphics for tournament boards were edited to shift the "Tournament" in the Eagle Tournament banner (only in Red Sun) up one pixel, as it was misaligned. This resulted in a lot of changed bytes on account of the graphics for tournament boards being one compressed image. (This was done by using GBA Graphics Editor to replace the compressed tournament board graphics at offset 6c4e40. Notably, the program's auto-detection seems to cut the tiles off slightly early (leaving out part of the Free Tournament banner, making it partly corrupted after re-importing), so I had to add them in semi-manually.)

### Font Changes

- 0x6960fe - 0x696155 (Red Sun), 0x695ee6 - 0x695f3d (Blue Moon)
  - 13 11 11 11 00 00 11 11 13 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 13 11 11 11 00 00 11 11 13 11 11 11 00 00 11 11 13 11 11 11 00 00 11 11 13 11 11 11 00 00 11 11 13 11 11 11 00 00 11 11 13 11 11 11 00 00 11 11 13 11 11 11 00 00 31 33 11 11 11 11 00 00 11 11 -> 11 11 11 11 00 00 11 31 11 11 11 11 00 00 11 31 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 31 11 11 11 11 00 00 11 31 11 11 11 11 00 00 11 31 11 11 11 11 00 00 11 31 11 11 11 11 00 00 11 31 11 11 11 11 00 00 11 31 11 11 11 11 00 00 11 31 11 11 11 11 00 00 33 13

Changes positioning of the "j" (in "shadowless" font used for main dialogue).

- 0x696ce4 - 0x696ced (Red Sun), 0x696acc - 0x696ad5 (Blue Moon)
  - 11 11 11 11 11 11 00 00 31 11 -> 31 13 11 11 11 11 00 00 31 13

Makes the period bigger (in "shadowless" font used for main dialogue).

- 0x69750c - 0x69758f (Red Sun), 0x6972f4 - 0x697377 (Blue Moon)
  - 13 31 11 13 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 13 31 11 13 11 11 00 00 11 11 11 11 -> 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 13 31 11 13 11 11 00 00 13 31 11 13 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 11 11 11 11 11 11 00 00 13 31 11 13 11 11 00 00 13 31 11 13

Edits both ellipsis characters to be larger and on baseline (in "shadowless" font used for main dialogue).

- 0x6c805b (Red Sun), 0x6c7b4f (Blue Moon)
  - 1b -> 11

Removes the stray pixel on the "F" (in "shadowed" font used for various UI).

- 0x6c9000 - 0x6c9009 (Red Sun), 0x6c8af4 - 0x6c8afd (Blue Moon)
  - 11 11 11 11 31 11 11 11 11 14 -> 31 13 11 11 31 43 11 11 11 44

Makes the period bigger (in "shadowed" font used for various UI).

- 0x6c9570 - 0x6c95cb (Red Sun), 0x6c9064 - 0x6c90bf (Blue Moon)
  - 31 31 31 11 11 14 14 14 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 31 31 31 11 11 14 14 14 -> 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 13 31 11 13 43 31 14 43 41 11 14 41 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 13 31 11 13 43 31 14 43 41 11 14 41

Edits both ellipsis characters to be larger and on baseline (in "shadowed" font used for various UI).
