; ---------------------------------------------------------------------------
; SLZ2 level pointer data
; ---------------------------------------------------------------------------

		; Level init
		dc.l SLZ2_Resize							; Resize
		dc.l 0									; Water resize
		dc.l 0									; After boss

		; Animate palette
		dc.l AnimatePalette_DoAniPal						; Animate palette main code
		dc.l AniPalette_SLZ							; Animate palette scripts

		; Level setup
		dc.l SLZ1_ScreenInit							; Screen init
		dc.l SLZ1_BackgroundInit						; Background init
		dc.l DrawTilesAsYouMove							; Screen event
		dc.l SLZ1_BackgroundEvent						; Background event

		; Animate tiles
		dc.l 0									; Animate tiles init
		dc.l 0									; Animate tiles main code
		dc.l -1									; Animate tiles PLC scripts

		; Level 1st 8x8 data, 2nd 8x8 data, Blocks pointer, 1st 16x16 data, 2nd 16x16 data, Chunks pointer, 1st 128x128 data, 2nd 128x128 data, Palette, Water palette, Music
		levartptrs \
		SLZ_8x8_KosPM, \
		0, \
		SLZ_16x16_Unc, \
		0, \
		0, \
		Chunk_table, \
		SLZ_128x128_KosP, \
		0, \
		PalID_SLZ, \
		PalID_WaterSLZ, \
		mus_SLZ

		; Level data 2
		dc.l SLZ_Solid								; Level solid
		dc.l SLZ2_Layout							; Level layout
		dc.l SLZ2_Objects							; Level sprites
		dc.l SLZ2_Rings								; Level rings

		; PLC
		dc.l PLC1_SLZ2_Before							; PLC1
		dc.l PLC2_SLZ2_After							; PLC2
		dc.l PLCAnimals_SLZ1							; PLC animals

		; Level size
		dc.w 0									; Level xstart
		dc.w $21BF								; Level xend
		dc.w 0									; Level ystart
		dc.w $640								; Level yend

		; Starting water height
		dc.w $1000

		; Players palette
		dc.b PalID_Sonic
		dc.b PalID_Knuckles

		; Players water palette
		dc.b PalID_WaterSonic
		dc.b PalID_WaterKnuckles

		; Players start location
		binclude "Levels/SLZ/Start Location/Sonic/2.bin"
		binclude "Levels/SLZ/Start Location/Knuckles/2.bin"

		; Debug Mode
	if (GameDebug)&&(~~GameDebugAlt)
		dc.l Debug_SLZ1								; Debug Mode
	else
		dc.l 0									; Unused
	endif
