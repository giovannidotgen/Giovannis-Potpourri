; ===========================================================================
; Text (Credits)
; ===========================================================================

CreditsText_Index: offsetTable

		; S3K
		offsetTableEntry.w Credits_S3Text1		; 0
		offsetTableEntry.w Credits_S3Text2		; 2
		offsetTableEntry.w Credits_S3Text3		; 4
		offsetTableEntry.w Credits_S3Text4		; 6
		offsetTableEntry.w Credits_S3Text5		; 8
		offsetTableEntry.w Credits_S3Text6		; A
		offsetTableEntry.w Credits_S3Text7		; C
		offsetTableEntry.w Credits_S3Text8		; E
		offsetTableEntry.w Credits_S3Text9		; 10
		offsetTableEntry.w Credits_S3TextA		; 12
		offsetTableEntry.w Credits_S3TextB		; 14
		offsetTableEntry.w Credits_S3TextC		; 16
		offsetTableEntry.w Credits_S3TextD		; 18
		offsetTableEntry.w Credits_S3TextE		; 1A
		offsetTableEntry.w Credits_S3TextF		; 1C
		offsetTableEntry.w Credits_S3Text10		; 1E
		offsetTableEntry.w Credits_S3Text11		; 20
		offsetTableEntry.w Credits_S3Text12		; 22
		offsetTableEntry.w Credits_S3Text13		; 24
		offsetTableEntry.w Credits_S3Text14		; 26
		offsetTableEntry.w Credits_S3Text15		; 28
		offsetTableEntry.w Credits_S3Text16		; 2A
		offsetTableEntry.w Credits_S3Text17		; 2C
		offsetTableEntry.w Credits_S3Text18		; 2E
		offsetTableEntry.w Credits_S3Text19		; 30
		offsetTableEntry.w Credits_S3Text1A		; 32
		offsetTableEntry.w Credits_S3Text1B		; 34
		offsetTableEntry.w Credits_S3Text1C		; 36
		offsetTableEntry.w Credits_S3Text1D		; 38
		offsetTableEntry.w Credits_S3Text1E		; 3A
		offsetTableEntry.w Credits_S3Text1F		; 3C
		offsetTableEntry.w Credits_S3Text20		; 3E
		offsetTableEntry.w Credits_S3Text21		; 40
		offsetTableEntry.w Credits_S3Text22		; 42
		offsetTableEntry.w Credits_S3Text23		; 44
		offsetTableEntry.w Credits_S3Text24		; 46
		offsetTableEntry.w Credits_S3Text25		; 48
		offsetTableEntry.w Credits_S3Text26		; 4A
;		offsetTableEntry.w Credits_S3Text27		; 4C

		; S1
		offsetTableEntry.w Credits_S1Text1		; 0
		offsetTableEntry.w Credits_S1Text2		; 2
		offsetTableEntry.w Credits_S1Text3		; 4
		offsetTableEntry.w Credits_S1Text4		; 6
		offsetTableEntry.w Credits_S1Text5		; 8
		offsetTableEntry.w Credits_S1Text6		; A
		offsetTableEntry.w Credits_S1Text7		; C
		offsetTableEntry.w Credits_S1Text8		; E
		offsetTableEntry.w Credits_S3Text27		; 10

		; END
		dc.w 0								; end marker
; ---------------------------------------------------------------------------

Credits_S3Text1:
		creditstr $F598, "SONIC  III"
		creditstr $8A2, "staff"
		creditstr_end

Credits_S3Text2:
		creditstr $496, "executive producer"
		creditstr $F78A, "HAYAO  NAKAYAMA"
		creditstr_end

Credits_S3Text3:
		creditstr $498, "project manager"
		creditstr $F78E, "HISASHI  SUZUKI"
		creditstr_end

Credits_S3Text4:
		creditstr $498, "project manager"
		creditstr $F78A, "SHINOBU  TOYODA"
		creditstr_end

