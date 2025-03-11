; ---------------------------------------------------------------------------
; Special Stage walls VRAM pointers
; ---------------------------------------------------------------------------

SS_WaRiVramSet:

		; 1, 2, 3, 4, 5, 6, 7, 8 (0, 2, 4, 6, 8, $A, $C, $E)
		dc.w make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,3,0)	; 1
		dc.w make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,3,0)	; 2

		dc.w make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,0,0)	; 3
		dc.w make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,0,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,0,0)	; 4

		dc.w make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,1,0)	; 5
		dc.w make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,1,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,1,0)	; 6

		dc.w make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,2,0)	; 7
		dc.w make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,2,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,3,0), make_art_tile(ArtTile_SS_Wall,2,0)	; 8