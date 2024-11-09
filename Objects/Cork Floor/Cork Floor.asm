; ---------------------------------------------------------------------------
; Cork Floor (Object)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Obj_CorkFloor:

		; init
		move.l	#Map_CorkFloor,mappings(a0)
		move.w	#make_art_tile(1,2,0),art_tile(a0)
		move.b	#4,render_flags(a0)							; use screen coordinates
		move.l	#bytes_word_to_long(80/2,32/2,priority_5),height_pixels(a0)	; set height, width and priority
		move.l	#CorkFloor_Speeds,objoff_3C(a0)

		; check
		tst.b	subtype(a0)
		bne.s	.top
		move.l	#CorkFloor_Bottom,address(a0)					; break from the bottom
		bra.w	CorkFloor_Bottom
; ---------------------------------------------------------------------------

.top
		move.l	#.solid,address(a0)							; break from the top

.solid
		move.w	(Chain_bonus_counter).w,objoff_38(a0)
		move.b	(Player_1+anim).w,objoff_34(a0)
		move.b	(Player_2+anim).w,objoff_36(a0)
		moveq	#$B,d1
		add.b	width_pixels(a0),d1
		moveq	#0,d2
		move.b	height_pixels(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4
		jsr	(SolidObjectFull).w
		moveq	#standing_mask,d0
		and.b	status(a0),d0
		bne.s	.smash

.draw
		jmp	(Sprite_OnScreen_Test).w
; ---------------------------------------------------------------------------

.smash
		cmpi.b	#p1_standing|p2_standing,d0					; is Sonic and Tails standing on the object?
		bne.s	.checkroll2									; if not, branch
		cmpi.b	#AniIDSonAni_Roll,objoff_34(a0)				; check player 1
		beq.s	.checkroll
		cmpi.b	#AniIDSonAni_Roll,objoff_36(a0)				; check player 2
		bne.s	.draw

.checkroll
		lea	(Player_1).w,a1									; a1=character
		move.b	objoff_34(a0),d0
		bsr.s	.sonicroll
		lea	(Player_2).w,a1									; a1=character
		move.b	objoff_36(a0),d0
		bsr.s	.sonicroll
		bra.s	.getbonus
; ---------------------------------------------------------------------------

.checkroll2
		move.b	d0,d1
		andi.b	#p1_standing,d1
		beq.s	.getbonus2
		cmpi.b	#AniIDSonAni_Roll,objoff_34(a0)
		bne.s	.draw
		lea	(Player_1).w,a1									; a1=character
		bsr.s	.tailsroll
		bra.s	.getbonus

; =============== S U B R O U T I N E =======================================

.sonicroll
		cmpi.b	#AniIDSonAni_Roll,d0
		bne.s	.notroll

.tailsroll
		bset	#Status_Roll,status(a1)
		move.w	#bytes_to_word(28/2,14/2),y_radius(a1)			; set y_radius and x_radius
		move.b	#AniIDSonAni_Roll,anim(a1)
		move.w	#-$300,y_vel(a1)

.notroll
		bset	#Status_InAir,status(a1)
		bclr	#Status_OnObj,status(a1)
		move.b	#PlayerID_Control,routine(a1)
		rts

; =============== S U B R O U T I N E =======================================

.getbonus2
		andi.b	#p2_standing,d0
		beq.s	.draw
		cmpi.b	#AniIDSonAni_Roll,objoff_36(a0)
		bne.w	.draw
		lea	(Player_2).w,a1									; a1=character
		bsr.s	.tailsroll

.getbonus
		move.w	objoff_38(a0),(Chain_bonus_counter).w
		andi.b	#$E7,status(a0)

		; break
		movea.l	objoff_3C(a0),a4
		addq.b	#1,mapping_frame(a0)
		move.l	#.fall,address(a0)
		jsr	(BreakObjectToPieces).l

		; draw score...

.fall
		jsr	(MoveSprite2).w
		addi.w	#$18,y_vel(a0)
		tst.b	render_flags(a0)									; object visible on the screen?
		bpl.s	.delete										; if not, branch
		jmp	(Draw_Sprite).w
; ---------------------------------------------------------------------------

.delete
		jmp	(Delete_Current_Sprite).w

; =============== S U B R O U T I N E =======================================

CorkFloor_Bottom:
		move.w	(Player_1+y_vel).w,objoff_30(a0)
		move.w	(Player_2+y_vel).w,objoff_32(a0)
		moveq	#$B,d1
		add.b	width_pixels(a0),d1
		moveq	#0,d2
		move.b	height_pixels(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4
		jsr	(SolidObjectFull).w
		swap	d6
		andi.w	#touch_bottom_mask,d6
		bne.s	.smash

.draw
		jmp	(Sprite_OnScreen_Test).w
; ---------------------------------------------------------------------------

.smash
		move.b	d6,d0
		andi.b	#p1_touch_bottom,d0
		beq.s	.p2
		lea	(Player_1).w,a1									; a1=character
		move.w	objoff_30(a0),y_vel(a1)
		andi.b	#p2_touch_bottom,d6
		beq.s	.break
		lea	(Player_2).w,a1									; a1=character
		move.w	objoff_32(a0),y_vel(a1)
		bra.s	.break
; ---------------------------------------------------------------------------

.p2
		andi.b	#p2_touch_bottom,d6
		beq.s	.draw
		lea	(Player_2).w,a1									; a1=character
		move.w	objoff_32(a0),y_vel(a1)

.break

		; clear player standing
		jsr	(Displace_PlayerOffObject).w						; release Sonic from object

		; break
		movea.l	objoff_3C(a0),a4
		addq.b	#1,mapping_frame(a0)
		move.l	#Obj_CorkFloor.fall,address(a0)
		jsr	(BreakObjectToPieces).l
		bra.w	Obj_CorkFloor.fall

; =============== S U B R O U T I N E =======================================

CorkFloor_Speeds:

		; x-speed, y-speed
		dc.w -$100, -$200
		dc.w $100, -$200
		dc.w -$E0, -$1C0
		dc.w $E0, -$1C0
		dc.w -$C0, -$180
		dc.w $C0, -$180
		dc.w -$A0, -$140
		dc.w $A0, -$140
		dc.w -$80, -$100
		dc.w $80, -$100
		dc.w -$60,  -$C0
		dc.w $60,  -$C0
; ---------------------------------------------------------------------------

		include "Objects/Cork Floor/Object Data/Map - Cork Floor.asm"
