; ===========================================================================
; Levels pointer data
; ===========================================================================

LevelLoadPointer:

		; GHZ
		include "Levels/GHZ/Pointers/GHZ1 - Pointers.asm"
		include "Levels/GHZ/Pointers/GHZ2 - Pointers.asm"
		include "Levels/GHZ/Pointers/GHZ3 - Pointers.asm"
		include "Levels/GHZ/Pointers/GHZ1 - Pointers.asm"	; unused

		; MZ
		include "Levels/MZ/Pointers/MZ1 - Pointers.asm"
		include "Levels/MZ/Pointers/MZ2 - Pointers.asm"
		include "Levels/MZ/Pointers/MZ3 - Pointers.asm"
		include "Levels/MZ/Pointers/MZ1 - Pointers.asm"		; unused

		; SYZ
		include "Levels/SYZ/Pointers/SYZ1 - Pointers.asm"
		include "Levels/SYZ/Pointers/SYZ2 - Pointers.asm"
		include "Levels/SYZ/Pointers/SYZ3 - Pointers.asm"
		include "Levels/SYZ/Pointers/SYZ1 - Pointers.asm"		; unused

		; LZ
		include "Levels/LZ/Pointers/LZ1 - Pointers.asm"
		include "Levels/LZ/Pointers/LZ2 - Pointers.asm"
		include "Levels/LZ/Pointers/LZ3 - Pointers.asm"
		include "Levels/LZ/Pointers/SBZ3 - Pointers.asm"

		; SLZ
		include "Levels/SLZ/Pointers/SLZ1 - Pointers.asm"
		include "Levels/SLZ/Pointers/SLZ2 - Pointers.asm"
		include "Levels/SLZ/Pointers/SLZ3 - Pointers.asm"
		include "Levels/SLZ/Pointers/SLZ1 - Pointers.asm"		; unused

		; SBZ
		include "Levels/SBZ/Pointers/SBZ1 - Pointers.asm"
		include "Levels/SBZ/Pointers/SBZ2 - Pointers.asm"
		include "Levels/SBZ/Pointers/Final - Pointers.asm"
		include "Levels/SBZ/Pointers/SBZ1 - Pointers.asm"		; unused

		zonewarning LevelLoadPointer,((Level_data_addr_RAM_end-Level_data_addr_RAM)*4)

; ===========================================================================
; Compressed level graphics - tile, primary patterns and block mappings
; ===========================================================================

GHZ_8x8_KosPM:		binclude "Levels/GHZ/Tiles/Primary.kospm"
	even
GHZ_16x16_Unc:			binclude "Levels/GHZ/Blocks/Primary.unc"
	even
GHZ1_128x128_KosP:		binclude "Levels/GHZ/Chunks/1.kosp"
	even
GHZ2_128x128_KosP:		binclude "Levels/GHZ/Chunks/2.kosp"
	even
GHZ3_128x128_KosP:		binclude "Levels/GHZ/Chunks/3.kosp"
	even
MZ_8x8_KosPM:			binclude "Levels/MZ/Tiles/Primary.kospm"
	even
MZ_16x16_Unc:			binclude "Levels/MZ/Blocks/Primary.unc"
	even
MZ1_128x128_KosP:		binclude "Levels/MZ/Chunks/1.kosp"
	even
MZ3_128x128_KosP:		binclude "Levels/MZ/Chunks/3.kosp"
	even
SYZ_8x8_KosPM:			binclude "Levels/SYZ/Tiles/Primary.kospm"
	even
SYZ_16x16_Unc:			binclude "Levels/SYZ/Blocks/Primary.unc"
	even
SYZ1_128x128_KosP:		binclude "Levels/SYZ/Chunks/1.kosp"
	even
SYZ2_128x128_KosP:		binclude "Levels/SYZ/Chunks/2.kosp"
	even
SYZ3_128x128_KosP:		binclude "Levels/SYZ/Chunks/3.kosp"
	even
LZ_8x8_KosPM:			binclude "Levels/LZ/Tiles/Primary.kospm"
	even
LZ_16x16_Unc:			binclude "Levels/LZ/Blocks/Primary.unc"
	even
LZ1_128x128_KosP:		binclude "Levels/LZ/Chunks/1.kosp"
	even
LZ2_128x128_KosP:		binclude "Levels/LZ/Chunks/2.kosp"
	even
LZ3_128x128_KosP:		binclude "Levels/LZ/Chunks/3.kosp"
	even
