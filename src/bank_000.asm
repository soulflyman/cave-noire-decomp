; Disassembly of "Cave Noire (Japan).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

; --- Known WRAM symbols (identified via RAM watchpoints, see NOTES.md) ---
DEF wPlayerHP EQU $c120 ; current player HP, BCD-encoded (1 byte)
DEF wPlayerAttack EQU $c121 ; current player attack stat (1 byte)
DEF wPlayerDefense EQU $c122 ; current player defense stat (1 byte)
DEF wPlayerLucky EQU $c123 ; current player lucky stat (1 byte)
DEF wPlayerMaxHP EQU $c124 ; max player HP, BCD-encoded (1 byte); copy of wPlayerHP at quest start
DEF wCurrentFloor EQU $c104 ; current dungeon floor number (1 byte)
DEF wInventory EQU $c140 ; item inventory, 8 slots x 1 byte item-type-ID, $00 = empty slot

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_0433_RstJumpTableTrampoline                              ; $0000: $c3 $33 $04


    cpl                                           ; $0003: $2f

Call_000_0004:
Jump_000_0004:
    dec l                                         ; $0004: $2d

Jump_000_0005:
    ld [hl+], a                                   ; $0005: $22
    nop                                           ; $0006: $00
    dec l                                         ; $0007: $2d

RST_08::
    ld a, [hl+]                                   ; $0008: $2a
    ld h, [hl]                                    ; $0009: $66
    ld l, a                                       ; $000a: $6f
    ret                                           ; $000b: $c9


    nop                                           ; $000c: $00
    dec h                                         ; $000d: $25
    rra                                           ; $000e: $1f
    inc sp                                        ; $000f: $33

RST_10::
    cpl                                           ; $0010: $2f
    inc a                                         ; $0011: $3c
    add l                                         ; $0012: $85
    ld l, a                                       ; $0013: $6f
    ret c                                         ; $0014: $d8

    dec h                                         ; $0015: $25
    ret                                           ; $0016: $c9


    rst RST_38                                    ; $0017: $ff

RST_18::
    cpl                                           ; $0018: $2f
    inc a                                         ; $0019: $3c
    add e                                         ; $001a: $83

Call_000_001b:
    ld e, a                                       ; $001b: $5f
    ret c                                         ; $001c: $d8

    dec d                                         ; $001d: $15
    ret                                           ; $001e: $c9


    daa                                           ; $001f: $27

RST_20::
    cpl                                           ; $0020: $2f
    inc a                                         ; $0021: $3c
    add c                                         ; $0022: $81
    ld c, a                                       ; $0023: $4f

Jump_000_0024:
    ret c                                         ; $0024: $d8

    dec b                                         ; $0025: $05
    ret                                           ; $0026: $c9


    nop                                           ; $0027: $00

RST_28::
    add l                                         ; $0028: $85
    ld l, a                                       ; $0029: $6f
    ret nc                                        ; $002a: $d0

    inc h                                         ; $002b: $24
    ret                                           ; $002c: $c9


    add a                                         ; $002d: $87
    nop                                           ; $002e: $00
    nop                                           ; $002f: $00

RST_30::
    add e                                         ; $0030: $83
    ld e, a                                       ; $0031: $5f
    ret nc                                        ; $0032: $d0

    inc d                                         ; $0033: $14
    ret                                           ; $0034: $c9


    nop                                           ; $0035: $00
    nop                                           ; $0036: $00
    nop                                           ; $0037: $00

RST_38::
    add c                                         ; $0038: $81
    ld c, a                                       ; $0039: $4f
    ret nc                                        ; $003a: $d0

    inc b                                         ; $003b: $04
    ret                                           ; $003c: $c9


    cp $20                                        ; $003d: $fe $20

Call_000_003f:
    sbc d                                         ; $003f: $9a

VBlankInterrupt::
    jp Jump_000_0068                              ; $0040: $c3 $68 $00


    add e                                         ; $0043: $83
    add h                                         ; $0044: $84
    nop                                           ; $0045: $00
    nop                                           ; $0046: $00
    add a                                         ; $0047: $87

LCDCInterrupt::
    jp Jump_000_0092                              ; $0048: $c3 $92 $00


    nop                                           ; $004b: $00
    nop                                           ; $004c: $00
    nop                                           ; $004d: $00
    nop                                           ; $004e: $00
    nop                                           ; $004f: $00

TimerOverflowInterrupt::
    jp Jump_000_00b2                              ; $0050: $c3 $b2 $00


    adc e                                         ; $0053: $8b
    rst RST_38                                    ; $0054: $ff
    ld bc, $405b                                  ; $0055: $01 $5b $40

SerialTransferCompleteInterrupt::
    reti                                          ; $0058: $d9


    ld bc, $1400                                  ; $0059: $01 $00 $14
    nop                                           ; $005c: $00
    add b                                         ; $005d: $80
    add e                                         ; $005e: $83
    inc b                                         ; $005f: $04

JoypadTransitionInterrupt::
    reti                                          ; $0060: $d9


    ld b, b                                       ; $0061: $40
    ld b, b                                       ; $0062: $40
    ld c, a                                       ; $0063: $4f
    add h                                         ; $0064: $84
    ld c, b                                       ; $0065: $48
    ld c, c                                       ; $0066: $49
    ld c, b                                       ; $0067: $48

Jump_000_0068:
    push af                                       ; $0068: $f5
    push bc                                       ; $0069: $c5
    push de                                       ; $006a: $d5
    push hl                                       ; $006b: $e5
    ld a, [$c01b]                                 ; $006c: $fa $1b $c0
    and a                                         ; $006f: $a7
    jr nz, jr_000_007e                            ; $0070: $20 $0c

    call Call_000_01c6                            ; $0072: $cd $c6 $01
    ei                                            ; $0075: $fb
    call Call_000_2fb7                            ; $0076: $cd $b7 $2f
    pop hl                                        ; $0079: $e1
    pop de                                        ; $007a: $d1
    pop bc                                        ; $007b: $c1
    pop af                                        ; $007c: $f1
    reti                                          ; $007d: $d9


jr_000_007e:
    ld a, $40                                     ; $007e: $3e $40

jr_000_0080:
    dec a                                         ; $0080: $3d
    jr nz, jr_000_0080                            ; $0081: $20 $fd

    ldh a, [rLCDC]                                ; $0083: $f0 $40
    and $7f                                       ; $0085: $e6 $7f
    ldh [rLCDC], a                                ; $0087: $e0 $40
    xor a                                         ; $0089: $af
    ld [$c01b], a                                 ; $008a: $ea $1b $c0
    pop hl                                        ; $008d: $e1
    pop de                                        ; $008e: $d1
    pop bc                                        ; $008f: $c1
    pop af                                        ; $0090: $f1
    reti                                          ; $0091: $d9


Jump_000_0092:
    push af                                       ; $0092: $f5
    ldh a, [rLY]                                  ; $0093: $f0 $44
    cp $40                                        ; $0095: $fe $40
    jr c, jr_000_00a9                             ; $0097: $38 $10

    cp $6f                                        ; $0099: $fe $6f
    jr nc, jr_000_00ab                            ; $009b: $30 $0e

    ld a, [$c1fd]                                 ; $009d: $fa $fd $c1
    or a                                          ; $00a0: $b7
    jr z, jr_000_00a9                             ; $00a1: $28 $06

    inc a                                         ; $00a3: $3c
    jr z, jr_000_00a7                             ; $00a4: $28 $01

    dec a                                         ; $00a6: $3d

jr_000_00a7:
    ldh [rBGP], a                                 ; $00a7: $e0 $47

jr_000_00a9:
    pop af                                        ; $00a9: $f1
    reti                                          ; $00aa: $d9


jr_000_00ab:
    ld a, [$c015]                                 ; $00ab: $fa $15 $c0
    ldh [rBGP], a                                 ; $00ae: $e0 $47
    pop af                                        ; $00b0: $f1
    reti                                          ; $00b1: $d9


Jump_000_00b2:
    ei                                            ; $00b2: $fb
    push hl                                       ; $00b3: $e5
    push de                                       ; $00b4: $d5
    push bc                                       ; $00b5: $c5
    push af                                       ; $00b6: $f5
    ld hl, $c00d                                  ; $00b7: $21 $0d $c0
    ld a, [hl]                                    ; $00ba: $7e
    and $03                                       ; $00bb: $e6 $03
    jr nz, jr_000_00d4                            ; $00bd: $20 $15

    set 0, [hl]                                   ; $00bf: $cb $c6
    ld a, $07                                     ; $00c1: $3e $07
    ld [$2100], a                                 ; $00c3: $ea $00 $21
    call $40dc                                    ; $00c6: $cd $dc $40
    ld a, [$c024]                                 ; $00c9: $fa $24 $c0

Call_000_00cc:
    ld [$2100], a                                 ; $00cc: $ea $00 $21
    ld hl, $c00d                                  ; $00cf: $21 $0d $c0
    res 0, [hl]                                   ; $00d2: $cb $86

jr_000_00d4:
    pop af                                        ; $00d4: $f1
    pop bc                                        ; $00d5: $c1
    pop de                                        ; $00d6: $d1
    pop hl                                        ; $00d7: $e1
    ret                                           ; $00d8: $c9


Call_000_00d9:
Jump_000_00d9:
    push hl                                       ; $00d9: $e5
    ld hl, $c00d                                  ; $00da: $21 $0d $c0
    set 1, [hl]                                   ; $00dd: $cb $ce
    push de                                       ; $00df: $d5
    push bc                                       ; $00e0: $c5
    push af                                       ; $00e1: $f5
    call Call_000_04d0                            ; $00e2: $cd $d0 $04
    call $4acf                                    ; $00e5: $cd $cf $4a
    call Call_000_04aa                            ; $00e8: $cd $aa $04
    pop af                                        ; $00eb: $f1
    pop bc                                        ; $00ec: $c1
    pop de                                        ; $00ed: $d1
    ld hl, $c00d                                  ; $00ee: $21 $0d $c0
    res 1, [hl]                                   ; $00f1: $cb $8e
    pop hl                                        ; $00f3: $e1
    ret                                           ; $00f4: $c9


    inc bc                                        ; $00f5: $03
    inc c                                         ; $00f6: $0c
    inc c                                         ; $00f7: $0c
    inc b                                         ; $00f8: $04
    nop                                           ; $00f9: $00
    adc h                                         ; $00fa: $8c
    rst RST_38                                    ; $00fb: $ff
    rst RST_38                                    ; $00fc: $ff
    call nc, $40d4                                ; $00fd: $d4 $d4 $40

Boot::
    nop                                           ; $0100: $00
    jp Jump_000_0150                              ; $0101: $c3 $50 $01


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "CAVE NOIRE", $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $06

HeaderROMSize::
    db $02

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $a4

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $7f

HeaderGlobalChecksum::
    db $bd, $b5

Jump_000_0150:
    di                                            ; $0150: $f3
    call Call_000_0e1b                            ; $0151: $cd $1b $0e
    ld sp, $e000                                  ; $0154: $31 $00 $e0
    ld hl, $c000                                  ; $0157: $21 $00 $c0
    ld de, $c001                                  ; $015a: $11 $01 $c0
    ld bc, $1dfe                                  ; $015d: $01 $fe $1d
    ld [hl], $00                                  ; $0160: $36 $00
    call Call_000_0442                            ; $0162: $cd $42 $04
    call Call_000_02ff                            ; $0165: $cd $ff $02
    ld a, $07                                     ; $0168: $3e $07
    ld [$2100], a                                 ; $016a: $ea $00 $21
    call $4014                                    ; $016d: $cd $14 $40
    ld a, $01                                     ; $0170: $3e $01
    ld [$2100], a                                 ; $0172: $ea $00 $21
    call Call_000_0269                            ; $0175: $cd $69 $02
    call Call_000_0dde                            ; $0178: $cd $de $0d
    call Call_000_0274                            ; $017b: $cd $74 $02
    xor a                                         ; $017e: $af
    ld [$c01a], a                                 ; $017f: $ea $1a $c0
    ld [$c01c], a                                 ; $0182: $ea $1c $c0
    ld [$c01b], a                                 ; $0185: $ea $1b $c0
    ld [$c001], a                                 ; $0188: $ea $01 $c0
    ld [$c002], a                                 ; $018b: $ea $02 $c0
    ld hl, $0000                                  ; $018e: $21 $00 $00
    call Call_000_0e42                            ; $0191: $cd $42 $0e
    ld hl, $0790                                  ; $0194: $21 $90 $07
    call Call_000_0e4b                            ; $0197: $cd $4b $0e
    call Call_000_0e37                            ; $019a: $cd $37 $0e
    ei                                            ; $019d: $fb

jr_000_019e:
    xor a                                         ; $019e: $af
    ld [$c003], a                                 ; $019f: $ea $03 $c0
    ld [$c025], a                                 ; $01a2: $ea $25 $c0
    ld hl, $c01a                                  ; $01a5: $21 $1a $c0
    inc [hl]                                      ; $01a8: $34
    ld hl, $c01c                                  ; $01a9: $21 $1c $c0
    inc [hl]                                      ; $01ac: $34
    ld hl, $c026                                  ; $01ad: $21 $26 $c0
    inc [hl]                                      ; $01b0: $34
    call Call_000_02a1                            ; $01b1: $cd $a1 $02
    ld a, [$c002]                                 ; $01b4: $fa $02 $c0
    ld [$c001], a                                 ; $01b7: $ea $01 $c0
    call Call_000_05de                            ; $01ba: $cd $de $05

jr_000_01bd:
    ld a, [$c003]                                 ; $01bd: $fa $03 $c0
    and a                                         ; $01c0: $a7
    jr nz, jr_000_019e                            ; $01c1: $20 $db

    halt                                          ; $01c3: $76

Call_000_01c4:
    jr jr_000_01bd                                ; $01c4: $18 $f7

Call_000_01c6:
    call $ff90                                    ; $01c6: $cd $90 $ff
    ld a, [$c025]                                 ; $01c9: $fa $25 $c0
    or a                                          ; $01cc: $b7
    jr nz, jr_000_01f3                            ; $01cd: $20 $24

    ld a, [$c01d]                                 ; $01cf: $fa $1d $c0
    ldh [rSCY], a                                 ; $01d2: $e0 $42
    ld a, [$c01e]                                 ; $01d4: $fa $1e $c0
    ldh [rSCX], a                                 ; $01d7: $e0 $43
    ld a, [$c01f]                                 ; $01d9: $fa $1f $c0
    ldh [rWY], a                                  ; $01dc: $e0 $4a
    ld a, [$c020]                                 ; $01de: $fa $20 $c0
    ldh [rWX], a                                  ; $01e1: $e0 $4b
    ld c, $47                                     ; $01e3: $0e $47
    ld a, [$c015]                                 ; $01e5: $fa $15 $c0
    ldh [c], a                                    ; $01e8: $e2
    inc c                                         ; $01e9: $0c
    ld a, [$c016]                                 ; $01ea: $fa $16 $c0
    ldh [c], a                                    ; $01ed: $e2
    inc c                                         ; $01ee: $0c
    ld a, [$c017]                                 ; $01ef: $fa $17 $c0
    ldh [c], a                                    ; $01f2: $e2

jr_000_01f3:
    ld a, [$c001]                                 ; $01f3: $fa $01 $c0
    dec a                                         ; $01f6: $3d
    jr z, jr_000_0210                             ; $01f7: $28 $17

    dec a                                         ; $01f9: $3d
    jr z, jr_000_022d                             ; $01fa: $28 $31

    dec a                                         ; $01fc: $3d
    jr z, jr_000_0227                             ; $01fd: $28 $28

Jump_000_01ff:
    dec a                                         ; $01ff: $3d
    jr z, jr_000_0237                             ; $0200: $28 $35

    dec a                                         ; $0202: $3d
    jr z, jr_000_023f                             ; $0203: $28 $3a

    dec a                                         ; $0205: $3d
    jr z, jr_000_0247                             ; $0206: $28 $3f

    dec a                                         ; $0208: $3d
    jr z, jr_000_024c                             ; $0209: $28 $41

    dec a                                         ; $020b: $3d
    jr z, jr_000_0251                             ; $020c: $28 $43

    jr jr_000_022d                                ; $020e: $18 $1d

jr_000_0210:
    ld hl, $c025                                  ; $0210: $21 $25 $c0
    ld a, [hl]                                    ; $0213: $7e
    inc [hl]                                      ; $0214: $34
    or a                                          ; $0215: $b7
    jr z, jr_000_021b                             ; $0216: $28 $03

    dec a                                         ; $0218: $3d
    jr z, jr_000_0222                             ; $0219: $28 $07

jr_000_021b:
    call Call_000_2bc2_DrawStatTiles                            ; $021b: $cd $c2 $2b
    call Call_000_2c80                            ; $021e: $cd $80 $2c
    ret                                           ; $0221: $c9


jr_000_0222:
    call Call_000_20cd                            ; $0222: $cd $cd $20
    jr jr_000_022d                                ; $0225: $18 $06

jr_000_0227:
    call Call_000_2c80                            ; $0227: $cd $80 $2c
    call Call_000_2d1c                            ; $022a: $cd $1c $2d

jr_000_022d:
    xor a                                         ; $022d: $af
    ld [$c025], a                                 ; $022e: $ea $25 $c0
    ld a, $01                                     ; $0231: $3e $01
    ld [$c003], a                                 ; $0233: $ea $03 $c0
    ret                                           ; $0236: $c9


jr_000_0237:
    call Call_000_2229                            ; $0237: $cd $29 $22
    call Call_000_2bc2_DrawStatTiles                            ; $023a: $cd $c2 $2b
    jr jr_000_022d                                ; $023d: $18 $ee

jr_000_023f:
    call Call_000_2265                            ; $023f: $cd $65 $22
    call Call_000_2c80                            ; $0242: $cd $80 $2c
    jr jr_000_022d                                ; $0245: $18 $e6

jr_000_0247:
    call Call_000_2d3e                            ; $0247: $cd $3e $2d
    jr jr_000_022d                                ; $024a: $18 $e1

jr_000_024c:
    call Call_000_2201                            ; $024c: $cd $01 $22
    jr jr_000_022d                                ; $024f: $18 $dc

jr_000_0251:
    call Call_000_2d57                            ; $0251: $cd $57 $2d
    call Call_000_20cd                            ; $0254: $cd $cd $20
    jr jr_000_022d                                ; $0257: $18 $d4

Call_000_0259:
    xor a                                         ; $0259: $af
    ld [$c025], a                                 ; $025a: $ea $25 $c0
    inc a                                         ; $025d: $3c
    jr jr_000_0262                                ; $025e: $18 $02

Call_000_0260:
    ld a, $02                                     ; $0260: $3e $02

Call_000_0262:
Jump_000_0262:
jr_000_0262:
    ld [$c002], a                                 ; $0262: $ea $02 $c0
    ld [$c001], a                                 ; $0265: $ea $01 $c0
    ret                                           ; $0268: $c9


Call_000_0269:
    ld hl, $0287                                  ; $0269: $21 $87 $02

jr_000_026c:
    ld a, [hl+]                                   ; $026c: $2a
    ld c, a                                       ; $026d: $4f
    ld a, [hl+]                                   ; $026e: $2a
    ldh [c], a                                    ; $026f: $e2
    inc c                                         ; $0270: $0c
    jr nz, jr_000_026c                            ; $0271: $20 $f9

    ret                                           ; $0273: $c9


Call_000_0274:
    ld c, $47                                     ; $0274: $0e $47
    ld a, $e4                                     ; $0276: $3e $e4
    ldh [c], a                                    ; $0278: $e2
    inc c                                         ; $0279: $0c
    ldh [c], a                                    ; $027a: $e2
    inc c                                         ; $027b: $0c
    ldh [c], a                                    ; $027c: $e2
    ld [$c015], a                                 ; $027d: $ea $15 $c0
    ld [$c016], a                                 ; $0280: $ea $16 $c0
    ld [$c017], a                                 ; $0283: $ea $17 $c0
    ret                                           ; $0286: $c9


    ld b, $00                                     ; $0287: $06 $00
    rlca                                          ; $0289: $07
    rlca                                          ; $028a: $07
    ld b, b                                       ; $028b: $40
    rst RST_20                                    ; $028c: $e7
    ld b, c                                       ; $028d: $41
    ld [$0044], sp                                ; $028e: $08 $44 $00
    ld c, d                                       ; $0291: $4a
    sub b                                         ; $0292: $90
    ld c, e                                       ; $0293: $4b
    rlca                                          ; $0294: $07
    ld b, d                                       ; $0295: $42
    nop                                           ; $0296: $00
    ld b, e                                       ; $0297: $43
    nop                                           ; $0298: $00
    ld b, a                                       ; $0299: $47
    nop                                           ; $029a: $00
    ld c, b                                       ; $029b: $48
    nop                                           ; $029c: $00
    ld c, c                                       ; $029d: $49
    nop                                           ; $029e: $00
    rst RST_38                                    ; $029f: $ff
    rrca                                          ; $02a0: $0f

Call_000_02a1:
    ld a, $20                                     ; $02a1: $3e $20
    ldh [rP1], a                                  ; $02a3: $e0 $00
    ldh a, [rP1]                                  ; $02a5: $f0 $00
    ldh a, [rP1]                                  ; $02a7: $f0 $00
    cpl                                           ; $02a9: $2f
    and $0f                                       ; $02aa: $e6 $0f
    ld b, a                                       ; $02ac: $47
    ld a, $10                                     ; $02ad: $3e $10
    ldh [rP1], a                                  ; $02af: $e0 $00
    ldh a, [rP1]                                  ; $02b1: $f0 $00
    ldh a, [rP1]                                  ; $02b3: $f0 $00
    ldh a, [rP1]                                  ; $02b5: $f0 $00
    ldh a, [rP1]                                  ; $02b7: $f0 $00
    ldh a, [rP1]                                  ; $02b9: $f0 $00
    ldh a, [rP1]                                  ; $02bb: $f0 $00
    ldh a, [rP1]                                  ; $02bd: $f0 $00
    ldh a, [rP1]                                  ; $02bf: $f0 $00
    cpl                                           ; $02c1: $2f
    and $0f                                       ; $02c2: $e6 $0f
    swap a                                        ; $02c4: $cb $37
    or b                                          ; $02c6: $b0
    ld c, a                                       ; $02c7: $4f
    ld a, [$c00e]                                 ; $02c8: $fa $0e $c0
    xor c                                         ; $02cb: $a9
    and c                                         ; $02cc: $a1

Call_000_02cd:
    ld [$c00f], a                                 ; $02cd: $ea $0f $c0
    ld a, c                                       ; $02d0: $79
    ld [$c00e], a                                 ; $02d1: $ea $0e $c0
    ld a, $30                                     ; $02d4: $3e $30
    ldh [rP1], a                                  ; $02d6: $e0 $00
    ret                                           ; $02d8: $c9


    ld a, [$c00f]                                 ; $02d9: $fa $0f $c0
    and $80                                       ; $02dc: $e6 $80
    ret z                                         ; $02de: $c8

    ld a, $04                                     ; $02df: $3e $04
    ld [$c03d], a                                 ; $02e1: $ea $3d $c0
    call Call_000_0e6d                            ; $02e4: $cd $6d $0e
    ld hl, $c008                                  ; $02e7: $21 $08 $c0
    rst RST_08                                    ; $02ea: $cf
    ld de, $0401                                  ; $02eb: $11 $01 $04
    call Call_000_0332                            ; $02ee: $cd $32 $03
    ld a, $03                                     ; $02f1: $3e $03
    jp z, Jump_000_06b3                           ; $02f3: $ca $b3 $06

    ld hl, $c008                                  ; $02f6: $21 $08 $c0
    ld [hl], $01                                  ; $02f9: $36 $01
    inc hl                                        ; $02fb: $23
    ld [hl], $02                                  ; $02fc: $36 $02
    ret                                           ; $02fe: $c9


Call_000_02ff:
    ld c, $90                                     ; $02ff: $0e $90
    ld b, $0a                                     ; $0301: $06 $0a
    ld hl, $030d                                  ; $0303: $21 $0d $03

jr_000_0306:
    ld a, [hl+]                                   ; $0306: $2a
    ldh [c], a                                    ; $0307: $e2
    inc c                                         ; $0308: $0c
    dec b                                         ; $0309: $05
    jr nz, jr_000_0306                            ; $030a: $20 $fa

    ret                                           ; $030c: $c9


    ld a, $dd                                     ; $030d: $3e $dd
    ldh [rDMA], a                                 ; $030f: $e0 $46
    ld a, $28                                     ; $0311: $3e $28

jr_000_0313:
    dec a                                         ; $0313: $3d
    jr nz, jr_000_0313                            ; $0314: $20 $fd

    ret                                           ; $0316: $c9


Call_000_0317:
    ld hl, $c113                                  ; $0317: $21 $13 $c1
    ld a, [hl]                                    ; $031a: $7e
    ld [hl], $00                                  ; $031b: $36 $00
    or a                                          ; $031d: $b7
    jp nz, Jump_000_06b2                          ; $031e: $c2 $b2 $06

    ret                                           ; $0321: $c9


Call_000_0322:
    ld a, [$c00e]                                 ; $0322: $fa $0e $c0
    and $b0                                       ; $0325: $e6 $b0
    cp $b0                                        ; $0327: $fe $b0
    ret nz                                        ; $0329: $c0

    ld [$c113], a                                 ; $032a: $ea $13 $c1
    xor a                                         ; $032d: $af
    ld [$c013], a                                 ; $032e: $ea $13 $c0
    ret                                           ; $0331: $c9


Call_000_0332:
    ld a, h                                       ; $0332: $7c
    cp d                                          ; $0333: $ba
    ret nz                                        ; $0334: $c0

    ld a, l                                       ; $0335: $7d
    cp e                                          ; $0336: $bb
    ret                                           ; $0337: $c9


Call_000_0338:
    ld a, h                                       ; $0338: $7c
    cp b                                          ; $0339: $b8
    ret nz                                        ; $033a: $c0

    ld a, l                                       ; $033b: $7d
    cp c                                          ; $033c: $b9
    ret                                           ; $033d: $c9


Call_000_033e:
    call Call_000_0332                            ; $033e: $cd $32 $03
    push af                                       ; $0341: $f5
    ld a, l                                       ; $0342: $7d
    sub e                                         ; $0343: $93
    ld l, a                                       ; $0344: $6f
    ld a, h                                       ; $0345: $7c
    sbc d                                         ; $0346: $9a
    ld h, a                                       ; $0347: $67
    pop af                                        ; $0348: $f1
    ret                                           ; $0349: $c9


    call Call_000_0338                            ; $034a: $cd $38 $03
    push af                                       ; $034d: $f5
    ld a, l                                       ; $034e: $7d
    sub c                                         ; $034f: $91
    ld l, a                                       ; $0350: $6f
    ld a, h                                       ; $0351: $7c
    sbc b                                         ; $0352: $98
    ld h, a                                       ; $0353: $67
    pop af                                        ; $0354: $f1
    ret                                           ; $0355: $c9


    push af                                       ; $0356: $f5
    xor a                                         ; $0357: $af
    sub e                                         ; $0358: $93
    ld e, a                                       ; $0359: $5f
    ld a, $00                                     ; $035a: $3e $00
    sbc d                                         ; $035c: $9a
    ld d, a                                       ; $035d: $57
    pop af                                        ; $035e: $f1
    ret                                           ; $035f: $c9


    push af                                       ; $0360: $f5
    xor a                                         ; $0361: $af
    sub c                                         ; $0362: $91
    ld c, a                                       ; $0363: $4f
    ld a, $00                                     ; $0364: $3e $00
    sbc b                                         ; $0366: $98
    ld b, a                                       ; $0367: $47
    pop af                                        ; $0368: $f1
    ret                                           ; $0369: $c9


    push af                                       ; $036a: $f5
    xor a                                         ; $036b: $af
    sub l                                         ; $036c: $95
    ld l, a                                       ; $036d: $6f
    ld a, $00                                     ; $036e: $3e $00
    sbc h                                         ; $0370: $9c
    ld h, a                                       ; $0371: $67
    pop af                                        ; $0372: $f1
    ret                                           ; $0373: $c9


Call_000_0374:
    call Call_000_039a                            ; $0374: $cd $9a $03
    ret nc                                        ; $0377: $d0

    ld c, $99                                     ; $0378: $0e $99
    ret                                           ; $037a: $c9


; Subtracts BCD value [de] from BCD value bc, clamping to 0 on underflow.
; Used e.g. to subtract incoming damage from wPlayerHP.
Call_000_037b_SubtractBCD16Clamped:
    call Call_000_039f                            ; $037b: $cd $9f $03
    ret nc                                        ; $037e: $d0

    ld c, $00                                     ; $037f: $0e $00
    ret                                           ; $0381: $c9


Call_000_0382:
    call Call_000_039a                            ; $0382: $cd $9a $03
    ld a, b                                       ; $0385: $78
    adc d                                         ; $0386: $8a
    daa                                           ; $0387: $27

Call_000_0388:
    ld b, a                                       ; $0388: $47
    ret nc                                        ; $0389: $d0

    ld bc, $9999                                  ; $038a: $01 $99 $99
    ret                                           ; $038d: $c9


    call Call_000_039f                            ; $038e: $cd $9f $03
    ld a, b                                       ; $0391: $78

Jump_000_0392:
    sbc d                                         ; $0392: $9a
    daa                                           ; $0393: $27
    ld b, a                                       ; $0394: $47
    ret nc                                        ; $0395: $d0

    ld bc, $0000                                  ; $0396: $01 $00 $00
    ret                                           ; $0399: $c9


Call_000_039a:
    ld a, c                                       ; $039a: $79
    add e                                         ; $039b: $83
    daa                                           ; $039c: $27
    ld c, a                                       ; $039d: $4f
    ret                                           ; $039e: $c9


Call_000_039f:
    ld a, c                                       ; $039f: $79
    sub e                                         ; $03a0: $93
    daa                                           ; $03a1: $27
    ld c, a                                       ; $03a2: $4f
    ret                                           ; $03a3: $c9


Call_000_03a4:
    push bc                                       ; $03a4: $c5
    push af                                       ; $03a5: $f5
    swap a                                        ; $03a6: $cb $37
    and $0f                                       ; $03a8: $e6 $0f
    ld b, a                                       ; $03aa: $47
    ld c, $0a                                     ; $03ab: $0e $0a
    call Call_000_03cf                            ; $03ad: $cd $cf $03
    ld b, a                                       ; $03b0: $47
    pop af                                        ; $03b1: $f1
    and $0f                                       ; $03b2: $e6 $0f
    add b                                         ; $03b4: $80
    pop bc                                        ; $03b5: $c1
    ret                                           ; $03b6: $c9


Call_000_03b7:
    cp $63                                        ; $03b7: $fe $63
    jr c, jr_000_03be                             ; $03b9: $38 $03

Call_000_03bb:
    ld a, $99                                     ; $03bb: $3e $99
    ret                                           ; $03bd: $c9


jr_000_03be:
    push bc                                       ; $03be: $c5
    ld b, $ff                                     ; $03bf: $06 $ff
    ld c, $0a                                     ; $03c1: $0e $0a

Jump_000_03c3:
jr_000_03c3:
    inc b                                         ; $03c3: $04
    sub c                                         ; $03c4: $91
    jr nc, jr_000_03c3                            ; $03c5: $30 $fc

    add c                                         ; $03c7: $81
    ld c, a                                       ; $03c8: $4f
    ld a, b                                       ; $03c9: $78
    swap a                                        ; $03ca: $cb $37
    add c                                         ; $03cc: $81
    pop bc                                        ; $03cd: $c1
    ret                                           ; $03ce: $c9


Call_000_03cf:
    push de                                       ; $03cf: $d5
    xor a                                         ; $03d0: $af
    ld e, $04                                     ; $03d1: $1e $04

jr_000_03d3:
    rr b                                          ; $03d3: $cb $18
    jr nc, jr_000_03d8                            ; $03d5: $30 $01

    add c                                         ; $03d7: $81

jr_000_03d8:
    sla c                                         ; $03d8: $cb $21
    dec e                                         ; $03da: $1d
    jr nz, jr_000_03d3                            ; $03db: $20 $f6

    pop de                                        ; $03dd: $d1
    ret                                           ; $03de: $c9


Call_000_03df:
    push de                                       ; $03df: $d5
    ld hl, $0000                                  ; $03e0: $21 $00 $00
    ld d, $08                                     ; $03e3: $16 $08

jr_000_03e5:
    sla l                                         ; $03e5: $cb $25
    rl h                                          ; $03e7: $cb $14
    sla c                                         ; $03e9: $cb $21
    jr nc, jr_000_03ef                            ; $03eb: $30 $02

    ld a, b                                       ; $03ed: $78
    rst RST_28                                    ; $03ee: $ef

jr_000_03ef:
    dec d                                         ; $03ef: $15
    jr nz, jr_000_03e5                            ; $03f0: $20 $f3

    pop de                                        ; $03f2: $d1
    ret                                           ; $03f3: $c9


Call_000_03f4:
    push de                                       ; $03f4: $d5
    ld de, $0000                                  ; $03f5: $11 $00 $00
    ld a, $10                                     ; $03f8: $3e $10

jr_000_03fa:
    push af                                       ; $03fa: $f5
    sla l                                         ; $03fb: $cb $25

Jump_000_03fd:
    rl h                                          ; $03fd: $cb $14
    rl e                                          ; $03ff: $cb $13
    rl d                                          ; $0401: $cb $12
    ld a, d                                       ; $0403: $7a
    cp b                                          ; $0404: $b8

Jump_000_0405:
    jr nz, jr_000_0409                            ; $0405: $20 $02

    ld a, e                                       ; $0407: $7b
    cp c                                          ; $0408: $b9

jr_000_0409:
    jr c, jr_000_0412                             ; $0409: $38 $07

    ld a, e                                       ; $040b: $7b
    sbc c                                         ; $040c: $99
    ld e, a                                       ; $040d: $5f
    ld a, d                                       ; $040e: $7a
    sbc b                                         ; $040f: $98
    ld d, a                                       ; $0410: $57
    inc l                                         ; $0411: $2c

jr_000_0412:
    pop af                                        ; $0412: $f1
    dec a                                         ; $0413: $3d
    jr nz, jr_000_03fa                            ; $0414: $20 $e4

    ld c, e                                       ; $0416: $4b
    ld b, d                                       ; $0417: $42
    pop de                                        ; $0418: $d1
    ret                                           ; $0419: $c9


Call_000_041a:
Jump_000_041a:
    add a                                         ; $041a: $87
    rst RST_28                                    ; $041b: $ef
    rst RST_08                                    ; $041c: $cf
    ret                                           ; $041d: $c9


; de = word_table[a] (word-sized table lookup: hl = table base set by caller,
; a = index). Used e.g. by Call_000_2b72_DrawObjectiveProgressTiles/Call_000_2b5d_DrawObjectiveTargetTiles to fetch the
; per-quest-type objective-progress/target WRAM address via [$c101].
Call_000_041e_WordTableLookupToDE:
    add a                                         ; $041e: $87
    rst RST_28                                    ; $041f: $ef

Call_000_0420:
    ld e, [hl]                                    ; $0420: $5e
    inc hl                                        ; $0421: $23
    ld d, [hl]                                    ; $0422: $56
    ret                                           ; $0423: $c9


Call_000_0424:
    add a                                         ; $0424: $87
    rst RST_28                                    ; $0425: $ef
    ld c, [hl]                                    ; $0426: $4e
    inc hl                                        ; $0427: $23
    ld b, [hl]                                    ; $0428: $46
    ret                                           ; $0429: $c9


Call_000_042a:
    add a                                         ; $042a: $87
    add a                                         ; $042b: $87
    rst RST_28                                    ; $042c: $ef
    ld e, [hl]                                    ; $042d: $5e
    inc hl                                        ; $042e: $23
    ld d, [hl]                                    ; $042f: $56
    inc hl                                        ; $0430: $23
    rst RST_08                                    ; $0431: $cf
    ret                                           ; $0432: $c9


; RST_00 handler: inline jump table trampoline. Caller does `rst RST_00` with
; `a` = table index; the 2-byte-per-entry table lives immediately after the
; `rst RST_00` opcode in the instruction stream (hence looks like garbage data
; when disassembled linearly without a CDL). Pops the return address (-> table
; base), hl += 2*a (RST_28), reads table[a] via RST_08, jumps there.
Jump_000_0433_RstJumpTableTrampoline:
    ld e, l                                       ; $0433: $5d
    ld d, h                                       ; $0434: $54
    pop hl                                        ; $0435: $e1
    add a                                         ; $0436: $87
    rst RST_28                                    ; $0437: $ef
    rst RST_08                                    ; $0438: $cf
    push hl                                       ; $0439: $e5
    ld l, e                                       ; $043a: $6b
    ld h, d                                       ; $043b: $62
    ret                                           ; $043c: $c9


    pop hl                                        ; $043d: $e1
    add a                                         ; $043e: $87
    rst RST_28                                    ; $043f: $ef
    rst RST_08                                    ; $0440: $cf
    jp hl                                         ; $0441: $e9


Call_000_0442:
Jump_000_0442:
jr_000_0442:
    ld a, [hl+]                                   ; $0442: $2a
    ld [de], a                                    ; $0443: $12
    inc de                                        ; $0444: $13
    dec bc                                        ; $0445: $0b
    ld a, c                                       ; $0446: $79
    or b                                          ; $0447: $b0
    jr nz, jr_000_0442                            ; $0448: $20 $f8

    ret                                           ; $044a: $c9


Call_000_044b:
    push de                                       ; $044b: $d5
    ld e, l                                       ; $044c: $5d

Call_000_044d:
    ld d, h                                       ; $044d: $54
    pop hl                                        ; $044e: $e1
    ret                                           ; $044f: $c9


Call_000_0450:
Jump_000_0450:
    push bc                                       ; $0450: $c5
    ld c, l                                       ; $0451: $4d
    ld b, h                                       ; $0452: $44
    pop hl                                        ; $0453: $e1
    ret                                           ; $0454: $c9


Call_000_0455:
    xor a                                         ; $0455: $af

Call_000_0456:
    push bc                                       ; $0456: $c5
    push de                                       ; $0457: $d5
    push hl                                       ; $0458: $e5
    or a                                          ; $0459: $b7
    jr nz, jr_000_045d                            ; $045a: $20 $01

    dec a                                         ; $045c: $3d

jr_000_045d:
    ld b, a                                       ; $045d: $47
    ld c, $00                                     ; $045e: $0e $00
    ld a, [$c011]                                 ; $0460: $fa $11 $c0
    ld l, a                                       ; $0463: $6f
    ld a, [$c012]                                 ; $0464: $fa $12 $c0
    ld h, a                                       ; $0467: $67
    push hl                                       ; $0468: $e5
    add hl, hl                                    ; $0469: $29
    add hl, hl                                    ; $046a: $29
    add hl, hl                                    ; $046b: $29
    push hl                                       ; $046c: $e5
    add hl, hl                                    ; $046d: $29
    jr nc, jr_000_0472                            ; $046e: $30 $02

    ld c, $01                                     ; $0470: $0e $01

jr_000_0472:
    pop de                                        ; $0472: $d1
    add hl, de                                    ; $0473: $19
    jr nc, jr_000_0478                            ; $0474: $30 $02

    ld c, $01                                     ; $0476: $0e $01

jr_000_0478:
    ld de, $0929                                  ; $0478: $11 $29 $09
    add hl, de                                    ; $047b: $19
    jr nc, jr_000_0480                            ; $047c: $30 $02

    ld c, $01                                     ; $047e: $0e $01

jr_000_0480:
    pop de                                        ; $0480: $d1
    call Call_000_033e                            ; $0481: $cd $3e $03
    jr nc, jr_000_0488                            ; $0484: $30 $02

    ld c, $00                                     ; $0486: $0e $00

jr_000_0488:
    ld a, l                                       ; $0488: $7d
    sub $d7                                       ; $0489: $d6 $d7
    ld l, a                                       ; $048b: $6f
    ld a, h                                       ; $048c: $7c
    sbc $11                                       ; $048d: $de $11
    ld h, a                                       ; $048f: $67
    ld a, c                                       ; $0490: $79
    sbc $00                                       ; $0491: $de $00
    ld c, a                                       ; $0493: $4f
    jr nc, jr_000_0488                            ; $0494: $30 $f2

    ld de, $11d7                                  ; $0496: $11 $d7 $11
    add hl, de                                    ; $0499: $19
    ld a, h                                       ; $049a: $7c
    ld [$c012], a                                 ; $049b: $ea $12 $c0
    ld a, l                                       ; $049e: $7d
    ld [$c011], a                                 ; $049f: $ea $11 $c0

jr_000_04a2:
    sub b                                         ; $04a2: $90
    jr nc, jr_000_04a2                            ; $04a3: $30 $fd

    add b                                         ; $04a5: $80
    pop hl                                        ; $04a6: $e1
    pop de                                        ; $04a7: $d1
    pop bc                                        ; $04a8: $c1
    ret                                           ; $04a9: $c9


Call_000_04aa:
Jump_000_04aa:
    push af                                       ; $04aa: $f5
    ld a, $01                                     ; $04ab: $3e $01

jr_000_04ad:
    di                                            ; $04ad: $f3
    ld [$2100], a                                 ; $04ae: $ea $00 $21
    ld [$c024], a                                 ; $04b1: $ea $24 $c0
    ei                                            ; $04b4: $fb
    pop af                                        ; $04b5: $f1
    ret                                           ; $04b6: $c9


Call_000_04b7:
    push af                                       ; $04b7: $f5
    ld a, $02                                     ; $04b8: $3e $02
    jr jr_000_04ad                                ; $04ba: $18 $f1

Call_000_04bc:
    push af                                       ; $04bc: $f5
    ld a, $03                                     ; $04bd: $3e $03
    jr jr_000_04ad                                ; $04bf: $18 $ec

Call_000_04c1:
    push af                                       ; $04c1: $f5
    ld a, $04                                     ; $04c2: $3e $04
    jr jr_000_04ad                                ; $04c4: $18 $e7

Call_000_04c6:
    push af                                       ; $04c6: $f5
    ld a, $05                                     ; $04c7: $3e $05
    jr jr_000_04ad                                ; $04c9: $18 $e2

Call_000_04cb:
    push af                                       ; $04cb: $f5

Call_000_04cc:
    ld a, $06                                     ; $04cc: $3e $06
    jr jr_000_04ad                                ; $04ce: $18 $dd

Call_000_04d0:
    push af                                       ; $04d0: $f5
    ld a, $07                                     ; $04d1: $3e $07
    jr jr_000_04ad                                ; $04d3: $18 $d8

Call_000_04d5:
Jump_000_04d5:
    ld a, [hl+]                                   ; $04d5: $2a
    ld [de], a                                    ; $04d6: $12
    inc e                                         ; $04d7: $1c
    ld a, [hl+]                                   ; $04d8: $2a
    ld [de], a                                    ; $04d9: $12
    inc e                                         ; $04da: $1c
    ld a, [hl+]                                   ; $04db: $2a
    ld [de], a                                    ; $04dc: $12
    inc e                                         ; $04dd: $1c
    ld a, [hl+]                                   ; $04de: $2a
    ld [de], a                                    ; $04df: $12
    inc e                                         ; $04e0: $1c
    ld a, [hl+]                                   ; $04e1: $2a
    ld [de], a                                    ; $04e2: $12
    inc e                                         ; $04e3: $1c
    ld a, [hl+]                                   ; $04e4: $2a
    ld [de], a                                    ; $04e5: $12
    inc e                                         ; $04e6: $1c
    ld a, [hl+]                                   ; $04e7: $2a
    ld [de], a                                    ; $04e8: $12
    inc e                                         ; $04e9: $1c
    ld a, [hl+]                                   ; $04ea: $2a
    ld [de], a                                    ; $04eb: $12
    inc e                                         ; $04ec: $1c
    ld a, [hl+]                                   ; $04ed: $2a
    ld [de], a                                    ; $04ee: $12
    inc e                                         ; $04ef: $1c
    ld a, [hl+]                                   ; $04f0: $2a
    ld [de], a                                    ; $04f1: $12
    inc e                                         ; $04f2: $1c
    ld a, [hl+]                                   ; $04f3: $2a
    ld [de], a                                    ; $04f4: $12
    inc e                                         ; $04f5: $1c
    ld a, [hl+]                                   ; $04f6: $2a
    ld [de], a                                    ; $04f7: $12
    inc e                                         ; $04f8: $1c
    ld a, [hl+]                                   ; $04f9: $2a
    ld [de], a                                    ; $04fa: $12
    inc e                                         ; $04fb: $1c
    ld a, [hl+]                                   ; $04fc: $2a
    ld [de], a                                    ; $04fd: $12
    inc e                                         ; $04fe: $1c
    ld a, [hl+]                                   ; $04ff: $2a
    ld [de], a                                    ; $0500: $12
    inc e                                         ; $0501: $1c
    ld a, [hl+]                                   ; $0502: $2a

Call_000_0503:
    ld [de], a                                    ; $0503: $12
    inc e                                         ; $0504: $1c
    ret                                           ; $0505: $c9


Call_000_0506:
Jump_000_0506:
jr_000_0506:
    push hl                                       ; $0506: $e5
    call Call_000_05ae                            ; $0507: $cd $ae $05
    ld b, d                                       ; $050a: $42
    ld a, [$c027]                                 ; $050b: $fa $27 $c0
    ld c, a                                       ; $050e: $4f
    call Call_000_03cf                            ; $050f: $cd $cf $03
    rst RST_28                                    ; $0512: $ef
    ld a, [$c028]                                 ; $0513: $fa $28 $c0
    rst RST_28                                    ; $0516: $ef
    ld a, [hl]                                    ; $0517: $7e
    pop hl                                        ; $0518: $e1
    bit 7, a                                      ; $0519: $cb $7f
    jr nz, jr_000_054c                            ; $051b: $20 $2f

    bit 6, a                                      ; $051d: $cb $77
    jr nz, jr_000_0553                            ; $051f: $20 $32

    ld [$c02b], a                                 ; $0521: $ea $2b $c0
    ld a, [$c027]                                 ; $0524: $fa $27 $c0
    ld e, a                                       ; $0527: $5f
    ld a, [$c029]                                 ; $0528: $fa $29 $c0
    cp e                                          ; $052b: $bb
    jr nz, jr_000_0539                            ; $052c: $20 $0b

    ld a, [$c028]                                 ; $052e: $fa $28 $c0
    ld d, a                                       ; $0531: $57
    ld a, [$c02a]                                 ; $0532: $fa $2a $c0
    cp d                                          ; $0535: $ba
    jr nz, jr_000_0539                            ; $0536: $20 $01

    ret                                           ; $0538: $c9


jr_000_0539:
    ld a, [$c02c]                                 ; $0539: $fa $2c $c0
    call Call_000_00d9                            ; $053c: $cd $d9 $00

Call_000_053f:
    ld a, [$c027]                                 ; $053f: $fa $27 $c0
    ld [$c029], a                                 ; $0542: $ea $29 $c0
    ld a, [$c028]                                 ; $0545: $fa $28 $c0
    ld [$c02a], a                                 ; $0548: $ea $2a $c0
    ret                                           ; $054b: $c9


jr_000_054c:
    and $0f                                       ; $054c: $e6 $0f
    ld [$c028], a                                 ; $054e: $ea $28 $c0
    jr jr_000_0506                                ; $0551: $18 $b3

jr_000_0553:
    and $0f                                       ; $0553: $e6 $0f
    ld [$c027], a                                 ; $0555: $ea $27 $c0
    jr jr_000_0506                                ; $0558: $18 $ac

Call_000_055a:
Jump_000_055a:
jr_000_055a:
    push hl                                       ; $055a: $e5
    call Call_000_05c6                            ; $055b: $cd $c6 $05
    ld b, d                                       ; $055e: $42
    ld a, [$c02d]                                 ; $055f: $fa $2d $c0
    ld c, a                                       ; $0562: $4f
    call Call_000_03cf                            ; $0563: $cd $cf $03
    rst RST_28                                    ; $0566: $ef
    ld a, [$c02e]                                 ; $0567: $fa $2e $c0
    rst RST_28                                    ; $056a: $ef
    ld a, [hl]                                    ; $056b: $7e
    pop hl                                        ; $056c: $e1
    bit 7, a                                      ; $056d: $cb $7f
    jr nz, jr_000_05a0                            ; $056f: $20 $2f

    bit 6, a                                      ; $0571: $cb $77
    jr nz, jr_000_05a7                            ; $0573: $20 $32

    ld [$c031], a                                 ; $0575: $ea $31 $c0
    ld a, [$c02d]                                 ; $0578: $fa $2d $c0
    ld e, a                                       ; $057b: $5f
    ld a, [$c02f]                                 ; $057c: $fa $2f $c0
    cp e                                          ; $057f: $bb
    jr nz, jr_000_058d                            ; $0580: $20 $0b

    ld a, [$c02e]                                 ; $0582: $fa $2e $c0
    ld d, a                                       ; $0585: $57
    ld a, [$c030]                                 ; $0586: $fa $30 $c0
    cp d                                          ; $0589: $ba
    jr nz, jr_000_058d                            ; $058a: $20 $01

    ret                                           ; $058c: $c9


jr_000_058d:
    ld a, [$c032]                                 ; $058d: $fa $32 $c0
    call Call_000_00d9                            ; $0590: $cd $d9 $00

Call_000_0593:
    ld a, [$c02d]                                 ; $0593: $fa $2d $c0
    ld [$c02f], a                                 ; $0596: $ea $2f $c0
    ld a, [$c02e]                                 ; $0599: $fa $2e $c0
    ld [$c030], a                                 ; $059c: $ea $30 $c0
    ret                                           ; $059f: $c9


jr_000_05a0:
    and $0f                                       ; $05a0: $e6 $0f
    ld [$c02e], a                                 ; $05a2: $ea $2e $c0
    jr jr_000_055a                                ; $05a5: $18 $b3

jr_000_05a7:
    and $0f                                       ; $05a7: $e6 $0f
    ld [$c02d], a                                 ; $05a9: $ea $2d $c0
    jr jr_000_055a                                ; $05ac: $18 $ac

Call_000_05ae:
    ld a, [$c028]                                 ; $05ae: $fa $28 $c0
    cp d                                          ; $05b1: $ba
    ccf                                           ; $05b2: $3f
    jr nc, jr_000_05ba                            ; $05b3: $30 $05

    ld a, $01                                     ; $05b5: $3e $01
    ld [$c028], a                                 ; $05b7: $ea $28 $c0

jr_000_05ba:
    ld a, [$c027]                                 ; $05ba: $fa $27 $c0
    cp e                                          ; $05bd: $bb
    ccf                                           ; $05be: $3f
    ret nc                                        ; $05bf: $d0

    ld a, $01                                     ; $05c0: $3e $01
    ld [$c027], a                                 ; $05c2: $ea $27 $c0
    ret                                           ; $05c5: $c9


Call_000_05c6:
    ld a, [$c02e]                                 ; $05c6: $fa $2e $c0
    cp d                                          ; $05c9: $ba
    ccf                                           ; $05ca: $3f
    jr nc, jr_000_05d2                            ; $05cb: $30 $05

Call_000_05cd:
    ld a, $01                                     ; $05cd: $3e $01
    ld [$c02e], a                                 ; $05cf: $ea $2e $c0

jr_000_05d2:
    ld a, [$c02d]                                 ; $05d2: $fa $2d $c0
    cp e                                          ; $05d5: $bb
    ccf                                           ; $05d6: $3f
    ret nc                                        ; $05d7: $d0

    ld a, $01                                     ; $05d8: $3e $01
    ld [$c02d], a                                 ; $05da: $ea $2d $c0
    ret                                           ; $05dd: $c9


Call_000_05de:
    ld hl, $c00b                                  ; $05de: $21 $0b $c0
    inc [hl]                                      ; $05e1: $34
    call Call_000_0455                            ; $05e2: $cd $55 $04
    call Call_000_0317                            ; $05e5: $cd $17 $03
    ld a, [$c008]                                 ; $05e8: $fa $08 $c0
    cp $03                                        ; $05eb: $fe $03
    jr nc, jr_000_05f3                            ; $05ed: $30 $04

    ld hl, $02d9                                  ; $05ef: $21 $d9 $02
    push hl                                       ; $05f2: $e5

jr_000_05f3:
    rst RST_00                                    ; $05f3: $c7
    inc c                                         ; $05f4: $0c
    ld b, $4c                                     ; $05f5: $06 $4c
    ld b, $94                                     ; $05f7: $06 $94
    ld b, $ba                                     ; $05f9: $06 $ba
    ld b, $e1                                     ; $05fb: $06 $e1
    ld b, $da                                     ; $05fd: $06 $da
    rlca                                          ; $05ff: $07
    and c                                         ; $0600: $a1
    ld [$08d2], sp                                ; $0601: $08 $d2 $08
    inc d                                         ; $0604: $14
    add hl, bc                                    ; $0605: $09
    inc sp                                        ; $0606: $33
    add hl, bc                                    ; $0607: $09
    rst RST_20                                    ; $0608: $e7
    add hl, bc                                    ; $0609: $09
    ld c, b                                       ; $060a: $48
    ld a, [bc]                                    ; $060b: $0a
    ld a, [$c009]                                 ; $060c: $fa $09 $c0
    rst RST_00                                    ; $060f: $c7
    inc d                                         ; $0610: $14
    ld b, $35                                     ; $0611: $06 $35
    ld b, $cd                                     ; $0613: $06 $cd
    dec l                                         ; $0615: $2d
    ld c, $af                                     ; $0616: $0e $af
    ld [$c001], a                                 ; $0618: $ea $01 $c0
    ld [$c002], a                                 ; $061b: $ea $02 $c0
    call Call_000_0dde                            ; $061e: $cd $de $0d
    call Call_000_196a                            ; $0621: $cd $6a $19
    call Call_000_1e8a                            ; $0624: $cd $8a $1e
    call Call_000_0274                            ; $0627: $cd $74 $02
    call Call_000_0e37                            ; $062a: $cd $37 $0e
    ld a, $00                                     ; $062d: $3e $00
    call Call_000_00d9                            ; $062f: $cd $d9 $00
    jp Jump_000_0647                              ; $0632: $c3 $47 $06


    call Call_000_1ea8                            ; $0635: $cd $a8 $1e
    ret nc                                        ; $0638: $d0

    ld [$c00c], a                                 ; $0639: $ea $0c $c0

Call_000_063c:
Jump_000_063c:
    ld hl, $c008                                  ; $063c: $21 $08 $c0
    inc [hl]                                      ; $063f: $34
    inc l                                         ; $0640: $2c
    ld [hl], $00                                  ; $0641: $36 $00
    ret                                           ; $0643: $c9


Jump_000_0644:
    ld [$c00c], a                                 ; $0644: $ea $0c $c0

Call_000_0647:
Jump_000_0647:
jr_000_0647:
    ld hl, $c009                                  ; $0647: $21 $09 $c0
    inc [hl]                                      ; $064a: $34
    ret                                           ; $064b: $c9


    ld a, [$c009]                                 ; $064c: $fa $09 $c0
    rst RST_00                                    ; $064f: $c7
    ld e, d                                       ; $0650: $5a
    ld b, $5f                                     ; $0651: $06 $5f
    ld b, $71                                     ; $0653: $06 $71
    ld b, $76                                     ; $0655: $06 $76
    ld b, $7e                                     ; $0657: $06 $7e
    ld b, $cd                                     ; $0659: $06 $cd
    cp d                                          ; $065b: $ba
    ld e, $18                                     ; $065c: $1e $18
    add sp, -$33                                  ; $065e: $e8 $cd
    add hl, hl                                    ; $0660: $29
    rra                                           ; $0661: $1f
    call Call_000_2f7c                            ; $0662: $cd $7c $2f
    ld a, [$c03e]                                 ; $0665: $fa $3e $c0
    cp $ff                                        ; $0668: $fe $ff
    ret nz                                        ; $066a: $c0

    ld a, $03                                     ; $066b: $3e $03
    ld [$c009], a                                 ; $066d: $ea $09 $c0
    ret                                           ; $0670: $c9


    call Call_000_1ec3                            ; $0671: $cd $c3 $1e
    jr jr_000_0647                                ; $0674: $18 $d1

    ld hl, $0180                                  ; $0676: $21 $80 $01
    call $77cc                                    ; $0679: $cd $cc $77
    jr jr_000_0647                                ; $067c: $18 $c9

    ld hl, $c039                                  ; $067e: $21 $39 $c0
    rst RST_08                                    ; $0681: $cf
    ld de, $0080                                  ; $0682: $11 $80 $00
    call Call_000_0332                            ; $0685: $cd $32 $03
    ld a, $19                                     ; $0688: $3e $19
    call z, Call_000_00d9                         ; $068a: $cc $d9 $00
    call Call_000_203e                            ; $068d: $cd $3e $20
    ret nz                                        ; $0690: $c0

    jp Jump_000_063c                              ; $0691: $c3 $3c $06


    ld a, [$c009]                                 ; $0694: $fa $09 $c0
    rst RST_00                                    ; $0697: $c7
    sbc [hl]                                      ; $0698: $9e
    ld b, $a4                                     ; $0699: $06 $a4
    ld b, $b2                                     ; $069b: $06 $b2
    ld b, $cd                                     ; $069d: $06 $cd
    adc $76                                       ; $069f: $ce $76
    jp Jump_000_0647                              ; $06a1: $c3 $47 $06


    call Call_000_2f7c                            ; $06a4: $cd $7c $2f
    call $771d                                    ; $06a7: $cd $1d $77
    ld a, [$c03b]                                 ; $06aa: $fa $3b $c0
    or a                                          ; $06ad: $b7
    ret z                                         ; $06ae: $c8

    jp Jump_000_0647                              ; $06af: $c3 $47 $06


Jump_000_06b2:
    xor a                                         ; $06b2: $af

Jump_000_06b3:
    ld hl, $c008                                  ; $06b3: $21 $08 $c0
    ld [hl+], a                                   ; $06b6: $22
    ld [hl], $00                                  ; $06b7: $36 $00
    ret                                           ; $06b9: $c9


    call Call_000_0e2d                            ; $06ba: $cd $2d $0e
    xor a                                         ; $06bd: $af
    ld [$c001], a                                 ; $06be: $ea $01 $c0
    ld [$c002], a                                 ; $06c1: $ea $02 $c0
    call Call_000_0ae2                            ; $06c4: $cd $e2 $0a
    call Call_000_0dde                            ; $06c7: $cd $de $0d
    call Call_000_0e5c                            ; $06ca: $cd $5c $0e
    call Call_000_0274                            ; $06cd: $cd $74 $02
    call Call_000_0adc                            ; $06d0: $cd $dc $0a
    call Call_000_0e37                            ; $06d3: $cd $37 $0e
    call Call_000_063c                            ; $06d6: $cd $3c $06
    call Call_000_1027                            ; $06d9: $cd $27 $10
    ret z                                         ; $06dc: $c8

    call Call_000_0ef5                            ; $06dd: $cd $f5 $0e
    ret                                           ; $06e0: $c9


    ld a, [$c009]                                 ; $06e1: $fa $09 $c0
    rst RST_00                                    ; $06e4: $c7
    rst RST_30                                    ; $06e5: $f7
    ld b, $16                                     ; $06e6: $06 $16
    rlca                                          ; $06e8: $07
    dec h                                         ; $06e9: $25
    rlca                                          ; $06ea: $07
    ld e, h                                       ; $06eb: $5c
    rlca                                          ; $06ec: $07
    add h                                         ; $06ed: $84
    rlca                                          ; $06ee: $07
    sub e                                         ; $06ef: $93
    rlca                                          ; $06f0: $07
    xor c                                         ; $06f1: $a9
    rlca                                          ; $06f2: $07
    jp nz, $ce07                                  ; $06f3: $c2 $07 $ce

    rlca                                          ; $06f6: $07
    ld hl, $c500                                  ; $06f7: $21 $00 $c5
    ld de, $c501                                  ; $06fa: $11 $01 $c5
    ld bc, $007f                                  ; $06fd: $01 $7f $00
    ld [hl], $00                                  ; $0700: $36 $00

Jump_000_0702:
    call Call_000_0442                            ; $0702: $cd $42 $04

Jump_000_0705:
    call Call_000_0f43                            ; $0705: $cd $43 $0f
    ld a, [$c013]                                 ; $0708: $fa $13 $c0
    or a                                          ; $070b: $b7
    jr nz, jr_000_0713                            ; $070c: $20 $05

    ld a, $0f                                     ; $070e: $3e $0f
    call Call_000_00d9                            ; $0710: $cd $d9 $00

jr_000_0713:
    jp Jump_000_0647                              ; $0713: $c3 $47 $06


    call Call_000_0e2d                            ; $0716: $cd $2d $0e
    call $6487                                    ; $0719: $cd $87 $64
    call Call_000_2f90                            ; $071c: $cd $90 $2f
    call Call_000_0e37                            ; $071f: $cd $37 $0e
    jp Jump_000_0647                              ; $0722: $c3 $47 $06


    call $64d5                                    ; $0725: $cd $d5 $64
    call Call_000_2f7c                            ; $0728: $cd $7c $2f
    ld a, [$c00e]                                 ; $072b: $fa $0e $c0
    and $82                                       ; $072e: $e6 $82
    cp $82                                        ; $0730: $fe $82
    jr nz, jr_000_073b                            ; $0732: $20 $07

    ld a, [$c00f]                                 ; $0734: $fa $0f $c0
    and $20                                       ; $0737: $e6 $20
    jr nz, jr_000_0753                            ; $0739: $20 $18

jr_000_073b:
    ld a, [$c00f]                                 ; $073b: $fa $0f $c0
    and $10                                       ; $073e: $e6 $10
    ret z                                         ; $0740: $c8

    ld a, $35                                     ; $0741: $3e $35
    call Call_000_00d9                            ; $0743: $cd $d9 $00
    ld a, [$c02b]                                 ; $0746: $fa $2b $c0
    or a                                          ; $0749: $b7
    jp z, Jump_000_063c                           ; $074a: $ca $3c $06

    call $67b0                                    ; $074d: $cd $b0 $67
    jp Jump_000_0647                              ; $0750: $c3 $47 $06


jr_000_0753:
    call $7812                                    ; $0753: $cd $12 $78
    ld a, $07                                     ; $0756: $3e $07
    ld [$c009], a                                 ; $0758: $ea $09 $c0
    ret                                           ; $075b: $c9


    call $67ff                                    ; $075c: $cd $ff $67
    call Call_000_2f7c                            ; $075f: $cd $7c $2f
    ld a, [$c151]                                 ; $0762: $fa $51 $c1
    rst RST_00                                    ; $0765: $c7
    ld [hl], a                                    ; $0766: $77
    rlca                                          ; $0767: $07
    ld [hl], d                                    ; $0768: $72
    rlca                                          ; $0769: $07
    ld [hl], a                                    ; $076a: $77
    rlca                                          ; $076b: $07
    ld [hl], a                                    ; $076c: $77
    rlca                                          ; $076d: $07
    ld a, b                                       ; $076e: $78
    rlca                                          ; $076f: $07
    ld a, [hl]                                    ; $0770: $7e
    rlca                                          ; $0771: $07
    ld a, $01                                     ; $0772: $3e $01
    ld [$c009], a                                 ; $0774: $ea $09 $c0
    ret                                           ; $0777: $c9


    call Call_000_0f0e                            ; $0778: $cd $0e $0f

Call_000_077b:
    jp Jump_000_0647                              ; $077b: $c3 $47 $06


    call Call_000_0ef5                            ; $077e: $cd $f5 $0e
    jp Jump_000_0647                              ; $0781: $c3 $47 $06


    call Call_000_0e2d                            ; $0784: $cd $2d $0e
    call $6231                                    ; $0787: $cd $31 $62
    call Call_000_2f90                            ; $078a: $cd $90 $2f
    call Call_000_0e37                            ; $078d: $cd $37 $0e
    jp Jump_000_0647                              ; $0790: $c3 $47 $06


    call $625f                                    ; $0793: $cd $5f $62
    call Call_000_2f7c                            ; $0796: $cd $7c $2f
    ld a, [$c150]                                 ; $0799: $fa $50 $c1
    or a                                          ; $079c: $b7
    ret z                                         ; $079d: $c8

    ld a, $59                                     ; $079e: $3e $59
    call Call_000_00d9                            ; $07a0: $cd $d9 $00
    call $62dc                                    ; $07a3: $cd $dc $62
    jp Jump_000_0647                              ; $07a6: $c3 $47 $06


    call $6300                                    ; $07a9: $cd $00 $63
    call Call_000_2f7c                            ; $07ac: $cd $7c $2f
    ld a, [$c150]                                 ; $07af: $fa $50 $c1
    or a                                          ; $07b2: $b7
    ret z                                         ; $07b3: $c8

    call Call_000_0f20                            ; $07b4: $cd $20 $0f
    ld a, $35                                     ; $07b7: $3e $35
    call Call_000_00d9                            ; $07b9: $cd $d9 $00
    ld a, $01                                     ; $07bc: $3e $01
    ld [$c009], a                                 ; $07be: $ea $09 $c0
    ret                                           ; $07c1: $c9


    ld a, [$c00f]                                 ; $07c2: $fa $0f $c0
    and $10                                       ; $07c5: $e6 $10
    ret z                                         ; $07c7: $c8

    call $781e                                    ; $07c8: $cd $1e $78
    jp Jump_000_0647                              ; $07cb: $c3 $47 $06


    ld a, [$c00f]                                 ; $07ce: $fa $0f $c0
    and $10                                       ; $07d1: $e6 $10
    ret z                                         ; $07d3: $c8

    ld a, $01                                     ; $07d4: $3e $01
    ld [$c009], a                                 ; $07d6: $ea $09 $c0
    ret                                           ; $07d9: $c9


    ld a, [$c009]                                 ; $07da: $fa $09 $c0
    rst RST_00                                    ; $07dd: $c7
    xor $07                                       ; $07de: $ee $07
    rst RST_30                                    ; $07e0: $f7
    rlca                                          ; $07e1: $07
    ld b, $08                                     ; $07e2: $06 $08
    jr nz, jr_000_07ee                            ; $07e4: $20 $08

    ld d, b                                       ; $07e6: $50
    ld [$085f], sp                                ; $07e7: $08 $5f $08
    add c                                         ; $07ea: $81
    ld [$088d], sp                                ; $07eb: $08 $8d $08

jr_000_07ee:
    call $6456                                    ; $07ee: $cd $56 $64
    call $5f58                                    ; $07f1: $cd $58 $5f
    jp Jump_000_0647                              ; $07f4: $c3 $47 $06


    call Call_000_0e2d                            ; $07f7: $cd $2d $0e
    call $5f7d                                    ; $07fa: $cd $7d $5f
    call Call_000_2f90                            ; $07fd: $cd $90 $2f
    call Call_000_0e37                            ; $0800: $cd $37 $0e
    jp Jump_000_0647                              ; $0803: $c3 $47 $06


    call $6040                                    ; $0806: $cd $40 $60
    call $5fa3                                    ; $0809: $cd $a3 $5f
    call Call_000_2f7c                            ; $080c: $cd $7c $2f
    ld a, [$c14f]                                 ; $080f: $fa $4f $c1
    or a                                          ; $0812: $b7
    ret z                                         ; $0813: $c8

    xor a                                         ; $0814: $af
    ld [$c14f], a                                 ; $0815: $ea $4f $c1
    ld a, $59                                     ; $0818: $3e $59
    call Call_000_00d9                            ; $081a: $cd $d9 $00
    jp Jump_000_0647                              ; $081d: $c3 $47 $06


    call $609e                                    ; $0820: $cd $9e $60
    call $5fa3                                    ; $0823: $cd $a3 $5f
    call Call_000_2f7c                            ; $0826: $cd $7c $2f
    ld a, [$c14f]                                 ; $0829: $fa $4f $c1
    rst RST_00                                    ; $082c: $c7
    inc sp                                        ; $082d: $33
    ld [$0834], sp                                ; $082e: $08 $34 $08
    ld b, e                                       ; $0831: $43
    ld [$cdc9], sp                                ; $0832: $08 $c9 $cd
    inc [hl]                                      ; $0835: $34
    db $10                                        ; $0836: $10
    xor a                                         ; $0837: $af
    ld [$c14f], a                                 ; $0838: $ea $4f $c1
    ld a, $59                                     ; $083b: $3e $59
    call Call_000_00d9                            ; $083d: $cd $d9 $00
    jp Jump_000_0647                              ; $0840: $c3 $47 $06


    xor a                                         ; $0843: $af
    ld [$c14f], a                                 ; $0844: $ea $4f $c1
    call $5f96                                    ; $0847: $cd $96 $5f
    ld a, $02                                     ; $084a: $3e $02
    ld [$c009], a                                 ; $084c: $ea $09 $c0
    ret                                           ; $084f: $c9


    call Call_000_0e2d                            ; $0850: $cd $2d $0e
    call $60fb                                    ; $0853: $cd $fb $60
    call Call_000_2f90                            ; $0856: $cd $90 $2f
    call Call_000_0e37                            ; $0859: $cd $37 $0e
    jp Jump_000_0647                              ; $085c: $c3 $47 $06


    call $611f                                    ; $085f: $cd $1f $61
    call $6169                                    ; $0862: $cd $69 $61
    call Call_000_2f7c                            ; $0865: $cd $7c $2f
    ld a, [$c14f]                                 ; $0868: $fa $4f $c1
    rst RST_00                                    ; $086b: $c7
    ld [hl], d                                    ; $086c: $72
    ld [$0873], sp                                ; $086d: $08 $73 $08
    ld a, e                                       ; $0870: $7b
    ld [$3ec9], sp                                ; $0871: $08 $c9 $3e
    ld e, c                                       ; $0874: $59
    call Call_000_00d9                            ; $0875: $cd $d9 $00
    jp Jump_000_0647                              ; $0878: $c3 $47 $06


    ld a, $01                                     ; $087b: $3e $01
    ld [$c009], a                                 ; $087d: $ea $09 $c0
    ret                                           ; $0880: $c9


    call Call_000_0fcf                            ; $0881: $cd $cf $0f
    call Call_000_31ad_InitPlayerStatsFromLevel   ; $0884: $cd $ad $31
    call $5d75                                    ; $0887: $cd $75 $5d
    jp Jump_000_0647                              ; $088a: $c3 $47 $06


    call $5e2b                                    ; $088d: $cd $2b $5e
    call Call_000_2f7c                            ; $0890: $cd $7c $2f
    ld a, [$c00f]                                 ; $0893: $fa $0f $c0
    and $10                                       ; $0896: $e6 $10
    ret z                                         ; $0898: $c8

    ld a, $59                                     ; $0899: $3e $59
    call Call_000_00d9                            ; $089b: $cd $d9 $00
    jp Jump_000_063c                              ; $089e: $c3 $3c $06


    ld a, [$c009]                                 ; $08a1: $fa $09 $c0
    rst RST_00                                    ; $08a4: $c7
    xor c                                         ; $08a5: $a9
    ld [$08b8], sp                                ; $08a6: $08 $b8 $08
    call Call_000_0e2d                            ; $08a9: $cd $2d $0e
    call $5e88                                    ; $08ac: $cd $88 $5e
    call Call_000_2f90                            ; $08af: $cd $90 $2f
    call Call_000_0e37                            ; $08b2: $cd $37 $0e
    jp Jump_000_0647                              ; $08b5: $c3 $47 $06


    call $5ef2                                    ; $08b8: $cd $f2 $5e
    call Call_000_2f7c                            ; $08bb: $cd $7c $2f
    ld a, [$c14d]                                 ; $08be: $fa $4d $c1
    cp $05                                        ; $08c1: $fe $05

Jump_000_08c3:
    ret c                                         ; $08c3: $d8

    ld a, [$c00f]                                 ; $08c4: $fa $0f $c0
    and $10                                       ; $08c7: $e6 $10
    ret z                                         ; $08c9: $c8

    ld a, $2c                                     ; $08ca: $3e $2c
    call Call_000_00d9                            ; $08cc: $cd $d9 $00
    jp Jump_000_063c                              ; $08cf: $c3 $3c $06


    ld a, [$c009]                                 ; $08d2: $fa $09 $c0
    rst RST_00                                    ; $08d5: $c7
    call c, $f508                                 ; $08d6: $dc $08 $f5
    ld [$090c], sp                                ; $08d9: $08 $0c $09

Call_000_08dc:
    call Call_000_0e2d                            ; $08dc: $cd $2d $0e
    call Call_000_0dde                            ; $08df: $cd $de $0d
    call Call_000_196a                            ; $08e2: $cd $6a $19
    call Call_000_0ec9_DrawFloorNumberTile                            ; $08e5: $cd $c9 $0e
    call Call_000_0e37                            ; $08e8: $cd $37 $0e
    ld a, $4e                                     ; $08eb: $3e $4e
    call Call_000_00d9                            ; $08ed: $cd $d9 $00
    ld a, $40                                     ; $08f0: $3e $40
    jp Jump_000_0644                              ; $08f2: $c3 $44 $06


    ld hl, $c00c                                  ; $08f5: $21 $0c $c0
    dec [hl]                                      ; $08f8: $35
    ret nz                                        ; $08f9: $c0

    ld a, [$c127]                                 ; $08fa: $fa $27 $c1
    or a                                          ; $08fd: $b7
    ld a, $3f                                     ; $08fe: $3e $3f
    jr z, jr_000_0904                             ; $0900: $28 $02

    ld a, $53                                     ; $0902: $3e $53

jr_000_0904:
    call Call_000_00d9                            ; $0904: $cd $d9 $00
    ld a, $80                                     ; $0907: $3e $80
    jp Jump_000_0644                              ; $0909: $c3 $44 $06


    ld hl, $c00c                                  ; $090c: $21 $0c $c0
    dec [hl]                                      ; $090f: $35
    ret nz                                        ; $0910: $c0

    jp Jump_000_063c                              ; $0911: $c3 $3c $06


    ld a, [$c009]                                 ; $0914: $fa $09 $c0
    rst RST_00                                    ; $0917: $c7
    inc e                                         ; $0918: $1c
    add hl, bc                                    ; $0919: $09
    cpl                                           ; $091a: $2f
    add hl, bc                                    ; $091b: $09
    call Call_000_0e2d                            ; $091c: $cd $2d $0e
    call Call_000_0dde                            ; $091f: $cd $de $0d
    call Call_000_0e37                            ; $0922: $cd $37 $0e
    xor a                                         ; $0925: $af
    ld [$c038], a                                 ; $0926: $ea $38 $c0
    call $65e9                                    ; $0929: $cd $e9 $65
    jp Jump_000_0647                              ; $092c: $c3 $47 $06


    call Call_000_0af0                            ; $092f: $cd $f0 $0a
    ret                                           ; $0932: $c9


    ld a, [$c009]                                 ; $0933: $fa $09 $c0
    rst RST_00                                    ; $0936: $c7
    ld c, c                                       ; $0937: $49
    add hl, bc                                    ; $0938: $09
    ld e, b                                       ; $0939: $58
    add hl, bc                                    ; $093a: $09

Call_000_093b:
    ld h, a                                       ; $093b: $67
    add hl, bc                                    ; $093c: $09
    ld l, [hl]                                    ; $093d: $6e
    add hl, bc                                    ; $093e: $09
    ld [hl], l                                    ; $093f: $75
    add hl, bc                                    ; $0940: $09
    adc [hl]                                      ; $0941: $8e
    add hl, bc                                    ; $0942: $09
    sub l                                         ; $0943: $95
    add hl, bc                                    ; $0944: $09
    rst RST_10                                    ; $0945: $d7
    add hl, bc                                    ; $0946: $09
    sbc $09                                       ; $0947: $de $09
    call Call_000_2f90                            ; $0949: $cd $90 $2f
    call $307d                                    ; $094c: $cd $7d $30
    ret c                                         ; $094f: $d8

    ld a, $00                                     ; $0950: $3e $00
    call Call_000_00d9                            ; $0952: $cd $d9 $00
    jp Jump_000_0647                              ; $0955: $c3 $47 $06


    call Call_000_0e2d                            ; $0958: $cd $2d $0e
    call $6a52                                    ; $095b: $cd $52 $6a
    call Call_000_2f7c                            ; $095e: $cd $7c $2f
    call Call_000_0e37                            ; $0961: $cd $37 $0e
    jp Jump_000_0647                              ; $0964: $c3 $47 $06


    call $6ac3                                    ; $0967: $cd $c3 $6a
    call Call_000_2f7c                            ; $096a: $cd $7c $2f
    ret                                           ; $096d: $c9


    call $6b95                                    ; $096e: $cd $95 $6b
    call Call_000_2f7c                            ; $0971: $cd $7c $2f
    ret                                           ; $0974: $c9


    call $6f8b                                    ; $0975: $cd $8b $6f
    call Call_000_2f7c                            ; $0978: $cd $7c $2f
    ld a, [$c00f]                                 ; $097b: $fa $0f $c0
    and $10                                       ; $097e: $e6 $10
    ret z                                         ; $0980: $c8

    xor a                                         ; $0981: $af
    ld [$c152], a                                 ; $0982: $ea $52 $c1
    ld [$c036], a                                 ; $0985: $ea $36 $c0
    ld [$c1fd], a                                 ; $0988: $ea $fd $c1
    jp Jump_000_0647                              ; $098b: $c3 $47 $06


    call Call_000_2f7c                            ; $098e: $cd $7c $2f
    call $70bf                                    ; $0991: $cd $bf $70
    ret                                           ; $0994: $c9


    call Call_000_2f7c                            ; $0995: $cd $7c $2f
    call $7129                                    ; $0998: $cd $29 $71
    ld a, [$c00f]                                 ; $099b: $fa $0f $c0
    and $10                                       ; $099e: $e6 $10
    ret z                                         ; $09a0: $c8

    call Call_000_1dd5                            ; $09a1: $cd $d5 $1d
    jr nz, jr_000_09b0                            ; $09a4: $20 $0a

    call $7151                                    ; $09a6: $cd $51 $71
    xor a                                         ; $09a9: $af
    ld [$c152], a                                 ; $09aa: $ea $52 $c1
    jp Jump_000_0647                              ; $09ad: $c3 $47 $06


Jump_000_09b0:
jr_000_09b0:
    ld a, [$c02b]                                 ; $09b0: $fa $2b $c0
    or a                                          ; $09b3: $b7
    jr z, jr_000_09c8                             ; $09b4: $28 $12

    ld a, $18                                     ; $09b6: $3e $18
    ld [$c03d], a                                 ; $09b8: $ea $3d $c0
    xor a                                         ; $09bb: $af
    ld [$c013], a                                 ; $09bc: $ea $13 $c0
    ld [$c036], a                                 ; $09bf: $ea $36 $c0
    call Call_000_0647                            ; $09c2: $cd $47 $06
    jp Jump_000_0647                              ; $09c5: $c3 $47 $06


jr_000_09c8:
    ld a, $35                                     ; $09c8: $3e $35
    call Call_000_00d9                            ; $09ca: $cd $d9 $00
    xor a                                         ; $09cd: $af
    ld [$c009], a                                 ; $09ce: $ea $09 $c0
    ld a, $03                                     ; $09d1: $3e $03
    ld [$c008], a                                 ; $09d3: $ea $08 $c0
    ret                                           ; $09d6: $c9


    call Call_000_2f7c                            ; $09d7: $cd $7c $2f
    call $7177                                    ; $09da: $cd $77 $71
    ret                                           ; $09dd: $c9


    ld c, $06                                     ; $09de: $0e $06
    call Call_000_3105                            ; $09e0: $cd $05 $31
    ret c                                         ; $09e3: $d8

    jp Jump_000_06b2                              ; $09e4: $c3 $b2 $06


    ld a, [$c009]                                 ; $09e7: $fa $09 $c0
    rst RST_00                                    ; $09ea: $c7
    di                                            ; $09eb: $f3
    add hl, bc                                    ; $09ec: $09
    db $fd                                        ; $09ed: $fd
    add hl, bc                                    ; $09ee: $09
    rla                                           ; $09ef: $17
    ld a, [bc]                                    ; $09f0: $0a
    dec [hl]                                      ; $09f1: $35
    ld a, [bc]                                    ; $09f2: $0a
    call Call_000_2f7c                            ; $09f3: $cd $7c $2f
    call $307d                                    ; $09f6: $cd $7d $30
    ret c                                         ; $09f9: $d8

    jp Jump_000_0647                              ; $09fa: $c3 $47 $06


    call Call_000_0e2d                            ; $09fd: $cd $2d $0e
    call $70ae                                    ; $0a00: $cd $ae $70
    call Call_000_2f90                            ; $0a03: $cd $90 $2f
    call Call_000_0e37                            ; $0a06: $cd $37 $0e
    ld a, $25                                     ; $0a09: $3e $25
    call Call_000_00d9                            ; $0a0b: $cd $d9 $00
    ld hl, $0180                                  ; $0a0e: $21 $80 $01
    call $77cc                                    ; $0a11: $cd $cc $77

Jump_000_0a14:
    jp Jump_000_0647                              ; $0a14: $c3 $47 $06


    call $6b62                                    ; $0a17: $cd $62 $6b
    jr nz, jr_000_0a23                            ; $0a1a: $20 $07

    xor a                                         ; $0a1c: $af
    ld [$c013], a                                 ; $0a1d: $ea $13 $c0

Jump_000_0a20:
    jp Jump_000_06b2                              ; $0a20: $c3 $b2 $06


jr_000_0a23:
    ld a, [$c00f]                                 ; $0a23: $fa $0f $c0
    and $10                                       ; $0a26: $e6 $10
    ret z                                         ; $0a28: $c8

    xor a                                         ; $0a29: $af
    ld [$c036], a                                 ; $0a2a: $ea $36 $c0
    ld a, $04                                     ; $0a2d: $3e $04
    ld [$c03d], a                                 ; $0a2f: $ea $3d $c0
    jp Jump_000_0647                              ; $0a32: $c3 $47 $06


    ld c, $06                                     ; $0a35: $0e $06
    call Call_000_3105                            ; $0a37: $cd $05 $31
    ret c                                         ; $0a3a: $d8

    xor a                                         ; $0a3b: $af
    ld [$c013], a                                 ; $0a3c: $ea $13 $c0
    ld [$c009], a                                 ; $0a3f: $ea $09 $c0
    ld a, $03                                     ; $0a42: $3e $03
    ld [$c008], a                                 ; $0a44: $ea $08 $c0
    ret                                           ; $0a47: $c9


    ld a, [$c009]                                 ; $0a48: $fa $09 $c0
    rst RST_00                                    ; $0a4b: $c7
    ld h, d                                       ; $0a4c: $62
    ld a, [bc]                                    ; $0a4d: $0a
    ld [hl], l                                    ; $0a4e: $75
    ld a, [bc]                                    ; $0a4f: $0a
    ld a, a                                       ; $0a50: $7f
    ld a, [bc]                                    ; $0a51: $0a
    add [hl]                                      ; $0a52: $86
    ld a, [bc]                                    ; $0a53: $0a
    sub a                                         ; $0a54: $97
    ld a, [bc]                                    ; $0a55: $0a
    sbc [hl]                                      ; $0a56: $9e
    ld a, [bc]                                    ; $0a57: $0a
    and l                                         ; $0a58: $a5
    ld a, [bc]                                    ; $0a59: $0a
    xor [hl]                                      ; $0a5a: $ae
    ld a, [bc]                                    ; $0a5b: $0a
    cp l                                          ; $0a5c: $bd
    ld a, [bc]                                    ; $0a5d: $0a
    call z, $d30a                                 ; $0a5e: $cc $0a $d3
    ld a, [bc]                                    ; $0a61: $0a
    call $307d                                    ; $0a62: $cd $7d $30
    ret c                                         ; $0a65: $d8

    call Call_000_0e2d                            ; $0a66: $cd $2d $0e
    call $7290                                    ; $0a69: $cd $90 $72
    call Call_000_2f7c                            ; $0a6c: $cd $7c $2f
    call Call_000_0e37                            ; $0a6f: $cd $37 $0e
    jp Jump_000_0647                              ; $0a72: $c3 $47 $06


    call Call_000_2f7c                            ; $0a75: $cd $7c $2f
    call Call_000_30bb                            ; $0a78: $cd $bb $30
    ret c                                         ; $0a7b: $d8

    jp Jump_000_0647                              ; $0a7c: $c3 $47 $06


    call Call_000_2f7c                            ; $0a7f: $cd $7c $2f
    call $72af                                    ; $0a82: $cd $af $72
    ret                                           ; $0a85: $c9


    call Call_000_2f7c                            ; $0a86: $cd $7c $2f
    ld c, $06                                     ; $0a89: $0e $06
    call Call_000_30fe                            ; $0a8b: $cd $fe $30
    ret c                                         ; $0a8e: $d8

    ld a, $22                                     ; $0a8f: $3e $22
    call Call_000_00d9                            ; $0a91: $cd $d9 $00
    jp Jump_000_0647                              ; $0a94: $c3 $47 $06


    call Call_000_2f7c                            ; $0a97: $cd $7c $2f
    call $7358                                    ; $0a9a: $cd $58 $73
    ret                                           ; $0a9d: $c9


    call Call_000_2f7c                            ; $0a9e: $cd $7c $2f
    call $73a6                                    ; $0aa1: $cd $a6 $73
    ret                                           ; $0aa4: $c9


    ld c, $0c                                     ; $0aa5: $0e $0c
    call Call_000_3105                            ; $0aa7: $cd $05 $31
    ret c                                         ; $0aaa: $d8

    jp Jump_000_0647                              ; $0aab: $c3 $47 $06


    call Call_000_0e2d                            ; $0aae: $cd $2d $0e
    call $73c9                                    ; $0ab1: $cd $c9 $73
    call Call_000_2f7c                            ; $0ab4: $cd $7c $2f
    call Call_000_0e37                            ; $0ab7: $cd $37 $0e
    jp Jump_000_0647                              ; $0aba: $c3 $47 $06


    ld c, $0c                                     ; $0abd: $0e $0c
    call Call_000_30fe                            ; $0abf: $cd $fe $30
    ret c                                         ; $0ac2: $d8

    ld hl, $01c0                                  ; $0ac3: $21 $c0 $01
    call $77cc                                    ; $0ac6: $cd $cc $77
    jp Jump_000_0647                              ; $0ac9: $c3 $47 $06


    call Call_000_2f7c                            ; $0acc: $cd $7c $2f
    call $73e0                                    ; $0acf: $cd $e0 $73
    ret                                           ; $0ad2: $c9


    ld c, $0c                                     ; $0ad3: $0e $0c
    call Call_000_3105                            ; $0ad5: $cd $05 $31

Call_000_0ad8:
    ret c                                         ; $0ad8: $d8

    jp Jump_000_06b2                              ; $0ad9: $c3 $b2 $06


Call_000_0adc:
    ld a, $01                                     ; $0adc: $3e $01
    ld [$c104], a                                 ; $0ade: $ea $04 $c1
    ret                                           ; $0ae1: $c9


Call_000_0ae2:
    ld hl, $c100                                  ; $0ae2: $21 $00 $c1
    ld bc, $0f00                                  ; $0ae5: $01 $00 $0f

jr_000_0ae8:
    xor a                                         ; $0ae8: $af
    ld [hl+], a                                   ; $0ae9: $22
    dec bc                                        ; $0aea: $0b
    ld a, b                                       ; $0aeb: $78

Call_000_0aec:
    or c                                          ; $0aec: $b1
    jr nz, jr_000_0ae8                            ; $0aed: $20 $f9

    ret                                           ; $0aef: $c9


Call_000_0af0:
    ld hl, $2f7c                                  ; $0af0: $21 $7c $2f
    push hl                                       ; $0af3: $e5
    ld a, [$c100]                                 ; $0af4: $fa $00 $c1
    rst RST_00                                    ; $0af7: $c7
    rla                                           ; $0af8: $17
    dec bc                                        ; $0af9: $0b
    jr z, jr_000_0b07                             ; $0afa: $28 $0b

    ld l, [hl]                                    ; $0afc: $6e
    inc c                                         ; $0afd: $0c
    ld a, a                                       ; $0afe: $7f
    inc c                                         ; $0aff: $0c
    adc d                                         ; $0b00: $8a
    inc c                                         ; $0b01: $0c
    xor l                                         ; $0b02: $ad
    inc c                                         ; $0b03: $0c
    db $e4                                        ; $0b04: $e4
    inc c                                         ; $0b05: $0c
    ei                                            ; $0b06: $fb

jr_000_0b07:
    inc c                                         ; $0b07: $0c
    inc b                                         ; $0b08: $04
    dec c                                         ; $0b09: $0d
    rrca                                          ; $0b0a: $0f
    dec c                                         ; $0b0b: $0d
    jr nz, jr_000_0b1b                            ; $0b0c: $20 $0d

    ld c, b                                       ; $0b0e: $48
    dec c                                         ; $0b0f: $0d
    ld e, l                                       ; $0b10: $5d
    dec c                                         ; $0b11: $0d

jr_000_0b12:
    ld hl, $c100                                  ; $0b12: $21 $00 $c1
    inc [hl]                                      ; $0b15: $34
    ret                                           ; $0b16: $c9


    call Call_000_2ffe                            ; $0b17: $cd $fe $2f
    xor a                                         ; $0b1a: $af

jr_000_0b1b:
    ld [$c109], a                                 ; $0b1b: $ea $09 $c1
    ld [$c108], a                                 ; $0b1e: $ea $08 $c1
    ld a, $01                                     ; $0b21: $3e $01
    ld [$c125], a                                 ; $0b23: $ea $25 $c1
    jr jr_000_0b12                                ; $0b26: $18 $ea

    call $5d30                                    ; $0b28: $cd $30 $5d
    ld a, [$c103]                                 ; $0b2b: $fa $03 $c1
    cp $01                                        ; $0b2e: $fe $01
    jp z, Jump_000_0c39                           ; $0b30: $ca $39 $0c

    ld a, [$c120]                                 ; $0b33: $fa $20 $c1
    or a                                          ; $0b36: $b7
    jp z, Jump_000_0c13_TriggerGameOver ; death check after Call_000_3355  ; $0b37: $ca $13 $0c

    call Call_000_3355                            ; $0b3a: $cd $55 $33
    ld a, [$c109]                                 ; $0b3d: $fa $09 $c1
    or a                                          ; $0b40: $b7
    ret z                                         ; $0b41: $c8

    xor a                                         ; $0b42: $af
    ld [$c109], a                                 ; $0b43: $ea $09 $c1
    call Call_000_3734                            ; $0b46: $cd $34 $37
    ld a, [$c120]                                 ; $0b49: $fa $20 $c1
    or a                                          ; $0b4c: $b7
    jp z, Jump_000_0c13_TriggerGameOver ; death check after Call_000_3734  ; $0b4d: $ca $13 $0c

    ld a, [$c10a]                                 ; $0b50: $fa $0a $c1
    rst RST_00                                    ; $0b53: $c7
    ld h, d                                       ; $0b54: $62
    dec bc                                        ; $0b55: $0b
    ld a, b                                       ; $0b56: $78
    dec bc                                        ; $0b57: $0b
    sbc b                                         ; $0b58: $98
    dec bc                                        ; $0b59: $0b
    call nc, Call_000_130b                        ; $0b5a: $d4 $0b $13
    inc c                                         ; $0b5d: $0c
    add hl, sp                                    ; $0b5e: $39
    inc c                                         ; $0b5f: $0c
    ld d, l                                       ; $0b60: $55
    inc c                                         ; $0b61: $0c
    call Call_000_0db5                            ; $0b62: $cd $b5 $0d
    xor a                                         ; $0b65: $af
    ld [$c148], a                                 ; $0b66: $ea $48 $c1
    ld [$c10c], a                                 ; $0b69: $ea $0c $c1
    ld [$c036], a                                 ; $0b6c: $ea $36 $c0
    ld [$c037], a                                 ; $0b6f: $ea $37 $c0
    ld a, $03                                     ; $0b72: $3e $03
    ld [$c100], a                                 ; $0b74: $ea $00 $c1
    ret                                           ; $0b77: $c9


    call Call_000_0d87                            ; $0b78: $cd $87 $0d
    ld a, [$c127]                                 ; $0b7b: $fa $27 $c1
    or a                                          ; $0b7e: $b7
    ld a, $3f                                     ; $0b7f: $3e $3f
    jr z, jr_000_0b85                             ; $0b81: $28 $02

    ld a, $53                                     ; $0b83: $3e $53

jr_000_0b85:
    call Call_000_00d9                            ; $0b85: $cd $d9 $00
    call Call_000_11f2                            ; $0b88: $cd $f2 $11
    ld hl, $65f4                                  ; $0b8b: $21 $f4 $65
    call Call_000_3159                            ; $0b8e: $cd $59 $31
    ret z                                         ; $0b91: $c8

    ld a, $28                                     ; $0b92: $3e $28
    ld [$c03d], a                                 ; $0b94: $ea $3d $c0
    ret                                           ; $0b97: $c9


    call Call_000_0dae                            ; $0b98: $cd $ae $0d
    call $6992                                    ; $0b9b: $cd $92 $69
    ld a, [$c14a]                                 ; $0b9e: $fa $4a $c1
    or a                                          ; $0ba1: $b7
    jr z, jr_000_0bad                             ; $0ba2: $28 $09

    call $4b95                                    ; $0ba4: $cd $95 $4b
    ld a, $06                                     ; $0ba7: $3e $06
    ld [$c100], a                                 ; $0ba9: $ea $00 $c1
    ret                                           ; $0bac: $c9


Call_000_0bad:
jr_000_0bad:
    call $6902                                    ; $0bad: $cd $02 $69
    ld a, [$c10e]                                 ; $0bb0: $fa $0e $c1
    or a                                          ; $0bb3: $b7
    jr z, jr_000_0bbf                             ; $0bb4: $28 $09

    call $4b95                                    ; $0bb6: $cd $95 $4b
    ld a, $05                                     ; $0bb9: $3e $05
    ld [$c100], a                                 ; $0bbb: $ea $00 $c1
    ret                                           ; $0bbe: $c9


Jump_000_0bbf:
jr_000_0bbf:
    xor a                                         ; $0bbf: $af
    ld [$d400], a                                 ; $0bc0: $ea $00 $d4
    ld [$c238], a                                 ; $0bc3: $ea $38 $c2
    ld [$c237], a                                 ; $0bc6: $ea $37 $c2
    ld a, $01                                     ; $0bc9: $3e $01
    ld [$c108], a                                 ; $0bcb: $ea $08 $c1
    ld a, $02                                     ; $0bce: $3e $02
    ld [$c100], a                                 ; $0bd0: $ea $00 $c1
    ret                                           ; $0bd3: $c9


    ld a, $80                                     ; $0bd4: $3e $80
    ld [$c149], a                                 ; $0bd6: $ea $49 $c1
    ld hl, $da00                                  ; $0bd9: $21 $00 $da
    ld de, $da08                                  ; $0bdc: $11 $08 $da
    ld bc, $0008                                  ; $0bdf: $01 $08 $00
    call Call_000_0442                            ; $0be2: $cd $42 $04
    ld a, $60                                     ; $0be5: $3e $60
    ld [$da02], a                                 ; $0be7: $ea $02 $da
    add $02                                       ; $0bea: $c6 $02
    ld [$da06], a                                 ; $0bec: $ea $06 $da
    ld a, $40                                     ; $0bef: $3e $40
    ld [$da0a], a                                 ; $0bf1: $ea $0a $da
    ld a, $54                                     ; $0bf4: $3e $54
    ld [$da0e], a                                 ; $0bf6: $ea $0e $da
    ld a, $10                                     ; $0bf9: $3e $10
    ld [$da0b], a                                 ; $0bfb: $ea $0b $da
    ld [$da0f], a                                 ; $0bfe: $ea $0f $da
    ld a, $0c                                     ; $0c01: $3e $0c
    ld [$c100], a                                 ; $0c03: $ea $00 $c1
    call Call_000_0260                            ; $0c06: $cd $60 $02
    ld a, $00                                     ; $0c09: $3e $00
    call Call_000_00d9                            ; $0c0b: $cd $d9 $00
    ld a, $66                                     ; $0c0e: $3e $66
    jp Jump_000_00d9                              ; $0c10: $c3 $d9 $00


; Game-over trigger. Reached from two call sites that check `wPlayerHP == 0`
; after the main per-turn update (around $0b33 and $0b49). Forces HP to 0 via
; a large forced "hit" (e=$99) through the normal damage-subtract routine,
; switches the main game-state dispatcher ($c100) to state $09 ("Game Over" /
; "残念!! もう1回 チャレンジ!!" screen, see NOTES.md), then plays the
; defeat jingle via the sound trampoline (Call_000_00d9/Jump_000_00d9).
Jump_000_0c13_TriggerGameOver:
    ld a, $64                                     ; $0c13: $3e $64
    ld [$da02], a                                 ; $0c15: $ea $02 $da
    add $02                                       ; $0c18: $c6 $02
    ld [$da06], a                                 ; $0c1a: $ea $06 $da
    ld e, $99                                     ; $0c1d: $1e $99
    call $5ba3                                    ; $0c1f: $cd $a3 $5b
    call Call_000_0259                            ; $0c22: $cd $59 $02
    ld a, $09                                     ; $0c25: $3e $09
    ld [$c100], a                                 ; $0c27: $ea $00 $c1
    ld a, $40                                     ; $0c2a: $3e $40
    ld [$c149], a                                 ; $0c2c: $ea $49 $c1
    ld a, $00                                     ; $0c2f: $3e $00
    call Call_000_00d9                            ; $0c31: $cd $d9 $00
    ld a, $3c                                     ; $0c34: $3e $3c
    jp Jump_000_00d9                              ; $0c36: $c3 $d9 $00


Jump_000_0c39:
    ld a, $02                                     ; $0c39: $3e $02
    ld [$c103], a                                 ; $0c3b: $ea $03 $c1
    ld a, $07                                     ; $0c3e: $3e $07
    ld [$c100], a                                 ; $0c40: $ea $00 $c1
    ld a, $09                                     ; $0c43: $3e $09
    ld [$c038], a                                 ; $0c45: $ea $38 $c0
    ld a, $2d                                     ; $0c48: $3e $2d
    call Call_000_00d9                            ; $0c4a: $cd $d9 $00
    ld a, $06                                     ; $0c4d: $3e $06
    ld [$c115], a                                 ; $0c4f: $ea $15 $c1
    jp Jump_000_3149                              ; $0c52: $c3 $49 $31


    call Call_000_0dae                            ; $0c55: $cd $ae $0d
    xor a                                         ; $0c58: $af
    ld [$c148], a                                 ; $0c59: $ea $48 $c1
    ld [$c10c], a                                 ; $0c5c: $ea $0c $c1
    ld [$c036], a                                 ; $0c5f: $ea $36 $c0
    ld [$c037], a                                 ; $0c62: $ea $37 $c0
    call $40de                                    ; $0c65: $cd $de $40
    ld a, $08                                     ; $0c68: $3e $08
    ld [$c100], a                                 ; $0c6a: $ea $00 $c1
    ret                                           ; $0c6d: $c9


    call $451f                                    ; $0c6e: $cd $1f $45
    ret c                                         ; $0c71: $d8

    xor a                                         ; $0c72: $af
    ld [$c108], a                                 ; $0c73: $ea $08 $c1
    ld a, $01                                     ; $0c76: $3e $01
    ld [$c100], a                                 ; $0c78: $ea $00 $c1
    ld [$c125], a                                 ; $0c7b: $ea $25 $c1
    ret                                           ; $0c7e: $c9


    call Call_000_3073                            ; $0c7f: $cd $73 $30
    ld a, [$c148]                                 ; $0c82: $fa $48 $c1
    or a                                          ; $0c85: $b7
    ret z                                         ; $0c86: $c8

    jp Jump_000_0bbf                              ; $0c87: $c3 $bf $0b


    ld hl, $c149                                  ; $0c8a: $21 $49 $c1
    dec [hl]                                      ; $0c8d: $35
    ret nz                                        ; $0c8e: $c0

    call Call_000_3034                            ; $0c8f: $cd $34 $30
    ld a, [$c10f]                                 ; $0c92: $fa $0f $c1
    cp $01                                        ; $0c95: $fe $01
    ld a, $16                                     ; $0c97: $3e $16
    jr z, jr_000_0c9d                             ; $0c99: $28 $02

    ld a, $01                                     ; $0c9b: $3e $01

jr_000_0c9d:
    ld [$c125], a                                 ; $0c9d: $ea $25 $c1
    xor a                                         ; $0ca0: $af
    ld [$c108], a                                 ; $0ca1: $ea $08 $c1
    ld [$c10f], a                                 ; $0ca4: $ea $0f $c1
    ld a, $01                                     ; $0ca7: $3e $01
    ld [$c100], a                                 ; $0ca9: $ea $00 $c1
    ret                                           ; $0cac: $c9


    call $695f                                    ; $0cad: $cd $5f $69
    ld a, [$c10e]                                 ; $0cb0: $fa $0e $c1
    or a                                          ; $0cb3: $b7
    ret nz                                        ; $0cb4: $c0

    ld a, [$c10f]                                 ; $0cb5: $fa $0f $c1
    rst RST_00                                    ; $0cb8: $c7
    cp a                                          ; $0cb9: $bf
    dec bc                                        ; $0cba: $0b
    cp a                                          ; $0cbb: $bf
    inc c                                         ; $0cbc: $0c
    pop de                                        ; $0cbd: $d1
    inc c                                         ; $0cbe: $0c
    ld a, $0a                                     ; $0cbf: $3e $0a
    ld [$c100], a                                 ; $0cc1: $ea $00 $c1
    ld a, $50                                     ; $0cc4: $3e $50

jr_000_0cc6:
    ld [$c149], a                                 ; $0cc6: $ea $49 $c1
    call Call_000_0d3d                            ; $0cc9: $cd $3d $0d
    ld a, $05                                     ; $0ccc: $3e $05
    jp Jump_000_0262                              ; $0cce: $c3 $62 $02


    ld a, $00                                     ; $0cd1: $3e $00
    call Call_000_00d9                            ; $0cd3: $cd $d9 $00
    ld a, $49                                     ; $0cd6: $3e $49
    call Call_000_00d9                            ; $0cd8: $cd $d9 $00
    ld a, $0b                                     ; $0cdb: $3e $0b
    ld [$c100], a                                 ; $0cdd: $ea $00 $c1
    ld a, $60                                     ; $0ce0: $3e $60
    jr jr_000_0cc6                                ; $0ce2: $18 $e2

    ld hl, $c14a                                  ; $0ce4: $21 $4a $c1
    dec [hl]                                      ; $0ce7: $35
    ld a, [hl]                                    ; $0ce8: $7e
    cp $0a                                        ; $0ce9: $fe $0a

Jump_000_0ceb:
    jr z, jr_000_0cf3                             ; $0ceb: $28 $06

    or a                                          ; $0ced: $b7
    ret nz                                        ; $0cee: $c0

    call Call_000_0bad                            ; $0cef: $cd $ad $0b
    ret                                           ; $0cf2: $c9


jr_000_0cf3:
    ld a, $41                                     ; $0cf3: $3e $41
    call Call_000_00d9                            ; $0cf5: $cd $d9 $00
    jp $69bc                                      ; $0cf8: $c3 $bc $69


Call_000_0cfb:
    call Call_000_2aad                            ; $0cfb: $cd $ad $2a
    ld a, $01                                     ; $0cfe: $3e $01
    ld [$c100], a                                 ; $0d00: $ea $00 $c1
    ret                                           ; $0d03: $c9


    call Call_000_3073                            ; $0d04: $cd $73 $30
    ld a, [$c148]                                 ; $0d07: $fa $48 $c1
    or a                                          ; $0d0a: $b7
    ret z                                         ; $0d0b: $c8

    jp Jump_000_0bbf                              ; $0d0c: $c3 $bf $0b


    ld hl, $c149                                  ; $0d0f: $21 $49 $c1
    dec [hl]                                      ; $0d12: $35
    ret nz                                        ; $0d13: $c0

    xor a                                         ; $0d14: $af
    ld [$c036], a                                 ; $0d15: $ea $36 $c0
    ld [$c037], a                                 ; $0d18: $ea $37 $c0
    ld a, $0a                                     ; $0d1b: $3e $0a
    jp Jump_000_06b3                              ; $0d1d: $c3 $b3 $06


    ld hl, $c149                                  ; $0d20: $21 $49 $c1
    dec [hl]                                      ; $0d23: $35
    jr nz, jr_000_0d35                            ; $0d24: $20 $0f

    call Call_000_0d87                            ; $0d26: $cd $87 $0d
    ld a, [$c120]                                 ; $0d29: $fa $20 $c1
    cp $05                                        ; $0d2c: $fe $05
    ret nc                                        ; $0d2e: $d0

    ld a, $28                                     ; $0d2f: $3e $28
    ld [$c03d], a                                 ; $0d31: $ea $3d $c0
    ret                                           ; $0d34: $c9


jr_000_0d35:
    ld a, [$da00]                                 ; $0d35: $fa $00 $da
    and $0f                                       ; $0d38: $e6 $0f
    jp z, Jump_000_32a3                           ; $0d3a: $ca $a3 $32

Call_000_0d3d:
jr_000_0d3d:
    ld a, [$da00]                                 ; $0d3d: $fa $00 $da
    inc a                                         ; $0d40: $3c
    ld [$da00], a                                 ; $0d41: $ea $00 $da
    ld [$da04], a                                 ; $0d44: $ea $04 $da
    ret                                           ; $0d47: $c9


    ld hl, $c149                                  ; $0d48: $21 $49 $c1
    dec [hl]                                      ; $0d4b: $35
    jp z, Jump_000_0c13_TriggerGameOver                           ; $0d4c: $ca $13 $0c

    ld a, [hl]                                    ; $0d4f: $7e
    and $03                                       ; $0d50: $e6 $03
    ret nz                                        ; $0d52: $c0

    ld a, [$da00]                                 ; $0d53: $fa $00 $da
    and $0f                                       ; $0d56: $e6 $0f
    jp z, Jump_000_32a3                           ; $0d58: $ca $a3 $32

    jr jr_000_0d3d                                ; $0d5b: $18 $e0

    ld a, [$da00]                                 ; $0d5d: $fa $00 $da
    cp $f0                                        ; $0d60: $fe $f0
    jr nc, jr_000_0d6c                            ; $0d62: $30 $08

    sub $01                                       ; $0d64: $d6 $01
    ld [$da00], a                                 ; $0d66: $ea $00 $da
    ld [$da04], a                                 ; $0d69: $ea $04 $da

jr_000_0d6c:
    ld hl, $c149                                  ; $0d6c: $21 $49 $c1
    ld a, [hl]                                    ; $0d6f: $7e
    or a                                          ; $0d70: $b7
    jr z, jr_000_0d75                             ; $0d71: $28 $02

    dec [hl]                                      ; $0d73: $35
    ret                                           ; $0d74: $c9


jr_000_0d75:
    call Call_000_1007                            ; $0d75: $cd $07 $10
    call $5d5c                                    ; $0d78: $cd $5c $5d
    xor a                                         ; $0d7b: $af
    ld [$c036], a                                 ; $0d7c: $ea $36 $c0
    ld [$c037], a                                 ; $0d7f: $ea $37 $c0
    ld a, $09                                     ; $0d82: $3e $09
    jp Jump_000_06b3                              ; $0d84: $c3 $b3 $06


Call_000_0d87:
    ld hl, $c104                                  ; $0d87: $21 $04 $c1
    ld c, [hl]                                    ; $0d8a: $4e
    ld e, $01                                     ; $0d8b: $1e $01
    call Call_000_0374                            ; $0d8d: $cd $74 $03
    ld [hl], c                                    ; $0d90: $71
    call Call_000_0e2d                            ; $0d91: $cd $2d $0e
    ld a, $04                                     ; $0d94: $3e $04
    ld [$c100], a                                 ; $0d96: $ea $00 $c1
    call Call_000_0260                            ; $0d99: $cd $60 $02
    call Call_000_0dde                            ; $0d9c: $cd $de $0d
    call Call_000_196a                            ; $0d9f: $cd $6a $19
    call Call_000_0ec9_DrawFloorNumberTile                            ; $0da2: $cd $c9 $0e
    call Call_000_0e37                            ; $0da5: $cd $37 $0e
    ld a, $78                                     ; $0da8: $3e $78
    ld [$c149], a                                 ; $0daa: $ea $49 $c1
    ret                                           ; $0dad: $c9


Call_000_0dae:
    call Call_000_0db5                            ; $0dae: $cd $b5 $0d
    jp nc, Jump_000_32b2                          ; $0db1: $d2 $b2 $32

    ret                                           ; $0db4: $c9


Call_000_0db5:
    ld a, [$c14c]                                 ; $0db5: $fa $4c $c1
    or a                                          ; $0db8: $b7
    scf                                           ; $0db9: $37
    ret z                                         ; $0dba: $c8

    ld c, a                                       ; $0dbb: $4f
    ld e, $01                                     ; $0dbc: $1e $01
    call Call_000_037b_SubtractBCD16Clamped                            ; $0dbe: $cd $7b $03
    ld a, c                                       ; $0dc1: $79
    ld [$c14c], a                                 ; $0dc2: $ea $4c $c1
    push af                                       ; $0dc5: $f5
    call Call_000_2b37                            ; $0dc6: $cd $37 $2b
    pop af                                        ; $0dc9: $f1
    or a                                          ; $0dca: $b7
    scf                                           ; $0dcb: $37
    ret nz                                        ; $0dcc: $c0

    ld [$c14b], a                                 ; $0dcd: $ea $4b $c1
    call $5102                                    ; $0dd0: $cd $02 $51
    call $5cec                                    ; $0dd3: $cd $ec $5c
    call $5d07                                    ; $0dd6: $cd $07 $5d
    call Call_000_32a3                            ; $0dd9: $cd $a3 $32
    or a                                          ; $0ddc: $b7
    ret                                           ; $0ddd: $c9


Call_000_0dde:
    call Call_000_0e01                            ; $0dde: $cd $01 $0e
    call Call_000_0e11                            ; $0de1: $cd $11 $0e
    ld hl, $db00                                  ; $0de4: $21 $00 $db
    call Call_000_0df9                            ; $0de7: $cd $f9 $0d
    ld hl, $dc00                                  ; $0dea: $21 $00 $dc
    call Call_000_0df9                            ; $0ded: $cd $f9 $0d
    ld hl, $dd00                                  ; $0df0: $21 $00 $dd
    call Call_000_0df9                            ; $0df3: $cd $f9 $0d
    ld hl, $da00                                  ; $0df6: $21 $00 $da

Call_000_0df9:
    xor a                                         ; $0df9: $af
    ld b, $9f                                     ; $0dfa: $06 $9f

jr_000_0dfc:
    ld [hl+], a                                   ; $0dfc: $22
    dec b                                         ; $0dfd: $05
    jr nz, jr_000_0dfc                            ; $0dfe: $20 $fc

    ret                                           ; $0e00: $c9


Call_000_0e01:
    ld hl, $9bff                                  ; $0e01: $21 $ff $9b

jr_000_0e04:
    ld bc, $0400                                  ; $0e04: $01 $00 $04
    ld a, $00                                     ; $0e07: $3e $00

jr_000_0e09:
    ld [hl-], a                                   ; $0e09: $32
    dec c                                         ; $0e0a: $0d
    jr nz, jr_000_0e09                            ; $0e0b: $20 $fc

    dec b                                         ; $0e0d: $05
    jr nz, jr_000_0e09                            ; $0e0e: $20 $f9

    ret                                           ; $0e10: $c9


Call_000_0e11:
    ld hl, $9fff                                  ; $0e11: $21 $ff $9f
    jr jr_000_0e04                                ; $0e14: $18 $ee

Call_000_0e16:
    ld hl, $cbff                                  ; $0e16: $21 $ff $cb
    jr jr_000_0e04                                ; $0e19: $18 $e9

Call_000_0e1b:
jr_000_0e1b:
    ld c, $47                                     ; $0e1b: $0e $47
    xor a                                         ; $0e1d: $af
    ldh [c], a                                    ; $0e1e: $e2
    inc c                                         ; $0e1f: $0c
    ldh [c], a                                    ; $0e20: $e2
    inc c                                         ; $0e21: $0c
    ldh [c], a                                    ; $0e22: $e2
    ldh a, [rLY]                                  ; $0e23: $f0 $44
    sub $93                                       ; $0e25: $d6 $93
    jr nz, jr_000_0e1b                            ; $0e27: $20 $f2

    ld [$0040], a                                 ; $0e29: $ea $40 $00
    ret                                           ; $0e2c: $c9


Call_000_0e2d:
    ld hl, $c01b                                  ; $0e2d: $21 $1b $c0
    set 0, [hl]                                   ; $0e30: $cb $c6

jr_000_0e32:
    bit 0, [hl]                                   ; $0e32: $cb $46
    jr nz, jr_000_0e32                            ; $0e34: $20 $fc

    ret                                           ; $0e36: $c9


Call_000_0e37:
Jump_000_0e37:
    ldh a, [rLCDC]                                ; $0e37: $f0 $40
    add a                                         ; $0e39: $87
    ret c                                         ; $0e3a: $d8

    ldh a, [rLCDC]                                ; $0e3b: $f0 $40
    or $80                                        ; $0e3d: $f6 $80
    ldh [rLCDC], a                                ; $0e3f: $e0 $40
    ret                                           ; $0e41: $c9


Call_000_0e42:
Jump_000_0e42:
    ld a, l                                       ; $0e42: $7d
    ld [$c01d], a                                 ; $0e43: $ea $1d $c0
    ld a, h                                       ; $0e46: $7c
    ld [$c01e], a                                 ; $0e47: $ea $1e $c0
    ret                                           ; $0e4a: $c9


Call_000_0e4b:
jr_000_0e4b:
    ld a, l                                       ; $0e4b: $7d
    ld [$c01f], a                                 ; $0e4c: $ea $1f $c0
    ld a, h                                       ; $0e4f: $7c
    ld [$c020], a                                 ; $0e50: $ea $20 $c0
    ret                                           ; $0e53: $c9


    ld hl, $0000                                  ; $0e54: $21 $00 $00
    call Call_000_0e42                            ; $0e57: $cd $42 $0e
    jr jr_000_0e4b                                ; $0e5a: $18 $ef

Call_000_0e5c:
    ld hl, $0000                                  ; $0e5c: $21 $00 $00
    call Call_000_0e42                            ; $0e5f: $cd $42 $0e
    ld hl, $0790                                  ; $0e62: $21 $90 $07
    jr jr_000_0e4b                                ; $0e65: $18 $e4

    ld a, $90                                     ; $0e67: $3e $90
    ld [$c01f], a                                 ; $0e69: $ea $1f $c0
    ret                                           ; $0e6c: $c9


Call_000_0e6d:
    ld b, $e4                                     ; $0e6d: $06 $e4
    ld c, $d0                                     ; $0e6f: $0e $d0

Call_000_0e71:
    ld a, b                                       ; $0e71: $78
    ld [$c015], a                                 ; $0e72: $ea $15 $c0
    ld [$c016], a                                 ; $0e75: $ea $16 $c0
    ldh [rBGP], a                                 ; $0e78: $e0 $47
    ldh [rOBP0], a                                ; $0e7a: $e0 $48
    ld a, c                                       ; $0e7c: $79
    ld [$c017], a                                 ; $0e7d: $ea $17 $c0
    ldh [rOBP1], a                                ; $0e80: $e0 $49
    ret                                           ; $0e82: $c9


; Converts a BCD-encoded byte at [de] into two tile IDs written to [hl+].
; In: de = source BCD byte, b = tile ID base for digit '0' (e.g. $9e), a/c = digit count
; Leading-zero digit is written as tile $00 (blank) unless a nonzero digit preceded it.
Call_000_0e83_BcdToTiles:
Jump_000_0e83_BcdToTiles:
    ld a, c                                       ; $0e83: $79
    ld c, $00                                     ; $0e84: $0e $00

jr_000_0e86:
    push af                                       ; $0e86: $f5
    ld a, [de]                                    ; $0e87: $1a
    swap a                                        ; $0e88: $cb $37
    and $0f                                       ; $0e8a: $e6 $0f
    jr z, jr_000_0e90                             ; $0e8c: $28 $02

    ld c, $ff                                     ; $0e8e: $0e $ff

jr_000_0e90:
    add b                                         ; $0e90: $80
    and c                                         ; $0e91: $a1
    ld [hl+], a                                   ; $0e92: $22
    ld a, [de]                                    ; $0e93: $1a
    and $0f                                       ; $0e94: $e6 $0f
    jr z, jr_000_0e9a                             ; $0e96: $28 $02

    ld c, $ff                                     ; $0e98: $0e $ff

jr_000_0e9a:
    add b                                         ; $0e9a: $80
    and c                                         ; $0e9b: $a1
    ld [hl+], a                                   ; $0e9c: $22
    dec de                                        ; $0e9d: $1b
    pop af                                        ; $0e9e: $f1
    dec a                                         ; $0e9f: $3d
    jr nz, jr_000_0e86                            ; $0ea0: $20 $e4

    dec hl                                        ; $0ea2: $2b
    ld a, [hl]                                    ; $0ea3: $7e
    or a                                          ; $0ea4: $b7
    ret nz                                        ; $0ea5: $c0

    ld [hl], b                                    ; $0ea6: $70
    ret                                           ; $0ea7: $c9


Call_000_0ea8:
Jump_000_0ea8:
    call Call_000_04b7                            ; $0ea8: $cd $b7 $04
    call Call_000_0eb1                            ; $0eab: $cd $b1 $0e
    jp Jump_000_04aa                              ; $0eae: $c3 $aa $04


Call_000_0eb1:
    ld c, $ff                                     ; $0eb1: $0e $ff

jr_000_0eb3:
    ld a, [de]                                    ; $0eb3: $1a
    ld l, a                                       ; $0eb4: $6f
    inc de                                        ; $0eb5: $13
    ld a, [de]                                    ; $0eb6: $1a
    ld h, a                                       ; $0eb7: $67
    inc de                                        ; $0eb8: $13

jr_000_0eb9:
    ld a, [de]                                    ; $0eb9: $1a
    inc de                                        ; $0eba: $13
    ld b, a                                       ; $0ebb: $47
    inc b                                         ; $0ebc: $04
    ret z                                         ; $0ebd: $c8

    inc b                                         ; $0ebe: $04
    jr z, jr_000_0eb3                             ; $0ebf: $28 $f2

    and c                                         ; $0ec1: $a1
    ld [hl+], a                                   ; $0ec2: $22
    jr jr_000_0eb9                                ; $0ec3: $18 $f4

    ld c, $00                                     ; $0ec5: $0e $00
    jr jr_000_0eb3                                ; $0ec7: $18 $ea

; Plays a sound/effect, then draws wCurrentFloor as a single tile digit at
; VRAM $98e9 (HUD "B nF" floor indicator), using tile base $10 instead of
; the $9e font used elsewhere - this routine only runs on floor-transition
; events (confirmed via hook during an actual staircase descent), which is
; why it looked "dead" when only exercised during normal combat play.
Call_000_0ec9_DrawFloorNumberTile:
    ld de, $4011                                  ; $0ec9: $11 $11 $40
    call Call_000_0ea8                            ; $0ecc: $cd $a8 $0e
    ld de, wCurrentFloor                          ; $0ecf: $11 $04 $c1
    ld hl, $98e9                                  ; $0ed2: $21 $e9 $98
    ld bc, $1001                                  ; $0ed5: $01 $01 $10
    jp Jump_000_0e83_BcdToTiles                            ; $0ed8: $c3 $83 $0e


Call_000_0edb:
    ld hl, $a000                                  ; $0edb: $21 $00 $a0
    ld de, $a001                                  ; $0ede: $11 $01 $a0
    ld bc, $01ff                                  ; $0ee1: $01 $ff $01
    ld [hl], $00                                  ; $0ee4: $36 $00
    jp Jump_000_0442                              ; $0ee6: $c3 $42 $04


Call_000_0ee9:
    ld a, $0a                                     ; $0ee9: $3e $0a
    ld [$0000], a                                 ; $0eeb: $ea $00 $00
    ret                                           ; $0eee: $c9


Jump_000_0eef:
    ld a, $05                                     ; $0eef: $3e $05
    ld [$0000], a                                 ; $0ef1: $ea $00 $00
    ret                                           ; $0ef4: $c9


Call_000_0ef5:
    call Call_000_0ee9                            ; $0ef5: $cd $e9 $0e
    call Call_000_0edb                            ; $0ef8: $cd $db $0e
    ld a, $01                                     ; $0efb: $3e $01
    ld [$a000], a                                 ; $0efd: $ea $00 $a0
    ld hl, $a002                                  ; $0f00: $21 $02 $a0
    ld a, $01                                     ; $0f03: $3e $01
    ld [hl+], a                                   ; $0f05: $22
    ld [hl+], a                                   ; $0f06: $22
    ld [hl+], a                                   ; $0f07: $22
    ld [hl+], a                                   ; $0f08: $22
    ld [hl+], a                                   ; $0f09: $22
    ld a, $01                                     ; $0f0a: $3e $01
    ld [hl+], a                                   ; $0f0c: $22
    ld [hl+], a                                   ; $0f0d: $22

Call_000_0f0e:
    xor a                                         ; $0f0e: $af
    ld [$c127], a                                 ; $0f0f: $ea $27 $c1
    ld hl, $c138                                  ; $0f12: $21 $38 $c1
    ld de, $c139                                  ; $0f15: $11 $39 $c1
    ld bc, $0007                                  ; $0f18: $01 $07 $00
    ld [hl], $3a                                  ; $0f1b: $36 $3a
    call Call_000_0442                            ; $0f1d: $cd $42 $04

Call_000_0f20:
    call Call_000_0ee9                            ; $0f20: $cd $e9 $0e
    ld a, [$c127]                                 ; $0f23: $fa $27 $c1
    ld [$a001], a                                 ; $0f26: $ea $01 $a0
    ld hl, $c138                                  ; $0f29: $21 $38 $c1
    ld de, $a010                                  ; $0f2c: $11 $10 $a0
    ld b, $08                                     ; $0f2f: $06 $08

jr_000_0f31:
    ld a, [hl]                                    ; $0f31: $7e
    and $0f                                       ; $0f32: $e6 $0f
    ld [de], a                                    ; $0f34: $12
    inc de                                        ; $0f35: $13
    ld a, [hl+]                                   ; $0f36: $2a
    swap a                                        ; $0f37: $cb $37
    and $0f                                       ; $0f39: $e6 $0f
    ld [de], a                                    ; $0f3b: $12
    inc de                                        ; $0f3c: $13
    dec b                                         ; $0f3d: $05
    jr nz, jr_000_0f31                            ; $0f3e: $20 $f1

    jp Jump_000_0eef                              ; $0f40: $c3 $ef $0e


Call_000_0f43:
    call Call_000_0ee9                            ; $0f43: $cd $e9 $0e
    ld a, [$a001]                                 ; $0f46: $fa $01 $a0
    and $01                                       ; $0f49: $e6 $01
    ld [$c127], a                                 ; $0f4b: $ea $27 $c1
    ld hl, $a010                                  ; $0f4e: $21 $10 $a0
    ld de, $c138                                  ; $0f51: $11 $38 $c1
    ld b, $08                                     ; $0f54: $06 $08

jr_000_0f56:
    ld a, [hl+]                                   ; $0f56: $2a
    and $0f                                       ; $0f57: $e6 $0f
    ld c, a                                       ; $0f59: $4f
    ld a, [hl+]                                   ; $0f5a: $2a
    and $0f                                       ; $0f5b: $e6 $0f
    swap a                                        ; $0f5d: $cb $37
    or c                                          ; $0f5f: $b1
    ld [de], a                                    ; $0f60: $12
    inc de                                        ; $0f61: $13
    dec b                                         ; $0f62: $05
    jr nz, jr_000_0f56                            ; $0f63: $20 $f1

    jp Jump_000_0eef                              ; $0f65: $c3 $ef $0e


Call_000_0f68:
    call Call_000_0ee9                            ; $0f68: $cd $e9 $0e
    ld hl, $a002                                  ; $0f6b: $21 $02 $a0
    ld de, $c160                                  ; $0f6e: $11 $60 $c1
    ld b, $05                                     ; $0f71: $06 $05

jr_000_0f73:
    ld a, [hl+]                                   ; $0f73: $2a
    and $0f                                       ; $0f74: $e6 $0f
    ld [de], a                                    ; $0f76: $12
    inc de                                        ; $0f77: $13
    dec b                                         ; $0f78: $05
    jr nz, jr_000_0f73                            ; $0f79: $20 $f8

    ld hl, $c160                                  ; $0f7b: $21 $60 $c1
    ld de, $c165                                  ; $0f7e: $11 $65 $c1
    ld b, $04                                     ; $0f81: $06 $04

jr_000_0f83:
    ld a, [hl+]                                   ; $0f83: $2a
    cp $0b                                        ; $0f84: $fe $0b
    jr c, jr_000_0f8a                             ; $0f86: $38 $02

    ld a, $0a                                     ; $0f88: $3e $0a

jr_000_0f8a:
    ld [de], a                                    ; $0f8a: $12
    inc de                                        ; $0f8b: $13
    dec b                                         ; $0f8c: $05
    jr nz, jr_000_0f83                            ; $0f8d: $20 $f4

    ld a, [$a007]                                 ; $0f8f: $fa $07 $a0
    and $0f                                       ; $0f92: $e6 $0f
    dec a                                         ; $0f94: $3d
    ld [$c02b], a                                 ; $0f95: $ea $2b $c0
    ld hl, $c165                                  ; $0f98: $21 $65 $c1
    rst RST_28                                    ; $0f9b: $ef
    ld a, [$a008]                                 ; $0f9c: $fa $08 $a0
    and $0f                                       ; $0f9f: $e6 $0f
    ld [hl], a                                    ; $0fa1: $77
    jp Jump_000_0eef                              ; $0fa2: $c3 $ef $0e


Call_000_0fa5:
    call Call_000_0ee9                            ; $0fa5: $cd $e9 $0e
    ld a, [$c101]                                 ; $0fa8: $fa $01 $c1
    ld [$a007], a                                 ; $0fab: $ea $07 $a0
    ld a, [$c102]                                 ; $0fae: $fa $02 $c1
    ld [$a008], a                                 ; $0fb1: $ea $08 $a0
    jp Jump_000_0eef                              ; $0fb4: $c3 $ef $0e


Jump_000_0fb7:
    call Call_000_0ee9                            ; $0fb7: $cd $e9 $0e
    ld a, [$c101]                                 ; $0fba: $fa $01 $c1
    ld hl, $a001                                  ; $0fbd: $21 $01 $a0
    rst RST_28                                    ; $0fc0: $ef
    ld [hl], b                                    ; $0fc1: $70
    ld a, b                                       ; $0fc2: $78
    cp $0b                                        ; $0fc3: $fe $0b
    jr c, jr_000_0fc9                             ; $0fc5: $38 $02

    ld a, $0a                                     ; $0fc7: $3e $0a

jr_000_0fc9:
    ld [$a008], a                                 ; $0fc9: $ea $08 $a0
    jp Jump_000_0eef                              ; $0fcc: $c3 $ef $0e


Call_000_0fcf:
    call Call_000_0ee9                            ; $0fcf: $cd $e9 $0e
    ld hl, $a01e                                  ; $0fd2: $21 $1e $a0

jr_000_0fd5:
    ld a, [$c101]                                 ; $0fd5: $fa $01 $c1
    ld d, a                                       ; $0fd8: $57
    ld a, [$c102]                                 ; $0fd9: $fa $02 $c1
    ld e, a                                       ; $0fdc: $5f
    call Call_000_0ff3                            ; $0fdd: $cd $f3 $0f
    ld c, a                                       ; $0fe0: $4f
    ld e, $01                                     ; $0fe1: $1e $01
    call Call_000_0374                            ; $0fe3: $cd $74 $03
    ld a, c                                       ; $0fe6: $79
    and $0f                                       ; $0fe7: $e6 $0f
    ld [hl+], a                                   ; $0fe9: $22
    ld a, c                                       ; $0fea: $79
    swap a                                        ; $0feb: $cb $37
    and $0f                                       ; $0fed: $e6 $0f

Call_000_0fef:
Jump_000_0fef:
    ld [hl], a                                    ; $0fef: $77
    jp Jump_000_0eef                              ; $0ff0: $c3 $ef $0e


Call_000_0ff3:
    ld a, d                                       ; $0ff3: $7a
    add a                                         ; $0ff4: $87
    rst RST_28                                    ; $0ff5: $ef
    ld a, e                                       ; $0ff6: $7b
    dec a                                         ; $0ff7: $3d
    swap a                                        ; $0ff8: $cb $37
    rst RST_28                                    ; $0ffa: $ef
    ld a, [hl+]                                   ; $0ffb: $2a
    and $0f                                       ; $0ffc: $e6 $0f
    ld c, a                                       ; $0ffe: $4f
    ld a, [hl-]                                   ; $0fff: $3a
    and $0f                                       ; $1000: $e6 $0f
    ld b, a                                       ; $1002: $47
    swap a                                        ; $1003: $cb $37
    add c                                         ; $1005: $81
    ret                                           ; $1006: $c9


Call_000_1007:
    call Call_000_0ee9                            ; $1007: $cd $e9 $0e
    ld hl, $a026                                  ; $100a: $21 $26 $a0
    jr jr_000_0fd5                                ; $100d: $18 $c6

Call_000_100f:
    call Call_000_0ee9                            ; $100f: $cd $e9 $0e
    ld hl, $a01e                                  ; $1012: $21 $1e $a0
    call Call_000_0ff3                            ; $1015: $cd $f3 $0f
    jp Jump_000_0eef                              ; $1018: $c3 $ef $0e


Call_000_101b:
    call Call_000_0ee9                            ; $101b: $cd $e9 $0e
    ld hl, $a026                                  ; $101e: $21 $26 $a0
    call Call_000_0ff3                            ; $1021: $cd $f3 $0f
    jp Jump_000_0eef                              ; $1024: $c3 $ef $0e


Call_000_1027:
    call Call_000_0ee9                            ; $1027: $cd $e9 $0e
    ld a, [$a000]                                 ; $102a: $fa $00 $a0
    and $0f                                       ; $102d: $e6 $0f
    cp $01                                        ; $102f: $fe $01
    jp Jump_000_0eef                              ; $1031: $c3 $ef $0e


    call Call_000_04b7                            ; $1034: $cd $b7 $04
    ld a, [$c101]                                 ; $1037: $fa $01 $c1
    ld hl, $6dfc                                  ; $103a: $21 $fc $6d
    call Call_000_042a                            ; $103d: $cd $2a $04
    ld a, [$c102]                                 ; $1040: $fa $02 $c1
    rst RST_28                                    ; $1043: $ef
    ld a, [hl]                                    ; $1044: $7e
    ld [de], a                                    ; $1045: $12
    jp Jump_000_04aa                              ; $1046: $c3 $aa $04


Call_000_1049:
    call Call_000_04b7                            ; $1049: $cd $b7 $04
    ld hl, $66e8                                  ; $104c: $21 $e8 $66
    rst RST_28                                    ; $104f: $ef
    ld b, [hl]                                    ; $1050: $46
    jp Jump_000_04aa                              ; $1051: $c3 $aa $04


Call_000_1054:
    call Call_000_04bc                            ; $1054: $cd $bc $04
    ld hl, $7d27                                  ; $1057: $21 $27 $7d
    ld de, $da00                                  ; $105a: $11 $00 $da
    ld bc, $0058                                  ; $105d: $01 $58 $00
    call Call_000_0442                            ; $1060: $cd $42 $04
    jp Jump_000_04aa                              ; $1063: $c3 $aa $04


Call_000_1066:
    call Call_000_04bc                            ; $1066: $cd $bc $04
    ld hl, $c518                                  ; $1069: $21 $18 $c5
    inc [hl]                                      ; $106c: $34
    ld a, [hl]                                    ; $106d: $7e
    and $08                                       ; $106e: $e6 $08
    ld b, a                                       ; $1070: $47
    ld a, [hl]                                    ; $1071: $7e
    and $10                                       ; $1072: $e6 $10
    ld c, a                                       ; $1074: $4f
    ld a, [$c51b]                                 ; $1075: $fa $1b $c5
    cp $06                                        ; $1078: $fe $06
    jr z, jr_000_107d                             ; $107a: $28 $01

    ld c, b                                       ; $107c: $48

jr_000_107d:
    ld a, c                                       ; $107d: $79
    or a                                          ; $107e: $b7
    ld hl, $7d7f                                  ; $107f: $21 $7f $7d
    jr z, jr_000_1087                             ; $1082: $28 $03

    ld hl, $7e05                                  ; $1084: $21 $05 $7e

jr_000_1087:
    ld a, [$c51b]                                 ; $1087: $fa $1b $c5
    call Call_000_041a                            ; $108a: $cd $1a $04
    ld de, $da50                                  ; $108d: $11 $50 $da
    ld bc, $0018                                  ; $1090: $01 $18 $00
    call Call_000_0442                            ; $1093: $cd $42 $04
    jp Jump_000_04aa                              ; $1096: $c3 $aa $04


Call_000_1099:
    call Call_000_04bc                            ; $1099: $cd $bc $04
    ld hl, $7ea3                                  ; $109c: $21 $a3 $7e
    ld de, $da00                                  ; $109f: $11 $00 $da
    ld bc, $0030                                  ; $10a2: $01 $30 $00
    call Call_000_0442                            ; $10a5: $cd $42 $04
    jp Jump_000_04aa                              ; $10a8: $c3 $aa $04


Call_000_10ab:
    call Call_000_04b7                            ; $10ab: $cd $b7 $04
    ld a, b                                       ; $10ae: $78
    ld hl, $615a                                  ; $10af: $21 $5a $61
    call Call_000_041a                            ; $10b2: $cd $1a $04
    ld a, c                                       ; $10b5: $79

jr_000_10b6:
    rst RST_28                                    ; $10b6: $ef
    ld a, [hl]                                    ; $10b7: $7e
    jp Jump_000_04aa                              ; $10b8: $c3 $aa $04


Call_000_10bb:
    call Call_000_04b7                            ; $10bb: $cd $b7 $04
    ld hl, $6208                                  ; $10be: $21 $08 $62
    jr jr_000_10b6                                ; $10c1: $18 $f3

Call_000_10c3:
    call Call_000_04b7                            ; $10c3: $cd $b7 $04
    ld a, [$c224]                                 ; $10c6: $fa $24 $c2
    ld hl, $5f7c                                  ; $10c9: $21 $7c $5f
    jr jr_000_10b6                                ; $10cc: $18 $e8

Call_000_10ce:
    call Call_000_04b7                            ; $10ce: $cd $b7 $04
    ld a, [$c224]                                 ; $10d1: $fa $24 $c2
    ld hl, $5f96                                  ; $10d4: $21 $96 $5f
    jr jr_000_10b6                                ; $10d7: $18 $dd

Call_000_10d9:
    call Call_000_04b7                            ; $10d9: $cd $b7 $04
    ld a, b                                       ; $10dc: $78
    ld hl, $5f62                                  ; $10dd: $21 $62 $5f
    jr jr_000_10b6                                ; $10e0: $18 $d4

Call_000_10e2:
    call Call_000_04b7                            ; $10e2: $cd $b7 $04
    ld a, [$c224]                                 ; $10e5: $fa $24 $c2
    ld hl, $5f48                                  ; $10e8: $21 $48 $5f
    jr jr_000_10b6                                ; $10eb: $18 $c9

    call Call_000_04b7                            ; $10ed: $cd $b7 $04
    ld b, $ff                                     ; $10f0: $06 $ff
    ld a, [$c543]                                 ; $10f2: $fa $43 $c5

jr_000_10f5:
    inc b                                         ; $10f5: $04
    sub $1e                                       ; $10f6: $d6 $1e
    jr nc, jr_000_10f5                            ; $10f8: $30 $fb

    add $1e                                       ; $10fa: $c6 $1e
    ld hl, $66ac                                  ; $10fc: $21 $ac $66
    call Call_000_041a                            ; $10ff: $cd $1a $04
    call Call_000_04aa                            ; $1102: $cd $aa $04
    ld a, b                                       ; $1105: $78
    rst RST_00                                    ; $1106: $c7
    rrca                                          ; $1107: $0f
    ld de, $1114                                  ; $1108: $11 $14 $11
    dec e                                         ; $110b: $1d
    ld de, $1122                                  ; $110c: $11 $22 $11

jr_000_110f:
    ld a, l                                       ; $110f: $7d
    cpl                                           ; $1110: $2f
    inc a                                         ; $1111: $3c
    ld l, a                                       ; $1112: $6f
    ret                                           ; $1113: $c9


    ld a, h                                       ; $1114: $7c
    ld h, l                                       ; $1115: $65
    ld l, a                                       ; $1116: $6f
    ld a, h                                       ; $1117: $7c
    cpl                                           ; $1118: $2f
    inc a                                         ; $1119: $3c
    ld h, a                                       ; $111a: $67
    jr jr_000_110f                                ; $111b: $18 $f2

    ld a, h                                       ; $111d: $7c
    cpl                                           ; $111e: $2f
    inc a                                         ; $111f: $3c
    ld h, a                                       ; $1120: $67
    ret                                           ; $1121: $c9


    ld a, h                                       ; $1122: $7c
    ld h, l                                       ; $1123: $65
    ld l, a                                       ; $1124: $6f
    ret                                           ; $1125: $c9


Call_000_1126:
    call Call_000_04b7                            ; $1126: $cd $b7 $04
    push de                                       ; $1129: $d5
    push bc                                       ; $112a: $c5
    ld a, [$c235]                                 ; $112b: $fa $35 $c2
    ld hl, $5fb2                                  ; $112e: $21 $b2 $5f
    call Call_000_041a                            ; $1131: $cd $1a $04
    ld de, $c2e0                                  ; $1134: $11 $e0 $c2
    ld bc, $0014                                  ; $1137: $01 $14 $00
    call Call_000_0442                            ; $113a: $cd $42 $04
    pop bc                                        ; $113d: $c1

Jump_000_113e:
    pop de                                        ; $113e: $d1
    jp Jump_000_04aa                              ; $113f: $c3 $aa $04


Call_000_1142:
    call Call_000_04b7                            ; $1142: $cd $b7 $04
    push hl                                       ; $1145: $e5
    ld a, [$c224]                                 ; $1146: $fa $24 $c2
    ld l, a                                       ; $1149: $6f
    ld h, $00                                     ; $114a: $26 $00
    add hl, hl                                    ; $114c: $29
    push hl                                       ; $114d: $e5
    add hl, hl                                    ; $114e: $29
    pop de                                        ; $114f: $d1
    add hl, de                                    ; $1150: $19
    ld de, $5ea2                                  ; $1151: $11 $a2 $5e
    add hl, de                                    ; $1154: $19
    pop de                                        ; $1155: $d1
    ld bc, $0006                                  ; $1156: $01 $06 $00
    call Call_000_0442                            ; $1159: $cd $42 $04
    jp Jump_000_04aa                              ; $115c: $c3 $aa $04


Call_000_115f:
    call Call_000_04cb                            ; $115f: $cd $cb $04

Call_000_1162:
    ld l, b                                       ; $1162: $68
    ld h, $00                                     ; $1163: $26 $00
    add hl, hl                                    ; $1165: $29
    add hl, hl                                    ; $1166: $29
    add hl, hl                                    ; $1167: $29
    ld bc, $4f13                                  ; $1168: $01 $13 $4f
    add hl, bc                                    ; $116b: $09
    ld de, $c550                                  ; $116c: $11 $50 $c5
    ld bc, $0008                                  ; $116f: $01 $08 $00
    call Call_000_0442                            ; $1172: $cd $42 $04
    jp Jump_000_04aa                              ; $1175: $c3 $aa $04


Call_000_1178:
    call Call_000_0455                            ; $1178: $cd $55 $04
    and $07                                       ; $117b: $e6 $07
    ld [$c200], a                                 ; $117d: $ea $00 $c2
    call Call_000_04b7                            ; $1180: $cd $b7 $04
    ld a, [$c101]                                 ; $1183: $fa $01 $c1
    ld hl, $7276                                  ; $1186: $21 $76 $72
    call Call_000_041a                            ; $1189: $cd $1a $04
    ld a, [$c102]                                 ; $118c: $fa $02 $c1
    dec a                                         ; $118f: $3d
    call Call_000_041a                            ; $1190: $cd $1a $04
    ld a, [$c104]                                 ; $1193: $fa $04 $c1
    call Call_000_03a4                            ; $1196: $cd $a4 $03
    ld b, a                                       ; $1199: $47
    srl a                                         ; $119a: $cb $3f
    rst RST_28                                    ; $119c: $ef
    ld a, [hl]                                    ; $119d: $7e
    bit 0, b                                      ; $119e: $cb $40
    jr nz, jr_000_11a4                            ; $11a0: $20 $02

    swap a                                        ; $11a2: $cb $37

jr_000_11a4:
    and $0f                                       ; $11a4: $e6 $0f
    cp $07                                        ; $11a6: $fe $07
    jr c, jr_000_11ac                             ; $11a8: $38 $02

    ld a, $07                                     ; $11aa: $3e $07

jr_000_11ac:
    ld [$c105], a                                 ; $11ac: $ea $05 $c1
    ld a, [$c102]                                 ; $11af: $fa $02 $c1
    ld hl, $7262                                  ; $11b2: $21 $62 $72
    call Call_000_041a                            ; $11b5: $cd $1a $04
    ld a, [$c104]                                 ; $11b8: $fa $04 $c1
    call Call_000_03a4                            ; $11bb: $cd $a4 $03
    ld b, a                                       ; $11be: $47
    srl a                                         ; $11bf: $cb $3f
    rst RST_28                                    ; $11c1: $ef
    ld a, [hl]                                    ; $11c2: $7e
    bit 0, b                                      ; $11c3: $cb $40
    jr nz, jr_000_11c9                            ; $11c5: $20 $02

    swap a                                        ; $11c7: $cb $37

jr_000_11c9:
    and $0f                                       ; $11c9: $e6 $0f
    ld hl, $c116                                  ; $11cb: $21 $16 $c1
    bit 0, [hl]                                   ; $11ce: $cb $46
    jr z, jr_000_11d7                             ; $11d0: $28 $05

    sub $01                                       ; $11d2: $d6 $01
    jr nc, jr_000_11d7                            ; $11d4: $30 $01

    xor a                                         ; $11d6: $af

jr_000_11d7:
    cp $09                                        ; $11d7: $fe $09
    jr c, jr_000_11dd                             ; $11d9: $38 $02

    ld a, $09                                     ; $11db: $3e $09

jr_000_11dd:
    ld [$c106], a                                 ; $11dd: $ea $06 $c1
    ret                                           ; $11e0: $c9


Call_000_11e1:
    call Call_000_11f2                            ; $11e1: $cd $f2 $11
    or a                                          ; $11e4: $b7
    ret z                                         ; $11e5: $c8

    ld b, $60                                     ; $11e6: $06 $60
    ld a, $ff                                     ; $11e8: $3e $ff
    ld hl, $c460                                  ; $11ea: $21 $60 $c4

jr_000_11ed:
    ld [hl+], a                                   ; $11ed: $22
    dec b                                         ; $11ee: $05
    jr nz, jr_000_11ed                            ; $11ef: $20 $fc

    ret                                           ; $11f1: $c9


Call_000_11f2:
    call Call_000_04b7                            ; $11f2: $cd $b7 $04
    ld a, [$c101]                                 ; $11f5: $fa $01 $c1
    ld hl, $725a                                  ; $11f8: $21 $5a $72
    call Call_000_041a                            ; $11fb: $cd $1a $04
    ld a, [$c104]                                 ; $11fe: $fa $04 $c1
    call Call_000_03a4                            ; $1201: $cd $a4 $03
    ld b, a                                       ; $1204: $47
    rrca                                          ; $1205: $0f
    rrca                                          ; $1206: $0f
    rrca                                          ; $1207: $0f
    and $1f                                       ; $1208: $e6 $1f
    rst RST_28                                    ; $120a: $ef
    ld a, b                                       ; $120b: $78
    and $07                                       ; $120c: $e6 $07
    jr nz, jr_000_1212                            ; $120e: $20 $02

    ld a, $08                                     ; $1210: $3e $08

Jump_000_1212:
jr_000_1212:
    ld b, a                                       ; $1212: $47
    ld a, [hl]                                    ; $1213: $7e

jr_000_1214:
    rlca                                          ; $1214: $07
    dec b                                         ; $1215: $05
    jr nz, jr_000_1214                            ; $1216: $20 $fc

    rla                                           ; $1218: $17
    ld a, $01                                     ; $1219: $3e $01
    jr c, jr_000_121e                             ; $121b: $38 $01

    xor a                                         ; $121d: $af

jr_000_121e:
    ld [$c116], a                                 ; $121e: $ea $16 $c1
    jp Jump_000_04aa                              ; $1221: $c3 $aa $04


Call_000_1224:
    call Call_000_04b7                            ; $1224: $cd $b7 $04
    ld a, [$c101]                                 ; $1227: $fa $01 $c1
    ld c, a                                       ; $122a: $4f
    ld b, $0a                                     ; $122b: $06 $0a
    call Call_000_03cf                            ; $122d: $cd $cf $03
    ld hl, $7216                                  ; $1230: $21 $16 $72
    rst RST_28                                    ; $1233: $ef
    ld a, [$c102]                                 ; $1234: $fa $02 $c1
    dec a                                         ; $1237: $3d
    rst RST_28                                    ; $1238: $ef
    ld a, [hl]                                    ; $1239: $7e
    ld [$c114], a                                 ; $123a: $ea $14 $c1
    jp Jump_000_04aa                              ; $123d: $c3 $aa $04


Call_000_1240:
    call Call_000_04b7                            ; $1240: $cd $b7 $04
    ld hl, $6750                                  ; $1243: $21 $50 $67
    jr jr_000_125b                                ; $1246: $18 $13

Call_000_1248:
    call Call_000_04b7                            ; $1248: $cd $b7 $04
    ld a, [$c101]                                 ; $124b: $fa $01 $c1
    ld hl, $6d4e                                  ; $124e: $21 $4e $6d
    call Call_000_041a                            ; $1251: $cd $1a $04
    ld a, [$c102]                                 ; $1254: $fa $02 $c1
    dec a                                         ; $1257: $3d
    call Call_000_041a                            ; $1258: $cd $1a $04

jr_000_125b:
    ld de, $c190                                  ; $125b: $11 $90 $c1
    ld bc, $0020                                  ; $125e: $01 $20 $00
    call Call_000_0442                            ; $1261: $cd $42 $04
    jp Jump_000_04aa                              ; $1264: $c3 $aa $04


Call_000_1267:
    call Call_000_04b7                            ; $1267: $cd $b7 $04
    ld a, [$c101]                                 ; $126a: $fa $01 $c1
    ld hl, $6da6                                  ; $126d: $21 $a6 $6d
    call Call_000_041a                            ; $1270: $cd $1a $04
    ld a, [$c102]                                 ; $1273: $fa $02 $c1
    dec a                                         ; $1276: $3d
    call Call_000_041a                            ; $1277: $cd $1a $04
    ld a, b                                       ; $127a: $78
    srl a                                         ; $127b: $cb $3f
    rst RST_28                                    ; $127d: $ef
    ld a, [hl]                                    ; $127e: $7e
    bit 0, b                                      ; $127f: $cb $40
    jr nz, jr_000_1285                            ; $1281: $20 $02

    swap a                                        ; $1283: $cb $37

jr_000_1285:
    jp Jump_000_04aa                              ; $1285: $c3 $aa $04


Call_000_1288:
    call Call_000_04bc                            ; $1288: $cd $bc $04
    ld a, [$c202]                                 ; $128b: $fa $02 $c2
    ld hl, $55d5                                  ; $128e: $21 $d5 $55
    call Call_000_041a                            ; $1291: $cd $1a $04
    push hl                                       ; $1294: $e5
    ld a, [$c201]                                 ; $1295: $fa $01 $c2
    ld hl, $2047                                  ; $1298: $21 $47 $20
    call Call_000_041e_WordTableLookupToDE                            ; $129b: $cd $1e $04
    pop hl                                        ; $129e: $e1
    ld b, $08                                     ; $129f: $06 $08

jr_000_12a1:
    push bc                                       ; $12a1: $c5
    ld bc, $000a                                  ; $12a2: $01 $0a $00
    call Call_000_0442                            ; $12a5: $cd $42 $04
    ld a, $16                                     ; $12a8: $3e $16
    rst RST_30                                    ; $12aa: $f7
    pop bc                                        ; $12ab: $c1
    dec b                                         ; $12ac: $05
    jr nz, jr_000_12a1                            ; $12ad: $20 $f2

    jp Jump_000_04aa                              ; $12af: $c3 $aa $04


Call_000_12b2:
    call Call_000_04bc                            ; $12b2: $cd $bc $04
    add a                                         ; $12b5: $87
    ld de, $5455                                  ; $12b6: $11 $55 $54
    rst RST_30                                    ; $12b9: $f7
    ld a, [de]                                    ; $12ba: $1a
    inc de                                        ; $12bb: $13
    push af                                       ; $12bc: $f5
    swap a                                        ; $12bd: $cb $37
    and $0f                                       ; $12bf: $e6 $0f
    ld [hl+], a                                   ; $12c1: $22
    pop af                                        ; $12c2: $f1
    and $0f                                       ; $12c3: $e6 $0f
    ld [hl+], a                                   ; $12c5: $22
    ld a, [de]                                    ; $12c6: $1a
    push af                                       ; $12c7: $f5
    swap a                                        ; $12c8: $cb $37
    and $0f                                       ; $12ca: $e6 $0f
    ld [hl+], a                                   ; $12cc: $22
    pop af                                        ; $12cd: $f1
    and $0f                                       ; $12ce: $e6 $0f
    ld [hl], a                                    ; $12d0: $77
    jp Jump_000_04aa                              ; $12d1: $c3 $aa $04


Call_000_12d4:
    call Call_000_12f6                            ; $12d4: $cd $f6 $12
    jr jr_000_12f2                                ; $12d7: $18 $19

Call_000_12d9:
    call Call_000_12f6                            ; $12d9: $cd $f6 $12
    jr jr_000_12f1                                ; $12dc: $18 $13

Call_000_12de:
    call Call_000_12f6                            ; $12de: $cd $f6 $12
    jr jr_000_12f0                                ; $12e1: $18 $0d

Jump_000_12e3:
    jp Jump_000_04aa                              ; $12e3: $c3 $aa $04


Call_000_12e6:
    call Call_000_12f6                            ; $12e6: $cd $f6 $12
    jr jr_000_12ef                                ; $12e9: $18 $04

Call_000_12eb:
    call Call_000_12f6                            ; $12eb: $cd $f6 $12
    inc hl                                        ; $12ee: $23

jr_000_12ef:
    inc hl                                        ; $12ef: $23

jr_000_12f0:
    inc hl                                        ; $12f0: $23

jr_000_12f1:
    inc hl                                        ; $12f1: $23

jr_000_12f2:
    ld a, [hl]                                    ; $12f2: $7e
    jp Jump_000_04aa                              ; $12f3: $c3 $aa $04


Call_000_12f6:
    call Call_000_04bc                            ; $12f6: $cd $bc $04
    ld a, [$c202]                                 ; $12f9: $fa $02 $c2
    ld hl, $5655                                  ; $12fc: $21 $55 $56
    jp Jump_000_041a                              ; $12ff: $c3 $1a $04


    call Call_000_04bc                            ; $1302: $cd $bc $04
    ld a, [$c420]                                 ; $1305: $fa $20 $c4
    ld hl, $206b                                  ; $1308: $21 $6b $20

Call_000_130b:
    call Call_000_041a                            ; $130b: $cd $1a $04
    inc l                                         ; $130e: $2c
    ld l, [hl]                                    ; $130f: $6e
    ld h, $00                                     ; $1310: $26 $00
    add hl, hl                                    ; $1312: $29
    add hl, hl                                    ; $1313: $29
    ld de, $54d5                                  ; $1314: $11 $d5 $54
    add hl, de                                    ; $1317: $19
    ld a, [$c107]                                 ; $1318: $fa $07 $c1
    rst RST_28                                    ; $131b: $ef

Call_000_131c:
    ld a, [hl]                                    ; $131c: $7e
    jp Jump_000_04aa                              ; $131d: $c3 $aa $04


Call_000_1320:
    call Call_000_04bc                            ; $1320: $cd $bc $04
    ld a, [$c106]                                 ; $1323: $fa $06 $c1
    ld hl, $4014                                  ; $1326: $21 $14 $40
    rst RST_28                                    ; $1329: $ef
    ld a, [hl]                                    ; $132a: $7e
    call Call_000_0456                            ; $132b: $cd $56 $04
    ld c, a                                       ; $132e: $4f
    ld a, [$c106]                                 ; $132f: $fa $06 $c1
    ld hl, $4000                                  ; $1332: $21 $00 $40
    call Call_000_041a                            ; $1335: $cd $1a $04
    ld a, c                                       ; $1338: $79
    call Call_000_041a                            ; $1339: $cd $1a $04
    ld de, $c421                                  ; $133c: $11 $21 $c4
    ld bc, $0008                                  ; $133f: $01 $08 $00
    call Call_000_0442                            ; $1342: $cd $42 $04
    ld de, $c430                                  ; $1345: $11 $30 $c4
    ld bc, $0008                                  ; $1348: $01 $08 $00
    call Call_000_0442                            ; $134b: $cd $42 $04
    ld a, [$c421]                                 ; $134e: $fa $21 $c4
    ld c, a                                       ; $1351: $4f
    ld b, $00                                     ; $1352: $06 $00
    ld de, $c438                                  ; $1354: $11 $38 $c4
    call Call_000_0442                            ; $1357: $cd $42 $04
    jp Jump_000_04aa                              ; $135a: $c3 $aa $04


Call_000_135d:
    call Call_000_04bc                            ; $135d: $cd $bc $04
    ld a, [$c202]                                 ; $1360: $fa $02 $c2
    ld hl, $6a75                                  ; $1363: $21 $75 $6a
    call Call_000_041a                            ; $1366: $cd $1a $04
    ld de, $c441                                  ; $1369: $11 $41 $c4
    ld bc, $0004                                  ; $136c: $01 $04 $00
    call Call_000_0442                            ; $136f: $cd $42 $04
    ld a, [$c201]                                 ; $1372: $fa $01 $c2
    ld de, $c448                                  ; $1375: $11 $48 $c4
    rst RST_30                                    ; $1378: $f7
    ld a, [de]                                    ; $1379: $1a
    and $07                                       ; $137a: $e6 $07
    add a                                         ; $137c: $87
    add a                                         ; $137d: $87
    rst RST_28                                    ; $137e: $ef
    ld de, $c445                                  ; $137f: $11 $45 $c4
    ld bc, $0004                                  ; $1382: $01 $04 $00
    call Call_000_0442                            ; $1385: $cd $42 $04
    jp Jump_000_04aa                              ; $1388: $c3 $aa $04


Call_000_138b:
    call Call_000_04bc                            ; $138b: $cd $bc $04
    push hl                                       ; $138e: $e5
    push af                                       ; $138f: $f5
    and $0f                                       ; $1390: $e6 $0f
    ld hl, $491d                                  ; $1392: $21 $1d $49
    rst RST_28                                    ; $1395: $ef
    ld a, [hl]                                    ; $1396: $7e
    ld b, a                                       ; $1397: $47
    and $03                                       ; $1398: $e6 $03
    ld d, a                                       ; $139a: $57
    rl b                                          ; $139b: $cb $10
    jr nc, jr_000_13aa                            ; $139d: $30 $0b

    call Call_000_0455                            ; $139f: $cd $55 $04
    and $02                                       ; $13a2: $e6 $02
    ld c, a                                       ; $13a4: $4f
    ld a, d                                       ; $13a5: $7a
    and $fd                                       ; $13a6: $e6 $fd
    or c                                          ; $13a8: $b1
    ld d, a                                       ; $13a9: $57

jr_000_13aa:
    rl b                                          ; $13aa: $cb $10
    jr nc, jr_000_13b9                            ; $13ac: $30 $0b

    call Call_000_0455                            ; $13ae: $cd $55 $04
    and $01                                       ; $13b1: $e6 $01
    ld c, a                                       ; $13b3: $4f
    ld a, d                                       ; $13b4: $7a
    and $fe                                       ; $13b5: $e6 $fe
    or c                                          ; $13b7: $b1
    ld d, a                                       ; $13b8: $57

jr_000_13b9:
    ld a, d                                       ; $13b9: $7a
    and $03                                       ; $13ba: $e6 $03
    ld [$c203], a                                 ; $13bc: $ea $03 $c2
    ld a, [$c107]                                 ; $13bf: $fa $07 $c1
    ld hl, $492d                                  ; $13c2: $21 $2d $49
    call Call_000_041a                            ; $13c5: $cd $1a $04
    pop af                                        ; $13c8: $f1
    call Call_000_041a                            ; $13c9: $cd $1a $04
    ld a, [hl+]                                   ; $13cc: $2a
    call Call_000_0456                            ; $13cd: $cd $56 $04
    rst RST_28                                    ; $13d0: $ef
    ld a, [hl]                                    ; $13d1: $7e
    ld [$c202], a                                 ; $13d2: $ea $02 $c2
    ld a, [$c114]                                 ; $13d5: $fa $14 $c1
    ld b, a                                       ; $13d8: $47
    ld a, [$c104]                                 ; $13d9: $fa $04 $c1
    cp b                                          ; $13dc: $b8
    jr c, jr_000_13e4                             ; $13dd: $38 $05

    ld a, $07                                     ; $13df: $3e $07
    ld [$c202], a                                 ; $13e1: $ea $02 $c2

jr_000_13e4:
    pop hl                                        ; $13e4: $e1
    jp Jump_000_04aa                              ; $13e5: $c3 $aa $04


Call_000_13e8:
    call Call_000_04b7                            ; $13e8: $cd $b7 $04
    push af                                       ; $13eb: $f5
    ld de, $c300                                  ; $13ec: $11 $00 $c3
    ld hl, $4a2a                                  ; $13ef: $21 $2a $4a
    call Call_000_041a                            ; $13f2: $cd $1a $04
    xor a                                         ; $13f5: $af
    call Call_000_1795                            ; $13f6: $cd $95 $17
    pop af                                        ; $13f9: $f1
    add a                                         ; $13fa: $87
    ld b, a                                       ; $13fb: $47
    add a                                         ; $13fc: $87
    add b                                         ; $13fd: $80
    ld hl, $5ea2                                  ; $13fe: $21 $a2 $5e
    rst RST_28                                    ; $1401: $ef
    bit 2, [hl]                                   ; $1402: $cb $56
    jp z, Jump_000_04aa                           ; $1404: $ca $aa $04

    ld de, $c300                                  ; $1407: $11 $00 $c3
    ld bc, $0010                                  ; $140a: $01 $10 $00
    ld a, $07                                     ; $140d: $3e $07
    call Call_000_183d                            ; $140f: $cd $3d $18
    jp Jump_000_04aa                              ; $1412: $c3 $aa $04


Call_000_1415:
    call Call_000_04bc                            ; $1415: $cd $bc $04
    ld hl, $6d4d                                  ; $1418: $21 $4d $6d
    ld de, $da00                                  ; $141b: $11 $00 $da
    ld bc, $0020                                  ; $141e: $01 $20 $00
    call Call_000_0442                            ; $1421: $cd $42 $04
    jp Jump_000_04aa                              ; $1424: $c3 $aa $04


Call_000_1427:
    call Call_000_04bc                            ; $1427: $cd $bc $04
    call $6e82                                    ; $142a: $cd $82 $6e
    jp Jump_000_04aa                              ; $142d: $c3 $aa $04


Call_000_1430:
    call Call_000_04c6                            ; $1430: $cd $c6 $04
    ld hl, $7eed                                  ; $1433: $21 $ed $7e
    ld de, $da10                                  ; $1436: $11 $10 $da
    ld bc, $0048                                  ; $1439: $01 $48 $00
    call Call_000_0442                            ; $143c: $cd $42 $04
    jp Jump_000_04aa                              ; $143f: $c3 $aa $04


Call_000_1442:
    call Call_000_04bc                            ; $1442: $cd $bc $04
    ld hl, $6d8d                                  ; $1445: $21 $8d $6d
    ld de, $da08                                  ; $1448: $11 $08 $da
    ld bc, $0008                                  ; $144b: $01 $08 $00
    call Call_000_0442                            ; $144e: $cd $42 $04
    jp Jump_000_04aa                              ; $1451: $c3 $aa $04


Call_000_1454:
    call Call_000_04bc                            ; $1454: $cd $bc $04
    ld hl, $6d95                                  ; $1457: $21 $95 $6d
    ld de, $da60                                  ; $145a: $11 $60 $da
    ld bc, $0008                                  ; $145d: $01 $08 $00
    call Call_000_0442                            ; $1460: $cd $42 $04
    jp Jump_000_04aa                              ; $1463: $c3 $aa $04


Call_000_1466:
    call Call_000_04bc                            ; $1466: $cd $bc $04
    ld hl, $6d9d                                  ; $1469: $21 $9d $6d
    ld de, $da88                                  ; $146c: $11 $88 $da
    ld bc, $0014                                  ; $146f: $01 $14 $00
    call Call_000_0442                            ; $1472: $cd $42 $04
    jp Jump_000_04aa                              ; $1475: $c3 $aa $04


Call_000_1478:
Jump_000_1478:
    ld hl, $6db1                                  ; $1478: $21 $b1 $6d
    jr jr_000_1485                                ; $147b: $18 $08

Jump_000_147d:
    ld hl, $6db9                                  ; $147d: $21 $b9 $6d
    jr jr_000_1485                                ; $1480: $18 $03

Call_000_1482:
    ld hl, $6dc1                                  ; $1482: $21 $c1 $6d

jr_000_1485:
    call Call_000_04bc                            ; $1485: $cd $bc $04
    ld de, $da10                                  ; $1488: $11 $10 $da
    ld bc, $0008                                  ; $148b: $01 $08 $00
    call Call_000_0442                            ; $148e: $cd $42 $04
    jp Jump_000_04aa                              ; $1491: $c3 $aa $04


Call_000_1494:
    call Call_000_04bc                            ; $1494: $cd $bc $04
    ld hl, $6dc9                                  ; $1497: $21 $c9 $6d
    ld bc, $0008                                  ; $149a: $01 $08 $00
    call Call_000_0442                            ; $149d: $cd $42 $04
    jp Jump_000_04aa                              ; $14a0: $c3 $aa $04


Call_000_14a3:
    call Call_000_04bc                            ; $14a3: $cd $bc $04
    ld bc, $6ed8                                  ; $14a6: $01 $d8 $6e
    rst RST_38                                    ; $14a9: $ff
    ld a, [$c1f1]                                 ; $14aa: $fa $f1 $c1
    ld e, a                                       ; $14ad: $5f
    ld a, [$c1f2]                                 ; $14ae: $fa $f2 $c1
    ld d, a                                       ; $14b1: $57
    push de                                       ; $14b2: $d5
    call Call_000_2cef                            ; $14b3: $cd $ef $2c
    pop hl                                        ; $14b6: $e1
    ld a, $02                                     ; $14b7: $3e $02
    rst RST_28                                    ; $14b9: $ef
    ld a, l                                       ; $14ba: $7d
    ld [$c1f1], a                                 ; $14bb: $ea $f1 $c1
    ld a, h                                       ; $14be: $7c
    ld [$c1f2], a                                 ; $14bf: $ea $f2 $c1
    jp Jump_000_04aa                              ; $14c2: $c3 $aa $04


Jump_000_14c5:
    call Call_000_04bc                            ; $14c5: $cd $bc $04
    ld hl, $6ee0                                  ; $14c8: $21 $e0 $6e
    call Call_000_0424                            ; $14cb: $cd $24 $04

jr_000_14ce:
    ld de, $9922                                  ; $14ce: $11 $22 $99
    call Call_000_2cef                            ; $14d1: $cd $ef $2c
    inc bc                                        ; $14d4: $03
    ld de, $9924                                  ; $14d5: $11 $24 $99
    call Call_000_2cef                            ; $14d8: $cd $ef $2c
    inc bc                                        ; $14db: $03
    ld de, $9962                                  ; $14dc: $11 $62 $99
    call Call_000_2cef                            ; $14df: $cd $ef $2c
    inc bc                                        ; $14e2: $03
    ld de, $9964                                  ; $14e3: $11 $64 $99
    call Call_000_2cef                            ; $14e6: $cd $ef $2c
    jp Jump_000_04aa                              ; $14e9: $c3 $aa $04


Call_000_14ec:
    call Call_000_04bc                            ; $14ec: $cd $bc $04
    ld bc, $6f28                                  ; $14ef: $01 $28 $6f
    jr jr_000_14ce                                ; $14f2: $18 $da

Call_000_14f4:
    call Call_000_04bc                            ; $14f4: $cd $bc $04
    call $6dd1                                    ; $14f7: $cd $d1 $6d
    jp Jump_000_04aa                              ; $14fa: $c3 $aa $04


Jump_000_14fd:
    ld a, $30                                     ; $14fd: $3e $30
    call Call_000_00d9                            ; $14ff: $cd $d9 $00
    call Call_000_04bc                            ; $1502: $cd $bc $04
    call $6e0c                                    ; $1505: $cd $0c $6e
    jp Jump_000_04aa                              ; $1508: $c3 $aa $04


Call_000_150b:
    call Call_000_04bc                            ; $150b: $cd $bc $04
    call $6e26                                    ; $150e: $cd $26 $6e
    jp Jump_000_04aa                              ; $1511: $c3 $aa $04


Call_000_1514:
    ld de, $da4e                                  ; $1514: $11 $4e $da
    call $63f3                                    ; $1517: $cd $f3 $63
    call Call_000_04bc                            ; $151a: $cd $bc $04
    call $6dfa                                    ; $151d: $cd $fa $6d
    ld a, b                                       ; $1520: $78
    or a                                          ; $1521: $b7
    jr z, jr_000_1527                             ; $1522: $28 $03

    call $6e47                                    ; $1524: $cd $47 $6e

jr_000_1527:
    jp Jump_000_04aa                              ; $1527: $c3 $aa $04


Jump_000_152a:
    call Call_000_04bc                            ; $152a: $cd $bc $04
    call $6e5a                                    ; $152d: $cd $5a $6e
    jp Jump_000_04aa                              ; $1530: $c3 $aa $04


Jump_000_1533:
    call Call_000_04bc                            ; $1533: $cd $bc $04
    ld hl, $6f4c                                  ; $1536: $21 $4c $6f
    dec a                                         ; $1539: $3d
    call Call_000_041a                            ; $153a: $cd $1a $04
    ld a, l                                       ; $153d: $7d
    ld [$c1f4], a                                 ; $153e: $ea $f4 $c1
    ld a, h                                       ; $1541: $7c
    ld [$c1f5], a                                 ; $1542: $ea $f5 $c1
    jp Jump_000_04aa                              ; $1545: $c3 $aa $04


Call_000_1548:
    call Call_000_04bc                            ; $1548: $cd $bc $04
    ld hl, $c1f4                                  ; $154b: $21 $f4 $c1
    rst RST_08                                    ; $154e: $cf
    ld a, [hl+]                                   ; $154f: $2a
    ld [$c1f1], a                                 ; $1550: $ea $f1 $c1
    ld a, [hl+]                                   ; $1553: $2a
    ld [$c1f2], a                                 ; $1554: $ea $f2 $c1
    ld a, [hl+]                                   ; $1557: $2a
    ld [$c1f3], a                                 ; $1558: $ea $f3 $c1
    ld a, l                                       ; $155b: $7d
    ld [$c1f4], a                                 ; $155c: $ea $f4 $c1
    ld a, h                                       ; $155f: $7c
    ld [$c1f5], a                                 ; $1560: $ea $f5 $c1
    jp Jump_000_04aa                              ; $1563: $c3 $aa $04


Call_000_1566:
    call Call_000_04b7                            ; $1566: $cd $b7 $04
    call $792b                                    ; $1569: $cd $2b $79
    jp Jump_000_04aa                              ; $156c: $c3 $aa $04


Call_000_156f:
    call Call_000_04bc                            ; $156f: $cd $bc $04
    ld hl, $6fe5                                  ; $1572: $21 $e5 $6f
    ld de, $da00                                  ; $1575: $11 $00 $da
    ld bc, $006c                                  ; $1578: $01 $6c $00
    call Call_000_0442                            ; $157b: $cd $42 $04
    call Call_000_04aa                            ; $157e: $cd $aa $04
    ld a, [$c102]                                 ; $1581: $fa $02 $c1
    add a                                         ; $1584: $87
    ld [$da06], a                                 ; $1585: $ea $06 $da
    call Call_000_1514                            ; $1588: $cd $14 $15
    call Call_000_1dd5                            ; $158b: $cd $d5 $1d
    ret nz                                        ; $158e: $c0

    xor a                                         ; $158f: $af
    ld [$da08], a                                 ; $1590: $ea $08 $da
    ld [$da0c], a                                 ; $1593: $ea $0c $da
    ret                                           ; $1596: $c9


Call_000_1597:
    call Call_000_04bc                            ; $1597: $cd $bc $04
    ld hl, $7055                                  ; $159a: $21 $55 $70
    ld de, $da08                                  ; $159d: $11 $08 $da
    ld bc, $0010                                  ; $15a0: $01 $10 $00
    call Call_000_0442                            ; $15a3: $cd $42 $04
    jp Jump_000_04aa                              ; $15a6: $c3 $aa $04


Call_000_15a9:
    call Call_000_04bc                            ; $15a9: $cd $bc $04
    ld hl, $7065                                  ; $15ac: $21 $65 $70
    ld de, $da08                                  ; $15af: $11 $08 $da
    ld bc, $0008                                  ; $15b2: $01 $08 $00
    call Call_000_0442                            ; $15b5: $cd $42 $04
    jp Jump_000_04aa                              ; $15b8: $c3 $aa $04


Call_000_15bb:
    call Call_000_04bc                            ; $15bb: $cd $bc $04
    ld hl, $706d                                  ; $15be: $21 $6d $70
    ld a, [$c127]                                 ; $15c1: $fa $27 $c1
    or a                                          ; $15c4: $b7
    jr z, jr_000_15ca                             ; $15c5: $28 $03

    ld hl, $7075                                  ; $15c7: $21 $75 $70

jr_000_15ca:
    ld de, $da00                                  ; $15ca: $11 $00 $da
    ld bc, $0008                                  ; $15cd: $01 $08 $00
    call Call_000_0442                            ; $15d0: $cd $42 $04
    jp Jump_000_04aa                              ; $15d3: $c3 $aa $04


Call_000_15d6:
    call Call_000_04bc                            ; $15d6: $cd $bc $04
    ld hl, $707d                                  ; $15d9: $21 $7d $70
    ld a, [$c127]                                 ; $15dc: $fa $27 $c1
    or a                                          ; $15df: $b7
    jr z, jr_000_15e5                             ; $15e0: $28 $03

    ld hl, $7085                                  ; $15e2: $21 $85 $70

jr_000_15e5:
    ld de, $da00                                  ; $15e5: $11 $00 $da
    ld bc, $0008                                  ; $15e8: $01 $08 $00
    call Call_000_0442                            ; $15eb: $cd $42 $04
    jp Jump_000_04aa                              ; $15ee: $c3 $aa $04


Jump_000_15f1:
    call Call_000_04bc                            ; $15f1: $cd $bc $04
    ld hl, $708d                                  ; $15f4: $21 $8d $70
    ld de, $da08                                  ; $15f7: $11 $08 $da
    ld bc, $006c                                  ; $15fa: $01 $6c $00
    call Call_000_0442                            ; $15fd: $cd $42 $04
    jp Jump_000_04aa                              ; $1600: $c3 $aa $04


Call_000_1603:
    call Call_000_04bc                            ; $1603: $cd $bc $04
    ld a, [$c102]                                 ; $1606: $fa $02 $c1
    cp $0a                                        ; $1609: $fe $0a
    jr nz, jr_000_162e                            ; $160b: $20 $21

    ld hl, $7eeb                                  ; $160d: $21 $eb $7e
    ld a, [$c127]                                 ; $1610: $fa $27 $c1
    or a                                          ; $1613: $b7
    jr z, jr_000_1619                             ; $1614: $28 $03

    ld hl, $7ef3                                  ; $1616: $21 $f3 $7e

jr_000_1619:
    ld de, $da00                                  ; $1619: $11 $00 $da
    ld bc, $0008                                  ; $161c: $01 $08 $00
    call Call_000_0442                            ; $161f: $cd $42 $04
    ld hl, $7ed3                                  ; $1622: $21 $d3 $7e
    ld bc, $0018                                  ; $1625: $01 $18 $00
    call Call_000_0442                            ; $1628: $cd $42 $04
    jp Jump_000_04aa                              ; $162b: $c3 $aa $04


jr_000_162e:
    ld hl, $7efb                                  ; $162e: $21 $fb $7e
    ld bc, $003c                                  ; $1631: $01 $3c $00
    ld a, [$c127]                                 ; $1634: $fa $27 $c1
    or a                                          ; $1637: $b7
    jr z, jr_000_1640                             ; $1638: $28 $06

    ld hl, $7f5f                                  ; $163a: $21 $5f $7f
    ld bc, $0040                                  ; $163d: $01 $40 $00

jr_000_1640:
    ld de, $da00                                  ; $1640: $11 $00 $da
    call Call_000_0442                            ; $1643: $cd $42 $04
    ld a, [$c127]                                 ; $1646: $fa $27 $c1
    or a                                          ; $1649: $b7
    jr nz, jr_000_1658                            ; $164a: $20 $0c

    ld hl, $7f37                                  ; $164c: $21 $37 $7f
    ld bc, $0028                                  ; $164f: $01 $28 $00
    call Call_000_0442                            ; $1652: $cd $42 $04
    jp Jump_000_04aa                              ; $1655: $c3 $aa $04


jr_000_1658:
    ld hl, $7f9f                                  ; $1658: $21 $9f $7f
    ld bc, $0030                                  ; $165b: $01 $30 $00
    call Call_000_0442                            ; $165e: $cd $42 $04
    jp Jump_000_04aa                              ; $1661: $c3 $aa $04


Call_000_1664:
    call Call_000_04bc                            ; $1664: $cd $bc $04
    sub $02                                       ; $1667: $d6 $02
    push af                                       ; $1669: $f5
    add a                                         ; $166a: $87
    add a                                         ; $166b: $87
    add a                                         ; $166c: $87
    ld hl, $6af5                                  ; $166d: $21 $f5 $6a
    rst RST_28                                    ; $1670: $ef
    ld de, $c5c0                                  ; $1671: $11 $c0 $c5
    ld bc, $0008                                  ; $1674: $01 $08 $00
    call Call_000_0442                            ; $1677: $cd $42 $04
    pop af                                        ; $167a: $f1
    ld b, a                                       ; $167b: $47
    add a                                         ; $167c: $87
    add b                                         ; $167d: $80
    ld hl, $6bc5                                  ; $167e: $21 $c5 $6b
    rst RST_28                                    ; $1681: $ef
    ld b, [hl]                                    ; $1682: $46
    inc hl                                        ; $1683: $23
    ld c, [hl]                                    ; $1684: $4e
    inc hl                                        ; $1685: $23
    push de                                       ; $1686: $d5
    push hl                                       ; $1687: $e5
    call Call_000_16a9                            ; $1688: $cd $a9 $16
    ld e, [hl]                                    ; $168b: $5e
    ld d, $00                                     ; $168c: $16 $00
    call Call_000_0382                            ; $168e: $cd $82 $03
    pop hl                                        ; $1691: $e1
    pop de                                        ; $1692: $d1
    ld a, b                                       ; $1693: $78
    ld [de], a                                    ; $1694: $12
    inc de                                        ; $1695: $13
    ld a, c                                       ; $1696: $79
    ld [de], a                                    ; $1697: $12
    inc de                                        ; $1698: $13
    ld c, [hl]                                    ; $1699: $4e
    push de                                       ; $169a: $d5
    call Call_000_16a9                            ; $169b: $cd $a9 $16
    inc hl                                        ; $169e: $23
    ld e, [hl]                                    ; $169f: $5e
    call Call_000_0374                            ; $16a0: $cd $74 $03
    pop de                                        ; $16a3: $d1
    ld a, c                                       ; $16a4: $79
    ld [de], a                                    ; $16a5: $12
    jp Jump_000_04aa                              ; $16a6: $c3 $aa $04


Call_000_16a9:
    ld hl, $6c13                                  ; $16a9: $21 $13 $6c
    ld a, [$c1f0]                                 ; $16ac: $fa $f0 $c1
    add a                                         ; $16af: $87
    rst RST_28                                    ; $16b0: $ef
    ret                                           ; $16b1: $c9


Call_000_16b2:
    ld c, $00                                     ; $16b2: $0e $00
    ld de, $c800                                  ; $16b4: $11 $00 $c8

jr_000_16b7:
    ld a, c                                       ; $16b7: $79
    ld [$c1f0], a                                 ; $16b8: $ea $f0 $c1
    call $706b                                    ; $16bb: $cd $6b $70
    sub $02                                       ; $16be: $d6 $02
    add a                                         ; $16c0: $87
    call Call_000_04bc                            ; $16c1: $cd $bc $04
    ld hl, $6c13                                  ; $16c4: $21 $13 $6c
    rst RST_28                                    ; $16c7: $ef
    ld a, [hl+]                                   ; $16c8: $2a
    call Call_000_16db                            ; $16c9: $cd $db $16
    ld a, [hl]                                    ; $16cc: $7e
    call Call_000_16db                            ; $16cd: $cd $db $16
    call Call_000_04aa                            ; $16d0: $cd $aa $04
    inc c                                         ; $16d3: $0c
    ld a, [$c16a]                                 ; $16d4: $fa $6a $c1
    cp c                                          ; $16d7: $b9
    jr nz, jr_000_16b7                            ; $16d8: $20 $dd

    ret                                           ; $16da: $c9


Call_000_16db:
    or a                                          ; $16db: $b7
    jr z, jr_000_16e4                             ; $16dc: $28 $06

    call Call_000_0456                            ; $16de: $cd $56 $04
    call Call_000_03b7                            ; $16e1: $cd $b7 $03

jr_000_16e4:
    ld [de], a                                    ; $16e4: $12
    inc de                                        ; $16e5: $13
    ret                                           ; $16e6: $c9


Call_000_16e7:
    call Call_000_04bc                            ; $16e7: $cd $bc $04
    ld de, $c800                                  ; $16ea: $11 $00 $c8
    ld hl, $7b32                                  ; $16ed: $21 $32 $7b

jr_000_16f0:
    ld a, [hl+]                                   ; $16f0: $2a
    ld [de], a                                    ; $16f1: $12
    inc de                                        ; $16f2: $13
    or a                                          ; $16f3: $b7
    jr nz, jr_000_16f0                            ; $16f4: $20 $fa

    jp Jump_000_04aa                              ; $16f6: $c3 $aa $04


Call_000_16f9:
jr_000_16f9:
    ld a, [hl+]                                   ; $16f9: $2a
    dec a                                         ; $16fa: $3d
    jr z, jr_000_1704                             ; $16fb: $28 $07

    dec a                                         ; $16fd: $3d
    jr z, jr_000_170d                             ; $16fe: $28 $0d

    dec a                                         ; $1700: $3d
    jr z, jr_000_1727                             ; $1701: $28 $24

    ret                                           ; $1703: $c9


jr_000_1704:
    ld a, [hl+]                                   ; $1704: $2a
    ld e, a                                       ; $1705: $5f
    ld d, [hl]                                    ; $1706: $56
    inc hl                                        ; $1707: $23
    call Call_000_174c                            ; $1708: $cd $4c $17
    jr jr_000_16f9                                ; $170b: $18 $ec

jr_000_170d:
    push hl                                       ; $170d: $e5
    rst RST_08                                    ; $170e: $cf
    call Call_000_1838                            ; $170f: $cd $38 $18
    ld bc, $7800                                  ; $1712: $01 $00 $78
    add hl, bc                                    ; $1715: $09
    ld d, h                                       ; $1716: $54
    ld e, l                                       ; $1717: $5d
    pop hl                                        ; $1718: $e1
    inc hl                                        ; $1719: $23
    inc hl                                        ; $171a: $23
    ld c, [hl]                                    ; $171b: $4e
    inc hl                                        ; $171c: $23
    ld b, $00                                     ; $171d: $06 $00
    call Call_000_175e                            ; $171f: $cd $5e $17
    call Call_000_178a                            ; $1722: $cd $8a $17
    jr jr_000_16f9                                ; $1725: $18 $d2

jr_000_1727:
    push hl                                       ; $1727: $e5
    rst RST_08                                    ; $1728: $cf
    ld d, h                                       ; $1729: $54
    ld e, l                                       ; $172a: $5d
    pop hl                                        ; $172b: $e1
    push hl                                       ; $172c: $e5
    push de                                       ; $172d: $d5
    inc hl                                        ; $172e: $23
    inc hl                                        ; $172f: $23
    push hl                                       ; $1730: $e5
    rst RST_08                                    ; $1731: $cf
    call Call_000_1838                            ; $1732: $cd $38 $18
    ld bc, $7800                                  ; $1735: $01 $00 $78
    add hl, bc                                    ; $1738: $09
    ld d, h                                       ; $1739: $54
    ld e, l                                       ; $173a: $5d
    pop hl                                        ; $173b: $e1
    inc hl                                        ; $173c: $23
    inc hl                                        ; $173d: $23
    ld c, [hl]                                    ; $173e: $4e
    xor a                                         ; $173f: $af
    ld b, a                                       ; $1740: $47
    pop hl                                        ; $1741: $e1
    call Call_000_1795                            ; $1742: $cd $95 $17
    pop hl                                        ; $1745: $e1
    ld bc, $0005                                  ; $1746: $01 $05 $00
    add hl, bc                                    ; $1749: $09
    jr jr_000_16f9                                ; $174a: $18 $ad

Call_000_174c:
    push hl                                       ; $174c: $e5
    rst RST_08                                    ; $174d: $cf
    call Call_000_1838                            ; $174e: $cd $38 $18
    ld bc, $7800                                  ; $1751: $01 $00 $78
    add hl, bc                                    ; $1754: $09
    push hl                                       ; $1755: $e5
    call Call_000_1894                            ; $1756: $cd $94 $18
    pop de                                        ; $1759: $d1
    pop hl                                        ; $175a: $e1
    inc hl                                        ; $175b: $23
    inc hl                                        ; $175c: $23
    ret                                           ; $175d: $c9


Call_000_175e:
    inc hl                                        ; $175e: $23
    ld a, [hl-]                                   ; $175f: $3a
    and $f0                                       ; $1760: $e6 $f0
    jr z, jr_000_1787                             ; $1762: $28 $23

    swap a                                        ; $1764: $cb $37
    push hl                                       ; $1766: $e5
    push de                                       ; $1767: $d5
    push af                                       ; $1768: $f5
    ld e, [hl]                                    ; $1769: $5e
    inc hl                                        ; $176a: $23
    ld a, [hl]                                    ; $176b: $7e
    and $01                                       ; $176c: $e6 $01
    ld h, a                                       ; $176e: $67
    ld l, e                                       ; $176f: $6b
    call Call_000_1838                            ; $1770: $cd $38 $18
    ld de, $7800                                  ; $1773: $11 $00 $78
    add hl, de                                    ; $1776: $19
    ld e, l                                       ; $1777: $5d
    ld d, h                                       ; $1778: $54
    pop af                                        ; $1779: $f1
    pop hl                                        ; $177a: $e1
    push de                                       ; $177b: $d5
    push bc                                       ; $177c: $c5
    push af                                       ; $177d: $f5
    srl a                                         ; $177e: $cb $3f
    call Call_000_1795                            ; $1780: $cd $95 $17
    pop af                                        ; $1783: $f1
    pop bc                                        ; $1784: $c1
    pop de                                        ; $1785: $d1
    pop hl                                        ; $1786: $e1

jr_000_1787:
    inc hl                                        ; $1787: $23
    inc hl                                        ; $1788: $23
    ret                                           ; $1789: $c9


Call_000_178a:
    bit 0, a                                      ; $178a: $cb $47
    ret z                                         ; $178c: $c8

    push hl                                       ; $178d: $e5
    ld a, [hl]                                    ; $178e: $7e
    call Call_000_183d                            ; $178f: $cd $3d $18
    pop hl                                        ; $1792: $e1
    inc hl                                        ; $1793: $23
    ret                                           ; $1794: $c9


Call_000_1795:
    dec a                                         ; $1795: $3d
    jr z, jr_000_17a4                             ; $1796: $28 $0c

    dec a                                         ; $1798: $3d
    jr z, jr_000_17c6                             ; $1799: $28 $2b

    dec a                                         ; $179b: $3d
    jr z, jr_000_17d5                             ; $179c: $28 $37

    call Call_000_182e                            ; $179e: $cd $2e $18
    jp Jump_000_0442                              ; $17a1: $c3 $42 $04


jr_000_17a4:
    push bc                                       ; $17a4: $c5
    ld b, $0e                                     ; $17a5: $06 $0e

jr_000_17a7:
    call Call_000_17f7                            ; $17a7: $cd $f7 $17
    call Call_000_17f7                            ; $17aa: $cd $f7 $17
    ld a, b                                       ; $17ad: $78
    ld b, $04                                     ; $17ae: $06 $04
    sub b                                         ; $17b0: $90
    ld b, a                                       ; $17b1: $47
    jr nc, jr_000_17a7                            ; $17b2: $30 $f3

    push hl                                       ; $17b4: $e5
    ld bc, $0008                                  ; $17b5: $01 $08 $00
    ld h, d                                       ; $17b8: $62
    ld l, e                                       ; $17b9: $6b
    add hl, bc                                    ; $17ba: $09
    ld d, h                                       ; $17bb: $54
    ld e, l                                       ; $17bc: $5d
    pop hl                                        ; $17bd: $e1
    add hl, bc                                    ; $17be: $09
    pop bc                                        ; $17bf: $c1
    dec bc                                        ; $17c0: $0b
    ld a, b                                       ; $17c1: $78
    or c                                          ; $17c2: $b1
    jr nz, jr_000_17a4                            ; $17c3: $20 $df

    ret                                           ; $17c5: $c9


jr_000_17c6:
    call Call_000_182e                            ; $17c6: $cd $2e $18

jr_000_17c9:
    ld a, [hl+]                                   ; $17c9: $2a
    call Call_000_1820                            ; $17ca: $cd $20 $18
    ld [de], a                                    ; $17cd: $12
    inc de                                        ; $17ce: $13
    dec bc                                        ; $17cf: $0b
    ld a, b                                       ; $17d0: $78
    or c                                          ; $17d1: $b1
    jr nz, jr_000_17c9                            ; $17d2: $20 $f5

    ret                                           ; $17d4: $c9


jr_000_17d5:
    push bc                                       ; $17d5: $c5
    ld b, $0e                                     ; $17d6: $06 $0e

jr_000_17d8:
    call Call_000_1808                            ; $17d8: $cd $08 $18
    call Call_000_1808                            ; $17db: $cd $08 $18
    ld a, b                                       ; $17de: $78
    ld b, $04                                     ; $17df: $06 $04
    sub b                                         ; $17e1: $90
    ld b, a                                       ; $17e2: $47
    jr nc, jr_000_17d8                            ; $17e3: $30 $f3

    push hl                                       ; $17e5: $e5
    ld bc, $0008                                  ; $17e6: $01 $08 $00
    ld h, d                                       ; $17e9: $62
    ld l, e                                       ; $17ea: $6b
    add hl, bc                                    ; $17eb: $09
    ld d, h                                       ; $17ec: $54
    ld e, l                                       ; $17ed: $5d
    pop hl                                        ; $17ee: $e1
    add hl, bc                                    ; $17ef: $09
    pop bc                                        ; $17f0: $c1
    dec bc                                        ; $17f1: $0b
    ld a, b                                       ; $17f2: $78
    or c                                          ; $17f3: $b1
    jr nz, jr_000_17d5                            ; $17f4: $20 $df

    ret                                           ; $17f6: $c9


Call_000_17f7:
    push hl                                       ; $17f7: $e5
    ld c, [hl]                                    ; $17f8: $4e
    push bc                                       ; $17f9: $c5
    ld a, b                                       ; $17fa: $78
    rst RST_28                                    ; $17fb: $ef
    ld b, [hl]                                    ; $17fc: $46
    ld h, d                                       ; $17fd: $62
    ld l, e                                       ; $17fe: $6b
    ld [hl], b                                    ; $17ff: $70
    pop bc                                        ; $1800: $c1

Jump_000_1801:
    ld a, b                                       ; $1801: $78
    rst RST_28                                    ; $1802: $ef
    ld [hl], c                                    ; $1803: $71
    pop hl                                        ; $1804: $e1
    inc hl                                        ; $1805: $23
    inc de                                        ; $1806: $13
    ret                                           ; $1807: $c9


Call_000_1808:
    push hl                                       ; $1808: $e5
    ld c, [hl]                                    ; $1809: $4e
    push bc                                       ; $180a: $c5
    ld a, b                                       ; $180b: $78
    rst RST_28                                    ; $180c: $ef
    ld a, [hl]                                    ; $180d: $7e
    call Call_000_1820                            ; $180e: $cd $20 $18
    ld h, d                                       ; $1811: $62
    ld l, e                                       ; $1812: $6b
    ld [hl], a                                    ; $1813: $77
    pop bc                                        ; $1814: $c1
    ld a, b                                       ; $1815: $78
    rst RST_28                                    ; $1816: $ef
    ld a, c                                       ; $1817: $79
    call Call_000_1820                            ; $1818: $cd $20 $18
    ld [hl], a                                    ; $181b: $77
    pop hl                                        ; $181c: $e1
    inc hl                                        ; $181d: $23
    inc de                                        ; $181e: $13
    ret                                           ; $181f: $c9


Call_000_1820:
    push bc                                       ; $1820: $c5
    ld b, $08                                     ; $1821: $06 $08
    ld c, $00                                     ; $1823: $0e $00

jr_000_1825:
    rla                                           ; $1825: $17
    rr c                                          ; $1826: $cb $19
    dec b                                         ; $1828: $05
    jr nz, jr_000_1825                            ; $1829: $20 $fa

    ld a, c                                       ; $182b: $79
    pop bc                                        ; $182c: $c1
    ret                                           ; $182d: $c9


Call_000_182e:
    push hl                                       ; $182e: $e5
    ld l, c                                       ; $182f: $69
    ld h, b                                       ; $1830: $60
    call Call_000_1838                            ; $1831: $cd $38 $18
    ld c, l                                       ; $1834: $4d
    ld b, h                                       ; $1835: $44
    pop hl                                        ; $1836: $e1
    ret                                           ; $1837: $c9


Call_000_1838:
    add hl, hl                                    ; $1838: $29
    add hl, hl                                    ; $1839: $29
    add hl, hl                                    ; $183a: $29
    add hl, hl                                    ; $183b: $29

Call_000_183c:
Jump_000_183c:
    ret                                           ; $183c: $c9


Call_000_183d:
    call Call_000_182e                            ; $183d: $cd $2e $18
    srl b                                         ; $1840: $cb $38
    rr c                                          ; $1842: $cb $19
    ld h, d                                       ; $1844: $62
    ld l, e                                       ; $1845: $6b
    ld e, a                                       ; $1846: $5f

jr_000_1847:
    ld d, $08                                     ; $1847: $16 $08

jr_000_1849:
    push de                                       ; $1849: $d5
    ld a, [hl+]                                   ; $184a: $2a
    and $01                                       ; $184b: $e6 $01
    ld d, a                                       ; $184d: $57
    ld a, [hl]                                    ; $184e: $7e
    and $01                                       ; $184f: $e6 $01
    sla a                                         ; $1851: $cb $27
    or d                                          ; $1853: $b2
    or a                                          ; $1854: $b7
    jr z, jr_000_1870                             ; $1855: $28 $19

    dec a                                         ; $1857: $3d
    jr z, jr_000_187b                             ; $1858: $28 $21

    dec a                                         ; $185a: $3d
    jr z, jr_000_186a                             ; $185b: $28 $0d

jr_000_185d:
    dec hl                                        ; $185d: $2b
    srl e                                         ; $185e: $cb $3b
    rr [hl]                                       ; $1860: $cb $1e
    inc hl                                        ; $1862: $23
    srl e                                         ; $1863: $cb $3b
    rr [hl]                                       ; $1865: $cb $1e
    dec hl                                        ; $1867: $2b
    jr jr_000_1881                                ; $1868: $18 $17

jr_000_186a:
    srl e                                         ; $186a: $cb $3b
    srl e                                         ; $186c: $cb $3b
    jr jr_000_185d                                ; $186e: $18 $ed

jr_000_1870:
    sla e                                         ; $1870: $cb $23
    rr [hl]                                       ; $1872: $cb $1e
    dec hl                                        ; $1874: $2b
    sla e                                         ; $1875: $cb $23
    rr [hl]                                       ; $1877: $cb $1e
    jr jr_000_1881                                ; $1879: $18 $06

jr_000_187b:
    sla e                                         ; $187b: $cb $23
    sla e                                         ; $187d: $cb $23
    jr jr_000_1870                                ; $187f: $18 $ef

jr_000_1881:
    pop de                                        ; $1881: $d1
    dec d                                         ; $1882: $15
    jr nz, jr_000_1849                            ; $1883: $20 $c4

    inc hl                                        ; $1885: $23
    inc hl                                        ; $1886: $23
    dec bc                                        ; $1887: $0b
    ld a, b                                       ; $1888: $78
    or c                                          ; $1889: $b1
    jr nz, jr_000_1847                            ; $188a: $20 $bb

    ret                                           ; $188c: $c9


jr_000_188d:
    pop hl                                        ; $188d: $e1

Call_000_188e:
    ld a, [de]                                    ; $188e: $1a
    ld l, a                                       ; $188f: $6f
    inc de                                        ; $1890: $13
    ld a, [de]                                    ; $1891: $1a
    ld h, a                                       ; $1892: $67
    inc de                                        ; $1893: $13

Call_000_1894:
    push hl                                       ; $1894: $e5

jr_000_1895:
    ld a, [de]                                    ; $1895: $1a
    or a                                          ; $1896: $b7
    jr z, jr_000_18b4                             ; $1897: $28 $1b

    inc de                                        ; $1899: $13
    ld b, a                                       ; $189a: $47
    and $7f                                       ; $189b: $e6 $7f
    cp b                                          ; $189d: $b8
    jr z, jr_000_18ac                             ; $189e: $28 $0c

    or a                                          ; $18a0: $b7
    jr z, jr_000_18cd                             ; $18a1: $28 $2a

    ld b, a                                       ; $18a3: $47

jr_000_18a4:
    ld a, [de]                                    ; $18a4: $1a
    inc de                                        ; $18a5: $13
    ld [hl+], a                                   ; $18a6: $22
    dec b                                         ; $18a7: $05
    jr nz, jr_000_18a4                            ; $18a8: $20 $fa

    jr jr_000_1895                                ; $18aa: $18 $e9

jr_000_18ac:
    ld a, [de]                                    ; $18ac: $1a
    inc de                                        ; $18ad: $13

jr_000_18ae:
    ld [hl+], a                                   ; $18ae: $22
    dec b                                         ; $18af: $05
    jr nz, jr_000_18ae                            ; $18b0: $20 $fc

    jr jr_000_1895                                ; $18b2: $18 $e1

jr_000_18b4:
    ld b, h                                       ; $18b4: $44
    ld a, l                                       ; $18b5: $7d
    pop hl                                        ; $18b6: $e1
    sub l                                         ; $18b7: $95
    ld c, a                                       ; $18b8: $4f
    ld a, b                                       ; $18b9: $78
    sbc h                                         ; $18ba: $9c
    ld b, a                                       ; $18bb: $47
    srl b                                         ; $18bc: $cb $38
    rr c                                          ; $18be: $cb $19
    srl b                                         ; $18c0: $cb $38
    rr c                                          ; $18c2: $cb $19
    srl b                                         ; $18c4: $cb $38
    rr c                                          ; $18c6: $cb $19
    srl b                                         ; $18c8: $cb $38
    rr c                                          ; $18ca: $cb $19
    ret                                           ; $18cc: $c9


jr_000_18cd:
    ld a, [de]                                    ; $18cd: $1a
    inc de                                        ; $18ce: $13
    or a                                          ; $18cf: $b7
    jr z, jr_000_188d                             ; $18d0: $28 $bb

    ld b, a                                       ; $18d2: $47
    and $7f                                       ; $18d3: $e6 $7f
    cp b                                          ; $18d5: $b8
    jr z, jr_000_1909                             ; $18d6: $28 $31

    ld c, a                                       ; $18d8: $4f
    ld a, [de]                                    ; $18d9: $1a
    inc de                                        ; $18da: $13
    ld b, a                                       ; $18db: $47

jr_000_18dc:
    bit 0, c                                      ; $18dc: $cb $41
    jp z, Jump_000_18e3                           ; $18de: $ca $e3 $18

    ld a, [de]                                    ; $18e1: $1a
    ld [hl+], a                                   ; $18e2: $22

Jump_000_18e3:
    ld a, c                                       ; $18e3: $79
    cp $03                                        ; $18e4: $fe $03
    jr z, jr_000_18f7                             ; $18e6: $28 $0f

    cp $06                                        ; $18e8: $fe $06
    jr z, jr_000_18fa                             ; $18ea: $28 $0e

Call_000_18ec:
    bit 2, c                                      ; $18ec: $cb $51
    jr nz, jr_000_18f3                            ; $18ee: $20 $03

    xor a                                         ; $18f0: $af
    jr jr_000_18fc                                ; $18f1: $18 $09

jr_000_18f3:
    ld a, $ff                                     ; $18f3: $3e $ff
    jr jr_000_18fc                                ; $18f5: $18 $05

jr_000_18f7:
    ld a, [de]                                    ; $18f7: $1a
    jr jr_000_18fc                                ; $18f8: $18 $02

jr_000_18fa:
    ld a, [de]                                    ; $18fa: $1a
    cpl                                           ; $18fb: $2f

jr_000_18fc:
    ld [hl+], a                                   ; $18fc: $22
    bit 0, c                                      ; $18fd: $cb $41
    jr nz, jr_000_1903                            ; $18ff: $20 $02

    ld a, [de]                                    ; $1901: $1a
    ld [hl+], a                                   ; $1902: $22

jr_000_1903:
    inc de                                        ; $1903: $13
    dec b                                         ; $1904: $05
    jr nz, jr_000_18dc                            ; $1905: $20 $d5

    jr jr_000_1895                                ; $1907: $18 $8c

jr_000_1909:
    ld a, [de]                                    ; $1909: $1a
    inc de                                        ; $190a: $13

jr_000_190b:
    ld [hl+], a                                   ; $190b: $22
    inc a                                         ; $190c: $3c
    dec b                                         ; $190d: $05
    jr nz, jr_000_190b                            ; $190e: $20 $fb

    jr jr_000_1895                                ; $1910: $18 $83

Call_000_1912:
    ld e, [hl]                                    ; $1912: $5e
    inc hl                                        ; $1913: $23
    ld d, [hl]                                    ; $1914: $56
    inc hl                                        ; $1915: $23
    ld b, [hl]                                    ; $1916: $46
    inc hl                                        ; $1917: $23

jr_000_1918:
    push de                                       ; $1918: $d5
    push bc                                       ; $1919: $c5
    ld bc, $000d                                  ; $191a: $01 $0d $00
    call Call_000_0442                            ; $191d: $cd $42 $04
    pop bc                                        ; $1920: $c1
    pop de                                        ; $1921: $d1
    ld a, $20                                     ; $1922: $3e $20
    rst RST_30                                    ; $1924: $f7
    dec b                                         ; $1925: $05
    jr nz, jr_000_1918                            ; $1926: $20 $f0

    ret                                           ; $1928: $c9


Call_000_1929:
Jump_000_1929:
    call Call_000_04b7                            ; $1929: $cd $b7 $04
    call Call_000_1932                            ; $192c: $cd $32 $19
    jp Jump_000_04aa                              ; $192f: $c3 $aa $04


Call_000_1932:
    ld a, [$c236]                                 ; $1932: $fa $36 $c2
    ld hl, $d300                                  ; $1935: $21 $00 $d3
    rst RST_28                                    ; $1938: $ef
    ld a, [$c035]                                 ; $1939: $fa $35 $c0
    ld [hl], a                                    ; $193c: $77
    ld e, a                                       ; $193d: $5f
    ld a, [$c236]                                 ; $193e: $fa $36 $c2
    ld hl, $4a12                                  ; $1941: $21 $12 $4a
    rst RST_28                                    ; $1944: $ef
    ld a, [$c035]                                 ; $1945: $fa $35 $c0
    add [hl]                                      ; $1948: $86
    ld [$c035], a                                 ; $1949: $ea $35 $c0
    ld c, [hl]                                    ; $194c: $4e
    ld b, $00                                     ; $194d: $06 $00
    ld l, e                                       ; $194f: $6b
    ld h, $00                                     ; $1950: $26 $00
    add hl, hl                                    ; $1952: $29
    add hl, hl                                    ; $1953: $29
    add hl, hl                                    ; $1954: $29
    add hl, hl                                    ; $1955: $29
    ld de, $8000                                  ; $1956: $11 $00 $80
    add hl, de                                    ; $1959: $19
    ld e, l                                       ; $195a: $5d
    ld d, h                                       ; $195b: $54
    ld a, [$c236]                                 ; $195c: $fa $36 $c2
    ld hl, $4a2a                                  ; $195f: $21 $2a $4a
    call Call_000_041a                            ; $1962: $cd $1a $04
    xor a                                         ; $1965: $af
    call Call_000_1795                            ; $1966: $cd $95 $17
    ret                                           ; $1969: $c9


Call_000_196a:
    call Call_000_04cb                            ; $196a: $cd $cb $04
    ld hl, $4000                                  ; $196d: $21 $00 $40
    call Call_000_16f9                            ; $1970: $cd $f9 $16
    jp Jump_000_04aa                              ; $1973: $c3 $aa $04


    call Call_000_04cb                            ; $1976: $cd $cb $04
    ld hl, $400b                                  ; $1979: $21 $0b $40
    call Call_000_16f9                            ; $197c: $cd $f9 $16
    jp Jump_000_04aa                              ; $197f: $c3 $aa $04


    call Call_000_04c6                            ; $1982: $cd $c6 $04
    ld hl, $4000                                  ; $1985: $21 $00 $40
    call Call_000_16f9                            ; $1988: $cd $f9 $16
    jp Jump_000_04aa                              ; $198b: $c3 $aa $04


    call Call_000_04c6                            ; $198e: $cd $c6 $04
    ld hl, $4006                                  ; $1991: $21 $06 $40
    call Call_000_16f9                            ; $1994: $cd $f9 $16
    jp Jump_000_04aa                              ; $1997: $c3 $aa $04


    call Call_000_04c6                            ; $199a: $cd $c6 $04
    ld hl, $400c                                  ; $199d: $21 $0c $40
    call Call_000_16f9                            ; $19a0: $cd $f9 $16
    jp Jump_000_04aa                              ; $19a3: $c3 $aa $04


    call Call_000_04c6                            ; $19a6: $cd $c6 $04
    ld hl, $4012                                  ; $19a9: $21 $12 $40
    call Call_000_16f9                            ; $19ac: $cd $f9 $16
    jp Jump_000_04aa                              ; $19af: $c3 $aa $04


Call_000_19b2:
    call Call_000_04c6                            ; $19b2: $cd $c6 $04
    ld hl, $5cc0                                  ; $19b5: $21 $c0 $5c
    call Call_000_041a                            ; $19b8: $cd $1a $04
    call Call_000_16f9                            ; $19bb: $cd $f9 $16
    jp Jump_000_04aa                              ; $19be: $c3 $aa $04


Call_000_19c1:
    call Call_000_04cb                            ; $19c1: $cd $cb $04
    ld hl, $400b                                  ; $19c4: $21 $0b $40
    call Call_000_16f9                            ; $19c7: $cd $f9 $16
    ld hl, $4ab5                                  ; $19ca: $21 $b5 $4a
    call Call_000_16f9                            ; $19cd: $cd $f9 $16
    call Call_000_04c6                            ; $19d0: $cd $c6 $04
    ld hl, $4018                                  ; $19d3: $21 $18 $40
    call Call_000_16f9                            ; $19d6: $cd $f9 $16
    ld a, [$c127]                                 ; $19d9: $fa $27 $c1
    or a                                          ; $19dc: $b7
    ld hl, $4038                                  ; $19dd: $21 $38 $40
    jr z, jr_000_19e5                             ; $19e0: $28 $03

    ld hl, $403e                                  ; $19e2: $21 $3e $40

jr_000_19e5:
    call Call_000_16f9                            ; $19e5: $cd $f9 $16
    ld a, [$c101]                                 ; $19e8: $fa $01 $c1
    ld hl, $4054                                  ; $19eb: $21 $54 $40
    call Call_000_041e_WordTableLookupToDE                            ; $19ee: $cd $1e $04
    ld hl, $8800                                  ; $19f1: $21 $00 $88
    call Call_000_1894                            ; $19f4: $cd $94 $18
    jp Jump_000_04aa                              ; $19f7: $c3 $aa $04


Jump_000_19fa:
    call Call_000_04c6                            ; $19fa: $cd $c6 $04
    call Call_000_16f9                            ; $19fd: $cd $f9 $16
    jp Jump_000_04aa                              ; $1a00: $c3 $aa $04


Call_000_1a03:
    ld a, $16                                     ; $1a03: $3e $16
    ld [$c236], a                                 ; $1a05: $ea $36 $c2
    ld a, $54                                     ; $1a08: $3e $54
    ld [$c035], a                                 ; $1a0a: $ea $35 $c0
    call Call_000_1929                            ; $1a0d: $cd $29 $19
    call Call_000_04b7                            ; $1a10: $cd $b7 $04
    ld hl, $4055                                  ; $1a13: $21 $55 $40
    call Call_000_16f9                            ; $1a16: $cd $f9 $16
    call Call_000_04c6                            ; $1a19: $cd $c6 $04
    ld de, $7e4e                                  ; $1a1c: $11 $4e $7e
    call Call_000_188e                            ; $1a1f: $cd $8e $18
    ld de, $7e8b                                  ; $1a22: $11 $8b $7e
    call Call_000_188e                            ; $1a25: $cd $8e $18
    ld hl, $404a                                  ; $1a28: $21 $4a $40
    call Call_000_16f9                            ; $1a2b: $cd $f9 $16
    jp Jump_000_04aa                              ; $1a2e: $c3 $aa $04


Call_000_1a31:
    call Call_000_04c6                            ; $1a31: $cd $c6 $04
    ld hl, $6f98                                  ; $1a34: $21 $98 $6f
    call Call_000_16f9                            ; $1a37: $cd $f9 $16
    ld de, $7cce                                  ; $1a3a: $11 $ce $7c
    call Call_000_188e                            ; $1a3d: $cd $8e $18
    call Call_000_04cb                            ; $1a40: $cd $cb $04
    ld hl, $4aae                                  ; $1a43: $21 $ae $4a
    call Call_000_16f9                            ; $1a46: $cd $f9 $16
    call Call_000_04bc                            ; $1a49: $cd $bc $04
    call $6c47                                    ; $1a4c: $cd $47 $6c
    jp Jump_000_04aa                              ; $1a4f: $c3 $aa $04


Call_000_1a52:
    call Call_000_04c6                            ; $1a52: $cd $c6 $04
    ld hl, $6f9e                                  ; $1a55: $21 $9e $6f
    call Call_000_16f9                            ; $1a58: $cd $f9 $16
    ld de, $7cff                                  ; $1a5b: $11 $ff $7c
    call Call_000_188e                            ; $1a5e: $cd $8e $18
    call Call_000_04bc                            ; $1a61: $cd $bc $04
    call $6c4e                                    ; $1a64: $cd $4e $6c
    jp Jump_000_04aa                              ; $1a67: $c3 $aa $04


Call_000_1a6a:
    call Call_000_04c6                            ; $1a6a: $cd $c6 $04
    ld hl, $6fa4                                  ; $1a6d: $21 $a4 $6f
    call Call_000_16f9                            ; $1a70: $cd $f9 $16
    ld de, $7d43                                  ; $1a73: $11 $43 $7d
    call Call_000_188e                            ; $1a76: $cd $8e $18
    call Call_000_04bc                            ; $1a79: $cd $bc $04
    call $6c55                                    ; $1a7c: $cd $55 $6c
    jp Jump_000_04aa                              ; $1a7f: $c3 $aa $04


Call_000_1a82:
    call Call_000_04c6                            ; $1a82: $cd $c6 $04
    ld hl, $6faa                                  ; $1a85: $21 $aa $6f
    call Call_000_16f9                            ; $1a88: $cd $f9 $16
    ld de, $7da0                                  ; $1a8b: $11 $a0 $7d
    call Call_000_188e                            ; $1a8e: $cd $8e $18
    call Call_000_04bc                            ; $1a91: $cd $bc $04
    call $6c5c                                    ; $1a94: $cd $5c $6c
    jp Jump_000_04aa                              ; $1a97: $c3 $aa $04


Call_000_1a9a:
    call Call_000_04c6                            ; $1a9a: $cd $c6 $04
    ld hl, $6dd7                                  ; $1a9d: $21 $d7 $6d
    call Call_000_16f9                            ; $1aa0: $cd $f9 $16
    ld hl, $4018                                  ; $1aa3: $21 $18 $40
    call Call_000_16f9                            ; $1aa6: $cd $f9 $16
    ld de, $6ed0                                  ; $1aa9: $11 $d0 $6e
    call Call_000_188e                            ; $1aac: $cd $8e $18
    call Call_000_04cb                            ; $1aaf: $cd $cb $04
    ld hl, $400b                                  ; $1ab2: $21 $0b $40
    call Call_000_16f9                            ; $1ab5: $cd $f9 $16
    jp Jump_000_04aa                              ; $1ab8: $c3 $aa $04


Call_000_1abb:
    call Call_000_04cb                            ; $1abb: $cd $cb $04
    ld hl, $4a94                                  ; $1abe: $21 $94 $4a
    call Call_000_16f9                            ; $1ac1: $cd $f9 $16
    jp Jump_000_04aa                              ; $1ac4: $c3 $aa $04


Call_000_1ac7:
    call Call_000_04cb                            ; $1ac7: $cd $cb $04
    ld de, $4d97                                  ; $1aca: $11 $97 $4d
    call Call_000_188e                            ; $1acd: $cd $8e $18
    jp Jump_000_04aa                              ; $1ad0: $c3 $aa $04


Call_000_1ad3:
    call Call_000_04cb                            ; $1ad3: $cd $cb $04
    ld hl, $5011                                  ; $1ad6: $21 $11 $50
    call Call_000_041e_WordTableLookupToDE                            ; $1ad9: $cd $1e $04
    ld a, [$c520]                                 ; $1adc: $fa $20 $c5
    ld hl, $4ac7                                  ; $1adf: $21 $c7 $4a
    call Call_000_041a                            ; $1ae2: $cd $1a $04
    call Call_000_044b                            ; $1ae5: $cd $4b $04
    ld c, [hl]                                    ; $1ae8: $4e
    inc hl                                        ; $1ae9: $23
    xor a                                         ; $1aea: $af
    ld b, a                                       ; $1aeb: $47
    call Call_000_1795                            ; $1aec: $cd $95 $17
    jp Jump_000_04aa                              ; $1aef: $c3 $aa $04


Call_000_1af2:
    call Call_000_04cb                            ; $1af2: $cd $cb $04
    ld hl, $4ad7                                  ; $1af5: $21 $d7 $4a
    call Call_000_16f9                            ; $1af8: $cd $f9 $16
    ld a, $10                                     ; $1afb: $3e $10
    ld hl, $5011                                  ; $1afd: $21 $11 $50
    call Call_000_041a                            ; $1b00: $cd $1a $04
    ld de, $9100                                  ; $1b03: $11 $00 $91
    ld c, [hl]                                    ; $1b06: $4e
    inc hl                                        ; $1b07: $23
    xor a                                         ; $1b08: $af
    ld b, a                                       ; $1b09: $47
    call Call_000_1795                            ; $1b0a: $cd $95 $17
    ld de, $5b96                                  ; $1b0d: $11 $96 $5b
    call Call_000_188e                            ; $1b10: $cd $8e $18
    jp Jump_000_04aa                              ; $1b13: $c3 $aa $04


Call_000_1b16:
    call Call_000_04cb                            ; $1b16: $cd $cb $04
    push af                                       ; $1b19: $f5
    ld hl, $4ad7                                  ; $1b1a: $21 $d7 $4a
    call Call_000_16f9                            ; $1b1d: $cd $f9 $16
    pop af                                        ; $1b20: $f1
    ld hl, $5011                                  ; $1b21: $21 $11 $50
    call Call_000_041a                            ; $1b24: $cd $1a $04
    ld de, $9100                                  ; $1b27: $11 $00 $91
    ld c, [hl]                                    ; $1b2a: $4e
    inc hl                                        ; $1b2b: $23
    xor a                                         ; $1b2c: $af
    ld b, a                                       ; $1b2d: $47
    call Call_000_1795                            ; $1b2e: $cd $95 $17
    ld hl, $4aae                                  ; $1b31: $21 $ae $4a
    call Call_000_16f9                            ; $1b34: $cd $f9 $16
    ld de, $5cab                                  ; $1b37: $11 $ab $5c
    call Call_000_188e                            ; $1b3a: $cd $8e $18
    jp Jump_000_04aa                              ; $1b3d: $c3 $aa $04


Call_000_1b40:
    ld de, $8a80                                  ; $1b40: $11 $80 $8a

jr_000_1b43:
    or a                                          ; $1b43: $b7
    ret z                                         ; $1b44: $c8

    call Call_000_04cb                            ; $1b45: $cd $cb $04
    ld hl, $5011                                  ; $1b48: $21 $11 $50
    call Call_000_041a                            ; $1b4b: $cd $1a $04
    ld c, [hl]                                    ; $1b4e: $4e
    inc hl                                        ; $1b4f: $23
    xor a                                         ; $1b50: $af
    ld b, a                                       ; $1b51: $47
    call Call_000_1795                            ; $1b52: $cd $95 $17
    jp Jump_000_04aa                              ; $1b55: $c3 $aa $04


Call_000_1b58:
    ld de, $8ac0                                  ; $1b58: $11 $c0 $8a
    jr jr_000_1b43                                ; $1b5b: $18 $e6

Call_000_1b5d:
    call Call_000_04c6                            ; $1b5d: $cd $c6 $04
    ld a, [$c127]                                 ; $1b60: $fa $27 $c1
    or a                                          ; $1b63: $b7
    ld hl, $5cf0                                  ; $1b64: $21 $f0 $5c
    jr z, jr_000_1b6c                             ; $1b67: $28 $03

    ld hl, $5f70                                  ; $1b69: $21 $70 $5f

jr_000_1b6c:
    ld de, $8700                                  ; $1b6c: $11 $00 $87
    ld bc, $0100                                  ; $1b6f: $01 $00 $01
    call Call_000_0442                            ; $1b72: $cd $42 $04
    call Call_000_04b7                            ; $1b75: $cd $b7 $04
    ld hl, $44a0                                  ; $1b78: $21 $a0 $44
    call Call_000_16f9                            ; $1b7b: $cd $f9 $16
    call Call_000_04cb                            ; $1b7e: $cd $cb $04
    ld hl, $5d91                                  ; $1b81: $21 $91 $5d
    call Call_000_16f9                            ; $1b84: $cd $f9 $16
    ld a, [$c127]                                 ; $1b87: $fa $27 $c1
    or a                                          ; $1b8a: $b7
    ld hl, $5da6                                  ; $1b8b: $21 $a6 $5d
    jr z, jr_000_1b93                             ; $1b8e: $28 $03

    ld hl, $5dac                                  ; $1b90: $21 $ac $5d

jr_000_1b93:
    call Call_000_16f9                            ; $1b93: $cd $f9 $16
    ld de, $668c                                  ; $1b96: $11 $8c $66
    call Call_000_188e                            ; $1b99: $cd $8e $18
    jp Jump_000_04aa                              ; $1b9c: $c3 $aa $04


Call_000_1b9f:
    call Call_000_04c6                            ; $1b9f: $cd $c6 $04
    ld hl, $6673                                  ; $1ba2: $21 $73 $66
    call Call_000_16f9                            ; $1ba5: $cd $f9 $16
    ld de, $6a38                                  ; $1ba8: $11 $38 $6a
    call Call_000_188e                            ; $1bab: $cd $8e $18
    jp Jump_000_04aa                              ; $1bae: $c3 $aa $04


Call_000_1bb1:
    call Call_000_04cb                            ; $1bb1: $cd $cb $04
    ld hl, $5011                                  ; $1bb4: $21 $11 $50
    call Call_000_041a                            ; $1bb7: $cd $1a $04
    ld c, [hl]                                    ; $1bba: $4e
    ld b, $00                                     ; $1bbb: $06 $00
    inc hl                                        ; $1bbd: $23
    xor a                                         ; $1bbe: $af
    call Call_000_1795                            ; $1bbf: $cd $95 $17
    jp Jump_000_04aa                              ; $1bc2: $c3 $aa $04


Call_000_1bc5:
    call Call_000_04cb                            ; $1bc5: $cd $cb $04
    ld hl, $67dd                                  ; $1bc8: $21 $dd $67
    call Call_000_16f9                            ; $1bcb: $cd $f9 $16
    ld de, $6e93                                  ; $1bce: $11 $93 $6e
    call Call_000_188e                            ; $1bd1: $cd $8e $18
    jp Jump_000_04aa                              ; $1bd4: $c3 $aa $04


Call_000_1bd7:
    call Call_000_04cb                            ; $1bd7: $cd $cb $04
    ld hl, $7005                                  ; $1bda: $21 $05 $70
    call Call_000_16f9                            ; $1bdd: $cd $f9 $16
    ld de, $7b4c                                  ; $1be0: $11 $4c $7b
    call Call_000_188e                            ; $1be3: $cd $8e $18
    ld a, [$c101]                                 ; $1be6: $fa $01 $c1
    ld hl, $7c43                                  ; $1be9: $21 $43 $7c
    call Call_000_041a                            ; $1bec: $cd $1a $04
    call Call_000_1912                            ; $1bef: $cd $12 $19
    jp Jump_000_04aa                              ; $1bf2: $c3 $aa $04


Call_000_1bf5:
    call Call_000_04c6                            ; $1bf5: $cd $c6 $04
    ld hl, $5cf0                                  ; $1bf8: $21 $f0 $5c
    ld de, $8600                                  ; $1bfb: $11 $00 $86
    ld bc, $0100                                  ; $1bfe: $01 $00 $01
    call Call_000_0442                            ; $1c01: $cd $42 $04
    ld hl, $5f70                                  ; $1c04: $21 $70 $5f
    ld de, $8700                                  ; $1c07: $11 $00 $87
    ld bc, $0100                                  ; $1c0a: $01 $00 $01
    call Call_000_0442                            ; $1c0d: $cd $42 $04
    call Call_000_04b7                            ; $1c10: $cd $b7 $04
    ld hl, $4491                                  ; $1c13: $21 $91 $44
    call Call_000_16f9                            ; $1c16: $cd $f9 $16
    ld de, $4933                                  ; $1c19: $11 $33 $49

Call_000_1c1c:
    call Call_000_188e                            ; $1c1c: $cd $8e $18
    jp Jump_000_04aa                              ; $1c1f: $c3 $aa $04


Call_000_1c22:
    call Call_000_04cb                            ; $1c22: $cd $cb $04
    ld hl, $8000                                  ; $1c25: $21 $00 $80
    ld de, $45c4                                  ; $1c28: $11 $c4 $45
    call Call_000_1894                            ; $1c2b: $cd $94 $18
    ld hl, $8040                                  ; $1c2e: $21 $40 $80
    ld de, $448e                                  ; $1c31: $11 $8e $44
    call Call_000_1894                            ; $1c34: $cd $94 $18

Call_000_1c37:
    call Call_000_04c6                            ; $1c37: $cd $c6 $04
    ld hl, $6170                                  ; $1c3a: $21 $70 $61
    call Call_000_16f9                            ; $1c3d: $cd $f9 $16
    ld de, $6534                                  ; $1c40: $11 $34 $65
    call Call_000_188e                            ; $1c43: $cd $8e $18
    jp Jump_000_04aa                              ; $1c46: $c3 $aa $04


Call_000_1c49:
    call Call_000_04cb                            ; $1c49: $cd $cb $04
    ld hl, $8000                                  ; $1c4c: $21 $00 $80
    ld de, $45c4                                  ; $1c4f: $11 $c4 $45
    call Call_000_1894                            ; $1c52: $cd $94 $18
    ld hl, $4aae                                  ; $1c55: $21 $ae $4a
    call Call_000_16f9                            ; $1c58: $cd $f9 $16
    call Call_000_04c1                            ; $1c5b: $cd $c1 $04
    ld hl, $77e3                                  ; $1c5e: $21 $e3 $77
    call Call_000_16f9                            ; $1c61: $cd $f9 $16
    ld de, $78b6                                  ; $1c64: $11 $b6 $78
    call Call_000_188e                            ; $1c67: $cd $8e $18
    jp Jump_000_04aa                              ; $1c6a: $c3 $aa $04


Call_000_1c6d:
    call Call_000_04c6                            ; $1c6d: $cd $c6 $04
    ld hl, $6b86                                  ; $1c70: $21 $86 $6b
    call Call_000_16f9                            ; $1c73: $cd $f9 $16
    ld de, $6d2f                                  ; $1c76: $11 $2f $6d
    call Call_000_188e                            ; $1c79: $cd $8e $18
    jp Jump_000_04aa                              ; $1c7c: $c3 $aa $04


Call_000_1c7f:
    call Call_000_04cb                            ; $1c7f: $cd $cb $04
    ld hl, $8000                                  ; $1c82: $21 $00 $80
    ld de, $45c4                                  ; $1c85: $11 $c4 $45
    call Call_000_1894                            ; $1c88: $cd $94 $18
    call Call_000_04c1                            ; $1c8b: $cd $c1 $04
    ld hl, $6e1c                                  ; $1c8e: $21 $1c $6e
    call Call_000_16f9                            ; $1c91: $cd $f9 $16
    ld de, $760f                                  ; $1c94: $11 $0f $76
    call Call_000_188e                            ; $1c97: $cd $8e $18
    jp Jump_000_04aa                              ; $1c9a: $c3 $aa $04


Call_000_1c9d:
    call Call_000_04c1                            ; $1c9d: $cd $c1 $04
    ld hl, $4000                                  ; $1ca0: $21 $00 $40
    call Call_000_16f9                            ; $1ca3: $cd $f9 $16
    ld de, $592d                                  ; $1ca6: $11 $2d $59
    call Call_000_188e                            ; $1ca9: $cd $8e $18
    ld a, [$c127]                                 ; $1cac: $fa $27 $c1
    or a                                          ; $1caf: $b7
    ld hl, $402a                                  ; $1cb0: $21 $2a $40
    jr z, jr_000_1cb8                             ; $1cb3: $28 $03

    ld hl, $4030                                  ; $1cb5: $21 $30 $40

jr_000_1cb8:
    call Call_000_16f9                            ; $1cb8: $cd $f9 $16
    jp Jump_000_04aa                              ; $1cbb: $c3 $aa $04


Call_000_1cbe:
    call Call_000_04cb                            ; $1cbe: $cd $cb $04
    ld hl, $8000                                  ; $1cc1: $21 $00 $80
    ld de, $448e                                  ; $1cc4: $11 $8e $44
    call Call_000_1894                            ; $1cc7: $cd $94 $18
    call Call_000_04c1                            ; $1cca: $cd $c1 $04
    ld hl, $400c                                  ; $1ccd: $21 $0c $40
    call Call_000_16f9                            ; $1cd0: $cd $f9 $16
    ld a, [$c101]                                 ; $1cd3: $fa $01 $c1
    dec a                                         ; $1cd6: $3d
    ld hl, $1ce3                                  ; $1cd7: $21 $e3 $1c
    call Call_000_041a                            ; $1cda: $cd $1a $04
    call Call_000_16f9                            ; $1cdd: $cd $f9 $16
    jp Jump_000_04aa                              ; $1ce0: $c3 $aa $04


    ld [de], a                                    ; $1ce3: $12
    ld b, b                                       ; $1ce4: $40
    jr @+$42                                      ; $1ce5: $18 $40

    ld e, $40                                     ; $1ce7: $1e $40
    inc h                                         ; $1ce9: $24
    ld b, b                                       ; $1cea: $40

Call_000_1ceb:
    call Call_000_04c1                            ; $1ceb: $cd $c1 $04
    ld a, [$c101]                                 ; $1cee: $fa $01 $c1
    dec a                                         ; $1cf1: $3d
    rst RST_00                                    ; $1cf2: $c7
    ei                                            ; $1cf3: $fb
    inc e                                         ; $1cf4: $1c
    ld [hl+], a                                   ; $1cf5: $22
    dec e                                         ; $1cf6: $1d
    ld a, [hl-]                                   ; $1cf7: $3a
    dec e                                         ; $1cf8: $1d
    ld l, b                                       ; $1cf9: $68
    dec e                                         ; $1cfa: $1d
    ld a, [$c127]                                 ; $1cfb: $fa $27 $c1
    or a                                          ; $1cfe: $b7
    ld hl, $4036                                  ; $1cff: $21 $36 $40
    jr z, jr_000_1d07                             ; $1d02: $28 $03

    ld hl, $403c                                  ; $1d04: $21 $3c $40

jr_000_1d07:
    call Call_000_16f9                            ; $1d07: $cd $f9 $16
    call Call_000_04c6                            ; $1d0a: $cd $c6 $04
    ld bc, $0004                                  ; $1d0d: $01 $04 $00
    ld de, $9700                                  ; $1d10: $11 $00 $97
    ld a, $06                                     ; $1d13: $3e $06
    ld hl, $4a2e                                  ; $1d15: $21 $2e $4a
    call Call_000_041a                            ; $1d18: $cd $1a $04
    xor a                                         ; $1d1b: $af
    call Call_000_1795                            ; $1d1c: $cd $95 $17
    jp Jump_000_04aa                              ; $1d1f: $c3 $aa $04


    ld a, [$c127]                                 ; $1d22: $fa $27 $c1
    or a                                          ; $1d25: $b7
    ld hl, $404d                                  ; $1d26: $21 $4d $40
    jr z, jr_000_1d2e                             ; $1d29: $28 $03

    ld hl, $4053                                  ; $1d2b: $21 $53 $40

jr_000_1d2e:
    call Call_000_16f9                            ; $1d2e: $cd $f9 $16
    ld hl, $4042                                  ; $1d31: $21 $42 $40
    call Call_000_16f9                            ; $1d34: $cd $f9 $16
    jp Jump_000_04aa                              ; $1d37: $c3 $aa $04


    ld a, [$c127]                                 ; $1d3a: $fa $27 $c1
    or a                                          ; $1d3d: $b7
    ld hl, $405f                                  ; $1d3e: $21 $5f $40
    jr z, jr_000_1d46                             ; $1d41: $28 $03

    ld hl, $4065                                  ; $1d43: $21 $65 $40

jr_000_1d46:
    call Call_000_16f9                            ; $1d46: $cd $f9 $16
    ld hl, $4059                                  ; $1d49: $21 $59 $40
    call Call_000_16f9                            ; $1d4c: $cd $f9 $16
    call Call_000_04cb                            ; $1d4f: $cd $cb $04
    ld bc, $0004                                  ; $1d52: $01 $04 $00
    ld de, $9700                                  ; $1d55: $11 $00 $97
    ld a, $06                                     ; $1d58: $3e $06
    ld hl, $5013                                  ; $1d5a: $21 $13 $50
    call Call_000_041a                            ; $1d5d: $cd $1a $04
    inc hl                                        ; $1d60: $23
    xor a                                         ; $1d61: $af
    call Call_000_1795                            ; $1d62: $cd $95 $17
    jp Jump_000_04aa                              ; $1d65: $c3 $aa $04


    ld a, [$c127]                                 ; $1d68: $fa $27 $c1
    or a                                          ; $1d6b: $b7
    ld hl, $406b                                  ; $1d6c: $21 $6b $40
    jr z, jr_000_1d74                             ; $1d6f: $28 $03

    ld hl, $4071                                  ; $1d71: $21 $71 $40

jr_000_1d74:
    call Call_000_16f9                            ; $1d74: $cd $f9 $16
    call Call_000_04c6                            ; $1d77: $cd $c6 $04
    ld hl, $4044                                  ; $1d7a: $21 $44 $40
    call Call_000_16f9                            ; $1d7d: $cd $f9 $16
    jp Jump_000_04aa                              ; $1d80: $c3 $aa $04


Call_000_1d83:
    call Call_000_04b7                            ; $1d83: $cd $b7 $04
    ld hl, $44a0                                  ; $1d86: $21 $a0 $44
    call Call_000_16f9                            ; $1d89: $cd $f9 $16
    call Call_000_04c1                            ; $1d8c: $cd $c1 $04
    ld a, [$c101]                                 ; $1d8f: $fa $01 $c1
    dec a                                         ; $1d92: $3d
    add a                                         ; $1d93: $87
    ld hl, $1da1                                  ; $1d94: $21 $a1 $1d
    rst RST_28                                    ; $1d97: $ef
    rst RST_08                                    ; $1d98: $cf
    ld e, l                                       ; $1d99: $5d
    ld d, h                                       ; $1d9a: $54
    call Call_000_188e                            ; $1d9b: $cd $8e $18
    jp Jump_000_04aa                              ; $1d9e: $c3 $aa $04


    ld d, d                                       ; $1da1: $52
    ld e, c                                       ; $1da2: $59
    rla                                           ; $1da3: $17
    ld e, d                                       ; $1da4: $5a
    cp e                                          ; $1da5: $bb
    ld e, d                                       ; $1da6: $5a
    ld [hl], l                                    ; $1da7: $75
    ld e, e                                       ; $1da8: $5b

Call_000_1da9:
    call Call_000_04cb                            ; $1da9: $cd $cb $04
    ld hl, $8540                                  ; $1dac: $21 $40 $85
    ld de, $45c4                                  ; $1daf: $11 $c4 $45
    call Call_000_1894                            ; $1db2: $cd $94 $18
    call Call_000_04c1                            ; $1db5: $cd $c1 $04
    ld hl, $4077                                  ; $1db8: $21 $77 $40
    call Call_000_16f9                            ; $1dbb: $cd $f9 $16
    ld de, $6ba3                                  ; $1dbe: $11 $a3 $6b
    call Call_000_188e                            ; $1dc1: $cd $8e $18
    ld de, $6c6b                                  ; $1dc4: $11 $6b $6c
    call Call_000_1dd5                            ; $1dc7: $cd $d5 $1d
    jr nz, jr_000_1dcf                            ; $1dca: $20 $03

    ld de, $6cb2                                  ; $1dcc: $11 $b2 $6c

jr_000_1dcf:
    call Call_000_188e                            ; $1dcf: $cd $8e $18
    jp Jump_000_04aa                              ; $1dd2: $c3 $aa $04


Call_000_1dd5:
    ld a, [$c102]                                 ; $1dd5: $fa $02 $c1
    cp $06                                        ; $1dd8: $fe $06
    ret z                                         ; $1dda: $c8

    cp $0a                                        ; $1ddb: $fe $0a
    ret                                           ; $1ddd: $c9


Call_000_1dde:
    call Call_000_04c6                            ; $1dde: $cd $c6 $04
    ld de, $7e98                                  ; $1de1: $11 $98 $7e
    call Call_000_188e                            ; $1de4: $cd $8e $18
    call Call_000_04cb                            ; $1de7: $cd $cb $04
    ld hl, $7d0f                                  ; $1dea: $21 $0f $7d
    call Call_000_16f9                            ; $1ded: $cd $f9 $16
    ld a, [$c127]                                 ; $1df0: $fa $27 $c1
    or a                                          ; $1df3: $b7
    jp z, Jump_000_04aa                           ; $1df4: $ca $aa $04

    ld hl, $7d15                                  ; $1df7: $21 $15 $7d
    call Call_000_16f9                            ; $1dfa: $cd $f9 $16
    jp Jump_000_04aa                              ; $1dfd: $c3 $aa $04


Call_000_1e00:
    call Call_000_04c1                            ; $1e00: $cd $c1 $04
    ld hl, $4082                                  ; $1e03: $21 $82 $40
    call Call_000_16f9                            ; $1e06: $cd $f9 $16
    ld a, [$c102]                                 ; $1e09: $fa $02 $c1
    cp $0a                                        ; $1e0c: $fe $0a
    jr nz, jr_000_1e16                            ; $1e0e: $20 $06

    ld hl, $4088                                  ; $1e10: $21 $88 $40
    call Call_000_16f9                            ; $1e13: $cd $f9 $16

jr_000_1e16:
    ld de, $6cf5                                  ; $1e16: $11 $f5 $6c
    call Call_000_188e                            ; $1e19: $cd $8e $18
    ld de, $6de0                                  ; $1e1c: $11 $e0 $6d
    call Call_000_188e                            ; $1e1f: $cd $8e $18
    jp Jump_000_04aa                              ; $1e22: $c3 $aa $04


Call_000_1e25:
    call Call_000_04bc                            ; $1e25: $cd $bc $04
    ld hl, $7b21                                  ; $1e28: $21 $21 $7b
    call Call_000_16f9                            ; $1e2b: $cd $f9 $16
    ld a, [$c102]                                 ; $1e2e: $fa $02 $c1
    cp $0a                                        ; $1e31: $fe $0a
    ld de, $782f                                  ; $1e33: $11 $2f $78
    jr nz, jr_000_1e3b                            ; $1e36: $20 $03

    ld de, $7992                                  ; $1e38: $11 $92 $79

jr_000_1e3b:
    call Call_000_188e                            ; $1e3b: $cd $8e $18
    jp Jump_000_04aa                              ; $1e3e: $c3 $aa $04


Call_000_1e41:
    call Call_000_04cb                            ; $1e41: $cd $cb $04
    ld hl, $4011                                  ; $1e44: $21 $11 $40
    call Call_000_16f9                            ; $1e47: $cd $f9 $16
    call Call_000_04bc                            ; $1e4a: $cd $bc $04
    ld hl, $7b2c                                  ; $1e4d: $21 $2c $7b
    call Call_000_16f9                            ; $1e50: $cd $f9 $16
    ld de, $7b0b                                  ; $1e53: $11 $0b $7b
    call Call_000_188e                            ; $1e56: $cd $8e $18
    jp Jump_000_04aa                              ; $1e59: $c3 $aa $04


Call_000_1e5c:
    ld a, [$c102]                                 ; $1e5c: $fa $02 $c1
    cp $06                                        ; $1e5f: $fe $06
    jr z, jr_000_1e75                             ; $1e61: $28 $12

    call Call_000_04c1                            ; $1e63: $cd $c1 $04
    ld hl, $408e                                  ; $1e66: $21 $8e $40
    call Call_000_16f9                            ; $1e69: $cd $f9 $16
    ld de, $7f40                                  ; $1e6c: $11 $40 $7f
    call Call_000_188e                            ; $1e6f: $cd $8e $18
    jp Jump_000_04aa                              ; $1e72: $c3 $aa $04


jr_000_1e75:
    call Call_000_04b7                            ; $1e75: $cd $b7 $04
    ld hl, $72d0                                  ; $1e78: $21 $d0 $72
    call Call_000_16f9                            ; $1e7b: $cd $f9 $16
    call Call_000_04c6                            ; $1e7e: $cd $c6 $04
    ld de, $7dc8                                  ; $1e81: $11 $c8 $7d
    call Call_000_188e                            ; $1e84: $cd $8e $18
    jp Jump_000_04aa                              ; $1e87: $c3 $aa $04


Call_000_1e8a:
    ld hl, $0000                                  ; $1e8a: $21 $00 $00
    call Call_000_0e42                            ; $1e8d: $cd $42 $0e
    ld hl, $0720                                  ; $1e90: $21 $20 $07
    call Call_000_0e4b                            ; $1e93: $cd $4b $0e
    call Call_000_04cb                            ; $1e96: $cd $cb $04
    ld hl, $42b3                                  ; $1e99: $21 $b3 $42
    call Call_000_16f9                            ; $1e9c: $cd $f9 $16
    ld de, $4463                                  ; $1e9f: $11 $63 $44
    call Call_000_188e                            ; $1ea2: $cd $8e $18
    jp Jump_000_04aa                              ; $1ea5: $c3 $aa $04


Call_000_1ea8:
    ld a, [$c00b]                                 ; $1ea8: $fa $0b $c0
    rra                                           ; $1eab: $1f
    ret nc                                        ; $1eac: $d0

    ld a, [$c01f]                                 ; $1ead: $fa $1f $c0
    inc a                                         ; $1eb0: $3c
    ld [$c01f], a                                 ; $1eb1: $ea $1f $c0
    sub $d0                                       ; $1eb4: $d6 $d0
    and a                                         ; $1eb6: $a7
    ret nz                                        ; $1eb7: $c0

    scf                                           ; $1eb8: $37
    ret                                           ; $1eb9: $c9


    call Call_000_1ecc                            ; $1eba: $cd $cc $1e
    call Call_000_1ee2                            ; $1ebd: $cd $e2 $1e
    jp Jump_000_0e37                              ; $1ec0: $c3 $37 $0e


Call_000_1ec3:
    call Call_000_1ecc                            ; $1ec3: $cd $cc $1e
    call Call_000_1f15                            ; $1ec6: $cd $15 $1f
    jp Jump_000_0e37                              ; $1ec9: $c3 $37 $0e


Call_000_1ecc:
    call Call_000_0e2d                            ; $1ecc: $cd $2d $0e
    call Call_000_0dde                            ; $1ecf: $cd $de $0d
    call Call_000_0e5c                            ; $1ed2: $cd $5c $0e
    call Call_000_196a                            ; $1ed5: $cd $6a $19
    call Call_000_0e16                            ; $1ed8: $cd $16 $0e
    xor a                                         ; $1edb: $af
    ld [$c036], a                                 ; $1edc: $ea $36 $c0
    jp Jump_000_2f90                              ; $1edf: $c3 $90 $2f


Call_000_1ee2:
    ld bc, $0000                                  ; $1ee2: $01 $00 $00
    call Call_000_0e71                            ; $1ee5: $cd $71 $0e
    ld a, $ff                                     ; $1ee8: $3e $ff
    ld [$c252], a                                 ; $1eea: $ea $52 $c2
    xor a                                         ; $1eed: $af
    ld [$c258], a                                 ; $1eee: $ea $58 $c2
    ld [$c03e], a                                 ; $1ef1: $ea $3e $c0
    call Call_000_2082                            ; $1ef4: $cd $82 $20
    ld a, $08                                     ; $1ef7: $3e $08

Call_000_1ef9:
    ld [$c002], a                                 ; $1ef9: $ea $02 $c0
    ld [$c001], a                                 ; $1efc: $ea $01 $c0
    call Call_000_1a03                            ; $1eff: $cd $03 $1a
    xor a                                         ; $1f02: $af
    ld [$c510], a                                 ; $1f03: $ea $10 $c5
    ld [$c511], a                                 ; $1f06: $ea $11 $c5
    ld de, $4000                                  ; $1f09: $11 $00 $40
    call Call_000_0ea8                            ; $1f0c: $cd $a8 $0e
    ld de, $4018                                  ; $1f0f: $11 $18 $40
    jp Jump_000_0ea8                              ; $1f12: $c3 $a8 $0e


Call_000_1f15:
    call Call_000_0e6d                            ; $1f15: $cd $6d $0e
    ld a, $02                                     ; $1f18: $3e $02
    call Call_000_1ef9                            ; $1f1a: $cd $f9 $1e
    ld hl, $c800                                  ; $1f1d: $21 $00 $c8
    ld de, $9800                                  ; $1f20: $11 $00 $98
    ld bc, $0400                                  ; $1f23: $01 $00 $04
    jp Jump_000_0442                              ; $1f26: $c3 $42 $04


    ld a, [$c03e]                                 ; $1f29: $fa $3e $c0
    rst RST_00                                    ; $1f2c: $c7
    ld b, c                                       ; $1f2d: $41
    rra                                           ; $1f2e: $1f
    ld c, h                                       ; $1f2f: $4c
    rra                                           ; $1f30: $1f
    ld d, d                                       ; $1f31: $52
    rra                                           ; $1f32: $1f
    ld e, e                                       ; $1f33: $5b
    rra                                           ; $1f34: $1f
    ld c, h                                       ; $1f35: $4c
    rra                                           ; $1f36: $1f
    and b                                         ; $1f37: $a0
    rra                                           ; $1f38: $1f

jr_000_1f39:
    call $77cc                                    ; $1f39: $cd $cc $77
    ld hl, $c03e                                  ; $1f3c: $21 $3e $c0
    inc [hl]                                      ; $1f3f: $34
    ret                                           ; $1f40: $c9


    ld c, $20                                     ; $1f41: $0e $20
    call Call_000_30fe                            ; $1f43: $cd $fe $30
    ret c                                         ; $1f46: $d8

    ld hl, $0080                                  ; $1f47: $21 $80 $00
    jr jr_000_1f39                                ; $1f4a: $18 $ed

    call Call_000_203e                            ; $1f4c: $cd $3e $20

Call_000_1f4f:
    ret nz                                        ; $1f4f: $c0

    jr jr_000_1f39                                ; $1f50: $18 $e7

    xor a                                         ; $1f52: $af
    call Call_000_1f6d                            ; $1f53: $cd $6d $1f
    ld hl, $0080                                  ; $1f56: $21 $80 $00
    jr jr_000_1f39                                ; $1f59: $18 $de

    call Call_000_203e                            ; $1f5b: $cd $3e $20
    jr z, jr_000_1f84                             ; $1f5e: $28 $24

    ld hl, $c510                                  ; $1f60: $21 $10 $c5
    inc [hl]                                      ; $1f63: $34
    ld a, [hl+]                                   ; $1f64: $2a
    and $1f                                       ; $1f65: $e6 $1f
    ret nz                                        ; $1f67: $c0

    ld a, [hl]                                    ; $1f68: $7e
    xor $01                                       ; $1f69: $ee $01
    ld [hl], a                                    ; $1f6b: $77
    or a                                          ; $1f6c: $b7

Call_000_1f6d:
    call Call_000_04bc                            ; $1f6d: $cd $bc $04
    ld hl, $7e8b                                  ; $1f70: $21 $8b $7e
    jr z, jr_000_1f78                             ; $1f73: $28 $03

    ld hl, $7e93                                  ; $1f75: $21 $93 $7e

jr_000_1f78:
    ld de, $da08                                  ; $1f78: $11 $08 $da
    ld bc, $0008                                  ; $1f7b: $01 $08 $00
    call Call_000_0442                            ; $1f7e: $cd $42 $04
    jp Jump_000_04aa                              ; $1f81: $c3 $aa $04


jr_000_1f84:
    call Call_000_04bc                            ; $1f84: $cd $bc $04
    ld hl, $7e9b                                  ; $1f87: $21 $9b $7e
    ld de, $da00                                  ; $1f8a: $11 $00 $da
    ld bc, $0008                                  ; $1f8d: $01 $08 $00
    call Call_000_0442                            ; $1f90: $cd $42 $04
    call Call_000_04aa                            ; $1f93: $cd $aa $04
    ld a, $2e                                     ; $1f96: $3e $2e
    call Call_000_00d9                            ; $1f98: $cd $d9 $00
    ld hl, $0060                                  ; $1f9b: $21 $60 $00
    jr jr_000_1f39                                ; $1f9e: $18 $99

    call Call_000_1fbb                            ; $1fa0: $cd $bb $1f
    ld a, $01                                     ; $1fa3: $3e $01
    ld [$c258], a                                 ; $1fa5: $ea $58 $c2
    ld a, [$c252]                                 ; $1fa8: $fa $52 $c2
    cp $67                                        ; $1fab: $fe $67
    jr nc, jr_000_1fb5                            ; $1fad: $30 $06

    cp $04                                        ; $1faf: $fe $04
    jp nc, Jump_000_32a3                          ; $1fb1: $d2 $a3 $32

    ret                                           ; $1fb4: $c9


jr_000_1fb5:
    ld a, $ff                                     ; $1fb5: $3e $ff
    ld [$c03e], a                                 ; $1fb7: $ea $3e $c0
    ret                                           ; $1fba: $c9


Call_000_1fbb:
jr_000_1fbb:
    ld hl, $c252                                  ; $1fbb: $21 $52 $c2
    inc [hl]                                      ; $1fbe: $34
    call Call_000_201c                            ; $1fbf: $cd $1c $20
    jr nc, jr_000_1fbb                            ; $1fc2: $30 $f7

    ld a, e                                       ; $1fc4: $7b
    add $09                                       ; $1fc5: $c6 $09
    ld c, a                                       ; $1fc7: $4f
    ld a, d                                       ; $1fc8: $7a
    add $0a                                       ; $1fc9: $c6 $0a
    ld b, a                                       ; $1fcb: $47
    ld hl, $c500                                  ; $1fcc: $21 $00 $c5
    call Call_000_1ff9                            ; $1fcf: $cd $f9 $1f
    ld a, $08                                     ; $1fd2: $3e $08
    sub e                                         ; $1fd4: $93
    ld c, a                                       ; $1fd5: $4f
    ld a, $09                                     ; $1fd6: $3e $09
    sub d                                         ; $1fd8: $92
    ld b, a                                       ; $1fd9: $47
    ld hl, $c503                                  ; $1fda: $21 $03 $c5
    call Call_000_1ff9                            ; $1fdd: $cd $f9 $1f
    ld a, e                                       ; $1fe0: $7b
    add $09                                       ; $1fe1: $c6 $09
    ld c, a                                       ; $1fe3: $4f
    ld a, $09                                     ; $1fe4: $3e $09
    sub d                                         ; $1fe6: $92

Call_000_1fe7:
    ld b, a                                       ; $1fe7: $47
    ld hl, $c506                                  ; $1fe8: $21 $06 $c5
    call Call_000_1ff9                            ; $1feb: $cd $f9 $1f
    ld a, $08                                     ; $1fee: $3e $08
    sub e                                         ; $1ff0: $93
    ld c, a                                       ; $1ff1: $4f
    ld a, d                                       ; $1ff2: $7a
    add $0a                                       ; $1ff3: $c6 $0a
    ld b, a                                       ; $1ff5: $47
    ld hl, $c509                                  ; $1ff6: $21 $09 $c5

Call_000_1ff9:
    push de                                       ; $1ff9: $d5
    push hl                                       ; $1ffa: $e5
    ld l, c                                       ; $1ffb: $69
    ld h, $00                                     ; $1ffc: $26 $00
    add hl, hl                                    ; $1ffe: $29
    add hl, hl                                    ; $1fff: $29

Call_000_2000:
    add hl, hl                                    ; $2000: $29
    add hl, hl                                    ; $2001: $29
    add hl, hl                                    ; $2002: $29
    ld a, b                                       ; $2003: $78
    rst RST_28                                    ; $2004: $ef
    ld de, $c800                                  ; $2005: $11 $00 $c8
    call Call_000_044b                            ; $2008: $cd $4b $04
    add hl, de                                    ; $200b: $19
    ld a, [hl]                                    ; $200c: $7e
    ld hl, $9800                                  ; $200d: $21 $00 $98
    add hl, de                                    ; $2010: $19
    call Call_000_044b                            ; $2011: $cd $4b $04
    pop hl                                        ; $2014: $e1
    ld [hl], e                                    ; $2015: $73
    inc hl                                        ; $2016: $23
    ld [hl], d                                    ; $2017: $72
    inc hl                                        ; $2018: $23
    ld [hl], a                                    ; $2019: $77
    pop de                                        ; $201a: $d1
    ret                                           ; $201b: $c9


Call_000_201c:
    call Call_000_04b7                            ; $201c: $cd $b7 $04
    ld a, [$c252]                                 ; $201f: $fa $52 $c2
    ld hl, $66e8                                  ; $2022: $21 $e8 $66
    rst RST_28                                    ; $2025: $ef
    ld a, [hl]                                    ; $2026: $7e
    call Call_000_04aa                            ; $2027: $cd $aa $04
    ld e, a                                       ; $202a: $5f
    ld d, a                                       ; $202b: $57
    ld a, e                                       ; $202c: $7b
    and $0f                                       ; $202d: $e6 $0f
    ld e, a                                       ; $202f: $5f
    swap d                                        ; $2030: $cb $32
    ld a, d                                       ; $2032: $7a
    and $0f                                       ; $2033: $e6 $0f
    ld d, a                                       ; $2035: $57
    ld a, d                                       ; $2036: $7a
    cp $0a                                        ; $2037: $fe $0a
    ret nc                                        ; $2039: $d0

    ld a, e                                       ; $203a: $7b
    cp $09                                        ; $203b: $fe $09
    ret                                           ; $203d: $c9


Call_000_203e:
    ld hl, $c039                                  ; $203e: $21 $39 $c0
    rst RST_08                                    ; $2041: $cf
    dec hl                                        ; $2042: $2b
    call $77cc                                    ; $2043: $cd $cc $77
    ld a, l                                       ; $2046: $7d
    or h                                          ; $2047: $b4
    ret                                           ; $2048: $c9


    nop                                           ; $2049: $00
    ret z                                         ; $204a: $c8

    ld a, [bc]                                    ; $204b: $0a
    ret z                                         ; $204c: $c8

    inc d                                         ; $204d: $14
    ret z                                         ; $204e: $c8

    nop                                           ; $204f: $00
    ret                                           ; $2050: $c9


    ld a, [bc]                                    ; $2051: $0a
    ret                                           ; $2052: $c9


    inc d                                         ; $2053: $14
    ret                                           ; $2054: $c9


    nop                                           ; $2055: $00
    jp z, $ca0a                                   ; $2056: $ca $0a $ca

    inc d                                         ; $2059: $14
    jp z, $cc00                                   ; $205a: $ca $00 $cc

    ld a, [bc]                                    ; $205d: $0a
    call z, $cc14                                 ; $205e: $cc $14 $cc
    nop                                           ; $2061: $00
    call $cd0a                                    ; $2062: $cd $0a $cd
    inc d                                         ; $2065: $14
    call $ce00                                    ; $2066: $cd $00 $ce
    ld a, [bc]                                    ; $2069: $0a
    adc $14                                       ; $206a: $ce $14
    adc $00                                       ; $206c: $ce $00
    jp $c320                                      ; $206e: $c3 $20 $c3


    ld b, b                                       ; $2071: $40
    jp $c360                                      ; $2072: $c3 $60 $c3


    add b                                         ; $2075: $80
    jp $c3a0                                      ; $2076: $c3 $a0 $c3


    ret nz                                        ; $2079: $c0

    jp $c3e0                                      ; $207a: $c3 $e0 $c3


    nop                                           ; $207d: $00
    call nz, Call_000_02cd                        ; $207e: $c4 $cd $02
    inc de                                        ; $2081: $13

Call_000_2082:
Jump_000_2082:
    ld b, a                                       ; $2082: $47
    ld hl, $20b7                                  ; $2083: $21 $b7 $20
    call Call_000_041a                            ; $2086: $cd $1a $04
    xor a                                         ; $2089: $af
    ld [$c25c], a                                 ; $208a: $ea $5c $c2
    ld [$c25d], a                                 ; $208d: $ea $5d $c2
    ld [$c259], a                                 ; $2090: $ea $59 $c2
    ld a, l                                       ; $2093: $7d
    ld [$c25a], a                                 ; $2094: $ea $5a $c2
    ld a, h                                       ; $2097: $7c
    ld [$c25b], a                                 ; $2098: $ea $5b $c2
    call Call_000_04d0                            ; $209b: $cd $d0 $04
    ld a, b                                       ; $209e: $78
    or a                                          ; $209f: $b7
    jr z, jr_000_20ae                             ; $20a0: $28 $0c

    ld hl, $7cef                                  ; $20a2: $21 $ef $7c
    call Call_000_041e_WordTableLookupToDE                            ; $20a5: $cd $1e $04
    ld hl, $d700                                  ; $20a8: $21 $00 $d7
    call Call_000_1894                            ; $20ab: $cd $94 $18

jr_000_20ae:
    ld de, $7f8f                                  ; $20ae: $11 $8f $7f
    call Call_000_188e                            ; $20b1: $cd $8e $18
    jp Jump_000_04aa                              ; $20b4: $c3 $aa $04


    inc sp                                        ; $20b7: $33
    ld hl, $20ec                                  ; $20b8: $21 $ec $20
    ld [$2421], sp                                ; $20bb: $08 $21 $24
    ld hl, $217d                                  ; $20be: $21 $7d $21
    sub l                                         ; $20c1: $95
    ld hl, $21bf                                  ; $20c2: $21 $bf $21
    ret z                                         ; $20c5: $c8

    ld hl, $21d1                                  ; $20c6: $21 $d1 $21
    jp c, $0121                                   ; $20c9: $da $21 $01

    ld [hl+], a                                   ; $20cc: $22

Call_000_20cd:
    ld hl, $c259                                  ; $20cd: $21 $59 $c2
    inc [hl]                                      ; $20d0: $34
    ld a, [hl+]                                   ; $20d1: $2a
    rra                                           ; $20d2: $1f
    jr c, jr_000_20d9                             ; $20d3: $38 $04

    ld a, [hl+]                                   ; $20d5: $2a
    ld h, [hl]                                    ; $20d6: $66
    ld l, a                                       ; $20d7: $6f
    jp hl                                         ; $20d8: $e9


jr_000_20d9:
    rra                                           ; $20d9: $1f
    ret nc                                        ; $20da: $d0

    and $03                                       ; $20db: $e6 $03
    swap a                                        ; $20dd: $cb $37
    ld c, a                                       ; $20df: $4f
    ld b, $00                                     ; $20e0: $06 $00
    ld hl, $d800                                  ; $20e2: $21 $00 $d8
    add hl, bc                                    ; $20e5: $09
    ld de, $95f0                                  ; $20e6: $11 $f0 $95
    jp Jump_000_04d5                              ; $20e9: $c3 $d5 $04


    ld hl, $c25c                                  ; $20ec: $21 $5c $c2
    dec [hl]                                      ; $20ef: $35
    ld a, [hl]                                    ; $20f0: $7e
    and $07                                       ; $20f1: $e6 $07
    add a                                         ; $20f3: $87
    ld c, a                                       ; $20f4: $4f
    ld b, $00                                     ; $20f5: $06 $00
    ld hl, $d700                                  ; $20f7: $21 $00 $d7
    add hl, bc                                    ; $20fa: $09
    ld de, $9310                                  ; $20fb: $11 $10 $93
    call Call_000_04d5                            ; $20fe: $cd $d5 $04
    ld hl, $d720                                  ; $2101: $21 $20 $d7
    add hl, bc                                    ; $2104: $09
    jp Jump_000_04d5                              ; $2105: $c3 $d5 $04


    ld hl, $c25c                                  ; $2108: $21 $5c $c2
    dec [hl]                                      ; $210b: $35
    ld a, [hl]                                    ; $210c: $7e
    and $07                                       ; $210d: $e6 $07
    add a                                         ; $210f: $87
    ld c, a                                       ; $2110: $4f
    ld b, $00                                     ; $2111: $06 $00
    ld hl, $d700                                  ; $2113: $21 $00 $d7
    add hl, bc                                    ; $2116: $09
    ld de, $9290                                  ; $2117: $11 $90 $92
    call Call_000_04d5                            ; $211a: $cd $d5 $04
    ld hl, $d720                                  ; $211d: $21 $20 $d7
    add hl, bc                                    ; $2120: $09
    jp Jump_000_04d5                              ; $2121: $c3 $d5 $04


    ld hl, $c25c                                  ; $2124: $21 $5c $c2
    dec [hl]                                      ; $2127: $35
    ld a, [hl]                                    ; $2128: $7e
    and $03                                       ; $2129: $e6 $03
    cp $01                                        ; $212b: $fe $01
    jr z, jr_000_2134                             ; $212d: $28 $05

    and $03                                       ; $212f: $e6 $03
    jr z, jr_000_214a                             ; $2131: $28 $17

    ret                                           ; $2133: $c9


jr_000_2134:
    ld hl, $c25d                                  ; $2134: $21 $5d $c2
    inc [hl]                                      ; $2137: $34
    ld a, [hl]                                    ; $2138: $7e
    and $03                                       ; $2139: $e6 $03
    swap a                                        ; $213b: $cb $37
    ld c, a                                       ; $213d: $4f
    ld b, $00                                     ; $213e: $06 $00
    ld hl, $d700                                  ; $2140: $21 $00 $d7
    add hl, bc                                    ; $2143: $09
    ld de, $93f0                                  ; $2144: $11 $f0 $93
    jp Jump_000_04d5                              ; $2147: $c3 $d5 $04


jr_000_214a:
    ld hl, $9400                                  ; $214a: $21 $00 $94
    rlc [hl]                                      ; $214d: $cb $06
    inc l                                         ; $214f: $2c
    rlc [hl]                                      ; $2150: $cb $06
    inc l                                         ; $2152: $2c
    rlc [hl]                                      ; $2153: $cb $06
    inc l                                         ; $2155: $2c
    rlc [hl]                                      ; $2156: $cb $06
    inc l                                         ; $2158: $2c
    rlc [hl]                                      ; $2159: $cb $06
    inc l                                         ; $215b: $2c
    rlc [hl]                                      ; $215c: $cb $06
    inc l                                         ; $215e: $2c
    rlc [hl]                                      ; $215f: $cb $06
    inc l                                         ; $2161: $2c
    rlc [hl]                                      ; $2162: $cb $06
    inc l                                         ; $2164: $2c
    rlc [hl]                                      ; $2165: $cb $06
    inc l                                         ; $2167: $2c
    rlc [hl]                                      ; $2168: $cb $06
    inc l                                         ; $216a: $2c
    rlc [hl]                                      ; $216b: $cb $06
    inc l                                         ; $216d: $2c
    rlc [hl]                                      ; $216e: $cb $06
    inc l                                         ; $2170: $2c
    rlc [hl]                                      ; $2171: $cb $06
    inc l                                         ; $2173: $2c
    rlc [hl]                                      ; $2174: $cb $06
    inc l                                         ; $2176: $2c
    rlc [hl]                                      ; $2177: $cb $06
    inc l                                         ; $2179: $2c
    rlc [hl]                                      ; $217a: $cb $06
    ret                                           ; $217c: $c9


    ld hl, $c25c                                  ; $217d: $21 $5c $c2
    dec [hl]                                      ; $2180: $35
    ld a, [hl]                                    ; $2181: $7e
    rra                                           ; $2182: $1f
    ret c                                         ; $2183: $d8

    and $03                                       ; $2184: $e6 $03
    swap a                                        ; $2186: $cb $37
    ld c, a                                       ; $2188: $4f
    ld b, $00                                     ; $2189: $06 $00
    ld hl, $d700                                  ; $218b: $21 $00 $d7
    add hl, bc                                    ; $218e: $09
    ld de, $93f0                                  ; $218f: $11 $f0 $93
    jp Jump_000_04d5                              ; $2192: $c3 $d5 $04


    ld hl, $c25c                                  ; $2195: $21 $5c $c2
    inc [hl]                                      ; $2198: $34
    ld a, [hl]                                    ; $2199: $7e
    rra                                           ; $219a: $1f
    jr c, jr_000_21ae                             ; $219b: $38 $11

    and $07                                       ; $219d: $e6 $07
    swap a                                        ; $219f: $cb $37
    ld c, a                                       ; $21a1: $4f
    ld b, $00                                     ; $21a2: $06 $00
    ld hl, $d700                                  ; $21a4: $21 $00 $d7
    add hl, bc                                    ; $21a7: $09
    ld de, $9400                                  ; $21a8: $11 $00 $94
    jp Jump_000_04d5                              ; $21ab: $c3 $d5 $04


jr_000_21ae:
    and $07                                       ; $21ae: $e6 $07
    swap a                                        ; $21b0: $cb $37
    ld c, a                                       ; $21b2: $4f
    ld b, $00                                     ; $21b3: $06 $00
    ld hl, $d780                                  ; $21b5: $21 $80 $d7
    add hl, bc                                    ; $21b8: $09
    ld de, $9410                                  ; $21b9: $11 $10 $94
    jp Jump_000_04d5                              ; $21bc: $c3 $d5 $04


    call Call_000_21e3                            ; $21bf: $cd $e3 $21
    ld de, $9480                                  ; $21c2: $11 $80 $94
    jp Jump_000_04d5                              ; $21c5: $c3 $d5 $04


    call Call_000_21e3                            ; $21c8: $cd $e3 $21
    ld de, $9310                                  ; $21cb: $11 $10 $93
    jp Jump_000_04d5                              ; $21ce: $c3 $d5 $04


    call Call_000_21e3                            ; $21d1: $cd $e3 $21
    ld de, $94f0                                  ; $21d4: $11 $f0 $94
    jp Jump_000_04d5                              ; $21d7: $c3 $d5 $04


    call Call_000_21e3                            ; $21da: $cd $e3 $21
    ld de, $9500                                  ; $21dd: $11 $00 $95
    jp Jump_000_04d5                              ; $21e0: $c3 $d5 $04


Call_000_21e3:
    ld hl, $c25c                                  ; $21e3: $21 $5c $c2
    inc [hl]                                      ; $21e6: $34
    ld a, [hl]                                    ; $21e7: $7e
    rra                                           ; $21e8: $1f
    rra                                           ; $21e9: $1f
    and $07                                       ; $21ea: $e6 $07
    ld c, a                                       ; $21ec: $4f
    ld b, $00                                     ; $21ed: $06 $00
    ld hl, $21f9                                  ; $21ef: $21 $f9 $21
    add hl, bc                                    ; $21f2: $09
    ld c, [hl]                                    ; $21f3: $4e
    ld hl, $d700                                  ; $21f4: $21 $00 $d7
    add hl, bc                                    ; $21f7: $09
    ret                                           ; $21f8: $c9


    nop                                           ; $21f9: $00
    stop                                          ; $21fa: $10 $00
    stop                                          ; $21fc: $10 $00
    db $10                                        ; $21fe: $10
    jr nz, @+$12                                  ; $21ff: $20 $10

Call_000_2201:
    ld hl, $c25c                                  ; $2201: $21 $5c $c2
    inc [hl]                                      ; $2204: $34
    ld a, [hl]                                    ; $2205: $7e
    rra                                           ; $2206: $1f
    jr c, jr_000_2219                             ; $2207: $38 $10

    and $04                                       ; $2209: $e6 $04
    sla a                                         ; $220b: $cb $27
    sla a                                         ; $220d: $cb $27
    ld hl, $d700                                  ; $220f: $21 $00 $d7
    rst RST_28                                    ; $2212: $ef
    ld de, $9320                                  ; $2213: $11 $20 $93
    jp Jump_000_04d5                              ; $2216: $c3 $d5 $04


jr_000_2219:
    and $04                                       ; $2219: $e6 $04
    sla a                                         ; $221b: $cb $27
    sla a                                         ; $221d: $cb $27
    ld hl, $d720                                  ; $221f: $21 $20 $d7
    rst RST_28                                    ; $2222: $ef
    ld de, $9330                                  ; $2223: $11 $30 $93
    jp Jump_000_04d5                              ; $2226: $c3 $d5 $04


Call_000_2229:
    ld a, [$c14b]                                 ; $2229: $fa $4b $c1
    cp $0a                                        ; $222c: $fe $0a
    ret nz                                        ; $222e: $c0

    ld a, [$c542]                                 ; $222f: $fa $42 $c5
    inc a                                         ; $2232: $3c
    ld [$c542], a                                 ; $2233: $ea $42 $c5
    cp $40                                        ; $2236: $fe $40
    jr c, jr_000_2240                             ; $2238: $38 $06

    ld a, $01                                     ; $223a: $3e $01
    ld [$c002], a                                 ; $223c: $ea $02 $c0
    ret                                           ; $223f: $c9


jr_000_2240:
    rra                                           ; $2240: $1f
    ret c                                         ; $2241: $d8

    rra                                           ; $2242: $1f
    ret c                                         ; $2243: $d8

    and $0f                                       ; $2244: $e6 $0f
    add a                                         ; $2246: $87
    ld b, a                                       ; $2247: $47
    ld a, [$c543]                                 ; $2248: $fa $43 $c5
    add b                                         ; $224b: $80
    ld l, a                                       ; $224c: $6f
    ld h, $83                                     ; $224d: $26 $83
    ld e, b                                       ; $224f: $58
    ld d, $87                                     ; $2250: $16 $87
    ld a, [hl+]                                   ; $2252: $2a
    ld [de], a                                    ; $2253: $12
    inc e                                         ; $2254: $1c
    ld a, [hl]                                    ; $2255: $7e
    ld [de], a                                    ; $2256: $12
    ld a, l                                       ; $2257: $7d
    add $1f                                       ; $2258: $c6 $1f
    ld l, a                                       ; $225a: $6f
    ld a, e                                       ; $225b: $7b
    add $1f                                       ; $225c: $c6 $1f
    ld e, a                                       ; $225e: $5f
    ld a, [hl+]                                   ; $225f: $2a
    ld [de], a                                    ; $2260: $12
    inc e                                         ; $2261: $1c
    ld a, [hl]                                    ; $2262: $7e
    ld [de], a                                    ; $2263: $12
    ret                                           ; $2264: $c9


Call_000_2265:
    ld a, [$da02]                                 ; $2265: $fa $02 $da
    cp $24                                        ; $2268: $fe $24
    ld hl, $8240                                  ; $226a: $21 $40 $82
    jr z, jr_000_2280                             ; $226d: $28 $11

    ld a, [$c510]                                 ; $226f: $fa $10 $c5
    rrca                                          ; $2272: $0f
    rrca                                          ; $2273: $0f
    ld l, a                                       ; $2274: $6f
    ld a, [$c14b]                                 ; $2275: $fa $4b $c1
    cp $0a                                        ; $2278: $fe $0a
    ld h, $80                                     ; $227a: $26 $80
    jr nz, jr_000_2280                            ; $227c: $20 $02

    ld h, $83                                     ; $227e: $26 $83

jr_000_2280:
    ld a, [$da00]                                 ; $2280: $fa $00 $da
    and $0f                                       ; $2283: $e6 $0f
    ret z                                         ; $2285: $c8

    sub $10                                       ; $2286: $d6 $10
    cpl                                           ; $2288: $2f
    inc a                                         ; $2289: $3c
    add a                                         ; $228a: $87
    ld e, a                                       ; $228b: $5f
    ld d, $00                                     ; $228c: $16 $00
    add hl, de                                    ; $228e: $19
    xor a                                         ; $228f: $af
    ld [hl+], a                                   ; $2290: $22
    ld [hl-], a                                   ; $2291: $32
    ld e, $20                                     ; $2292: $1e $20
    add hl, de                                    ; $2294: $19
    ld [hl+], a                                   ; $2295: $22
    ld [hl-], a                                   ; $2296: $32
    ret                                           ; $2297: $c9


Call_000_2298:
    call Call_000_22f0                            ; $2298: $cd $f0 $22
    call Call_000_22c6                            ; $229b: $cd $c6 $22
    call Call_000_1224                            ; $229e: $cd $24 $12
    call Call_000_11e1                            ; $22a1: $cd $e1 $11
    call Call_000_1178                            ; $22a4: $cd $78 $11
    call Call_000_1320                            ; $22a7: $cd $20 $13
    call Call_000_2308                            ; $22aa: $cd $08 $23
    call Call_000_2328                            ; $22ad: $cd $28 $23
    call Call_000_245c                            ; $22b0: $cd $5c $24
    call Call_000_24a8                            ; $22b3: $cd $a8 $24
    call Call_000_2626                            ; $22b6: $cd $26 $26
    call Call_000_2724                            ; $22b9: $cd $24 $27
    call $743f                                    ; $22bc: $cd $3f $74
    call Call_000_2981                            ; $22bf: $cd $81 $29
    call $74bb                                    ; $22c2: $cd $bb $74
    ret                                           ; $22c5: $c9


Call_000_22c6:
    ld hl, $c200                                  ; $22c6: $21 $00 $c2
    ld de, $c201                                  ; $22c9: $11 $01 $c2
    ld bc, $0dff                                  ; $22cc: $01 $ff $0d
    ld [hl], $00                                  ; $22cf: $36 $00
    call Call_000_0442                            ; $22d1: $cd $42 $04
    ld hl, $d500                                  ; $22d4: $21 $00 $d5
    ld de, $d501                                  ; $22d7: $11 $01 $d5
    ld bc, $007f                                  ; $22da: $01 $7f $00
    ld [hl], $00                                  ; $22dd: $36 $00
    call Call_000_0442                            ; $22df: $cd $42 $04

Jump_000_22e2:
    ld hl, $d600                                  ; $22e2: $21 $00 $d6
    ld de, $d601                                  ; $22e5: $11 $01 $d6
    ld bc, $007f                                  ; $22e8: $01 $7f $00
    ld [hl], $00                                  ; $22eb: $36 $00
    jp Jump_000_0442                              ; $22ed: $c3 $42 $04


Call_000_22f0:
    ld a, [$c101]                                 ; $22f0: $fa $01 $c1
    dec a                                         ; $22f3: $3d
    and $03                                       ; $22f4: $e6 $03
    ld [$c107], a                                 ; $22f6: $ea $07 $c1

Call_000_22f9:
    call Call_000_19c1                            ; $22f9: $cd $c1 $19
    ld a, [$c107]                                 ; $22fc: $fa $07 $c1
    rst RST_00                                    ; $22ff: $c7
    add d                                         ; $2300: $82
    add hl, de                                    ; $2301: $19
    adc [hl]                                      ; $2302: $8e
    add hl, de                                    ; $2303: $19
    sbc d                                         ; $2304: $9a
    add hl, de                                    ; $2305: $19
    and [hl]                                      ; $2306: $a6
    add hl, de                                    ; $2307: $19

Call_000_2308:
    ld hl, $c449                                  ; $2308: $21 $49 $c4
    ld de, $c44a                                  ; $230b: $11 $4a $c4
    ld bc, $0008                                  ; $230e: $01 $08 $00
    ld a, [$c105]                                 ; $2311: $fa $05 $c1
    ld [hl], a                                    ; $2314: $77
    call Call_000_0442                            ; $2315: $cd $42 $04
    ld a, [$c421]                                 ; $2318: $fa $21 $c4
    cp $05                                        ; $231b: $fe $05
    ret c                                         ; $231d: $d8

    call Call_000_0456                            ; $231e: $cd $56 $04
    ld hl, $c449                                  ; $2321: $21 $49 $c4
    rst RST_28                                    ; $2324: $ef
    ld [hl], $05                                  ; $2325: $36 $05
    ret                                           ; $2327: $c9


Call_000_2328:
    call Call_000_2338                            ; $2328: $cd $38 $23
    call Call_000_23c2                            ; $232b: $cd $c2 $23
    call Call_000_23eb                            ; $232e: $cd $eb $23
    call Call_000_2415                            ; $2331: $cd $15 $24
    call Call_000_2442                            ; $2334: $cd $42 $24
    ret                                           ; $2337: $c9


Call_000_2338:
    ld a, $01                                     ; $2338: $3e $01
    ld [$c201], a                                 ; $233a: $ea $01 $c2
    ld hl, $c430                                  ; $233d: $21 $30 $c4
    ld de, $c4c0                                  ; $2340: $11 $c0 $c4
    ld c, $08                                     ; $2343: $0e $08

jr_000_2345:
    ld b, $08                                     ; $2345: $06 $08
    ld a, [hl+]                                   ; $2347: $2a
    push hl                                       ; $2348: $e5

jr_000_2349:
    push bc                                       ; $2349: $c5
    rla                                           ; $234a: $17
    push af                                       ; $234b: $f5
    push de                                       ; $234c: $d5
    call c, Call_000_235c                         ; $234d: $dc $5c $23
    pop de                                        ; $2350: $d1
    inc de                                        ; $2351: $13
    pop af                                        ; $2352: $f1
    pop bc                                        ; $2353: $c1
    dec b                                         ; $2354: $05
    jr nz, jr_000_2349                            ; $2355: $20 $f2

    pop hl                                        ; $2357: $e1
    dec c                                         ; $2358: $0d
    jr nz, jr_000_2345                            ; $2359: $20 $ea

    ret                                           ; $235b: $c9


Call_000_235c:
    ld a, [$c201]                                 ; $235c: $fa $01 $c2
    ld [de], a                                    ; $235f: $12
    ld hl, $206b                                  ; $2360: $21 $6b $20
    call Call_000_041a                            ; $2363: $cd $1a $04
    ld a, [$c201]                                 ; $2366: $fa $01 $c2
    ld [hl+], a                                   ; $2369: $22
    inc l                                         ; $236a: $2c
    call Call_000_04b7                            ; $236b: $cd $b7 $04
    call Call_000_2384                            ; $236e: $cd $84 $23
    call Call_000_04aa                            ; $2371: $cd $aa $04
    call Call_000_138b                            ; $2374: $cd $8b $13
    ld a, [$c203]                                 ; $2377: $fa $03 $c2
    ld [hl-], a                                   ; $237a: $32
    ld a, [$c202]                                 ; $237b: $fa $02 $c2
    ld [hl], a                                    ; $237e: $77
    ld hl, $c201                                  ; $237f: $21 $01 $c2
    inc [hl]                                      ; $2382: $34
    ret                                           ; $2383: $c9


Call_000_2384:
    push hl                                       ; $2384: $e5
    inc l                                         ; $2385: $2c
    ld a, [$c200]                                 ; $2386: $fa $00 $c2
    ld b, a                                       ; $2389: $47
    ld a, [$c201]                                 ; $238a: $fa $01 $c2
    ld de, $c437                                  ; $238d: $11 $37 $c4
    rst RST_30                                    ; $2390: $f7
    ld a, [de]                                    ; $2391: $1a
    push af                                       ; $2392: $f5
    call Call_000_23a5                            ; $2393: $cd $a5 $23
    ld [hl], a                                    ; $2396: $77
    ld c, a                                       ; $2397: $4f
    ld a, $0a                                     ; $2398: $3e $0a
    rst RST_28                                    ; $239a: $ef
    pop af                                        ; $239b: $f1
    swap a                                        ; $239c: $cb $37
    call Call_000_23a5                            ; $239e: $cd $a5 $23
    ld [hl], a                                    ; $23a1: $77
    pop hl                                        ; $23a2: $e1
    ld a, c                                       ; $23a3: $79
    ret                                           ; $23a4: $c9


Call_000_23a5:
    and $0f                                       ; $23a5: $e6 $0f
    bit 0, b                                      ; $23a7: $cb $40
    jr z, jr_000_23b0                             ; $23a9: $28 $05

    ld de, $61d8                                  ; $23ab: $11 $d8 $61
    rst RST_30                                    ; $23ae: $f7
    ld a, [de]                                    ; $23af: $1a

jr_000_23b0:
    bit 1, b                                      ; $23b0: $cb $48
    jr z, jr_000_23b9                             ; $23b2: $28 $05

    ld de, $61e8                                  ; $23b4: $11 $e8 $61
    rst RST_30                                    ; $23b7: $f7
    ld a, [de]                                    ; $23b8: $1a

jr_000_23b9:
    bit 2, b                                      ; $23b9: $cb $50
    ret z                                         ; $23bb: $c8

    ld de, $61f8                                  ; $23bc: $11 $f8 $61
    rst RST_30                                    ; $23bf: $f7
    ld a, [de]                                    ; $23c0: $1a
    ret                                           ; $23c1: $c9


Call_000_23c2:
    ld a, [$c200]                                 ; $23c2: $fa $00 $c2
    bit 0, a                                      ; $23c5: $cb $47
    ret z                                         ; $23c7: $c8

    ld hl, $c4c0                                  ; $23c8: $21 $c0 $c4
    ld de, $d000                                  ; $23cb: $11 $00 $d0
    ld bc, $0040                                  ; $23ce: $01 $40 $00
    call Call_000_0442                            ; $23d1: $cd $42 $04
    ld hl, $d000                                  ; $23d4: $21 $00 $d0
    ld de, $c4f8                                  ; $23d7: $11 $f8 $c4
    ld b, $08                                     ; $23da: $06 $08

jr_000_23dc:
    push bc                                       ; $23dc: $c5
    ld bc, $0008                                  ; $23dd: $01 $08 $00
    call Call_000_0442                            ; $23e0: $cd $42 $04

Call_000_23e3:
    ld a, $10                                     ; $23e3: $3e $10
    rst RST_18                                    ; $23e5: $df
    pop bc                                        ; $23e6: $c1
    dec b                                         ; $23e7: $05
    jr nz, jr_000_23dc                            ; $23e8: $20 $f2

    ret                                           ; $23ea: $c9


Call_000_23eb:
    ld a, [$c200]                                 ; $23eb: $fa $00 $c2
    bit 1, a                                      ; $23ee: $cb $4f
    ret z                                         ; $23f0: $c8

    ld hl, $c4c0                                  ; $23f1: $21 $c0 $c4
    ld de, $d000                                  ; $23f4: $11 $00 $d0
    ld bc, $0040                                  ; $23f7: $01 $40 $00
    call Call_000_0442                            ; $23fa: $cd $42 $04
    ld hl, $d000                                  ; $23fd: $21 $00 $d0

Call_000_2400:
    ld de, $c4c7                                  ; $2400: $11 $c7 $c4
    ld c, $08                                     ; $2403: $0e $08

jr_000_2405:
    ld b, $08                                     ; $2405: $06 $08

jr_000_2407:
    ld a, [hl+]                                   ; $2407: $2a
    ld [de], a                                    ; $2408: $12
    dec e                                         ; $2409: $1d
    dec b                                         ; $240a: $05
    jr nz, jr_000_2407                            ; $240b: $20 $fa

    ld a, e                                       ; $240d: $7b
    add $10                                       ; $240e: $c6 $10
    ld e, a                                       ; $2410: $5f
    dec c                                         ; $2411: $0d
    jr nz, jr_000_2405                            ; $2412: $20 $f1

    ret                                           ; $2414: $c9


Call_000_2415:
    ld a, [$c200]                                 ; $2415: $fa $00 $c2
    bit 2, a                                      ; $2418: $cb $57
    ret z                                         ; $241a: $c8

    ld hl, $c4c0                                  ; $241b: $21 $c0 $c4
    ld de, $d000                                  ; $241e: $11 $00 $d0
    ld bc, $0040                                  ; $2421: $01 $40 $00
    call Call_000_0442                            ; $2424: $cd $42 $04
    ld hl, $d000                                  ; $2427: $21 $00 $d0
    ld de, $c4f8                                  ; $242a: $11 $f8 $c4
    ld c, $08                                     ; $242d: $0e $08

jr_000_242f:
    ld b, $08                                     ; $242f: $06 $08

jr_000_2431:
    ld a, [hl+]                                   ; $2431: $2a
    ld [de], a                                    ; $2432: $12
    ld a, e                                       ; $2433: $7b
    sub $08                                       ; $2434: $d6 $08
    ld e, a                                       ; $2436: $5f
    dec b                                         ; $2437: $05
    jr nz, jr_000_2431                            ; $2438: $20 $f7

    ld a, e                                       ; $243a: $7b
    add $41                                       ; $243b: $c6 $41
    ld e, a                                       ; $243d: $5f
    dec c                                         ; $243e: $0d
    jr nz, jr_000_242f                            ; $243f: $20 $ee

    ret                                           ; $2441: $c9


Call_000_2442:
    ld de, $c4c0                                  ; $2442: $11 $c0 $c4
    ld b, $40                                     ; $2445: $06 $40

jr_000_2447:
    ld a, [de]                                    ; $2447: $1a
    or a                                          ; $2448: $b7
    jr z, jr_000_2457                             ; $2449: $28 $0c

    ld hl, $206b                                  ; $244b: $21 $6b $20
    call Call_000_041a                            ; $244e: $cd $1a $04
    ld a, $0e                                     ; $2451: $3e $0e
    rst RST_28                                    ; $2453: $ef
    ld [hl], e                                    ; $2454: $73
    inc l                                         ; $2455: $2c
    ld [hl], d                                    ; $2456: $72

jr_000_2457:
    inc e                                         ; $2457: $1c
    dec b                                         ; $2458: $05
    jr nz, jr_000_2447                            ; $2459: $20 $ec

    ret                                           ; $245b: $c9


Call_000_245c:
    ld hl, $c300                                  ; $245c: $21 $00 $c3
    ld b, $09                                     ; $245f: $06 $09

jr_000_2461:
    push bc                                       ; $2461: $c5
    push hl                                       ; $2462: $e5
    call Call_000_246f                            ; $2463: $cd $6f $24
    pop hl                                        ; $2466: $e1
    ld a, $20                                     ; $2467: $3e $20
    rst RST_28                                    ; $2469: $ef
    pop bc                                        ; $246a: $c1
    dec b                                         ; $246b: $05
    jr nz, jr_000_2461                            ; $246c: $20 $f3

    ret                                           ; $246e: $c9


Call_000_246f:
    ld a, [hl+]                                   ; $246f: $2a
    or a                                          ; $2470: $b7
    ret z                                         ; $2471: $c8

    ld a, [hl+]                                   ; $2472: $2a
    ld b, [hl]                                    ; $2473: $46
    inc hl                                        ; $2474: $23
    inc hl                                        ; $2475: $23
    push hl                                       ; $2476: $e5
    call Call_000_12b2                            ; $2477: $cd $b2 $12
    pop hl                                        ; $247a: $e1
    push hl                                       ; $247b: $e5
    call Call_000_2486                            ; $247c: $cd $86 $24
    pop hl                                        ; $247f: $e1
    inc hl                                        ; $2480: $23
    inc hl                                        ; $2481: $23
    call Call_000_2497                            ; $2482: $cd $97 $24
    ret                                           ; $2485: $c9


Call_000_2486:
    rr b                                          ; $2486: $cb $18
    ret nc                                        ; $2488: $d0

    ld a, [hl+]                                   ; $2489: $2a
    sub $07                                       ; $248a: $d6 $07
    cpl                                           ; $248c: $2f
    inc a                                         ; $248d: $3c
    ld e, a                                       ; $248e: $5f
    ld a, [hl-]                                   ; $248f: $3a
    sub $07                                       ; $2490: $d6 $07
    cpl                                           ; $2492: $2f
    inc a                                         ; $2493: $3c
    ld [hl+], a                                   ; $2494: $22
    ld [hl], e                                    ; $2495: $73
    ret                                           ; $2496: $c9


Call_000_2497:
    rr b                                          ; $2497: $cb $18
    ret nc                                        ; $2499: $d0

    ld a, [hl+]                                   ; $249a: $2a
    sub $09                                       ; $249b: $d6 $09
    cpl                                           ; $249d: $2f
    inc a                                         ; $249e: $3c
    ld e, a                                       ; $249f: $5f
    ld a, [hl-]                                   ; $24a0: $3a
    sub $09                                       ; $24a1: $d6 $09
    cpl                                           ; $24a3: $2f

Call_000_24a4:
    inc a                                         ; $24a4: $3c
    ld [hl+], a                                   ; $24a5: $22
    ld [hl], e                                    ; $24a6: $73
    ret                                           ; $24a7: $c9


Call_000_24a8:
    ld hl, $c300                                  ; $24a8: $21 $00 $c3
    ld b, $09                                     ; $24ab: $06 $09

jr_000_24ad:
    push bc                                       ; $24ad: $c5
    push hl                                       ; $24ae: $e5
    call Call_000_24bb                            ; $24af: $cd $bb $24
    pop hl                                        ; $24b2: $e1
    ld a, $20                                     ; $24b3: $3e $20
    rst RST_28                                    ; $24b5: $ef
    pop bc                                        ; $24b6: $c1
    dec b                                         ; $24b7: $05
    jr nz, jr_000_24ad                            ; $24b8: $20 $f3

    ret                                           ; $24ba: $c9


Call_000_24bb:
    ld a, l                                       ; $24bb: $7d
    ld [$c205], a                                 ; $24bc: $ea $05 $c2
    ld a, h                                       ; $24bf: $7c
    ld [$c206], a                                 ; $24c0: $ea $06 $c2

Call_000_24c3:
    ld a, [hl+]                                   ; $24c3: $2a
    or a                                          ; $24c4: $b7
    ret z                                         ; $24c5: $c8

    inc hl                                        ; $24c6: $23
    inc hl                                        ; $24c7: $23
    ld b, [hl]                                    ; $24c8: $46
    ld a, $05                                     ; $24c9: $3e $05
    rst RST_28                                    ; $24cb: $ef
    ld a, [hl]                                    ; $24cc: $7e
    xor b                                         ; $24cd: $a8
    ld [$c204], a                                 ; $24ce: $ea $04 $c2
    ld a, [$c204]                                 ; $24d1: $fa $04 $c2
    rra                                           ; $24d4: $1f
    ld [$c204], a                                 ; $24d5: $ea $04 $c2
    call c, Call_000_24fa                         ; $24d8: $dc $fa $24
    ld a, [$c204]                                 ; $24db: $fa $04 $c2
    rra                                           ; $24de: $1f
    ld [$c204], a                                 ; $24df: $ea $04 $c2
    call c, Call_000_25a2                         ; $24e2: $dc $a2 $25
    ld a, [$c204]                                 ; $24e5: $fa $04 $c2
    rra                                           ; $24e8: $1f
    ld [$c204], a                                 ; $24e9: $ea $04 $c2
    call c, Call_000_255e                         ; $24ec: $dc $5e $25
    ld a, [$c204]                                 ; $24ef: $fa $04 $c2
    rra                                           ; $24f2: $1f
    ld [$c204], a                                 ; $24f3: $ea $04 $c2
    call c, Call_000_25e4                         ; $24f6: $dc $e4 $25
    ret                                           ; $24f9: $c9


Call_000_24fa:
    ld hl, $c205                                  ; $24fa: $21 $05 $c2
    rst RST_08                                    ; $24fd: $cf
    ld a, $0e                                     ; $24fe: $3e $0e
    rst RST_28                                    ; $2500: $ef
    ld c, [hl]                                    ; $2501: $4e
    inc hl                                        ; $2502: $23
    ld b, [hl]                                    ; $2503: $46
    ld a, $08                                     ; $2504: $3e $08
    rst RST_20                                    ; $2506: $e7
    ld a, [bc]                                    ; $2507: $0a
    ld hl, $206b                                  ; $2508: $21 $6b $20
    call Call_000_041e_WordTableLookupToDE                            ; $250b: $cd $1e $04
    ld a, e                                       ; $250e: $7b
    ld [$c207], a                                 ; $250f: $ea $07 $c2
    ld a, d                                       ; $2512: $7a
    ld [$c208], a                                 ; $2513: $ea $08 $c2
    ld hl, $c205                                  ; $2516: $21 $05 $c2
    rst RST_08                                    ; $2519: $cf
    ld a, $06                                     ; $251a: $3e $06
    rst RST_28                                    ; $251c: $ef
    ld a, $06                                     ; $251d: $3e $06
    rst RST_30                                    ; $251f: $f7
    call Call_000_253e                            ; $2520: $cd $3e $25
    ld hl, $c205                                  ; $2523: $21 $05 $c2
    rst RST_08                                    ; $2526: $cf
    ld a, $08                                     ; $2527: $3e $08
    rst RST_28                                    ; $2529: $ef
    set 0, [hl]                                   ; $252a: $cb $c6
    ld a, $01                                     ; $252c: $3e $01
    rst RST_28                                    ; $252e: $ef
    ld [hl], b                                    ; $252f: $70
    ld hl, $c207                                  ; $2530: $21 $07 $c2
    rst RST_08                                    ; $2533: $cf
    ld a, $08                                     ; $2534: $3e $08
    rst RST_28                                    ; $2536: $ef

Jump_000_2537:
    set 2, [hl]                                   ; $2537: $cb $d6
    ld a, $03                                     ; $2539: $3e $03
    rst RST_28                                    ; $253b: $ef
    ld [hl], b                                    ; $253c: $70
    ret                                           ; $253d: $c9


Call_000_253e:
    ld a, [de]                                    ; $253e: $1a
    cp [hl]                                       ; $253f: $be
    jr nc, jr_000_2543                            ; $2540: $30 $01

    ld a, [hl]                                    ; $2542: $7e

jr_000_2543:
    push af                                       ; $2543: $f5
    inc de                                        ; $2544: $13
    inc hl                                        ; $2545: $23
    ld a, [de]                                    ; $2546: $1a
    cp [hl]                                       ; $2547: $be
    jr c, jr_000_254b                             ; $2548: $38 $01

    ld a, [hl]                                    ; $254a: $7e

jr_000_254b:
    pop bc                                        ; $254b: $c1
    ld c, a                                       ; $254c: $4f
    ld a, c                                       ; $254d: $79
    sub b                                         ; $254e: $90
    ret z                                         ; $254f: $c8

    ld c, a                                       ; $2550: $4f
    call Call_000_0455                            ; $2551: $cd $55 $04
    and $1f                                       ; $2554: $e6 $1f

jr_000_2556:
    sub c                                         ; $2556: $91
    jr nc, jr_000_2556                            ; $2557: $30 $fd

    cpl                                           ; $2559: $2f
    inc a                                         ; $255a: $3c
    add b                                         ; $255b: $80
    ld b, a                                       ; $255c: $47
    ret                                           ; $255d: $c9


Call_000_255e:
    ld hl, $c205                                  ; $255e: $21 $05 $c2
    rst RST_08                                    ; $2561: $cf
    ld a, $0e                                     ; $2562: $3e $0e
    rst RST_28                                    ; $2564: $ef
    ld c, [hl]                                    ; $2565: $4e
    inc hl                                        ; $2566: $23
    ld b, [hl]                                    ; $2567: $46
    ld a, $08                                     ; $2568: $3e $08
    rst RST_38                                    ; $256a: $ff
    ld a, [bc]                                    ; $256b: $0a
    ld hl, $206b                                  ; $256c: $21 $6b $20
    call Call_000_041e_WordTableLookupToDE                            ; $256f: $cd $1e $04
    ld a, e                                       ; $2572: $7b
    ld [$c207], a                                 ; $2573: $ea $07 $c2
    ld a, d                                       ; $2576: $7a
    ld [$c208], a                                 ; $2577: $ea $08 $c2
    ld hl, $c205                                  ; $257a: $21 $05 $c2
    rst RST_08                                    ; $257d: $cf
    ld a, $06                                     ; $257e: $3e $06
    rst RST_28                                    ; $2580: $ef
    ld a, $06                                     ; $2581: $3e $06
    rst RST_30                                    ; $2583: $f7
    call Call_000_253e                            ; $2584: $cd $3e $25
    ld hl, $c205                                  ; $2587: $21 $05 $c2
    rst RST_08                                    ; $258a: $cf
    ld a, $08                                     ; $258b: $3e $08
    rst RST_28                                    ; $258d: $ef
    set 2, [hl]                                   ; $258e: $cb $d6
    ld a, $03                                     ; $2590: $3e $03
    rst RST_28                                    ; $2592: $ef
    ld [hl], b                                    ; $2593: $70
    ld hl, $c207                                  ; $2594: $21 $07 $c2
    rst RST_08                                    ; $2597: $cf
    ld a, $08                                     ; $2598: $3e $08
    rst RST_28                                    ; $259a: $ef
    set 0, [hl]                                   ; $259b: $cb $c6
    ld a, $01                                     ; $259d: $3e $01
    rst RST_28                                    ; $259f: $ef
    ld [hl], b                                    ; $25a0: $70
    ret                                           ; $25a1: $c9


Call_000_25a2:
    ld hl, $c205                                  ; $25a2: $21 $05 $c2
    rst RST_08                                    ; $25a5: $cf
    ld a, $0e                                     ; $25a6: $3e $0e
    rst RST_28                                    ; $25a8: $ef
    ld c, [hl]                                    ; $25a9: $4e
    inc hl                                        ; $25aa: $23
    ld b, [hl]                                    ; $25ab: $46
    inc bc                                        ; $25ac: $03
    ld a, [bc]                                    ; $25ad: $0a
    ld hl, $206b                                  ; $25ae: $21 $6b $20
    call Call_000_041e_WordTableLookupToDE                            ; $25b1: $cd $1e $04
    ld a, e                                       ; $25b4: $7b
    ld [$c207], a                                 ; $25b5: $ea $07 $c2
    ld a, d                                       ; $25b8: $7a
    ld [$c208], a                                 ; $25b9: $ea $08 $c2
    ld hl, $c205                                  ; $25bc: $21 $05 $c2
    rst RST_08                                    ; $25bf: $cf
    ld a, $04                                     ; $25c0: $3e $04
    rst RST_28                                    ; $25c2: $ef
    ld a, $04                                     ; $25c3: $3e $04
    rst RST_30                                    ; $25c5: $f7
    call Call_000_253e                            ; $25c6: $cd $3e $25
    ld hl, $c205                                  ; $25c9: $21 $05 $c2
    rst RST_08                                    ; $25cc: $cf
    ld a, $08                                     ; $25cd: $3e $08
    rst RST_28                                    ; $25cf: $ef
    set 1, [hl]                                   ; $25d0: $cb $ce
    ld a, $02                                     ; $25d2: $3e $02
    rst RST_28                                    ; $25d4: $ef
    ld [hl], b                                    ; $25d5: $70
    ld hl, $c207                                  ; $25d6: $21 $07 $c2
    rst RST_08                                    ; $25d9: $cf
    ld a, $08                                     ; $25da: $3e $08
    rst RST_28                                    ; $25dc: $ef
    set 3, [hl]                                   ; $25dd: $cb $de
    ld a, $04                                     ; $25df: $3e $04
    rst RST_28                                    ; $25e1: $ef
    ld [hl], b                                    ; $25e2: $70
    ret                                           ; $25e3: $c9


Call_000_25e4:
    ld hl, $c205                                  ; $25e4: $21 $05 $c2
    rst RST_08                                    ; $25e7: $cf
    ld a, $0e                                     ; $25e8: $3e $0e
    rst RST_28                                    ; $25ea: $ef
    ld c, [hl]                                    ; $25eb: $4e
    inc hl                                        ; $25ec: $23
    ld b, [hl]                                    ; $25ed: $46
    dec bc                                        ; $25ee: $0b
    ld a, [bc]                                    ; $25ef: $0a
    ld hl, $206b                                  ; $25f0: $21 $6b $20
    call Call_000_041e_WordTableLookupToDE                            ; $25f3: $cd $1e $04
    ld a, e                                       ; $25f6: $7b
    ld [$c207], a                                 ; $25f7: $ea $07 $c2
    ld a, d                                       ; $25fa: $7a
    ld [$c208], a                                 ; $25fb: $ea $08 $c2
    ld hl, $c205                                  ; $25fe: $21 $05 $c2
    rst RST_08                                    ; $2601: $cf
    ld a, $04                                     ; $2602: $3e $04
    rst RST_28                                    ; $2604: $ef
    ld a, $04                                     ; $2605: $3e $04
    rst RST_30                                    ; $2607: $f7
    call Call_000_253e                            ; $2608: $cd $3e $25
    ld hl, $c205                                  ; $260b: $21 $05 $c2
    rst RST_08                                    ; $260e: $cf
    ld a, $08                                     ; $260f: $3e $08
    rst RST_28                                    ; $2611: $ef
    set 3, [hl]                                   ; $2612: $cb $de
    ld a, $04                                     ; $2614: $3e $04
    rst RST_28                                    ; $2616: $ef
    ld [hl], b                                    ; $2617: $70
    ld hl, $c207                                  ; $2618: $21 $07 $c2
    rst RST_08                                    ; $261b: $cf
    ld a, $08                                     ; $261c: $3e $08
    rst RST_28                                    ; $261e: $ef
    set 1, [hl]                                   ; $261f: $cb $ce
    ld a, $02                                     ; $2621: $3e $02
    rst RST_28                                    ; $2623: $ef
    ld [hl], b                                    ; $2624: $70
    ret                                           ; $2625: $c9


Call_000_2626:
    ld a, $01                                     ; $2626: $3e $01
    ld [$c201], a                                 ; $2628: $ea $01 $c2
    ld hl, $c300                                  ; $262b: $21 $00 $c3
    ld b, $09                                     ; $262e: $06 $09

jr_000_2630:
    push bc                                       ; $2630: $c5
    push hl                                       ; $2631: $e5
    call Call_000_263e                            ; $2632: $cd $3e $26
    pop hl                                        ; $2635: $e1
    ld a, $20                                     ; $2636: $3e $20
    rst RST_28                                    ; $2638: $ef
    pop bc                                        ; $2639: $c1
    dec b                                         ; $263a: $05
    jr nz, jr_000_2630                            ; $263b: $20 $f3

    ret                                           ; $263d: $c9


Call_000_263e:
    ld a, [hl+]                                   ; $263e: $2a
    or a                                          ; $263f: $b7
    ret z                                         ; $2640: $c8

    ld a, [hl+]                                   ; $2641: $2a
    ld [$c202], a                                 ; $2642: $ea $02 $c2
    ld a, [hl]                                    ; $2645: $7e
    ld [$c203], a                                 ; $2646: $ea $03 $c2
    call Call_000_1288                            ; $2649: $cd $88 $12
    call Call_000_04b7                            ; $264c: $cd $b7 $04
    call Call_000_269c                            ; $264f: $cd $9c $26
    call Call_000_2660                            ; $2652: $cd $60 $26
    call Call_000_04aa                            ; $2655: $cd $aa $04
    call Call_000_26d9                            ; $2658: $cd $d9 $26
    ld hl, $c201                                  ; $265b: $21 $01 $c2
    inc [hl]                                      ; $265e: $34
    ret                                           ; $265f: $c9


Call_000_2660:
    ld a, [$c203]                                 ; $2660: $fa $03 $c2
    rra                                           ; $2663: $1f
    ret nc                                        ; $2664: $d0

    ld a, [$c201]                                 ; $2665: $fa $01 $c2
    ld hl, $2047                                  ; $2668: $21 $47 $20
    call Call_000_041a                            ; $266b: $cd $1a $04
    ld e, l                                       ; $266e: $5d
    ld d, h                                       ; $266f: $54
    ld a, $e0                                     ; $2670: $3e $e0
    rst RST_30                                    ; $2672: $f7
    ld b, $04                                     ; $2673: $06 $04

jr_000_2675:
    push bc                                       ; $2675: $c5
    call Call_000_267e                            ; $2676: $cd $7e $26
    pop bc                                        ; $2679: $c1
    dec b                                         ; $267a: $05
    jr nz, jr_000_2675                            ; $267b: $20 $f8

    ret                                           ; $267d: $c9


Call_000_267e:
    ld b, $0a                                     ; $267e: $06 $0a

jr_000_2680:
    push hl                                       ; $2680: $e5
    ld a, [hl]                                    ; $2681: $7e
    ld hl, $6232                                  ; $2682: $21 $32 $62
    rst RST_28                                    ; $2685: $ef
    ld c, [hl]                                    ; $2686: $4e
    ld a, [de]                                    ; $2687: $1a
    ld hl, $6232                                  ; $2688: $21 $32 $62
    rst RST_28                                    ; $268b: $ef
    ld a, [hl]                                    ; $268c: $7e
    pop hl                                        ; $268d: $e1
    ld [hl+], a                                   ; $268e: $22
    ld a, c                                       ; $268f: $79
    ld [de], a                                    ; $2690: $12
    inc e                                         ; $2691: $1c
    dec b                                         ; $2692: $05
    jr nz, jr_000_2680                            ; $2693: $20 $eb

    ld a, $16                                     ; $2695: $3e $16
    rst RST_28                                    ; $2697: $ef
    ld a, $2a                                     ; $2698: $3e $2a
    rst RST_18                                    ; $269a: $df
    ret                                           ; $269b: $c9


Call_000_269c:
    ld a, [$c203]                                 ; $269c: $fa $03 $c2
    rra                                           ; $269f: $1f
    rra                                           ; $26a0: $1f
    ret nc                                        ; $26a1: $d0

    ld a, [$c201]                                 ; $26a2: $fa $01 $c2
    ld hl, $2047                                  ; $26a5: $21 $47 $20
    call Call_000_041a                            ; $26a8: $cd $1a $04
    ld e, l                                       ; $26ab: $5d
    ld d, h                                       ; $26ac: $54
    ld a, $09                                     ; $26ad: $3e $09
    rst RST_30                                    ; $26af: $f7
    ld b, $08                                     ; $26b0: $06 $08

jr_000_26b2:
    push bc                                       ; $26b2: $c5
    call Call_000_26bb                            ; $26b3: $cd $bb $26
    pop bc                                        ; $26b6: $c1
    dec b                                         ; $26b7: $05
    jr nz, jr_000_26b2                            ; $26b8: $20 $f8

    ret                                           ; $26ba: $c9


Call_000_26bb:
    ld b, $05                                     ; $26bb: $06 $05

jr_000_26bd:
    push hl                                       ; $26bd: $e5
    ld a, [hl]                                    ; $26be: $7e
    ld hl, $625d                                  ; $26bf: $21 $5d $62
    rst RST_28                                    ; $26c2: $ef
    ld c, [hl]                                    ; $26c3: $4e
    ld a, [de]                                    ; $26c4: $1a
    ld hl, $625d                                  ; $26c5: $21 $5d $62
    rst RST_28                                    ; $26c8: $ef
    ld a, [hl]                                    ; $26c9: $7e
    pop hl                                        ; $26ca: $e1
    ld [hl+], a                                   ; $26cb: $22
    ld a, c                                       ; $26cc: $79
    ld [de], a                                    ; $26cd: $12
    dec e                                         ; $26ce: $1d
    dec b                                         ; $26cf: $05
    jr nz, jr_000_26bd                            ; $26d0: $20 $eb

    ld a, $1b                                     ; $26d2: $3e $1b
    rst RST_28                                    ; $26d4: $ef
    ld a, $25                                     ; $26d5: $3e $25
    rst RST_30                                    ; $26d7: $f7
    ret                                           ; $26d8: $c9


Call_000_26d9:
    ld a, [$c201]                                 ; $26d9: $fa $01 $c2
    ld hl, $2047                                  ; $26dc: $21 $47 $20
    call Call_000_041a                            ; $26df: $cd $1a $04
    ld b, $0a                                     ; $26e2: $06 $0a

jr_000_26e4:
    push hl                                       ; $26e4: $e5
    push bc                                       ; $26e5: $c5
    call Call_000_26f0                            ; $26e6: $cd $f0 $26
    pop bc                                        ; $26e9: $c1
    pop hl                                        ; $26ea: $e1
    inc hl                                        ; $26eb: $23
    dec b                                         ; $26ec: $05
    jr nz, jr_000_26e4                            ; $26ed: $20 $f5

    ret                                           ; $26ef: $c9


Call_000_26f0:
    ld bc, $0800                                  ; $26f0: $01 $00 $08

jr_000_26f3:
    push hl                                       ; $26f3: $e5
    call Call_000_2707                            ; $26f4: $cd $07 $27
    jr nz, jr_000_26ff                            ; $26f7: $20 $06

    ld a, c                                       ; $26f9: $79
    or a                                          ; $26fa: $b7
    jr nz, jr_000_26ff                            ; $26fb: $20 $02

    inc c                                         ; $26fd: $0c

Jump_000_26fe:
    ld [hl], d                                    ; $26fe: $72

Jump_000_26ff:
jr_000_26ff:
    pop hl                                        ; $26ff: $e1
    ld a, $20                                     ; $2700: $3e $20
    rst RST_28                                    ; $2702: $ef
    dec b                                         ; $2703: $05
    jr nz, jr_000_26f3                            ; $2704: $20 $ed

    ret                                           ; $2706: $c9


Call_000_2707:
    ld a, [hl]                                    ; $2707: $7e
    cp $2a                                        ; $2708: $fe $2a
    jr nz, jr_000_270e                            ; $270a: $20 $02

    ld [hl], $07                                  ; $270c: $36 $07

jr_000_270e:
    ld d, $1b                                     ; $270e: $16 $1b
    ld a, [hl]                                    ; $2710: $7e
    cp $19                                        ; $2711: $fe $19
    ret z                                         ; $2713: $c8

    cp $1a                                        ; $2714: $fe $1a
    ret z                                         ; $2716: $c8

    ld d, $0e                                     ; $2717: $16 $0e
    cp $1e                                        ; $2719: $fe $1e
    ret z                                         ; $271b: $c8

    ld d, $1d                                     ; $271c: $16 $1d
    cp $23                                        ; $271e: $fe $23
    ret z                                         ; $2720: $c8

    ld c, $00                                     ; $2721: $0e $00
    ret                                           ; $2723: $c9


Call_000_2724:
    call Call_000_04b7                            ; $2724: $cd $b7 $04
    ld a, $01                                     ; $2727: $3e $01
    ld [$c201], a                                 ; $2729: $ea $01 $c2
    ld hl, $c300                                  ; $272c: $21 $00 $c3
    ld b, $09                                     ; $272f: $06 $09
    ld c, $00                                     ; $2731: $0e $00

jr_000_2733:
    ld a, $80                                     ; $2733: $3e $80
    ld [$c20b], a                                 ; $2735: $ea $0b $c2
    ld [$c20c], a                                 ; $2738: $ea $0c $c2
    ld [$c20d], a                                 ; $273b: $ea $0d $c2
    ld [$c20e], a                                 ; $273e: $ea $0e $c2
    push bc                                       ; $2741: $c5
    push hl                                       ; $2742: $e5
    call Call_000_2776                            ; $2743: $cd $76 $27
    pop hl                                        ; $2746: $e1
    call Call_000_2752                            ; $2747: $cd $52 $27
    pop bc                                        ; $274a: $c1
    inc c                                         ; $274b: $0c
    dec b                                         ; $274c: $05
    jr nz, jr_000_2733                            ; $274d: $20 $e4

    jp Jump_000_04aa                              ; $274f: $c3 $aa $04


Call_000_2752:
    ld e, l                                       ; $2752: $5d
    ld d, h                                       ; $2753: $54
    ld a, $09                                     ; $2754: $3e $09
    rst RST_30                                    ; $2756: $f7
    ld a, $18                                     ; $2757: $3e $18
    rst RST_28                                    ; $2759: $ef
    ld a, [$c20b]                                 ; $275a: $fa $0b $c2
    ld [hl+], a                                   ; $275d: $22
    ld a, [de]                                    ; $275e: $1a
    ld [hl+], a                                   ; $275f: $22
    inc e                                         ; $2760: $1c
    ld a, [de]                                    ; $2761: $1a
    ld [hl+], a                                   ; $2762: $22
    inc e                                         ; $2763: $1c
    ld a, [$c20d]                                 ; $2764: $fa $0d $c2
    ld [hl+], a                                   ; $2767: $22
    ld a, [$c20c]                                 ; $2768: $fa $0c $c2
    ld [hl+], a                                   ; $276b: $22
    ld a, [de]                                    ; $276c: $1a
    ld [hl+], a                                   ; $276d: $22
    inc e                                         ; $276e: $1c
    ld a, [de]                                    ; $276f: $1a
    ld [hl+], a                                   ; $2770: $22
    ld a, [$c20e]                                 ; $2771: $fa $0e $c2
    ld [hl+], a                                   ; $2774: $22
    ret                                           ; $2775: $c9


Call_000_2776:
    ld a, [hl]                                    ; $2776: $7e
    or a                                          ; $2777: $b7
    ret z                                         ; $2778: $c8

    ld a, $0d                                     ; $2779: $3e $0d
    rst RST_28                                    ; $277b: $ef
    ld a, [hl]                                    ; $277c: $7e
    ld [$c20a], a                                 ; $277d: $ea $0a $c2
    ld a, $0a                                     ; $2780: $3e $0a
    rst RST_10                                    ; $2782: $d7
    ld a, [hl]                                    ; $2783: $7e
    ld [$c209], a                                 ; $2784: $ea $09 $c2
    push hl                                       ; $2787: $e5
    bit 0, [hl]                                   ; $2788: $cb $46
    call nz, Call_000_27a6                        ; $278a: $c4 $a6 $27
    pop hl                                        ; $278d: $e1
    push hl                                       ; $278e: $e5
    bit 1, [hl]                                   ; $278f: $cb $4e
    call nz, Call_000_27ce                        ; $2791: $c4 $ce $27
    pop hl                                        ; $2794: $e1
    push hl                                       ; $2795: $e5
    bit 2, [hl]                                   ; $2796: $cb $56
    call nz, Call_000_27b9                        ; $2798: $c4 $b9 $27
    pop hl                                        ; $279b: $e1
    bit 3, [hl]                                   ; $279c: $cb $5e
    call nz, Call_000_27e8                        ; $279e: $c4 $e8 $27
    ld hl, $c201                                  ; $27a1: $21 $01 $c2
    inc [hl]                                      ; $27a4: $34
    ret                                           ; $27a5: $c9


Call_000_27a6:
    ld a, $06                                     ; $27a6: $3e $06
    rst RST_28                                    ; $27a8: $ef
    ld c, [hl]                                    ; $27a9: $4e
    ld a, [$c201]                                 ; $27aa: $fa $01 $c2
    ld hl, $2047                                  ; $27ad: $21 $47 $20
    call Call_000_041a                            ; $27b0: $cd $1a $04
    ld a, c                                       ; $27b3: $79
    rst RST_28                                    ; $27b4: $ef
    call Call_000_2896                            ; $27b5: $cd $96 $28
    ret                                           ; $27b8: $c9


Call_000_27b9:
    ld a, $08                                     ; $27b9: $3e $08
    rst RST_28                                    ; $27bb: $ef
    ld c, [hl]                                    ; $27bc: $4e
    ld a, [$c201]                                 ; $27bd: $fa $01 $c2
    ld hl, $2047                                  ; $27c0: $21 $47 $20
    call Call_000_041a                            ; $27c3: $cd $1a $04
    ld a, c                                       ; $27c6: $79
    add $e0                                       ; $27c7: $c6 $e0
    rst RST_28                                    ; $27c9: $ef
    call Call_000_2867                            ; $27ca: $cd $67 $28
    ret                                           ; $27cd: $c9


Call_000_27ce:
    ld a, $07                                     ; $27ce: $3e $07
    rst RST_28                                    ; $27d0: $ef
    ld c, [hl]                                    ; $27d1: $4e
    ld a, [$c201]                                 ; $27d2: $fa $01 $c2
    ld hl, $2047                                  ; $27d5: $21 $47 $20

Call_000_27d8:
    call Call_000_041a                            ; $27d8: $cd $1a $04
    ld a, c                                       ; $27db: $79
    add a                                         ; $27dc: $87
    add a                                         ; $27dd: $87
    add a                                         ; $27de: $87
    add a                                         ; $27df: $87
    add a                                         ; $27e0: $87
    add $09                                       ; $27e1: $c6 $09
    rst RST_28                                    ; $27e3: $ef
    call Call_000_2800                            ; $27e4: $cd $00 $28
    ret                                           ; $27e7: $c9


Call_000_27e8:
    ld a, $09                                     ; $27e8: $3e $09
    rst RST_28                                    ; $27ea: $ef
    ld c, [hl]                                    ; $27eb: $4e
    ld a, [$c201]                                 ; $27ec: $fa $01 $c2
    ld hl, $2047                                  ; $27ef: $21 $47 $20
    call Call_000_041a                            ; $27f2: $cd $1a $04
    ld a, c                                       ; $27f5: $79
    add a                                         ; $27f6: $87
    add a                                         ; $27f7: $87
    add a                                         ; $27f8: $87
    add a                                         ; $27f9: $87
    add a                                         ; $27fa: $87
    rst RST_28                                    ; $27fb: $ef
    call Call_000_282a                            ; $27fc: $cd $2a $28
    ret                                           ; $27ff: $c9


Call_000_2800:
jr_000_2800:
    ld c, $0a                                     ; $2800: $0e $0a
    ld a, [$c20a]                                 ; $2802: $fa $0a $c2
    bit 1, a                                      ; $2805: $cb $4f
    jr z, jr_000_281d                             ; $2807: $28 $14

    ld a, [hl]                                    ; $2809: $7e
    cp $09                                        ; $280a: $fe $09
    ret z                                         ; $280c: $c8

    call Call_000_2813                            ; $280d: $cd $13 $28
    dec l                                         ; $2810: $2d
    jr jr_000_2800                                ; $2811: $18 $ed

Call_000_2813:
    ld de, $6288                                  ; $2813: $11 $88 $62
    ld bc, $62b3                                  ; $2816: $01 $b3 $62
    call Call_000_2854                            ; $2819: $cd $54 $28
    ret                                           ; $281c: $c9


jr_000_281d:
    ld a, [hl-]                                   ; $281d: $3a
    cp $09                                        ; $281e: $fe $09
    jr z, jr_000_2825                             ; $2820: $28 $03

    dec c                                         ; $2822: $0d
    jr jr_000_281d                                ; $2823: $18 $f8

jr_000_2825:
    ld a, c                                       ; $2825: $79
    ld [$c20d], a                                 ; $2826: $ea $0d $c2
    ret                                           ; $2829: $c9


Call_000_282a:
jr_000_282a:
    ld c, $ff                                     ; $282a: $0e $ff
    ld a, [$c20a]                                 ; $282c: $fa $0a $c2
    bit 3, a                                      ; $282f: $cb $5f
    jr z, jr_000_2847                             ; $2831: $28 $14

    ld a, [hl]                                    ; $2833: $7e
    cp $09                                        ; $2834: $fe $09
    ret z                                         ; $2836: $c8

    call Call_000_283d                            ; $2837: $cd $3d $28
    inc l                                         ; $283a: $2c
    jr jr_000_282a                                ; $283b: $18 $ed

Call_000_283d:
    ld de, $62de                                  ; $283d: $11 $de $62
    ld bc, $6309                                  ; $2840: $01 $09 $63
    call Call_000_2854                            ; $2843: $cd $54 $28
    ret                                           ; $2846: $c9


jr_000_2847:
    ld a, [hl+]                                   ; $2847: $2a
    cp $09                                        ; $2848: $fe $09
    jr z, jr_000_284f                             ; $284a: $28 $03

    inc c                                         ; $284c: $0c
    jr jr_000_2847                                ; $284d: $18 $f8

jr_000_284f:
    ld a, c                                       ; $284f: $79
    ld [$c20e], a                                 ; $2850: $ea $0e $c2
    ret                                           ; $2853: $c9


Call_000_2854:
    push hl                                       ; $2854: $e5
    ld [hl], $09                                  ; $2855: $36 $09
    ld a, $20                                     ; $2857: $3e $20
    rst RST_10                                    ; $2859: $d7
    ld a, [hl]                                    ; $285a: $7e
    rst RST_30                                    ; $285b: $f7
    ld a, [de]                                    ; $285c: $1a
    ld [hl], a                                    ; $285d: $77
    ld a, $40                                     ; $285e: $3e $40
    rst RST_28                                    ; $2860: $ef
    ld a, [hl]                                    ; $2861: $7e
    rst RST_38                                    ; $2862: $ff
    ld a, [bc]                                    ; $2863: $0a
    ld [hl], a                                    ; $2864: $77
    pop hl                                        ; $2865: $e1
    ret                                           ; $2866: $c9


Call_000_2867:
jr_000_2867:
    ld c, $08                                     ; $2867: $0e $08
    ld a, [$c20a]                                 ; $2869: $fa $0a $c2
    bit 2, a                                      ; $286c: $cb $57
    jr z, jr_000_2886                             ; $286e: $28 $16

    ld a, [hl]                                    ; $2870: $7e
    cp $09                                        ; $2871: $fe $09
    ret z                                         ; $2873: $c8

    call Call_000_287c                            ; $2874: $cd $7c $28
    ld a, $20                                     ; $2877: $3e $20
    rst RST_10                                    ; $2879: $d7
    jr jr_000_2867                                ; $287a: $18 $eb

Call_000_287c:
    ld de, $6334                                  ; $287c: $11 $34 $63
    ld bc, $635f                                  ; $287f: $01 $5f $63
    call Call_000_28c5                            ; $2882: $cd $c5 $28
    ret                                           ; $2885: $c9


jr_000_2886:
    ld a, [hl]                                    ; $2886: $7e
    cp $09                                        ; $2887: $fe $09
    jr z, jr_000_2891                             ; $2889: $28 $06

    ld a, $20                                     ; $288b: $3e $20
    rst RST_10                                    ; $288d: $d7
    dec c                                         ; $288e: $0d
    jr jr_000_2886                                ; $288f: $18 $f5

jr_000_2891:
    ld a, c                                       ; $2891: $79
    ld [$c20c], a                                 ; $2892: $ea $0c $c2
    ret                                           ; $2895: $c9


Call_000_2896:
jr_000_2896:
    ld c, $ff                                     ; $2896: $0e $ff
    ld a, [$c20a]                                 ; $2898: $fa $0a $c2
    bit 0, a                                      ; $289b: $cb $47
    jr z, jr_000_28b5                             ; $289d: $28 $16

    ld a, [hl]                                    ; $289f: $7e
    cp $09                                        ; $28a0: $fe $09
    ret z                                         ; $28a2: $c8

    call Call_000_28ab                            ; $28a3: $cd $ab $28
    ld a, $20                                     ; $28a6: $3e $20
    rst RST_28                                    ; $28a8: $ef
    jr jr_000_2896                                ; $28a9: $18 $eb

Call_000_28ab:
    ld de, $638a                                  ; $28ab: $11 $8a $63
    ld bc, $63b5                                  ; $28ae: $01 $b5 $63
    call Call_000_28c5                            ; $28b1: $cd $c5 $28
    ret                                           ; $28b4: $c9


jr_000_28b5:
    ld a, [hl]                                    ; $28b5: $7e
    cp $09                                        ; $28b6: $fe $09
    jr z, jr_000_28c0                             ; $28b8: $28 $06

    ld a, $20                                     ; $28ba: $3e $20
    rst RST_28                                    ; $28bc: $ef
    inc c                                         ; $28bd: $0c
    jr jr_000_28b5                                ; $28be: $18 $f5

jr_000_28c0:
    ld a, c                                       ; $28c0: $79
    ld [$c20b], a                                 ; $28c1: $ea $0b $c2
    ret                                           ; $28c4: $c9


Call_000_28c5:
    push hl                                       ; $28c5: $e5
    ld [hl], $09                                  ; $28c6: $36 $09
    inc l                                         ; $28c8: $2c
    ld a, [hl]                                    ; $28c9: $7e
    rst RST_30                                    ; $28ca: $f7
    ld a, [de]                                    ; $28cb: $1a
    ld [hl], a                                    ; $28cc: $77
    dec l                                         ; $28cd: $2d
    dec l                                         ; $28ce: $2d
    ld a, [hl]                                    ; $28cf: $7e
    rst RST_38                                    ; $28d0: $ff
    ld a, [bc]                                    ; $28d1: $0a
    ld [hl], a                                    ; $28d2: $77
    pop hl                                        ; $28d3: $e1
    ret                                           ; $28d4: $c9


Call_000_28d5:
    call Call_000_04b7                            ; $28d5: $cd $b7 $04
    ld a, [$c107]                                 ; $28d8: $fa $07 $c1
    ld hl, $63e0                                  ; $28db: $21 $e0 $63
    call Call_000_041a                            ; $28de: $cd $1a $04
    ld a, l                                       ; $28e1: $7d
    ld [$c250], a                                 ; $28e2: $ea $50 $c2
    ld a, h                                       ; $28e5: $7c
    ld [$c251], a                                 ; $28e6: $ea $51 $c2
    ld a, [$c420]                                 ; $28e9: $fa $20 $c4
    ld hl, $2047                                  ; $28ec: $21 $47 $20
    call Call_000_041a                            ; $28ef: $cd $1a $04
    ld de, $9800                                  ; $28f2: $11 $00 $98
    ld c, $08                                     ; $28f5: $0e $08

jr_000_28f7:
    ld b, $0a                                     ; $28f7: $06 $0a

jr_000_28f9:
    ld a, [hl]                                    ; $28f9: $7e
    push hl                                       ; $28fa: $e5
    push bc                                       ; $28fb: $c5
    call Call_000_2911                            ; $28fc: $cd $11 $29
    pop bc                                        ; $28ff: $c1
    pop hl                                        ; $2900: $e1
    inc hl                                        ; $2901: $23
    dec b                                         ; $2902: $05
    jr nz, jr_000_28f9                            ; $2903: $20 $f4

    ld a, $16                                     ; $2905: $3e $16
    rst RST_28                                    ; $2907: $ef
    ld a, $2c                                     ; $2908: $3e $2c
    rst RST_30                                    ; $290a: $f7
    dec c                                         ; $290b: $0d
    jr nz, jr_000_28f7                            ; $290c: $20 $e9

    jp Jump_000_04aa                              ; $290e: $c3 $aa $04


Call_000_2911:
    call Call_000_292d                            ; $2911: $cd $2d $29
    and $7f                                       ; $2914: $e6 $7f
    ld l, a                                       ; $2916: $6f
    ld h, $00                                     ; $2917: $26 $00
    add hl, hl                                    ; $2919: $29
    add hl, hl                                    ; $291a: $29
    add hl, bc                                    ; $291b: $09
    ld a, [hl+]                                   ; $291c: $2a
    ld [de], a                                    ; $291d: $12
    inc e                                         ; $291e: $1c
    ld a, [hl+]                                   ; $291f: $2a
    ld [de], a                                    ; $2920: $12
    inc e                                         ; $2921: $1c
    push de                                       ; $2922: $d5
    ld a, $1e                                     ; $2923: $3e $1e
    rst RST_30                                    ; $2925: $f7
    ld a, [hl+]                                   ; $2926: $2a
    ld [de], a                                    ; $2927: $12
    inc e                                         ; $2928: $1c
    ld a, [hl]                                    ; $2929: $7e
    ld [de], a                                    ; $292a: $12
    pop de                                        ; $292b: $d1
    ret                                           ; $292c: $c9


Call_000_292d:
    call Call_000_295d                            ; $292d: $cd $5d $29
    bit 0, c                                      ; $2930: $cb $41
    jr nz, jr_000_2950                            ; $2932: $20 $1c

    bit 7, a                                      ; $2934: $cb $7f
    jr z, jr_000_2952                             ; $2936: $28 $1a

    and $7f                                       ; $2938: $e6 $7f
    ld l, a                                       ; $293a: $6f
    ld h, $d5                                     ; $293b: $26 $d5
    ld a, [hl]                                    ; $293d: $7e
    bit 7, a                                      ; $293e: $cb $7f
    jr z, jr_000_2943                             ; $2940: $28 $01

    xor a                                         ; $2942: $af

jr_000_2943:
    ld bc, $2d6b                                  ; $2943: $01 $6b $2d
    rst RST_38                                    ; $2946: $ff
    ld a, [bc]                                    ; $2947: $0a
    swap a                                        ; $2948: $cb $37
    and $0f                                       ; $294a: $e6 $0f
    ld bc, $6688                                  ; $294c: $01 $88 $66
    ret                                           ; $294f: $c9


jr_000_2950:
    ld a, $21                                     ; $2950: $3e $21

jr_000_2952:
    ld l, a                                       ; $2952: $6f
    ld a, [$c250]                                 ; $2953: $fa $50 $c2
    ld c, a                                       ; $2956: $4f
    ld a, [$c251]                                 ; $2957: $fa $51 $c2
    ld b, a                                       ; $295a: $47
    ld a, l                                       ; $295b: $7d
    ret                                           ; $295c: $c9


Call_000_295d:
    push af                                       ; $295d: $f5
    ld a, l                                       ; $295e: $7d
    and $07                                       ; $295f: $e6 $07
    jr nz, jr_000_2965                            ; $2961: $20 $02

    ld a, $08                                     ; $2963: $3e $08

jr_000_2965:
    ld b, a                                       ; $2965: $47
    push bc                                       ; $2966: $c5
    srl h                                         ; $2967: $cb $3c
    rr l                                          ; $2969: $cb $1d
    srl h                                         ; $296b: $cb $3c
    rr l                                          ; $296d: $cb $1d
    srl h                                         ; $296f: $cb $3c
    rr l                                          ; $2971: $cb $1d
    ld a, l                                       ; $2973: $7d
    ld hl, $c460                                  ; $2974: $21 $60 $c4
    rst RST_28                                    ; $2977: $ef
    ld a, [hl]                                    ; $2978: $7e

jr_000_2979:
    rrca                                          ; $2979: $0f
    dec b                                         ; $297a: $05
    jr nz, jr_000_2979                            ; $297b: $20 $fc

    pop bc                                        ; $297d: $c1
    ld c, a                                       ; $297e: $4f
    pop af                                        ; $297f: $f1
    ret                                           ; $2980: $c9


Call_000_2981:
    call Call_000_299e                            ; $2981: $cd $9e $29
    call Call_000_29ca                            ; $2984: $cd $ca $29
    call Call_000_2a10                            ; $2987: $cd $10 $2a
    call Call_000_2a46                            ; $298a: $cd $46 $2a
    call Call_000_2a6c                            ; $298d: $cd $6c $2a
    ld a, $ff                                     ; $2990: $3e $ff
    ld [$c27b], a                                 ; $2992: $ea $7b $c2
    ld a, [$c103]                                 ; $2995: $fa $03 $c1
    cp $02                                        ; $2998: $fe $02
    call z, Call_000_2abe                         ; $299a: $cc $be $2a
    ret                                           ; $299d: $c9


Call_000_299e:
    ld a, [$c114]                                 ; $299e: $fa $14 $c1
    ld b, a                                       ; $29a1: $47
    ld a, [$c104]                                 ; $29a2: $fa $04 $c1
    cp b                                          ; $29a5: $b8
    ret nc                                        ; $29a6: $d0

    ld a, [$c423]                                 ; $29a7: $fa $23 $c4
    ld hl, $206b                                  ; $29aa: $21 $6b $20
    call Call_000_041a                            ; $29ad: $cd $1a $04
    inc hl                                        ; $29b0: $23
    ld a, [hl+]                                   ; $29b1: $2a
    ld [$c202], a                                 ; $29b2: $ea $02 $c2
    ld a, [hl]                                    ; $29b5: $7e
    ld [$c203], a                                 ; $29b6: $ea $03 $c2
    ld b, a                                       ; $29b9: $47
    call Call_000_12d9                            ; $29ba: $cd $d9 $12
    call Call_000_2a92                            ; $29bd: $cd $92 $2a
    ld a, [$c423]                                 ; $29c0: $fa $23 $c4
    call Call_000_2ef1                            ; $29c3: $cd $f1 $2e
    ld a, $10                                     ; $29c6: $3e $10
    ld [bc], a                                    ; $29c8: $02
    ret                                           ; $29c9: $c9


Call_000_29ca:
    ld a, [$c101]                                 ; $29ca: $fa $01 $c1
    cp $04                                        ; $29cd: $fe $04
    ret nz                                        ; $29cf: $c0

    ld a, [$c103]                                 ; $29d0: $fa $03 $c1
    cp $02                                        ; $29d3: $fe $02
    ret nc                                        ; $29d5: $d0

    ld a, [$c27b]                                 ; $29d6: $fa $7b $c2
    cp $ff                                        ; $29d9: $fe $ff
    ret z                                         ; $29db: $c8

    ld a, [$c426]                                 ; $29dc: $fa $26 $c4
    ld hl, $206b                                  ; $29df: $21 $6b $20
    call Call_000_041a                            ; $29e2: $cd $1a $04
    inc hl                                        ; $29e5: $23
    ld a, [hl+]                                   ; $29e6: $2a
    ld [$c202], a                                 ; $29e7: $ea $02 $c2
    ld a, [hl]                                    ; $29ea: $7e
    ld [$c203], a                                 ; $29eb: $ea $03 $c2
    ld b, a                                       ; $29ee: $47
    call Call_000_12d9                            ; $29ef: $cd $d9 $12
    call Call_000_2a92                            ; $29f2: $cd $92 $2a
    ld a, [$c426]                                 ; $29f5: $fa $26 $c4
    call Call_000_2ef1                            ; $29f8: $cd $f1 $2e
    ld a, $22                                     ; $29fb: $3e $22
    ld [bc], a                                    ; $29fd: $02
    ld a, [$c426]                                 ; $29fe: $fa $26 $c4
    ld b, a                                       ; $2a01: $47
    ld a, [$c423]                                 ; $2a02: $fa $23 $c4
    cp b                                          ; $2a05: $b8
    ld a, $09                                     ; $2a06: $3e $09
    jr nz, jr_000_2a0c                            ; $2a08: $20 $02

    ld a, $10                                     ; $2a0a: $3e $10

jr_000_2a0c:
    ld [$c266], a                                 ; $2a0c: $ea $66 $c2
    ret                                           ; $2a0f: $c9


Call_000_2a10:
    ld a, [$c101]                                 ; $2a10: $fa $01 $c1
    cp $04                                        ; $2a13: $fe $04
    ret nz                                        ; $2a15: $c0

    ld a, [$c103]                                 ; $2a16: $fa $03 $c1
    cp $02                                        ; $2a19: $fe $02
    ret nc                                        ; $2a1b: $d0

    ld a, [$c27b]                                 ; $2a1c: $fa $7b $c2
    cp $ff                                        ; $2a1f: $fe $ff
    ret z                                         ; $2a21: $c8

    ld a, [$c425]                                 ; $2a22: $fa $25 $c4
    ld hl, $206b                                  ; $2a25: $21 $6b $20
    call Call_000_041a                            ; $2a28: $cd $1a $04
    inc hl                                        ; $2a2b: $23
    ld a, [hl+]                                   ; $2a2c: $2a
    ld [$c202], a                                 ; $2a2d: $ea $02 $c2
    ld a, [hl]                                    ; $2a30: $7e
    ld [$c203], a                                 ; $2a31: $ea $03 $c2
    ld b, a                                       ; $2a34: $47
    call Call_000_12de                            ; $2a35: $cd $de $12
    call Call_000_2a92                            ; $2a38: $cd $92 $2a
    ld a, $14                                     ; $2a3b: $3e $14
    ld [$c18f], a                                 ; $2a3d: $ea $8f $c1
    ld a, [$c425]                                 ; $2a40: $fa $25 $c4
    jp $4f27                                      ; $2a43: $c3 $27 $4f


Call_000_2a46:
    ld a, [$c427]                                 ; $2a46: $fa $27 $c4
    ld hl, $206b                                  ; $2a49: $21 $6b $20
    call Call_000_041a                            ; $2a4c: $cd $1a $04
    inc hl                                        ; $2a4f: $23
    ld a, [hl+]                                   ; $2a50: $2a
    ld [$c202], a                                 ; $2a51: $ea $02 $c2
    ld a, [hl]                                    ; $2a54: $7e
    ld [$c203], a                                 ; $2a55: $ea $03 $c2
    ld b, a                                       ; $2a58: $47
    call Call_000_12e6                            ; $2a59: $cd $e6 $12
    cp $ff                                        ; $2a5c: $fe $ff
    ret z                                         ; $2a5e: $c8

    call Call_000_2a92                            ; $2a5f: $cd $92 $2a
    ld a, [$c427]                                 ; $2a62: $fa $27 $c4
    call Call_000_2ef1                            ; $2a65: $cd $f1 $2e
    ld a, $20                                     ; $2a68: $3e $20
    ld [bc], a                                    ; $2a6a: $02
    ret                                           ; $2a6b: $c9


Call_000_2a6c:
    ld a, [$c428]                                 ; $2a6c: $fa $28 $c4
    ld hl, $206b                                  ; $2a6f: $21 $6b $20
    call Call_000_041a                            ; $2a72: $cd $1a $04
    inc hl                                        ; $2a75: $23
    ld a, [hl+]                                   ; $2a76: $2a
    ld [$c202], a                                 ; $2a77: $ea $02 $c2
    ld a, [hl]                                    ; $2a7a: $7e
    ld [$c203], a                                 ; $2a7b: $ea $03 $c2
    ld b, a                                       ; $2a7e: $47
    call Call_000_12e6                            ; $2a7f: $cd $e6 $12
    cp $ff                                        ; $2a82: $fe $ff
    ret z                                         ; $2a84: $c8

    call Call_000_2a92                            ; $2a85: $cd $92 $2a
    ld a, [$c428]                                 ; $2a88: $fa $28 $c4
    call Call_000_2ef1                            ; $2a8b: $cd $f1 $2e
    ld a, $20                                     ; $2a8e: $3e $20
    ld [bc], a                                    ; $2a90: $02
    ret                                           ; $2a91: $c9


Call_000_2a92:
    push af                                       ; $2a92: $f5
    and $0f                                       ; $2a93: $e6 $0f
    rr b                                          ; $2a95: $cb $18
    jr nc, jr_000_2a9d                            ; $2a97: $30 $04

    sub $07                                       ; $2a99: $d6 $07
    cpl                                           ; $2a9b: $2f
    inc a                                         ; $2a9c: $3c

jr_000_2a9d:
    ld e, a                                       ; $2a9d: $5f
    pop af                                        ; $2a9e: $f1
    swap a                                        ; $2a9f: $cb $37
    and $0f                                       ; $2aa1: $e6 $0f
    rr b                                          ; $2aa3: $cb $18
    jr nc, jr_000_2aab                            ; $2aa5: $30 $04

    sub $09                                       ; $2aa7: $d6 $09
    cpl                                           ; $2aa9: $2f
    inc a                                         ; $2aaa: $3c

jr_000_2aab:
    ld d, a                                       ; $2aab: $57
    ret                                           ; $2aac: $c9


Call_000_2aad:
    call Call_000_2abe                            ; $2aad: $cd $be $2a
    ld a, [$c420]                                 ; $2ab0: $fa $20 $c4
    ld b, a                                       ; $2ab3: $47
    ld a, [$c424]                                 ; $2ab4: $fa $24 $c4
    cp b                                          ; $2ab7: $b8
    ret nz                                        ; $2ab8: $c0

    ld b, $11                                     ; $2ab9: $06 $11
    jp Jump_000_2ca5                              ; $2abb: $c3 $a5 $2c


Call_000_2abe:
    ld a, [$c424]                                 ; $2abe: $fa $24 $c4
    ld hl, $206b                                  ; $2ac1: $21 $6b $20
    call Call_000_041a                            ; $2ac4: $cd $1a $04
    inc hl                                        ; $2ac7: $23
    ld a, [hl+]                                   ; $2ac8: $2a
    ld [$c202], a                                 ; $2ac9: $ea $02 $c2
    ld a, [hl]                                    ; $2acc: $7e
    ld [$c203], a                                 ; $2acd: $ea $03 $c2
    ld b, a                                       ; $2ad0: $47
    call Call_000_12de                            ; $2ad1: $cd $de $12
    call Call_000_2a92                            ; $2ad4: $cd $92 $2a
    push de                                       ; $2ad7: $d5
    call $4fe7                                    ; $2ad8: $cd $e7 $4f
    pop de                                        ; $2adb: $d1
    ld a, [$c424]                                 ; $2adc: $fa $24 $c4
    call Call_000_2ef1                            ; $2adf: $cd $f1 $2e
    ld a, $11                                     ; $2ae2: $3e $11
    ld [bc], a                                    ; $2ae4: $02
    ret                                           ; $2ae5: $c9


Call_000_2ae6:
    call Call_000_2afb                            ; $2ae6: $cd $fb $2a
    call Call_000_2b0f                            ; $2ae9: $cd $0f $2b
    call Call_000_2b37                            ; $2aec: $cd $37 $2b
    call Call_000_2b5d_DrawObjectiveTargetTiles                            ; $2aef: $cd $5d $2b
    call Call_000_2c45                            ; $2af2: $cd $45 $2c
    call Call_000_2c52                            ; $2af5: $cd $52 $2c
    jp Jump_000_2bc2_DrawStatTiles                              ; $2af8: $c3 $c2 $2b


Call_000_2afb:
    ld hl, $9a00                                  ; $2afb: $21 $00 $9a
    ld de, $9a01                                  ; $2afe: $11 $01 $9a
    ld bc, $003f                                  ; $2b01: $01 $3f $00
    ld [hl], $00                                  ; $2b04: $36 $00
    call Call_000_0442                            ; $2b06: $cd $42 $04
    ld de, $4027                                  ; $2b09: $11 $27 $40
    jp Jump_000_0ea8                              ; $2b0c: $c3 $a8 $0e


Call_000_2b0f:
    call Call_000_2b1e_ConvertPlayerHPToTiles                            ; $2b0f: $cd $1e $2b
    ld de, $c124                                  ; $2b12: $11 $24 $c1
    ld hl, $9a05                                  ; $2b15: $21 $05 $9a
    ld bc, $9e01                                  ; $2b18: $01 $01 $9e
    jp Jump_000_0e83_BcdToTiles                              ; $2b1b: $c3 $83 $0e


; Converts the player HP (wPlayerHP, BCD) into its 2 digit tile IDs at $c210/$c211.
Call_000_2b1e_ConvertPlayerHPToTiles:
    ld hl, $c210                                  ; $2b1e: $21 $10 $c2
    ld de, wPlayerHP                              ; $2b21: $11 $20 $c1
    ld bc, $9e01                                  ; $2b24: $01 $01 $9e
    call Call_000_0e83_BcdToTiles                            ; $2b27: $cd $83 $0e
    ld a, [$c210]                                 ; $2b2a: $fa $10 $c2
    ld [$c212], a                                 ; $2b2d: $ea $12 $c2
    ld a, [$c211]                                 ; $2b30: $fa $11 $c2
    ld [$c213], a                                 ; $2b33: $ea $13 $c2
    ret                                           ; $2b36: $c9


Call_000_2b37:
    ld de, $c14c                                  ; $2b37: $11 $4c $c1
    ld a, [de]                                    ; $2b3a: $1a
    or a                                          ; $2b3b: $b7
    jr z, jr_000_2b54                             ; $2b3c: $28 $16

    ld hl, $c21c                                  ; $2b3e: $21 $1c $c2
    ld bc, $9e01                                  ; $2b41: $01 $01 $9e
    call Call_000_0e83_BcdToTiles                            ; $2b44: $cd $83 $0e
    ld a, [$c21c]                                 ; $2b47: $fa $1c $c2
    ld [$c21e], a                                 ; $2b4a: $ea $1e $c2
    ld a, [$c21d]                                 ; $2b4d: $fa $1d $c2
    ld [$c21f], a                                 ; $2b50: $ea $1f $c2
    ret                                           ; $2b53: $c9


jr_000_2b54:
    xor a                                         ; $2b54: $af
    ld hl, $c21c                                  ; $2b55: $21 $1c $c2
    ld [hl+], a                                   ; $2b58: $22
    ld [hl+], a                                   ; $2b59: $22
    ld [hl+], a                                   ; $2b5a: $22
    ld [hl+], a                                   ; $2b5b: $22
    ret                                           ; $2b5c: $c9


; Draws the objective TARGET number (e.g. the "2" in "GOLD 0/2"). [$c101] =
; current quest/objective type index (1-based: 1=Monster,2=Gold,3=Orb,4=Fairy);
; $2b8f is a per-type word table of WRAM addresses holding each type's target
; value: $c16b (Monster), $c16e (Gold), $c16d (Orb), $c170 (Fairy). These get
; populated at quest start from a per-level BCD table in bank 2 ($6e10/$6e1a/
; $6e24/$6e2e local to that bank, selected via a small header at $6e00) -
; values confirmed to match strategywiki.org's quest objective tables exactly
; (e.g. Gold: 2,4,6,9,15,25,38,55,79,99 for level 1-9/M). See NOTES.md.
Call_000_2b5d_DrawObjectiveTargetTiles:
    call Call_000_2b72_DrawObjectiveProgressTiles ; $2b5d: $cd $72 $2b
    ld a, [$c101]                                 ; $2b60: $fa $01 $c1
    ld hl, $2b8f                                  ; $2b63: $21 $8f $2b
    call Call_000_041e_WordTableLookupToDE                            ; $2b66: $cd $1e $04
    ld hl, $9a28                                  ; $2b69: $21 $28 $9a
    ld bc, $9e01                                  ; $2b6c: $01 $01 $9e
    jp Jump_000_0e83_BcdToTiles                              ; $2b6f: $c3 $83 $0e


; Draws the objective PROGRESS number (e.g. the "0" in "GOLD 0/2"). [$c101] =
; quest/objective type index; $2b97 is a per-type word table of WRAM
; addresses holding each type's current progress (BCD): $c16a (Monster),
; $c128 (Gold), $c16c (Orb), $c16f (Fairy).
Call_000_2b72_DrawObjectiveProgressTiles:
    ld a, [$c101]                                 ; $2b72: $fa $01 $c1
    ld hl, $2b97                                  ; $2b75: $21 $97 $2b
    call Call_000_041e_WordTableLookupToDE                            ; $2b78: $cd $1e $04
    ld hl, $c218                                  ; $2b7b: $21 $18 $c2
    ld bc, $9e01                                  ; $2b7e: $01 $01 $9e
    call Call_000_0e83_BcdToTiles                            ; $2b81: $cd $83 $0e
    ld a, [$c218]                                 ; $2b84: $fa $18 $c2
    ld [$c21a], a                                 ; $2b87: $ea $1a $c2
    ld a, [$c219]                                 ; $2b8a: $fa $19 $c2
    ld [$c21b], a                                 ; $2b8d: $ea $1b $c2
    ret                                           ; $2b90: $c9


    ld l, e                                       ; $2b91: $6b
    pop bc                                        ; $2b92: $c1
    ld l, [hl]                                    ; $2b93: $6e
    pop bc                                        ; $2b94: $c1
    ld l, l                                       ; $2b95: $6d
    pop bc                                        ; $2b96: $c1
    ld [hl], b                                    ; $2b97: $70
    pop bc                                        ; $2b98: $c1
    ld l, d                                       ; $2b99: $6a
    pop bc                                        ; $2b9a: $c1
    jr z, @-$3d                                   ; $2b9b: $28 $c1

    ld l, h                                       ; $2b9d: $6c
    pop bc                                        ; $2b9e: $c1
    ld l, a                                       ; $2b9f: $6f
    pop bc                                        ; $2ba0: $c1

jr_000_2ba1:
    ld a, $9a                                     ; $2ba1: $3e $9a
    ld [$9a0a], a                                 ; $2ba3: $ea $0a $9a
    inc a                                         ; $2ba6: $3c
    ld [$9a2a], a                                 ; $2ba7: $ea $2a $9a
    inc a                                         ; $2baa: $3c
    ld [$9a0b], a                                 ; $2bab: $ea $0b $9a
    inc a                                         ; $2bae: $3c
    ld [$9a2b], a                                 ; $2baf: $ea $2b $9a
    xor a                                         ; $2bb2: $af
    ld hl, $9a0c                                  ; $2bb3: $21 $0c $9a
    ld [hl+], a                                   ; $2bb6: $22
    ld [hl+], a                                   ; $2bb7: $22
    ld [hl+], a                                   ; $2bb8: $22
    ld [hl+], a                                   ; $2bb9: $22
    ld hl, $9a2c                                  ; $2bba: $21 $2c $9a
    ld [hl+], a                                   ; $2bbd: $22
    ld [hl+], a                                   ; $2bbe: $22
    ld [hl+], a                                   ; $2bbf: $22
    ld [hl+], a                                   ; $2bc0: $22
    ret                                           ; $2bc1: $c9


; Writes the HP/stat digit tiles into the BG tilemap (HUD row, screen $9a02 = HP tens digit).
Call_000_2bc2_DrawStatTiles:
Jump_000_2bc2_DrawStatTiles:
    ld a, [$c212]                                 ; $2bc2: $fa $12 $c2
    ld [$9a02], a                                 ; $2bc5: $ea $02 $9a
    ld a, [$c213]                                 ; $2bc8: $fa $13 $c2
    ld [$9a03], a                                 ; $2bcb: $ea $03 $9a
    ld a, [$c21a]                                 ; $2bce: $fa $1a $c2
    ld [$9a25], a                                 ; $2bd1: $ea $25 $9a
    ld a, [$c21b]                                 ; $2bd4: $fa $1b $c2
    ld [$9a26], a                                 ; $2bd7: $ea $26 $9a
    ld a, [$c25e]                                 ; $2bda: $fa $5e $c2
    or a                                          ; $2bdd: $b7
    jr nz, jr_000_2ba1                            ; $2bde: $20 $c1

    ld a, [$c131]                                 ; $2be0: $fa $31 $c1
    or a                                          ; $2be3: $b7
    ld b, a                                       ; $2be4: $47
    jr z, jr_000_2beb                             ; $2be5: $28 $04

    ld b, $08                                     ; $2be7: $06 $08
    add $9e                                       ; $2be9: $c6 $9e

jr_000_2beb:
    ld [$9a2c], a                                 ; $2beb: $ea $2c $9a
    ld a, [$c514]                                 ; $2bee: $fa $14 $c5
    or a                                          ; $2bf1: $b7
    jr z, jr_000_2bfa                             ; $2bf2: $28 $06

    ld b, $1e                                     ; $2bf4: $06 $1e
    xor a                                         ; $2bf6: $af
    ld [$9a2c], a                                 ; $2bf7: $ea $2c $9a

jr_000_2bfa:
    ld a, [$c108]                                 ; $2bfa: $fa $08 $c1
    rra                                           ; $2bfd: $1f
    ld a, $92                                     ; $2bfe: $3e $92
    jr c, jr_000_2c05                             ; $2c00: $38 $03

    ld a, $8e                                     ; $2c02: $3e $8e
    add b                                         ; $2c04: $80

jr_000_2c05:
    ld [$9a0a], a                                 ; $2c05: $ea $0a $9a
    inc a                                         ; $2c08: $3c
    ld [$9a2a], a                                 ; $2c09: $ea $2a $9a
    inc a                                         ; $2c0c: $3c
    ld [$9a0b], a                                 ; $2c0d: $ea $0b $9a
    inc a                                         ; $2c10: $3c
    ld [$9a2b], a                                 ; $2c11: $ea $2b $9a
    ld a, [$c21e]                                 ; $2c14: $fa $1e $c2
    ld [$9a0f], a                                 ; $2c17: $ea $0f $9a
    ld a, [$c21f]                                 ; $2c1a: $fa $1f $c2
    ld [$9a2f], a                                 ; $2c1d: $ea $2f $9a
    ld a, [$c14b]                                 ; $2c20: $fa $4b $c1
    or a                                          ; $2c23: $b7
    jr z, jr_000_2c38                             ; $2c24: $28 $12

    ld a, $a8                                     ; $2c26: $3e $a8
    ld [$9a0d], a                                 ; $2c28: $ea $0d $9a
    inc a                                         ; $2c2b: $3c
    ld [$9a2d], a                                 ; $2c2c: $ea $2d $9a
    inc a                                         ; $2c2f: $3c
    ld [$9a0e], a                                 ; $2c30: $ea $0e $9a
    inc a                                         ; $2c33: $3c
    ld [$9a2e], a                                 ; $2c34: $ea $2e $9a
    ret                                           ; $2c37: $c9


jr_000_2c38:
    ld [$9a0d], a                                 ; $2c38: $ea $0d $9a
    ld [$9a2d], a                                 ; $2c3b: $ea $2d $9a
    ld [$9a0e], a                                 ; $2c3e: $ea $0e $9a
    ld [$9a2e], a                                 ; $2c41: $ea $2e $9a
    ret                                           ; $2c44: $c9


Call_000_2c45:
    ld a, [$c14b]                                 ; $2c45: $fa $4b $c1
    call Call_000_1b40                            ; $2c48: $cd $40 $1b
    ld a, [$c514]                                 ; $2c4b: $fa $14 $c5
    call Call_000_1b58                            ; $2c4e: $cd $58 $1b
    ret                                           ; $2c51: $c9


Call_000_2c52:
    ld hl, $2c69                                  ; $2c52: $21 $69 $2c
    ld de, $da98                                  ; $2c55: $11 $98 $da
    ld bc, $0008                                  ; $2c58: $01 $08 $00
    call Call_000_0442                            ; $2c5b: $cd $42 $04
    ld hl, $da9a                                  ; $2c5e: $21 $9a $da
    ld de, $c104                                  ; $2c61: $11 $04 $c1
    ld b, $10                                     ; $2c64: $06 $10
    jp Jump_000_3955                              ; $2c66: $c3 $55 $39


    sub b                                         ; $2c69: $90
    sub b                                         ; $2c6a: $90
    nop                                           ; $2c6b: $00
    db $10                                        ; $2c6c: $10
    sub b                                         ; $2c6d: $90
    sbc b                                         ; $2c6e: $98
    nop                                           ; $2c6f: $00
    db $10                                        ; $2c70: $10

Call_000_2c71:
    ld a, $ff                                     ; $2c71: $3e $ff
    ld [$d000], a                                 ; $2c73: $ea $00 $d0
    ld [$d001], a                                 ; $2c76: $ea $01 $d0
    ld [$d100], a                                 ; $2c79: $ea $00 $d1
    ld [$d101], a                                 ; $2c7c: $ea $01 $d1
    ret                                           ; $2c7f: $c9


Call_000_2c80:
    ld a, [$c026]                                 ; $2c80: $fa $26 $c0
    rra                                           ; $2c83: $1f
    ld hl, $d000                                  ; $2c84: $21 $00 $d0
    jr c, jr_000_2c8c                             ; $2c87: $38 $03

    ld hl, $d100                                  ; $2c89: $21 $00 $d1

jr_000_2c8c:
    ld a, $ff                                     ; $2c8c: $3e $ff
    ld e, [hl]                                    ; $2c8e: $5e
    ld [hl+], a                                   ; $2c8f: $22
    ld d, [hl]                                    ; $2c90: $56
    ld [hl+], a                                   ; $2c91: $22
    ld a, e                                       ; $2c92: $7b
    and d                                         ; $2c93: $a2
    inc a                                         ; $2c94: $3c
    ret z                                         ; $2c95: $c8

    ld a, [hl+]                                   ; $2c96: $2a
    ld [de], a                                    ; $2c97: $12
    inc e                                         ; $2c98: $1c
    ld a, [hl+]                                   ; $2c99: $2a
    ld [de], a                                    ; $2c9a: $12
    ld a, $1f                                     ; $2c9b: $3e $1f
    rst RST_30                                    ; $2c9d: $f7
    ld a, [hl+]                                   ; $2c9e: $2a
    ld [de], a                                    ; $2c9f: $12
    inc e                                         ; $2ca0: $1c
    ld a, [hl+]                                   ; $2ca1: $2a
    ld [de], a                                    ; $2ca2: $12
    jr jr_000_2c8c                                ; $2ca3: $18 $e7

Call_000_2ca5:
Jump_000_2ca5:
    call Call_000_04b7                            ; $2ca5: $cd $b7 $04
    ld a, [$c107]                                 ; $2ca8: $fa $07 $c1
    ld hl, $63e0                                  ; $2cab: $21 $e0 $63
    call Call_000_041a                            ; $2cae: $cd $1a $04

Call_000_2cb1:
Jump_000_2cb1:
    call Call_000_04b7                            ; $2cb1: $cd $b7 $04
    push hl                                       ; $2cb4: $e5
    push bc                                       ; $2cb5: $c5
    ld a, [$c420]                                 ; $2cb6: $fa $20 $c4
    call Call_000_2dfe                            ; $2cb9: $cd $fe $2d
    call Call_000_0450                            ; $2cbc: $cd $50 $04
    pop bc                                        ; $2cbf: $c1
    ld a, b                                       ; $2cc0: $78
    call Call_000_295d                            ; $2cc1: $cd $5d $29
    bit 0, c                                      ; $2cc4: $cb $41
    pop bc                                        ; $2cc6: $c1
    jr z, jr_000_2cd4                             ; $2cc7: $28 $0b

    ld a, [$c107]                                 ; $2cc9: $fa $07 $c1
    ld hl, $63e0                                  ; $2ccc: $21 $e0 $63
    call Call_000_0424                            ; $2ccf: $cd $24 $04
    ld a, $21                                     ; $2cd2: $3e $21

jr_000_2cd4:
    add a                                         ; $2cd4: $87
    add a                                         ; $2cd5: $87
    rst RST_38                                    ; $2cd6: $ff
    ld l, e                                       ; $2cd7: $6b
    ld h, $00                                     ; $2cd8: $26 $00
    add hl, hl                                    ; $2cda: $29
    add hl, hl                                    ; $2cdb: $29

Call_000_2cdc:
    add hl, hl                                    ; $2cdc: $29
    add hl, hl                                    ; $2cdd: $29
    add hl, hl                                    ; $2cde: $29
    add hl, hl                                    ; $2cdf: $29
    ld a, d                                       ; $2ce0: $7a
    add a                                         ; $2ce1: $87
    rst RST_28                                    ; $2ce2: $ef
    ld de, $9800                                  ; $2ce3: $11 $00 $98
    add hl, de                                    ; $2ce6: $19
    ld e, l                                       ; $2ce7: $5d
    ld d, h                                       ; $2ce8: $54
    call Call_000_2cef                            ; $2ce9: $cd $ef $2c
    jp Jump_000_04aa                              ; $2cec: $c3 $aa $04


Call_000_2cef:
Jump_000_2cef:
    ld a, [$c026]                                 ; $2cef: $fa $26 $c0
    rra                                           ; $2cf2: $1f
    ld hl, $d000                                  ; $2cf3: $21 $00 $d0
    jr nc, jr_000_2cfb                            ; $2cf6: $30 $03

    ld hl, $d100                                  ; $2cf8: $21 $00 $d1

jr_000_2cfb:
    ld a, [hl+]                                   ; $2cfb: $2a
    and [hl]                                      ; $2cfc: $a6
    inc a                                         ; $2cfd: $3c

Call_000_2cfe:
    jr z, jr_000_2d07                             ; $2cfe: $28 $07

    inc l                                         ; $2d00: $2c
    inc l                                         ; $2d01: $2c
    inc l                                         ; $2d02: $2c
    inc l                                         ; $2d03: $2c
    inc l                                         ; $2d04: $2c
    jr jr_000_2cfb                                ; $2d05: $18 $f4

jr_000_2d07:
    dec l                                         ; $2d07: $2d
    ld [hl], e                                    ; $2d08: $73
    inc l                                         ; $2d09: $2c
    ld [hl], d                                    ; $2d0a: $72
    inc l                                         ; $2d0b: $2c
    ld a, [bc]                                    ; $2d0c: $0a
    inc bc                                        ; $2d0d: $03
    ld [hl+], a                                   ; $2d0e: $22
    ld a, [bc]                                    ; $2d0f: $0a
    inc bc                                        ; $2d10: $03
    ld [hl+], a                                   ; $2d11: $22
    ld a, [bc]                                    ; $2d12: $0a
    inc bc                                        ; $2d13: $03
    ld [hl+], a                                   ; $2d14: $22
    ld a, [bc]                                    ; $2d15: $0a
    ld [hl+], a                                   ; $2d16: $22
    ld a, $ff                                     ; $2d17: $3e $ff
    ld [hl+], a                                   ; $2d19: $22
    ld [hl+], a                                   ; $2d1a: $22
    ret                                           ; $2d1b: $c9


Call_000_2d1c:
    ld a, [$c109]                                 ; $2d1c: $fa $09 $c1
    or a                                          ; $2d1f: $b7
    ret z                                         ; $2d20: $c8

    ld hl, $c420                                  ; $2d21: $21 $20 $c4
    ld e, [hl]                                    ; $2d24: $5e
    ld d, $c3                                     ; $2d25: $16 $c3
    ld l, e                                       ; $2d27: $6b
    ld h, $97                                     ; $2d28: $26 $97
    ld bc, $0020                                  ; $2d2a: $01 $20 $00
    call Call_000_044b                            ; $2d2d: $cd $4b $04
    call Call_000_0442                            ; $2d30: $cd $42 $04
    ld a, l                                       ; $2d33: $7d
    or a                                          ; $2d34: $b7
    jr nz, jr_000_2d3a                            ; $2d35: $20 $03

    ld [$c109], a                                 ; $2d37: $ea $09 $c1

jr_000_2d3a:
    ld [$c420], a                                 ; $2d3a: $ea $20 $c4
    ret                                           ; $2d3d: $c9


Call_000_2d3e:
    ld a, [$c109]                                 ; $2d3e: $fa $09 $c1
    or a                                          ; $2d41: $b7
    ret z                                         ; $2d42: $c8

    ld hl, $c1f0                                  ; $2d43: $21 $f0 $c1
    rst RST_08                                    ; $2d46: $cf
    ld e, l                                       ; $2d47: $5d
    ld d, h                                       ; $2d48: $54
    call Call_000_0eb1                            ; $2d49: $cd $b1 $0e
    ld hl, $c1f0                                  ; $2d4c: $21 $f0 $c1
    ld [hl], e                                    ; $2d4f: $73
    inc hl                                        ; $2d50: $23
    ld [hl], d                                    ; $2d51: $72
    xor a                                         ; $2d52: $af
    ld [$c109], a                                 ; $2d53: $ea $09 $c1
    ret                                           ; $2d56: $c9


Call_000_2d57:
    ld a, [$c258]                                 ; $2d57: $fa $58 $c2
    or a                                          ; $2d5a: $b7
    ret z                                         ; $2d5b: $c8

    ld hl, $c500                                  ; $2d5c: $21 $00 $c5
    ld b, $04                                     ; $2d5f: $06 $04

jr_000_2d61:
    ld e, [hl]                                    ; $2d61: $5e
    inc hl                                        ; $2d62: $23
    ld d, [hl]                                    ; $2d63: $56
    inc hl                                        ; $2d64: $23
    ld a, [hl+]                                   ; $2d65: $2a
    ld [de], a                                    ; $2d66: $12
    dec b                                         ; $2d67: $05
    jr nz, jr_000_2d61                            ; $2d68: $20 $f7

    ret                                           ; $2d6a: $c9


    ld bc, $2525                                  ; $2d6b: $01 $25 $25
    dec d                                         ; $2d6e: $15
    inc d                                         ; $2d6f: $14
    dec d                                         ; $2d70: $15
    inc [hl]                                      ; $2d71: $34
    ld h, h                                       ; $2d72: $64
    dec [hl]                                      ; $2d73: $35
    ld [hl], $35                                  ; $2d74: $36 $35
    dec d                                         ; $2d76: $15
    inc sp                                        ; $2d77: $33
    ld de, $1111                                  ; $2d78: $11 $11 $11

Call_000_2d7b:
    add l                                         ; $2d7b: $85
    add l                                         ; $2d7c: $85
    ld h, $35                                     ; $2d7d: $26 $35
    ld [hl], a                                    ; $2d7f: $77
    inc d                                         ; $2d80: $14
    ld de, $4711                                  ; $2d81: $11 $11 $47
    ld c, b                                       ; $2d84: $48
    ld b, a                                       ; $2d85: $47
    ld c, b                                       ; $2d86: $48
    ld d, l                                       ; $2d87: $55
    ld d, [hl]                                    ; $2d88: $56
    ld d, [hl]                                    ; $2d89: $56
    ld d, [hl]                                    ; $2d8a: $56
    add b                                         ; $2d8b: $80
    add b                                         ; $2d8c: $80
    add b                                         ; $2d8d: $80
    add b                                         ; $2d8e: $80
    add b                                         ; $2d8f: $80
    add b                                         ; $2d90: $80
    add b                                         ; $2d91: $80
    add b                                         ; $2d92: $80
    add b                                         ; $2d93: $80
    nop                                           ; $2d94: $00
    add b                                         ; $2d95: $80
    add b                                         ; $2d96: $80
    add b                                         ; $2d97: $80
    add b                                         ; $2d98: $80
    dec b                                         ; $2d99: $05
    inc b                                         ; $2d9a: $04
    rlca                                          ; $2d9b: $07
    ld [$0180], sp                                ; $2d9c: $08 $80 $01
    add b                                         ; $2d9f: $80
    nop                                           ; $2da0: $00
    nop                                           ; $2da1: $00
    nop                                           ; $2da2: $00
    add b                                         ; $2da3: $80
    ld [bc], a                                    ; $2da4: $02
    ld [bc], a                                    ; $2da5: $02
    ld [bc], a                                    ; $2da6: $02
    add b                                         ; $2da7: $80
    dec c                                         ; $2da8: $0d
    dec b                                         ; $2da9: $05
    inc bc                                        ; $2daa: $03
    dec bc                                        ; $2dab: $0b
    nop                                           ; $2dac: $00
    inc c                                         ; $2dad: $0c
    dec c                                         ; $2dae: $0d
    nop                                           ; $2daf: $00
    nop                                           ; $2db0: $00
    nop                                           ; $2db1: $00
    nop                                           ; $2db2: $00
    nop                                           ; $2db3: $00
    nop                                           ; $2db4: $00

Call_000_2db5:
    ld hl, $206b                                  ; $2db5: $21 $6b $20
    call Call_000_041a                            ; $2db8: $cd $1a $04
    ld a, $0e                                     ; $2dbb: $3e $0e
    rst RST_28                                    ; $2dbd: $ef
    ld a, [hl]                                    ; $2dbe: $7e
    and $07                                       ; $2dbf: $e6 $07
    ld c, a                                       ; $2dc1: $4f
    ld b, $0a                                     ; $2dc2: $06 $0a
    call Call_000_03cf                            ; $2dc4: $cd $cf $03
    add d                                         ; $2dc7: $82
    ld [$c50a], a                                 ; $2dc8: $ea $0a $c5
    ld a, [hl]                                    ; $2dcb: $7e
    rrca                                          ; $2dcc: $0f
    rrca                                          ; $2dcd: $0f
    rrca                                          ; $2dce: $0f
    and $07                                       ; $2dcf: $e6 $07
    ld c, a                                       ; $2dd1: $4f
    ld b, $08                                     ; $2dd2: $06 $08
    call Call_000_03cf                            ; $2dd4: $cd $cf $03
    add e                                         ; $2dd7: $83
    ld [$c509], a                                 ; $2dd8: $ea $09 $c5
    ret                                           ; $2ddb: $c9


Call_000_2ddc:
    ld a, l                                       ; $2ddc: $7d
    and $07                                       ; $2ddd: $e6 $07
    ld [$c50b], a                                 ; $2ddf: $ea $0b $c5
    ld a, l                                       ; $2de2: $7d
    and $38                                       ; $2de3: $e6 $38
    ld c, a                                       ; $2de5: $4f
    ld b, $ff                                     ; $2de6: $06 $ff
    ld a, h                                       ; $2de8: $7c

jr_000_2de9:
    inc b                                         ; $2de9: $04
    sub $0a                                       ; $2dea: $d6 $0a
    jr nc, jr_000_2de9                            ; $2dec: $30 $fb

    add $0a                                       ; $2dee: $c6 $0a
    ld [$c50c], a                                 ; $2df0: $ea $0c $c5
    ld a, b                                       ; $2df3: $78
    or c                                          ; $2df4: $b1
    ld hl, $c4c0                                  ; $2df5: $21 $c0 $c4
    rst RST_28                                    ; $2df8: $ef
    ld a, [hl]                                    ; $2df9: $7e
    ld [$c508], a                                 ; $2dfa: $ea $08 $c5
    ret                                           ; $2dfd: $c9


Call_000_2dfe:
    ld c, l                                       ; $2dfe: $4d
    ld b, h                                       ; $2dff: $44
    ld hl, $2047                                  ; $2e00: $21 $47 $20
    jr jr_000_2e0a                                ; $2e03: $18 $05

Call_000_2e05:
    ld c, l                                       ; $2e05: $4d
    ld b, h                                       ; $2e06: $44
    ld hl, $2059                                  ; $2e07: $21 $59 $20

jr_000_2e0a:
    call Call_000_041a                            ; $2e0a: $cd $1a $04
    ld a, e                                       ; $2e0d: $7b
    swap a                                        ; $2e0e: $cb $37
    add a                                         ; $2e10: $87
    add d                                         ; $2e11: $82
    rst RST_28                                    ; $2e12: $ef
    ld a, [hl]                                    ; $2e13: $7e
    jp Jump_000_0450                              ; $2e14: $c3 $50 $04


Call_000_2e17:
    ld a, [$c225]                                 ; $2e17: $fa $25 $c2
    ld e, a                                       ; $2e1a: $5f
    ld a, [$c226]                                 ; $2e1b: $fa $26 $c2
    ld d, a                                       ; $2e1e: $57
    ld a, [$c227]                                 ; $2e1f: $fa $27 $c2
    call Call_000_2e05                            ; $2e22: $cd $05 $2e
    jp Jump_000_0450                              ; $2e25: $c3 $50 $04


Call_000_2e28:
    call Call_000_2e17                            ; $2e28: $cd $17 $2e
    ld a, [$c224]                                 ; $2e2b: $fa $24 $c2
    ld de, $7931                                  ; $2e2e: $11 $31 $79
    rst RST_30                                    ; $2e31: $f7
    ld a, [de]                                    ; $2e32: $1a
    rst RST_00                                    ; $2e33: $c7
    ld a, $2e                                     ; $2e34: $3e $2e
    ld b, b                                       ; $2e36: $40
    ld l, $43                                     ; $2e37: $2e $43
    ld l, $46                                     ; $2e39: $2e $46
    ld l, $4d                                     ; $2e3b: $2e $4d
    ld l, $af                                     ; $2e3d: $2e $af
    ret                                           ; $2e3f: $c9


    ld a, [hl]                                    ; $2e40: $7e
    or a                                          ; $2e41: $b7
    ret                                           ; $2e42: $c9


    ld a, [hl+]                                   ; $2e43: $2a
    or [hl]                                       ; $2e44: $b6

Jump_000_2e45:
    ret                                           ; $2e45: $c9


    ld a, [hl]                                    ; $2e46: $7e

Jump_000_2e47:
    ld de, $0020                                  ; $2e47: $11 $20 $00
    add hl, de                                    ; $2e4a: $19
    or [hl]                                       ; $2e4b: $b6
    ret                                           ; $2e4c: $c9


    ld a, [hl+]                                   ; $2e4d: $2a
    or [hl]                                       ; $2e4e: $b6
    ld de, $001f                                  ; $2e4f: $11 $1f $00
    add hl, de                                    ; $2e52: $19
    or [hl]                                       ; $2e53: $b6
    inc l                                         ; $2e54: $2c
    or [hl]                                       ; $2e55: $b6
    ret                                           ; $2e56: $c9


Call_000_2e57:
Jump_000_2e57:
    ld a, [$c503]                                 ; $2e57: $fa $03 $c5
    ld e, a                                       ; $2e5a: $5f
    ld a, [$c504]                                 ; $2e5b: $fa $04 $c5
    ld d, a                                       ; $2e5e: $57
    ld a, [$c500]                                 ; $2e5f: $fa $00 $c5
    call Call_000_2e05                            ; $2e62: $cd $05 $2e
    ld l, c                                       ; $2e65: $69
    ld h, b                                       ; $2e66: $60
    ld c, $01                                     ; $2e67: $0e $01
    ld a, $01                                     ; $2e69: $3e $01
    jr jr_000_2e77                                ; $2e6b: $18 $0a

Call_000_2e6d:
    call Call_000_2e17                            ; $2e6d: $cd $17 $2e
    ld a, [$c23a]                                 ; $2e70: $fa $3a $c2
    ld c, a                                       ; $2e73: $4f
    ld a, [$c224]                                 ; $2e74: $fa $24 $c2

jr_000_2e77:
    ld de, $7931                                  ; $2e77: $11 $31 $79
    rst RST_30                                    ; $2e7a: $f7
    ld a, [de]                                    ; $2e7b: $1a
    rst RST_00                                    ; $2e7c: $c7
    add a                                         ; $2e7d: $87
    ld l, $88                                     ; $2e7e: $2e $88
    ld l, $8a                                     ; $2e80: $2e $8a
    ld l, $8e                                     ; $2e82: $2e $8e
    ld l, $95                                     ; $2e84: $2e $95
    ld l, $c9                                     ; $2e86: $2e $c9
    ld [hl], c                                    ; $2e88: $71
    ret                                           ; $2e89: $c9


    ld [hl], c                                    ; $2e8a: $71
    inc l                                         ; $2e8b: $2c
    ld [hl], c                                    ; $2e8c: $71
    ret                                           ; $2e8d: $c9


    ld [hl], c                                    ; $2e8e: $71
    ld de, $0020                                  ; $2e8f: $11 $20 $00
    add hl, de                                    ; $2e92: $19
    ld [hl], c                                    ; $2e93: $71
    ret                                           ; $2e94: $c9


    ld [hl], c                                    ; $2e95: $71
    inc l                                         ; $2e96: $2c
    ld [hl], c                                    ; $2e97: $71
    ld de, $001f                                  ; $2e98: $11 $1f $00
    add hl, de                                    ; $2e9b: $19
    ld [hl], c                                    ; $2e9c: $71
    inc l                                         ; $2e9d: $2c
    ld [hl], c                                    ; $2e9e: $71
    ret                                           ; $2e9f: $c9


Call_000_2ea0:
    ld a, [$c503]                                 ; $2ea0: $fa $03 $c5
    ld e, a                                       ; $2ea3: $5f
    ld a, [$c504]                                 ; $2ea4: $fa $04 $c5
    ld d, a                                       ; $2ea7: $57
    ld a, [$c500]                                 ; $2ea8: $fa $00 $c5
    call Call_000_2e05                            ; $2eab: $cd $05 $2e
    ld l, c                                       ; $2eae: $69
    ld h, b                                       ; $2eaf: $60
    ld c, $01                                     ; $2eb0: $0e $01
    ld a, $01                                     ; $2eb2: $3e $01
    jr jr_000_2ec0                                ; $2eb4: $18 $0a

Call_000_2eb6:
    call Call_000_2e17                            ; $2eb6: $cd $17 $2e
    ld a, [$c23a]                                 ; $2eb9: $fa $3a $c2
    ld c, a                                       ; $2ebc: $4f
    ld a, [$c224]                                 ; $2ebd: $fa $24 $c2

jr_000_2ec0:
    ld de, $7931                                  ; $2ec0: $11 $31 $79
    rst RST_30                                    ; $2ec3: $f7
    ld a, [de]                                    ; $2ec4: $1a
    rst RST_00                                    ; $2ec5: $c7
    ret nc                                        ; $2ec6: $d0

    ld l, $d1                                     ; $2ec7: $2e $d1
    ld l, $d6                                     ; $2ec9: $2e $d6
    ld l, $dc                                     ; $2ecb: $2e $dc
    ld l, $e5                                     ; $2ecd: $2e $e5
    ld l, $c9                                     ; $2ecf: $2e $c9

Call_000_2ed1:
jr_000_2ed1:
    ld a, [hl]                                    ; $2ed1: $7e
    sub c                                         ; $2ed2: $91
    ret nz                                        ; $2ed3: $c0

    ld [hl], a                                    ; $2ed4: $77
    ret                                           ; $2ed5: $c9


Call_000_2ed6:
jr_000_2ed6:
    call Call_000_2ed1                            ; $2ed6: $cd $d1 $2e
    inc l                                         ; $2ed9: $2c
    jr jr_000_2ed1                                ; $2eda: $18 $f5

    call Call_000_2ed1                            ; $2edc: $cd $d1 $2e
    ld de, $0020                                  ; $2edf: $11 $20 $00
    add hl, de                                    ; $2ee2: $19
    jr jr_000_2ed1                                ; $2ee3: $18 $ec

    call Call_000_2ed6                            ; $2ee5: $cd $d6 $2e
    ld de, $001f                                  ; $2ee8: $11 $1f $00
    add hl, de                                    ; $2eeb: $19
    jr jr_000_2ed6                                ; $2eec: $18 $e8

Call_000_2eee:
    ld l, $01                                     ; $2eee: $2e $01
    ld a, [hl]                                    ; $2ef0: $7e

Call_000_2ef1:
    call Call_000_2dfe                            ; $2ef1: $cd $fe $2d
    push hl                                       ; $2ef4: $e5
    ld [$c240], a                                 ; $2ef5: $ea $40 $c2
    bit 7, a                                      ; $2ef8: $cb $7f
    ld hl, $2d8b                                  ; $2efa: $21 $8b $2d
    jr z, jr_000_2f0e                             ; $2efd: $28 $0f

    and $7f                                       ; $2eff: $e6 $7f
    ld l, a                                       ; $2f01: $6f
    ld h, $d5                                     ; $2f02: $26 $d5
    bit 7, [hl]                                   ; $2f04: $cb $7e
    ld a, $89                                     ; $2f06: $3e $89
    jr nz, jr_000_2f10                            ; $2f08: $20 $06

    ld a, $0a                                     ; $2f0a: $3e $0a
    jr jr_000_2f10                                ; $2f0c: $18 $02

jr_000_2f0e:
    rst RST_28                                    ; $2f0e: $ef
    ld a, [hl]                                    ; $2f0f: $7e

jr_000_2f10:
    ld [$c241], a                                 ; $2f10: $ea $41 $c2
    pop hl                                        ; $2f13: $e1
    ld a, c                                       ; $2f14: $79
    ld [$c243], a                                 ; $2f15: $ea $43 $c2
    ld a, b                                       ; $2f18: $78
    ld [$c244], a                                 ; $2f19: $ea $44 $c2
    ld a, e                                       ; $2f1c: $7b
    ld [$c247], a                                 ; $2f1d: $ea $47 $c2
    ld a, d                                       ; $2f20: $7a
    ld [$c248], a                                 ; $2f21: $ea $48 $c2
    ret                                           ; $2f24: $c9


Call_000_2f25:
    ld l, $01                                     ; $2f25: $2e $01
    ld a, [hl]                                    ; $2f27: $7e

Call_000_2f28:
    call Call_000_2e05                            ; $2f28: $cd $05 $2e
    ld [$c242], a                                 ; $2f2b: $ea $42 $c2
    ld a, c                                       ; $2f2e: $79
    ld [$c245], a                                 ; $2f2f: $ea $45 $c2
    ld a, b                                       ; $2f32: $78
    ld [$c246], a                                 ; $2f33: $ea $46 $c2
    ld a, e                                       ; $2f36: $7b
    ld [$c249], a                                 ; $2f37: $ea $49 $c2
    ld a, d                                       ; $2f3a: $7a
    ld [$c24a], a                                 ; $2f3b: $ea $4a $c2
    ret                                           ; $2f3e: $c9


Call_000_2f3f:
    ld a, $1d                                     ; $2f3f: $3e $1d
    ld [$c24e], a                                 ; $2f41: $ea $4e $c2
    ld a, $23                                     ; $2f44: $3e $23
    jr jr_000_2f53                                ; $2f46: $18 $0b

Call_000_2f48:
    ld a, $09                                     ; $2f48: $3e $09
    jr jr_000_2f4e                                ; $2f4a: $18 $02

Call_000_2f4c:
    ld a, $22                                     ; $2f4c: $3e $22

jr_000_2f4e:
    ld [$c24e], a                                 ; $2f4e: $ea $4e $c2
    ld a, $7f                                     ; $2f51: $3e $7f

jr_000_2f53:
    ld [$c24f], a                                 ; $2f53: $ea $4f $c2
    ld a, c                                       ; $2f56: $79
    inc a                                         ; $2f57: $3c
    ld hl, $368c                                  ; $2f58: $21 $8c $36
    call Call_000_041e_WordTableLookupToDE                            ; $2f5b: $cd $1e $04
    call Call_000_3e08                            ; $2f5e: $cd $08 $3e
    ret nc                                        ; $2f61: $d0

    push bc                                       ; $2f62: $c5
    ld a, [$c500]                                 ; $2f63: $fa $00 $c5
    call Call_000_2ef1                            ; $2f66: $cd $f1 $2e
    pop bc                                        ; $2f69: $c1
    ld a, [$c240]                                 ; $2f6a: $fa $40 $c2
    ld l, a                                       ; $2f6d: $6f
    ld a, [$c24e]                                 ; $2f6e: $fa $4e $c2
    cp l                                          ; $2f71: $bd
    scf                                           ; $2f72: $37
    ret z                                         ; $2f73: $c8

    ld a, [$c24f]                                 ; $2f74: $fa $4f $c2
    cp l                                          ; $2f77: $bd
    scf                                           ; $2f78: $37
    ret z                                         ; $2f79: $c8

    or a                                          ; $2f7a: $b7
    ret                                           ; $2f7b: $c9


Call_000_2f7c:
    ld a, [$c01a]                                 ; $2f7c: $fa $1a $c0
    rra                                           ; $2f7f: $1f
    ld de, $db00                                  ; $2f80: $11 $00 $db
    jr c, jr_000_2f88                             ; $2f83: $38 $03

    ld de, $dc00                                  ; $2f85: $11 $00 $dc

jr_000_2f88:
    ld hl, $da00                                  ; $2f88: $21 $00 $da
    ld b, $a0                                     ; $2f8b: $06 $a0
    jp Jump_000_2ff6                              ; $2f8d: $c3 $f6 $2f


Call_000_2f90:
Jump_000_2f90:
    ld hl, $da00                                  ; $2f90: $21 $00 $da
    ld de, $db00                                  ; $2f93: $11 $00 $db
    ld b, $a0                                     ; $2f96: $06 $a0
    call Call_000_2ff6                            ; $2f98: $cd $f6 $2f
    ld hl, $da00                                  ; $2f9b: $21 $00 $da
    ld de, $dc00                                  ; $2f9e: $11 $00 $dc
    ld b, $a0                                     ; $2fa1: $06 $a0
    call Call_000_2ff6                            ; $2fa3: $cd $f6 $2f
    ld hl, $da00                                  ; $2fa6: $21 $00 $da
    ld de, $dd00                                  ; $2fa9: $11 $00 $dd
    ld b, $a0                                     ; $2fac: $06 $a0
    call Call_000_2ff6                            ; $2fae: $cd $f6 $2f
    di                                            ; $2fb1: $f3
    call $ff90                                    ; $2fb2: $cd $90 $ff
    ei                                            ; $2fb5: $fb
    ret                                           ; $2fb6: $c9


Call_000_2fb7:
    ld a, [$c01a]                                 ; $2fb7: $fa $1a $c0
    rra                                           ; $2fba: $1f
    ld hl, $dc00                                  ; $2fbb: $21 $00 $dc
    jr c, jr_000_2fc3                             ; $2fbe: $38 $03

    ld hl, $db00                                  ; $2fc0: $21 $00 $db

jr_000_2fc3:
    ld de, $dd00                                  ; $2fc3: $11 $00 $dd
    ld b, $30                                     ; $2fc6: $06 $30
    call Call_000_2ff6                            ; $2fc8: $cd $f6 $2f
    ld a, [$c019]                                 ; $2fcb: $fa $19 $c0
    add $13                                       ; $2fce: $c6 $13
    cp $1b                                        ; $2fd0: $fe $1b
    jr c, jr_000_2fd6                             ; $2fd2: $38 $02

    sub $1b                                       ; $2fd4: $d6 $1b

jr_000_2fd6:
    ld [$c019], a                                 ; $2fd6: $ea $19 $c0
    add $0d                                       ; $2fd9: $c6 $0d
    add a                                         ; $2fdb: $87
    add a                                         ; $2fdc: $87
    ld l, a                                       ; $2fdd: $6f
    ld a, $a0                                     ; $2fde: $3e $a0
    sub l                                         ; $2fe0: $95
    ld b, a                                       ; $2fe1: $47
    ld a, l                                       ; $2fe2: $7d
    sub $30                                       ; $2fe3: $d6 $30
    ld c, a                                       ; $2fe5: $4f
    ld a, [$c01a]                                 ; $2fe6: $fa $1a $c0
    rra                                           ; $2fe9: $1f
    ld h, $dc                                     ; $2fea: $26 $dc
    jr c, jr_000_2ff0                             ; $2fec: $38 $02

    ld h, $db                                     ; $2fee: $26 $db

jr_000_2ff0:
    call Call_000_2ff6                            ; $2ff0: $cd $f6 $2f
    ld l, $30                                     ; $2ff3: $2e $30
    ld b, c                                       ; $2ff5: $41

Call_000_2ff6:
Jump_000_2ff6:
jr_000_2ff6:
    ld a, [hl+]                                   ; $2ff6: $2a
    ld [de], a                                    ; $2ff7: $12
    inc de                                        ; $2ff8: $13
    dec b                                         ; $2ff9: $05
    jr nz, jr_000_2ff6                            ; $2ffa: $20 $fa

    ret                                           ; $2ffc: $c9


jr_000_2ffd:
    ret                                           ; $2ffd: $c9


Call_000_2ffe:
    call Call_000_0e2d                            ; $2ffe: $cd $2d $0e
    call Call_000_2298                            ; $3001: $cd $98 $22
    call Call_000_31f4                            ; $3004: $cd $f4 $31
    call $75e8                                    ; $3007: $cd $e8 $75
    call Call_000_28d5                            ; $300a: $cd $d5 $28
    call Call_000_2ae6                            ; $300d: $cd $e6 $2a
    call $496b                                    ; $3010: $cd $6b $49
    call Call_000_313a                            ; $3013: $cd $3a $31
    call $207f                                    ; $3016: $cd $7f $20
    xor a                                         ; $3019: $af
    ld [$c036], a                                 ; $301a: $ea $36 $c0
    call Call_000_0e6d                            ; $301d: $cd $6d $0e
    call Call_000_0259                            ; $3020: $cd $59 $02
    call Call_000_2c71                            ; $3023: $cd $71 $2c
    call Call_000_2f90                            ; $3026: $cd $90 $2f
    call Call_000_0e37                            ; $3029: $cd $37 $0e
    xor a                                         ; $302c: $af
    ld [$c038], a                                 ; $302d: $ea $38 $c0
    call Call_000_3149                            ; $3030: $cd $49 $31
    ret                                           ; $3033: $c9


Call_000_3034:
    call Call_000_0e2d                            ; $3034: $cd $2d $0e

jr_000_3037:
    call Call_000_2298                            ; $3037: $cd $98 $22
    call Call_000_31f4                            ; $303a: $cd $f4 $31
    call $75e8                                    ; $303d: $cd $e8 $75
    call Call_000_28d5                            ; $3040: $cd $d5 $28
    call Call_000_2ae6                            ; $3043: $cd $e6 $2a
    call $496b                                    ; $3046: $cd $6b $49
    call Call_000_313a                            ; $3049: $cd $3a $31
    call $207f                                    ; $304c: $cd $7f $20
    ld a, [$c10f]                                 ; $304f: $fa $0f $c1
    cp $01                                        ; $3052: $fe $01
    call z, Call_000_3540                         ; $3054: $cc $40 $35
    xor a                                         ; $3057: $af
    ld [$c036], a                                 ; $3058: $ea $36 $c0
    call Call_000_0e6d                            ; $305b: $cd $6d $0e
    call Call_000_0259                            ; $305e: $cd $59 $02
    call Call_000_2c71                            ; $3061: $cd $71 $2c
    call Call_000_2f90                            ; $3064: $cd $90 $2f
    call Call_000_0e37                            ; $3067: $cd $37 $0e
    call Call_000_3149                            ; $306a: $cd $49 $31
    ret                                           ; $306d: $c9


jr_000_306e:
    ld hl, $c10c                                  ; $306e: $21 $0c $c1
    inc [hl]                                      ; $3071: $34
    ret                                           ; $3072: $c9


Call_000_3073:
    ld a, [$c10c]                                 ; $3073: $fa $0c $c1
    rst RST_00                                    ; $3076: $c7
    ld a, l                                       ; $3077: $7d
    jr nc, jr_000_2ffd                            ; $3078: $30 $83

    jr nc, jr_000_3037                            ; $307a: $30 $bb

    jr nc, @-$31                                  ; $307c: $30 $cd

    inc bc                                        ; $307e: $03
    ld sp, $18d8                                  ; $307f: $31 $d8 $18
    db $eb                                        ; $3082: $eb
    call Call_000_0e2d                            ; $3083: $cd $2d $0e
    ld a, [$c500]                                 ; $3086: $fa $00 $c5
    ld [$c420], a                                 ; $3089: $ea $20 $c4
    call $75e8                                    ; $308c: $cd $e8 $75
    call Call_000_28d5                            ; $308f: $cd $d5 $28
    call Call_000_32b2                            ; $3092: $cd $b2 $32
    call $4b57                                    ; $3095: $cd $57 $4b
    call $4d89                                    ; $3098: $cd $89 $4d
    call $4b95                                    ; $309b: $cd $95 $4b
    call Call_000_313a                            ; $309e: $cd $3a $31
    call $207f                                    ; $30a1: $cd $7f $20
    xor a                                         ; $30a4: $af
    ld [$c036], a                                 ; $30a5: $ea $36 $c0
    ld [$c037], a                                 ; $30a8: $ea $37 $c0
    ld a, $01                                     ; $30ab: $3e $01
    ld [$c25f], a                                 ; $30ad: $ea $5f $c2
    call Call_000_2c71                            ; $30b0: $cd $71 $2c
    call Call_000_2f90                            ; $30b3: $cd $90 $2f
    call Call_000_0e37                            ; $30b6: $cd $37 $0e
    jr jr_000_306e                                ; $30b9: $18 $b3

Call_000_30bb:
    call Call_000_30fc                            ; $30bb: $cd $fc $30
    ret c                                         ; $30be: $d8

    ld a, $01                                     ; $30bf: $3e $01
    ld [$c148], a                                 ; $30c1: $ea $48 $c1
    ret                                           ; $30c4: $c9


Call_000_30c5:
Jump_000_30c5:
    call Call_000_0e2d                            ; $30c5: $cd $2d $0e
    call Call_000_0e6d                            ; $30c8: $cd $6d $0e
    call Call_000_0259                            ; $30cb: $cd $59 $02
    call Call_000_38c5                            ; $30ce: $cd $c5 $38
    call Call_000_22f9                            ; $30d1: $cd $f9 $22
    call Call_000_3213                            ; $30d4: $cd $13 $32
    call Call_000_28d5                            ; $30d7: $cd $d5 $28
    call Call_000_2ae6                            ; $30da: $cd $e6 $2a
    call Call_000_313a                            ; $30dd: $cd $3a $31
    call $207f                                    ; $30e0: $cd $7f $20
    call Call_000_32b2                            ; $30e3: $cd $b2 $32
    call $4b57                                    ; $30e6: $cd $57 $4b
    call $4d89                                    ; $30e9: $cd $89 $4d
    call $4b95                                    ; $30ec: $cd $95 $4b
    call Call_000_3181                            ; $30ef: $cd $81 $31
    call Call_000_2c71                            ; $30f2: $cd $71 $2c
    call Call_000_2f90                            ; $30f5: $cd $90 $2f
    call Call_000_0e37                            ; $30f8: $cd $37 $0e
    ret                                           ; $30fb: $c9


Call_000_30fc:
    ld c, $02                                     ; $30fc: $0e $02

Call_000_30fe:
    ld hl, $312a                                  ; $30fe: $21 $2a $31
    jr jr_000_3108                                ; $3101: $18 $05

    ld c, $02                                     ; $3103: $0e $02

Call_000_3105:
    ld hl, $3132                                  ; $3105: $21 $32 $31

jr_000_3108:
    ld a, [$c036]                                 ; $3108: $fa $36 $c0
    cp $04                                        ; $310b: $fe $04
    ret nc                                        ; $310d: $d0

    add a                                         ; $310e: $87
    rst RST_28                                    ; $310f: $ef
    ld a, [hl+]                                   ; $3110: $2a
    ld [$c015], a                                 ; $3111: $ea $15 $c0
    ld [$c016], a                                 ; $3114: $ea $16 $c0
    ld a, [hl]                                    ; $3117: $7e
    ld [$c017], a                                 ; $3118: $ea $17 $c0
    ld hl, $c037                                  ; $311b: $21 $37 $c0
    ld a, [hl]                                    ; $311e: $7e
    inc [hl]                                      ; $311f: $34
    cp c                                          ; $3120: $b9
    ret c                                         ; $3121: $d8

    ld [hl], $00                                  ; $3122: $36 $00
    ld hl, $c036                                  ; $3124: $21 $36 $c0
    inc [hl]                                      ; $3127: $34
    scf                                           ; $3128: $37
    ret                                           ; $3129: $c9


    nop                                           ; $312a: $00
    nop                                           ; $312b: $00
    ld b, b                                       ; $312c: $40
    ld b, b                                       ; $312d: $40
    sub b                                         ; $312e: $90
    sub b                                         ; $312f: $90
    db $e4                                        ; $3130: $e4
    ret nc                                        ; $3131: $d0

    db $e4                                        ; $3132: $e4
    ret nc                                        ; $3133: $d0

    sub b                                         ; $3134: $90
    sub b                                         ; $3135: $90
    ld b, b                                       ; $3136: $40
    ld b, b                                       ; $3137: $40
    nop                                           ; $3138: $00
    nop                                           ; $3139: $00

Call_000_313a:
    ld a, [$c500]                                 ; $313a: $fa $00 $c5
    ld hl, $206b                                  ; $313d: $21 $6b $20
    call Call_000_041a                            ; $3140: $cd $1a $04
    ld a, $12                                     ; $3143: $3e $12
    rst RST_28                                    ; $3145: $ef
    ld [hl], $01                                  ; $3146: $36 $01
    ret                                           ; $3148: $c9


Call_000_3149:
Jump_000_3149:
    ld hl, $65f4                                  ; $3149: $21 $f4 $65
    jr jr_000_3151                                ; $314c: $18 $03

Call_000_314e:
Jump_000_314e:
    ld hl, $6600                                  ; $314e: $21 $00 $66

jr_000_3151:
    call Call_000_3159                            ; $3151: $cd $59 $31
    ret z                                         ; $3154: $c8

    ld a, b                                       ; $3155: $78
    jp $65ec                                      ; $3156: $c3 $ec $65


Call_000_3159:
    ld a, [$c112]                                 ; $3159: $fa $12 $c1
    or a                                          ; $315c: $b7
    jr z, jr_000_3165                             ; $315d: $28 $06

    xor a                                         ; $315f: $af
    call $65ec                                    ; $3160: $cd $ec $65
    xor a                                         ; $3163: $af
    ret                                           ; $3164: $c9


jr_000_3165:
    ld a, [$c115]                                 ; $3165: $fa $15 $c1
    ld b, $06                                     ; $3168: $06 $06
    cp b                                          ; $316a: $b8
    jr z, jr_000_317c                             ; $316b: $28 $0f

    ld a, [$c116]                                 ; $316d: $fa $16 $c1
    or a                                          ; $3170: $b7
    ld a, [$c101]                                 ; $3171: $fa $01 $c1
    jr z, jr_000_3178                             ; $3174: $28 $02

    ld a, $05                                     ; $3176: $3e $05

jr_000_3178:
    ld [$c115], a                                 ; $3178: $ea $15 $c1
    ld b, a                                       ; $317b: $47

jr_000_317c:
    ld a, [$c038]                                 ; $317c: $fa $38 $c0
    cp b                                          ; $317f: $b8
    ret                                           ; $3180: $c9


Call_000_3181:
    ld a, [$c514]                                 ; $3181: $fa $14 $c5
    cp $03                                        ; $3184: $fe $03
    ld hl, $405e                                  ; $3186: $21 $5e $40
    jp z, Jump_000_19fa                           ; $3189: $ca $fa $19

    cp $13                                        ; $318c: $fe $13
    ld hl, $4064                                  ; $318e: $21 $64 $40
    jp z, Jump_000_19fa                           ; $3191: $ca $fa $19

    cp $14                                        ; $3194: $fe $14
    ld hl, $406a                                  ; $3196: $21 $6a $40
    jp z, Jump_000_19fa                           ; $3199: $ca $fa $19

    cp $0e                                        ; $319c: $fe $0e
    ld hl, $4070                                  ; $319e: $21 $70 $40
    jp z, Jump_000_19fa                           ; $31a1: $ca $fa $19

    cp $07                                        ; $31a4: $fe $07
    ld hl, $4076                                  ; $31a6: $21 $76 $40
    jp z, Jump_000_19fa                           ; $31a9: $ca $fa $19

    ret                                           ; $31ac: $c9


; Initializes the player's base stats for a quest, indexed by level ($c102,
; 0-8 for level 1-9, 9 for level M). Looks up a 4-byte row
; [HP, Attack, Defense, Lucky] from BaseStatsByLevel below and copies it into
; wPlayerHP/wPlayerAttack/wPlayerDefense/wPlayerLucky, then mirrors HP into
; wPlayerMaxHP. Table values confirmed against strategywiki.org's published
; stat table (level groups 1-3/4-6/7-9/M), see NOTES.md.
Call_000_31ad_InitPlayerStatsFromLevel:
    ld a, [$c102]                                 ; $31ad: $fa $02 $c1
    add a                                         ; $31b0: $87
    add a                                         ; $31b1: $87
    ld hl, $31c8                                  ; $31b2: $21 $c8 $31 ($c102 is 1-based; BaseStatsByLevel-4, see below)
    rst RST_28                                    ; $31b5: $ef
    ld de, wPlayerHP                              ; $31b6: $11 $20 $c1
    ld bc, $0004                                  ; $31b9: $01 $04 $00
    call Call_000_0442                            ; $31bc: $cd $42 $04
    ld a, [wPlayerHP]                             ; $31bf: $fa $20 $c1
    ld [wPlayerMaxHP], a                          ; $31c2: $ea $24 $c1
    call $5cec                                    ; $31c5: $cd $ec $5c
    call $5d07                                    ; $31c8: $cd $07 $5d
    ret                                           ; $31cb: $c9


; [HP (BCD), Attack, Defense, Lucky] per level; 3 identical rows per level
; group (1-3/4-6/7-9), 1 row for level M.
BaseStatsByLevel:
    db $10, $04, $04, $04                         ; $31cc: level 1
    db $10, $04, $04, $04                         ; $31d0: level 2
    db $10, $04, $04, $04                         ; $31d4: level 3
    db $11, $04, $04, $05                         ; $31d8: level 4
    db $11, $04, $04, $05                         ; $31dc: level 5
    db $11, $04, $04, $05                         ; $31e0: level 6
    db $12, $04, $04, $06                         ; $31e4: level 7
    db $12, $04, $04, $06                         ; $31e8: level 8
    db $12, $04, $04, $06                         ; $31ec: level 9
    db $13, $05, $06, $07                         ; $31f0: level M

Call_000_31f4:
    call Call_000_320d                            ; $31f4: $cd $0d $32
    call Call_000_3213                            ; $31f7: $cd $13 $32
    call Call_000_3239                            ; $31fa: $cd $39 $32
    call Call_000_3274                            ; $31fd: $cd $74 $32
    call Call_000_2e57                            ; $3200: $cd $57 $2e
    call Call_000_32b2                            ; $3203: $cd $b2 $32
    ld a, [$c500]                                 ; $3206: $fa $00 $c5
    ld [$c420], a                                 ; $3209: $ea $20 $c4
    ret                                           ; $320c: $c9


Call_000_320d:
    ld a, $03                                     ; $320d: $3e $03
    ld [$c510], a                                 ; $320f: $ea $10 $c5
    ret                                           ; $3212: $c9


Call_000_3213:
    ld a, [$c127]                                 ; $3213: $fa $27 $c1
    call Call_000_19b2                            ; $3216: $cd $b2 $19
    ld a, [$c14b]                                 ; $3219: $fa $4b $c1
    cp $0a                                        ; $321c: $fe $0a
    ret nz                                        ; $321e: $c0

    ld a, [$c127]                                 ; $321f: $fa $27 $c1
    set 1, a                                      ; $3222: $cb $cf
    call Call_000_19b2                            ; $3224: $cd $b2 $19
    ld a, [$c510]                                 ; $3227: $fa $10 $c5
    rrca                                          ; $322a: $0f
    rrca                                          ; $322b: $0f
    ld hl, $8000                                  ; $322c: $21 $00 $80
    rst RST_28                                    ; $322f: $ef
    ld de, $8700                                  ; $3230: $11 $00 $87
    ld bc, $0040                                  ; $3233: $01 $40 $00
    jp Jump_000_0442                              ; $3236: $c3 $42 $04


Call_000_3239:
    ld a, [$c422]                                 ; $3239: $fa $22 $c4
    ld [$c500], a                                 ; $323c: $ea $00 $c5
    ld a, [$c422]                                 ; $323f: $fa $22 $c4
    ld hl, $206b                                  ; $3242: $21 $6b $20
    call Call_000_041a                            ; $3245: $cd $1a $04
    inc hl                                        ; $3248: $23
    ld a, [hl+]                                   ; $3249: $2a
    ld [$c202], a                                 ; $324a: $ea $02 $c2
    ld a, [hl]                                    ; $324d: $7e
    ld [$c203], a                                 ; $324e: $ea $03 $c2
    ld b, a                                       ; $3251: $47
    call Call_000_12d4                            ; $3252: $cd $d4 $12
    push af                                       ; $3255: $f5
    and $0f                                       ; $3256: $e6 $0f
    rr b                                          ; $3258: $cb $18
    jr nc, jr_000_3260                            ; $325a: $30 $04

    sub $07                                       ; $325c: $d6 $07
    cpl                                           ; $325e: $2f
    inc a                                         ; $325f: $3c

jr_000_3260:
    ld [$c503], a                                 ; $3260: $ea $03 $c5
    pop af                                        ; $3263: $f1
    swap a                                        ; $3264: $cb $37
    and $0f                                       ; $3266: $e6 $0f
    rr b                                          ; $3268: $cb $18
    jr nc, jr_000_3270                            ; $326a: $30 $04

    sub $09                                       ; $326c: $d6 $09
    cpl                                           ; $326e: $2f
    inc a                                         ; $326f: $3c

jr_000_3270:
    ld [$c504], a                                 ; $3270: $ea $04 $c5
    ret                                           ; $3273: $c9


Call_000_3274:
    ld a, [$c500]                                 ; $3274: $fa $00 $c5
    ld hl, $206b                                  ; $3277: $21 $6b $20
    call Call_000_041a                            ; $327a: $cd $1a $04
    ld a, $0e                                     ; $327d: $3e $0e
    rst RST_28                                    ; $327f: $ef
    rst RST_08                                    ; $3280: $cf
    ld de, $c4c0                                  ; $3281: $11 $c0 $c4
    call Call_000_033e                            ; $3284: $cd $3e $03
    ld a, l                                       ; $3287: $7d
    and $07                                       ; $3288: $e6 $07
    add a                                         ; $328a: $87
    ld b, a                                       ; $328b: $47
    add a                                         ; $328c: $87
    add a                                         ; $328d: $87
    add b                                         ; $328e: $80
    ld b, a                                       ; $328f: $47
    ld a, [$c504]                                 ; $3290: $fa $04 $c5
    add b                                         ; $3293: $80
    ld [$c502], a                                 ; $3294: $ea $02 $c5
    ld a, l                                       ; $3297: $7d
    and $38                                       ; $3298: $e6 $38
    ld b, a                                       ; $329a: $47
    ld a, [$c503]                                 ; $329b: $fa $03 $c5
    add b                                         ; $329e: $80
    ld [$c501], a                                 ; $329f: $ea $01 $c5
    ret                                           ; $32a2: $c9


Call_000_32a3:
Jump_000_32a3:
    ld b, $0c                                     ; $32a3: $06 $0c
    ld hl, $da00                                  ; $32a5: $21 $00 $da
    ld de, $0004                                  ; $32a8: $11 $04 $00
    xor a                                         ; $32ab: $af

jr_000_32ac:
    ld [hl], a                                    ; $32ac: $77
    add hl, de                                    ; $32ad: $19
    dec b                                         ; $32ae: $05
    jr nz, jr_000_32ac                            ; $32af: $20 $fb

    ret                                           ; $32b1: $c9


Call_000_32b2:
Jump_000_32b2:
    ld a, [$c540]                                 ; $32b2: $fa $40 $c5
    cp $02                                        ; $32b5: $fe $02
    jr z, jr_000_3306                             ; $32b7: $28 $4d

Call_000_32b9:
    ld a, [$c503]                                 ; $32b9: $fa $03 $c5
    swap a                                        ; $32bc: $cb $37
    add $10                                       ; $32be: $c6 $10
    ld e, a                                       ; $32c0: $5f
    ld a, [$c504]                                 ; $32c1: $fa $04 $c5
    swap a                                        ; $32c4: $cb $37
    add $08                                       ; $32c6: $c6 $08
    ld d, a                                       ; $32c8: $57
    ld a, e                                       ; $32c9: $7b
    ld [$da00], a                                 ; $32ca: $ea $00 $da
    ld [$da04], a                                 ; $32cd: $ea $04 $da
    ld a, d                                       ; $32d0: $7a
    ld [$da01], a                                 ; $32d1: $ea $01 $da
    add $08                                       ; $32d4: $c6 $08
    ld [$da05], a                                 ; $32d6: $ea $05 $da
    ld a, [$c511]                                 ; $32d9: $fa $11 $c5
    rrca                                          ; $32dc: $0f
    and $80                                       ; $32dd: $e6 $80
    ld [$da03], a                                 ; $32df: $ea $03 $da
    ld [$da07], a                                 ; $32e2: $ea $07 $da
    ld a, [$c14b]                                 ; $32e5: $fa $4b $c1
    cp $0a                                        ; $32e8: $fe $0a
    ld b, $30                                     ; $32ea: $06 $30
    jr z, jr_000_32f0                             ; $32ec: $28 $02

    ld b, $00                                     ; $32ee: $06 $00

jr_000_32f0:
    ld a, [$c510]                                 ; $32f0: $fa $10 $c5
    add a                                         ; $32f3: $87
    add a                                         ; $32f4: $87
    add b                                         ; $32f5: $80

jr_000_32f6:
    ld [$da02], a                                 ; $32f6: $ea $02 $da
    add $02                                       ; $32f9: $c6 $02
    ld [$da06], a                                 ; $32fb: $ea $06 $da
    ret                                           ; $32fe: $c9


Call_000_32ff:
Jump_000_32ff:
    call Call_000_32b9                            ; $32ff: $cd $b9 $32
    ld a, $24                                     ; $3302: $3e $24
    jr jr_000_32f6                                ; $3304: $18 $f0

Call_000_3306:
jr_000_3306:
    call Call_000_32b9                            ; $3306: $cd $b9 $32
    ld a, $70                                     ; $3309: $3e $70
    jr jr_000_32f6                                ; $330b: $18 $e9

    ld a, [$c268]                                 ; $330d: $fa $68 $c2
    ld b, $70                                     ; $3310: $06 $70
    cp $07                                        ; $3312: $fe $07
    jr z, jr_000_332d                             ; $3314: $28 $17

    ld b, $74                                     ; $3316: $06 $74
    cp $08                                        ; $3318: $fe $08
    jr z, jr_000_332d                             ; $331a: $28 $11

    ld b, $78                                     ; $331c: $06 $78
    cp $09                                        ; $331e: $fe $09
    jr z, jr_000_332d                             ; $3320: $28 $0b

    ret                                           ; $3322: $c9


Jump_000_3323:
    ld b, $5a                                     ; $3323: $06 $5a
    jr jr_000_332d                                ; $3325: $18 $06

Jump_000_3327:
    ld b, $42                                     ; $3327: $06 $42
    jr jr_000_332d                                ; $3329: $18 $02

Jump_000_332b:
    ld b, $56                                     ; $332b: $06 $56

jr_000_332d:
    ld a, [$da00]                                 ; $332d: $fa $00 $da
    sub $10                                       ; $3330: $d6 $10
    ld [$da08], a                                 ; $3332: $ea $08 $da
    ld [$da0c], a                                 ; $3335: $ea $0c $da
    ld a, [$da01]                                 ; $3338: $fa $01 $da
    ld [$da09], a                                 ; $333b: $ea $09 $da
    add $08                                       ; $333e: $c6 $08
    ld [$da0d], a                                 ; $3340: $ea $0d $da
    ld a, b                                       ; $3343: $78
    ld [$da0a], a                                 ; $3344: $ea $0a $da
    add $02                                       ; $3347: $c6 $02
    ld [$da0e], a                                 ; $3349: $ea $0e $da
    ld a, $10                                     ; $334c: $3e $10
    ld [$da0b], a                                 ; $334e: $ea $0b $da
    ld [$da0f], a                                 ; $3351: $ea $0f $da
    ret                                           ; $3354: $c9


Call_000_3355:
    call Call_000_3392                            ; $3355: $cd $92 $33
    ld hl, $33a4                                  ; $3358: $21 $a4 $33
    push hl                                       ; $335b: $e5
    ld a, [$c125]                                 ; $335c: $fa $25 $c1
    rst RST_00                                    ; $335f: $c7
    and h                                         ; $3360: $a4
    inc sp                                        ; $3361: $33
    add $33                                       ; $3362: $c6 $33
    sub d                                         ; $3364: $92
    scf                                           ; $3365: $37
    inc h                                         ; $3366: $24
    jr c, @+$31                                   ; $3367: $38 $2f

    ld d, b                                       ; $3369: $50
    xor h                                         ; $336a: $ac
    ld d, b                                       ; $336b: $50
    xor [hl]                                      ; $336c: $ae
    dec sp                                        ; $336d: $3b
    ret c                                         ; $336e: $d8

    dec sp                                        ; $336f: $3b
    adc e                                         ; $3370: $8b
    inc a                                         ; $3371: $3c
    ldh a, [c]                                    ; $3372: $f2
    inc a                                         ; $3373: $3c
    inc sp                                        ; $3374: $33
    dec a                                         ; $3375: $3d
    ld c, c                                       ; $3376: $49
    dec a                                         ; $3377: $3d
    ld e, c                                       ; $3378: $59
    ld e, d                                       ; $3379: $5a
    sub c                                         ; $337a: $91
    ld e, d                                       ; $337b: $5a
    sub [hl]                                      ; $337c: $96
    ld e, l                                       ; $337d: $5d
    ld [hl], a                                    ; $337e: $77
    ld h, l                                       ; $337f: $65
    inc c                                         ; $3380: $0c
    ld h, [hl]                                    ; $3381: $66
    ld h, c                                       ; $3382: $61
    ld h, a                                       ; $3383: $67
    ccf                                           ; $3384: $3f
    ld a, $24                                     ; $3385: $3e $24
    ld d, [hl]                                    ; $3387: $56
    inc c                                         ; $3388: $0c
    ld b, c                                       ; $3389: $41
    dec h                                         ; $338a: $25
    ld b, c                                       ; $338b: $41
    ld c, a                                       ; $338c: $4f
    ld a, $89                                     ; $338d: $3e $89
    ld a, $e1                                     ; $338f: $3e $e1
    ld b, h                                       ; $3391: $44

Call_000_3392:
    ld a, [$c00f]                                 ; $3392: $fa $0f $c0
    ld b, $00                                     ; $3395: $06 $00
    and $3f                                       ; $3397: $e6 $3f
    jr z, jr_000_339f                             ; $3399: $28 $04

jr_000_339b:
    inc b                                         ; $339b: $04
    rra                                           ; $339c: $1f
    jr nc, jr_000_339b                            ; $339d: $30 $fc

jr_000_339f:
    ld a, b                                       ; $339f: $78
    ld [$c512], a                                 ; $33a0: $ea $12 $c5
    ret                                           ; $33a3: $c9


    call $5d22                                    ; $33a4: $cd $22 $5d
    ld a, [$c125]                                 ; $33a7: $fa $25 $c1
    cp $00                                        ; $33aa: $fe $00
    ret nz                                        ; $33ac: $c0

    xor a                                         ; $33ad: $af
    ld [$c25f], a                                 ; $33ae: $ea $5f $c2
    ld a, $01                                     ; $33b1: $3e $01
    ld [$c109], a                                 ; $33b3: $ea $09 $c1
    ld hl, $c131                                  ; $33b6: $21 $31 $c1
    ld a, [hl]                                    ; $33b9: $7e
    or a                                          ; $33ba: $b7
    ret z                                         ; $33bb: $c8

    dec [hl]                                      ; $33bc: $35
    ret nz                                        ; $33bd: $c0

Call_000_33be:
    xor a                                         ; $33be: $af
    ld [$c12b], a                                 ; $33bf: $ea $2b $c1
    ld [$c131], a                                 ; $33c2: $ea $31 $c1
    ret                                           ; $33c5: $c9


    call $4946                                    ; $33c6: $cd $46 $49
    call z, $4b95                                 ; $33c9: $cc $95 $4b
    call Call_000_32a3                            ; $33cc: $cd $a3 $32
    call Call_000_33f5                            ; $33cf: $cd $f5 $33
    call Call_000_32b2                            ; $33d2: $cd $b2 $32
    ld a, [$c126]                                 ; $33d5: $fa $26 $c1
    rst RST_00                                    ; $33d8: $c7
    rlca                                          ; $33d9: $07
    inc [hl]                                      ; $33da: $34
    ld a, [hl-]                                   ; $33db: $3a
    inc [hl]                                      ; $33dc: $34
    sub a                                         ; $33dd: $97
    inc [hl]                                      ; $33de: $34
    ret                                           ; $33df: $c9


    inc [hl]                                      ; $33e0: $34
    call nc, $dd34                                ; $33e1: $d4 $34 $dd
    inc [hl]                                      ; $33e4: $34
    rst RST_38                                    ; $33e5: $ff
    inc [hl]                                      ; $33e6: $34
    dec b                                         ; $33e7: $05
    dec [hl]                                      ; $33e8: $35
    ld a, [de]                                    ; $33e9: $1a
    dec [hl]                                      ; $33ea: $35
    ld [hl+], a                                   ; $33eb: $22
    dec [hl]                                      ; $33ec: $35
    rra                                           ; $33ed: $1f
    inc [hl]                                      ; $33ee: $34
    ld a, [hl+]                                   ; $33ef: $2a
    dec [hl]                                      ; $33f0: $35
    dec [hl]                                      ; $33f1: $35
    dec [hl]                                      ; $33f2: $35
    ld h, d                                       ; $33f3: $62
    dec [hl]                                      ; $33f4: $35

Call_000_33f5:
    ld a, [$c512]                                 ; $33f5: $fa $12 $c5
    rst RST_00                                    ; $33f8: $c7
    ld [hl], a                                    ; $33f9: $77
    dec [hl]                                      ; $33fa: $35
    ld a, l                                       ; $33fb: $7d
    dec [hl]                                      ; $33fc: $35
    ld a, l                                       ; $33fd: $7d
    dec [hl]                                      ; $33fe: $35
    ld a, l                                       ; $33ff: $7d
    dec [hl]                                      ; $3400: $35
    ld a, l                                       ; $3401: $7d
    dec [hl]                                      ; $3402: $35
    sub [hl]                                      ; $3403: $96
    ld [hl], $2e                                  ; $3404: $36 $2e
    scf                                           ; $3406: $37
    ld a, $01                                     ; $3407: $3e $01
    ld [$c125], a                                 ; $3409: $ea $25 $c1
    call Call_000_3743                            ; $340c: $cd $43 $37
    call Call_000_3772                            ; $340f: $cd $72 $37
    call Call_000_3787                            ; $3412: $cd $87 $37
    ld a, [$c00f]                                 ; $3415: $fa $0f $c0
    and $c0                                       ; $3418: $e6 $c0
    ret z                                         ; $341a: $c8

    and $40                                       ; $341b: $e6 $40
    jr nz, jr_000_3428                            ; $341d: $20 $09

    ld a, $0f                                     ; $341f: $3e $0f
    ld [$c125], a                                 ; $3421: $ea $25 $c1
    call $6509                                    ; $3424: $cd $09 $65
    ret                                           ; $3427: $c9


jr_000_3428:
    ld a, $30                                     ; $3428: $3e $30
    call Call_000_00d9                            ; $342a: $cd $d9 $00
    ld a, $01                                     ; $342d: $3e $01
    ld [$c25e], a                                 ; $342f: $ea $5e $c2
    ld a, $14                                     ; $3432: $3e $14
    ld [$c125], a                                 ; $3434: $ea $25 $c1
    jp $4d12                                      ; $3437: $c3 $12 $4d


    call Call_000_348c                            ; $343a: $cd $8c $34
    call Call_000_2ea0                            ; $343d: $cd $a0 $2e
    ld a, [$c508]                                 ; $3440: $fa $08 $c5
    ld [$c500], a                                 ; $3443: $ea $00 $c5
    ld a, [$c509]                                 ; $3446: $fa $09 $c5
    ld [$c501], a                                 ; $3449: $ea $01 $c5
    ld a, [$c50a]                                 ; $344c: $fa $0a $c5
    ld [$c502], a                                 ; $344f: $ea $02 $c5
    ld a, [$c50b]                                 ; $3452: $fa $0b $c5
    ld [$c503], a                                 ; $3455: $ea $03 $c5
    ld a, [$c50c]                                 ; $3458: $fa $0c $c5
    ld [$c504], a                                 ; $345b: $ea $04 $c5
    call Call_000_2e57                            ; $345e: $cd $57 $2e
    call Call_000_32b2                            ; $3461: $cd $b2 $32
    call $761e                                    ; $3464: $cd $1e $76
    ld a, [$c14b]                                 ; $3467: $fa $4b $c1
    cp $0a                                        ; $346a: $fe $0a
    ret z                                         ; $346c: $c8

    call Call_000_3d8f                            ; $346d: $cd $8f $3d
    ret nc                                        ; $3470: $d0

    ld a, $07                                     ; $3471: $3e $07
    ld [$c125], a                                 ; $3473: $ea $25 $c1
    xor a                                         ; $3476: $af
    ld [$c033], a                                 ; $3477: $ea $33 $c0
    ld [$c034], a                                 ; $347a: $ea $34 $c0
    call Call_000_32b2                            ; $347d: $cd $b2 $32
    call $581d                                    ; $3480: $cd $1d $58
    call $4b95                                    ; $3483: $cd $95 $4b
    ld a, $2f                                     ; $3486: $3e $2f
    call Call_000_00d9                            ; $3488: $cd $d9 $00
    ret                                           ; $348b: $c9


Call_000_348c:
Jump_000_348c:
    ld a, $00                                     ; $348c: $3e $00
    ld [$c125], a                                 ; $348e: $ea $25 $c1
    ld a, $02                                     ; $3491: $3e $02
    ld [$c10a], a                                 ; $3493: $ea $0a $c1
    ret                                           ; $3496: $c9


    ld a, $00                                     ; $3497: $3e $00
    ld [$c125], a                                 ; $3499: $ea $25 $c1
    ld a, $00                                     ; $349c: $3e $00
    ld [$c10a], a                                 ; $349e: $ea $0a $c1
    call Call_000_2ea0                            ; $34a1: $cd $a0 $2e
    ld a, [$c508]                                 ; $34a4: $fa $08 $c5
    ld [$c500], a                                 ; $34a7: $ea $00 $c5
    ld a, [$c509]                                 ; $34aa: $fa $09 $c5
    ld [$c501], a                                 ; $34ad: $ea $01 $c5
    ld a, [$c50a]                                 ; $34b0: $fa $0a $c5
    ld [$c502], a                                 ; $34b3: $ea $02 $c5
    ld a, [$c50b]                                 ; $34b6: $fa $0b $c5
    ld [$c503], a                                 ; $34b9: $ea $03 $c5
    ld a, [$c50c]                                 ; $34bc: $fa $0c $c5
    ld [$c504], a                                 ; $34bf: $ea $04 $c5
    call Call_000_2e57                            ; $34c2: $cd $57 $2e
    call Call_000_32a3                            ; $34c5: $cd $a3 $32
    ret                                           ; $34c8: $c9


    ld a, $00                                     ; $34c9: $3e $00
    ld [$c125], a                                 ; $34cb: $ea $25 $c1
    ld a, $01                                     ; $34ce: $3e $01
    ld [$c10a], a                                 ; $34d0: $ea $0a $c1
    ret                                           ; $34d3: $c9


Call_000_34d4:
    ld a, $02                                     ; $34d4: $3e $02
    ld [$c125], a                                 ; $34d6: $ea $25 $c1
    call $4dbf                                    ; $34d9: $cd $bf $4d
    ret                                           ; $34dc: $c9


    ld a, [$c14b]                                 ; $34dd: $fa $4b $c1
    cp $0a                                        ; $34e0: $fe $0a
    jr z, jr_000_34ff                             ; $34e2: $28 $1b

Call_000_34e4:
    ld a, $06                                     ; $34e4: $3e $06
    ld [$c125], a                                 ; $34e6: $ea $25 $c1
    xor a                                         ; $34e9: $af

Call_000_34ea:
    ld [$c033], a                                 ; $34ea: $ea $33 $c0
    ld [$c034], a                                 ; $34ed: $ea $34 $c0
    call Call_000_32b2                            ; $34f0: $cd $b2 $32
    call $581d                                    ; $34f3: $cd $1d $58
    call $4b95                                    ; $34f6: $cd $95 $4b
    ld a, $2f                                     ; $34f9: $3e $2f
    call Call_000_00d9                            ; $34fb: $cd $d9 $00
    ret                                           ; $34fe: $c9


jr_000_34ff:
    call $761e                                    ; $34ff: $cd $1e $76
    jp Jump_000_348c                              ; $3502: $c3 $8c $34


    call $761e                                    ; $3505: $cd $1e $76
    ld a, $4b                                     ; $3508: $3e $4b
    call Call_000_00d9                            ; $350a: $cd $d9 $00
    ld a, $12                                     ; $350d: $3e $12
    ld [$c125], a                                 ; $350f: $ea $25 $c1
    ld a, $18                                     ; $3512: $3e $18
    ld [$c518], a                                 ; $3514: $ea $18 $c5
    jp Jump_000_32ff                              ; $3517: $c3 $ff $32


    ld a, $04                                     ; $351a: $3e $04
    ld [$c125], a                                 ; $351c: $ea $25 $c1
    jp $5003                                      ; $351f: $c3 $03 $50


    ld a, $05                                     ; $3522: $3e $05
    ld [$c125], a                                 ; $3524: $ea $25 $c1
    jp $503f                                      ; $3527: $c3 $3f $50


    ld a, $00                                     ; $352a: $3e $00
    ld [$c125], a                                 ; $352c: $ea $25 $c1
    ld a, $03                                     ; $352f: $3e $03
    ld [$c10a], a                                 ; $3531: $ea $0a $c1
    ret                                           ; $3534: $c9


    ld a, $00                                     ; $3535: $3e $00
    ld [$c125], a                                 ; $3537: $ea $25 $c1
    ld a, $06                                     ; $353a: $3e $06
    ld [$c10a], a                                 ; $353c: $ea $0a $c1
    ret                                           ; $353f: $c9


Call_000_3540:
    ld a, $5c                                     ; $3540: $3e $5c
    call Call_000_00d9                            ; $3542: $cd $d9 $00
    ld a, $16                                     ; $3545: $3e $16
    ld [$c125], a                                 ; $3547: $ea $25 $c1
    ld a, $50                                     ; $354a: $3e $50
    ld [$c530], a                                 ; $354c: $ea $30 $c5
    ld a, $01                                     ; $354f: $3e $01
    ld [$c524], a                                 ; $3551: $ea $24 $c5
    ld a, $04                                     ; $3554: $3e $04
    ld [$c532], a                                 ; $3556: $ea $32 $c5
    call $5b46                                    ; $3559: $cd $46 $5b
    call $5bdc                                    ; $355c: $cd $dc $5b
    jp Jump_000_32ff                              ; $355f: $c3 $ff $32


    call $761e                                    ; $3562: $cd $1e $76
    ld a, $4b                                     ; $3565: $3e $4b
    call Call_000_00d9                            ; $3567: $cd $d9 $00
    ld a, $17                                     ; $356a: $3e $17
    ld [$c125], a                                 ; $356c: $ea $25 $c1
    ld a, $10                                     ; $356f: $3e $10
    ld [$c263], a                                 ; $3571: $ea $63 $c2
    jp Jump_000_32ff                              ; $3574: $c3 $ff $32


    ld a, $00                                     ; $3577: $3e $00
    ld [$c126], a                                 ; $3579: $ea $26 $c1
    ret                                           ; $357c: $c9


    ld a, [$c512]                                 ; $357d: $fa $12 $c5
    dec a                                         ; $3580: $3d
    and $03                                       ; $3581: $e6 $03
    ld [$c510], a                                 ; $3583: $ea $10 $c5
    ld hl, $368e                                  ; $3586: $21 $8e $36
    call Call_000_041a                            ; $3589: $cd $1a $04
    ld a, [$c501]                                 ; $358c: $fa $01 $c5
    add l                                         ; $358f: $85
    ld l, a                                       ; $3590: $6f
    ld [$c509], a                                 ; $3591: $ea $09 $c5
    ld a, [$c502]                                 ; $3594: $fa $02 $c5
    add h                                         ; $3597: $84
    ld h, a                                       ; $3598: $67
    ld [$c50a], a                                 ; $3599: $ea $0a $c5
    call Call_000_2ddc                            ; $359c: $cd $dc $2d
    call Call_000_35ab                            ; $359f: $cd $ab $35
    ret nc                                        ; $35a2: $d0

    call Call_000_35ce                            ; $35a3: $cd $ce $35
    ret nc                                        ; $35a6: $d0

    call Call_000_3610                            ; $35a7: $cd $10 $36
    ret                                           ; $35aa: $c9


Call_000_35ab:
    ld a, [$c508]                                 ; $35ab: $fa $08 $c5
    ld b, a                                       ; $35ae: $47
    ld a, [$c500]                                 ; $35af: $fa $00 $c5
    cp b                                          ; $35b2: $b8
    jr nz, jr_000_35cc                            ; $35b3: $20 $17

    ld a, [$c50b]                                 ; $35b5: $fa $0b $c5
    ld e, a                                       ; $35b8: $5f
    ld a, [$c50c]                                 ; $35b9: $fa $0c $c5
    ld d, a                                       ; $35bc: $57
    ld a, [$c508]                                 ; $35bd: $fa $08 $c5
    call $57db                                    ; $35c0: $cd $db $57
    jr c, jr_000_35cc                             ; $35c3: $38 $07

    ld a, $05                                     ; $35c5: $3e $05
    ld [$c126], a                                 ; $35c7: $ea $26 $c1
    or a                                          ; $35ca: $b7
    ret                                           ; $35cb: $c9


jr_000_35cc:
    scf                                           ; $35cc: $37
    ret                                           ; $35cd: $c9


Call_000_35ce:
    ld a, [$c508]                                 ; $35ce: $fa $08 $c5
    ld b, a                                       ; $35d1: $47
    ld a, [$c500]                                 ; $35d2: $fa $00 $c5
    cp b                                          ; $35d5: $b8
    jr nz, jr_000_35cc                            ; $35d6: $20 $f4

    ld a, [$c50b]                                 ; $35d8: $fa $0b $c5
    ld e, a                                       ; $35db: $5f
    ld a, [$c50c]                                 ; $35dc: $fa $0c $c5
    ld d, a                                       ; $35df: $57
    ld a, [$c508]                                 ; $35e0: $fa $08 $c5
    call Call_000_35ef                            ; $35e3: $cd $ef $35
    jr c, jr_000_35cc                             ; $35e6: $38 $e4

    ld a, $05                                     ; $35e8: $3e $05
    ld [$c126], a                                 ; $35ea: $ea $26 $c1
    or a                                          ; $35ed: $b7
    ret                                           ; $35ee: $c9


Call_000_35ef:
    call Call_000_2ef1                            ; $35ef: $cd $f1 $2e
    ld a, [$c241]                                 ; $35f2: $fa $41 $c2
    cp $89                                        ; $35f5: $fe $89
    scf                                           ; $35f7: $37
    ret nz                                        ; $35f8: $c0

    push de                                       ; $35f9: $d5
    call $4f0e                                    ; $35fa: $cd $0e $4f
    pop de                                        ; $35fd: $d1
    scf                                           ; $35fe: $37
    ret nz                                        ; $35ff: $c0

    ld a, l                                       ; $3600: $7d
    or $80                                        ; $3601: $f6 $80
    ld [$c524], a                                 ; $3603: $ea $24 $c5
    ld a, e                                       ; $3606: $7b
    ld [$c521], a                                 ; $3607: $ea $21 $c5
    ld a, d                                       ; $360a: $7a
    ld [$c522], a                                 ; $360b: $ea $22 $c5
    or a                                          ; $360e: $b7
    ret                                           ; $360f: $c9


Call_000_3610:
    ld a, [$c50b]                                 ; $3610: $fa $0b $c5
    ld e, a                                       ; $3613: $5f
    ld a, [$c50c]                                 ; $3614: $fa $0c $c5
    ld d, a                                       ; $3617: $57
    ld a, [$c508]                                 ; $3618: $fa $08 $c5
    call Call_000_2ef1                            ; $361b: $cd $f1 $2e
    call Call_000_364a                            ; $361e: $cd $4a $36
    ret nz                                        ; $3621: $c0

    ld a, [$c241]                                 ; $3622: $fa $41 $c2
    bit 7, a                                      ; $3625: $cb $7f
    jr nz, jr_000_3644                            ; $3627: $20 $1b

    cp $01                                        ; $3629: $fe $01
    ld a, $40                                     ; $362b: $3e $40
    call z, Call_000_00d9                         ; $362d: $cc $d9 $00
    ld a, $01                                     ; $3630: $3e $01
    ld [$c126], a                                 ; $3632: $ea $26 $c1
    ld a, [$c508]                                 ; $3635: $fa $08 $c5
    ld b, a                                       ; $3638: $47
    ld a, [$c500]                                 ; $3639: $fa $00 $c5
    cp b                                          ; $363c: $b8
    ret z                                         ; $363d: $c8

    ld a, $02                                     ; $363e: $3e $02
    ld [$c126], a                                 ; $3640: $ea $26 $c1
    ret                                           ; $3643: $c9


jr_000_3644:
    ld a, $07                                     ; $3644: $3e $07
    ld [$c126], a                                 ; $3646: $ea $26 $c1
    ret                                           ; $3649: $c9


Call_000_364a:
    ld a, [$c508]                                 ; $364a: $fa $08 $c5
    ld hl, $206b                                  ; $364d: $21 $6b $20
    call Call_000_041a                            ; $3650: $cd $1a $04
    ld a, $18                                     ; $3653: $3e $18
    rst RST_28                                    ; $3655: $ef
    ld a, [$c50b]                                 ; $3656: $fa $0b $c5
    ld e, a                                       ; $3659: $5f
    ld a, [$c50c]                                 ; $365a: $fa $0c $c5
    ld d, a                                       ; $365d: $57
    ld c, $00                                     ; $365e: $0e $00
    call Call_000_3688                            ; $3660: $cd $88 $36
    jr nz, jr_000_3667                            ; $3663: $20 $02

    set 0, c                                      ; $3665: $cb $c1

jr_000_3667:
    call Call_000_3688                            ; $3667: $cd $88 $36
    jr nz, jr_000_366e                            ; $366a: $20 $02

    set 1, c                                      ; $366c: $cb $c9

jr_000_366e:
    call Call_000_3688                            ; $366e: $cd $88 $36
    jr nz, jr_000_3675                            ; $3671: $20 $02

    set 2, c                                      ; $3673: $cb $d1

jr_000_3675:
    call Call_000_3688                            ; $3675: $cd $88 $36
    jr nz, jr_000_367c                            ; $3678: $20 $02

    set 3, c                                      ; $367a: $cb $d9

jr_000_367c:
    ld a, c                                       ; $367c: $79
    ld [$c20f], a                                 ; $367d: $ea $0f $c2
    or a                                          ; $3680: $b7
    ret z                                         ; $3681: $c8

    ld a, $0d                                     ; $3682: $3e $0d
    ld [$c126], a                                 ; $3684: $ea $26 $c1
    ret                                           ; $3687: $c9


Call_000_3688:
    ld a, [hl+]                                   ; $3688: $2a
    cp e                                          ; $3689: $bb
    ld a, [hl+]                                   ; $368a: $2a
    ret nz                                        ; $368b: $c0

    cp d                                          ; $368c: $ba
    ret                                           ; $368d: $c9


    nop                                           ; $368e: $00
    ld bc, $ff00                                  ; $368f: $01 $00 $ff
    rst RST_38                                    ; $3692: $ff
    nop                                           ; $3693: $00
    ld bc, $fa00                                  ; $3694: $01 $00 $fa
    inc bc                                        ; $3697: $03
    push bc                                       ; $3698: $c5
    ld e, a                                       ; $3699: $5f
    ld a, [$c504]                                 ; $369a: $fa $04 $c5
    ld d, a                                       ; $369d: $57
    ld a, [$c500]                                 ; $369e: $fa $00 $c5
    call Call_000_2ef1                            ; $36a1: $cd $f1 $2e
    ld a, [$c241]                                 ; $36a4: $fa $41 $c2
    and $7f                                       ; $36a7: $e6 $7f
    cp $07                                        ; $36a9: $fe $07
    jr z, jr_000_36bf                             ; $36ab: $28 $12

    cp $08                                        ; $36ad: $fe $08
    jr z, jr_000_36ce                             ; $36af: $28 $1d

    cp $0a                                        ; $36b1: $fe $0a
    jr z, jr_000_36e0                             ; $36b3: $28 $2b

    cp $0b                                        ; $36b5: $fe $0b
    jr z, jr_000_36c5                             ; $36b7: $28 $0c

jr_000_36b9:
    ld a, $04                                     ; $36b9: $3e $04
    ld [$c126], a                                 ; $36bb: $ea $26 $c1
    ret                                           ; $36be: $c9


jr_000_36bf:
    ld a, $03                                     ; $36bf: $3e $03
    ld [$c126], a                                 ; $36c1: $ea $26 $c1
    ret                                           ; $36c4: $c9


jr_000_36c5:
    call $408a                                    ; $36c5: $cd $8a $40
    ld a, $0c                                     ; $36c8: $3e $0c
    ld [$c126], a                                 ; $36ca: $ea $26 $c1
    ret                                           ; $36cd: $c9


jr_000_36ce:
    ld a, [$c103]                                 ; $36ce: $fa $03 $c1
    cp $02                                        ; $36d1: $fe $02
    jr c, jr_000_36b9                             ; $36d3: $38 $e4

    call $5d40                                    ; $36d5: $cd $40 $5d
    jr c, jr_000_36b9                             ; $36d8: $38 $df

    ld a, $0b                                     ; $36da: $3e $0b
    ld [$c126], a                                 ; $36dc: $ea $26 $c1
    ret                                           ; $36df: $c9


; Item-selection cursor handler (camp/item screen): reads the cursor-tile icon from
; $d500+offset; $10/$11 are special icons (cancel/drop?) handled separately below.
; Otherwise compacts the inventory (Call_001_4e7a_CompactInventory), counts the items
; (Call_001_4e5a_CountInventoryItems) to get the selected slot index in c, reads that
; slot's item-type-ID and stores it into $c516 (the "item type currently being used"
; staging variable consumed by the effect dispatcher around $50ac in bank_001.asm),
; then clears the slot (item is removed from inventory immediately on selection).
jr_000_36e0:
    ld a, [$c240]                                 ; $36e0: $fa $40 $c2
    and $7f                                       ; $36e3: $e6 $7f
    ld l, a                                       ; $36e5: $6f
    ld h, $d5                                     ; $36e6: $26 $d5
    ld a, [hl]                                    ; $36e8: $7e
    and $7f                                       ; $36e9: $e6 $7f
    cp $10                                        ; $36eb: $fe $10
    jr z, jr_000_371a                             ; $36ed: $28 $2b

    cp $11                                        ; $36ef: $fe $11
    jr z, jr_000_371a                             ; $36f1: $28 $27

    push hl                                       ; $36f3: $e5
    call $4e7a                                    ; $36f4: $cd $7a $4e
    call $4e5a                                    ; $36f7: $cd $5a $4e
    pop hl                                        ; $36fa: $e1
    ld a, c                                       ; $36fb: $79
    cp $08                                        ; $36fc: $fe $08
    jr nc, jr_000_36b9                            ; $36fe: $30 $b9

    ld a, c                                       ; $3700: $79
    ld de, $c140                                  ; $3701: $11 $40 $c1
    rst RST_30                                    ; $3704: $f7
    ld a, [hl]                                    ; $3705: $7e
    ld [de], a                                    ; $3706: $12
    ld [$c516], a                                 ; $3707: $ea $16 $c5
    ld [hl], $00                                  ; $370a: $36 $00
    ld h, $d6                                     ; $370c: $26 $d6
    ld b, [hl]                                    ; $370e: $46
    ld hl, $c243                                  ; $370f: $21 $43 $c2
    rst RST_08                                    ; $3712: $cf
    ld [hl], b                                    ; $3713: $70
    ld a, $09                                     ; $3714: $3e $09
    ld [$c126], a                                 ; $3716: $ea $26 $c1
    ret                                           ; $3719: $c9


jr_000_371a:
    ld c, a                                       ; $371a: $4f
    ld [hl], $00                                  ; $371b: $36 $00
    ld h, $d6                                     ; $371d: $26 $d6
    ld b, [hl]                                    ; $371f: $46
    ld hl, $c243                                  ; $3720: $21 $43 $c2
    rst RST_08                                    ; $3723: $cf
    ld [hl], b                                    ; $3724: $70
    call $50df                                    ; $3725: $cd $df $50
    ld a, $08                                     ; $3728: $3e $08
    ld [$c126], a                                 ; $372a: $ea $26 $c1
    ret                                           ; $372d: $c9


    ld a, $06                                     ; $372e: $3e $06
    ld [$c126], a                                 ; $3730: $ea $26 $c1
    ret                                           ; $3733: $c9


Call_000_3734:
    ld a, [$c131]                                 ; $3734: $fa $31 $c1
    or a                                          ; $3737: $b7
    ret z                                         ; $3738: $c8

    ld a, $01                                     ; $3739: $3e $01
    ld [$c12b], a                                 ; $373b: $ea $2b $c1
    ld e, $01                                     ; $373e: $1e $01
    jp $5ba3                                      ; $3740: $c3 $a3 $5b


Call_000_3743:
    ld a, [$c500]                                 ; $3743: $fa $00 $c5
    ld hl, $206b                                  ; $3746: $21 $6b $20
    call Call_000_041a                            ; $3749: $cd $1a $04
    ld a, $18                                     ; $374c: $3e $18
    rst RST_28                                    ; $374e: $ef
    ld a, [$c503]                                 ; $374f: $fa $03 $c5
    ld e, a                                       ; $3752: $5f
    ld a, [$c504]                                 ; $3753: $fa $04 $c5
    ld d, a                                       ; $3756: $57
    ld b, $04                                     ; $3757: $06 $04

jr_000_3759:
    ld a, [hl+]                                   ; $3759: $2a
    sub e                                         ; $375a: $93
    jr nc, jr_000_375f                            ; $375b: $30 $02

    cpl                                           ; $375d: $2f
    inc a                                         ; $375e: $3c

jr_000_375f:
    cp $02                                        ; $375f: $fe $02
    ld a, [hl+]                                   ; $3761: $2a
    jr nc, jr_000_376e                            ; $3762: $30 $0a

    sub d                                         ; $3764: $92
    jr nc, jr_000_3769                            ; $3765: $30 $02

    cpl                                           ; $3767: $2f
    inc a                                         ; $3768: $3c

jr_000_3769:
    cp $02                                        ; $3769: $fe $02
    jp c, Jump_000_3327                           ; $376b: $da $27 $33

jr_000_376e:
    dec b                                         ; $376e: $05
    jr nz, jr_000_3759                            ; $376f: $20 $e8

jr_000_3771:
    ret                                           ; $3771: $c9


Call_000_3772:
    ld a, [$c503]                                 ; $3772: $fa $03 $c5
    ld e, a                                       ; $3775: $5f
    ld a, [$c504]                                 ; $3776: $fa $04 $c5
    ld d, a                                       ; $3779: $57
    ld a, [$c500]                                 ; $377a: $fa $00 $c5
    call Call_000_2ef1                            ; $377d: $cd $f1 $2e
    ld a, [bc]                                    ; $3780: $0a
    cp $0f                                        ; $3781: $fe $0f
    ret nz                                        ; $3783: $c0

    jp Jump_000_332b                              ; $3784: $c3 $2b $33


Call_000_3787:
    ld a, [$c510]                                 ; $3787: $fa $10 $c5
    ld c, a                                       ; $378a: $4f
    call Call_000_2f3f                            ; $378b: $cd $3f $2f
    jp c, Jump_000_3323                           ; $378e: $da $23 $33

    ret                                           ; $3791: $c9


    call Call_000_38fd                            ; $3792: $cd $fd $38
    ld a, [$c512]                                 ; $3795: $fa $12 $c5
    rst RST_00                                    ; $3798: $c7
    and a                                         ; $3799: $a7
    scf                                           ; $379a: $37
    xor c                                         ; $379b: $a9
    scf                                           ; $379c: $37
    xor a                                         ; $379d: $af
    scf                                           ; $379e: $37
    xor b                                         ; $379f: $a8
    scf                                           ; $37a0: $37
    xor b                                         ; $37a1: $a8
    scf                                           ; $37a2: $37
    db $d3                                        ; $37a3: $d3
    scf                                           ; $37a4: $37
    dec de                                        ; $37a5: $1b
    jr c, jr_000_3771                             ; $37a6: $38 $c9

    ret                                           ; $37a8: $c9


    ld hl, $c028                                  ; $37a9: $21 $28 $c0
    inc [hl]                                      ; $37ac: $34
    jr jr_000_37b3                                ; $37ad: $18 $04

    ld hl, $c028                                  ; $37af: $21 $28 $c0
    dec [hl]                                      ; $37b2: $35

jr_000_37b3:
    call $4e5a                                    ; $37b3: $cd $5a $4e
    ld a, c                                       ; $37b6: $79
    or a                                          ; $37b7: $b7
    jr z, jr_000_37c3                             ; $37b8: $28 $09

    ld hl, $38a8                                  ; $37ba: $21 $a8 $38
    ld de, $0501                                  ; $37bd: $11 $01 $05
    jp Jump_000_0506                              ; $37c0: $c3 $06 $05


jr_000_37c3:
    ld a, $02                                     ; $37c3: $3e $02
    ld [$c02b], a                                 ; $37c5: $ea $2b $c0
    ld a, $03                                     ; $37c8: $3e $03
    ld [$c028], a                                 ; $37ca: $ea $28 $c0
    ld a, $30                                     ; $37cd: $3e $30
    call Call_000_00d9                            ; $37cf: $cd $d9 $00
    ret                                           ; $37d2: $c9


jr_000_37d3:
    ld a, [$c02b]                                 ; $37d3: $fa $2b $c0
    rst RST_00                                    ; $37d6: $c7
    db $dd                                        ; $37d7: $dd
    scf                                           ; $37d8: $37
    ei                                            ; $37d9: $fb
    scf                                           ; $37da: $37
    add hl, de                                    ; $37db: $19
    jr c, @-$4f                                   ; $37dc: $38 $af

    ld [$c031], a                                 ; $37de: $ea $31 $c0
    ld [$c033], a                                 ; $37e1: $ea $33 $c0
    ld [$c034], a                                 ; $37e4: $ea $34 $c0
    ld a, $01                                     ; $37e7: $3e $01
    ld [$c02d], a                                 ; $37e9: $ea $2d $c0
    ld [$c02e], a                                 ; $37ec: $ea $2e $c0
    call Call_000_0593                            ; $37ef: $cd $93 $05
    call Call_000_3a33                            ; $37f2: $cd $33 $3a
    ld a, $03                                     ; $37f5: $3e $03
    ld [$c125], a                                 ; $37f7: $ea $25 $c1
    ret                                           ; $37fa: $c9


    xor a                                         ; $37fb: $af
    ld [$c031], a                                 ; $37fc: $ea $31 $c0
    ld [$c033], a                                 ; $37ff: $ea $33 $c0
    ld [$c034], a                                 ; $3802: $ea $34 $c0
    ld a, $01                                     ; $3805: $3e $01
    ld [$c02d], a                                 ; $3807: $ea $2d $c0
    ld [$c02e], a                                 ; $380a: $ea $2e $c0
    call Call_000_0593                            ; $380d: $cd $93 $05
    call Call_000_3a33                            ; $3810: $cd $33 $3a
    ld a, $03                                     ; $3813: $3e $03
    ld [$c125], a                                 ; $3815: $ea $25 $c1
    ret                                           ; $3818: $c9


    jr jr_000_381b                                ; $3819: $18 $00

jr_000_381b:
    call Call_000_30c5                            ; $381b: $cd $c5 $30
    ld a, $01                                     ; $381e: $3e $01
    ld [$c125], a                                 ; $3820: $ea $25 $c1
    ret                                           ; $3823: $c9


    call Call_000_3a50                            ; $3824: $cd $50 $3a
    call Call_000_3a8f                            ; $3827: $cd $8f $3a
    ld a, [$c512]                                 ; $382a: $fa $12 $c5
    rst RST_00                                    ; $382d: $c7
    and a                                         ; $382e: $a7
    scf                                           ; $382f: $37
    inc a                                         ; $3830: $3c
    jr c, @+$48                                   ; $3831: $38 $46

    jr c, jr_000_3885                             ; $3833: $38 $50

    jr c, @+$5c                                   ; $3835: $38 $5a

    jr c, jr_000_38b0                             ; $3837: $38 $77

    jr c, jr_000_37d3                             ; $3839: $38 $98

    jr c, jr_000_385e                             ; $383b: $38 $21

    ld l, $c0                                     ; $383d: $2e $c0
    inc [hl]                                      ; $383f: $34
    call Call_000_3864                            ; $3840: $cd $64 $38
    jr z, @-$07                                   ; $3843: $28 $f7

    ret                                           ; $3845: $c9


jr_000_3846:
    ld hl, $c02e                                  ; $3846: $21 $2e $c0
    dec [hl]                                      ; $3849: $35
    call Call_000_3864                            ; $384a: $cd $64 $38
    jr z, jr_000_3846                             ; $384d: $28 $f7

    ret                                           ; $384f: $c9


jr_000_3850:
    ld hl, $c02d                                  ; $3850: $21 $2d $c0
    dec [hl]                                      ; $3853: $35
    call Call_000_3864                            ; $3854: $cd $64 $38
    jr z, jr_000_3850                             ; $3857: $28 $f7

    ret                                           ; $3859: $c9


jr_000_385a:
    ld hl, $c02d                                  ; $385a: $21 $2d $c0
    inc [hl]                                      ; $385d: $34

jr_000_385e:
    call Call_000_3864                            ; $385e: $cd $64 $38
    jr z, jr_000_385a                             ; $3861: $28 $f7

    ret                                           ; $3863: $c9


Call_000_3864:
    ld hl, $38ad                                  ; $3864: $21 $ad $38
    ld de, $0604                                  ; $3867: $11 $04 $06
    call Call_000_055a                            ; $386a: $cd $5a $05
    ld a, [$c031]                                 ; $386d: $fa $31 $c0
    ld hl, $c140                                  ; $3870: $21 $40 $c1
    rst RST_28                                    ; $3873: $ef
    ld a, [hl]                                    ; $3874: $7e
    or a                                          ; $3875: $b7
    ret                                           ; $3876: $c9


    ld a, [$c02b]                                 ; $3877: $fa $2b $c0
    dec a                                         ; $387a: $3d
    jr z, jr_000_3881                             ; $387b: $28 $04

    call $5190                                    ; $387d: $cd $90 $51
    ret                                           ; $3880: $c9


jr_000_3881:
    call $4ec8                                    ; $3881: $cd $c8 $4e
    ret nz                                        ; $3884: $c0

jr_000_3885:
    ld a, [$c517]                                 ; $3885: $fa $17 $c5
    cp $1c                                        ; $3888: $fe $1c
    jp nc, $52cd                                  ; $388a: $d2 $cd $52

    cp $18                                        ; $388d: $fe $18
    jp nc, $528a                                  ; $388f: $d2 $8a $52

    call Call_000_30c5                            ; $3892: $cd $c5 $30
    jp Jump_000_348c                              ; $3895: $c3 $8c $34


    call Call_000_38d4                            ; $3898: $cd $d4 $38
    xor a                                         ; $389b: $af
    ld [$c033], a                                 ; $389c: $ea $33 $c0
    ld [$c034], a                                 ; $389f: $ea $34 $c0
    ld a, $02                                     ; $38a2: $3e $02
    ld [$c125], a                                 ; $38a4: $ea $25 $c1
    ret                                           ; $38a7: $c9


    add e                                         ; $38a8: $83
    nop                                           ; $38a9: $00
    ld bc, $8102                                  ; $38aa: $01 $02 $81
    ld b, d                                       ; $38ad: $42
    ld b, d                                       ; $38ae: $42
    ld b, d                                       ; $38af: $42

jr_000_38b0:
    ld b, d                                       ; $38b0: $42
    ld b, d                                       ; $38b1: $42
    ld b, d                                       ; $38b2: $42
    add h                                         ; $38b3: $84
    nop                                           ; $38b4: $00
    ld bc, $0302                                  ; $38b5: $01 $02 $03
    add c                                         ; $38b8: $81
    add h                                         ; $38b9: $84
    inc b                                         ; $38ba: $04
    dec b                                         ; $38bb: $05
    ld b, $07                                     ; $38bc: $06 $07
    add c                                         ; $38be: $81
    ld b, c                                       ; $38bf: $41
    ld b, c                                       ; $38c0: $41
    ld b, c                                       ; $38c1: $41
    ld b, c                                       ; $38c2: $41
    ld b, c                                       ; $38c3: $41
    ld b, c                                       ; $38c4: $41

Call_000_38c5:
    ld hl, $da00                                  ; $38c5: $21 $00 $da
    ld de, $0004                                  ; $38c8: $11 $04 $00
    ld b, $28                                     ; $38cb: $06 $28
    xor a                                         ; $38cd: $af

jr_000_38ce:
    ld [hl], a                                    ; $38ce: $77
    add hl, de                                    ; $38cf: $19
    dec b                                         ; $38d0: $05
    jr nz, jr_000_38ce                            ; $38d1: $20 $fb

    ret                                           ; $38d3: $c9


Call_000_38d4:
    ld b, $1e                                     ; $38d4: $06 $1e
    jr jr_000_38da                                ; $38d6: $18 $02

Jump_000_38d8:
    ld b, $08                                     ; $38d8: $06 $08

jr_000_38da:
    ld hl, $da28                                  ; $38da: $21 $28 $da
    ld de, $0004                                  ; $38dd: $11 $04 $00

Call_000_38e0:
    xor a                                         ; $38e0: $af

jr_000_38e1:
    ld [hl], a                                    ; $38e1: $77
    add hl, de                                    ; $38e2: $19
    dec b                                         ; $38e3: $05
    jr nz, jr_000_38e1                            ; $38e4: $20 $fb

    ret                                           ; $38e6: $c9


Call_000_38e7:
    ld b, $08                                     ; $38e7: $06 $08
    jr jr_000_38ed                                ; $38e9: $18 $02

Call_000_38eb:
    ld b, $10                                     ; $38eb: $06 $10

jr_000_38ed:
    ld hl, $c033                                  ; $38ed: $21 $33 $c0
    ld a, [hl]                                    ; $38f0: $7e
    inc [hl]                                      ; $38f1: $34
    and b                                         ; $38f2: $a0
    ld a, $00                                     ; $38f3: $3e $00
    jr z, jr_000_38f9                             ; $38f5: $28 $02

    ld a, $10                                     ; $38f7: $3e $10

jr_000_38f9:
    ld [$c034], a                                 ; $38f9: $ea $34 $c0
    ret                                           ; $38fc: $c9


Call_000_38fd:
    ld hl, $3b26                                  ; $38fd: $21 $26 $3b
    ld de, $da00                                  ; $3900: $11 $00 $da
    ld bc, $0028                                  ; $3903: $01 $28 $00
    call Call_000_0442                            ; $3906: $cd $42 $04
    call Call_000_3933                            ; $3909: $cd $33 $39
    call Call_000_3943                            ; $390c: $cd $43 $39
    call Call_000_38e7                            ; $390f: $cd $e7 $38
    call Call_000_3a33                            ; $3912: $cd $33 $3a
    call Call_000_38d4                            ; $3915: $cd $d4 $38
    ret                                           ; $3918: $c9


Call_000_3919:
    ld hl, $3b6e                                  ; $3919: $21 $6e $3b
    ld de, $da08                                  ; $391c: $11 $08 $da
    ld bc, $0018                                  ; $391f: $01 $18 $00
    call Call_000_0442                            ; $3922: $cd $42 $04
    call Call_000_394d                            ; $3925: $cd $4d $39
    call Call_000_3943                            ; $3928: $cd $43 $39
    ret                                           ; $392b: $c9


Call_000_392c:
    call Call_000_3aca                            ; $392c: $cd $ca $3a
    call Call_000_3aed                            ; $392f: $cd $ed $3a
    ret                                           ; $3932: $c9


Call_000_3933:
    ld hl, $da02                                  ; $3933: $21 $02 $da
    ld b, $00                                     ; $3936: $06 $00
    ld de, $c120                                  ; $3938: $11 $20 $c1
    call Call_000_3955                            ; $393b: $cd $55 $39
    ld de, $c124                                  ; $393e: $11 $24 $c1
    jr jr_000_3955                                ; $3941: $18 $12

Call_000_3943:
    ld hl, $da16                                  ; $3943: $21 $16 $da
    ld de, $c128                                  ; $3946: $11 $28 $c1
    ld b, $00                                     ; $3949: $06 $00
    jr jr_000_3955                                ; $394b: $18 $08

Call_000_394d:
    ld hl, $da0a                                  ; $394d: $21 $0a $da
    ld de, $c515                                  ; $3950: $11 $15 $c5
    ld b, $00                                     ; $3953: $06 $00

Call_000_3955:
Jump_000_3955:
jr_000_3955:
    ld c, $00                                     ; $3955: $0e $00
    ld a, [de]                                    ; $3957: $1a
    swap a                                        ; $3958: $cb $37
    call Call_000_3a0b                            ; $395a: $cd $0b $3a
    jp Jump_000_39ff                              ; $395d: $c3 $ff $39


Jump_000_3960:
    ld a, [$c524]                                 ; $3960: $fa $24 $c5
    sub $02                                       ; $3963: $d6 $02
    jr c, jr_000_3987                             ; $3965: $38 $20

    push hl                                       ; $3967: $e5
    push de                                       ; $3968: $d5
    ld l, a                                       ; $3969: $6f
    ld h, $00                                     ; $396a: $26 $00
    add hl, hl                                    ; $396c: $29
    add hl, hl                                    ; $396d: $29
    add hl, hl                                    ; $396e: $29
    add hl, hl                                    ; $396f: $29
    ld de, $c5c0                                  ; $3970: $11 $c0 $c5
    add hl, de                                    ; $3973: $19
    pop de                                        ; $3974: $d1
    ld a, [hl]                                    ; $3975: $7e
    ld hl, $7931                                  ; $3976: $21 $31 $79
    rst RST_28                                    ; $3979: $ef
    ld a, [hl]                                    ; $397a: $7e
    pop hl                                        ; $397b: $e1
    dec a                                         ; $397c: $3d
    or a                                          ; $397d: $b7
    jr z, jr_000_3987                             ; $397e: $28 $07

    push de                                       ; $3980: $d5
    push hl                                       ; $3981: $e5
    call Call_000_399c                            ; $3982: $cd $9c $39
    pop hl                                        ; $3985: $e1
    pop de                                        ; $3986: $d1

jr_000_3987:
    ld c, $00                                     ; $3987: $0e $00
    ld a, [de]                                    ; $3989: $1a
    swap a                                        ; $398a: $cb $37
    and $0f                                       ; $398c: $e6 $0f
    jr nz, jr_000_3955                            ; $398e: $20 $c5

    dec l                                         ; $3990: $2d
    dec l                                         ; $3991: $2d
    ld [hl], a                                    ; $3992: $77
    ld a, $05                                     ; $3993: $3e $05
    rst RST_28                                    ; $3995: $ef
    ld a, [hl]                                    ; $3996: $7e
    sub $04                                       ; $3997: $d6 $04
    ld [hl+], a                                   ; $3999: $22
    jr jr_000_39ff                                ; $399a: $18 $63

Call_000_399c:
    dec hl                                        ; $399c: $2b
    dec hl                                        ; $399d: $2b
    dec a                                         ; $399e: $3d
    jr z, jr_000_39d5                             ; $399f: $28 $34

    dec a                                         ; $39a1: $3d
    jr z, jr_000_39c3                             ; $39a2: $28 $1f

    ld a, [hl]                                    ; $39a4: $7e
    add $08                                       ; $39a5: $c6 $08
    ld [hl+], a                                   ; $39a7: $22
    ld a, [hl]                                    ; $39a8: $7e
    add $08                                       ; $39a9: $c6 $08
    ld [hl+], a                                   ; $39ab: $22
    inc hl                                        ; $39ac: $23
    inc hl                                        ; $39ad: $23
    ld a, [hl]                                    ; $39ae: $7e
    add $08                                       ; $39af: $c6 $08
    ld [hl+], a                                   ; $39b1: $22
    ld a, [hl]                                    ; $39b2: $7e
    add $08                                       ; $39b3: $c6 $08
    ld [hl+], a                                   ; $39b5: $22
    inc hl                                        ; $39b6: $23
    inc hl                                        ; $39b7: $23
    xor a                                         ; $39b8: $af
    ld c, $05                                     ; $39b9: $0e $05

jr_000_39bb:
    call Call_000_39e7                            ; $39bb: $cd $e7 $39
    dec c                                         ; $39be: $0d
    jr nz, jr_000_39bb                            ; $39bf: $20 $fa

    ld [hl], a                                    ; $39c1: $77
    ret                                           ; $39c2: $c9


jr_000_39c3:
    ld a, [hl]                                    ; $39c3: $7e
    add $08                                       ; $39c4: $c6 $08
    call Call_000_39e7                            ; $39c6: $cd $e7 $39
    ld a, [hl]                                    ; $39c9: $7e
    add $08                                       ; $39ca: $c6 $08
    call Call_000_39e7                            ; $39cc: $cd $e7 $39
    xor a                                         ; $39cf: $af
    call Call_000_39e7                            ; $39d0: $cd $e7 $39
    jr jr_000_39e7                                ; $39d3: $18 $12

jr_000_39d5:
    inc hl                                        ; $39d5: $23
    ld a, [hl]                                    ; $39d6: $7e
    add $08                                       ; $39d7: $c6 $08
    ld [hl+], a                                   ; $39d9: $22
    inc hl                                        ; $39da: $23
    inc hl                                        ; $39db: $23
    inc hl                                        ; $39dc: $23
    ld a, [hl]                                    ; $39dd: $7e
    add $08                                       ; $39de: $c6 $08
    ld [hl+], a                                   ; $39e0: $22
    inc hl                                        ; $39e1: $23
    inc hl                                        ; $39e2: $23
    xor a                                         ; $39e3: $af
    call Call_000_39e7                            ; $39e4: $cd $e7 $39

Call_000_39e7:
jr_000_39e7:
    ld [hl+], a                                   ; $39e7: $22
    inc hl                                        ; $39e8: $23
    inc hl                                        ; $39e9: $23
    inc hl                                        ; $39ea: $23
    ret                                           ; $39eb: $c9


    ld c, $00                                     ; $39ec: $0e $00
    ld a, [de]                                    ; $39ee: $1a
    swap a                                        ; $39ef: $cb $37

Jump_000_39f1:
    call Call_000_3a0b                            ; $39f1: $cd $0b $3a
    ld a, [de]                                    ; $39f4: $1a
    call Call_000_3a0b                            ; $39f5: $cd $0b $3a
    dec de                                        ; $39f8: $1b
    ld a, [de]                                    ; $39f9: $1a
    swap a                                        ; $39fa: $cb $37
    call Call_000_3a0b                            ; $39fc: $cd $0b $3a

Jump_000_39ff:
jr_000_39ff:
    ld a, [de]                                    ; $39ff: $1a
    and $0f                                       ; $3a00: $e6 $0f
    add a                                         ; $3a02: $87
    add b                                         ; $3a03: $80
    ld [hl+], a                                   ; $3a04: $22
    ld [hl], $10                                  ; $3a05: $36 $10
    inc l                                         ; $3a07: $2c
    inc l                                         ; $3a08: $2c
    inc l                                         ; $3a09: $2c
    ret                                           ; $3a0a: $c9


Call_000_3a0b:
    and $0f                                       ; $3a0b: $e6 $0f
    add a                                         ; $3a0d: $87
    jr nz, jr_000_3a1b                            ; $3a0e: $20 $0b

    bit 0, c                                      ; $3a10: $cb $41
    jr nz, jr_000_3a1b                            ; $3a12: $20 $07

    dec l                                         ; $3a14: $2d
    dec l                                         ; $3a15: $2d
    ld [hl], a                                    ; $3a16: $77
    ld a, $06                                     ; $3a17: $3e $06
    rst RST_28                                    ; $3a19: $ef
    ret                                           ; $3a1a: $c9


jr_000_3a1b:
    ld c, $ff                                     ; $3a1b: $0e $ff
    add b                                         ; $3a1d: $80
    ld [hl+], a                                   ; $3a1e: $22
    ld [hl], $10                                  ; $3a1f: $36 $10
    inc l                                         ; $3a21: $2c
    inc l                                         ; $3a22: $2c
    inc l                                         ; $3a23: $2c
    ret                                           ; $3a24: $c9


Jump_000_3a25:
    ld [hl], $96                                  ; $3a25: $36 $96
    inc l                                         ; $3a27: $2c
    ld [hl], $10                                  ; $3a28: $36 $10
    inc l                                         ; $3a2a: $2c
    inc l                                         ; $3a2b: $2c
    inc l                                         ; $3a2c: $2c
    ld [hl], $98                                  ; $3a2d: $36 $98
    inc l                                         ; $3a2f: $2c
    ld [hl], $10                                  ; $3a30: $36 $10
    ret                                           ; $3a32: $c9


Call_000_3a33:
    ld a, [$c02b]                                 ; $3a33: $fa $2b $c0
    ld hl, $3a4d                                  ; $3a36: $21 $4d $3a
    rst RST_28                                    ; $3a39: $ef
    ld a, [hl]                                    ; $3a3a: $7e
    ld [$da21], a                                 ; $3a3b: $ea $21 $da
    add $08                                       ; $3a3e: $c6 $08
    ld [$da25], a                                 ; $3a40: $ea $25 $da
    ld a, [$c034]                                 ; $3a43: $fa $34 $c0
    ld [$da23], a                                 ; $3a46: $ea $23 $da
    ld [$da27], a                                 ; $3a49: $ea $27 $da
    ret                                           ; $3a4c: $c9


    jr jr_000_3a8f                                ; $3a4d: $18 $40

    ld l, b                                       ; $3a4f: $68

Call_000_3a50:
    call Call_000_38e7                            ; $3a50: $cd $e7 $38
    ld a, [$c034]                                 ; $3a53: $fa $34 $c0
    or a                                          ; $3a56: $b7
    jp nz, Jump_000_38d8                          ; $3a57: $c2 $d8 $38

    ld a, [$c031]                                 ; $3a5a: $fa $31 $c0
    ld hl, $3a7f                                  ; $3a5d: $21 $7f $3a
    call Call_000_041e_WordTableLookupToDE                            ; $3a60: $cd $1e $04
    ld hl, $3b4e                                  ; $3a63: $21 $4e $3b
    ld bc, $da28                                  ; $3a66: $01 $28 $da
    ld a, $08                                     ; $3a69: $3e $08

jr_000_3a6b:
    push af                                       ; $3a6b: $f5
    ld a, [hl+]                                   ; $3a6c: $2a
    add e                                         ; $3a6d: $83
    ld [bc], a                                    ; $3a6e: $02
    inc c                                         ; $3a6f: $0c
    ld a, [hl+]                                   ; $3a70: $2a
    add d                                         ; $3a71: $82
    ld [bc], a                                    ; $3a72: $02
    inc c                                         ; $3a73: $0c
    ld a, [hl+]                                   ; $3a74: $2a
    ld [bc], a                                    ; $3a75: $02
    inc c                                         ; $3a76: $0c
    ld a, [hl+]                                   ; $3a77: $2a
    ld [bc], a                                    ; $3a78: $02
    inc c                                         ; $3a79: $0c
    pop af                                        ; $3a7a: $f1
    dec a                                         ; $3a7b: $3d
    jr nz, jr_000_3a6b                            ; $3a7c: $20 $ed

    ret                                           ; $3a7e: $c9


    jr z, @+$12                                   ; $3a7f: $28 $10

    jr z, @+$32                                   ; $3a81: $28 $30

    jr z, @+$52                                   ; $3a83: $28 $50

    jr z, jr_000_3af7                             ; $3a85: $28 $70

    ld c, b                                       ; $3a87: $48
    db $10                                        ; $3a88: $10
    ld c, b                                       ; $3a89: $48
    jr nc, @+$4a                                  ; $3a8a: $30 $48

    ld d, b                                       ; $3a8c: $50
    ld c, b                                       ; $3a8d: $48
    ld [hl], b                                    ; $3a8e: $70

Call_000_3a8f:
jr_000_3a8f:
    ld hl, $3b86                                  ; $3a8f: $21 $86 $3b
    ld de, $da48                                  ; $3a92: $11 $48 $da
    ld bc, $0028                                  ; $3a95: $01 $28 $00
    call Call_000_0442                            ; $3a98: $cd $42 $04
    ld a, [$c031]                                 ; $3a9b: $fa $31 $c0
    ld hl, $c140                                  ; $3a9e: $21 $40 $c1
    rst RST_28                                    ; $3aa1: $ef
    ld a, [hl]                                    ; $3aa2: $7e
    ld b, a                                       ; $3aa3: $47
    ld hl, $2d6b                                  ; $3aa4: $21 $6b $2d
    rst RST_28                                    ; $3aa7: $ef
    ld a, [hl]                                    ; $3aa8: $7e
    swap a                                        ; $3aa9: $cb $37
    and $0f                                       ; $3aab: $e6 $0f
    add a                                         ; $3aad: $87
    add a                                         ; $3aae: $87
    add $18                                       ; $3aaf: $c6 $18
    ld [$da4a], a                                 ; $3ab1: $ea $4a $da
    add $02                                       ; $3ab4: $c6 $02
    ld [$da4e], a                                 ; $3ab6: $ea $4e $da
    ld de, $da52                                  ; $3ab9: $11 $52 $da

jr_000_3abc:
    push de                                       ; $3abc: $d5
    call Call_000_115f                            ; $3abd: $cd $5f $11
    pop de                                        ; $3ac0: $d1
    ld hl, $c550                                  ; $3ac1: $21 $50 $c5
    ld c, $fe                                     ; $3ac4: $0e $fe
    call $63f8                                    ; $3ac6: $cd $f8 $63
    ret                                           ; $3ac9: $c9


Call_000_3aca:
    ld hl, $3b8e                                  ; $3aca: $21 $8e $3b
    ld de, $da08                                  ; $3acd: $11 $08 $da
    ld bc, $0020                                  ; $3ad0: $01 $20 $00
    call Call_000_0442                            ; $3ad3: $cd $42 $04
    ld b, $08                                     ; $3ad6: $06 $08
    ld hl, $da08                                  ; $3ad8: $21 $08 $da
    ld de, $0004                                  ; $3adb: $11 $04 $00

jr_000_3ade:
    ld [hl], $40                                  ; $3ade: $36 $40
    add hl, de                                    ; $3ae0: $19
    dec b                                         ; $3ae1: $05
    jr nz, jr_000_3ade                            ; $3ae2: $20 $fa

    ld de, $da0a                                  ; $3ae4: $11 $0a $da
    ld a, [$c516]                                 ; $3ae7: $fa $16 $c5
    ld b, a                                       ; $3aea: $47
    jr jr_000_3abc                                ; $3aeb: $18 $cf

Call_000_3aed:
    ld hl, $c518                                  ; $3aed: $21 $18 $c5
    dec [hl]                                      ; $3af0: $35
    ret nz                                        ; $3af1: $c0

    ld [hl], $10                                  ; $3af2: $36 $10
    ld hl, $c519                                  ; $3af4: $21 $19 $c5

jr_000_3af7:
    ld a, [hl]                                    ; $3af7: $7e
    or a                                          ; $3af8: $b7
    ret z                                         ; $3af9: $c8

    dec [hl]                                      ; $3afa: $35
    bit 0, [hl]                                   ; $3afb: $cb $46
    ld c, $68                                     ; $3afd: $0e $68
    jr z, jr_000_3b03                             ; $3aff: $28 $02

    ld c, $60                                     ; $3b01: $0e $60

jr_000_3b03:
    ld a, [$c127]                                 ; $3b03: $fa $27 $c1
    or a                                          ; $3b06: $b7
    ld de, $1416                                  ; $3b07: $11 $16 $14
    jr z, jr_000_3b0f                             ; $3b0a: $28 $03

    ld de, $181a                                  ; $3b0c: $11 $1a $18

jr_000_3b0f:
    ld hl, $da00                                  ; $3b0f: $21 $00 $da
    ld [hl], c                                    ; $3b12: $71
    inc l                                         ; $3b13: $2c
    ld [hl], $30                                  ; $3b14: $36 $30
    inc l                                         ; $3b16: $2c
    ld [hl], d                                    ; $3b17: $72
    inc l                                         ; $3b18: $2c
    ld [hl], $00                                  ; $3b19: $36 $00
    inc l                                         ; $3b1b: $2c
    ld [hl], c                                    ; $3b1c: $71
    inc l                                         ; $3b1d: $2c
    ld [hl], $38                                  ; $3b1e: $36 $38
    inc l                                         ; $3b20: $2c
    ld [hl], e                                    ; $3b21: $73
    inc l                                         ; $3b22: $2c
    ld [hl], $00                                  ; $3b23: $36 $00
    ret                                           ; $3b25: $c9


    jr @+$3a                                      ; $3b26: $18 $38

    nop                                           ; $3b28: $00
    nop                                           ; $3b29: $00
    jr jr_000_3b6c                                ; $3b2a: $18 $40

    nop                                           ; $3b2c: $00
    nop                                           ; $3b2d: $00
    jr jr_000_3b80                                ; $3b2e: $18 $50

    nop                                           ; $3b30: $00
    nop                                           ; $3b31: $00
    jr @+$5a                                      ; $3b32: $18 $58

    nop                                           ; $3b34: $00
    nop                                           ; $3b35: $00
    nop                                           ; $3b36: $00
    ld a, b                                       ; $3b37: $78
    nop                                           ; $3b38: $00
    nop                                           ; $3b39: $00
    jr jr_000_3abc                                ; $3b3a: $18 $80

    nop                                           ; $3b3c: $00
    nop                                           ; $3b3d: $00
    jr @-$76                                      ; $3b3e: $18 $88

    nop                                           ; $3b40: $00
    nop                                           ; $3b41: $00
    nop                                           ; $3b42: $00
    sub b                                         ; $3b43: $90
    nop                                           ; $3b44: $00
    nop                                           ; $3b45: $00
    jr z, @+$1a                                   ; $3b46: $28 $18

    jr jr_000_3b4a                                ; $3b48: $18 $00

jr_000_3b4a:
    jr z, jr_000_3b6c                             ; $3b4a: $28 $20

    ld a, [de]                                    ; $3b4c: $1a
    nop                                           ; $3b4d: $00
    db $10                                        ; $3b4e: $10
    ld [$0014], sp                                ; $3b4f: $08 $14 $00
    db $10                                        ; $3b52: $10
    db $10                                        ; $3b53: $10
    ld d, $00                                     ; $3b54: $16 $00
    db $10                                        ; $3b56: $10
    jr @+$18                                      ; $3b57: $18 $16

    nop                                           ; $3b59: $00
    db $10                                        ; $3b5a: $10
    jr nz, jr_000_3b71                            ; $3b5b: $20 $14

    jr nz, jr_000_3b7f                            ; $3b5d: $20 $20

    ld [$4014], sp                                ; $3b5f: $08 $14 $40
    jr nz, jr_000_3b74                            ; $3b62: $20 $10

    ld d, $40                                     ; $3b64: $16 $40
    jr nz, jr_000_3b80                            ; $3b66: $20 $18

    ld d, $40                                     ; $3b68: $16 $40
    jr nz, @+$22                                  ; $3b6a: $20 $20

jr_000_3b6c:
    inc d                                         ; $3b6c: $14
    ld h, b                                       ; $3b6d: $60
    jr c, @+$4a                                   ; $3b6e: $38 $48

    nop                                           ; $3b70: $00

jr_000_3b71:
    nop                                           ; $3b71: $00
    jr c, jr_000_3bc4                             ; $3b72: $38 $50

jr_000_3b74:
    nop                                           ; $3b74: $00
    nop                                           ; $3b75: $00
    nop                                           ; $3b76: $00
    ld b, b                                       ; $3b77: $40
    nop                                           ; $3b78: $00
    nop                                           ; $3b79: $00
    ld l, b                                       ; $3b7a: $68
    ld c, b                                       ; $3b7b: $48
    nop                                           ; $3b7c: $00
    nop                                           ; $3b7d: $00
    ld l, b                                       ; $3b7e: $68

jr_000_3b7f:
    ld d, b                                       ; $3b7f: $50

jr_000_3b80:
    nop                                           ; $3b80: $00
    nop                                           ; $3b81: $00
    nop                                           ; $3b82: $00
    ld e, b                                       ; $3b83: $58
    nop                                           ; $3b84: $00
    nop                                           ; $3b85: $00
    add b                                         ; $3b86: $80
    jr z, jr_000_3b89                             ; $3b87: $28 $00

jr_000_3b89:
    nop                                           ; $3b89: $00
    add b                                         ; $3b8a: $80
    jr nc, jr_000_3b8d                            ; $3b8b: $30 $00

jr_000_3b8d:
    nop                                           ; $3b8d: $00
    add b                                         ; $3b8e: $80
    ld b, b                                       ; $3b8f: $40
    nop                                           ; $3b90: $00
    nop                                           ; $3b91: $00
    add b                                         ; $3b92: $80
    ld c, c                                       ; $3b93: $49
    nop                                           ; $3b94: $00
    nop                                           ; $3b95: $00
    add b                                         ; $3b96: $80
    ld d, d                                       ; $3b97: $52
    nop                                           ; $3b98: $00
    nop                                           ; $3b99: $00
    add b                                         ; $3b9a: $80
    ld e, e                                       ; $3b9b: $5b
    nop                                           ; $3b9c: $00
    nop                                           ; $3b9d: $00
    add b                                         ; $3b9e: $80
    ld h, h                                       ; $3b9f: $64
    nop                                           ; $3ba0: $00
    nop                                           ; $3ba1: $00
    add b                                         ; $3ba2: $80
    ld l, l                                       ; $3ba3: $6d
    nop                                           ; $3ba4: $00
    nop                                           ; $3ba5: $00
    add b                                         ; $3ba6: $80
    halt                                          ; $3ba7: $76
    nop                                           ; $3ba8: $00
    nop                                           ; $3ba9: $00
    add b                                         ; $3baa: $80
    ld a, a                                       ; $3bab: $7f
    nop                                           ; $3bac: $00
    nop                                           ; $3bad: $00
    call Call_000_32a3                            ; $3bae: $cd $a3 $32
    call Call_000_3bc6                            ; $3bb1: $cd $c6 $3b
    call Call_000_32b2                            ; $3bb4: $cd $b2 $32
    call $581d                                    ; $3bb7: $cd $1d $58
    ld a, [$c126]                                 ; $3bba: $fa $26 $c1
    rst RST_00                                    ; $3bbd: $c7
    ldh a, [$ff3b]                                ; $3bbe: $f0 $3b
    db $fc                                        ; $3bc0: $fc
    dec sp                                        ; $3bc1: $3b
    ld [hl-], a                                   ; $3bc2: $32
    inc a                                         ; $3bc3: $3c

jr_000_3bc4:
    jr c, @+$3e                                   ; $3bc4: $38 $3c

Call_000_3bc6:
    ld a, [$c512]                                 ; $3bc6: $fa $12 $c5
    rst RST_00                                    ; $3bc9: $c7
    ld c, c                                       ; $3bca: $49
    inc a                                         ; $3bcb: $3c
    ld c, a                                       ; $3bcc: $4f
    inc a                                         ; $3bcd: $3c
    ld c, a                                       ; $3bce: $4f
    inc a                                         ; $3bcf: $3c
    ld c, a                                       ; $3bd0: $4f
    inc a                                         ; $3bd1: $3c
    ld c, a                                       ; $3bd2: $4f
    inc a                                         ; $3bd3: $3c
    ld a, a                                       ; $3bd4: $7f
    inc a                                         ; $3bd5: $3c
    add l                                         ; $3bd6: $85
    inc a                                         ; $3bd7: $3c
    call Call_000_32a3                            ; $3bd8: $cd $a3 $32
    call Call_000_3bc6                            ; $3bdb: $cd $c6 $3b
    call Call_000_32b2                            ; $3bde: $cd $b2 $32
    call $581d                                    ; $3be1: $cd $1d $58
    ld a, [$c126]                                 ; $3be4: $fa $26 $c1
    rst RST_00                                    ; $3be7: $c7
    or $3b                                        ; $3be8: $f6 $3b
    rla                                           ; $3bea: $17
    inc a                                         ; $3beb: $3c
    ld a, $3c                                     ; $3bec: $3e $3c
    jr c, jr_000_3c2c                             ; $3bee: $38 $3c

    ld a, $06                                     ; $3bf0: $3e $06
    ld [$c125], a                                 ; $3bf2: $ea $25 $c1
    ret                                           ; $3bf5: $c9


    ld a, $07                                     ; $3bf6: $3e $07
    ld [$c125], a                                 ; $3bf8: $ea $25 $c1
    ret                                           ; $3bfb: $c9


    xor a                                         ; $3bfc: $af
    ld [$c033], a                                 ; $3bfd: $ea $33 $c0
    ld [$c034], a                                 ; $3c00: $ea $34 $c0
    call Call_000_32b2                            ; $3c03: $cd $b2 $32
    call $581d                                    ; $3c06: $cd $1d $58
    call $4b95                                    ; $3c09: $cd $95 $4b
    ld a, $06                                     ; $3c0c: $3e $06
    ld [$c125], a                                 ; $3c0e: $ea $25 $c1
    ld a, $2f                                     ; $3c11: $3e $2f
    call Call_000_00d9                            ; $3c13: $cd $d9 $00
    ret                                           ; $3c16: $c9


    xor a                                         ; $3c17: $af
    ld [$c033], a                                 ; $3c18: $ea $33 $c0
    ld [$c034], a                                 ; $3c1b: $ea $34 $c0
    call Call_000_32b2                            ; $3c1e: $cd $b2 $32
    call $581d                                    ; $3c21: $cd $1d $58
    call $4b95                                    ; $3c24: $cd $95 $4b
    ld a, $07                                     ; $3c27: $3e $07
    ld [$c125], a                                 ; $3c29: $ea $25 $c1

jr_000_3c2c:
    ld a, $2f                                     ; $3c2c: $3e $2f
    call Call_000_00d9                            ; $3c2e: $cd $d9 $00
    ret                                           ; $3c31: $c9


; Combat/interaction target-selection sub-dispatch (reached from Call_000_3bae's $c126
; lookup at $3bbd, itself reached via Call_000_3bc6 on every new button press while
; $c125==6, the "adjacent target selection" state). $c126==1 (a new direction was accepted
; as the current target by Call_000_3c4f_TrySelectDirection) lands here and falls back to
; $c125=1 - the same "commit facing/position" handler used by plain movement - since
; re-aiming at a different adjacent monster/item needs the same facing update, just without
; an actual step. Confirmed dynamically: this is NOT yet the attack, only the re-aim commit.
Jump_000_3c32_CommitTargetSelection:
    ld a, $01                                     ; $3c32: $3e $01
    ld [$c125], a                                 ; $3c34: $ea $25 $c1
    ret                                           ; $3c37: $c9


; $c126==3 (A newly pressed while a target is selected, set by Jump_000_3c7f_ConfirmAttack)
; lands here. Sets $c125=12, which is the attack-execution state (see the $c125 dispatch
; table at $3360, entry 12 -> $5a59 in bank_001.asm) that calls into the shared player/
; monster damage formula (Call_001_5c00/5c47/5c75). Confirmed dynamically via PyBoy hooks:
; pressing A while adjacent to and facing monster slot 0 in `combat2.state` hits exactly
; $5a59 and Call_001_5c00/5c47/5c75 right after $c125 becomes 12, and the monster's HP
; field (struct offset $06) drops by the expected damage amount.
Jump_000_3c38_ConfirmAttack:
    ld a, $0c                                     ; $3c38: $3e $0c
    ld [$c125], a                                 ; $3c3a: $ea $25 $c1
    ret                                           ; $3c3d: $c9


    ld a, $00                                     ; $3c3e: $3e $00
    ld [$c125], a                                 ; $3c40: $ea $25 $c1
    ld a, $02                                     ; $3c43: $3e $02
    ld [$c10a], a                                 ; $3c45: $ea $0a $c1
    ret                                           ; $3c48: $c9


; $c512 dispatch table target for "no button newly pressed" while $c125==6: just clears
; $c126 to 0 (idle-while-selecting) and returns.
Jump_000_3c49_NoInputWhileTargeting:
    ld a, $00                                     ; $3c49: $3e $00
    ld [$c126], a                                 ; $3c4b: $ea $26 $c1
    ret                                           ; $3c4e: $c9


; Direction newly pressed while $c125==6 ("adjacent target selection" state). This is the
; real code behind the "press a direction again to pick which adjacent monster/item tile
; is the current target" mechanic: resolves the facing delta for the pressed direction,
; sanity-checks it (Call_000_3e08), then asks "is there a monster here" (Call_001_57db,
; which wraps the monster-slot scan Call_000_2f28) or "is there a ground item here"
; (Call_000_35ef). If neither, the direction press is rejected (falls through to `ret`,
; current target unchanged - this is why re-pressing the direction you're already facing,
; or a direction with nothing adjacent, does nothing visible). If either hit, falls to
; jr_000_3c72 to commit the new target direction.
Call_000_3c4f_TrySelectDirection:
    ld a, $00                                     ; $3c4f: $3e $00
    ld [$c126], a                                 ; $3c51: $ea $26 $c1
    ld a, [$c512]                                 ; $3c54: $fa $12 $c5
    ld hl, $368c                                  ; $3c57: $21 $8c $36
    call Call_000_041e_WordTableLookupToDE                            ; $3c5a: $cd $1e $04
    call Call_000_3e08                            ; $3c5d: $cd $08 $3e
    ret nc                                        ; $3c60: $d0

    ld a, [$c500]                                 ; $3c61: $fa $00 $c5
    call $57db                                    ; $3c64: $cd $db $57
    jr nc, jr_000_3c72                            ; $3c67: $30 $09

    ld a, [$c500]                                 ; $3c69: $fa $00 $c5
    call Call_000_35ef                            ; $3c6c: $cd $ef $35
    jr nc, jr_000_3c72                            ; $3c6f: $30 $01

    ret                                           ; $3c71: $c9


; New target direction accepted (monster or ground item found there): stores the direction
; index ($c512 - 1) into $c510 and sets $c126=1, which Call_000_3bae's sub-dispatch resolves
; into Jump_000_3c32_CommitTargetSelection ($c125=1, facing/position commit).
jr_000_3c72:
    ld a, [$c512]                                 ; $3c72: $fa $12 $c5
    dec a                                         ; $3c75: $3d
    ld [$c510], a                                 ; $3c76: $ea $10 $c5
    ld a, $01                                     ; $3c79: $3e $01
    ld [$c126], a                                 ; $3c7b: $ea $26 $c1
    ret                                           ; $3c7e: $c9


; A newly pressed while $c125==6: sets $c126=3, which Call_000_3bae's sub-dispatch resolves
; into Jump_000_3c38_ConfirmAttack ($c125=12, the actual attack-execution state).
Jump_000_3c7f_ConfirmAttack:
    ld a, $03                                     ; $3c7f: $3e $03
    ld [$c126], a                                 ; $3c81: $ea $26 $c1
    ret                                           ; $3c84: $c9


; B newly pressed while $c125==6: sets $c126=2 (cancel path, resolves back to
; Jump_000_3c32_CommitTargetSelection same as a rejected/no-op direction press).
Jump_000_3c85_CancelTargeting:
    ld a, $02                                     ; $3c85: $3e $02
    ld [$c126], a                                 ; $3c87: $ea $26 $c1
    ret                                           ; $3c8a: $c9


    call Call_000_32a3                            ; $3c8b: $cd $a3 $32
    call Call_000_32b2                            ; $3c8e: $cd $b2 $32
    call $5816                                    ; $3c91: $cd $16 $58
    ld a, [$c512]                                 ; $3c94: $fa $12 $c5
    rst RST_00                                    ; $3c97: $c7
    and [hl]                                      ; $3c98: $a6
    inc a                                         ; $3c99: $3c
    and a                                         ; $3c9a: $a7
    inc a                                         ; $3c9b: $3c
    and a                                         ; $3c9c: $a7
    inc a                                         ; $3c9d: $3c
    and a                                         ; $3c9e: $a7
    inc a                                         ; $3c9f: $3c
    and a                                         ; $3ca0: $a7
    inc a                                         ; $3ca1: $3c
    push de                                       ; $3ca2: $d5
    inc a                                         ; $3ca3: $3c
    add sp, $3c                                   ; $3ca4: $e8 $3c
    ret                                           ; $3ca6: $c9


    ld a, [$c512]                                 ; $3ca7: $fa $12 $c5
    ld hl, $368c                                  ; $3caa: $21 $8c $36
    call Call_000_041a                            ; $3cad: $cd $1a $04
    ld a, [$c521]                                 ; $3cb0: $fa $21 $c5
    ld e, a                                       ; $3cb3: $5f
    ld a, [$c522]                                 ; $3cb4: $fa $22 $c5
    ld d, a                                       ; $3cb7: $57
    call Call_000_3e10                            ; $3cb8: $cd $10 $3e
    ret nc                                        ; $3cbb: $d0

    ld a, [$c500]                                 ; $3cbc: $fa $00 $c5
    call Call_000_2ef1                            ; $3cbf: $cd $f1 $2e
    ld a, [$c241]                                 ; $3cc2: $fa $41 $c2
    bit 7, a                                      ; $3cc5: $cb $7f
    ret nz                                        ; $3cc7: $c0

    ld a, e                                       ; $3cc8: $7b
    ld [$c521], a                                 ; $3cc9: $ea $21 $c5
    ld a, d                                       ; $3ccc: $7a
    ld [$c522], a                                 ; $3ccd: $ea $22 $c5
    ld a, $30                                     ; $3cd0: $3e $30
    jp Jump_000_00d9                              ; $3cd2: $c3 $d9 $00


    ld a, [$c514]                                 ; $3cd5: $fa $14 $c5
    cp $0c                                        ; $3cd8: $fe $0c
    jp z, $5343                                   ; $3cda: $ca $43 $53

    cp $03                                        ; $3cdd: $fe $03
    jp z, $5449                                   ; $3cdf: $ca $49 $54

    cp $05                                        ; $3ce2: $fe $05
    jp z, $5563                                   ; $3ce4: $ca $63 $55

    ret                                           ; $3ce7: $c9


jr_000_3ce8:
    xor a                                         ; $3ce8: $af
    ld [$c514], a                                 ; $3ce9: $ea $14 $c5
    ld a, $01                                     ; $3cec: $3e $01
    ld [$c125], a                                 ; $3cee: $ea $25 $c1
    ret                                           ; $3cf1: $c9


    call Call_000_32a3                            ; $3cf2: $cd $a3 $32
    call Call_000_32b2                            ; $3cf5: $cd $b2 $32
    call $5816                                    ; $3cf8: $cd $16 $58
    ld a, [$c512]                                 ; $3cfb: $fa $12 $c5
    rst RST_00                                    ; $3cfe: $c7
    and [hl]                                      ; $3cff: $a6
    inc a                                         ; $3d00: $3c
    dec c                                         ; $3d01: $0d
    dec a                                         ; $3d02: $3d
    ld de, $153d                                  ; $3d03: $11 $3d $15
    dec a                                         ; $3d06: $3d
    add hl, de                                    ; $3d07: $19
    dec a                                         ; $3d08: $3d
    adc $53                                       ; $3d09: $ce $53
    add sp, $3c                                   ; $3d0b: $e8 $3c
    ld c, $00                                     ; $3d0d: $0e $00
    jr jr_000_3d1b                                ; $3d0f: $18 $0a

    ld c, $01                                     ; $3d11: $0e $01
    jr jr_000_3d1b                                ; $3d13: $18 $06

    ld c, $02                                     ; $3d15: $0e $02
    jr jr_000_3d1b                                ; $3d17: $18 $02

    ld c, $03                                     ; $3d19: $0e $03

jr_000_3d1b:
    ld a, [$c512]                                 ; $3d1b: $fa $12 $c5
    call Call_000_2f48                            ; $3d1e: $cd $48 $2f
    ret nc                                        ; $3d21: $d0

    ld a, e                                       ; $3d22: $7b
    ld [$c521], a                                 ; $3d23: $ea $21 $c5
    ld a, d                                       ; $3d26: $7a
    ld [$c522], a                                 ; $3d27: $ea $22 $c5
    ld a, c                                       ; $3d2a: $79
    ld [$c510], a                                 ; $3d2b: $ea $10 $c5
    ld a, $30                                     ; $3d2e: $3e $30
    jp Jump_000_00d9                              ; $3d30: $c3 $d9 $00


    call Call_000_32a3                            ; $3d33: $cd $a3 $32
    call Call_000_32b2                            ; $3d36: $cd $b2 $32
    call $5816                                    ; $3d39: $cd $16 $58
    ld a, [$c00f]                                 ; $3d3c: $fa $0f $c0
    and $30                                       ; $3d3f: $e6 $30
    ret z                                         ; $3d41: $c8

    and $10                                       ; $3d42: $e6 $10
    jp nz, $5758                                  ; $3d44: $c2 $58 $57

    jr jr_000_3ce8                                ; $3d47: $18 $9f

    call Call_000_32a3                            ; $3d49: $cd $a3 $32
    call Call_000_32b2                            ; $3d4c: $cd $b2 $32
    call $580f                                    ; $3d4f: $cd $0f $58
    ld a, [$c512]                                 ; $3d52: $fa $12 $c5
    rst RST_00                                    ; $3d55: $c7
    and [hl]                                      ; $3d56: $a6
    inc a                                         ; $3d57: $3c
    ld h, h                                       ; $3d58: $64
    dec a                                         ; $3d59: $3d
    ld h, h                                       ; $3d5a: $64
    dec a                                         ; $3d5b: $3d
    ld h, h                                       ; $3d5c: $64
    dec a                                         ; $3d5d: $3d
    ld h, h                                       ; $3d5e: $64
    dec a                                         ; $3d5f: $3d
    sub a                                         ; $3d60: $97
    ld d, h                                       ; $3d61: $54
    add sp, $3c                                   ; $3d62: $e8 $3c
    ld a, [$c512]                                 ; $3d64: $fa $12 $c5
    ld hl, $368c                                  ; $3d67: $21 $8c $36
    call Call_000_041a                            ; $3d6a: $cd $1a $04
    call Call_000_3d79                            ; $3d6d: $cd $79 $3d
    call Call_000_0332                            ; $3d70: $cd $32 $03
    ret z                                         ; $3d73: $c8

    ld a, $30                                     ; $3d74: $3e $30
    jp Jump_000_00d9                              ; $3d76: $c3 $d9 $00


Call_000_3d79:
    ld a, [$c521]                                 ; $3d79: $fa $21 $c5
    ld e, a                                       ; $3d7c: $5f
    ld a, [$c522]                                 ; $3d7d: $fa $22 $c5
    ld d, a                                       ; $3d80: $57
    push de                                       ; $3d81: $d5
    call Call_000_3e1d                            ; $3d82: $cd $1d $3e
    pop hl                                        ; $3d85: $e1
    ld a, e                                       ; $3d86: $7b
    ld [$c521], a                                 ; $3d87: $ea $21 $c5
    ld a, d                                       ; $3d8a: $7a
    ld [$c522], a                                 ; $3d8b: $ea $22 $c5
    ret                                           ; $3d8e: $c9


Call_000_3d8f:
    ld a, [$c510]                                 ; $3d8f: $fa $10 $c5
    rst RST_00                                    ; $3d92: $c7
    sbc e                                         ; $3d93: $9b
    dec a                                         ; $3d94: $3d
    xor e                                         ; $3d95: $ab
    dec a                                         ; $3d96: $3d
    cp e                                          ; $3d97: $bb
    dec a                                         ; $3d98: $3d
    srl l                                         ; $3d99: $cb $3d
    call Call_000_3ddb                            ; $3d9b: $cd $db $3d
    ret c                                         ; $3d9e: $d8

    call Call_000_3df0                            ; $3d9f: $cd $f0 $3d
    ret c                                         ; $3da2: $d8

    call Call_000_3de9                            ; $3da3: $cd $e9 $3d
    ret c                                         ; $3da6: $d8

    call Call_000_3de2                            ; $3da7: $cd $e2 $3d
    ret                                           ; $3daa: $c9


    call Call_000_3de2                            ; $3dab: $cd $e2 $3d
    ret c                                         ; $3dae: $d8

    call Call_000_3de9                            ; $3daf: $cd $e9 $3d
    ret c                                         ; $3db2: $d8

    call Call_000_3df0                            ; $3db3: $cd $f0 $3d
    ret c                                         ; $3db6: $d8

    call Call_000_3ddb                            ; $3db7: $cd $db $3d
    ret                                           ; $3dba: $c9


    call Call_000_3de9                            ; $3dbb: $cd $e9 $3d
    ret c                                         ; $3dbe: $d8

    call Call_000_3ddb                            ; $3dbf: $cd $db $3d
    ret c                                         ; $3dc2: $d8

    call Call_000_3de2                            ; $3dc3: $cd $e2 $3d
    ret c                                         ; $3dc6: $d8

    call Call_000_3df0                            ; $3dc7: $cd $f0 $3d
    ret                                           ; $3dca: $c9


    call Call_000_3df0                            ; $3dcb: $cd $f0 $3d
    ret c                                         ; $3dce: $d8

    call Call_000_3de2                            ; $3dcf: $cd $e2 $3d
    ret c                                         ; $3dd2: $d8

    call Call_000_3ddb                            ; $3dd3: $cd $db $3d
    ret c                                         ; $3dd6: $d8

    call Call_000_3de9                            ; $3dd7: $cd $e9 $3d
    ret                                           ; $3dda: $c9


Call_000_3ddb:
    ld c, $00                                     ; $3ddb: $0e $00
    ld de, $0100                                  ; $3ddd: $11 $00 $01
    jr jr_000_3df5                                ; $3de0: $18 $13

Call_000_3de2:
    ld c, $01                                     ; $3de2: $0e $01
    ld de, $ff00                                  ; $3de4: $11 $00 $ff
    jr jr_000_3df5                                ; $3de7: $18 $0c

Call_000_3de9:
    ld c, $02                                     ; $3de9: $0e $02
    ld de, $00ff                                  ; $3deb: $11 $ff $00
    jr jr_000_3df5                                ; $3dee: $18 $05

Call_000_3df0:
    ld c, $03                                     ; $3df0: $0e $03
    ld de, $0001                                  ; $3df2: $11 $01 $00

jr_000_3df5:
    call Call_000_3e08                            ; $3df5: $cd $08 $3e
    ret nc                                        ; $3df8: $d0

    ld a, [$c500]                                 ; $3df9: $fa $00 $c5
    push bc                                       ; $3dfc: $c5
    call $57bb                                    ; $3dfd: $cd $bb $57
    pop bc                                        ; $3e00: $c1
    ccf                                           ; $3e01: $3f
    ret nc                                        ; $3e02: $d0

    ld a, c                                       ; $3e03: $79
    ld [$c510], a                                 ; $3e04: $ea $10 $c5
    ret                                           ; $3e07: $c9


Call_000_3e08:
    ld a, [$c503]                                 ; $3e08: $fa $03 $c5
    ld l, a                                       ; $3e0b: $6f
    ld a, [$c504]                                 ; $3e0c: $fa $04 $c5
    ld h, a                                       ; $3e0f: $67

Call_000_3e10:
    ld a, l                                       ; $3e10: $7d
    add e                                         ; $3e11: $83
    cp $08                                        ; $3e12: $fe $08
    ret nc                                        ; $3e14: $d0

    ld e, a                                       ; $3e15: $5f
    ld a, h                                       ; $3e16: $7c
    add d                                         ; $3e17: $82
    cp $0a                                        ; $3e18: $fe $0a
    ret nc                                        ; $3e1a: $d0

    ld d, a                                       ; $3e1b: $57
    ret                                           ; $3e1c: $c9


Call_000_3e1d:
    ld a, l                                       ; $3e1d: $7d
    add e                                         ; $3e1e: $83
    ld e, a                                       ; $3e1f: $5f
    ld a, e                                       ; $3e20: $7b
    cp $80                                        ; $3e21: $fe $80
    jr c, jr_000_3e27                             ; $3e23: $38 $02

    ld e, $00                                     ; $3e25: $1e $00

jr_000_3e27:
    ld a, e                                       ; $3e27: $7b
    cp $07                                        ; $3e28: $fe $07
    jr c, jr_000_3e2e                             ; $3e2a: $38 $02

    ld e, $06                                     ; $3e2c: $1e $06

jr_000_3e2e:
    ld a, h                                       ; $3e2e: $7c
    add d                                         ; $3e2f: $82
    ld d, a                                       ; $3e30: $57
    ld a, d                                       ; $3e31: $7a
    cp $80                                        ; $3e32: $fe $80
    jr c, jr_000_3e38                             ; $3e34: $38 $02

    ld d, $00                                     ; $3e36: $16 $00

jr_000_3e38:
    ld a, d                                       ; $3e38: $7a
    cp $09                                        ; $3e39: $fe $09
    ret c                                         ; $3e3b: $d8

    ld d, $08                                     ; $3e3c: $16 $08
    ret                                           ; $3e3e: $c9


    ld hl, $c518                                  ; $3e3f: $21 $18 $c5
    dec [hl]                                      ; $3e42: $35
    ret nz                                        ; $3e43: $c0

    ld a, $00                                     ; $3e44: $3e $00
    ld [$c125], a                                 ; $3e46: $ea $25 $c1
    ld a, $02                                     ; $3e49: $3e $02
    ld [$c10a], a                                 ; $3e4b: $ea $0a $c1
    ret                                           ; $3e4e: $c9


    call Call_000_32a3                            ; $3e4f: $cd $a3 $32
    call Call_000_32ff                            ; $3e52: $cd $ff $32
    ld hl, $c530                                  ; $3e55: $21 $30 $c5
    dec [hl]                                      ; $3e58: $35
    jr z, jr_000_3e75                             ; $3e59: $28 $1a

    ld a, [hl]                                    ; $3e5b: $7e
    cp $28                                        ; $3e5c: $fe $28
    jr c, jr_000_3e6c                             ; $3e5e: $38 $0c

    rra                                           ; $3e60: $1f
    ld hl, $fe00                                  ; $3e61: $21 $00 $fe
    jr c, jr_000_3e69                             ; $3e64: $38 $03

    ld hl, $0200                                  ; $3e66: $21 $00 $02

jr_000_3e69:
    jp Jump_000_0e42                              ; $3e69: $c3 $42 $0e


jr_000_3e6c:
    ld hl, $0000                                  ; $3e6c: $21 $00 $00
    call Call_000_0e42                            ; $3e6f: $cd $42 $0e
    jp $58ee                                      ; $3e72: $c3 $ee $58


jr_000_3e75:
    call Call_000_32b2                            ; $3e75: $cd $b2 $32
    call $5bf9                                    ; $3e78: $cd $f9 $5b
    call $5b57                                    ; $3e7b: $cd $57 $5b
    ld a, $00                                     ; $3e7e: $3e $00
    ld [$c125], a                                 ; $3e80: $ea $25 $c1
    ld a, $02                                     ; $3e83: $3e $02
    ld [$c10a], a                                 ; $3e85: $ea $0a $c1
    ret                                           ; $3e88: $c9


Jump_000_3e89:
    ld hl, $c263                                  ; $3e89: $21 $63 $c2
    dec [hl]                                      ; $3e8c: $35
    ret nz                                        ; $3e8d: $c0

    ld [hl], $10                                  ; $3e8e: $36 $10
    ld a, [$c20f]                                 ; $3e90: $fa $0f $c2
    rra                                           ; $3e93: $1f
    jp c, Jump_000_3eae                           ; $3e94: $da $ae $3e

    rra                                           ; $3e97: $1f
    jp c, Jump_000_3f04                           ; $3e98: $da $04 $3f

    rra                                           ; $3e9b: $1f
    jp c, Jump_000_3ed9                           ; $3e9c: $da $d9 $3e

    rra                                           ; $3e9f: $1f
    jp c, Jump_000_3f2d                           ; $3ea0: $da $2d $3f

    ld a, $00                                     ; $3ea3: $3e $00
    ld [$c125], a                                 ; $3ea5: $ea $25 $c1
    ld a, $02                                     ; $3ea8: $3e $02
    ld [$c10a], a                                 ; $3eaa: $ea $0a $c1
    ret                                           ; $3ead: $c9


Jump_000_3eae:
    ld a, [$c500]                                 ; $3eae: $fa $00 $c5
    ld [$c262], a                                 ; $3eb1: $ea $62 $c2
    call Call_000_3f56                            ; $3eb4: $cd $56 $3f
    ret z                                         ; $3eb7: $c8

    ld hl, $c20f                                  ; $3eb8: $21 $0f $c2
    res 0, [hl]                                   ; $3ebb: $cb $86
    ld a, [$c500]                                 ; $3ebd: $fa $00 $c5
    ld hl, $206b                                  ; $3ec0: $21 $6b $20
    call Call_000_041a                            ; $3ec3: $cd $1a $04
    ld a, $0e                                     ; $3ec6: $3e $0e
    rst RST_28                                    ; $3ec8: $ef
    rst RST_08                                    ; $3ec9: $cf
    ld a, $08                                     ; $3eca: $3e $08
    rst RST_10                                    ; $3ecc: $d7
    ld a, [hl]                                    ; $3ecd: $7e
    ld [$c262], a                                 ; $3ece: $ea $62 $c2

jr_000_3ed1:
    call Call_000_3f7c                            ; $3ed1: $cd $7c $3f
    jr c, jr_000_3ed1                             ; $3ed4: $38 $fb

    jp Jump_000_3e89                              ; $3ed6: $c3 $89 $3e


Jump_000_3ed9:
    ld a, [$c500]                                 ; $3ed9: $fa $00 $c5
    ld [$c262], a                                 ; $3edc: $ea $62 $c2
    call Call_000_3f7c                            ; $3edf: $cd $7c $3f
    ret c                                         ; $3ee2: $d8

    ld hl, $c20f                                  ; $3ee3: $21 $0f $c2
    res 2, [hl]                                   ; $3ee6: $cb $96
    ld a, [$c500]                                 ; $3ee8: $fa $00 $c5
    ld hl, $206b                                  ; $3eeb: $21 $6b $20
    call Call_000_041a                            ; $3eee: $cd $1a $04
    ld a, $0e                                     ; $3ef1: $3e $0e
    rst RST_28                                    ; $3ef3: $ef
    rst RST_08                                    ; $3ef4: $cf
    ld a, $08                                     ; $3ef5: $3e $08
    rst RST_28                                    ; $3ef7: $ef
    ld a, [hl]                                    ; $3ef8: $7e
    ld [$c262], a                                 ; $3ef9: $ea $62 $c2

jr_000_3efc:
    call Call_000_3f56                            ; $3efc: $cd $56 $3f
    jr z, jr_000_3efc                             ; $3eff: $28 $fb

    jp Jump_000_3e89                              ; $3f01: $c3 $89 $3e


Jump_000_3f04:
    ld a, [$c500]                                 ; $3f04: $fa $00 $c5
    ld [$c262], a                                 ; $3f07: $ea $62 $c2
    call Call_000_3fa3                            ; $3f0a: $cd $a3 $3f
    ret c                                         ; $3f0d: $d8

    ld hl, $c20f                                  ; $3f0e: $21 $0f $c2
    res 1, [hl]                                   ; $3f11: $cb $8e
    ld a, [$c500]                                 ; $3f13: $fa $00 $c5
    ld hl, $206b                                  ; $3f16: $21 $6b $20
    call Call_000_041a                            ; $3f19: $cd $1a $04
    ld a, $0e                                     ; $3f1c: $3e $0e
    rst RST_28                                    ; $3f1e: $ef
    rst RST_08                                    ; $3f1f: $cf
    inc l                                         ; $3f20: $2c
    ld a, [hl]                                    ; $3f21: $7e
    ld [$c262], a                                 ; $3f22: $ea $62 $c2

jr_000_3f25:
    call Call_000_3fc9                            ; $3f25: $cd $c9 $3f
    jr z, jr_000_3f25                             ; $3f28: $28 $fb

    jp Jump_000_3e89                              ; $3f2a: $c3 $89 $3e


Jump_000_3f2d:
    ld a, [$c500]                                 ; $3f2d: $fa $00 $c5
    ld [$c262], a                                 ; $3f30: $ea $62 $c2
    call Call_000_3fc9                            ; $3f33: $cd $c9 $3f
    ret z                                         ; $3f36: $c8

    ld hl, $c20f                                  ; $3f37: $21 $0f $c2
    res 3, [hl]                                   ; $3f3a: $cb $9e
    ld a, [$c500]                                 ; $3f3c: $fa $00 $c5
    ld hl, $206b                                  ; $3f3f: $21 $6b $20
    call Call_000_041a                            ; $3f42: $cd $1a $04
    ld a, $0e                                     ; $3f45: $3e $0e
    rst RST_28                                    ; $3f47: $ef
    rst RST_08                                    ; $3f48: $cf
    dec l                                         ; $3f49: $2d
    ld a, [hl]                                    ; $3f4a: $7e
    ld [$c262], a                                 ; $3f4b: $ea $62 $c2

jr_000_3f4e:
    call Call_000_3fa3                            ; $3f4e: $cd $a3 $3f
    jr c, jr_000_3f4e                             ; $3f51: $38 $fb

    jp Jump_000_3e89                              ; $3f53: $c3 $89 $3e


Call_000_3f56:
    ld a, [$c262]                                 ; $3f56: $fa $62 $c2
    ld hl, $206b                                  ; $3f59: $21 $6b $20
    call Call_000_041a                            ; $3f5c: $cd $1a $04
    ld a, $0d                                     ; $3f5f: $3e $0d
    rst RST_28                                    ; $3f61: $ef
    set 0, [hl]                                   ; $3f62: $cb $c6
    ld a, $0b                                     ; $3f64: $3e $0b
    rst RST_28                                    ; $3f66: $ef
    ld e, [hl]                                    ; $3f67: $5e
    inc l                                         ; $3f68: $2c
    ld d, [hl]                                    ; $3f69: $56
    push hl                                       ; $3f6a: $e5
    push de                                       ; $3f6b: $d5
    call Call_000_3fee                            ; $3f6c: $cd $ee $3f
    pop de                                        ; $3f6f: $d1
    pop hl                                        ; $3f70: $e1
    dec l                                         ; $3f71: $2d
    dec e                                         ; $3f72: $1d
    ld [hl], e                                    ; $3f73: $73
    bit 7, e                                      ; $3f74: $cb $7b
    ret z                                         ; $3f76: $c8

    ld a, $80                                     ; $3f77: $3e $80
    ld [hl+], a                                   ; $3f79: $22
    ld [hl+], a                                   ; $3f7a: $22
    ret                                           ; $3f7b: $c9


Call_000_3f7c:
    ld a, [$c262]                                 ; $3f7c: $fa $62 $c2
    ld hl, $206b                                  ; $3f7f: $21 $6b $20
    call Call_000_041a                            ; $3f82: $cd $1a $04
    ld a, $0d                                     ; $3f85: $3e $0d
    rst RST_28                                    ; $3f87: $ef
    set 2, [hl]                                   ; $3f88: $cb $d6
    ld a, $0f                                     ; $3f8a: $3e $0f
    rst RST_28                                    ; $3f8c: $ef
    ld e, [hl]                                    ; $3f8d: $5e
    inc l                                         ; $3f8e: $2c
    ld d, [hl]                                    ; $3f8f: $56
    push hl                                       ; $3f90: $e5
    push de                                       ; $3f91: $d5
    call Call_000_3fee                            ; $3f92: $cd $ee $3f
    pop de                                        ; $3f95: $d1
    pop hl                                        ; $3f96: $e1
    dec l                                         ; $3f97: $2d
    inc e                                         ; $3f98: $1c
    ld [hl], e                                    ; $3f99: $73
    ld a, e                                       ; $3f9a: $7b
    cp $08                                        ; $3f9b: $fe $08
    ret c                                         ; $3f9d: $d8

    ld a, $80                                     ; $3f9e: $3e $80
    ld [hl+], a                                   ; $3fa0: $22
    ld [hl+], a                                   ; $3fa1: $22
    ret                                           ; $3fa2: $c9


Call_000_3fa3:
    ld a, [$c262]                                 ; $3fa3: $fa $62 $c2
    ld hl, $206b                                  ; $3fa6: $21 $6b $20
    call Call_000_041a                            ; $3fa9: $cd $1a $04
    ld a, $0d                                     ; $3fac: $3e $0d
    rst RST_28                                    ; $3fae: $ef
    set 1, [hl]                                   ; $3faf: $cb $ce
    ld a, $0d                                     ; $3fb1: $3e $0d
    rst RST_28                                    ; $3fb3: $ef
    ld e, [hl]                                    ; $3fb4: $5e
    inc l                                         ; $3fb5: $2c
    ld d, [hl]                                    ; $3fb6: $56
    push hl                                       ; $3fb7: $e5
    push de                                       ; $3fb8: $d5
    call $4031                                    ; $3fb9: $cd $31 $40
    pop de                                        ; $3fbc: $d1
    pop hl                                        ; $3fbd: $e1
    inc d                                         ; $3fbe: $14
    ld [hl], d                                    ; $3fbf: $72

Jump_000_3fc0:
    ld a, d                                       ; $3fc0: $7a
    cp $0a                                        ; $3fc1: $fe $0a
    ret c                                         ; $3fc3: $d8

    ld a, $80                                     ; $3fc4: $3e $80
    ld [hl-], a                                   ; $3fc6: $32
    ld [hl-], a                                   ; $3fc7: $32
    ret                                           ; $3fc8: $c9


Call_000_3fc9:
    ld a, [$c262]                                 ; $3fc9: $fa $62 $c2
    ld hl, $206b                                  ; $3fcc: $21 $6b $20
    call Call_000_041a                            ; $3fcf: $cd $1a $04
    ld a, $0d                                     ; $3fd2: $3e $0d
    rst RST_28                                    ; $3fd4: $ef
    set 3, [hl]                                   ; $3fd5: $cb $de
    ld a, $11                                     ; $3fd7: $3e $11
    rst RST_28                                    ; $3fd9: $ef
    ld e, [hl]                                    ; $3fda: $5e
    inc l                                         ; $3fdb: $2c
    ld d, [hl]                                    ; $3fdc: $56
    push hl                                       ; $3fdd: $e5
    push de                                       ; $3fde: $d5
    call $4031                                    ; $3fdf: $cd $31 $40
    pop de                                        ; $3fe2: $d1
    pop hl                                        ; $3fe3: $e1
    dec d                                         ; $3fe4: $15
    ld [hl], d                                    ; $3fe5: $72
    bit 7, d                                      ; $3fe6: $cb $7a
    ret z                                         ; $3fe8: $c8

    ld a, $80                                     ; $3fe9: $3e $80
    ld [hl-], a                                   ; $3feb: $32
    ld [hl-], a                                   ; $3fec: $32
    ret                                           ; $3fed: $c9


Call_000_3fee:
    xor a                                         ; $3fee: $af
    ld [$c261], a                                 ; $3fef: $ea $61 $c2
    ld a, [$c262]                                 ; $3ff2: $fa $62 $c2
    call Call_000_2ef1                            ; $3ff5: $cd $f1 $2e
    dec bc                                        ; $3ff8: $0b
    ld a, [bc]                                    ; $3ff9: $0a
    bit 7, a                                      ; $3ffa: $cb $7f
    jr nz, @+$10                                  ; $3ffc: $20 $0e

    db $21                                        ; $3ffe: $21

Jump_000_3fff:
    adc e                                         ; $3fff: $8b
