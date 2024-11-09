; ---------------------------------------------------------------------------
; Object 3B - purple rock (GHZ)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Obj_PurpleRock:

		; init
		move.l	#Map_PRock,mappings(a0)
		move.l	#bytes_to_long(rfCoord,0,40/2,48/2),render_flags(a0)				; set screen coordinates flag and height and width
		move.l	#words_to_long(priority_4,make_art_tile($380,3,0)),priority(a0)	; set priority and art_tile
		move.l	#.solid,address(a0)

.solid
		moveq	#(32/2)+$B,d1					; width
		moveq	#32/2,d2						; height
		move.w	d2,d3
		addq.w	#1,d3							; height+1
		move.w	x_pos(a0),d4
		jsr	(SolidObjectFull).w

		; draw
		jmp	(Sprite_OnScreen_Test).w
; ---------------------------------------------------------------------------

		include "Objects/Purple Rock/Object Data/Map - Purple Rock.asm"