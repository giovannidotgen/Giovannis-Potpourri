; ---------------------------------------------------------------------------
; Music metadata (pointers, speed shoes tempos, flags)
; ---------------------------------------------------------------------------
MusicIndex:
; Levels
ptr_mus_ghz:		SMPS_MUSIC_METADATA	Music_GHZ, s3TempotoS1($FF), 0			; GHZ
ptr_mus_mz:			SMPS_MUSIC_METADATA	Music_MZ, s3TempotoS1($FF), 0			; MZ
ptr_mus_syz:			SMPS_MUSIC_METADATA	Music_SYZ, s3TempotoS1($FF), 0			; SYZ
ptr_mus_lz:			SMPS_MUSIC_METADATA	Music_LZ, s3TempotoS1($FF), 0				; LZ
ptr_mus_slz:			SMPS_MUSIC_METADATA	Music_SLZ, s3TempotoS1($FF), 0			; SLZ
ptr_mus_sbz:			SMPS_MUSIC_METADATA	Music_SBZ, s3TempotoS1($FF), 0			; SBZ

; Misc
ptr_mus_invin:		SMPS_MUSIC_METADATA	Music_Invin, s3TempotoS1($FF), 0			; Invincible
ptr_mus_extralife:	SMPS_MUSIC_METADATA	Music_ExtraLife, s3TempotoS1($FF), 0		; Extra Life
ptr_mus_specialstage:	SMPS_MUSIC_METADATA	Music_SpecialStage, s3TempotoS1($FF), 0	; Special Stage
ptr_mus_title:		SMPS_MUSIC_METADATA	Music_Title, s3TempotoS1($FF), 0			; Title
ptr_mus_menu:		SMPS_MUSIC_METADATA	Music_Menu, s3TempotoS1($FF), 0			; Menu
ptr_mus_ending:		SMPS_MUSIC_METADATA	Music_Ending, s3TempotoS1($FF), 0			; Ending

; Boss
ptr_mus_s1boss:		SMPS_MUSIC_METADATA	Music_S1Boss, s3TempotoS1($FF), 0			; S1 Boss
ptr_mus_fz:			SMPS_MUSIC_METADATA	Music_FZ, s3TempotoS1($FF), 0				; FZ
ptr_mus_boss:		SMPS_MUSIC_METADATA	Music_Boss, s3TempotoS1($FF), 0			; Boss
ptr_mus_boss2:		SMPS_MUSIC_METADATA	Music_Boss2, s3TempotoS1($FF), 0			; Boss 2
ptr_mus_finalboss:	SMPS_MUSIC_METADATA	Music_FinalBoss, s3TempotoS1($FF), 0		; Final Boss

; Other
ptr_mus_through:	SMPS_MUSIC_METADATA	Music_Through, s3TempotoS1($FF), 0		; End of Act
ptr_mus_gameover:	SMPS_MUSIC_METADATA	Music_GameOver, s3TempotoS1($FF), 0		; Game Over
ptr_mus_continue:	SMPS_MUSIC_METADATA	Music_Continue, s3TempotoS1($FF), 0		; Continue
ptr_mus_s3credits:	SMPS_MUSIC_METADATA	Music_S3Credits, s3TempotoS1($FF), 0		; S3 Credits
ptr_mus_drowning:	SMPS_MUSIC_METADATA	Music_Drowning, s3TempotoS1($02), SMPS_MUSIC_METADATA_FORCE_PAL_SPEED	; Drowning
ptr_mus_emerald:	SMPS_MUSIC_METADATA	Music_Emerald, s3TempotoS1($FF), 0		; Emerald

ptr_musend

; ---------------------------------------------------------------------------
; Music data ($01-$3F)
; ---------------------------------------------------------------------------

Music_GHZ:			include "Sound/Music/Mus - GHZ.asm"
	even
Music_MZ:			include "Sound/Music/Mus - MZ.asm"
	even
Music_SYZ:			include "Sound/Music/Mus - SYZ.asm"
	even
Music_LZ:			include "Sound/Music/Mus - LZ.asm"
	even
Music_SLZ:			include "Sound/Music/Mus - SLZ.asm"
	even
Music_SBZ:			include "Sound/Music/Mus - SBZ.asm"
	even
Music_Invin:			include "Sound/Music/Mus - Invincibility.asm"
	even
Music_ExtraLife:		include "Sound/Music/Mus - Extra Life.asm"
	even
Music_SpecialStage:	include "Sound/Music/Mus - Special Stage.asm"
	even
Music_Title:			include "Sound/Music/Mus - Title Screen.asm"
	even
Music_Menu:			include "Sound/Music/Mus - Menu.asm"
	even
Music_Ending:		include "Sound/Music/Mus - Ending.asm"
	even
Music_S1Boss:		include "Sound/Music/Mus - Boss Theme.asm"
	even
Music_FZ:			include "Sound/Music/Mus - FZ.asm"
	even
Music_Boss:			include "Sound/Music/Mus - Miniboss.asm"
	even
Music_Boss2:			include "Sound/Music/Mus - Zone Boss.asm"
	even
Music_FinalBoss:		include "Sound/Music/Mus - Final Boss.asm"
	even
Music_Through: 		include "Sound/Music/Mus - Sonic Got Through.asm"
	even
Music_GameOver:	include "Sound/Music/Mus - Game Over.asm"
	even
Music_Continue:		include "Sound/Music/Mus - Continue Screen.asm"
	even
Music_S3Credits:		include "Sound/Music/Mus - S3 Credits.asm"
	even
Music_Drowning:		include "Sound/Music/Mus - Drowning.asm"
	even
Music_Emerald:		include "Sound/Music/Mus - Get Emerald.asm"
	even
