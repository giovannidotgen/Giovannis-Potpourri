; ---------------------------------------------------------------------------
; LZ3 level pointer data
; ---------------------------------------------------------------------------

		; Level init
		dc.l LZ3_Resize								; Resize
		dc.l LZ3_WaterResize							; Water resize
		dc.l 0										; After boss

		; Animate palette
		dc.l AnPal_LZ								; Animate palette main code
		dc.l 0										; Animate palette scripts

		; Level setup
		dc.l LZ3_ScreenInit							; Screen init
		dc.l LZ1_BackgroundInit						; Background init
		dc.l LZ1_ScreenEvent							; Screen event
		dc.l LZ1_BackgroundEvent						; Background event

		; Animate tiles
		dc.l 0										; Animate tiles init
		dc.l AnimateTiles_LZ							; Animate tiles main code
		dc.l -1										; Animate tiles PLC scripts

		; Level 1st 8x8 data, 2nd 8x8 data, Blocks pointer, 1st 16x16 data, 2nd 16x16 data, Chunks pointer, 1st 128x128 data, 2nd 128x128 data, Palette, Water palette, Music
		levartptrs \
		LZ_8x8_KosPM, \
		0, \
		LZ_16x16_Unc, \
		0, \
		0, \
		Chunk_table, \
		LZ3_128x128_KosP, \
		0, \
		PalID_LZ, \
		PalID_WaterLZ, \
		mus_LZ

		; Level data 2
		dc.l LZ_Solid									; Level solid
		dc.l LZ3_Layout								; Level layout
		dc.l LZ3_Objects								; Level sprites
		dc.l LZ3_Rings								; Level rings

		; PLC
		dc.l PLC1_LZ3_Before							; PLC1
		dc.l PLC2_LZ3_After							; PLC2
		dc.l PLCAnimals_LZ1							; PLC animals

		; Level size
		dc.w $100									; Level xstart
		dc.w $222F									; Level xend
		dc.w -$100									; Level ystart
		dc.w $800									; Level yend

		; Starting water height
		dc.w $900

		; Sonic palette, Knuckles palette
		dc.b PalID_Sonic
		dc.b PalID_Knuckles

		; Water Sonic palette, Water Knuckles palette
		dc.b PalID_WaterSonicLZ
		dc.b PalID_WaterKnucklesLZ

		; Players start location
		binclude "Levels/LZ/Start Location/3.bin"

		; Debug Mode
	if (GameDebug)&&(~~GameDebugAlt)
		dc.l Debug_LZ1								; Debug Mode
	else
		dc.l 0										; Unused
	endif