SBZ3_128x128_KosP:		binclude "Levels/LZ/Chunks/SBZ3.kosp"
	even
SLZ_8x8_KosPM:			binclude "Levels/SLZ/Tiles/Primary.kospm"
	even
SLZ_16x16_Unc:			binclude "Levels/SLZ/Blocks/Primary.unc"
	even
SLZ_128x128_KosP:		binclude "Levels/SLZ/Chunks/Primary.kosp"
	even
SBZ_8x8_KosPM:			binclude "Levels/SBZ/Tiles/Primary.kospm"
	even
SBZ_16x16_Unc:			binclude "Levels/SBZ/Blocks/Primary.unc"
	even
SBZ_128x128_KosP:		binclude "Levels/SBZ/Chunks/Primary.kosp"
	even
Ending_128x128_KosP:	binclude "Levels/GHZ/Chunks/Ending.kosp"
	even

; ===========================================================================
; Collision data
; ===========================================================================

AngleArray:				binclude "Misc Data/Angle Map.bin"
	even
HeightMaps:				binclude "Misc Data/Height Maps.bin"
	even
HeightMapsRot:			binclude "Misc Data/Height Maps Rotated.bin"
	even

; ===========================================================================
; Level collision data
; ===========================================================================

GHZ_Solid:				binclude "Levels/GHZ/Collision/1.bin"
	even
MZ_Solid:				binclude "Levels/MZ/Collision/1.bin"
	even
SYZ_Solid:				binclude "Levels/SYZ/Collision/1.bin"
	even
LZ_Solid:				binclude "Levels/LZ/Collision/1.bin"
	even
SLZ_Solid:				binclude "Levels/SLZ/Collision/1.bin"
	even
SBZ_Solid:				binclude "Levels/SBZ/Collision/1.bin"
	even

; ===========================================================================
; Level layout data
; ===========================================================================

GHZ1_Layout:			bincludeEntry "Levels/GHZ/Layout/1.bin"
	even
GHZ2_Layout:			bincludeEntry "Levels/GHZ/Layout/2.bin"
	even
GHZ3_Layout:			bincludeEntry "Levels/GHZ/Layout/3.bin"
	even
MZ1_Layout:				bincludeEntry "Levels/MZ/Layout/1.bin"
	even
MZ2_Layout:				bincludeEntry "Levels/MZ/Layout/2.bin"
	even
MZ3_Layout:				bincludeEntry "Levels/MZ/Layout/3.bin"
	even
SYZ1_Layout:				bincludeEntry "Levels/SYZ/Layout/1.bin"
	even
SYZ2_Layout:			bincludeEntry "Levels/SYZ/Layout/2.bin"
	even
SYZ3_Layout:			bincludeEntry "Levels/SYZ/Layout/3.bin"
	even
LZ1_Layout:				bincludeEntry "Levels/LZ/Layout/1.bin"
	even
LZ2_Layout:				bincludeEntry "Levels/LZ/Layout/2.bin"
	even
LZ3_Layout:				bincludeEntry "Levels/LZ/Layout/3.bin"
	even
SLZ1_Layout:				bincludeEntry "Levels/SLZ/Layout/1.bin"
	even
SLZ2_Layout:			bincludeEntry "Levels/SLZ/Layout/2.bin"
	even
SLZ3_Layout:				bincludeEntry "Levels/SLZ/Layout/3.bin"
	even
SBZ1_Layout:				bincludeEntry "Levels/SBZ/Layout/1.bin"
	even
SBZ2_Layout:			bincludeEntry "Levels/SBZ/Layout/2.bin"
	even
SBZ3_Layout:			bincludeEntry "Levels/LZ/Layout/SBZ3.bin"
	even
Ending_Layout:			bincludeEntry "Levels/GHZ/Layout/Ending.bin"
	even

; ===========================================================================
; Level objects data
; ===========================================================================

	ObjectLayoutBoundary
GHZ1_Sprites:			binclude "Levels/GHZ/Object Pos/1.bin"
	ObjectLayoutBoundary
	even
GHZ2_Sprites:			binclude "Levels/GHZ/Object Pos/2.bin"
	ObjectLayoutBoundary
	even
GHZ3_Sprites:			binclude "Levels/GHZ/Object Pos/3.bin"
	ObjectLayoutBoundary
	even
MZ1_Sprites:				binclude "Levels/MZ/Object Pos/1.bin"
	ObjectLayoutBoundary
	even
MZ2_Sprites:				binclude "Levels/MZ/Object Pos/2.bin"
	ObjectLayoutBoundary
	even
