; Suikoden II Tinto Glitch Fix
; Written by Pyriel
;
; Fixes a game-breaking issue where entering buildings in Tinto during the
; event in which Jess sends out troops to fight Neclord causes the player
; to be dropped in Gustav's Manor with no way of advancing the script
; further.
;
; The bug is caused when entering an interior other Gustav's mansion causes
; the scenario file VG08 to load, replacing VG18.  In the Japanese version,
; only VG08 exists, and contains all the scripts required.  VG08 remains
; loaded at all times during these events, and all the script has to do is
; fade out and drop the player at a given location on its map.  In western
; versions, VG08 lacks certain scripts, so placing the player in this
; fashion only works if the proper module is loaded.

.psx
.openfile VG01.BIN, 0x8010DC50
.align 4

; Alas the command required is 4 bytes and only one byte of padding is at
; the end of the script.  The preceding script has 3 bytes of padding, so
; we have to move the entire script up 3 bytes and make use of the extra
; byte it already contains.  The only other alternative is moving it else-
; where in the file.  Unfortunately, the module is quite large and would
; need to be 100 bytes shorter for this work easily without overlaying
; other data.

.org 0x80111D5D
.area 0x80111EE4-.
	.byte 0x66 
	.byte    0
	.byte    4
	.byte    0
	.byte 0x68
	.byte 0xBB
	.byte    9
	.byte    3
	.byte    0
	.byte    2
	.byte 0x4C
	.byte    2
	.byte  0xB
	.byte    0
	.byte    5
	.byte    5
	.byte 0x18
	.byte  0xE
	.byte    0
	.byte 0x13
	.byte 0x49
	.byte 0x14
	.byte 0x18
	.byte 0x15
	.byte    0
	.byte 0x14
	.byte 0x48 
	.byte    1
	.byte 0x12
	.byte    2
	.byte 0x18
	.byte 0x12
	.byte    0
	.byte 0x15
	.byte 0x48  
	.byte    0
	.byte 0x12
	.byte 0x49
	.byte 0x14
	.byte 0x18
	.byte 0x15
	.byte    0
	.byte 0x16
	.byte 0x49
	.byte 0x14
	.byte 0x18
	.byte 0x12
	.byte    0
	.byte 0x17
	.byte 0x49
	.byte 0x30
	.byte 0x18
	.byte 0x15
	.byte    0
	.byte 0x18
	.byte    5
	.byte 0x12
	.byte    4
	.byte    5
	.byte    0
	.byte    1
	.byte    2
	.byte    1
	.byte    4
	.byte    4
	.byte 0x1E
	.byte 0x18
	.byte 0x12
	.byte    0
	.byte 0x19
	.byte 0x49
	.byte 0x3C
	.byte    3
	.byte 0x15
	.byte    0
	.byte 0x18
	.byte 0x15
	.byte    0
	.byte 0x1A
	.byte 0x49
	.byte 0x14
	.byte 0x18
	.byte 0x11
	.byte    0
	.byte 0x1B
	.byte 0x24
	.byte    1
	.byte 0x49
	.byte 0x3C
	.byte    5
	.byte 0x16
	.byte    2
	.byte    5
	.byte    1
	.byte    0
	.byte 0x1E
	.byte    3
	.byte 0x11
	.byte    0
	.byte 0x18
	.byte 0x16
	.byte    0
	.byte 0x1C
	.byte 0x49
	.byte 0x2D
	.byte 0x18
	.byte 0x11
	.byte    0
	.byte 0x1D
	.byte 0x49
	.byte 0x14
	.byte 0x18
	.byte 0x16
	.byte    0
	.byte 0x1E
	.byte 0x49
	.byte 0x2D
	.byte 0x18
	.byte 0x11
	.byte    0
	.byte 0x1F
	.byte 0x49
	.byte 0x14
	.byte 0x18
	.byte 0x16
	.byte    0
	.byte 0x20
	.byte 0x49
	.byte 0x3C
	.byte 0x18
	.byte 0x11
	.byte    0
	.byte 0x21
	.byte 0x49
	.byte 0x14
	.byte  0xB
	.byte    2
	.byte    2
	.byte 0x28
	.byte 0x2E
	.byte 0x2B
	.byte 0x19
	.byte    7
	.byte 0x2B
	.byte 0x1A
	.byte    7
	.byte 0x2B
	.byte 0x1B
	.byte    7
	.byte 0x2B
	.byte 0x1C
	.byte    7
	.byte 0x2B
	.byte 0x1D
	.byte    7
	.byte 0x2B
	.byte 0x1E
	.byte    7
	.byte 0x2B
	.byte 0x1F
	.byte    7
	.byte 0x2B
	.byte 0x20
	.byte    7
	.byte 0x2B
	.byte 0x21
	.byte    7
	.byte 0x2B
	.byte 0x22
	.byte    7
	.byte 0x2B
	.byte 0x23
	.byte    7
	.byte 0x2B
	.byte 0x24
	.byte    7
	.byte 0x2B
	.byte 0x25
	.byte    7
	.byte 0x2B
	.byte 0x26
	.byte    7
	.byte 0x2B
	.byte 0x27
	.byte    7
	.byte 0x2B
	.byte 0x28
	.byte    7
	.byte 0x2B
	.byte 0x29
	.byte    7
	.byte 0x2B
	.byte 0x2A
	.byte    7
	.byte 0x2B
	.byte 0x2B
	.byte    7
	.byte 0x2B
	.byte 0x2C
	.byte    7
	.byte 0x2B
	.byte 0x2D
	.byte    7
	.byte 0x2B
	.byte 0x2E
	.byte    7
	.byte 0x2B
	.byte 0x2F
	.byte    7
	.byte 0x2B
	.byte 0x30
	.byte    7
	.byte 0x2F
	.byte 0x1C
	.byte    3
	.byte    4
	.byte    7
	.byte 0x36
	.byte    0
	.byte    1
	.byte 0x2E
	.byte    1
	.byte 0x15
	.byte    1
	.byte 0x11
	.byte    1
	.byte 0x19
	.byte    1
	.byte 0x1A
	.byte    1
	.byte 0x1B
	.byte    1
	.byte 0x1C
	.byte    1
	.byte 0x1D
	.byte    1
	.byte 0x1E
	.byte    1
	.byte 0x1F
	.byte    1
	.byte 0x20
	.byte    1
	.byte 0x21
	.byte    1
	.byte 0x22
	.byte    1
	.byte 0x23
	.byte    1
	.byte 0x24
	.byte    1
	.byte 0x25
	.byte    1
	.byte 0x26
	.byte    1
	.byte 0x27
	.byte    1
	.byte 0x28
	.byte    1
	.byte 0x29
	.byte    1
	.byte 0x2A
	.byte    1
	.byte 0x2B
	.byte    1
	.byte 0x2C
	.byte    1
	.byte 0x2D
	.byte    1
	.byte 0x2E
	.byte    1
	.byte 0x2F
	.byte    1
	.byte 0x30
	.byte 0x2F
	.byte 0x49
	.byte 0x3C
	.byte  0xB
	.byte    1
	.byte    2
	.byte 0x28
	.byte 0x49
	.byte 0x3C
	.byte 0x18
	.byte  0xE
	.byte    0
	.byte 0x22
	.byte 0x2E
	.byte    2
	.byte 0x17
	.byte 0x75
	.byte 0xBB
	.byte    0
	.byte 0x17
	.byte 0x2F
	.byte    5
	.byte 0x17
	.byte    2
	.byte    5
	.byte 0x1E
	.byte 0x18
	.byte 0x17
	.byte    0
	.byte 0x23
	.byte    5
	.byte 0x12
	.byte    0
	.byte    0
	.byte    5
	.byte    5
	.byte    3
	.byte    0
	.byte 0x1E
	.byte 0x2E
	.byte    3
	.byte    0
	.byte    3
	.byte    3
	.byte  0xE
	.byte    3
	.byte    3
	.byte 0x16
	.byte    3
	.byte    3
	.byte 0x13
	.byte    3
	.byte    3
	.byte 0x14
	.byte    3
	.byte 0x2F
	.byte 0x18
	.byte 0x12
	.byte    0
	.byte 0x24
	.byte 0x18
	.byte 0x17
	.byte    0
	.byte 0x25
	.byte 0x18
	.byte 0x16
	.byte    0
	.byte 0x26
	.byte 0x18
	.byte 0x17
	.byte    0
	.byte 0x27
	.byte 0x18
	.byte 0x12
	.byte    0
	.byte 0x28
	.byte 0x18
	.byte 0x17
	.byte    0
	.byte 0x29
	.byte    3
	.byte 0x13
	.byte    1
	.byte    3
	.byte 0x14
	.byte    0
	.byte 0x18
	.byte 0x13
	.byte    0
	.byte 0x2A
	.byte 0x18
	.byte 0x14
	.byte    0
	.byte 0x2B
	.byte    9
	.byte 0xC1
	.byte 0x80
	.byte 0x49
	.byte 0x14
	.byte 0x66
	.byte    0
	.byte 0x75
	.byte    0
	.byte    0
	.byte 0x65
	.byte    9
	.byte    9
	.byte 0x1F
	.byte    1
	.byte    6
	.byte 0x11
	.byte 0x20
	.byte    2
	.byte    1
	.byte 0x27
	.byte 0x64
	.byte 0xFF
	.byte 0xFE
.endarea

.org 0x80112E44
.area 0x80112E48-.
    .word 0x80111D5D
.endarea

.close