# SONIC-1-IN-SONIC-3-S.C.E.-

![Title](https://i.imgur.com/VbQoOjT.png)

## Disclaimer

Source code with the Sonic 2 Clone Driver v2 (Mega PCM 2.0 version). Unstable version. I haven't tested how well the game works with this sound driver. You can use this version of the source code, but it's not recommended.
Clone driver works poorly and is slow. The music from S3K sounds weird. I just recommend continuing to use the S3K Z80 driver.

This is a port of Sonic The Hedgehog (1991) to Sonic Clean Engine (S.C.E.), our heavily modified and improved Sonic 3 & Knuckles engine, which we have been using for a long time for our MD projects (such as Hellfire Saga and Sonic 3 & Knuckles: Epilogue).

Free use. You use it at your own risk. All code is provided “as is”. This source code uses software from other authors. Check their licenses before using it. You assume any and all responsibility for using this content responsibly. I claims no responsibility or warranty.

You can use this source code as a base for your projects, or just as an example for optimizations of your source code.

## Screenshots

<details>
<summary>Screenshots</summary>
 
![1]
![2]
![3]
![4]
![5]
![6]
![7]
![8]
![9]
![10]
![11]
![12]
![13]
![14]
![15]
![16]
![17]
![18]
![19]
![20]
![21]
![22]
![23]
![24]
![25]

[1]: https://i.imgur.com/EqCmjSK.png
[2]: https://i.imgur.com/rtzOHYb.png
[3]: https://i.imgur.com/6YTWpYb.png
[4]: https://i.imgur.com/MLsX9YQ.png
[5]: https://i.imgur.com/MlrJwEI.png
[6]: https://i.imgur.com/l0QAfCO.png
[7]: https://i.imgur.com/dRpyxOJ.png
[8]: https://i.imgur.com/Ta9my76.png
[9]: https://i.imgur.com/FtrAkRO.png
[10]: https://i.imgur.com/6bGlgfN.png
[11]: https://i.imgur.com/fn5ETM9.png
[12]: https://i.imgur.com/K0HpIgu.png
[13]: https://i.imgur.com/BD7Uuzq.png
[14]: https://i.imgur.com/haLN95q.png
[15]: https://i.imgur.com/JT05cue.png
[16]: https://i.imgur.com/X1m8pXp.png
[17]: https://i.imgur.com/V6AfKYw.png
[18]: https://i.imgur.com/D0Eapq5.png
[19]: https://i.imgur.com/QM5eUop.png
[20]: https://i.imgur.com/82Rdk6v.png
[21]: https://i.imgur.com/r6eKElG.png
[22]: https://i.imgur.com/rmrbD5b.png
[23]: https://i.imgur.com/g0tqv5L.png
[24]: https://i.imgur.com/Xp8CwYa.png
[25]: https://i.imgur.com/v39oNGQ.png

</details>

## Additional links

#### Main source code:

- [Sonic-Clean-Engine-S.C.E.-](https://github.com/TheBlad768/Sonic-Clean-Engine-S.C.E.-)

#### Extended source code:

- [Sonic-Clean-Engine-S.C.E.-Extended-](https://github.com/TheBlad768/Sonic-Clean-Engine-S.C.E.-Extended-)

## How to build the ROM

To build this, use Build.bat if you're a Windows user, or build.lua otherwise. The built ROM will be called 'Sonic.gen'.

## Quick start

- For editing sprites you can use [SonMapEd](https://info.sonicretro.org/SonMapEd), [ClownMapEd](https://info.sonicretro.org/ClownMapEd) or [Flex2](https://info.sonicretro.org/Flex_2) (Read the issues).

- For editing levels you can use official [SonLVL](https://info.sonicretro.org/SonLVL) or [SonLVL-64x64-Compatible](https://github.com/Project1114/SonLVL-64x64-Compatible). Unfortunately, [SonED2](https://info.sonicretro.org/SonED2) is no longer supported.

- To convert SMPS music to asm format you can use [smps2asm](https://forums.sonicretro.org/index.php?threads/smps2asm-and-improved-s-k-driver.26876).

## Current issues

1. S.C.E. uses [Kosinski Plus algorithm](https://github.com/flamewing/mdcomp/blob/master/src/asm/KosinskiPlus.asm), but **Flex2** program does not support **Kosinski Plus Module**. Therefore, **Flex2.json** project file is partially useless. **SonMapEd** program does not support **Kosinski Plus** at all. You can only open uncompressed graphics.

#### Alternative programs:
- [mdcomp](https://github.com/flamewing/mdcomp/releases)
- [ClownMapEd](https://github.com/Clownacy/ClownMapEd/releases)
- [FW-KENSC-ShellExt](https://github.com/MainMemory/FW-KENSC-ShellExt/releases)

## FAQ

- If you want to convert levels from previous Sonic games, you have to use [LevelConverter](https://info.sonicretro.org/LevelConverter) from [SonLVL](https://info.sonicretro.org/SonLVL). Then change the layout format using [Layout converter](https://github.com/TheBlad768/Sonic-1-in-Sonic-3-S.C.E.-/tree/Clone-Driver-v2/Utilities/Layout).

- If you want to make a different text for Title Card, you need to create a file of letters from [List.unc](https://github.com/TheBlad768/Sonic-1-in-Sonic-3-S.C.E.-/tree/Clone-Driver-v2/Objects/Main/Title%20Card/KosinskiPM%20Art/Levels). This will be loaded before the level starts.
You don't have to add the letters **'ENOZ' (ZONE)** because those letters are already in VRAM. Then you have to create a mapping of your zone name in [Map - Title Card.asm](https://github.com/TheBlad768/Sonic-1-in-Sonic-3-S.C.E.-/tree/Clone-Driver-v2/Objects/Main/Title%20Card/Object%20Data).

- If you want to use other SMPS music you can use [Valley Bell's SMPS Research](https://forums.sonicretro.org/index.php?threads/valley-bells-smps-research.32473) or [vgm2smps](https://github.com/Ivan-YO/vgm2smps/releases).

## The Macro Assembler AS issues

#### Why does the ROM take so long to build?

- The speed of the ROM build process depends entirely on the power of your computer. A high-performance machine will build the ROM quickly, while a slower one will take significantly more time.

- Always specify jump sizes for instructions. Writing code without specifying jump sizes will significantly slow down the ROM build. The Macro Assembler AS will perform multiple passes until it can successfully build the ROM, which increases build time.

Example of problematic code:

```
		beq	sub_1234	; and any other branch instructions
		jsr	sub_1234
		jmp	sub_1234
		lea	sub_1234,a1
```

Example of correct code:

```
		beq.s	sub_1234	; and any other branch instructions
		jsr	(sub_1234).l
		jmp	(sub_1234).l
		lea	(sub_1234).l,a1
```

#### Pay close attention to your code to avoid such issues.

## Credits

### Red Miso Studios Staff

- TheBlad768 -- Project lead, sole programmer, S.C.E. Game Engine
- kuroya2mouse -- Level art and level design edits, sprite art and other things
- pixelcat -- Sprite art, UI art and other things
- FoxConED -- S.C.E. Level Select font art
- Dolphman -- Robotnik head art

### Testing and other help

- giovanni.gen, KGL, DeltaW, Narcologer, CatswellMeow, Nintorch, FoxConED, lavagaming1, cuberoot, Vladikcomper, ProjectFM, MarkeyJester, VAdaPEGA

### Special Support

- cuberoot

### Special Thanks

- joshyflip for consulting on the artwork
- Flamewing, devon, RealMalachi and others for bug fixing guides
- Clownacy for work on the disassemblies
- SSRG and Sonic Retro

## Discord

- [redmisostudios](https://discords.com/servers/redmisostudios)

## These projects are based on this source code

- Sonic 3 Rebuilt by TomatoWave_0
- [Sonic The Hedgehog in Hellfire Saga](https://github.com/TheBlad768/Hellfire-Saga-Public-Source)
- [Sonic 3 & Knuckles: Epilogue](https://github.com/TheBlad768/Sonic-3-Knuckles-Epilogue-Public-Source)
- TishaProject (2019)
- Sonic Virtual Adventure (2017) (Cancelled) — In the past I made this source code specifically for this project (:

## Check out the Sonic Retro source code

- [s1disasm](https://github.com/sonicretro/s1disasm)
- [s2disasm](https://github.com/sonicretro/s2disasm)
- [skdisasm](https://github.com/sonicretro/skdisasm)
