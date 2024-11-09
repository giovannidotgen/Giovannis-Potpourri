; ---------------------------------------------------------------------------
; Sprite mappings - still sprites
; ---------------------------------------------------------------------------

Map_StillSprites:
Map_StillSprites_0: 	dc.w Map_StillSprites_8-Map_StillSprites
Map_StillSprites_2: 	dc.w Map_StillSprites_16-Map_StillSprites
Map_StillSprites_4: 	dc.w Map_StillSprites_1E-Map_StillSprites
Map_StillSprites_6: 	dc.w Map_StillSprites_26-Map_StillSprites

Map_StillSprites_8: 	dc.b $0, $2
	dc.b $F8, $4, $0, $0, $FF, $F0
	dc.b 0, $C, $0, $2, $FF, $F0
Map_StillSprites_16: 	dc.b $0, $1
	dc.b $F0, $F, 0, 0, $FF, $F0
Map_StillSprites_1E: 	dc.b $0, $1
	dc.b $F8, $D, $0, $0, $FF, $F0
Map_StillSprites_26: 	dc.b $0, $1
	dc.b $F0, $7, $0, $0, $FF, $F8
	even