MZ3_Sprites:				binclude "Levels/MZ/Object Pos/3.bin"
	ObjectLayoutBoundary
	even
SYZ1_Sprites:			binclude "Levels/SYZ/Object Pos/1.bin"
	ObjectLayoutBoundary
	even
SYZ2_Sprites:			binclude "Levels/SYZ/Object Pos/2.bin"
	ObjectLayoutBoundary
	even
SYZ3_Sprites:			binclude "Levels/SYZ/Object Pos/3.bin"
	ObjectLayoutBoundary
	even
LZ1_Sprites:				binclude "Levels/LZ/Object Pos/1.bin"
	ObjectLayoutBoundary
	even
LZ2_Sprites:				binclude "Levels/LZ/Object Pos/2.bin"
	ObjectLayoutBoundary
	even
LZ3_Sprites:				binclude "Levels/LZ/Object Pos/3.bin"
	ObjectLayoutBoundary
	even
SLZ1_Sprites:				binclude "Levels/SLZ/Object Pos/1.bin"
	ObjectLayoutBoundary
	even
SLZ2_Sprites:			binclude "Levels/SLZ/Object Pos/2.bin"
	ObjectLayoutBoundary
	even
SLZ3_Sprites:			binclude "Levels/SLZ/Object Pos/3.bin"
	ObjectLayoutBoundary
	even
SBZ1_Sprites:			binclude "Levels/SBZ/Object Pos/1.bin"
	ObjectLayoutBoundary
	even
SBZ2_Sprites:			binclude "Levels/SBZ/Object Pos/2.bin"
	ObjectLayoutBoundary
	even
SBZ3_Sprites:			binclude "Levels/LZ/Object Pos/SBZ3.bin"
	ObjectLayoutBoundary
	even
Final_Sprites:			binclude "Levels/SBZ/Object Pos/Final.bin"
	ObjectLayoutBoundary
	even
Ending_Sprites:			binclude "Levels/GHZ/Object Pos/Ending.bin"
	ObjectLayoutBoundary
	even

; ===========================================================================
; Level rings data
; ===========================================================================

	RingLayoutBoundary
GHZ1_Rings:				binclude "Levels/GHZ/Ring Pos/1.bin"
	RingLayoutBoundary
	even
GHZ2_Rings:				binclude "Levels/GHZ/Ring Pos/2.bin"
	RingLayoutBoundary
	even
GHZ3_Rings:				binclude "Levels/GHZ/Ring Pos/3.bin"
	RingLayoutBoundary
	even
MZ1_Rings:				binclude "Levels/MZ/Ring Pos/1.bin"
	RingLayoutBoundary
	even
MZ2_Rings:				binclude "Levels/MZ/Ring Pos/2.bin"
	RingLayoutBoundary
	even
MZ3_Rings:				binclude "Levels/MZ/Ring Pos/3.bin"
	RingLayoutBoundary
	even
SYZ1_Rings:				binclude "Levels/SYZ/Ring Pos/1.bin"
	RingLayoutBoundary
	even
SYZ2_Rings:				binclude "Levels/SYZ/Ring Pos/2.bin"
	RingLayoutBoundary
	even
SYZ3_Rings:				binclude "Levels/SYZ/Ring Pos/3.bin"
	RingLayoutBoundary
	even
LZ1_Rings:				binclude "Levels/LZ/Ring Pos/1.bin"
	RingLayoutBoundary
	even
LZ2_Rings:				binclude "Levels/LZ/Ring Pos/2.bin"
	RingLayoutBoundary
	even
LZ3_Rings:				binclude "Levels/LZ/Ring Pos/3.bin"
	RingLayoutBoundary
	even
SLZ1_Rings:				binclude "Levels/SLZ/Ring Pos/1.bin"
	RingLayoutBoundary
	even
SLZ2_Rings:				binclude "Levels/SLZ/Ring Pos/2.bin"
	RingLayoutBoundary
	even
SLZ3_Rings:				binclude "Levels/SLZ/Ring Pos/3.bin"
	RingLayoutBoundary
	even
SBZ1_Rings:				binclude "Levels/SBZ/Ring Pos/1.bin"
	RingLayoutBoundary
	even
SBZ2_Rings:				binclude "Levels/SBZ/Ring Pos/2.bin"
	RingLayoutBoundary
	even
SBZ3_Rings:				binclude "Levels/LZ/Ring Pos/SBZ3.bin"
	RingLayoutBoundary
	even
Final_Rings:
	RingLayoutBoundary
	even
