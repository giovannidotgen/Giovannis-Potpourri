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
		include "Levels/SYZ/Pointers/SYZ1 - Pointers.asm"	; unused

		; LZ
		include "Levels/LZ/Pointers/LZ1 - Pointers.asm"
		include "Levels/LZ/Pointers/LZ2 - Pointers.asm"
		include "Levels/LZ/Pointers/LZ3 - Pointers.asm"
		include "Levels/LZ/Pointers/SBZ3 - Pointers.asm"

		; SLZ
		include "Levels/SLZ/Pointers/SLZ1 - Pointers.asm"
		include "Levels/SLZ/Pointers/SLZ2 - Pointers.asm"
		include "Levels/SLZ/Pointers/SLZ3 - Pointers.asm"
		include "Levels/SLZ/Pointers/SLZ1 - Pointers.asm"	; unused

		; SBZ
		include "Levels/SBZ/Pointers/SBZ1 - Pointers.asm"
		include "Levels/SBZ/Pointers/SBZ2 - Pointers.asm"
		include "Levels/SBZ/Pointers/Final - Pointers.asm"
		include "Levels/SBZ/Pointers/SBZ1 - Pointers.asm"	; unused

		zonewarning LevelLoadPointer,((Level_data_addr_RAM_end-Level_data_addr_RAM)*4)

; ===========================================================================
; Compressed level graphics - tile, primary patterns and block mappings
; ===========================================================================

GHZ_8x8_KosPM:			binclude "Levels/GHZ/Tiles/Primary.kospm"
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
Ending_128x128_KosP:		binclude "Levels/GHZ/Chunks/Ending.kosp"
	even

; ===========================================================================
; Collision data
; ===========================================================================

AngleArray:			binclude "Data/Misc/Floor/Angle Map.bin"
	even
HeightMaps:			binclude "Data/Misc/Floor/Height Maps.bin"
	even
HeightMapsRot:			binclude "Data/Misc/Floor/Height Maps Rotated.bin"
	even

; ===========================================================================
; Level collision data
; ===========================================================================

GHZ_Solid_Unc:			binclude "Levels/GHZ/Collision/1.unc"
	even
MZ_Solid_Unc:			binclude "Levels/MZ/Collision/1.unc"
	even
SYZ_Solid_Unc:			binclude "Levels/SYZ/Collision/1.unc"
	even
LZ_Solid_Unc:			binclude "Levels/LZ/Collision/1.unc"
	even
SLZ_Solid_Unc:			binclude "Levels/SLZ/Collision/1.unc"
	even
SBZ_Solid_Unc:			binclude "Levels/SBZ/Collision/1.unc"
	even

; ===========================================================================
; Level layout data
; ===========================================================================

GHZ1_Layout_Unc:		bincludeEntry "Levels/GHZ/Layout/1.unc"
	even
GHZ2_Layout_Unc:		bincludeEntry "Levels/GHZ/Layout/2.unc"
	even
GHZ3_Layout_Unc:		bincludeEntry "Levels/GHZ/Layout/3.unc"
	even
MZ1_Layout_Unc:			bincludeEntry "Levels/MZ/Layout/1.unc"
	even
MZ2_Layout_Unc:			bincludeEntry "Levels/MZ/Layout/2.unc"
	even
MZ3_Layout_Unc:			bincludeEntry "Levels/MZ/Layout/3.unc"
	even
SYZ1_Layout_Unc:		bincludeEntry "Levels/SYZ/Layout/1.unc"
	even
SYZ2_Layout_Unc:		bincludeEntry "Levels/SYZ/Layout/2.unc"
	even
SYZ3_Layout_Unc:		bincludeEntry "Levels/SYZ/Layout/3.unc"
	even
LZ1_Layout_Unc:			bincludeEntry "Levels/LZ/Layout/1.unc"
	even
LZ2_Layout_Unc:			bincludeEntry "Levels/LZ/Layout/2.unc"
	even
LZ3_Layout_Unc:			bincludeEntry "Levels/LZ/Layout/3.unc"
	even
SLZ1_Layout_Unc:		bincludeEntry "Levels/SLZ/Layout/1.unc"
	even
SLZ2_Layout_Unc:		bincludeEntry "Levels/SLZ/Layout/2.unc"
	even
SLZ3_Layout_Unc:		bincludeEntry "Levels/SLZ/Layout/3.unc"
	even
SBZ1_Layout_Unc:		bincludeEntry "Levels/SBZ/Layout/1.unc"
	even
SBZ2_Layout_Unc:		bincludeEntry "Levels/SBZ/Layout/2.unc"
	even
SBZ3_Layout_Unc:		bincludeEntry "Levels/LZ/Layout/SBZ3.unc"
	even
Ending_Layout_Unc:		bincludeEntry "Levels/GHZ/Layout/Ending.unc"
	even

; ===========================================================================
; Level objects data
; ===========================================================================

	ObjectLayoutBoundary
GHZ1_Objects_Unc:		binclude "Levels/GHZ/Object Pos/1.unc"
	ObjectLayoutBoundary
	even
GHZ2_Objects_Unc:		binclude "Levels/GHZ/Object Pos/2.unc"
	ObjectLayoutBoundary
	even
