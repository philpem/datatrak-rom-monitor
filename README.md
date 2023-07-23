# TUTOR13 (MACSbug) for the Datatrak Locator

This is a port of the Motorola TUTOR v1.3 monitor to the Datatrak Locator Mk.II hardware.

It is based on the original port of the TUTOR v1.3 monitor to the Teesside cross-assembler, from [Paul R. Santa-Maria's MEX68KECB website](http://www.easy68k.com/paulrsm/mecb/mecb.htm).

Documentation for the TUTOR monitor is in the [MEX68KECB manual](http://www.easy68k.com/paulrsm/mecb/MecbManual.pdf), starting on PDF page 49.

The code can be assembled with the [Linux port of the EASy68k macro assembler](https://github.com/rayarachelian/EASy68K-asm).


## Changes made

  - **Porting**. Adjusted code and RAM base addresses to account for the Locator memory map.
  - **Vector remapping (trampolines)**. The Locator Mk.2 has ROM mapped at `0x000000`, which prevents the vector area from being overwritten.
    To allow vectors to be remapped, the ROM vectors point to RAM addresses; these addresses contain a jump instruction which can be
    modified to point to user vector code.


## Build instructions

Build the assembler:

```
make -C EASy68K-asm/ASM68Kv5.15.4/
```

Assemble the code:

```
./EASy68K-asm/ASM68Kv5.15.4/asy68k tutor13.x68
```


