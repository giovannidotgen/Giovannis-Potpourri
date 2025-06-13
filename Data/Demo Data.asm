; ===========================================================================
; Demo Level screen data
; ===========================================================================

DemoDat_SonicTailsGHZ1:			include "Levels/GHZ/Demodata/GHZ1 - Sonic and Tails Demo.asm"
	even
DemoDat_SonicGHZ1:			include "Levels/GHZ/Demodata/GHZ1 - Sonic Demo.asm"
	even
DemoDat_TailsGHZ1:			include "Levels/GHZ/Demodata/GHZ1 - Tails Demo.asm"
	even
DemoDat_KnucklesGHZ1:			include "Levels/GHZ/Demodata/GHZ1 - Knuckles Demo.asm"
	even
DemoDat_KnucklesTailsGHZ1:		include "Levels/GHZ/Demodata/GHZ1 - Knuckles and Tails Demo.asm"
	even
DemoDat_SonicTailsMZ1:			include "Levels/MZ/Demodata/MZ1 - Sonic and Tails Demo.asm"
	even
DemoDat_SonicMZ1:			include "Levels/MZ/Demodata/MZ1 - Sonic Demo.asm"
	even
DemoDat_TailsMZ1:			include "Levels/MZ/Demodata/MZ1 - Tails Demo.asm"
	even
DemoDat_KnucklesMZ1:			include "Levels/MZ/Demodata/MZ1 - Knuckles Demo.asm"
	even
DemoDat_KnucklesTailsMZ1:		include "Levels/MZ/Demodata/MZ1 - Knuckles and Tails Demo.asm"
	even
DemoDat_SonicTailsSYZ1:			include "Levels/SYZ/Demodata/SYZ1 - Sonic and Tails Demo.asm"
	even
DemoDat_SonicSYZ1:			include "Levels/SYZ/Demodata/SYZ1 - Sonic Demo.asm"
	even
DemoDat_TailsSYZ1:			include "Levels/SYZ/Demodata/SYZ1 - Tails Demo.asm"
	even
DemoDat_KnucklesSYZ1:			include "Levels/SYZ/Demodata/SYZ1 - Knuckles Demo.asm"
	even
DemoDat_KnucklesTailsSYZ1:		include "Levels/SYZ/Demodata/SYZ1 - Knuckles and Tails Demo.asm"
	even

; ===========================================================================
; Demo Special Stage screen data
; ===========================================================================

DemoDat_SS:

		if ~~SpecialStageRotation
			include "Screens/Special Stage/Object Data/Demo/SS1 - Demo.asm"
		else
			include "Screens/Special Stage/Object Data/Demo/SS1 - Demo(Smooth).asm"
		endif

	even
