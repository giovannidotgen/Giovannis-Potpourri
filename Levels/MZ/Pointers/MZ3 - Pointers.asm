; ---------------------------------------------------------------------------
; MZ3 level pointer data
; ---------------------------------------------------------------------------

		; Level init
		dc.l MZ3_Resize								; Resize
		dc.l 0										; Water resize
		dc.l 0										; After boss

		; Animate palette
		dc.l 0										; Animate palette main code
		dc.l 0										; Animate palette scripts

		; Level setup
		dc.l MZ1_ScreenInit							; Screen init
		dc.l MZ1_BackgroundInit						; Background init
		dc.l DrawTilesAsYouMove						; Screen event
		dc.l MZ1_BackgroundEvent						; Background event

		; Animate tiles
		dc.l 0										; Animate tiles init
		dc.l AnimateTiles_MZ							; Animate tiles main code
		dc.l AniPLC_MZ								; Animate tiles PLC scripts

		; Level 1st 8x8 data, 2nd 8x8 data, Blocks pointer, 1st 16x16 data, 2nd 16x16 data, Chunks pointer, 1st 128x128 data, 2nd 128x128 data, Palette, Water palette, Music
		levartptrs \
 		MZ_8x8_KosPM, \
 		0, \
 		MZ_16x16_Unc, \
 		0, \
 		0, \
 		Chunk_table, \
 		MZ3_128x128_KosP, \
 		0, \
		PalID_MZ, \
		PalID_WaterMZ, \
		mus_MZ

		; Level data 2
		dc.l MZ_Solid									; Level solid
		dc.l MZ3_Layout								; Level layout
		dc.l MZ3_Sprites								; Level sprites
		dc.l MZ3_Rings								; Level rings

		; PLC
		dc.l PLC1_MZ3_Before							; PLC1
		dc.l PLC2_MZ3_After							; PLC2
		dc.l PLCAnimals_MZ1							; PLC animals

		; Level size
		dc.w 0										; Level xstart
		dc.w $1B00									; Level xend
		dc.w 0										; Level ystart
		dc.w $720									; Level yend

		; Starting water height
		dc.w $1000

		; Sonic palette, Knuckles palette
		dc.b PalID_Sonic
		dc.b PalID_Knuckles

		; Water Sonic palette, Water Knuckles palette
		dc.b PalID_WaterSonic
		dc.b PalID_WaterKnuckles

		; Players start location
		binclude "Levels/MZ/Start Location/3.bin"

		; Debug Mode
	if (GameDebug<>0)&&(GameDebugAlt==0)
		dc.l Debug_MZ1								; Debug Mode
	else
		dc.l 0										; Unused
	endif
