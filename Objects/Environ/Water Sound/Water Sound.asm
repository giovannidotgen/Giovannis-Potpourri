; ---------------------------------------------------------------------------
; Object 49 - waterfall sound effect (GHZ)
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Obj_WaterSound:

		; play continuous sfx
		sfxcont	sfx_Waterfall,$F						; play water sound every 16th frame

		; check delete
		jmp	(Delete_Sprite_If_Not_In_Range).w