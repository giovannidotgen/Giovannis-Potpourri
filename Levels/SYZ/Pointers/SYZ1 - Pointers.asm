; ---------------------------------------------------------------------------
; SYZ1 level pointer data
; ---------------------------------------------------------------------------

		; Level init
		dc.l SYZ1_Resize							; Resize
		dc.l 0									; Water resize
		dc.l 0									; After boss

		; Animate palette
		dc.l AnimatePalette_DoAniPal						; Animate palette main code
		dc.l AniPalette_SYZ							; Animate palette scripts

		; Level setup
		dc.l SYZ1_ScreenInit							; Screen init
		dc.l SYZ1_BackgroundInit						; Background init
		dc.l DrawTilesAsYouMove							; Screen event
		dc.l SYZ1_BackgroundEvent						; Background event

		; Animate tiles
		dc.l 0									; Animate tiles init
		dc.l AnimateTiles_DoAniPLC						; Animate tiles main code
		dc.l AniPLC_SYZ								; Animate tiles PLC scripts

		; Level 1st 8x8 data, 2nd 8x8 data, Blocks pointer, 1st 16x16 data, 2nd 16x16 data, Chunks pointer, 1st 128x128 data, 2nd 128x128 data, Palette, Water palette, Music
		levartptrs \
		SYZ_8x8_KosPM, \
		0, \
		SYZ_16x16_Unc, \
		0, \
		0, \
		Chunk_table, \
		SYZ1_128x128_KosP, \
		0, \
		PalID_SYZ, \
		PalID_WaterSYZ, \
		mus_SYZ

		; Level data 2
		dc.l SYZ_Solid								; Level solid
		dc.l SYZ1_Layout							; Level layout
		dc.l SYZ1_Objects							; Level sprites
		dc.l SYZ1_Rings								; Level rings

		; PLC
		dc.l PLC1_SYZ1_Before							; PLC1
		dc.l PLC2_SYZ1_After							; PLC2
		dc.l PLCAnimals_SYZ1							; PLC animals

		; Level size
		dc.w 0									; Level xstart
		dc.w $24C0								; Level xend
		dc.w 0									; Level ystart
		dc.w $420								; Level yend

		; Starting water height
		dc.w $1000

		; Players palette
		dc.b PalID_Sonic
		dc.b PalID_Knuckles

		; Players water palette
		dc.b PalID_WaterSonic
		dc.b PalID_WaterKnuckles

		; Players start location
		binclude "Levels/SYZ/Start Location/Sonic/1.bin"
		binclude "Levels/SYZ/Start Location/Knuckles/1.bin"

		; Debug Mode
	if (GameDebug)&&(~~GameDebugAlt)
		dc.l Debug_SYZ1								; Debug Mode
	else
		dc.l 0									; Unused
	endif
