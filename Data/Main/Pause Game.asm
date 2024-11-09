; ---------------------------------------------------------------------------
; Subroutine to pause the game
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Pause_Game:
		tst.b	(Life_count).w										; do you have any lives left?
		beq.w	Pause_Unpause									; if not, branch
		tst.b	(Time_over_flag).w									; is time over?
		bne.w	Pause_Unpause									; if yes, branch

.ending
		tst.b	(Game_paused).w										; is game already paused?
		bne.s	.paused											; if yes, branch
		tst.b	(Ctrl_1_pressed).w									; is Start button pressed?

	if LevelSelectCheat
		bpl.w	Pause_NoPause									; if not, branch
	else
		bpl.s	Pause_NoPause									; if not, branch
	endif

.paused
		st	(Game_paused).w										; pause the game
		SMPS_PauseMusic										; pause the music

Pause_Loop:
		move.b	#VintID_Pause,(V_int_routine).w
		bsr.s	Wait_VSync

    if GameDebug

	if LevelSelectCheat
		tst.b	(Level_select_flag).w
		beq.s	Pause_ChkStart
	endif

		btst	#button_A,(Ctrl_1_pressed).w							; is button A pressed?
		beq.s	Pause_ChkFrameAdvance							; if not, branch

	if SCEDebug
		move.b	#GameModeID_LevelSelectScreen,(Game_mode).w	; set screen mode to Level Select (SCE)
	else
		move.b	#GameModeID_TitleScreen,(Game_mode).w			; set screen mode to Title Screen
	endif

		addq.w	#4,sp											; exit from current screen
		bra.s	Pause_ResumeMusic
; ---------------------------------------------------------------------------

Pause_ChkFrameAdvance:
		btst	#button_B,(Ctrl_1_held).w								; is button B held?
		bne.s	Pause_FrameAdvance								; if yes, branch
		btst	#button_C,(Ctrl_1_pressed).w							; is button C pressed?
		bne.s	Pause_FrameAdvance								; if yes, branch

Pause_ChkStart:
    endif

		tst.b	(Ctrl_1_pressed).w									; is Start pressed?
		bpl.s	Pause_Loop										; if not, branch

Pause_ResumeMusic:
		SMPS_UnpauseMusic										; unpause the music

Pause_Unpause:
		clr.b	(Game_paused).w										; unpause the game

Pause_NoPause:
		rts
; ---------------------------------------------------------------------------

	if GameDebug
Pause_FrameAdvance:
		st	(Game_paused).w
		SMPS_UnpauseMusic
		rts
	endif
