; ===========================================================================
; Enigma compressed Main data
; ===========================================================================


; ===========================================================================
; Enigma compressed Sega screen data
; ===========================================================================

MapEni_Sega:				binclude "Screens/Sega/Enigma Map/Foreground.eni"
	even
MapEni_SegaProto:			binclude "Screens/Sega Proto/Enigma Map/Foreground.eni"
	even

; ===========================================================================
; Enigma compressed Title screen data
; ===========================================================================

MapEni_TitleFG:				binclude "Screens/Title/Enigma Map/Foreground.eni"
	even
MapEni_TitleCredits:			binclude "Screens/Title/Enigma Map/Hidden Credits.eni"
	even

; ===========================================================================
; Enigma compressed Options screen data
; ===========================================================================

MapEni_OptionsBG:			binclude "Screens/Options/Enigma Map/Background.eni"
	even

; ===========================================================================
; Enigma compressed Level Select RSDK screen data
; ===========================================================================

MapEni_LevelSelectRSDKBG:		binclude "Screens/Level Select RSDK/Enigma Map/Background.eni"
	even
MapEni_LevelSelectRSDKIcons:		binclude "Screens/Level Select RSDK/Enigma Map/Icon.eni"
	even

; ===========================================================================
; Enigma compressed Special Stage screen data
; ===========================================================================

MapEni_SSBg1:				binclude "Screens/Special Stage/Enigma Map/Background 1.eni"
	even
MapEni_SSBg2:				binclude "Screens/Special Stage/Enigma Map/Background 2.eni"
	even
