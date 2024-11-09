; ---------------------------------------------------------------------------
; Animation script - Basaran enemy
; ---------------------------------------------------------------------------

Ani_Bas: offsetTable
		offsetTableEntry.w .still	; 0
		offsetTableEntry.w .fall		; 1
		offsetTableEntry.w .fly		; 2

.still		dc.b $F, 0, afEnd
.fall		dc.b $F, 1, afEnd
.fly		dc.b 3, 1, 2, 3, 2, afEnd
	even