; ---------------------------------------------------------------------------
; SBZ3 (LZ4) level pointer data
; ---------------------------------------------------------------------------

		; Level init
		dc.l SBZ3_Resize								; Resize
		dc.l SBZ3_WaterResize							; Water resize
		dc.l 0										; After boss

		; Animate palette
		dc.l AnPal_LZ								; Animate palette main code
		dc.l 0										; Animate palette scripts

		; Level setup
		dc.l LZ1_ScreenInit							; Screen init
		dc.l LZ1_BackgroundInit						; Background init
		dc.l LZ1_ScreenEvent							; Screen event
		dc.l LZ1_BackgroundEvent						; Background event

		; Animate tiles
		dc.l 0										; Animate tiles init
		dc.l 0										; Animate tiles main code
		dc.l -1										; Animate tiles PLC scripts

		; Level 1st 8x8 data, 2nd 8x8 data, Blocks pointer, 1st 16x16 data, 2nd 16x16 data, Chunks pointer, 1st 128x128 data, 2nd 128x128 data, Palette, Water palette, Music
		levartptrs \
 		LZ_8x8_KosPM, \
 		0, \
 		LZ_16x16_Unc, \
 		0, \
 		0, \
 		Chunk_table, \
 		SBZ3_128x128_KosP, \
 		0, \
		PalID_SBZ3, \
		PalID_WaterSBZ3, \
		mus_SBZ

		; Level data 2
		dc.l LZ_Solid									; Level solid
		dc.l SBZ3_Layout								; Level layout
		dc.l SBZ3_Objects								; Level sprites
		dc.l SBZ3_Rings								; Level rings

		; PLC
		dc.l PLC1_LZ4_Before							; PLC1
		dc.l PLC2_LZ4_After							; PLC2
		dc.l PLCAnimals_LZ1							; PLC animals

		; Level size
		dc.w 0										; Level xstart
		dc.w $15C0									; Level xend
		dc.w 0										; Level ystart
		dc.w $720									; Level yend

		; Starting water height
		dc.w $228

		; Sonic palette, Knuckles palette
		dc.b PalID_Sonic
		dc.b PalID_Knuckles

		; Water Sonic palette, Water Knuckles palette
		dc.b PalID_WaterSonicSBZ
		dc.b PalID_WaterKnucklesSBZ

		; Players start location
		binclude "Levels/LZ/Start Location/SBZ3.bin"

		; Debug Mode
	if (GameDebug)&&(~~GameDebugAlt)
		dc.l Debug_LZ1								; Debug Mode
	else
		dc.l 0										; Unused
	endif
