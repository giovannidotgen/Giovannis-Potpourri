; ---------------------------------------------------------------------------
; Object 49 - waterfall sound effect (GHZ)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Obj_WaterSound:
		moveq	#signextendB(sfx_Waterfall),d0
		moveq	#$F,d1							; play water sound
		jsr	(Play_SFX_Continuous).w
		jmp	(Delete_Sprite_If_Not_In_Range).w