Credits_S3Text5:
		creditstr $498, "project manager"
		creditstr $F78A, "MASAHARU  YOSHII"
		creditstr_end

Credits_S3Text6:
		creditstr $4A0, "producer"
		creditstr $F798, "YUJ I  NAKA"
		creditstr_end

Credits_S3Text7:
		creditstr $4A0, "director"
		creditstr $F786, "HIROKAZU  YASUHARA"
		creditstr_end

Credits_S3Text8:
		creditstr $496, "lead game designer"
		creditstr $F786, "HIROKAZU  YASUHARA"
		creditstr_end

Credits_S3Text9:
		creditstr $492, "senior game designers"
		creditstr $F688, "HISAYOSHI YOSHIDA"
		creditstr $F990, "TAKASHI  IIZUKA"
		creditstr_end

Credits_S3TextA:
		creditstr $498, "lead programmer"
		creditstr $F796, "YUJ I  NAKA"
		creditstr_end

Credits_S3TextB:
		creditstr $496, "senior programmers"
		creditstr $F688, "HIROSHI NIKAIDOH"
		creditstr $F980, "MASANOBU YAMAMOTO"
		creditstr_end

Credits_S3TextC:
		creditstr $496, "character designer"
		creditstr $F784, "TAKASHI THOMAS YUDA"
		creditstr_end

Credits_S3TextD:
		creditstr $49E, "cg  artist"
		creditstr $F78E, "KUNITAKE   AOKI"
		creditstr_end

Credits_S3TextE:
		creditstr $4A0, "animator"
		creditstr $F784, "TAKASHI THOMAS YUDA"
		creditstr_end

Credits_S3TextF:
		creditstr $49A, "enemy artist"
		creditstr $F786, "SATOSHI YOKOKAWA"
		creditstr_end

Credits_S3Text10:
		creditstr $498, "scene artists"
		creditstr $F690, "KUNITAKE  AOKI"
		creditstr $F992, "CHIE YOSHIDA"
		creditstr_end

Credits_S3Text11:
		creditstr $49A, "scene artists"
		creditstr $F690, "TSUNEKO  AOKI"
		creditstr $F990, "SHIGERU  OKADA"
		creditstr_end

Credits_S3Text12:
		creditstr $49A, "scene artists"
		creditstr $F684, "TAKASHI THOMAS YUDA"
		creditstr $F986, "SATOSHI YOKOKAWA"
		creditstr_end

Credits_S3Text13:
		creditstr $498, "art assistant"
		creditstr $F78E, "OSAMU  OHASHI"
		creditstr_end

Credits_S3Text14:
		creditstr $498, "music composers"
		creditstr $F694, "BRAD  BUXER"
		creditstr $F98E, "BOBBY BROOKS"
		creditstr_end

Credits_S3Text15:
		creditstr $498, "music composers"
		creditstr $F692, "DARRYL  ROSS"
		creditstr $F992, "GEOFF GRACE"
		creditstr_end

Credits_S3Text16:
		creditstr $498, "music composers"
		creditstr $F68C, "DOUG  GRIGSBY III"
		creditstr $F996, "SCIROCCO"
		creditstr_end

Credits_S3Text17:
		creditstr $498, "sega sound team"
		creditstr $F6A2, "BO"
		creditstr $F98E, "SACHIO  OGAWA"
		creditstr_end

Credits_S3Text18:
		creditstr $498, "sega sound team"
		creditstr $F69C, "MILPO"
		creditstr $F986, "MASARU  SETSUMARU"
		creditstr_end

Credits_S3Text19:
		creditstr $498, "sega sound team"
		creditstr $F68A, "TATSUYUKI  MAEDA"
		creditstr $F986, "TOMONORI  SAWADA"
		creditstr_end

Credits_S3Text1A:
		creditstr $498, "sega sound team"
		creditstr $F68C, "MASAYUKI NAGAO"
		creditstr $F994, "J UN SENOUE"
		creditstr_end

