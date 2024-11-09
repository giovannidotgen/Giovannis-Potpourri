; ---------------------------------------------------------------------------
; Palette Script - big ring
; ---------------------------------------------------------------------------

PalSPtr_BigRing:
	palscriptptr .header, .data

.header
	palscripthdr	Normal_palette_line_2+$C, 2, 0

.data
	palscriptdata	3, $A8A, $ECE
	palscriptdata	3, $6EE, $AEE
	palscriptdata	3, $A86, $ECA
	palscriptdata	3, $6EE, $AEE
	palscriptdata	3, $4C4, $8E8
	palscriptdata	3, $6EE, $AEE
	palscriptdata	3, $4CA, $6EC
	palscriptdata	3, $6EE, $AEE
	palscriptdata	3, $2AC, $6CE
	palscriptdata	3, $6EE, $AEE
	palscriptrept
	palscriptdata	2, $0AA, $6EE
	palscriptdata	2, $0CC, $8EE
	palscriptdata	2, $6EE, $AEE
	palscriptdata	2, $AEE, $CEE
	palscriptdata	2, $EEE, $EEE
	palscriptdata	2, $AEE, $CEE
	palscriptdata	2, $6EE, $AEE
	palscriptdata	2, $0CC, $8EE
	palscriptrept

PalSPtr_BigRing2:
	palscriptptr .header, .data

.header
	palscripthdr	Normal_palette_line_2+$A, 1, 0

.data
	palscriptdata	3, $868
	palscriptdata	3, $0AA
	palscriptdata	3, $864
	palscriptdata	3, $0AA
	palscriptdata	3, $2A2
	palscriptdata	3, $0AA
	palscriptdata	3, $4A8
	palscriptdata	3, $0AA
	palscriptdata	3, $28A
	palscriptdata	3, $0AA
	palscriptrept
	palscriptdata	2, $066
	palscriptdata	2, $088
	palscriptdata	2, $0AA
	palscriptdata	2, $0CC
	palscriptdata	2, $EEE
	palscriptdata	2, $0CC
	palscriptdata	2, $0AA
	palscriptdata	2, $088
	palscriptrept
	palscriptdata	2, $6EE, $0AA
	palscriptdata	2, $8EE, $0CC
	palscriptdata	2, $AEE, $6EE
	palscriptdata	2, $CEE, $AEE
	palscriptdata	2, $EEE, $EEE
	palscriptdata	2, $CEE, $AEE
	palscriptdata	2, $AEE, $6EE
	palscriptdata	2, $8EE, $0CC
	palscriptdata	1, $066
	palscriptdata	1, $088
	palscriptdata	1, $0AA
	palscriptdata	1, $0CC
	palscriptdata	1, $EEE
	palscriptdata	1, $0CC
	palscriptdata	1, $0AA
	palscriptdata	1, $088
