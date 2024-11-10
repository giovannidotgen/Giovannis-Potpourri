; ---------------------------------------------------------------------------
; Render pylon (SLZ)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Render_Pylon:

		; move pylon
		move.w	#make_art_tile($36A,0,1),d5			; VRAM
		move.l	(a3),d0								; Camera_X_pos_copy
		add.l	d0,d0
		swap	d0
		neg.w	d0									; xpos
		move.l	4(a3),d1								; Camera_Y_pos_copy
		add.l	d1,d1
		swap	d1
		andi.w	#$3F,d1
		neg.w	d1
		addi.w	#256,d1								; ypos

		; draw pylon
		moveq	#9-1,d4								; tile count
		lea	Map_Pylon(pc),a1
		jmp	(loc_1AF76).w							; draw
; ---------------------------------------------------------------------------

		include "Objects/Pylon/Object Data/Map - Pylon.asm"