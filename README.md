# MMBN Translation Revisions

Revised English scripts with many edits and retranslations for some of the Mega Man Battle Network games.

All editing and retranslation work was done by me, vgperson. I claim no ownership of the original text and code - extracted from the original games made by Capcom - that these are based upon.

## tpl folder

Files are provided in the TPL format used by Prof. 9's [TextPet](https://github.com/Prof9/TextPet). TextPet can load these and write the text archives to the proper GBA ROM, or convert them to Legacy Collection MSG files which can be packed with RockmanEXEZone's [MMBNLC scripts](https://github.com/RockmanEXEZone/MMBNLC-Scripts). See the "importing" sections below if you want to do this for yourself.

## plugins folder

When working with the BN2 Revision scripts, you should replace TextPet's default BN2 plugins with these. For BN2, I added a new ellipsis character to help save space. In the GBA game, this is accomplished by adding a new symbol after all the others in the font, so I also added a definition for that symbol to the BN2 table file. For Legacy Collection, the font already contains a "⋯" character (centered ellipsis, but appears on the baseline in the English font), so I edited the LC table file to match that to the baseline "…" I use in the scripts.

## basepatches folder

The GBA versions of the revisions make a handful of edits outside of the message data handled by TextPet. If you want to include these, you should apply the corresponding patch to an unmodified North American ROM (using an IPS patcher such as Lunar IPS), and use that as your "base" ROM for TextPet insertion. This is particularly important for BN2, as otherwise the brand new ellipsis character will appear as a blank space.

#### Changes included in BN2 base patch
- New ellipsis character in font

#### Changes included in BN3 base patches
- Font edits: Period made bigger, ellipsis characters moved lower
- Redone alphabetical chip sorting, addressing some misplaced chips from original, ordering Recov chips by value, and adjusting for YamatoMan name restoration
- Fixed (displayed) letter codes for two chips in Higsby's chip order; only takes effect on new game, as it gets stored in the save data
- (Blue only) Edited graphics for Beach Street poster to say "JACK IN" instead of "PLUG IN"

#### Changes included in BN4 base patches
- Font edits: Period made bigger, lowercase j repositioned, removed off-color pixel above F in chip description font
- Redone alphabetical chip sorting, addressing some misplaced chips from original

## Notes on running TextPet scripts

For reference, when I say to run a TextPet script in the following sections, there are two methods to do so. You can pass the whole thing as a single series of command line arguments, like so:

    TextPet.exe load-plugins plugins\ game mmbn2 read-text-archives BN2-Edited.tpl write-text-archives BN2-Edited.txt -f txt -s

Or you can put the script in a text file with a TPS extension, such as BN2-ExportTXT.tps, and run that script like so:

    TextPet.exe run-script BN2-ExportTXT.tps

## Importing TPL scripts into a GBA ROM

The following example TextPet script will import the edited text for BN3 Blue into a BN3 Blue base ROM, and write it to BN3B-Edited.gba.

It assumes you have the latest "plugins" and "indexes" folders for TextPet (see "plugins folder" section for additional note on this for BN2), and have placed BN3B-Edited.tpl (from this repository) and BN3B-Base.gba (the base ROM, ideally with "base patch" applied) in the TextPet folder.

    load-plugins plugins\ 
    game mmbn3
    read-text-archives BN3B-Edited.tpl
    load-file-index indexes\mmbn3b-us.tpi
    load-file BN3B-Base.gba
    write-text-archives BN3B-Edited.gba

Line-by-line breakdown:

    load-plugins plugins\
    ^ Loads all plugins from the plugins folder.
    You can narrow it down to just the ones needed for the specific game, but it's fine to be general.
    
    game mmbn3
    ^ Sets the game mode to Battle Network 3 (covers both Blue and White).
    
    read-text-archives BN3B-Edited.tpl
    ^ Reads all text archives from the revised script file.
    
    load-file-index indexes\mmbn3b-us.tpi
    ^ Loads indexes indicating where each text archive is located in the Battle Network 3 Blue North American ROM.
    
    load-file BN3B-Base.gba
    ^ Loads the base ROM into the program.
    
    write-text-archives BN3B-Edited.gba
    ^ Writes the loaded ROM data, with the new edited text archives, out to BN3B-Edited.gba.

Changing this to do other games/versions should be fairly self-explanatory - just change the numbers/version letters.

## Importing TPL scripts into Legacy Collection

The following example TextPet script will write the edited text for BN3 Blue (Legacy Collection) out to a folder of MSG files called BN3B-EditedLC.

It assumes you have the latest "plugins" folder for TextPet (see "plugins folder" section for additional note on this for BN2), and have placed BN3B-EditedLC.tpl (from this repository) in the TextPet folder.

    load-plugins plugins\
    game mmbn3-lc
    read-text-archives BN3B-EditedLC.tpl
    write-text-archives BN3B-EditedLC -f msg

Line-by-line breakdown:

    load-plugins plugins\
    ^ Loads all plugins from the plugins folder.
    You can narrow it down to just the ones needed for the specific game, but it's fine to be general.
    
    game mmbn3-lc
    ^ Sets the game mode to Battle Network 3 Legacy Collection (covers both Blue and White).
    
    read-text-archives BN3B-EditedLC.tpl
    ^ Reads all text archives from the revised LC script file.
    
    write-text-archives BN3B-EditedLC -f msg
    ^ Writes those text archives to the folder BN3B-EditedLC in the format (-f) of MSG files.

Once you have the MSG folder, you can use build_mpak from the [MMBNLC Python scripts](https://github.com/RockmanEXEZone/MMBNLC-Scripts) to pack it into a new MPAK file and associated MAP file.

Aside from the MSG folder from the previous step (BN3B-EditedLC in this example), you will also need the original message_eng.map file from the Legacy Collection data; this fills a similar role to the "index" files for the GBA ROMs, indicating what goes where. You can get this file by changing the extension of the specific game's data file (i.e. exe3b.dat for BN3 Blue) from .dat to .zip, opening it as a ZIP archive, and navigating to the data/msg/ directory.

    python build_mpak.py message_eng.map message_eng_new.map message_eng_new.mpak BN3B-EditedLC

Once you have the new MPAK and MAP files, you can go into the .dat archive (by opening it as a ZIP as aforementioned) and replace the original files with them. ([ChaudLoader](https://github.com/RockmanEXEZone/chaudloader) mods can also temporarily replace them, as I do in my mod releases.)

## Other notes

For transparency: while I only included here the "final step" of the TPL scripts that are then imported into the games, I used a custom program of my own to perform various helpful functions, such as converting a singular "combined" script out to TPLs for different game versions or the Legacy Collection. This program is not ready for a public release (having lots of things hardcoded), and probably won't get one unless there's significant demand.

## Links

[MMBN2 Translation Revision official page](https://vgperson.com/games/bn2revision.htm)

[MMBN3 Translation Revision official page](https://vgperson.com/games/bn3revision.htm)

[MMBN4 Translation Revision official page](https://vgperson.com/games/bn4revision.htm)
