; ---------------------------------------------------------------------------
; Sprite mappings - moving blocks (SYZ/SLZ/LZ)
; ---------------------------------------------------------------------------

Map_FBlock:
		dc.w Map_FBlock_10-Map_FBlock, Map_FBlock_18-Map_FBlock
		dc.w Map_FBlock_32-Map_FBlock, Map_FBlock_40-Map_FBlock
		dc.w Map_FBlock_5A-Map_FBlock, Map_FBlock_6E-Map_FBlock
		dc.w Map_FBlock_76-Map_FBlock, Map_FBlock_84-Map_FBlock
Map_FBlock_10:	dc.b 0, 1
		dc.b $F0, $F, 0, $31, $FF, $F0
Map_FBlock_18:	dc.b 0, 4
		dc.b $E0, $F, 0, $31, $FF, $E0
		dc.b $E0, $F, 0, $31, 0, 0
		dc.b 0, $F, 0, $31, $FF, $E0
		dc.b 0, $F, 0, $31, 0, 0
Map_FBlock_32:	dc.b 0, 2
		dc.b $E0, $F, 0, $31, $FF, $F0
		dc.b 0, $F, 0, $31, $FF, $F0
Map_FBlock_40:	dc.b 0, 4
		dc.b $E6, $F, 0, $51, $FF, $E0
		dc.b $E6, $F, 0, $51, 0, 0
		dc.b 0, $F, 0, $51, $FF, $E0
		dc.b 0, $F, 0, $51, 0, 0
Map_FBlock_5A:	dc.b 0, 3
		dc.b $D9, $F, 0, $51, $FF, $F0
		dc.b $F3, $F, 0, $51, $FF, $F0
		dc.b $D, $F, 0, $51, $FF, $F0
Map_FBlock_6E:	dc.b 0, 1
		dc.b $F0, $F, 0, $21, $FF, $F0
Map_FBlock_76:	dc.b 0, 2
		dc.b $E0, 7, 0, 0, $FF, $F8
		dc.b 0, 7, $10, 0, $FF, $F8
Map_FBlock_84:	dc.b 0, 4
		dc.b $F0, $F, 0, $22, $FF, $C0
		dc.b $F0, $F, 0, $22, $FF, $E0
		dc.b $F0, $F, 0, $22, 0, 0
		dc.b $F0, $F, 0, $22, 0, $20
		even
