; ---------------------------------------------------------------------------
; Ending pointer data
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

LevelLoadPointer_Ending:

		; Level init
		dc.l 0										; Resize
		dc.l 0										; Water resize
		dc.l 0										; After boss

		; Animate palette
		dc.l AnPal_GHZ								; Animate palette main code
		dc.l 0										; Animate palette scripts

		; Level setup
		dc.l GHZ1_ScreenInit							; Screen init
		dc.l Ending_BackgroundInit					; Background init
		dc.l DrawTilesAsYouMove						; Screen event
		dc.l Ending_BackgroundEvent					; Background event

		; Animate tiles
		dc.l 0										; Animate tiles init
		dc.l AnimateTiles_DoAniPLC					; Animate tiles main code
		dc.l AniPLC_Ending							; Animate tiles PLC scripts

		; Level 1st 8x8 data, 2nd 8x8 data, Blocks pointer, 1st 16x16 data, 2nd 16x16 data, Chunks pointer, 1st 128x128 data, 2nd 128x128 data, Palette, Water palette, Music
		levartptrs \
 		GHZ_8x8_KosPM, \
 		0, \
 		GHZ_16x16_Unc, \
 		0, \
 		0, \
 		Chunk_table, \
 		Ending_128x128_KosP, \
 		0, \
		PalID_Ending, \
		PalID_WaterGHZ, \
		mus_Ending

		; Level data 2
		dc.l GHZ_Solid								; Level solid
		dc.l Ending_Layout							; Level layout
		dc.l Ending_Sprites							; Level sprites
		dc.l 0										; Level rings

		; PLC
		dc.l -1										; PLC1
		dc.l -1										; PLC2
		dc.l -1										; PLC animals

		; Level size
		dc.w 0										; Level xstart
		dc.w $DC0									; Level xend
		dc.w $110									; Level ystart
		dc.w $110									; Level yend

		; Starting water height
		dc.w $1000

		; Sonic palette, Knuckles palette
		dc.b PalID_Sonic
		dc.b PalID_Knuckles

		; Water Sonic palette, Water Knuckles palette
		dc.b PalID_WaterSonic
		dc.b PalID_WaterKnuckles

		; Players start location
		dc.w $EE0-$60								; xpos
		dc.w $16C									; ypos

		; Debug Mode
	if (GameDebug)&&(~~GameDebugAlt)
		dc.l Debug_Ending							; Debug Mode
	else
		dc.l 0										; Unused
	endif

LevelLoadPointer_Ending_end

	if (LevelLoadPointer_Ending_end-LevelLoadPointer_Ending)<>(Level_data_addr_RAM_end-Level_data_addr_RAM)
		fatal "Warning! The buffer size is different!"
	endif
