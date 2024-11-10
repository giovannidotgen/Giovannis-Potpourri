; ---------------------------------------------------------------------------
; Object 32 - buttons (MZ, SYZ, LZ, SBZ)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Obj_Button:

		; init
		move.l	#Map_Button,mappings(a0)
		move.w	#make_art_tile($47C,0,0),art_tile(a0)
		cmpi.b	#LevelID_MZ,(Current_zone).w					; is level Marble Zone?
		bne.s	.notMZ										; if not, branch
		ori.w	#palette_line_2,art_tile(a0)					; MZ specific code

.notMZ
		move.b	#4,render_flags(a0)							; use screen coordinates
		move.l	#bytes_word_to_long(24/2,32/2,priority_4),height_pixels(a0)	; set height, width and priority
		addq.w	#4,y_pos(a0)

		; check
		btst	#5,subtype(a0)									; $20?
		beq.s	loc_2C5B8
		move.l	#sub_2C62C,address(a0)						; HCZ only?
		bra.s	sub_2C62C
; ---------------------------------------------------------------------------

loc_2C5B8:
		move.l	#loc_2C5BE,address(a0)

loc_2C5BE:
		tst.b	render_flags(a0)									; object visible on the screen?
		bpl.s	loc_2C626									; if not, branch
		moveq	#(32/2)+$B,d1								; width
		moveq	#(10/2)+1,d3									; height+1
		move.w	x_pos(a0),d4
		jsr	(SolidObjectTop).w
		clr.b	mapping_frame(a0)
		moveq	#$F,d0
		and.b	subtype(a0),d0
		lea	(Level_trigger_array).w,a3
		adda.w	d0,a3
		moveq	#0,d3
		btst	#6,subtype(a0)									; $40?
		beq.s	+
		moveq	#7,d3
+
		tst.b	subtype(a0)
		bpl.s	+
		bsr.w	But_MZBlock
		bne.s	loc_2C612
+
		moveq	#standing_mask,d0
		and.b	status(a0),d0									; is Sonic or Tails standing on the object?
		bne.s	loc_2C612									; if not, branch
		btst	#4,subtype(a0)									; $10?
		bne.s	loc_2C626
		bclr	d3,(a3)
		bra.s	loc_2C626
; ---------------------------------------------------------------------------

loc_2C612:
		tst.b	(a3)
		bne.s	+
		sfx	sfx_Switch
+		bset	d3,(a3)
		move.b	#1,mapping_frame(a0)

loc_2C626:
		jmp	(Sprite_OnScreen_Test).w

; =============== S U B R O U T I N E =======================================

sub_2C62C:
		tst.b	render_flags(a0)									; object visible on the screen?
		bpl.s	loc_2C690									; if not, branch
		moveq	#32/2,d1										; width
		moveq	#(10/2)+1,d3									; height+1
		move.w	x_pos(a0),d4
		jsr	(SolidObjectTop).w
		clr.b	mapping_frame(a0)
		moveq	#$F,d0
		and.b	subtype(a0),d0
		lea	(Level_trigger_array).w,a3
		adda.w	d0,a3
		moveq	#0,d3
		btst	#6,subtype(a0)									; $40?
		beq.s	+
		moveq	#7,d3
+
		moveq	#standing_mask,d0
		and.b	status(a0),d0									; is Sonic or Tails standing on the object?
		bne.s	loc_2C67C									; if not, branch
		btst	#4,subtype(a0)									; $10?
		bne.s	loc_2C690
		bclr	d3,(a3)
		bra.s	loc_2C690
; ---------------------------------------------------------------------------

loc_2C67C:
		tst.b	(a3)
		bne.s	+
		sfx	sfx_Switch
+		bset	d3,(a3)
		move.b	#1,mapping_frame(a0)

loc_2C690:
		jmp	(Sprite_OnScreen_Test).w

; ---------------------------------------------------------------------------
; Check pushable block (MZ)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

But_MZBlock:
		move.w	(Push_block_addr).w,d0
		beq.s	.fail											; if zero, branch

		; load pushable block address
		movea.w	d0,a1
		lea	.data(pc),a2
		jmp	(Check_InTheirRange).w
; ---------------------------------------------------------------------------

.data
		dc.w -32, 64	; xpos	; xpos (32x32)
		dc.w -24, 48	; ypos	; ypos (24x24)
; ---------------------------------------------------------------------------

.fail
		rts
; ---------------------------------------------------------------------------

		include "Objects/Button/Object Data/Map - Button.asm"