Credits_S3Text1B:
		creditstr $490, "sound project coordinator"
		creditstr $F78A, "    HISAKI  NIMIYA"
		creditstr_end

Credits_S3Text1C:
		creditstr $49E, "marketing"
		creditstr $F792, "PAMELA  KELLY"
		creditstr_end

Credits_S3Text1D:
		creditstr $492, "executive management"
		creditstr $F682, "SHOUICHIROU IRIMAJ IRI"
		creditstr $F98E, "TOM  KAL INSKE"
		creditstr_end

Credits_S3Text1E:
		creditstr $492, "executive coordinator"
		creditstr $F68A, "MAMORU  SHIGETA"
		creditstr $F98E, "TOMIO  TAKAMI"
		creditstr_end

Credits_S3Text1F:
		creditstr $492, "executive coordinator"
		creditstr $F688, "DIANE  A  FORNASIER"
		creditstr $F98E, "ROGER  HECTOR"
		creditstr_end

Credits_S3Text20:
		creditstr $492, "executive coordinator"
		creditstr $F782, "TAKAHARU  UTSUNOMIYA"
		creditstr_end

Credits_S3Text21:
		creditstr $492, "sound special thanks"
		creditstr $F682, "MAYUMI NINA SAKAZAKI"
		creditstr $F99A, "(MRM)"
		creditstr_end

Credits_S3Text22:
		creditstr $492, "sound special thanks"
		creditstr $F692, "CUBE  CORP."
		creditstr $F992, "OPUS CORP."
		creditstr_end

Credits_S3Text23:
		creditstr $492, "sound special thanks"
		creditstr $F684, "MASANORI  NAKAYAMA"
		creditstr $F98E, "(STUDIO WHO)"
		creditstr_end

Credits_S3Text24:
		creditstr $492, "sound special thanks"
		creditstr $F78A, "HOWARD  DROSSIN"
		creditstr_end

Credits_S3Text25:
		creditstr $498, "special thanks"
		creditstr $F686, "DEBORAH MCCRACKEN"
		creditstr $F98E, "EMI  KAWAMURA"
		creditstr_end

Credits_S3Text26:
		creditstr $498, "special thanks"
		creditstr $F78E, "J INA  ISHIWATARI"
		creditstr_end

Credits_S3Text27:
		creditstr $49A, "presented by"
		creditstr $F79E, "SEGA"
		creditstr_end
; ---------------------------------------------------------------------------

Credits_S1Text1:
		creditstr $F59C, "SONIC  I"
		creditstr $8A2, "staff"
		creditstr_end

Credits_S1Text2:
		creditstr $49E, "game plan"
		creditstr $F796, "CAROL  YAS"
		creditstr_end

Credits_S1Text3:
		creditstr $4A0, "program"
		creditstr $F7A0, "YU 2"
		creditstr_end

Credits_S1Text4:
		creditstr $498, "character design"
		creditstr $F798, "BIGISLAND"
		creditstr_end

Credits_S1Text5:
		creditstr $4A2, "design"
		creditstr $F6A0, "J INYA"
		creditstr $F998, "PHENIX  RIE"
		creditstr_end

Credits_S1Text6:
		creditstr $49C, "sound produce"
		creditstr $F788, "MASATO  NAKAMURA"
		creditstr_end

Credits_S1Text7:
		creditstr $49A, "sound program"
		creditstr $F69C, "J IM ITA"
		creditstr $F99C, "MACKY"
		creditstr_end

Credits_S1Text8:
		creditstr $49A, "special thanks"
		creditstr $F68C, "FUJ IO  M INEGISHI"
		creditstr $F9A0, "PAPA"
		creditstr_end
; ---------------------------------------------------------------------------

Credits_TextTryAgain:
		creditstr $F998, "TRY  AGAIN"
		creditstr_end

Credits_TextEnd:
		creditstr $F986, "THANKS FOR PLAYING!"
		creditstr_end
