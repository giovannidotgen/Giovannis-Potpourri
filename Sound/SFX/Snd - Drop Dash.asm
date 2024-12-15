SndBA_DropDash_Header:
	smpsHeaderStartSong 2, 1
	smpsHeaderVoice     SndBA_DropDash_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, SoundBA_FM4,	$0C, $05

; FM4 Data
SoundBA_FM4:
	smpsSetvoice        $00
	dc.b	nRst, $01
	smpsModSet          $01, $02, $24, $FF
	dc.b	nB5, $12

SoundBA_Loop00:
	dc.b	smpsNoAttack
	smpsAlterVol        $02
	dc.b	$02
	smpsLoop            $00, $12, SoundBA_Loop00
	smpsStop

SndBA_DropDash_Voices:

;	Voice $00
;	$3C
;	$00, $44, $02, $02, 	$1F, $1F, $1F, $15, 	$00, $1F, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$0D, $80, $28, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $04, $00
	smpsVcCoarseFreq    $02, $02, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $00, $0D

