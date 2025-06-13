; ---------------------------------------------------------------------------
; GHZ2 level pointer data
; ---------------------------------------------------------------------------

		; Level init
		dc.l GHZ2_Resize							; Resize
		dc.l 0									; Water resize
		dc.l 0									; After boss

		; Animate palette
		dc.l AnPal_GHZ								; Animate palette main code
		dc.l 0									; Animate palette scripts

		; Level setup
		dc.l GHZ1_ScreenInit							; Screen init
		dc.l GHZ1_BackgroundInit						; Background init
		dc.l DrawTilesAsYouMove							; Screen event
		dc.l GHZ1_BackgroundEvent						; Background event

		; Animate tiles
		dc.l 0									; Animate tiles init
		dc.l AnimateTiles_DoAniPLC						; Animate tiles main code
		dc.l AniPLC_GHZ								; Animate tiles PLC scripts

		; Level 1st 8x8 data, 2nd 8x8 data, Blocks pointer, 1st 16x16 data, 2nd 16x16 data, Chunks pointer, 1st 128x128 data, 2nd 128x128 data, Palette, Water palette, Music
		levartptrs \
		GHZ_8x8_KosPM, \
		0, \
		GHZ_16x16_Unc, \
		0, \
		0, \
		Chunk_table, \
		GHZ2_128x128_KosP, \
		0, \
		PalID_GHZ, \
		PalID_WaterGHZ, \
		mus_GHZ

		; Level data 2
		dc.l GHZ_Solid								; Level solid
		dc.l GHZ2_Layout							; Level layout
		dc.l GHZ2_Objects							; Level sprites
		dc.l GHZ2_Rings								; Level rings

		; PLC
		dc.l PLC1_GHZ2_Before							; PLC1
		dc.l PLC2_GHZ2_After							; PLC2
		dc.l PLCAnimals_GHZ1							; PLC animals

		; Level size
		dc.w $100								; Level xstart
		dc.w $20BF								; Level xend
		dc.w 0									; Level ystart
		dc.w $300								; Level yend

		; Starting water height
		dc.w $1000

		; Sonic palette, Knuckles palette
		dc.b PalID_Sonic
		dc.b PalID_Knuckles

		; Water Sonic palette, Water Knuckles palette
		dc.b PalID_WaterSonic
		dc.b PalID_WaterKnuckles

		; Players start location
		binclude "Levels/GHZ/Start Location/Sonic/2.bin"
		binclude "Levels/GHZ/Start Location/Knuckles/2.bin"

		; Debug Mode
	if (GameDebug)&&(~~GameDebugAlt)
		dc.l Debug_GHZ1								; Debug Mode
	else
		dc.l 0									; Unused
	endif
