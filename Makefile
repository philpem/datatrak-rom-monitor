ALL:	tutor13.bin

tutor13.bin:	tutor13.S68
	srec_cat tutor13.S68 -output tutor13.bin -binary

tutor13.S68:	tutor13.x68
	./EASy68K-asm/ASM68Kv5.15.4/asy68k --macroexpand --no-symbols tutor13.x68

