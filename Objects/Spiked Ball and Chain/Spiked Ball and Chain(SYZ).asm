; ---------------------------------------------------------------------------
; Object 57 - spiked balls (SYZ)
; ---------------------------------------------------------------------------

; Dynamic object variables
sball_radius		= objoff_3C ; radius (1 byte)
sball_speed		= objoff_3E ; rate of spin (2 bytes)

; =============== S U B R O U T I N E =======================================

Obj_SpikeBall:

		; init
		move.l	#Map_SBall,mappings(a0)
		move.l	#bytes_to_long(rfCoord+rfStatic,0,16/2,16/2),render_flags(a0)		; set screen coordinates, static flag and height and width
		move.l	#words_to_long(priority_4,make_art_tile($3BA,0,0)),priority(a0)	; set priority and art_tile

		; subtype
		moveq	#signextendB($F0),d1							; read only the 1st digit
		and.b	subtype(a0),d1								; get object type
		ext.w	d1
		asl.w	#3,d1										; multiply by 8
		move.w	d1,sball_speed(a0)								; set object twirl speed
		move.b	status(a0),d0
		ror.b	#2,d0
		andi.b	#$C0,d0
		move.b	d0,objoff_3C(a0)

		; get RAM slot
		getobjectRAMslot a2
		bmi.s	.notfree										; branch, if object RAM slots ended

		; get current object address
		movea.w	a0,a1										; load current object to a1
		movea.w	a0,a3										; creates a linked object list

		; get number of spike balls
		moveq	#7,d1										; read only the 2nd digit
		and.b	subtype(a0),d1								; get object type
		subq.w	#1,d1										; set chain length (type-1)
		blo.s		.notfree
		btst	#3,subtype(a0)									; 8?
		beq.s	.makechain
		subq.w	#1,d1
		blo.s		.notfree

.makechain

		; create spike balls object

.find
		lea	next_object(a1),a1									; goto next object RAM slot
		tst.l	address(a1)										; is object RAM slot empty?
		dbeq	d0,.find										; if not, branch
		bne.s	.notfree										; branch, if object RAM slot is not empty
		subq.w	#1,d0										; dbeq didn't subtract sprite table so we'll do it ourselves

		; load object
		move.w	a3,parent3(a1)
		movea.w	a1,a3
		move.l	#Obj_SpikeBall_Child,address(a1)
		move.l	mappings(a0),mappings(a1)
		move.w	art_tile(a0),art_tile(a1)
		move.b	render_flags(a0),render_flags(a1)
		move.w	priority(a0),priority(a1)
		move.w	height_pixels(a0),height_pixels(a1)				; set height and width
		move.b	#$18|$80,collision_flags(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		tst.w	d0											; object RAM slots ended?
		dbmi	d1,.makechain								; if not, repeat for length of chain

.notfree
		move.l	#.main,address(a0)

.main
		move.w	sball_speed(a0),d0
		sub.w	d0,objoff_3C(a0)
		jmp	(Sprite_CheckDelete).w

; =============== S U B R O U T I N E =======================================

Obj_SpikeBall_Child:
		movea.w	parent3(a0),a1
		move.b	objoff_3C(a1),objoff_3C(a0)					; speed
		moveq	#4,d2									; radius
		jsr	(MoveSprite_CircularSimple).w
		jmp	(Child_DrawTouch_Sprite).w
; ---------------------------------------------------------------------------

		include "Objects/Spiked Ball and Chain/Object Data/Map - Spiked Ball and Chain (SYZ).asm"