GHZ3_Objects_Unc:		binclude "Levels/GHZ/Object Pos/3.unc"
	ObjectLayoutBoundary
	even
MZ1_Objects_Unc:		binclude "Levels/MZ/Object Pos/1.unc"
	ObjectLayoutBoundary
	even
MZ2_Objects_Unc:		binclude "Levels/MZ/Object Pos/2.unc"
	ObjectLayoutBoundary
	even
MZ3_Objects_Unc:		binclude "Levels/MZ/Object Pos/3.unc"
	ObjectLayoutBoundary
	even
SYZ1_Objects_Unc:		binclude "Levels/SYZ/Object Pos/1.unc"
	ObjectLayoutBoundary
	even
SYZ2_Objects_Unc:		binclude "Levels/SYZ/Object Pos/2.unc"
	ObjectLayoutBoundary
	even
SYZ3_Objects_Unc:		binclude "Levels/SYZ/Object Pos/3.unc"
	ObjectLayoutBoundary
	even
LZ1_Objects_Unc:		binclude "Levels/LZ/Object Pos/1.unc"
	ObjectLayoutBoundary
	even
LZ2_Objects_Unc:		binclude "Levels/LZ/Object Pos/2.unc"
	ObjectLayoutBoundary
	even
LZ3_Objects_Unc:		binclude "Levels/LZ/Object Pos/3.unc"
	ObjectLayoutBoundary
	even
SLZ1_Objects_Unc:		binclude "Levels/SLZ/Object Pos/1.unc"
	ObjectLayoutBoundary
	even
SLZ2_Objects_Unc:		binclude "Levels/SLZ/Object Pos/2.unc"
	ObjectLayoutBoundary
	even
SLZ3_Objects_Unc:		binclude "Levels/SLZ/Object Pos/3.unc"
	ObjectLayoutBoundary
	even
SBZ1_Objects_Unc:		binclude "Levels/SBZ/Object Pos/1.unc"
	ObjectLayoutBoundary
	even
SBZ2_Objects_Unc:		binclude "Levels/SBZ/Object Pos/2.unc"
	ObjectLayoutBoundary
	even
SBZ3_Objects_Unc:		binclude "Levels/LZ/Object Pos/SBZ3.unc"
	ObjectLayoutBoundary
	even
Final_Objects_Unc:		binclude "Levels/SBZ/Object Pos/Final.unc"
	ObjectLayoutBoundary
	even
Ending_Objects_Unc:		binclude "Levels/GHZ/Object Pos/Ending.unc"
	ObjectLayoutBoundary
	even

; ===========================================================================
; Level rings data
; ===========================================================================

	RingLayoutBoundary
GHZ1_Rings_Unc:			binclude "Levels/GHZ/Ring Pos/1.unc"
	RingLayoutBoundary
	even
GHZ2_Rings_Unc:			binclude "Levels/GHZ/Ring Pos/2.unc"
	RingLayoutBoundary
	even
GHZ3_Rings_Unc:			binclude "Levels/GHZ/Ring Pos/3.unc"
	RingLayoutBoundary
	even
MZ1_Rings_Unc:			binclude "Levels/MZ/Ring Pos/1.unc"
	RingLayoutBoundary
	even
MZ2_Rings_Unc:			binclude "Levels/MZ/Ring Pos/2.unc"
	RingLayoutBoundary
	even
MZ3_Rings_Unc:			binclude "Levels/MZ/Ring Pos/3.unc"
	RingLayoutBoundary
	even
SYZ1_Rings_Unc:			binclude "Levels/SYZ/Ring Pos/1.unc"
	RingLayoutBoundary
	even
SYZ2_Rings_Unc:			binclude "Levels/SYZ/Ring Pos/2.unc"
	RingLayoutBoundary
	even
SYZ3_Rings_Unc:			binclude "Levels/SYZ/Ring Pos/3.unc"
	RingLayoutBoundary
	even
LZ1_Rings_Unc:			binclude "Levels/LZ/Ring Pos/1.unc"
	RingLayoutBoundary
	even
LZ2_Rings_Unc:			binclude "Levels/LZ/Ring Pos/2.unc"
	RingLayoutBoundary
	even
LZ3_Rings_Unc:			binclude "Levels/LZ/Ring Pos/3.unc"
	RingLayoutBoundary
	even
SLZ1_Rings_Unc:			binclude "Levels/SLZ/Ring Pos/1.unc"
	RingLayoutBoundary
	even
SLZ2_Rings_Unc:			binclude "Levels/SLZ/Ring Pos/2.unc"
	RingLayoutBoundary
	even
SLZ3_Rings_Unc:			binclude "Levels/SLZ/Ring Pos/3.unc"
	RingLayoutBoundary
	even
SBZ1_Rings_Unc:			binclude "Levels/SBZ/Ring Pos/1.unc"
	RingLayoutBoundary
	even
SBZ2_Rings_Unc:			binclude "Levels/SBZ/Ring Pos/2.unc"
	RingLayoutBoundary
	even
SBZ3_Rings_Unc:			binclude "Levels/LZ/Ring Pos/SBZ3.unc"
	RingLayoutBoundary
	even
Final_Rings_Unc:
	RingLayoutBoundary
	even
