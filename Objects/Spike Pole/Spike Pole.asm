; ---------------------------------------------------------------------------
; Object 17 - helix of spikes on a pole (GHZ)
; ---------------------------------------------------------------------------

; Dynamic object variables
hsp_origX					= objoff_12	; original x-axis position

; =============== S U B R O U T I N E =======================================

Obj_SpikePole:

		; init
		lea	ObjDat_SpikePole(pc),a1
		jsr	(SetUp_ObjAttributes).w
		bset	#6,render_flags(a0)							; set multi-draw flag
;		move.w	x_pos(a0),hsp_origX(a0)					; save xpos
		move.l	#.action,address(a0)						; "

		; create sub objects
		moveq	#0,d0
		move.b	width_pixels(a0),d0
		move.w	x_pos(a0),d1
		sub.w	d0,d1									; move spikes back
		moveq	#16,d2									; +16 pixels

		; load 8 spike pole spikes
		move.w	#8,mainspr_childsprites(a0)
		lea	sub2_x_pos(a0),a1
		lea	y_pos(a0),a2

	rept 7
		move.w	d1,(a1)+									; set xpos
		move.w	(a2),(a1)									; set ypos
		addq.w	#4,a1									; skip frame
		add.w	d2,d1									; +16 pixels
	endr

		; last spike
		move.w	d1,(a1)+									; set xpos
		move.w	(a2),(a1)									; set ypos

.action
		move.b	(Spikes_frame).w,d0
		moveq	#7,d1									; max spikes frames

		set	.a,sub2_mapframe

	rept 7
		move.b	d0,.a(a0)									; set frame
		addq.b	#1,d0									; next frame
		and.b	d1,d0									; max spikes frames
		set	.a,.a + next_subspr
	endr

		; last spike
		move.b	d0,.a(a0)									; set frame

		; collision move
		move.b	(Spikes_frame).w,d2						; spike frame
		neg.b	d2										; change direction of movement
		and.w	d1,d2									; max spikes
		move.w	sub2_x_pos(a0),d0						; get spike pole spikes xpos
		asl.w	#4,d2									; +16 pixels
		add.w	d2,d0									; "
		move.w	d0,x_pos(a0)								; set collision xpos

		; check players
		lea	.range(pc),a1
		jsr	(Check_PlayerInRange).w
		tst.l	d0											; check Tails and Sonic address
		beq.s	.draw									; if neither player is in range, don't do anything
		tst.w	d0										; is Sonic?
		beq.s	.notp1									; if it's not Sonic, branch
		movea.w	d0,a1									; get Sonic address
		move.l	d0,-(sp)									; save players address
		jsr	(HurtCharacter_Directly2).w					; hurt character
		move.l	(sp)+,d0									; restore players address

.notp1
		swap	d0										; get Tails address
		tst.w	d0										; is Tails?
		beq.s	.draw									; if it's not Tails, branch
		movea.w	d0,a1									; get Tails address
		jsr	(HurtCharacter_Directly2).w					; hurt character

.draw
		moveq	#-$80,d0								; round down to nearest $80
		and.w	sub6_x_pos(a0),d0						; get object position (hsp_origX)
		jmp	(Sprite_OnScreen_Test2).w
; ---------------------------------------------------------------------------

.range
		dc.w -8, 16	; xpos (8x8)
		dc.w -32, 64	; ypos (32x32)

; =============== S U B R O U T I N E =======================================

; mapping
ObjDat_SpikePole:	subObjData Map_SpikePole, $3B0, 2, 0, 16, 128, 3, 0, 0
; ---------------------------------------------------------------------------

		include "Objects/Spike Pole/Object Data/Map - Spike Pole.asm"
