; ---------------------------------------------------------------------------
; Animation script - Lightning shield
; ---------------------------------------------------------------------------

Ani_LightningShield: offsetTable
		offsetTableEntry.w byte_19A30	; 0
		offsetTableEntry.w byte_19A5C	; 1
		offsetTableEntry.w byte_19A73	; 2

byte_19A30:
		dc.b 1, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9
		dc.b $A, $B, $16, $16, $15, $15, $14, $14, $13, $13, $12, $12
		dc.b $11, $11, $10, $10, $F, $F, $E, $E, 9, $A, $B, afEnd
byte_19A5C:
		dc.b 0, $C, $D, $17, $C, $D, $17, $C, $D, $17, $C, $D, $17, $C, $D, $17, $C, $D, $17, $C
		dc.b $D, afRoutine, afEnd
byte_19A73:
		dc.b 3, 0, 1, 2, afRoutine, afEnd
	even