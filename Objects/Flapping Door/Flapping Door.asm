; ---------------------------------------------------------------------------
; Object 0C - flapping door (LZ)
; ---------------------------------------------------------------------------

; Dynamic object variables
flap_time		= objoff_32 ; time between opening/closing
flap_wait		= objoff_30 ; time until change

; =============== S U B R O U T I N E =======================================

Obj_FlapDoor:

		; init
		move.l	#Map_Flap,mappings(a0)
		move.w	#make_art_tile($328,2,0),art_tile(a0)
		ori.b	#rfCoord,render_flags(a0)						; use screen coordinates
		move.w	#bytes_to_word(80/2,80/2),height_pixels(a0)	; set height and width
		move.l	#.openclose,address(a0)
		moveq	#0,d0
		move.b	subtype(a0),d0								; get object type
		add.w	d0,d0										; multiply by 60 (1 second)
		add.w	d0,d0
		move.w	d0,d1
		lsl.w	#4,d0
		sub.w	d1,d0
		move.w	d0,flap_time(a0)								; set flap delay time

.openclose
		subq.w	#1,flap_wait(a0)								; decrement time delay
		bpl.s	.wait										; if time remains, branch
		move.w	flap_time(a0),flap_wait(a0)					; reset time delay
		bchg	#0,anim(a0)									; open/close door
		tst.b	render_flags(a0)									; object visible on the screen?
		bpl.s	.wait										; if not, branch
		sfx	sfx_Door											; play door sound

.wait
		lea	Ani_Flap(pc),a1
		jsr	(Animate_Sprite).w
		clr.b	(WindTunnel_holding_flag).w						; enable wind tunnel
		tst.b	mapping_frame(a0)								; is the door open?
		bne.s	.display										; if yes, branch
		move.w	(Player_1+x_pos).w,d0
		cmp.w	x_pos(a0),d0									; has Sonic passed through the door?
		bhs.s	.display										; if yes, branch
		move.b	#3,(WindTunnel_holding_flag).w				; Player_1 + Player_2 (bit set 0 + 1)	; disable wind tunnel

.solid
		moveq	#$13,d1
		moveq	#$20,d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4
		jsr	(SolidObjectFull).w								; make the door solid

.display
		jmp	(Sprite_OnScreen_Test).w
; ---------------------------------------------------------------------------

		include "Objects/Flapping Door/Object Data/Anim - Flapping Door.asm"
		include "Objects/Flapping Door/Object Data/Map - Flapping Door.asm"
