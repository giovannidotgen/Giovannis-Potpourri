; ---------------------------------------------------------------------------
; Object 2F - large grass-covered platforms (MZ)
; ---------------------------------------------------------------------------

; Dynamic object variables
LGorigX:		= objoff_2E
LGorigY:		= objoff_30

; =============== S U B R O U T I N E =======================================

LGrass_Data: offsetTable
		LargeGrassEntry LGrass_Data1, 0, 128 						; collision angle data, frame number, platform width
		LargeGrassEntry LGrass_Data3, 1, 128
		LargeGrassEntry LGrass_Data2, 2, 64
; ---------------------------------------------------------------------------

Obj_LargeGrass:

		; init
		move.l	#Map_LGrass,mappings(a0)
		move.b	#rfCoord,render_flags(a0)							; use screen coordinates
		move.l	#words_to_long(priority_5,make_art_tile(0,2,0)),priority(a0)	; set priority and art_tile
		move.w	x_pos(a0),LGorigX(a0)
		move.w	y_pos(a0),LGorigY(a0)

		; set
		move.b	subtype(a0),d0
		lsr.w	#2,d0
		andi.w	#$1C,d0
		lea	LGrass_Data(pc,d0.w),a1
		move.w	(a1)+,d0
		lea	LGrass_Data(pc,d0.w),a2
		move.l	a2,objoff_3C(a0)
		move.b	(a1)+,mapping_frame(a0)
		move.b	(a1),width_pixels(a0)
		move.b	#128/2,height_pixels(a0)
		andi.b	#$F,subtype(a0)
		move.l	#.action,address(a0)

.action
		moveq	#7,d0
		and.b	subtype(a0),d0
		beq.s	.solid											; if zero, branch
		add.w	d0,d0
		jsr	.index-2(pc,d0.w)

.solid
		moveq	#$B,d1
		add.b	width_pixels(a0),d1
		moveq	#$20,d2											; height
		cmpi.b	#2,mapping_frame(a0)
		bne.s	.skip
		moveq	#$30,d2											; height

.skip
		movea.l	objoff_3C(a0),a2
		move.w	x_pos(a0),d4
		jsr	(SolidObjectFullSloped).w

.draw
		moveq	#-$80,d0										; round down to nearest $80
		and.w	LGorigX(a0),d0									; get object position
		jmp	(Sprite_CheckDelete.skipxpos).w

; =============== S U B R O U T I N E =======================================

.index
		bra.s	.type01				; 1
		bra.s	.type02				; 2
		bra.s	.type03				; 3
		bra.s	.type04				; 4
; ---------------------------------------------------------------------------

		; type05						; 5

		; check standing on the object
		moveq	#standing_mask,d0
		and.b	status(a0),d0										; is Sonic or Tails standing on the object?
		bne.s	.loc_24FA6										; if yes, branch
		tst.b	angle(a0)
		beq.s	.loc_24FB2
		subq.b	#4,angle(a0)
		bra.s	.loc_24FB2
; ---------------------------------------------------------------------------

.type01
		move.b	(Oscillating_Data).w,d0
		moveq	#$20,d1
		bra.s	.move
; ---------------------------------------------------------------------------

.type02
		move.b	(Oscillating_Data+4).w,d0
		moveq	#$30,d1
		bra.s	.move
; ---------------------------------------------------------------------------

.type03
		move.b	(Oscillating_Data+8).w,d0
		moveq	#$40,d1
		bra.s	.move
; ---------------------------------------------------------------------------

.type04
		move.b	(Oscillating_Data+$C).w,d0
		moveq	#$60,d1

.move
		btst	#3,subtype(a0)
		beq.s	.loc_AFF2
		neg.w	d0
		add.w	d1,d0

.loc_AFF2
		move.w	LGorigY(a0),d1
		sub.w	d0,d1
		move.w	d1,y_pos(a0)										; update position on y-axis
		rts														; type 00 platform doesn't move
; ---------------------------------------------------------------------------

.loc_24FA6
		cmpi.b	#$40,angle(a0)
		beq.s	.loc_24FB2
		addq.b	#4,angle(a0)

.loc_24FB2
		move.b	angle(a0),d0
		jsr	(GetSineCosine).w
		asr.w	#4,d0
		move.w	d0,objoff_32(a0)
		add.w	LGorigY(a0),d0
		move.w	d0,y_pos(a0)
		cmpi.b	#32,angle(a0)
		bne.s	.return
		tst.b	objoff_3A(a0)
		bne.s	.return
		st	objoff_3A(a0)

		; create fire
		jsr	(Create_New_Sprite3).w
		bne.s	.return
		move.l	#Obj_GrassFire,address(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.w	LGorigY(a0),LGorigY(a1)
		addq.w	#5,LGorigY(a1)
		subi.w	#$40,x_pos(a1)
		move.l	objoff_3C(a0),objoff_3C(a1)							; save ROM address
		move.w	a0,parent3(a1)
		move.w	objoff_32(a0),objoff_32(a1)

.return
		rts

; =============== S U B R O U T I N E =======================================

LGrass_Data1:	binclude "Objects/Large Grassy Platforms/Object Data/Heightmap1.bin"
	even
LGrass_Data2:	binclude "Objects/Large Grassy Platforms/Object Data/Heightmap2.bin"
	even
LGrass_Data3:	binclude "Objects/Large Grassy Platforms/Object Data/Heightmap3.bin"
	even
; ---------------------------------------------------------------------------

		include "Objects/Large Grassy Platforms/Object Data/Map - Large Grassy Platforms.asm"
