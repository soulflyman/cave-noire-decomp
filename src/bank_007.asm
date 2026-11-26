; Disassembly of "Cave Noire (Japan).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

Call_007_4000:
jr_007_4000:
    ld a, [hl+]                                   ; $4000: $2a
    ld [de], a                                    ; $4001: $12
    inc de                                        ; $4002: $13
    dec bc                                        ; $4003: $0b
    ld a, b                                       ; $4004: $78
    or c                                          ; $4005: $b1
    jr nz, jr_007_4000                            ; $4006: $20 $f8

    ret                                           ; $4008: $c9


Call_007_4009:
    add a                                         ; $4009: $87
    rst RST_28                                    ; $400a: $ef
    ld a, [hl+]                                   ; $400b: $2a
    ld h, [hl]                                    ; $400c: $66
    ld l, a                                       ; $400d: $6f
    ret                                           ; $400e: $c9


Call_007_400f:
    pop hl                                        ; $400f: $e1
    call Call_007_4009                            ; $4010: $cd $09 $40
    jp hl                                         ; $4013: $e9


    ld hl, $d080                                  ; $4014: $21 $80 $d0
    ld de, $d081                                  ; $4017: $11 $81 $d0
    ld bc, $0080                                  ; $401a: $01 $80 $00
    ld [hl], $00                                  ; $401d: $36 $00
    call Call_007_4000                            ; $401f: $cd $00 $40
    ld hl, $d180                                  ; $4022: $21 $80 $d1
    ld de, $d181                                  ; $4025: $11 $81 $d1
    ld bc, $0080                                  ; $4028: $01 $80 $00
    ld [hl], $00                                  ; $402b: $36 $00
    call Call_007_4000                            ; $402d: $cd $00 $40
    ld hl, $d280                                  ; $4030: $21 $80 $d2
    ld de, $d281                                  ; $4033: $11 $81 $d2
    ld bc, $0080                                  ; $4036: $01 $80 $00
    ld [hl], $00                                  ; $4039: $36 $00
    call Call_007_4000                            ; $403b: $cd $00 $40
    ld hl, $d380                                  ; $403e: $21 $80 $d3
    ld de, $d381                                  ; $4041: $11 $81 $d3
    ld bc, $0080                                  ; $4044: $01 $80 $00
    ld [hl], $00                                  ; $4047: $36 $00
    call Call_007_4000                            ; $4049: $cd $00 $40
    ld hl, $d480                                  ; $404c: $21 $80 $d4
    ld de, $d481                                  ; $404f: $11 $81 $d4
    ld bc, $0080                                  ; $4052: $01 $80 $00
    ld [hl], $00                                  ; $4055: $36 $00
    call Call_007_4000                            ; $4057: $cd $00 $40
    ld hl, $d580                                  ; $405a: $21 $80 $d5
    ld de, $d581                                  ; $405d: $11 $81 $d5
    ld bc, $0080                                  ; $4060: $01 $80 $00
    ld [hl], $00                                  ; $4063: $36 $00
    call Call_007_4000                            ; $4065: $cd $00 $40
    ld hl, $d680                                  ; $4068: $21 $80 $d6
    ld de, $d681                                  ; $406b: $11 $81 $d6
    ld bc, $0080                                  ; $406e: $01 $80 $00
    ld [hl], $00                                  ; $4071: $36 $00
    call Call_007_4000                            ; $4073: $cd $00 $40
    ld hl, $ff26                                  ; $4076: $21 $26 $ff
    ld a, $ff                                     ; $4079: $3e $ff
    ld [hl], a                                    ; $407b: $77
    dec hl                                        ; $407c: $2b
    ld [hl], a                                    ; $407d: $77
    dec hl                                        ; $407e: $2b
    ld a, $77                                     ; $407f: $3e $77
    ld [hl], a                                    ; $4081: $77
    ret                                           ; $4082: $c9


Call_007_4083:
    ld a, [$c014]                                 ; $4083: $fa $14 $c0
    or a                                          ; $4086: $b7
    ret nz                                        ; $4087: $c0

    ld a, [$c03d]                                 ; $4088: $fa $3d $c0
    or a                                          ; $408b: $b7
    ret z                                         ; $408c: $c8

    ld hl, $d0da                                  ; $408d: $21 $da $d0
    inc [hl]                                      ; $4090: $34
    cp [hl]                                       ; $4091: $be
    ret nz                                        ; $4092: $c0

    ld [hl], $00                                  ; $4093: $36 $00
    ld hl, $d0db                                  ; $4095: $21 $db $d0
    inc [hl]                                      ; $4098: $34
    ld a, [hl]                                    ; $4099: $7e
    cp $01                                        ; $409a: $fe $01
    jp z, Jump_007_4c73                           ; $409c: $ca $73 $4c

    cp $05                                        ; $409f: $fe $05
    ret nz                                        ; $40a1: $c0

    xor a                                         ; $40a2: $af
    ld [hl], a                                    ; $40a3: $77
    ld [$c03d], a                                 ; $40a4: $ea $3d $c0
    ld [$d0db], a                                 ; $40a7: $ea $db $d0
    ld [$d0da], a                                 ; $40aa: $ea $da $d0
    ld a, [$d080]                                 ; $40ad: $fa $80 $d0
    or a                                          ; $40b0: $b7
    jp nz, Jump_007_40b7                          ; $40b1: $c2 $b7 $40

    xor a                                         ; $40b4: $af
    ldh [rNR12], a                                ; $40b5: $e0 $12

Jump_007_40b7:
    ld a, [$d180]                                 ; $40b7: $fa $80 $d1
    or a                                          ; $40ba: $b7
    jp nz, Jump_007_40c1                          ; $40bb: $c2 $c1 $40

    xor a                                         ; $40be: $af
    ldh [rNR22], a                                ; $40bf: $e0 $17

Jump_007_40c1:
    xor a                                         ; $40c1: $af
    ldh [rNR32], a                                ; $40c2: $e0 $1c
    jp Jump_007_4c5f                              ; $40c4: $c3 $5f $4c


    ret                                           ; $40c7: $c9


Call_007_40c8:
    ld a, [$d0cc]                                 ; $40c8: $fa $cc $d0
    ld b, a                                       ; $40cb: $47
    ld a, [$d0cd]                                 ; $40cc: $fa $cd $d0
    add b                                         ; $40cf: $80
    ld [$d0cd], a                                 ; $40d0: $ea $cd $d0
    ld a, $01                                     ; $40d3: $3e $01
    jr c, jr_007_40d8                             ; $40d5: $38 $01

    xor a                                         ; $40d7: $af

jr_007_40d8:
    ld [$d0ce], a                                 ; $40d8: $ea $ce $d0
    ret                                           ; $40db: $c9


    call Call_007_4083                            ; $40dc: $cd $83 $40
    call Call_007_40c8                            ; $40df: $cd $c8 $40
    xor a                                         ; $40e2: $af

jr_007_40e3:
    ld [$d0ca], a                                 ; $40e3: $ea $ca $d0
    ld a, [$c014]                                 ; $40e6: $fa $14 $c0
    or a                                          ; $40e9: $b7
    jr z, jr_007_4102                             ; $40ea: $28 $16

    ld a, [$d0ca]                                 ; $40ec: $fa $ca $d0
    cp $01                                        ; $40ef: $fe $01
    jr nz, jr_007_4133                            ; $40f1: $20 $40

    ld hl, $d180                                  ; $40f3: $21 $80 $d1
    ld l, $80                                     ; $40f6: $2e $80
    ld a, [hl]                                    ; $40f8: $7e
    ld a, [$d180]                                 ; $40f9: $fa $80 $d1
    cp $74                                        ; $40fc: $fe $74
    jr z, jr_007_4126                             ; $40fe: $28 $26

    jr jr_007_413b                                ; $4100: $18 $39

jr_007_4102:
    ld a, [$d0ca]                                 ; $4102: $fa $ca $d0
    cp $03                                        ; $4105: $fe $03
    jr nz, jr_007_4126                            ; $4107: $20 $1d

    ld a, [$d0d6]                                 ; $4109: $fa $d6 $d0
    ld b, a                                       ; $410c: $47
    ld a, [$d0ce]                                 ; $410d: $fa $ce $d0
    or b                                          ; $4110: $b0
    jr nz, jr_007_413b                            ; $4111: $20 $28

    jr jr_007_4126                                ; $4113: $18 $11

    ld a, [$d0ca]                                 ; $4115: $fa $ca $d0
    cp $04                                        ; $4118: $fe $04
    jr nz, jr_007_4126                            ; $411a: $20 $0a

    ld a, [$d0d6]                                 ; $411c: $fa $d6 $d0
    ld b, a                                       ; $411f: $47
    ld a, [$d0ce]                                 ; $4120: $fa $ce $d0
    or b                                          ; $4123: $b0
    jr nz, jr_007_413b                            ; $4124: $20 $15

jr_007_4126:
    ld a, [$d0ca]                                 ; $4126: $fa $ca $d0
    add $d0                                       ; $4129: $c6 $d0
    ld h, a                                       ; $412b: $67
    ld l, $80                                     ; $412c: $2e $80
    ld a, [hl]                                    ; $412e: $7e
    or a                                          ; $412f: $b7
    call nz, Call_007_4149                        ; $4130: $c4 $49 $41

jr_007_4133:
    ld a, [$d0ca]                                 ; $4133: $fa $ca $d0
    inc a                                         ; $4136: $3c
    cp $07                                        ; $4137: $fe $07
    jr nz, jr_007_40e3                            ; $4139: $20 $a8

jr_007_413b:
    ld a, [$d0cf]                                 ; $413b: $fa $cf $d0
    or a                                          ; $413e: $b7
    ret z                                         ; $413f: $c8

    ld b, a                                       ; $4140: $47
    xor a                                         ; $4141: $af
    ld [$d0cf], a                                 ; $4142: $ea $cf $d0
    ld a, b                                       ; $4145: $78
    jp Jump_007_4acf                              ; $4146: $c3 $cf $4a


Call_007_4149:
    call Call_007_4981                            ; $4149: $cd $81 $49
    ld [$d0cb], a                                 ; $414c: $ea $cb $d0
    ld l, $82                                     ; $414f: $2e $82
    ld e, [hl]                                    ; $4151: $5e
    inc l                                         ; $4152: $2c
    ld d, [hl]                                    ; $4153: $56
    ld l, $84                                     ; $4154: $2e $84
    dec [hl]                                      ; $4156: $35
    jr nz, jr_007_4170                            ; $4157: $20 $17

    ld l, $85                                     ; $4159: $2e $85
    res 0, [hl]                                   ; $415b: $cb $86
    res 7, [hl]                                   ; $415d: $cb $be
    ld a, [$d0ca]                                 ; $415f: $fa $ca $d0
    cp $05                                        ; $4162: $fe $05
    jp nz, Jump_007_4226                          ; $4164: $c2 $26 $42

    xor a                                         ; $4167: $af
    ld [$d1d0], a                                 ; $4168: $ea $d0 $d1
    ldh [rNR30], a                                ; $416b: $e0 $1a
    jp Jump_007_4226                              ; $416d: $c3 $26 $42


jr_007_4170:
    ld l, $85                                     ; $4170: $2e $85
    bit 7, [hl]                                   ; $4172: $cb $7e
    ret nz                                        ; $4174: $c0

    ld l, $86                                     ; $4175: $2e $86
    bit 4, [hl]                                   ; $4177: $cb $66
    ret nz                                        ; $4179: $c0

    ld a, [$d0ca]                                 ; $417a: $fa $ca $d0
    cp $02                                        ; $417d: $fe $02
    ret z                                         ; $417f: $c8

    cp $06                                        ; $4180: $fe $06
    ret z                                         ; $4182: $c8

    ld l, $85                                     ; $4183: $2e $85
    bit 4, [hl]                                   ; $4185: $cb $66
    jr z, jr_007_4193                             ; $4187: $28 $0a

    ld l, $ba                                     ; $4189: $2e $ba
    inc [hl]                                      ; $418b: $34
    ld a, [hl]                                    ; $418c: $7e
    ld l, $bc                                     ; $418d: $2e $bc
    cp [hl]                                       ; $418f: $be
    call z, Call_007_48df                         ; $4190: $cc $df $48

jr_007_4193:
    ld l, $9b                                     ; $4193: $2e $9b
    ld a, [hl]                                    ; $4195: $7e
    ld l, $84                                     ; $4196: $2e $84
    sub [hl]                                      ; $4198: $96
    jr c, jr_007_419f                             ; $4199: $38 $04

    ld l, $85                                     ; $419b: $2e $85
    set 0, [hl]                                   ; $419d: $cb $c6

jr_007_419f:
    call Call_007_46cf                            ; $419f: $cd $cf $46
    call Call_007_4781                            ; $41a2: $cd $81 $47
    ld a, [$d0ca]                                 ; $41a5: $fa $ca $d0
    cp $05                                        ; $41a8: $fe $05
    jr z, jr_007_41ee                             ; $41aa: $28 $42

    ld l, $b2                                     ; $41ac: $2e $b2
    ld a, [hl]                                    ; $41ae: $7e
    or a                                          ; $41af: $b7
    jp nz, Jump_007_41e3                          ; $41b0: $c2 $e3 $41

    ld l, $9b                                     ; $41b3: $2e $9b
    ld a, [hl]                                    ; $41b5: $7e
    ld l, $84                                     ; $41b6: $2e $84
    sub [hl]                                      ; $41b8: $96
    ret nz                                        ; $41b9: $c0

    ld l, $99                                     ; $41ba: $2e $99
    ld a, [hl]                                    ; $41bc: $7e
    ld l, $a1                                     ; $41bd: $2e $a1
    or [hl]                                       ; $41bf: $b6

Jump_007_41c0:
    ld [$d0d4], a                                 ; $41c0: $ea $d4 $d0
    ld a, $02                                     ; $41c3: $3e $02
    ld [$d0d5], a                                 ; $41c5: $ea $d5 $d0
    call Call_007_4927                            ; $41c8: $cd $27 $49
    ld l, $b2                                     ; $41cb: $2e $b2
    ld a, [hl]                                    ; $41cd: $7e
    or a                                          ; $41ce: $b7
    jp z, Jump_007_4950                           ; $41cf: $ca $50 $49

    ld l, $86                                     ; $41d2: $2e $86
    bit 0, [hl]                                   ; $41d4: $cb $46
    ret z                                         ; $41d6: $c8

    ld l, $86                                     ; $41d7: $2e $86
    bit 1, [hl]                                   ; $41d9: $cb $4e
    ret nz                                        ; $41db: $c0

    ld l, $86                                     ; $41dc: $2e $86
    res 0, [hl]                                   ; $41de: $cb $86
    jp Jump_007_4950                              ; $41e0: $c3 $50 $49


Jump_007_41e3:
    ld l, $b5                                     ; $41e3: $2e $b5
    ld a, [hl]                                    ; $41e5: $7e
    ld l, $97                                     ; $41e6: $2e $97
    ld [hl], a                                    ; $41e8: $77
    swap a                                        ; $41e9: $cb $37
    jp Jump_007_41c0                              ; $41eb: $c3 $c0 $41


jr_007_41ee:
    ld l, $85                                     ; $41ee: $2e $85
    bit 0, [hl]                                   ; $41f0: $cb $46
    ret z                                         ; $41f2: $c8

    ld l, $99                                     ; $41f3: $2e $99
    ld a, [hl]                                    ; $41f5: $7e
    or a                                          ; $41f6: $b7
    jr z, jr_007_421a                             ; $41f7: $28 $21

    ld l, $9e                                     ; $41f9: $2e $9e
    dec [hl]                                      ; $41fb: $35
    ret nz                                        ; $41fc: $c0

    ld l, $9f                                     ; $41fd: $2e $9f
    ld a, [hl]                                    ; $41ff: $7e
    ld l, $9e                                     ; $4200: $2e $9e
    ld [hl], a                                    ; $4202: $77
    ld l, $a1                                     ; $4203: $2e $a1
    ld a, [hl]                                    ; $4205: $7e
    or a                                          ; $4206: $b7
    jr z, jr_007_421a                             ; $4207: $28 $11

    inc a                                         ; $4209: $3c
    and $03                                       ; $420a: $e6 $03
    ld [hl], a                                    ; $420c: $77
    jr z, jr_007_421a                             ; $420d: $28 $0b

    ld l, $8b                                     ; $420f: $2e $8b
    add [hl]                                      ; $4211: $86

Jump_007_4212:
    cp $04                                        ; $4212: $fe $04
    jr c, jr_007_4217                             ; $4214: $38 $01

    xor a                                         ; $4216: $af

jr_007_4217:
    rla                                           ; $4217: $17
    swap a                                        ; $4218: $cb $37

jr_007_421a:
    ld [$d0d4], a                                 ; $421a: $ea $d4 $d0
    ld a, $02                                     ; $421d: $3e $02
    ld [$d0d5], a                                 ; $421f: $ea $d5 $d0
    jp Jump_007_4927                              ; $4222: $c3 $27 $49


Jump_007_4225:
jr_007_4225:
    inc de                                        ; $4225: $13

Jump_007_4226:
jr_007_4226:
    ld a, [de]                                    ; $4226: $1a
    cp $fb                                        ; $4227: $fe $fb
    jp c, Jump_007_4343                           ; $4229: $da $43 $43

    inc de                                        ; $422c: $13
    sub $fb                                       ; $422d: $d6 $fb
    push hl                                       ; $422f: $e5
    call Call_007_400f                            ; $4230: $cd $0f $40
    dec a                                         ; $4233: $3d
    ld b, d                                       ; $4234: $42
    ld h, a                                       ; $4235: $67
    ld b, d                                       ; $4236: $42
    sub h                                         ; $4237: $94
    ld b, d                                       ; $4238: $42
    cp e                                          ; $4239: $bb
    ld b, d                                       ; $423a: $42
    sub $42                                       ; $423b: $d6 $42
    pop hl                                        ; $423d: $e1
    ld l, $90                                     ; $423e: $2e $90
    ld a, [hl]                                    ; $4240: $7e
    and $01                                       ; $4241: $e6 $01
    jp nz, Jump_007_424f                          ; $4243: $c2 $4f $42

    set 0, [hl]                                   ; $4246: $cb $c6
    ld l, $a2                                     ; $4248: $2e $a2
    ld [hl], e                                    ; $424a: $73
    inc l                                         ; $424b: $2c
    ld [hl], d                                    ; $424c: $72
    jr jr_007_4226                                ; $424d: $18 $d7

Jump_007_424f:
    ld a, [de]                                    ; $424f: $1a
    ld l, $87                                     ; $4250: $2e $87
    inc [hl]                                      ; $4252: $34
    cp [hl]                                       ; $4253: $be
    jr z, jr_007_425d                             ; $4254: $28 $07

    ld l, $a2                                     ; $4256: $2e $a2
    ld e, [hl]                                    ; $4258: $5e
    inc l                                         ; $4259: $2c
    ld d, [hl]                                    ; $425a: $56
    jr jr_007_4226                                ; $425b: $18 $c9

jr_007_425d:
    ld l, $87                                     ; $425d: $2e $87
    ld [hl], $00                                  ; $425f: $36 $00
    ld l, $90                                     ; $4261: $2e $90
    res 0, [hl]                                   ; $4263: $cb $86
    jr jr_007_4225                                ; $4265: $18 $be

    pop hl                                        ; $4267: $e1
    ld l, $90                                     ; $4268: $2e $90
    ld a, [hl]                                    ; $426a: $7e
    and $02                                       ; $426b: $e6 $02
    jp nz, Jump_007_4279                          ; $426d: $c2 $79 $42

    set 1, [hl]                                   ; $4270: $cb $ce
    ld l, $a4                                     ; $4272: $2e $a4
    ld [hl], e                                    ; $4274: $73
    inc l                                         ; $4275: $2c
    ld [hl], d                                    ; $4276: $72
    jr jr_007_4226                                ; $4277: $18 $ad

Jump_007_4279:
    push hl                                       ; $4279: $e5
    ld a, [de]                                    ; $427a: $1a
    ld l, $88                                     ; $427b: $2e $88
    inc [hl]                                      ; $427d: $34
    cp [hl]                                       ; $427e: $be
    jr z, jr_007_4289                             ; $427f: $28 $08

    pop hl                                        ; $4281: $e1
    ld l, $a4                                     ; $4282: $2e $a4
    ld e, [hl]                                    ; $4284: $5e
    inc l                                         ; $4285: $2c
    ld d, [hl]                                    ; $4286: $56
    jr jr_007_4226                                ; $4287: $18 $9d

jr_007_4289:
    pop hl                                        ; $4289: $e1
    ld l, $88                                     ; $428a: $2e $88
    ld [hl], $00                                  ; $428c: $36 $00
    ld l, $90                                     ; $428e: $2e $90
    res 1, [hl]                                   ; $4290: $cb $8e
    jr jr_007_4225                                ; $4292: $18 $91

    pop hl                                        ; $4294: $e1
    ld l, $90                                     ; $4295: $2e $90
    ld a, [hl]                                    ; $4297: $7e
    and $04                                       ; $4298: $e6 $04
    jp nz, Jump_007_42af                          ; $429a: $c2 $af $42

    set 2, [hl]                                   ; $429d: $cb $d6
    ld a, [de]                                    ; $429f: $1a
    ld c, a                                       ; $42a0: $4f
    inc de                                        ; $42a1: $13

Jump_007_42a2:
    ld a, [de]                                    ; $42a2: $1a
    ld b, a                                       ; $42a3: $47
    inc de                                        ; $42a4: $13
    ld l, $a6                                     ; $42a5: $2e $a6
    ld [hl], e                                    ; $42a7: $73
    inc l                                         ; $42a8: $2c
    ld [hl], d                                    ; $42a9: $72
    ld e, c                                       ; $42aa: $59
    ld d, b                                       ; $42ab: $50
    jp Jump_007_4226                              ; $42ac: $c3 $26 $42


Jump_007_42af:
    ld l, $a6                                     ; $42af: $2e $a6
    ld e, [hl]                                    ; $42b1: $5e
    inc l                                         ; $42b2: $2c
    ld d, [hl]                                    ; $42b3: $56
    ld l, $90                                     ; $42b4: $2e $90
    res 2, [hl]                                   ; $42b6: $cb $96
    jp Jump_007_4226                              ; $42b8: $c3 $26 $42


    pop hl                                        ; $42bb: $e1
    ld l, $90                                     ; $42bc: $2e $90
    ld a, [hl]                                    ; $42be: $7e
    and $08                                       ; $42bf: $e6 $08
    jp nz, Jump_007_42ce                          ; $42c1: $c2 $ce $42

    set 3, [hl]                                   ; $42c4: $cb $de
    ld l, $a8                                     ; $42c6: $2e $a8
    ld [hl], e                                    ; $42c8: $73
    inc l                                         ; $42c9: $2c
    ld [hl], d                                    ; $42ca: $72
    jp Jump_007_4226                              ; $42cb: $c3 $26 $42


Jump_007_42ce:
    ld l, $a8                                     ; $42ce: $2e $a8
    ld e, [hl]                                    ; $42d0: $5e
    inc l                                         ; $42d1: $2c
    ld d, [hl]                                    ; $42d2: $56
    jp Jump_007_4226                              ; $42d3: $c3 $26 $42


    pop hl                                        ; $42d6: $e1
    dec de                                        ; $42d7: $1b
    ld l, $86                                     ; $42d8: $2e $86
    ld a, [hl]                                    ; $42da: $7e
    and $0f                                       ; $42db: $e6 $0f
    ld [hl], a                                    ; $42dd: $77
    xor a                                         ; $42de: $af
    ld l, $80                                     ; $42df: $2e $80
    ld [hl+], a                                   ; $42e1: $22
    ld [hl], a                                    ; $42e2: $77

Jump_007_42e3:
    ld [$d0d4], a                                 ; $42e3: $ea $d4 $d0
    ld a, $02                                     ; $42e6: $3e $02
    ld [$d0d5], a                                 ; $42e8: $ea $d5 $d0
    call Call_007_4927                            ; $42eb: $cd $27 $49
    ld a, [$d0ca]                                 ; $42ee: $fa $ca $d0
    cp $05                                        ; $42f1: $fe $05
    jr nz, jr_007_42f9                            ; $42f3: $20 $04

    xor a                                         ; $42f5: $af
    ldh [rNR30], a                                ; $42f6: $e0 $1a
    ret                                           ; $42f8: $c9


jr_007_42f9:
    cp $02                                        ; $42f9: $fe $02
    jr z, jr_007_4320                             ; $42fb: $28 $23

    cp $01                                        ; $42fd: $fe $01
    jr z, jr_007_430b                             ; $42ff: $28 $0a

    cp $00                                        ; $4301: $fe $00
    ret nz                                        ; $4303: $c0

    xor a                                         ; $4304: $af
    ldh [rNR10], a                                ; $4305: $e0 $10
    ld h, $d3                                     ; $4307: $26 $d3
    jr jr_007_430d                                ; $4309: $18 $02

jr_007_430b:
    ld h, $d4                                     ; $430b: $26 $d4

jr_007_430d:
    ld l, $80                                     ; $430d: $2e $80
    ld a, [hl]                                    ; $430f: $7e
    cp $00                                        ; $4310: $fe $00
    ret z                                         ; $4312: $c8

    push hl                                       ; $4313: $e5
    call Call_007_48df                            ; $4314: $cd $df $48
    pop hl                                        ; $4317: $e1
    push hl                                       ; $4318: $e5
    call Call_007_44c2                            ; $4319: $cd $c2 $44
    pop hl                                        ; $431c: $e1
    jp Jump_007_432c                              ; $431d: $c3 $2c $43


jr_007_4320:
    ld h, $d2                                     ; $4320: $26 $d2
    ld l, $80                                     ; $4322: $2e $80
    ld a, [hl]                                    ; $4324: $7e
    or a                                          ; $4325: $b7
    ret z                                         ; $4326: $c8

    push hl                                       ; $4327: $e5
    call Call_007_44c2                            ; $4328: $cd $c2 $44
    pop hl                                        ; $432b: $e1

Jump_007_432c:
    ld b, a                                       ; $432c: $47
    call Call_007_490c                            ; $432d: $cd $0c $49
    ld a, b                                       ; $4330: $78
    jp c, Jump_007_433a                           ; $4331: $da $3a $43

    or c                                          ; $4334: $b1
    ld [$d0d0], a                                 ; $4335: $ea $d0 $d0
    ldh [rNR51], a                                ; $4338: $e0 $25

Jump_007_433a:
    ld l, $93                                     ; $433a: $2e $93
    ld c, [hl]                                    ; $433c: $4e
    ld l, $94                                     ; $433d: $2e $94
    ld b, [hl]                                    ; $433f: $46
    jp Jump_007_489d                              ; $4340: $c3 $9d $48


Jump_007_4343:
    ld l, $86                                     ; $4343: $2e $86
    bit 5, [hl]                                   ; $4345: $cb $6e
    jp nz, Jump_007_4993                          ; $4347: $c2 $93 $49

    ld a, [de]                                    ; $434a: $1a
    cp $e0                                        ; $434b: $fe $e0
    jp z, Jump_007_4538                           ; $434d: $ca $38 $45

    and $f0                                       ; $4350: $e6 $f0
    cp $e0                                        ; $4352: $fe $e0
    jp c, Jump_007_45db                           ; $4354: $da $db $45

    cp $f0                                        ; $4357: $fe $f0
    jp z, Jump_007_4599                           ; $4359: $ca $99 $45

    ld a, [de]                                    ; $435c: $1a
    cp $e7                                        ; $435d: $fe $e7
    jp c, Jump_007_4527                           ; $435f: $da $27 $45

    inc de                                        ; $4362: $13
    sub $e7                                       ; $4363: $d6 $e7
    push hl                                       ; $4365: $e5
    call Call_007_400f                            ; $4366: $cd $0f $40
    ld a, e                                       ; $4369: $7b
    ld b, e                                       ; $436a: $43
    add e                                         ; $436b: $83
    ld b, e                                       ; $436c: $43
    sub l                                         ; $436d: $95
    ld b, e                                       ; $436e: $43
    xor b                                         ; $436f: $a8
    ld b, e                                       ; $4370: $43
    ld sp, hl                                     ; $4371: $f9
    ld b, e                                       ; $4372: $43
    ld d, e                                       ; $4373: $53
    ld b, h                                       ; $4374: $44
    ld a, b                                       ; $4375: $78
    ld b, h                                       ; $4376: $44
    sub [hl]                                      ; $4377: $96
    ld b, h                                       ; $4378: $44
    sbc [hl]                                      ; $4379: $9e
    ld b, h                                       ; $437a: $44
    pop hl                                        ; $437b: $e1
    ld a, [de]                                    ; $437c: $1a
    ld l, $91                                     ; $437d: $2e $91
    ld [hl], a                                    ; $437f: $77
    jp Jump_007_4225                              ; $4380: $c3 $25 $42


    pop hl                                        ; $4383: $e1
    ld a, [de]                                    ; $4384: $1a
    and $0f                                       ; $4385: $e6 $0f
    ld l, $99                                     ; $4387: $2e $99
    ld [hl], a                                    ; $4389: $77
    ld a, [de]                                    ; $438a: $1a
    swap a                                        ; $438b: $cb $37
    and $0f                                       ; $438d: $e6 $0f
    ld l, $9a                                     ; $438f: $2e $9a
    ld [hl], a                                    ; $4391: $77
    jp Jump_007_4225                              ; $4392: $c3 $25 $42


    pop hl                                        ; $4395: $e1
    ld a, [de]                                    ; $4396: $1a
    ld [$d0d1], a                                 ; $4397: $ea $d1 $d0
    ld [$d0d4], a                                 ; $439a: $ea $d4 $d0
    ld a, $00                                     ; $439d: $3e $00
    ld [$d0d5], a                                 ; $439f: $ea $d5 $d0
    call Call_007_4927                            ; $43a2: $cd $27 $49
    jp Jump_007_4225                              ; $43a5: $c3 $25 $42


    pop hl                                        ; $43a8: $e1
    ld a, [de]                                    ; $43a9: $1a
    and $f0                                       ; $43aa: $e6 $f0
    swap a                                        ; $43ac: $cb $37
    push hl                                       ; $43ae: $e5
    call Call_007_400f                            ; $43af: $cd $0f $40
    cp h                                          ; $43b2: $bc
    ld b, e                                       ; $43b3: $43
    add $43                                       ; $43b4: $c6 $43
    jp nc, $d843                                  ; $43b6: $d2 $43 $d8

    ld b, e                                       ; $43b9: $43
    push hl                                       ; $43ba: $e5
    ld b, e                                       ; $43bb: $43
    pop hl                                        ; $43bc: $e1
    ld a, [de]                                    ; $43bd: $1a
    and $0f                                       ; $43be: $e6 $0f
    ld l, $8a                                     ; $43c0: $2e $8a
    ld [hl], a                                    ; $43c2: $77
    jp Jump_007_4225                              ; $43c3: $c3 $25 $42


    pop hl                                        ; $43c6: $e1
    ld a, [de]                                    ; $43c7: $1a
    and $0f                                       ; $43c8: $e6 $0f
    cpl                                           ; $43ca: $2f
    inc a                                         ; $43cb: $3c
    ld l, $8a                                     ; $43cc: $2e $8a
    ld [hl], a                                    ; $43ce: $77
    jp Jump_007_4225                              ; $43cf: $c3 $25 $42


    jp Jump_007_4225                              ; $43d2: $c3 $25 $42


    jp Jump_007_4225                              ; $43d5: $c3 $25 $42


    pop hl                                        ; $43d8: $e1
    ld a, [de]                                    ; $43d9: $1a
    and $0f                                       ; $43da: $e6 $0f
    ld l, $98                                     ; $43dc: $2e $98
    ld [hl], a                                    ; $43de: $77
    call Call_007_48df                            ; $43df: $cd $df $48
    jp Jump_007_4225                              ; $43e2: $c3 $25 $42


    pop hl                                        ; $43e5: $e1
    ld a, [de]                                    ; $43e6: $1a
    and $0f                                       ; $43e7: $e6 $0f
    or a                                          ; $43e9: $b7
    ld l, $85                                     ; $43ea: $2e $85
    ld [hl], a                                    ; $43ec: $77
    jr z, jr_007_43f3                             ; $43ed: $28 $04

    or $02                                        ; $43ef: $f6 $02
    jr jr_007_43f5                                ; $43f1: $18 $02

jr_007_43f3:
    and $fd                                       ; $43f3: $e6 $fd

jr_007_43f5:
    ld [hl], a                                    ; $43f5: $77
    jp Jump_007_4225                              ; $43f6: $c3 $25 $42


    pop hl                                        ; $43f9: $e1
    ld a, [de]                                    ; $43fa: $1a
    ld l, $89                                     ; $43fb: $2e $89
    ld [hl], a                                    ; $43fd: $77
    or a                                          ; $43fe: $b7
    jr nz, jr_007_4409                            ; $43ff: $20 $08

    xor a                                         ; $4401: $af
    ld l, $8c                                     ; $4402: $2e $8c
    ld [hl+], a                                   ; $4404: $22
    ld [hl], a                                    ; $4405: $77
    jp Jump_007_4225                              ; $4406: $c3 $25 $42


jr_007_4409:
    inc de                                        ; $4409: $13
    ld a, [de]                                    ; $440a: $1a
    swap a                                        ; $440b: $cb $37
    and $0f                                       ; $440d: $e6 $0f
    ld l, $af                                     ; $440f: $2e $af
    ld [hl], a                                    ; $4411: $77
    or a                                          ; $4412: $b7
    jp nz, Jump_007_441d                          ; $4413: $c2 $1d $44

    ld l, $86                                     ; $4416: $2e $86
    res 7, [hl]                                   ; $4418: $cb $be
    jp Jump_007_4431                              ; $441a: $c3 $31 $44


Jump_007_441d:
    push bc                                       ; $441d: $c5
    ld l, $af                                     ; $441e: $2e $af
    ld b, [hl]                                    ; $4420: $46
    ld l, $91                                     ; $4421: $2e $91
    ld c, [hl]                                    ; $4423: $4e
    xor a                                         ; $4424: $af

Jump_007_4425:
    add c                                         ; $4425: $81
    dec b                                         ; $4426: $05
    jp nz, Jump_007_4425                          ; $4427: $c2 $25 $44

    ld l, $b0                                     ; $442a: $2e $b0
    ld [hl], a                                    ; $442c: $77
    ld l, $b1                                     ; $442d: $2e $b1
    ld [hl], a                                    ; $442f: $77
    pop bc                                        ; $4430: $c1

Jump_007_4431:
    ld a, [de]                                    ; $4431: $1a
    and $0f                                       ; $4432: $e6 $0f
    ld l, $ae                                     ; $4434: $2e $ae
    ld [hl], a                                    ; $4436: $77
    ld l, $89                                     ; $4437: $2e $89
    ld a, [hl]                                    ; $4439: $7e
    push hl                                       ; $443a: $e5
    dec a                                         ; $443b: $3d
    ld hl, $5400                                  ; $443c: $21 $00 $54
    call Call_007_4009                            ; $443f: $cd $09 $40
    push bc                                       ; $4442: $c5
    ld c, l                                       ; $4443: $4d
    ld b, h                                       ; $4444: $44
    pop hl                                        ; $4445: $e1
    pop hl                                        ; $4446: $e1
    ld l, $aa                                     ; $4447: $2e $aa
    ld [hl], c                                    ; $4449: $71
    inc l                                         ; $444a: $2c
    ld [hl], b                                    ; $444b: $70
    xor a                                         ; $444c: $af
    ld l, $8e                                     ; $444d: $2e $8e
    ld [hl], a                                    ; $444f: $77
    jp Jump_007_4225                              ; $4450: $c3 $25 $42


    pop hl                                        ; $4453: $e1
    ld a, [de]                                    ; $4454: $1a
    ld l, $b2                                     ; $4455: $2e $b2
    ld [hl], a                                    ; $4457: $77
    or a                                          ; $4458: $b7
    jp z, Jump_007_4225                           ; $4459: $ca $25 $42

    ld l, $b2                                     ; $445c: $2e $b2
    ld [hl], a                                    ; $445e: $77
    push hl                                       ; $445f: $e5
    dec a                                         ; $4460: $3d
    ld hl, $4e30                                  ; $4461: $21 $30 $4e
    call Call_007_4009                            ; $4464: $cd $09 $40
    push bc                                       ; $4467: $c5
    ld c, l                                       ; $4468: $4d
    ld b, h                                       ; $4469: $44
    pop hl                                        ; $446a: $e1
    pop hl                                        ; $446b: $e1
    ld l, $b6                                     ; $446c: $2e $b6
    ld [hl], c                                    ; $446e: $71
    inc l                                         ; $446f: $2c
    ld [hl], b                                    ; $4470: $70
    xor a                                         ; $4471: $af
    ld l, $8f                                     ; $4472: $2e $8f
    ld [hl], a                                    ; $4474: $77
    jp Jump_007_4225                              ; $4475: $c3 $25 $42


    pop hl                                        ; $4478: $e1
    ld l, $85                                     ; $4479: $2e $85
    ld a, [de]                                    ; $447b: $1a
    or a                                          ; $447c: $b7
    jr z, jr_007_4491                             ; $447d: $28 $12

    set 4, [hl]                                   ; $447f: $cb $e6
    and $0f                                       ; $4481: $e6 $0f
    ld l, $bb                                     ; $4483: $2e $bb
    ld [hl], a                                    ; $4485: $77
    ld a, [de]                                    ; $4486: $1a
    swap a                                        ; $4487: $cb $37
    and $0f                                       ; $4489: $e6 $0f
    ld l, $bc                                     ; $448b: $2e $bc
    ld [hl], a                                    ; $448d: $77
    jp Jump_007_4225                              ; $448e: $c3 $25 $42


jr_007_4491:
    res 4, [hl]                                   ; $4491: $cb $a6
    jp Jump_007_4225                              ; $4493: $c3 $25 $42


    pop hl                                        ; $4496: $e1
    ld a, [de]                                    ; $4497: $1a
    ld [$d0cc], a                                 ; $4498: $ea $cc $d0
    jp Jump_007_4225                              ; $449b: $c3 $25 $42


    pop hl                                        ; $449e: $e1
    ld a, [$d0ca]                                 ; $449f: $fa $ca $d0
    cp $06                                        ; $44a2: $fe $06
    jr nz, jr_007_44aa                            ; $44a4: $20 $04

    inc de                                        ; $44a6: $13
    jp Jump_007_4225                              ; $44a7: $c3 $25 $42


jr_007_44aa:
    ld a, [de]                                    ; $44aa: $1a
    ld l, $bd                                     ; $44ab: $2e $bd
    ld [hl], a                                    ; $44ad: $77
    call Call_007_44c2                            ; $44ae: $cd $c2 $44
    ld b, a                                       ; $44b1: $47
    call Call_007_490c                            ; $44b2: $cd $0c $49
    ld a, b                                       ; $44b5: $78
    jp c, Jump_007_4225                           ; $44b6: $da $25 $42

    or c                                          ; $44b9: $b1
    ld [$d0d0], a                                 ; $44ba: $ea $d0 $d0
    ldh [rNR51], a                                ; $44bd: $e0 $25
    jp Jump_007_4225                              ; $44bf: $c3 $25 $42


Call_007_44c2:
    ld a, [$d0ca]                                 ; $44c2: $fa $ca $d0
    push hl                                       ; $44c5: $e5
    call Call_007_400f                            ; $44c6: $cd $0f $40
    cp $44                                        ; $44c9: $fe $44
    rst RST_10                                    ; $44cb: $d7
    ld b, h                                       ; $44cc: $44
    pop af                                        ; $44cd: $f1
    ld b, h                                       ; $44ce: $44
    cp $44                                        ; $44cf: $fe $44
    rst RST_10                                    ; $44d1: $d7
    ld b, h                                       ; $44d2: $44
    db $e4                                        ; $44d3: $e4
    ld b, h                                       ; $44d4: $44
    pop af                                        ; $44d5: $f1
    ld b, h                                       ; $44d6: $44
    pop hl                                        ; $44d7: $e1
    ld l, $bd                                     ; $44d8: $2e $bd
    ld a, [hl]                                    ; $44da: $7e
    and $22                                       ; $44db: $e6 $22
    ld c, a                                       ; $44dd: $4f
    ld a, [$d0d0]                                 ; $44de: $fa $d0 $d0
    and $dd                                       ; $44e1: $e6 $dd
    ret                                           ; $44e3: $c9


    pop hl                                        ; $44e4: $e1
    ld l, $bd                                     ; $44e5: $2e $bd
    ld a, [hl]                                    ; $44e7: $7e
    and $44                                       ; $44e8: $e6 $44
    ld c, a                                       ; $44ea: $4f
    ld a, [$d0d0]                                 ; $44eb: $fa $d0 $d0
    and $bb                                       ; $44ee: $e6 $bb
    ret                                           ; $44f0: $c9


    pop hl                                        ; $44f1: $e1
    ld l, $bd                                     ; $44f2: $2e $bd
    ld a, [hl]                                    ; $44f4: $7e
    and $88                                       ; $44f5: $e6 $88
    ld c, a                                       ; $44f7: $4f
    ld a, [$d0d0]                                 ; $44f8: $fa $d0 $d0
    and $77                                       ; $44fb: $e6 $77
    ret                                           ; $44fd: $c9


    pop hl                                        ; $44fe: $e1
    ld l, $bd                                     ; $44ff: $2e $bd
    ld a, [hl]                                    ; $4501: $7e
    and $11                                       ; $4502: $e6 $11
    ld c, a                                       ; $4504: $4f
    ld a, [$d0d0]                                 ; $4505: $fa $d0 $d0
    and $ee                                       ; $4508: $e6 $ee
    ret                                           ; $450a: $c9


Call_007_450b:
    ld a, [$d0ca]                                 ; $450b: $fa $ca $d0
    cp $02                                        ; $450e: $fe $02
    ret z                                         ; $4510: $c8

    ld l, $bd                                     ; $4511: $2e $bd
    ld a, [hl]                                    ; $4513: $7e
    swap a                                        ; $4514: $cb $37
    ld [hl], a                                    ; $4516: $77
    call Call_007_44c2                            ; $4517: $cd $c2 $44
    ld b, a                                       ; $451a: $47
    call Call_007_490c                            ; $451b: $cd $0c $49
    ld a, b                                       ; $451e: $78
    ret c                                         ; $451f: $d8

    or c                                          ; $4520: $b1
    ld [$d0d0], a                                 ; $4521: $ea $d0 $d0
    ldh [rNR51], a                                ; $4524: $e0 $25
    ret                                           ; $4526: $c9


Jump_007_4527:
    ld l, $86                                     ; $4527: $2e $86
    bit 4, [hl]                                   ; $4529: $cb $66
    jp nz, Jump_007_4993                          ; $452b: $c2 $93 $49

    ld a, [de]                                    ; $452e: $1a
    and $0f                                       ; $452f: $e6 $0f
    dec a                                         ; $4531: $3d
    ld l, $92                                     ; $4532: $2e $92
    ld [hl], a                                    ; $4534: $77
    jp Jump_007_4225                              ; $4535: $c3 $25 $42


Jump_007_4538:
    ld a, $00                                     ; $4538: $3e $00
    ld l, $b2                                     ; $453a: $2e $b2
    ld [hl], a                                    ; $453c: $77
    ld l, $86                                     ; $453d: $2e $86
    bit 4, [hl]                                   ; $453f: $cb $66
    jp nz, Jump_007_4993                          ; $4541: $c2 $93 $49

    inc de                                        ; $4544: $13
    ld a, [de]                                    ; $4545: $1a
    ld l, $91                                     ; $4546: $2e $91
    ld [hl], a                                    ; $4548: $77
    ld a, [$d0ca]                                 ; $4549: $fa $ca $d0
    cp $06                                        ; $454c: $fe $06
    jp z, Jump_007_4225                           ; $454e: $ca $25 $42

    inc de                                        ; $4551: $13
    cp $02                                        ; $4552: $fe $02
    jr z, jr_007_4579                             ; $4554: $28 $23

    ld a, [de]                                    ; $4556: $1a
    and $0f                                       ; $4557: $e6 $0f
    ld l, $97                                     ; $4559: $2e $97
    ld [hl], a                                    ; $455b: $77
    ld a, [de]                                    ; $455c: $1a
    swap a                                        ; $455d: $cb $37
    and $0f                                       ; $455f: $e6 $0f
    ld l, $98                                     ; $4561: $2e $98
    ld [hl], a                                    ; $4563: $77
    call Call_007_48df                            ; $4564: $cd $df $48
    inc de                                        ; $4567: $13
    ld a, [de]                                    ; $4568: $1a
    and $0f                                       ; $4569: $e6 $0f
    ld l, $99                                     ; $456b: $2e $99
    ld [hl], a                                    ; $456d: $77
    ld a, [de]                                    ; $456e: $1a
    swap a                                        ; $456f: $cb $37
    and $0f                                       ; $4571: $e6 $0f
    ld l, $9a                                     ; $4573: $2e $9a
    ld [hl], a                                    ; $4575: $77
    jp Jump_007_4225                              ; $4576: $c3 $25 $42


jr_007_4579:
    ld a, [de]                                    ; $4579: $1a
    and $0f                                       ; $457a: $e6 $0f
    ld l, $99                                     ; $457c: $2e $99
    ld [hl], a                                    ; $457e: $77
    ld a, [de]                                    ; $457f: $1a
    swap a                                        ; $4580: $cb $37
    and $0f                                       ; $4582: $e6 $0f
    ld l, $97                                     ; $4584: $2e $97
    ld [hl], a                                    ; $4586: $77
    ld a, [de]                                    ; $4587: $1a
    ld [$d0d4], a                                 ; $4588: $ea $d4 $d0
    ld a, $02                                     ; $458b: $3e $02
    ld [$d0d5], a                                 ; $458d: $ea $d5 $d0
    call Call_007_4927                            ; $4590: $cd $27 $49
    call Call_007_4950                            ; $4593: $cd $50 $49
    jp Jump_007_4225                              ; $4596: $c3 $25 $42


Jump_007_4599:
    ld l, $86                                     ; $4599: $2e $86
    bit 4, [hl]                                   ; $459b: $cb $66
    jp nz, Jump_007_4993                          ; $459d: $c2 $93 $49

    ld a, [de]                                    ; $45a0: $1a
    and $0f                                       ; $45a1: $e6 $0f
    ld l, $8b                                     ; $45a3: $2e $8b
    ld [hl], a                                    ; $45a5: $77
    ld b, a                                       ; $45a6: $47
    ld a, [$d0ca]                                 ; $45a7: $fa $ca $d0
    cp $02                                        ; $45aa: $fe $02
    jp nz, Jump_007_4225                          ; $45ac: $c2 $25 $42

    ld l, $97                                     ; $45af: $2e $97
    ld a, [hl]                                    ; $45b1: $7e
    and $0f                                       ; $45b2: $e6 $0f
    sub b                                         ; $45b4: $90
    swap a                                        ; $45b5: $cb $37
    ld l, $a1                                     ; $45b7: $2e $a1
    ld [hl], a                                    ; $45b9: $77
    ld l, $99                                     ; $45ba: $2e $99
    or [hl]                                       ; $45bc: $b6
    ld [$d0d4], a                                 ; $45bd: $ea $d4 $d0
    ld a, $02                                     ; $45c0: $3e $02
    ld [$d0d5], a                                 ; $45c2: $ea $d5 $d0
    call Call_007_4927                            ; $45c5: $cd $27 $49
    call Call_007_4950                            ; $45c8: $cd $50 $49
    jp Jump_007_4225                              ; $45cb: $c3 $25 $42


jr_007_45ce:
    ld l, $91                                     ; $45ce: $2e $91
    ld a, [hl]                                    ; $45d0: $7e
    ld l, $84                                     ; $45d1: $2e $84
    ld [hl], a                                    ; $45d3: $77
    ld a, [de]                                    ; $45d4: $1a
    ld c, a                                       ; $45d5: $4f
    ld b, $80                                     ; $45d6: $06 $80
    jp Jump_007_489d                              ; $45d8: $c3 $9d $48


Jump_007_45db:
    ld l, $86                                     ; $45db: $2e $86
    bit 4, [hl]                                   ; $45dd: $cb $66
    jp nz, Jump_007_4993                          ; $45df: $c2 $93 $49

    ld l, $85                                     ; $45e2: $2e $85
    bit 1, [hl]                                   ; $45e4: $cb $4e
    call nz, Call_007_450b                        ; $45e6: $c4 $0b $45
    call Call_007_48b7                            ; $45e9: $cd $b7 $48
    dec de                                        ; $45ec: $1b
    ld a, [$d0ca]                                 ; $45ed: $fa $ca $d0
    cp $02                                        ; $45f0: $fe $02
    jr z, jr_007_45ce                             ; $45f2: $28 $da

    ld a, [de]                                    ; $45f4: $1a
    and $0f                                       ; $45f5: $e6 $0f
    jr nz, jr_007_4602                            ; $45f7: $20 $09

    ld l, $91                                     ; $45f9: $2e $91
    ld a, [hl]                                    ; $45fb: $7e
    and $0f                                       ; $45fc: $e6 $0f
    swap a                                        ; $45fe: $cb $37
    jr jr_007_460c                                ; $4600: $18 $0a

jr_007_4602:
    or a                                          ; $4602: $b7
    ld b, a                                       ; $4603: $47
    ld l, $91                                     ; $4604: $2e $91
    ld c, [hl]                                    ; $4606: $4e
    xor a                                         ; $4607: $af

jr_007_4608:
    add c                                         ; $4608: $81
    dec b                                         ; $4609: $05
    jr nz, jr_007_4608                            ; $460a: $20 $fc

jr_007_460c:
    ld l, $84                                     ; $460c: $2e $84
    ld [hl], a                                    ; $460e: $77
    ld l, $af                                     ; $460f: $2e $af
    ld a, [hl]                                    ; $4611: $7e
    or a                                          ; $4612: $b7
    jp z, Jump_007_4620                           ; $4613: $ca $20 $46

    ld l, $86                                     ; $4616: $2e $86
    set 7, [hl]                                   ; $4618: $cb $fe
    ld l, $b0                                     ; $461a: $2e $b0
    ld a, [hl]                                    ; $461c: $7e
    ld l, $b1                                     ; $461d: $2e $b1
    ld [hl], a                                    ; $461f: $77

Jump_007_4620:
    ld a, [de]                                    ; $4620: $1a
    and $f0                                       ; $4621: $e6 $f0
    jp z, Jump_007_48be                           ; $4623: $ca $be $48

    ld a, [$d0ca]                                 ; $4626: $fa $ca $d0
    cp $06                                        ; $4629: $fe $06
    jp z, Jump_007_48d1                           ; $462b: $ca $d1 $48

    cp $05                                        ; $462e: $fe $05
    jr z, jr_007_464d                             ; $4630: $28 $1b

    ld l, $ba                                     ; $4632: $2e $ba
    ld [hl], $00                                  ; $4634: $36 $00
    ld l, $85                                     ; $4636: $2e $85
    bit 4, [hl]                                   ; $4638: $cb $66
    jp z, Jump_007_464d                           ; $463a: $ca $4d $46

    ld l, $bb                                     ; $463d: $2e $bb
    ld a, [hl]                                    ; $463f: $7e
    swap a                                        ; $4640: $cb $37
    ld [$d0d4], a                                 ; $4642: $ea $d4 $d0
    ld a, $01                                     ; $4645: $3e $01
    ld [$d0d5], a                                 ; $4647: $ea $d5 $d0
    call Call_007_4927                            ; $464a: $cd $27 $49

Jump_007_464d:
jr_007_464d:
    ld l, $9a                                     ; $464d: $2e $9a
    ld a, [hl]                                    ; $464f: $7e
    cp $0f                                        ; $4650: $fe $0f
    jr nz, jr_007_465a                            ; $4652: $20 $06

    ld l, $84                                     ; $4654: $2e $84
    ld a, [hl]                                    ; $4656: $7e
    dec a                                         ; $4657: $3d
    jr jr_007_466c                                ; $4658: $18 $12

jr_007_465a:
    push de                                       ; $465a: $d5
    ld c, a                                       ; $465b: $4f
    ld b, $04                                     ; $465c: $06 $04
    ld l, $84                                     ; $465e: $2e $84
    ld d, [hl]                                    ; $4660: $56
    xor a                                         ; $4661: $af

jr_007_4662:
    srl c                                         ; $4662: $cb $39
    jr nc, jr_007_4667                            ; $4664: $30 $01

    add d                                         ; $4666: $82

jr_007_4667:
    rra                                           ; $4667: $1f
    dec b                                         ; $4668: $05
    jr nz, jr_007_4662                            ; $4669: $20 $f7

    pop de                                        ; $466b: $d1

jr_007_466c:
    ld l, $9b                                     ; $466c: $2e $9b
    ld [hl], a                                    ; $466e: $77
    ld l, $8e                                     ; $466f: $2e $8e
    ld [hl], $00                                  ; $4671: $36 $00
    ld c, $00                                     ; $4673: $0e $00
    ld l, $92                                     ; $4675: $2e $92
    ld a, [hl]                                    ; $4677: $7e
    or a                                          ; $4678: $b7
    jr z, jr_007_4684                             ; $4679: $28 $09

    ld b, a                                       ; $467b: $47
    ld c, $0c                                     ; $467c: $0e $0c
    xor a                                         ; $467e: $af

jr_007_467f:
    add c                                         ; $467f: $81
    dec b                                         ; $4680: $05
    jr nz, jr_007_467f                            ; $4681: $20 $fc

    ld c, a                                       ; $4683: $4f

jr_007_4684:
    ld a, [de]                                    ; $4684: $1a
    and $f0                                       ; $4685: $e6 $f0
    swap a                                        ; $4687: $cb $37
    dec a                                         ; $4689: $3d
    ld l, $8a                                     ; $468a: $2e $8a
    add [hl]                                      ; $468c: $86
    add c                                         ; $468d: $81
    ld c, a                                       ; $468e: $4f
    ld b, $00                                     ; $468f: $06 $00
    sla c                                         ; $4691: $cb $21
    rl b                                          ; $4693: $cb $10
    push hl                                       ; $4695: $e5
    ld hl, $4ce6                                  ; $4696: $21 $e6 $4c
    add hl, bc                                    ; $4699: $09
    ld c, [hl]                                    ; $469a: $4e
    inc hl                                        ; $469b: $23
    ld b, [hl]                                    ; $469c: $46
    pop hl                                        ; $469d: $e1
    ld l, $93                                     ; $469e: $2e $93
    ld [hl], c                                    ; $46a0: $71
    inc l                                         ; $46a1: $2c
    ld [hl], b                                    ; $46a2: $70
    push bc                                       ; $46a3: $c5
    ld l, $89                                     ; $46a4: $2e $89
    ld a, [hl]                                    ; $46a6: $7e
    ld l, $b2                                     ; $46a7: $2e $b2
    ld b, [hl]                                    ; $46a9: $46
    or b                                          ; $46aa: $b0
    pop bc                                        ; $46ab: $c1
    jp z, Jump_007_46bc                           ; $46ac: $ca $bc $46

    xor a                                         ; $46af: $af
    ld l, $ac                                     ; $46b0: $2e $ac
    ld [hl], a                                    ; $46b2: $77
    ld l, $b8                                     ; $46b3: $2e $b8
    ld [hl], a                                    ; $46b5: $77
    call Call_007_46fb                            ; $46b6: $cd $fb $46
    call Call_007_479e                            ; $46b9: $cd $9e $47

Jump_007_46bc:
    call Call_007_486d                            ; $46bc: $cd $6d $48
    ld l, $b2                                     ; $46bf: $2e $b2
    ld a, [hl]                                    ; $46c1: $7e
    or a                                          ; $46c2: $b7
    jp z, Jump_007_47fe                           ; $46c3: $ca $fe $47

    ld l, $b5                                     ; $46c6: $2e $b5
    ld a, [hl]                                    ; $46c8: $7e
    ld l, $97                                     ; $46c9: $2e $97
    ld [hl], a                                    ; $46cb: $77
    jp Jump_007_47fe                              ; $46cc: $c3 $fe $47


Call_007_46cf:
    ld l, $89                                     ; $46cf: $2e $89
    ld a, [hl]                                    ; $46d1: $7e
    or a                                          ; $46d2: $b7
    ret z                                         ; $46d3: $c8

    ld l, $af                                     ; $46d4: $2e $af
    ld a, [hl]                                    ; $46d6: $7e
    or a                                          ; $46d7: $b7
    jp z, Jump_007_46e7                           ; $46d8: $ca $e7 $46

    ld l, $b1                                     ; $46db: $2e $b1
    ld a, [hl]                                    ; $46dd: $7e
    cp $00                                        ; $46de: $fe $00
    jp z, Jump_007_46e7                           ; $46e0: $ca $e7 $46

    ld l, $b1                                     ; $46e3: $2e $b1
    dec [hl]                                      ; $46e5: $35
    ret nz                                        ; $46e6: $c0

Jump_007_46e7:
    ld l, $86                                     ; $46e7: $2e $86
    res 7, [hl]                                   ; $46e9: $cb $be
    ld l, $9c                                     ; $46eb: $2e $9c
    dec [hl]                                      ; $46ed: $35
    ret nz                                        ; $46ee: $c0

    ld l, $9d                                     ; $46ef: $2e $9d
    ld a, [hl]                                    ; $46f1: $7e
    ld l, $9c                                     ; $46f2: $2e $9c
    ld [hl], a                                    ; $46f4: $77
    call Call_007_46fb                            ; $46f5: $cd $fb $46
    jp Jump_007_486d                              ; $46f8: $c3 $6d $48


Call_007_46fb:
Jump_007_46fb:
    ld l, $89                                     ; $46fb: $2e $89
    ld a, [hl]                                    ; $46fd: $7e
    or a                                          ; $46fe: $b7
    ret z                                         ; $46ff: $c8

    ld l, $aa                                     ; $4700: $2e $aa
    ld c, [hl]                                    ; $4702: $4e
    inc l                                         ; $4703: $2c
    ld b, [hl]                                    ; $4704: $46
    inc l                                         ; $4705: $2c
    ld a, [hl]                                    ; $4706: $7e
    add c                                         ; $4707: $81
    ld c, a                                       ; $4708: $4f
    jp nc, Jump_007_470d                          ; $4709: $d2 $0d $47

    inc b                                         ; $470c: $04

Jump_007_470d:
jr_007_470d:
    ld a, [bc]                                    ; $470d: $0a
    cp $fb                                        ; $470e: $fe $fb
    jr z, jr_007_4758                             ; $4710: $28 $46

    cp $fe                                        ; $4712: $fe $fe
    jr z, jr_007_4762                             ; $4714: $28 $4c

    cp $ff                                        ; $4716: $fe $ff
    jr z, jr_007_4780                             ; $4718: $28 $66

    swap a                                        ; $471a: $cb $37
    and $0f                                       ; $471c: $e6 $0f
    ld l, $9c                                     ; $471e: $2e $9c
    ld [hl], a                                    ; $4720: $77
    ld l, $9d                                     ; $4721: $2e $9d
    ld [hl], a                                    ; $4723: $77
    ld a, [bc]                                    ; $4724: $0a
    bit 3, a                                      ; $4725: $cb $5f
    jp z, Jump_007_4731                           ; $4727: $ca $31 $47

    ld l, $85                                     ; $472a: $2e $85
    set 3, [hl]                                   ; $472c: $cb $de
    jp Jump_007_4735                              ; $472e: $c3 $35 $47


Jump_007_4731:
    ld l, $85                                     ; $4731: $2e $85
    res 3, [hl]                                   ; $4733: $cb $9e

Jump_007_4735:
    ld a, [bc]                                    ; $4735: $0a
    and $07                                       ; $4736: $e6 $07
    ld l, $8c                                     ; $4738: $2e $8c
    ld [hl], a                                    ; $473a: $77
    ld l, $ae                                     ; $473b: $2e $ae
    ld a, [hl]                                    ; $473d: $7e
    or a                                          ; $473e: $b7
    jp z, Jump_007_4754                           ; $473f: $ca $54 $47

    push bc                                       ; $4742: $c5
    xor a                                         ; $4743: $af
    ld c, a                                       ; $4744: $4f
    ld l, $8c                                     ; $4745: $2e $8c
    ld c, [hl]                                    ; $4747: $4e
    ld l, $ae                                     ; $4748: $2e $ae
    ld b, [hl]                                    ; $474a: $46

Jump_007_474b:
    add c                                         ; $474b: $81
    dec b                                         ; $474c: $05
    jp nz, Jump_007_474b                          ; $474d: $c2 $4b $47

    pop bc                                        ; $4750: $c1
    ld l, $8c                                     ; $4751: $2e $8c
    ld [hl], a                                    ; $4753: $77

Jump_007_4754:
    ld l, $ac                                     ; $4754: $2e $ac
    inc [hl]                                      ; $4756: $34
    ret                                           ; $4757: $c9


jr_007_4758:
    ld l, $ac                                     ; $4758: $2e $ac
    inc [hl]                                      ; $475a: $34
    ld a, [hl]                                    ; $475b: $7e
    ld l, $ad                                     ; $475c: $2e $ad
    ld [hl], a                                    ; $475e: $77
    inc bc                                        ; $475f: $03
    jr jr_007_470d                                ; $4760: $18 $ab

jr_007_4762:
    inc bc                                        ; $4762: $03
    ld a, [bc]                                    ; $4763: $0a
    ld l, $8e                                     ; $4764: $2e $8e
    cp [hl]                                       ; $4766: $be
    jr z, jr_007_4777                             ; $4767: $28 $0e

    cp $ff                                        ; $4769: $fe $ff
    jr z, jr_007_476e                             ; $476b: $28 $01

    inc [hl]                                      ; $476d: $34

jr_007_476e:
    ld l, $ad                                     ; $476e: $2e $ad
    ld a, [hl]                                    ; $4770: $7e
    ld l, $ac                                     ; $4771: $2e $ac
    ld [hl], a                                    ; $4773: $77
    jp Jump_007_46fb                              ; $4774: $c3 $fb $46


jr_007_4777:
    xor a                                         ; $4777: $af
    ld [hl], a                                    ; $4778: $77
    ld l, $ac                                     ; $4779: $2e $ac
    inc [hl]                                      ; $477b: $34
    inc bc                                        ; $477c: $03
    jp Jump_007_470d                              ; $477d: $c3 $0d $47


jr_007_4780:
    ret                                           ; $4780: $c9


Call_007_4781:
    ld l, $b2                                     ; $4781: $2e $b2
    ld a, [hl]                                    ; $4783: $7e
    or a                                          ; $4784: $b7
    ret z                                         ; $4785: $c8

    ld l, $b3                                     ; $4786: $2e $b3
    dec [hl]                                      ; $4788: $35
    ret nz                                        ; $4789: $c0

    ld l, $b4                                     ; $478a: $2e $b4
    ld a, [hl]                                    ; $478c: $7e
    ld l, $b3                                     ; $478d: $2e $b3
    ld [hl], a                                    ; $478f: $77
    ld l, $86                                     ; $4790: $2e $86
    res 1, [hl]                                   ; $4792: $cb $8e
    ld l, $86                                     ; $4794: $2e $86
    set 0, [hl]                                   ; $4796: $cb $c6
    call Call_007_479e                            ; $4798: $cd $9e $47
    jp Jump_007_486d                              ; $479b: $c3 $6d $48


Call_007_479e:
Jump_007_479e:
    ld l, $b2                                     ; $479e: $2e $b2
    ld a, [hl]                                    ; $47a0: $7e
    or a                                          ; $47a1: $b7
    ret z                                         ; $47a2: $c8

    ld l, $b6                                     ; $47a3: $2e $b6
    ld c, [hl]                                    ; $47a5: $4e
    inc l                                         ; $47a6: $2c
    ld b, [hl]                                    ; $47a7: $46
    inc l                                         ; $47a8: $2c
    ld a, [hl]                                    ; $47a9: $7e
    add c                                         ; $47aa: $81
    ld c, a                                       ; $47ab: $4f
    jp nc, Jump_007_47b0                          ; $47ac: $d2 $b0 $47

    inc b                                         ; $47af: $04

Jump_007_47b0:
jr_007_47b0:
    ld a, [bc]                                    ; $47b0: $0a
    cp $fb                                        ; $47b1: $fe $fb
    jr z, jr_007_47d1                             ; $47b3: $28 $1c

    cp $fe                                        ; $47b5: $fe $fe
    jr z, jr_007_47db                             ; $47b7: $28 $22

    cp $ff                                        ; $47b9: $fe $ff
    jr z, jr_007_47f9                             ; $47bb: $28 $3c

    swap a                                        ; $47bd: $cb $37
    and $0f                                       ; $47bf: $e6 $0f
    ld l, $b3                                     ; $47c1: $2e $b3
    ld [hl], a                                    ; $47c3: $77
    ld l, $b4                                     ; $47c4: $2e $b4
    ld [hl], a                                    ; $47c6: $77
    ld a, [bc]                                    ; $47c7: $0a
    and $0f                                       ; $47c8: $e6 $0f
    ld l, $b5                                     ; $47ca: $2e $b5
    ld [hl], a                                    ; $47cc: $77
    ld l, $b8                                     ; $47cd: $2e $b8
    inc [hl]                                      ; $47cf: $34
    ret                                           ; $47d0: $c9


jr_007_47d1:
    ld l, $b8                                     ; $47d1: $2e $b8
    inc [hl]                                      ; $47d3: $34
    ld a, [hl]                                    ; $47d4: $7e
    ld l, $b9                                     ; $47d5: $2e $b9
    ld [hl], a                                    ; $47d7: $77
    inc bc                                        ; $47d8: $03
    jr jr_007_47b0                                ; $47d9: $18 $d5

jr_007_47db:
    inc bc                                        ; $47db: $03
    ld a, [bc]                                    ; $47dc: $0a
    ld l, $8f                                     ; $47dd: $2e $8f
    cp [hl]                                       ; $47df: $be
    jr z, jr_007_47f0                             ; $47e0: $28 $0e

    cp $ff                                        ; $47e2: $fe $ff
    jr z, jr_007_47e7                             ; $47e4: $28 $01

    inc [hl]                                      ; $47e6: $34

jr_007_47e7:
    ld l, $b9                                     ; $47e7: $2e $b9
    ld a, [hl]                                    ; $47e9: $7e
    ld l, $b8                                     ; $47ea: $2e $b8
    ld [hl], a                                    ; $47ec: $77
    jp Jump_007_479e                              ; $47ed: $c3 $9e $47


jr_007_47f0:
    xor a                                         ; $47f0: $af
    ld [hl], a                                    ; $47f1: $77
    ld l, $b8                                     ; $47f2: $2e $b8
    inc [hl]                                      ; $47f4: $34
    inc bc                                        ; $47f5: $03
    jp Jump_007_47b0                              ; $47f6: $c3 $b0 $47


jr_007_47f9:
    ld l, $86                                     ; $47f9: $2e $86
    set 1, [hl]                                   ; $47fb: $cb $ce
    ret                                           ; $47fd: $c9


Jump_007_47fe:
    call Call_007_480f                            ; $47fe: $cd $0f $48
    ld [$d0d4], a                                 ; $4801: $ea $d4 $d0
    ld a, $02                                     ; $4804: $3e $02
    ld [$d0d5], a                                 ; $4806: $ea $d5 $d0
    call Call_007_4927                            ; $4809: $cd $27 $49
    jp Jump_007_4950                              ; $480c: $c3 $50 $49


Call_007_480f:
    ld l, $85                                     ; $480f: $2e $85
    res 6, [hl]                                   ; $4811: $cb $b6
    ld a, [$d0ca]                                 ; $4813: $fa $ca $d0
    cp $05                                        ; $4816: $fe $05
    jr z, jr_007_483e                             ; $4818: $28 $24

    ld a, [$d0ca]                                 ; $481a: $fa $ca $d0
    cp $00                                        ; $481d: $fe $00
    ld l, $8b                                     ; $481f: $2e $8b
    ld c, [hl]                                    ; $4821: $4e
    jp z, Jump_007_482f                           ; $4822: $ca $2f $48

    cp $01                                        ; $4825: $fe $01
    jp z, Jump_007_482f                           ; $4827: $ca $2f $48

    ld a, [$d0db]                                 ; $482a: $fa $db $d0
    add c                                         ; $482d: $81
    ld c, a                                       ; $482e: $4f

Jump_007_482f:
    ld l, $97                                     ; $482f: $2e $97
    ld a, [hl]                                    ; $4831: $7e
    and $0f                                       ; $4832: $e6 $0f
    sub c                                         ; $4834: $91
    jr nc, jr_007_4838                            ; $4835: $30 $01

    xor a                                         ; $4837: $af

jr_007_4838:
    swap a                                        ; $4838: $cb $37
    ld l, $a1                                     ; $483a: $2e $a1
    ld [hl], a                                    ; $483c: $77
    ret                                           ; $483d: $c9


jr_007_483e:
    ld a, $80                                     ; $483e: $3e $80
    ld [$d1d0], a                                 ; $4840: $ea $d0 $d1
    ldh [rNR30], a                                ; $4843: $e0 $1a
    ld l, $99                                     ; $4845: $2e $99
    ld a, [hl]                                    ; $4847: $7e
    ld l, $9e                                     ; $4848: $2e $9e
    ld [hl], a                                    ; $484a: $77
    ld l, $9f                                     ; $484b: $2e $9f
    ld [hl], a                                    ; $484d: $77
    ld a, [$d0db]                                 ; $484e: $fa $db $d0
    srl a                                         ; $4851: $cb $3f
    ld l, $8b                                     ; $4853: $2e $8b
    ld c, [hl]                                    ; $4855: $4e
    add c                                         ; $4856: $81
    ld c, a                                       ; $4857: $4f
    ld l, $97                                     ; $4858: $2e $97
    ld a, [hl]                                    ; $485a: $7e
    and $0f                                       ; $485b: $e6 $0f
    rra                                           ; $485d: $1f
    and $03                                       ; $485e: $e6 $03
    add c                                         ; $4860: $81
    cp $04                                        ; $4861: $fe $04
    jr c, jr_007_4866                             ; $4863: $38 $01

    xor a                                         ; $4865: $af

jr_007_4866:
    ld l, $a1                                     ; $4866: $2e $a1
    ld [hl], a                                    ; $4868: $77
    swap a                                        ; $4869: $cb $37
    rla                                           ; $486b: $17
    ret                                           ; $486c: $c9


Call_007_486d:
Jump_007_486d:
    ld l, $86                                     ; $486d: $2e $86
    bit 7, [hl]                                   ; $486f: $cb $7e
    jp nz, Jump_007_487c                          ; $4871: $c2 $7c $48

    ld l, $8c                                     ; $4874: $2e $8c
    ld c, [hl]                                    ; $4876: $4e
    inc l                                         ; $4877: $2c
    ld b, [hl]                                    ; $4878: $46
    jp Jump_007_4880                              ; $4879: $c3 $80 $48


Jump_007_487c:
    ld a, $00                                     ; $487c: $3e $00
    ld c, a                                       ; $487e: $4f
    ld b, a                                       ; $487f: $47

Jump_007_4880:
    ld l, $93                                     ; $4880: $2e $93
    ld e, [hl]                                    ; $4882: $5e
    inc l                                         ; $4883: $2c
    ld d, [hl]                                    ; $4884: $56
    ld l, $85                                     ; $4885: $2e $85
    bit 3, [hl]                                   ; $4887: $cb $5e
    push hl                                       ; $4889: $e5
    jr z, jr_007_4893                             ; $488a: $28 $07

    xor a                                         ; $488c: $af
    sub c                                         ; $488d: $91
    ld c, a                                       ; $488e: $4f
    ld a, $00                                     ; $488f: $3e $00
    sbc b                                         ; $4891: $98
    ld b, a                                       ; $4892: $47

jr_007_4893:
    push de                                       ; $4893: $d5
    ld e, l                                       ; $4894: $5d
    ld d, h                                       ; $4895: $54
    pop hl                                        ; $4896: $e1
    add hl, bc                                    ; $4897: $09
    push bc                                       ; $4898: $c5
    ld c, l                                       ; $4899: $4d
    ld b, h                                       ; $489a: $44
    pop hl                                        ; $489b: $e1
    pop hl                                        ; $489c: $e1

Call_007_489d:
Jump_007_489d:
    push bc                                       ; $489d: $c5
    ld a, c                                       ; $489e: $79
    ld [$d0d4], a                                 ; $489f: $ea $d4 $d0
    ld a, $03                                     ; $48a2: $3e $03
    ld [$d0d5], a                                 ; $48a4: $ea $d5 $d0
    call Call_007_4927                            ; $48a7: $cd $27 $49
    pop bc                                        ; $48aa: $c1
    ld a, b                                       ; $48ab: $78
    ld [$d0d4], a                                 ; $48ac: $ea $d4 $d0
    ld a, $04                                     ; $48af: $3e $04
    ld [$d0d5], a                                 ; $48b1: $ea $d5 $d0
    jp Jump_007_4927                              ; $48b4: $c3 $27 $49


Call_007_48b7:
    inc de                                        ; $48b7: $13
    ld l, $82                                     ; $48b8: $2e $82
    ld [hl], e                                    ; $48ba: $73
    inc l                                         ; $48bb: $2c
    ld [hl], d                                    ; $48bc: $72
    ret                                           ; $48bd: $c9


Jump_007_48be:
    ld l, $85                                     ; $48be: $2e $85
    ld a, $c0                                     ; $48c0: $3e $c0
    or [hl]                                       ; $48c2: $b6
    ld [hl], a                                    ; $48c3: $77
    ld a, $00                                     ; $48c4: $3e $00
    ld [$d0d4], a                                 ; $48c6: $ea $d4 $d0
    ld a, $02                                     ; $48c9: $3e $02
    ld [$d0d5], a                                 ; $48cb: $ea $d5 $d0
    jp Jump_007_4927                              ; $48ce: $c3 $27 $49


Jump_007_48d1:
    ld a, [de]                                    ; $48d1: $1a
    and $f0                                       ; $48d2: $e6 $f0
    swap a                                        ; $48d4: $cb $37
    dec a                                         ; $48d6: $3d
    ld hl, $531c                                  ; $48d7: $21 $1c $53
    rst RST_28                                    ; $48da: $ef
    ld a, [hl]                                    ; $48db: $7e
    jp Jump_007_4acf                              ; $48dc: $c3 $cf $4a


Call_007_48df:
    ld a, [$d0cb]                                 ; $48df: $fa $cb $d0
    cp $0a                                        ; $48e2: $fe $0a
    ld l, $98                                     ; $48e4: $2e $98
    ld a, [hl]                                    ; $48e6: $7e
    jr z, jr_007_48f6                             ; $48e7: $28 $0d

    swap a                                        ; $48e9: $cb $37
    ld [$d0d4], a                                 ; $48eb: $ea $d4 $d0
    ld a, $01                                     ; $48ee: $3e $01
    ld [$d0d5], a                                 ; $48f0: $ea $d5 $d0
    jp Jump_007_4927                              ; $48f3: $c3 $27 $49


jr_007_48f6:
    push de                                       ; $48f6: $d5
    push hl                                       ; $48f7: $e5
    ld hl, $4d90                                  ; $48f8: $21 $90 $4d
    call Call_007_4009                            ; $48fb: $cd $09 $40
    ld b, $10                                     ; $48fe: $06 $10
    ld de, $ff30                                  ; $4900: $11 $30 $ff

jr_007_4903:
    ld a, [hl+]                                   ; $4903: $2a
    ld [de], a                                    ; $4904: $12
    inc e                                         ; $4905: $1c
    dec b                                         ; $4906: $05
    jr nz, jr_007_4903                            ; $4907: $20 $fa

    pop hl                                        ; $4909: $e1
    pop de                                        ; $490a: $d1
    ret                                           ; $490b: $c9


Call_007_490c:
    ld a, [$d0ca]                                 ; $490c: $fa $ca $d0
    cp $03                                        ; $490f: $fe $03
    jr nz, jr_007_491a                            ; $4911: $20 $07

    ld a, [$d080]                                 ; $4913: $fa $80 $d0
    or a                                          ; $4916: $b7
    ret z                                         ; $4917: $c8

    jr jr_007_4923                                ; $4918: $18 $09

jr_007_491a:
    cp $04                                        ; $491a: $fe $04
    jr nz, jr_007_4925                            ; $491c: $20 $07

    ld a, [$d180]                                 ; $491e: $fa $80 $d1
    or a                                          ; $4921: $b7
    ret z                                         ; $4922: $c8

jr_007_4923:
    scf                                           ; $4923: $37
    ret                                           ; $4924: $c9


jr_007_4925:
    or a                                          ; $4925: $b7
    ret                                           ; $4926: $c9


Call_007_4927:
Jump_007_4927:
    call Call_007_490c                            ; $4927: $cd $0c $49
    ret c                                         ; $492a: $d8

    push de                                       ; $492b: $d5
    call Call_007_4969                            ; $492c: $cd $69 $49
    ld a, [$d0d4]                                 ; $492f: $fa $d4 $d0
    ld c, a                                       ; $4932: $4f
    push hl                                       ; $4933: $e5
    ld a, [$d0ca]                                 ; $4934: $fa $ca $d0
    add $d0                                       ; $4937: $c6 $d0
    ld h, a                                       ; $4939: $67
    ld l, $85                                     ; $493a: $2e $85
    bit 6, [hl]                                   ; $493c: $cb $76
    pop hl                                        ; $493e: $e1
    jr nz, jr_007_4945                            ; $493f: $20 $04

    ld a, [hl]                                    ; $4941: $7e
    cp c                                          ; $4942: $b9
    jr z, jr_007_4948                             ; $4943: $28 $03

jr_007_4945:
    ld a, c                                       ; $4945: $79
    ld [hl], a                                    ; $4946: $77
    ld [de], a                                    ; $4947: $12

jr_007_4948:
    pop de                                        ; $4948: $d1
    ld a, [$d0ca]                                 ; $4949: $fa $ca $d0
    add $d0                                       ; $494c: $c6 $d0
    ld h, a                                       ; $494e: $67
    ret                                           ; $494f: $c9


Call_007_4950:
Jump_007_4950:
    call Call_007_490c                            ; $4950: $cd $0c $49
    ret c                                         ; $4953: $d8

    push de                                       ; $4954: $d5
    ld a, $04                                     ; $4955: $3e $04
    ld [$d0d5], a                                 ; $4957: $ea $d5 $d0
    call Call_007_4969                            ; $495a: $cd $69 $49
    ld a, [hl]                                    ; $495d: $7e
    or $80                                        ; $495e: $f6 $80
    ld [de], a                                    ; $4960: $12
    pop de                                        ; $4961: $d1
    ld a, [$d0ca]                                 ; $4962: $fa $ca $d0
    add $d0                                       ; $4965: $c6 $d0
    ld h, a                                       ; $4967: $67
    ret                                           ; $4968: $c9


Call_007_4969:
    ld a, [$d0d5]                                 ; $4969: $fa $d5 $d0
    ld c, a                                       ; $496c: $4f
    ld a, [$d0cb]                                 ; $496d: $fa $cb $d0
    add c                                         ; $4970: $81
    ld c, a                                       ; $4971: $4f
    ld b, $00                                     ; $4972: $06 $00
    ld hl, $ff10                                  ; $4974: $21 $10 $ff
    ld de, $d1c6                                  ; $4977: $11 $c6 $d1
    add hl, bc                                    ; $497a: $09
    push de                                       ; $497b: $d5
    ld e, l                                       ; $497c: $5d
    ld d, h                                       ; $497d: $54
    pop hl                                        ; $497e: $e1
    add hl, bc                                    ; $497f: $09
    ret                                           ; $4980: $c9


Call_007_4981:
    ld a, [$d0ca]                                 ; $4981: $fa $ca $d0
    push hl                                       ; $4984: $e5
    ld hl, $498c                                  ; $4985: $21 $8c $49
    rst RST_28                                    ; $4988: $ef
    ld a, [hl]                                    ; $4989: $7e
    pop hl                                        ; $498a: $e1
    ret                                           ; $498b: $c9


    nop                                           ; $498c: $00
    dec b                                         ; $498d: $05
    rrca                                          ; $498e: $0f
    nop                                           ; $498f: $00
    dec b                                         ; $4990: $05
    ld a, [bc]                                    ; $4991: $0a
    rrca                                          ; $4992: $0f

Jump_007_4993:
    ld l, $9b                                     ; $4993: $2e $9b
    xor a                                         ; $4995: $af
    ld [hl], a                                    ; $4996: $77
    ld a, [de]                                    ; $4997: $1a
    cp $e1                                        ; $4998: $fe $e1
    jr nz, jr_007_49b9                            ; $499a: $20 $1d

    inc de                                        ; $499c: $13
    ld a, [de]                                    ; $499d: $1a
    ld l, $91                                     ; $499e: $2e $91
    ld [hl], a                                    ; $49a0: $77
    inc de                                        ; $49a1: $13
    ld a, [de]                                    ; $49a2: $1a
    and $0f                                       ; $49a3: $e6 $0f
    ld l, $98                                     ; $49a5: $2e $98
    ld [hl], a                                    ; $49a7: $77
    call Call_007_48df                            ; $49a8: $cd $df $48
    inc de                                        ; $49ab: $13
    ld a, [de]                                    ; $49ac: $1a
    ld [$d0d4], a                                 ; $49ad: $ea $d4 $d0
    ld a, $00                                     ; $49b0: $3e $00
    ld [$d0d5], a                                 ; $49b2: $ea $d5 $d0
    call Call_007_4927                            ; $49b5: $cd $27 $49
    inc de                                        ; $49b8: $13

jr_007_49b9:
    ld a, [de]                                    ; $49b9: $1a
    or a                                          ; $49ba: $b7
    jp z, Jump_007_4a4d                           ; $49bb: $ca $4d $4a

    ld a, [de]                                    ; $49be: $1a
    cp $e7                                        ; $49bf: $fe $e7
    jr c, jr_007_49e6                             ; $49c1: $38 $23

    cp $fb                                        ; $49c3: $fe $fb
    jp nc, Jump_007_4226                          ; $49c5: $d2 $26 $42

    cp $f0                                        ; $49c8: $fe $f0
    jr nc, jr_007_49e6                            ; $49ca: $30 $1a

    ld a, [de]                                    ; $49cc: $1a
    inc de                                        ; $49cd: $13
    sub $e7                                       ; $49ce: $d6 $e7
    push hl                                       ; $49d0: $e5
    call Call_007_400f                            ; $49d1: $cd $0f $40
    ld a, e                                       ; $49d4: $7b
    ld b, e                                       ; $49d5: $43
    and $49                                       ; $49d6: $e6 $49
    sub l                                         ; $49d8: $95
    ld b, e                                       ; $49d9: $43
    xor b                                         ; $49da: $a8
    ld b, e                                       ; $49db: $43
    ld l, d                                       ; $49dc: $6a
    ld c, d                                       ; $49dd: $4a
    add d                                         ; $49de: $82
    ld c, d                                       ; $49df: $4a
    and $49                                       ; $49e0: $e6 $49
    sub [hl]                                      ; $49e2: $96
    ld b, h                                       ; $49e3: $44
    sbc [hl]                                      ; $49e4: $9e
    ld b, h                                       ; $49e5: $44

jr_007_49e6:
    ld l, $bd                                     ; $49e6: $2e $bd
    ld a, [hl]                                    ; $49e8: $7e
    call Call_007_44c2                            ; $49e9: $cd $c2 $44
    or c                                          ; $49ec: $b1
    ld [$d0d0], a                                 ; $49ed: $ea $d0 $d0
    ldh [rNR51], a                                ; $49f0: $e0 $25
    ld l, $91                                     ; $49f2: $2e $91
    ld a, [hl]                                    ; $49f4: $7e
    ld l, $84                                     ; $49f5: $2e $84
    ld [hl], a                                    ; $49f7: $77
    ld a, [de]                                    ; $49f8: $1a
    and $f0                                       ; $49f9: $e6 $f0
    ld l, $97                                     ; $49fb: $2e $97
    ld [hl], a                                    ; $49fd: $77
    ld a, [de]                                    ; $49fe: $1a
    and $0f                                       ; $49ff: $e6 $0f
    ld l, $96                                     ; $4a01: $2e $96
    ld [hl], a                                    ; $4a03: $77
    ld b, a                                       ; $4a04: $47
    inc de                                        ; $4a05: $13
    ld a, [de]                                    ; $4a06: $1a
    ld l, $95                                     ; $4a07: $2e $95
    ld [hl], a                                    ; $4a09: $77
    ld c, a                                       ; $4a0a: $4f
    push hl                                       ; $4a0b: $e5
    ld l, $c5                                     ; $4a0c: $2e $c5
    bit 1, [hl]                                   ; $4a0e: $cb $4e
    ld l, $c3                                     ; $4a10: $2e $c3
    ld a, [hl]                                    ; $4a12: $7e
    inc hl                                        ; $4a13: $23
    ld h, [hl]                                    ; $4a14: $66
    ld l, a                                       ; $4a15: $6f
    jp z, Jump_007_4a1e                           ; $4a16: $ca $1e $4a

    cpl                                           ; $4a19: $2f
    ld l, a                                       ; $4a1a: $6f
    ld a, h                                       ; $4a1b: $7c
    cpl                                           ; $4a1c: $2f
    ld h, a                                       ; $4a1d: $67

Jump_007_4a1e:
    add hl, bc                                    ; $4a1e: $09
    ld b, h                                       ; $4a1f: $44
    ld c, l                                       ; $4a20: $4d
    pop hl                                        ; $4a21: $e1
    call Call_007_489d                            ; $4a22: $cd $9d $48
    call Call_007_48b7                            ; $4a25: $cd $b7 $48
    dec de                                        ; $4a28: $1b
    ld l, $97                                     ; $4a29: $2e $97
    ld c, [hl]                                    ; $4a2b: $4e
    ld l, $c2                                     ; $4a2c: $2e $c2
    ld a, [hl]                                    ; $4a2e: $7e
    swap a                                        ; $4a2f: $cb $37
    ld l, $c5                                     ; $4a31: $2e $c5
    bit 0, [hl]                                   ; $4a33: $cb $46
    ld b, a                                       ; $4a35: $47
    ld a, c                                       ; $4a36: $79
    jp z, Jump_007_4a3e                           ; $4a37: $ca $3e $4a

    sub b                                         ; $4a3a: $90
    jp Jump_007_4a3f                              ; $4a3b: $c3 $3f $4a


Jump_007_4a3e:
    add b                                         ; $4a3e: $80

Jump_007_4a3f:
    ld [$d0d4], a                                 ; $4a3f: $ea $d4 $d0
    ld a, $02                                     ; $4a42: $3e $02
    ld [$d0d5], a                                 ; $4a44: $ea $d5 $d0
    call Call_007_4927                            ; $4a47: $cd $27 $49
    jp Jump_007_4950                              ; $4a4a: $c3 $50 $49


Jump_007_4a4d:
    call Call_007_48b7                            ; $4a4d: $cd $b7 $48
    dec de                                        ; $4a50: $1b
    ld l, $85                                     ; $4a51: $2e $85
    ld a, $80                                     ; $4a53: $3e $80
    ld [hl], a                                    ; $4a55: $77
    ld l, $91                                     ; $4a56: $2e $91
    ld a, [hl]                                    ; $4a58: $7e
    ld l, $84                                     ; $4a59: $2e $84
    ld [hl], a                                    ; $4a5b: $77
    ld a, $00                                     ; $4a5c: $3e $00
    ld [$d0d4], a                                 ; $4a5e: $ea $d4 $d0
    ld a, $02                                     ; $4a61: $3e $02
    ld [$d0d5], a                                 ; $4a63: $ea $d5 $d0
    call Call_007_4927                            ; $4a66: $cd $27 $49
    ret                                           ; $4a69: $c9


    pop hl                                        ; $4a6a: $e1
    ld l, $bf                                     ; $4a6b: $2e $bf
    xor a                                         ; $4a6d: $af
    ld [hl], a                                    ; $4a6e: $77
    ld l, $c2                                     ; $4a6f: $2e $c2
    ld [hl], a                                    ; $4a71: $77
    ld l, $c3                                     ; $4a72: $2e $c3
    ld [hl], a                                    ; $4a74: $77
    inc l                                         ; $4a75: $2c
    ld [hl], a                                    ; $4a76: $77
    ld l, $c5                                     ; $4a77: $2e $c5
    ld [hl], a                                    ; $4a79: $77
    ld l, $c0                                     ; $4a7a: $2e $c0
    ld [hl], e                                    ; $4a7c: $73
    inc l                                         ; $4a7d: $2c
    ld [hl], d                                    ; $4a7e: $72
    jp Jump_007_4226                              ; $4a7f: $c3 $26 $42


    pop hl                                        ; $4a82: $e1
    ld a, [de]                                    ; $4a83: $1a
    ld l, $bf                                     ; $4a84: $2e $bf
    inc [hl]                                      ; $4a86: $34
    cp [hl]                                       ; $4a87: $be
    jr z, jr_007_4abd                             ; $4a88: $28 $33

    inc de                                        ; $4a8a: $13
    ld l, $c5                                     ; $4a8b: $2e $c5
    ld a, [de]                                    ; $4a8d: $1a
    bit 7, a                                      ; $4a8e: $cb $7f
    res 0, [hl]                                   ; $4a90: $cb $86
    jp z, Jump_007_4a97                           ; $4a92: $ca $97 $4a

    set 0, [hl]                                   ; $4a95: $cb $c6

Jump_007_4a97:
    and $0f                                       ; $4a97: $e6 $0f
    ld l, $c2                                     ; $4a99: $2e $c2
    add [hl]                                      ; $4a9b: $86
    ld [hl], a                                    ; $4a9c: $77
    inc de                                        ; $4a9d: $13
    ld l, $c5                                     ; $4a9e: $2e $c5
    ld a, [de]                                    ; $4aa0: $1a
    bit 7, a                                      ; $4aa1: $cb $7f
    res 1, [hl]                                   ; $4aa3: $cb $8e
    jp z, Jump_007_4aaa                           ; $4aa5: $ca $aa $4a

    set 1, [hl]                                   ; $4aa8: $cb $ce

Jump_007_4aaa:
    and $7f                                       ; $4aaa: $e6 $7f
    ld l, $c3                                     ; $4aac: $2e $c3
    add [hl]                                      ; $4aae: $86
    ld [hl], a                                    ; $4aaf: $77
    ld a, $00                                     ; $4ab0: $3e $00
    inc l                                         ; $4ab2: $2c
    adc [hl]                                      ; $4ab3: $8e
    ld [hl], a                                    ; $4ab4: $77
    ld l, $c0                                     ; $4ab5: $2e $c0
    ld e, [hl]                                    ; $4ab7: $5e
    inc l                                         ; $4ab8: $2c
    ld d, [hl]                                    ; $4ab9: $56
    jp Jump_007_4226                              ; $4aba: $c3 $26 $42


jr_007_4abd:
    xor a                                         ; $4abd: $af
    ld l, $c2                                     ; $4abe: $2e $c2
    ld [hl], a                                    ; $4ac0: $77
    ld l, $c3                                     ; $4ac1: $2e $c3
    ld [hl], a                                    ; $4ac3: $77
    inc l                                         ; $4ac4: $2c
    ld [hl], a                                    ; $4ac5: $77
    inc de                                        ; $4ac6: $13
    inc de                                        ; $4ac7: $13
    jp Jump_007_4225                              ; $4ac8: $c3 $25 $42


    ld [$c03d], a                                 ; $4acb: $ea $3d $c0
    ret                                           ; $4ace: $c9


Jump_007_4acf:
    ld [$d0d2], a                                 ; $4acf: $ea $d2 $d0
    or a                                          ; $4ad2: $b7
    jp z, Jump_007_4c18                           ; $4ad3: $ca $18 $4c

    ld hl, $4fb0                                  ; $4ad6: $21 $b0 $4f
    call Call_007_4009                            ; $4ad9: $cd $09 $40
    ld a, [hl+]                                   ; $4adc: $2a
    ld [$d0d3], a                                 ; $4add: $ea $d3 $d0
    ld a, [hl+]                                   ; $4ae0: $2a
    ld d, h                                       ; $4ae1: $54
    ld e, l                                       ; $4ae2: $5d
    rra                                           ; $4ae3: $1f
    call c, Call_007_4b83                         ; $4ae4: $dc $83 $4b
    ld b, a                                       ; $4ae7: $47
    ld a, [$d0dc]                                 ; $4ae8: $fa $dc $d0
    or a                                          ; $4aeb: $b7
    jr nz, jr_007_4b15                            ; $4aec: $20 $27

    ld a, b                                       ; $4aee: $78
    rra                                           ; $4aef: $1f
    call c, Call_007_4b75                         ; $4af0: $dc $75 $4b
    rra                                           ; $4af3: $1f
    call c, Call_007_4b51                         ; $4af4: $dc $51 $4b
    ld b, a                                       ; $4af7: $47
    ld a, [$d0dc]                                 ; $4af8: $fa $dc $d0
    or a                                          ; $4afb: $b7
    jr nz, jr_007_4b15                            ; $4afc: $20 $17

    ld a, b                                       ; $4afe: $78
    rra                                           ; $4aff: $1f
    call c, Call_007_4b1a                         ; $4b00: $dc $1a $4b
    rra                                           ; $4b03: $1f
    call c, Call_007_4b35                         ; $4b04: $dc $35 $4b
    rra                                           ; $4b07: $1f
    call c, Call_007_4b43                         ; $4b08: $dc $43 $4b
    rra                                           ; $4b0b: $1f
    call c, Call_007_4b67                         ; $4b0c: $dc $67 $4b
    ld a, [$d0d0]                                 ; $4b0f: $fa $d0 $d0
    ldh [rNR51], a                                ; $4b12: $e0 $25
    ret                                           ; $4b14: $c9


jr_007_4b15:
    xor a                                         ; $4b15: $af
    ld [$d0dc], a                                 ; $4b16: $ea $dc $d0
    ret                                           ; $4b19: $c9


Call_007_4b1a:
    push af                                       ; $4b1a: $f5
    ld a, [$d080]                                 ; $4b1b: $fa $80 $d0
    or a                                          ; $4b1e: $b7
    jr nz, jr_007_4b28                            ; $4b1f: $20 $07

    ld a, $08                                     ; $4b21: $3e $08
    ldh [rNR10], a                                ; $4b23: $e0 $10
    ld [$d1c6], a                                 ; $4b25: $ea $c6 $d1

jr_007_4b28:
    ld a, [$d0d0]                                 ; $4b28: $fa $d0 $d0
    or $11                                        ; $4b2b: $f6 $11
    ld [$d0d0], a                                 ; $4b2d: $ea $d0 $d0
    ld hl, $d380                                  ; $4b30: $21 $80 $d3
    jr jr_007_4b9e                                ; $4b33: $18 $69

Call_007_4b35:
    push af                                       ; $4b35: $f5
    ld a, [$d0d0]                                 ; $4b36: $fa $d0 $d0
    or $22                                        ; $4b39: $f6 $22
    ld [$d0d0], a                                 ; $4b3b: $ea $d0 $d0
    ld hl, $d480                                  ; $4b3e: $21 $80 $d4
    jr jr_007_4b9e                                ; $4b41: $18 $5b

Call_007_4b43:
    push af                                       ; $4b43: $f5
    ld a, [$d0d0]                                 ; $4b44: $fa $d0 $d0
    or $44                                        ; $4b47: $f6 $44
    ld [$d0d0], a                                 ; $4b49: $ea $d0 $d0
    ld hl, $d580                                  ; $4b4c: $21 $80 $d5
    jr jr_007_4b9e                                ; $4b4f: $18 $4d

Call_007_4b51:
    push af                                       ; $4b51: $f5
    ld hl, $d280                                  ; $4b52: $21 $80 $d2
    inc l                                         ; $4b55: $2c
    ld a, [$d0d3]                                 ; $4b56: $fa $d3 $d0
    cp [hl]                                       ; $4b59: $be
    jr c, jr_007_4b64                             ; $4b5a: $38 $08

    ld a, [$d0d0]                                 ; $4b5c: $fa $d0 $d0
    or $88                                        ; $4b5f: $f6 $88
    ld [$d0d0], a                                 ; $4b61: $ea $d0 $d0

jr_007_4b64:
    dec l                                         ; $4b64: $2d
    jr jr_007_4b9e                                ; $4b65: $18 $37

Call_007_4b67:
    push af                                       ; $4b67: $f5
    ld a, [$d0d0]                                 ; $4b68: $fa $d0 $d0
    or $88                                        ; $4b6b: $f6 $88
    ld [$d0d0], a                                 ; $4b6d: $ea $d0 $d0
    ld hl, $d680                                  ; $4b70: $21 $80 $d6
    jr jr_007_4b9e                                ; $4b73: $18 $29

Call_007_4b75:
    push af                                       ; $4b75: $f5
    ld a, [$d0d0]                                 ; $4b76: $fa $d0 $d0
    or $22                                        ; $4b79: $f6 $22
    ld [$d0d0], a                                 ; $4b7b: $ea $d0 $d0
    ld hl, $d180                                  ; $4b7e: $21 $80 $d1
    jr jr_007_4b9e                                ; $4b81: $18 $1b

Call_007_4b83:
    push af                                       ; $4b83: $f5
    ld hl, $d080                                  ; $4b84: $21 $80 $d0
    inc l                                         ; $4b87: $2c
    ld a, [$d0d3]                                 ; $4b88: $fa $d3 $d0
    cp [hl]                                       ; $4b8b: $be
    jr c, jr_007_4b9d                             ; $4b8c: $38 $0f

    ld a, $08                                     ; $4b8e: $3e $08
    ldh [rNR10], a                                ; $4b90: $e0 $10
    ld [$d1c6], a                                 ; $4b92: $ea $c6 $d1
    ld a, [$d0d0]                                 ; $4b95: $fa $d0 $d0
    or $11                                        ; $4b98: $f6 $11
    ld [$d0d0], a                                 ; $4b9a: $ea $d0 $d0

jr_007_4b9d:
    dec l                                         ; $4b9d: $2d

jr_007_4b9e:
    inc l                                         ; $4b9e: $2c
    ld a, [$d0d3]                                 ; $4b9f: $fa $d3 $d0
    cp [hl]                                       ; $4ba2: $be
    jr c, jr_007_4c0a                             ; $4ba3: $38 $65

    ld [hl-], a                                   ; $4ba5: $32
    ld a, $d3                                     ; $4ba6: $3e $d3
    cp h                                          ; $4ba8: $bc
    jp nz, Jump_007_4bbf                          ; $4ba9: $c2 $bf $4b

    xor a                                         ; $4bac: $af
    ld [$c03d], a                                 ; $4bad: $ea $3d $c0
    ld [$d0db], a                                 ; $4bb0: $ea $db $d0
    ld [$d0da], a                                 ; $4bb3: $ea $da $d0
    ld [$d0cc], a                                 ; $4bb6: $ea $cc $d0
    ld [$d0cd], a                                 ; $4bb9: $ea $cd $d0
    ld [$d0ce], a                                 ; $4bbc: $ea $ce $d0

Jump_007_4bbf:
    ld a, [$d0d2]                                 ; $4bbf: $fa $d2 $d0
    ld [hl+], a                                   ; $4bc2: $22
    inc l                                         ; $4bc3: $2c
    ld a, [de]                                    ; $4bc4: $1a
    ld [hl+], a                                   ; $4bc5: $22
    inc de                                        ; $4bc6: $13
    ld a, [de]                                    ; $4bc7: $1a
    ld [hl+], a                                   ; $4bc8: $22
    inc de                                        ; $4bc9: $13
    ld [hl], $01                                  ; $4bca: $36 $01
    inc l                                         ; $4bcc: $2c
    ld [hl], $40                                  ; $4bcd: $36 $40
    inc l                                         ; $4bcf: $2c
    xor a                                         ; $4bd0: $af
    ld [hl+], a                                   ; $4bd1: $22
    ld [hl+], a                                   ; $4bd2: $22
    ld [hl+], a                                   ; $4bd3: $22
    ld [hl+], a                                   ; $4bd4: $22
    ld [hl+], a                                   ; $4bd5: $22
    ld [hl+], a                                   ; $4bd6: $22
    ld [hl+], a                                   ; $4bd7: $22
    ld [hl+], a                                   ; $4bd8: $22
    ld [hl+], a                                   ; $4bd9: $22
    ld [hl+], a                                   ; $4bda: $22
    ld [hl], a                                    ; $4bdb: $77
    ld l, $c2                                     ; $4bdc: $2e $c2
    ld [hl+], a                                   ; $4bde: $22
    ld [hl+], a                                   ; $4bdf: $22
    ld [hl+], a                                   ; $4be0: $22
    ld [hl], a                                    ; $4be1: $77
    push de                                       ; $4be2: $d5
    ld l, $82                                     ; $4be3: $2e $82
    ld e, [hl]                                    ; $4be5: $5e
    inc l                                         ; $4be6: $2c
    ld l, $83                                     ; $4be7: $2e $83
    ld d, [hl]                                    ; $4be9: $56
    ld a, [de]                                    ; $4bea: $1a
    cp $e1                                        ; $4beb: $fe $e1
    jr nz, jr_007_4bf8                            ; $4bed: $20 $09

    ld l, $86                                     ; $4bef: $2e $86
    set 4, [hl]                                   ; $4bf1: $cb $e6
    set 5, [hl]                                   ; $4bf3: $cb $ee
    xor a                                         ; $4bf5: $af
    jr jr_007_4bff                                ; $4bf6: $18 $07

jr_007_4bf8:
    ld l, $86                                     ; $4bf8: $2e $86
    res 4, [hl]                                   ; $4bfa: $cb $a6
    res 5, [hl]                                   ; $4bfc: $cb $ae
    xor a                                         ; $4bfe: $af

jr_007_4bff:
    ld [$d0dc], a                                 ; $4bff: $ea $dc $d0
    ld a, $ff                                     ; $4c02: $3e $ff
    ld l, $bd                                     ; $4c04: $2e $bd
    ld [hl], a                                    ; $4c06: $77
    pop de                                        ; $4c07: $d1
    pop af                                        ; $4c08: $f1
    ret                                           ; $4c09: $c9


jr_007_4c0a:
    inc de                                        ; $4c0a: $13
    inc de                                        ; $4c0b: $13
    ld a, $01                                     ; $4c0c: $3e $01
    ld [$d0dc], a                                 ; $4c0e: $ea $dc $d0
    ld a, $ff                                     ; $4c11: $3e $ff
    ld l, $bd                                     ; $4c13: $2e $bd
    ld [hl], a                                    ; $4c15: $77
    pop af                                        ; $4c16: $f1
    ret                                           ; $4c17: $c9


Jump_007_4c18:
    ld hl, $d080                                  ; $4c18: $21 $80 $d0
    ld de, $d081                                  ; $4c1b: $11 $81 $d0
    call Call_007_4cd7                            ; $4c1e: $cd $d7 $4c
    call Call_007_4cd7                            ; $4c21: $cd $d7 $4c
    call Call_007_4cd7                            ; $4c24: $cd $d7 $4c
    call Call_007_4cd7                            ; $4c27: $cd $d7 $4c
    call Call_007_4cd7                            ; $4c2a: $cd $d7 $4c
    call Call_007_4cd7                            ; $4c2d: $cd $d7 $4c
    call Call_007_4cd7                            ; $4c30: $cd $d7 $4c
    ld hl, $d1c6                                  ; $4c33: $21 $c6 $d1
    ld de, $d1c7                                  ; $4c36: $11 $c7 $d1
    ld bc, $0014                                  ; $4c39: $01 $14 $00
    ld [hl], $00                                  ; $4c3c: $36 $00
    call Call_007_4000                            ; $4c3e: $cd $00 $40
    ld hl, $d0ca                                  ; $4c41: $21 $ca $d0
    ld de, $d0cb                                  ; $4c44: $11 $cb $d0
    ld bc, $0020                                  ; $4c47: $01 $20 $00
    ld [hl], $00                                  ; $4c4a: $36 $00
    call Call_007_4000                            ; $4c4c: $cd $00 $40
    ld a, $ff                                     ; $4c4f: $3e $ff
    ld [$d0d0], a                                 ; $4c51: $ea $d0 $d0
    ld a, $00                                     ; $4c54: $3e $00
    ldh [rNR12], a                                ; $4c56: $e0 $12
    ldh [rNR22], a                                ; $4c58: $e0 $17
    ldh [rNR42], a                                ; $4c5a: $e0 $21
    ldh [rNR32], a                                ; $4c5c: $e0 $1c
    ret                                           ; $4c5e: $c9


Jump_007_4c5f:
    ld a, $ff                                     ; $4c5f: $3e $ff
    ld [$d0d0], a                                 ; $4c61: $ea $d0 $d0
    ld hl, $d380                                  ; $4c64: $21 $80 $d3
    ld de, $d381                                  ; $4c67: $11 $81 $d3
    call Call_007_4cd7                            ; $4c6a: $cd $d7 $4c
    call Call_007_4cd7                            ; $4c6d: $cd $d7 $4c
    jp Jump_007_4cd7                              ; $4c70: $c3 $d7 $4c


Jump_007_4c73:
    ld hl, $d680                                  ; $4c73: $21 $80 $d6
    ld de, $d681                                  ; $4c76: $11 $81 $d6
    jp Jump_007_4cd7                              ; $4c79: $c3 $d7 $4c


    ld a, [$c014]                                 ; $4c7c: $fa $14 $c0
    ld b, a                                       ; $4c7f: $47
    ld a, [$d0d6]                                 ; $4c80: $fa $d6 $d0
    or b                                          ; $4c83: $b0
    ret nz                                        ; $4c84: $c0

    ld a, [$d080]                                 ; $4c85: $fa $80 $d0
    ld c, a                                       ; $4c88: $4f
    ld a, [$d380]                                 ; $4c89: $fa $80 $d3
    or c                                          ; $4c8c: $b1
    jr z, jr_007_4c9d                             ; $4c8d: $28 $0e

    ld hl, $d1c6                                  ; $4c8f: $21 $c6 $d1
    ld de, $ff10                                  ; $4c92: $11 $10 $ff
    ld b, $05                                     ; $4c95: $06 $05
    call Call_007_4cd0                            ; $4c97: $cd $d0 $4c
    xor a                                         ; $4c9a: $af
    ldh [rNR10], a                                ; $4c9b: $e0 $10

jr_007_4c9d:
    ld a, [$d180]                                 ; $4c9d: $fa $80 $d1
    ld c, a                                       ; $4ca0: $4f
    ld a, [$d480]                                 ; $4ca1: $fa $80 $d4
    or c                                          ; $4ca4: $b1
    jr z, jr_007_4cb2                             ; $4ca5: $28 $0b

    ld hl, $d1cc                                  ; $4ca7: $21 $cc $d1
    ld de, $ff16                                  ; $4caa: $11 $16 $ff
    ld b, $04                                     ; $4cad: $06 $04
    call Call_007_4cd0                            ; $4caf: $cd $d0 $4c

jr_007_4cb2:
    ld a, [$d580]                                 ; $4cb2: $fa $80 $d5
    or a                                          ; $4cb5: $b7
    jr z, jr_007_4cc3                             ; $4cb6: $28 $0b

    ld hl, $d1d0                                  ; $4cb8: $21 $d0 $d1
    ld de, $ff1a                                  ; $4cbb: $11 $1a $ff
    ld b, $05                                     ; $4cbe: $06 $05
    call Call_007_4cd0                            ; $4cc0: $cd $d0 $4c

jr_007_4cc3:
    ld a, [$d280]                                 ; $4cc3: $fa $80 $d2
    or a                                          ; $4cc6: $b7
    ret z                                         ; $4cc7: $c8

    ld hl, $d1d6                                  ; $4cc8: $21 $d6 $d1
    ld de, $ff20                                  ; $4ccb: $11 $20 $ff
    ld b, $04                                     ; $4cce: $06 $04

Call_007_4cd0:
jr_007_4cd0:
    ld a, [hl+]                                   ; $4cd0: $2a
    ld [de], a                                    ; $4cd1: $12
    inc de                                        ; $4cd2: $13
    dec b                                         ; $4cd3: $05
    jr nz, jr_007_4cd0                            ; $4cd4: $20 $fa

    ret                                           ; $4cd6: $c9


Call_007_4cd7:
Jump_007_4cd7:
    ld bc, $0046                                  ; $4cd7: $01 $46 $00
    push hl                                       ; $4cda: $e5
    push de                                       ; $4cdb: $d5
    ld [hl], $00                                  ; $4cdc: $36 $00
    call Call_007_4000                            ; $4cde: $cd $00 $40
    pop de                                        ; $4ce1: $d1
    pop hl                                        ; $4ce2: $e1
    inc h                                         ; $4ce3: $24
    inc d                                         ; $4ce4: $14
    ret                                           ; $4ce5: $c9


    jr nz, jr_007_4ce8                            ; $4ce6: $20 $00

jr_007_4ce8:
    sub d                                         ; $4ce8: $92
    nop                                           ; $4ce9: $00
    cp $00                                        ; $4cea: $fe $00
    ld h, h                                       ; $4cec: $64
    ld bc, $01c4                                  ; $4ced: $01 $c4 $01
    ld e, $02                                     ; $4cf0: $1e $02
    ld [hl], e                                    ; $4cf2: $73
    ld [bc], a                                    ; $4cf3: $02
    jp $0f02                                      ; $4cf4: $c3 $02 $0f


    inc bc                                        ; $4cf7: $03
    ld d, a                                       ; $4cf8: $57
    inc bc                                        ; $4cf9: $03
    sbc d                                         ; $4cfa: $9a
    inc bc                                        ; $4cfb: $03
    reti                                          ; $4cfc: $d9


    inc bc                                        ; $4cfd: $03
    dec d                                         ; $4cfe: $15
    inc b                                         ; $4cff: $04
    ld c, l                                       ; $4d00: $4d
    inc b                                         ; $4d01: $04
    add e                                         ; $4d02: $83
    inc b                                         ; $4d03: $04
    or l                                          ; $4d04: $b5
    inc b                                         ; $4d05: $04
    db $e4                                        ; $4d06: $e4
    inc b                                         ; $4d07: $04
    ld de, $3b05                                  ; $4d08: $11 $05 $3b
    dec b                                         ; $4d0b: $05
    ld h, e                                       ; $4d0c: $63
    dec b                                         ; $4d0d: $05
    adc b                                         ; $4d0e: $88
    dec b                                         ; $4d0f: $05
    xor h                                         ; $4d10: $ac
    dec b                                         ; $4d11: $05
    call $ed05                                    ; $4d12: $cd $05 $ed
    dec b                                         ; $4d15: $05
    dec bc                                        ; $4d16: $0b
    ld b, $27                                     ; $4d17: $06 $27
    ld b, $42                                     ; $4d19: $06 $42
    ld b, $5b                                     ; $4d1b: $06 $5b
    ld b, $73                                     ; $4d1d: $06 $73
    ld b, $8a                                     ; $4d1f: $06 $8a
    ld b, $9f                                     ; $4d21: $06 $9f
    ld b, $b3                                     ; $4d23: $06 $b3
    ld b, $c6                                     ; $4d25: $06 $c6
    ld b, $d8                                     ; $4d27: $06 $d8
    ld b, $e9                                     ; $4d29: $06 $e9
    ld b, $f8                                     ; $4d2b: $06 $f8
    ld b, $07                                     ; $4d2d: $06 $07
    rlca                                          ; $4d2f: $07
    dec d                                         ; $4d30: $15
    rlca                                          ; $4d31: $07
    ld [hl+], a                                   ; $4d32: $22
    rlca                                          ; $4d33: $07
    cpl                                           ; $4d34: $2f
    rlca                                          ; $4d35: $07
    ld a, [hl-]                                   ; $4d36: $3a
    rlca                                          ; $4d37: $07
    ld b, l                                       ; $4d38: $45
    rlca                                          ; $4d39: $07
    ld d, b                                       ; $4d3a: $50
    rlca                                          ; $4d3b: $07
    ld e, d                                       ; $4d3c: $5a
    rlca                                          ; $4d3d: $07
    ld h, e                                       ; $4d3e: $63
    rlca                                          ; $4d3f: $07
    ld l, h                                       ; $4d40: $6c
    rlca                                          ; $4d41: $07
    ld [hl], h                                    ; $4d42: $74
    rlca                                          ; $4d43: $07
    ld a, h                                       ; $4d44: $7c
    rlca                                          ; $4d45: $07
    add h                                         ; $4d46: $84
    rlca                                          ; $4d47: $07
    adc e                                         ; $4d48: $8b
    rlca                                          ; $4d49: $07
    sub c                                         ; $4d4a: $91
    rlca                                          ; $4d4b: $07
    sub a                                         ; $4d4c: $97
    rlca                                          ; $4d4d: $07
    sbc l                                         ; $4d4e: $9d
    rlca                                          ; $4d4f: $07
    and e                                         ; $4d50: $a3
    rlca                                          ; $4d51: $07
    xor c                                         ; $4d52: $a9
    rlca                                          ; $4d53: $07
    xor l                                         ; $4d54: $ad
    rlca                                          ; $4d55: $07
    or d                                          ; $4d56: $b2
    rlca                                          ; $4d57: $07
    or [hl]                                       ; $4d58: $b6
    rlca                                          ; $4d59: $07
    cp d                                          ; $4d5a: $ba
    rlca                                          ; $4d5b: $07
    cp [hl]                                       ; $4d5c: $be
    rlca                                          ; $4d5d: $07
    jp nz, $c407                                  ; $4d5e: $c2 $07 $c4

    rlca                                          ; $4d61: $07
    ret z                                         ; $4d62: $c8

    rlca                                          ; $4d63: $07
    rlc a                                         ; $4d64: $cb $07
    adc $07                                       ; $4d66: $ce $07
    pop de                                        ; $4d68: $d1
    rlca                                          ; $4d69: $07
    db $d3                                        ; $4d6a: $d3
    rlca                                          ; $4d6b: $07
    sub $07                                       ; $4d6c: $d6 $07
    ret c                                         ; $4d6e: $d8

    rlca                                          ; $4d6f: $07
    jp c, $dc07                                   ; $4d70: $da $07 $dc

    rlca                                          ; $4d73: $07
    sbc $07                                       ; $4d74: $de $07
    ldh [rTAC], a                                 ; $4d76: $e0 $07
    ldh [c], a                                    ; $4d78: $e2
    rlca                                          ; $4d79: $07
    db $e4                                        ; $4d7a: $e4
    rlca                                          ; $4d7b: $07
    push hl                                       ; $4d7c: $e5
    rlca                                          ; $4d7d: $07
    rst RST_20                                    ; $4d7e: $e7
    rlca                                          ; $4d7f: $07
    add sp, $07                                   ; $4d80: $e8 $07
    jp hl                                         ; $4d82: $e9


    rlca                                          ; $4d83: $07
    db $eb                                        ; $4d84: $eb
    rlca                                          ; $4d85: $07
    db $ec                                        ; $4d86: $ec
    rlca                                          ; $4d87: $07
    db $ed                                        ; $4d88: $ed
    rlca                                          ; $4d89: $07
    xor $07                                       ; $4d8a: $ee $07
    rst RST_28                                    ; $4d8c: $ef
    rlca                                          ; $4d8d: $07
    ldh a, [rTAC]                                 ; $4d8e: $f0 $07
    or b                                          ; $4d90: $b0
    ld c, l                                       ; $4d91: $4d
    ret nz                                        ; $4d92: $c0

    ld c, l                                       ; $4d93: $4d
    ret nc                                        ; $4d94: $d0

    ld c, l                                       ; $4d95: $4d
    ldh [rKEY1], a                                ; $4d96: $e0 $4d
    ldh a, [rKEY1]                                ; $4d98: $f0 $4d
    nop                                           ; $4d9a: $00
    ld c, [hl]                                    ; $4d9b: $4e
    db $10                                        ; $4d9c: $10
    ld c, [hl]                                    ; $4d9d: $4e
    jr nz, jr_007_4dee                            ; $4d9e: $20 $4e

    jr nz, jr_007_4df0                            ; $4da0: $20 $4e

    jr nz, jr_007_4df2                            ; $4da2: $20 $4e

    jr nz, jr_007_4df4                            ; $4da4: $20 $4e

    jr nz, jr_007_4df6                            ; $4da6: $20 $4e

    jr nz, jr_007_4df8                            ; $4da8: $20 $4e

    jr nz, jr_007_4dfa                            ; $4daa: $20 $4e

    jr nz, jr_007_4dfc                            ; $4dac: $20 $4e

    jr nz, jr_007_4dfe                            ; $4dae: $20 $4e

    rst RST_38                                    ; $4db0: $ff
    xor $dd                                       ; $4db1: $ee $dd
    call z, $aabb                                 ; $4db3: $cc $bb $aa
    sbc c                                         ; $4db6: $99
    ld de, $2211                                  ; $4db7: $11 $11 $22
    ld [hl+], a                                   ; $4dba: $22
    inc sp                                        ; $4dbb: $33
    inc sp                                        ; $4dbc: $33
    ld b, h                                       ; $4dbd: $44
    ld b, h                                       ; $4dbe: $44
    ld d, l                                       ; $4dbf: $55
    ld bc, $4523                                  ; $4dc0: $01 $23 $45
    ld h, a                                       ; $4dc3: $67
    adc c                                         ; $4dc4: $89
    xor e                                         ; $4dc5: $ab
    call $feef                                    ; $4dc6: $cd $ef $fe
    call c, $98ba                                 ; $4dc9: $dc $ba $98
    halt                                          ; $4dcc: $76
    ld d, h                                       ; $4dcd: $54
    ld [hl-], a                                   ; $4dce: $32
    db $10                                        ; $4dcf: $10
    ld [bc], a                                    ; $4dd0: $02
    ld b, [hl]                                    ; $4dd1: $46
    adc d                                         ; $4dd2: $8a
    adc $fd                                       ; $4dd3: $ce $fd
    cp c                                          ; $4dd5: $b9
    ld [hl], l                                    ; $4dd6: $75
    ld sp, $4602                                  ; $4dd7: $31 $02 $46
    adc d                                         ; $4dda: $8a
    adc $fd                                       ; $4ddb: $ce $fd
    cp c                                          ; $4ddd: $b9
    ld [hl], l                                    ; $4dde: $75
    ld sp, $0000                                  ; $4ddf: $31 $00 $00
    nop                                           ; $4de2: $00
    nop                                           ; $4de3: $00
    nop                                           ; $4de4: $00
    nop                                           ; $4de5: $00
    nop                                           ; $4de6: $00
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    nop                                           ; $4de9: $00
    rst RST_38                                    ; $4dea: $ff
    rst RST_38                                    ; $4deb: $ff
    rst RST_38                                    ; $4dec: $ff
    rst RST_38                                    ; $4ded: $ff

jr_007_4dee:
    ld d, l                                       ; $4dee: $55
    rst RST_38                                    ; $4def: $ff

jr_007_4df0:
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00

jr_007_4df2:
    nop                                           ; $4df2: $00
    ld d, l                                       ; $4df3: $55

jr_007_4df4:
    rst RST_38                                    ; $4df4: $ff
    ld d, l                                       ; $4df5: $55

jr_007_4df6:
    nop                                           ; $4df6: $00
    nop                                           ; $4df7: $00

jr_007_4df8:
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00

jr_007_4dfa:
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00

jr_007_4dfc:
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00

jr_007_4dfe:
    nop                                           ; $4dfe: $00
    nop                                           ; $4dff: $00
    adc b                                         ; $4e00: $88
    adc b                                         ; $4e01: $88
    adc b                                         ; $4e02: $88
    adc b                                         ; $4e03: $88
    ld [hl], a                                    ; $4e04: $77
    ld h, [hl]                                    ; $4e05: $66
    ld d, l                                       ; $4e06: $55
    ld b, h                                       ; $4e07: $44
    nop                                           ; $4e08: $00
    nop                                           ; $4e09: $00
    nop                                           ; $4e0a: $00
    nop                                           ; $4e0b: $00
    nop                                           ; $4e0c: $00
    nop                                           ; $4e0d: $00
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    rst RST_38                                    ; $4e10: $ff
    xor $dd                                       ; $4e11: $ee $dd
    call z, $aabb                                 ; $4e13: $cc $bb $aa
    sbc c                                         ; $4e16: $99
    adc b                                         ; $4e17: $88
    ld [hl], a                                    ; $4e18: $77
    ld h, [hl]                                    ; $4e19: $66
    ld d, l                                       ; $4e1a: $55
    ld b, h                                       ; $4e1b: $44
    inc sp                                        ; $4e1c: $33
    ld [hl+], a                                   ; $4e1d: $22
    ld de, $ff00                                  ; $4e1e: $11 $00 $ff
    rst RST_38                                    ; $4e21: $ff
    rst RST_38                                    ; $4e22: $ff
    rst RST_38                                    ; $4e23: $ff
    rst RST_38                                    ; $4e24: $ff
    rst RST_38                                    ; $4e25: $ff
    rst RST_38                                    ; $4e26: $ff
    rst RST_38                                    ; $4e27: $ff
    rst RST_38                                    ; $4e28: $ff
    rst RST_38                                    ; $4e29: $ff
    rst RST_38                                    ; $4e2a: $ff
    rst RST_38                                    ; $4e2b: $ff
    rst RST_38                                    ; $4e2c: $ff
    rst RST_38                                    ; $4e2d: $ff
    rst RST_38                                    ; $4e2e: $ff
    rst RST_38                                    ; $4e2f: $ff
    ld l, b                                       ; $4e30: $68
    ld c, [hl]                                    ; $4e31: $4e
    ld l, a                                       ; $4e32: $6f
    ld c, [hl]                                    ; $4e33: $4e
    ld a, c                                       ; $4e34: $79
    ld c, [hl]                                    ; $4e35: $4e
    add [hl]                                      ; $4e36: $86
    ld c, [hl]                                    ; $4e37: $4e
    sub e                                         ; $4e38: $93
    ld c, [hl]                                    ; $4e39: $4e
    xor h                                         ; $4e3a: $ac
    ld c, [hl]                                    ; $4e3b: $4e
    or h                                          ; $4e3c: $b4
    ld c, [hl]                                    ; $4e3d: $4e
    sub $4e                                       ; $4e3e: $d6 $4e
    ldh a, [c]                                    ; $4e40: $f2
    ld c, [hl]                                    ; $4e41: $4e
    ldh a, [c]                                    ; $4e42: $f2
    ld c, [hl]                                    ; $4e43: $4e
    ld sp, hl                                     ; $4e44: $f9
    ld c, [hl]                                    ; $4e45: $4e
    dec b                                         ; $4e46: $05
    ld c, a                                       ; $4e47: $4f
    add hl, de                                    ; $4e48: $19
    ld c, a                                       ; $4e49: $4f
    jr nz, jr_007_4e9b                            ; $4e4a: $20 $4f

    add hl, hl                                    ; $4e4c: $29
    ld c, a                                       ; $4e4d: $4f
    inc [hl]                                      ; $4e4e: $34
    ld c, a                                       ; $4e4f: $4f
    ld b, c                                       ; $4e50: $41
    ld c, a                                       ; $4e51: $4f
    ld c, a                                       ; $4e52: $4f
    ld c, a                                       ; $4e53: $4f
    ld e, l                                       ; $4e54: $5d
    ld c, a                                       ; $4e55: $4f
    ld l, d                                       ; $4e56: $6a
    ld c, a                                       ; $4e57: $4f
    ld [hl], l                                    ; $4e58: $75
    ld c, a                                       ; $4e59: $4f
    ld a, l                                       ; $4e5a: $7d
    ld c, a                                       ; $4e5b: $4f
    add l                                         ; $4e5c: $85
    ld c, a                                       ; $4e5d: $4f
    adc e                                         ; $4e5e: $8b
    ld c, a                                       ; $4e5f: $4f
    sub h                                         ; $4e60: $94
    ld c, a                                       ; $4e61: $4f
    sbc h                                         ; $4e62: $9c
    ld c, a                                       ; $4e63: $4f
    and l                                         ; $4e64: $a5
    ld c, a                                       ; $4e65: $4f
    or c                                          ; $4e66: $b1
    ld c, a                                       ; $4e67: $4f
    jr c, jr_007_4ea1                             ; $4e68: $38 $37

    ld [hl], $35                                  ; $4e6a: $36 $35
    inc [hl]                                      ; $4e6c: $34
    inc sp                                        ; $4e6d: $33
    rst RST_38                                    ; $4e6e: $ff
    ld d, $17                                     ; $4e6f: $16 $17
    jr c, jr_007_4eaa                             ; $4e71: $38 $37

    ld [hl], $35                                  ; $4e73: $36 $35
    inc h                                         ; $4e75: $24
    inc hl                                        ; $4e76: $23
    ld [hl+], a                                   ; $4e77: $22
    rst RST_38                                    ; $4e78: $ff
    and c                                         ; $4e79: $a1
    and d                                         ; $4e7a: $a2
    and e                                         ; $4e7b: $a3
    and h                                         ; $4e7c: $a4
    and l                                         ; $4e7d: $a5
    and [hl]                                      ; $4e7e: $a6
    and a                                         ; $4e7f: $a7
    and [hl]                                      ; $4e80: $a6
    and l                                         ; $4e81: $a5
    and h                                         ; $4e82: $a4
    and e                                         ; $4e83: $a3
    and d                                         ; $4e84: $a2
    rst RST_38                                    ; $4e85: $ff
    ld sp, $3332                                  ; $4e86: $31 $32 $33
    ld b, h                                       ; $4e89: $44
    ld b, l                                       ; $4e8a: $45
    ld b, [hl]                                    ; $4e8b: $46
    ld b, a                                       ; $4e8c: $47
    ld b, [hl]                                    ; $4e8d: $46
    ld h, l                                       ; $4e8e: $65
    ld [hl], h                                    ; $4e8f: $74
    add e                                         ; $4e90: $83
    add d                                         ; $4e91: $82
    rst RST_38                                    ; $4e92: $ff
    ld a, [de]                                    ; $4e93: $1a
    add hl, de                                    ; $4e94: $19
    jr jr_007_4ead                                ; $4e95: $18 $16

    rla                                           ; $4e97: $17
    jr jr_007_4ef1                                ; $4e98: $18 $57

    ld h, [hl]                                    ; $4e9a: $66

jr_007_4e9b:
    ld h, l                                       ; $4e9b: $65
    ld h, h                                       ; $4e9c: $64
    ld h, e                                       ; $4e9d: $63
    ld h, d                                       ; $4e9e: $62
    ld h, d                                       ; $4e9f: $62
    ld [hl], e                                    ; $4ea0: $73

jr_007_4ea1:
    ld b, h                                       ; $4ea1: $44
    ld b, l                                       ; $4ea2: $45
    ld b, [hl]                                    ; $4ea3: $46
    ld b, a                                       ; $4ea4: $47
    xor b                                         ; $4ea5: $a8
    and a                                         ; $4ea6: $a7
    and [hl]                                      ; $4ea7: $a6
    and l                                         ; $4ea8: $a5
    and h                                         ; $4ea9: $a4

jr_007_4eaa:
    and e                                         ; $4eaa: $a3
    rst RST_38                                    ; $4eab: $ff
    add hl, de                                    ; $4eac: $19

jr_007_4ead:
    jr z, jr_007_4ec6                             ; $4ead: $28 $17

    ld d, $15                                     ; $4eaf: $16 $15
    inc d                                         ; $4eb1: $14
    inc de                                        ; $4eb2: $13
    rst RST_38                                    ; $4eb3: $ff
    ld h, c                                       ; $4eb4: $61
    ld h, d                                       ; $4eb5: $62
    ld h, e                                       ; $4eb6: $63
    ld h, h                                       ; $4eb7: $64
    ld h, l                                       ; $4eb8: $65
    ld h, [hl]                                    ; $4eb9: $66
    ld h, a                                       ; $4eba: $67
    ld l, b                                       ; $4ebb: $68
    ld l, c                                       ; $4ebc: $69
    ld e, d                                       ; $4ebd: $5a
    ld l, e                                       ; $4ebe: $6b
    ld l, h                                       ; $4ebf: $6c
    ld l, e                                       ; $4ec0: $6b
    ld l, d                                       ; $4ec1: $6a
    ld l, c                                       ; $4ec2: $69
    ld l, b                                       ; $4ec3: $68
    ld h, a                                       ; $4ec4: $67
    ld h, [hl]                                    ; $4ec5: $66

jr_007_4ec6:
    ld h, l                                       ; $4ec6: $65
    ld h, h                                       ; $4ec7: $64
    ld h, e                                       ; $4ec8: $63
    ld h, d                                       ; $4ec9: $62
    ld h, c                                       ; $4eca: $61
    ld h, d                                       ; $4ecb: $62
    ld h, e                                       ; $4ecc: $63
    ld h, h                                       ; $4ecd: $64
    ld h, l                                       ; $4ece: $65
    ld h, [hl]                                    ; $4ecf: $66
    ld h, l                                       ; $4ed0: $65
    ld h, h                                       ; $4ed1: $64
    ld h, e                                       ; $4ed2: $63
    ld h, d                                       ; $4ed3: $62
    ld h, c                                       ; $4ed4: $61
    rst RST_38                                    ; $4ed5: $ff
    inc e                                         ; $4ed6: $1c
    dec de                                        ; $4ed7: $1b
    ld a, [de]                                    ; $4ed8: $1a
    add hl, de                                    ; $4ed9: $19
    jr jr_007_4ef2                                ; $4eda: $18 $16

    rla                                           ; $4edc: $17
    jr jr_007_4f26                                ; $4edd: $18 $47

    ld [hl], $35                                  ; $4edf: $36 $35
    inc [hl]                                      ; $4ee1: $34
    inc sp                                        ; $4ee2: $33
    ld [hl], d                                    ; $4ee3: $72
    ld [hl], e                                    ; $4ee4: $73
    ld [hl], h                                    ; $4ee5: $74
    ld h, l                                       ; $4ee6: $65
    ld b, [hl]                                    ; $4ee7: $46
    daa                                           ; $4ee8: $27
    jr z, jr_007_4f14                             ; $4ee9: $28 $29

    ld a, [hl+]                                   ; $4eeb: $2a
    xor c                                         ; $4eec: $a9
    xor b                                         ; $4eed: $a8
    and a                                         ; $4eee: $a7
    and [hl]                                      ; $4eef: $a6
    and l                                         ; $4ef0: $a5

jr_007_4ef1:
    rst RST_38                                    ; $4ef1: $ff

jr_007_4ef2:
    ld a, [de]                                    ; $4ef2: $1a
    ld h, a                                       ; $4ef3: $67
    ld h, [hl]                                    ; $4ef4: $66
    ld h, l                                       ; $4ef5: $65
    ld h, h                                       ; $4ef6: $64
    ld h, e                                       ; $4ef7: $63
    rst RST_38                                    ; $4ef8: $ff
    inc [hl]                                      ; $4ef9: $34
    dec [hl]                                      ; $4efa: $35
    ld [hl], $37                                  ; $4efb: $36 $37
    jr c, jr_007_4f36                             ; $4efd: $38 $37

    ld [hl], $45                                  ; $4eff: $36 $45
    ld d, h                                       ; $4f01: $54
    ld [hl], e                                    ; $4f02: $73
    add d                                         ; $4f03: $82
    rst RST_38                                    ; $4f04: $ff
    add hl, hl                                    ; $4f05: $29
    jr z, jr_007_4f2f                             ; $4f06: $28 $27

    ld h, [hl]                                    ; $4f08: $66
    ld h, l                                       ; $4f09: $65
    ld h, h                                       ; $4f0a: $64
    di                                            ; $4f0b: $f3
    di                                            ; $4f0c: $f3
    and d                                         ; $4f0d: $a2
    ld h, e                                       ; $4f0e: $63
    and h                                         ; $4f0f: $a4
    and l                                         ; $4f10: $a5
    and [hl]                                      ; $4f11: $a6
    and a                                         ; $4f12: $a7
    and [hl]                                      ; $4f13: $a6

jr_007_4f14:
    and l                                         ; $4f14: $a5
    and h                                         ; $4f15: $a4
    and e                                         ; $4f16: $a3
    ld h, d                                       ; $4f17: $62
    rst RST_38                                    ; $4f18: $ff
    add hl, de                                    ; $4f19: $19
    scf                                           ; $4f1a: $37
    ld b, [hl]                                    ; $4f1b: $46
    ld d, l                                       ; $4f1c: $55
    ld [hl], h                                    ; $4f1d: $74
    ld h, e                                       ; $4f1e: $63
    rst RST_38                                    ; $4f1f: $ff
    ld a, [de]                                    ; $4f20: $1a
    add hl, de                                    ; $4f21: $19
    jr jr_007_4f3b                                ; $4f22: $18 $17

    ld d, $55                                     ; $4f24: $16 $55

jr_007_4f26:
    ld d, h                                       ; $4f26: $54
    ld d, e                                       ; $4f27: $53
    rst RST_38                                    ; $4f28: $ff
    rla                                           ; $4f29: $17
    add hl, de                                    ; $4f2a: $19
    ld d, $17                                     ; $4f2b: $16 $17
    jr c, jr_007_4f66                             ; $4f2d: $38 $37

jr_007_4f2f:
    ld [hl], $55                                  ; $4f2f: $36 $55
    ld d, h                                       ; $4f31: $54
    ld d, e                                       ; $4f32: $53
    rst RST_38                                    ; $4f33: $ff
    ld a, [de]                                    ; $4f34: $1a
    add hl, hl                                    ; $4f35: $29

jr_007_4f36:
    jr z, jr_007_4f6f                             ; $4f36: $28 $37

    ld [hl], $35                                  ; $4f38: $36 $35
    inc [hl]                                      ; $4f3a: $34

jr_007_4f3b:
    inc hl                                        ; $4f3b: $23
    ld d, l                                       ; $4f3c: $55
    ld d, h                                       ; $4f3d: $54
    ld d, e                                       ; $4f3e: $53
    ld d, d                                       ; $4f3f: $52
    rst RST_38                                    ; $4f40: $ff
    ld a, [de]                                    ; $4f41: $1a
    add hl, de                                    ; $4f42: $19
    jr z, jr_007_4f5c                             ; $4f43: $28 $17

    ld h, $15                                     ; $4f45: $26 $15
    inc d                                         ; $4f47: $14
    inc de                                        ; $4f48: $13
    ld [de], a                                    ; $4f49: $12
    ld de, $5354                                  ; $4f4a: $11 $54 $53
    ld d, d                                       ; $4f4d: $52
    rst RST_38                                    ; $4f4e: $ff
    jr jr_007_4f6b                                ; $4f4f: $18 $1a

    add hl, de                                    ; $4f51: $19
    jr jr_007_4f6b                                ; $4f52: $18 $17

    ld h, $25                                     ; $4f54: $26 $25
    inc h                                         ; $4f56: $24
    inc de                                        ; $4f57: $13
    ld d, l                                       ; $4f58: $55
    ld d, h                                       ; $4f59: $54
    ld d, e                                       ; $4f5a: $53
    ld d, d                                       ; $4f5b: $52

jr_007_4f5c:
    rst RST_38                                    ; $4f5c: $ff
    rla                                           ; $4f5d: $17
    add hl, de                                    ; $4f5e: $19
    jr @+$19                                      ; $4f5f: $18 $17

    ld h, $25                                     ; $4f61: $26 $25
    inc h                                         ; $4f63: $24
    inc hl                                        ; $4f64: $23
    ld d, l                                       ; $4f65: $55

jr_007_4f66:
    ld d, h                                       ; $4f66: $54
    ld d, e                                       ; $4f67: $53
    ld d, d                                       ; $4f68: $52
    rst RST_38                                    ; $4f69: $ff
    dec h                                         ; $4f6a: $25

jr_007_4f6b:
    ld h, $87                                     ; $4f6b: $26 $87
    add [hl]                                      ; $4f6d: $86
    add l                                         ; $4f6e: $85

jr_007_4f6f:
    add h                                         ; $4f6f: $84
    add h                                         ; $4f70: $84
    add e                                         ; $4f71: $83
    add d                                         ; $4f72: $82
    add c                                         ; $4f73: $81
    rst RST_38                                    ; $4f74: $ff
    jr @+$19                                      ; $4f75: $18 $17

    ld d, $25                                     ; $4f77: $16 $25
    inc h                                         ; $4f79: $24
    inc hl                                        ; $4f7a: $23
    ld [hl+], a                                   ; $4f7b: $22
    rst RST_38                                    ; $4f7c: $ff
    ld e, b                                       ; $4f7d: $58
    ld d, a                                       ; $4f7e: $57
    ld d, [hl]                                    ; $4f7f: $56
    ld d, l                                       ; $4f80: $55
    ld d, h                                       ; $4f81: $54
    ld d, e                                       ; $4f82: $53
    ld d, d                                       ; $4f83: $52
    rst RST_38                                    ; $4f84: $ff
    ld d, l                                       ; $4f85: $55
    ld d, h                                       ; $4f86: $54
    ld d, e                                       ; $4f87: $53
    ld d, d                                       ; $4f88: $52
    ld d, c                                       ; $4f89: $51
    rst RST_38                                    ; $4f8a: $ff
    ld a, [de]                                    ; $4f8b: $1a
    add hl, de                                    ; $4f8c: $19
    jr jr_007_4fa6                                ; $4f8d: $18 $17

    ld d, $15                                     ; $4f8f: $16 $15
    ld b, h                                       ; $4f91: $44
    ld b, e                                       ; $4f92: $43
    rst RST_38                                    ; $4f93: $ff
    add hl, de                                    ; $4f94: $19
    jr @+$19                                      ; $4f95: $18 $17

    ld d, $55                                     ; $4f97: $16 $55
    ld d, h                                       ; $4f99: $54
    ld d, e                                       ; $4f9a: $53
    rst RST_38                                    ; $4f9b: $ff
    ld [hl], $37                                  ; $4f9c: $36 $37
    jr c, jr_007_4ff7                             ; $4f9e: $38 $57

    add $c5                                       ; $4fa0: $c6 $c5
    call nz, $ffc3                                ; $4fa2: $c4 $c3 $ff
    inc [hl]                                      ; $4fa5: $34

jr_007_4fa6:
    dec [hl]                                      ; $4fa6: $35
    ld [hl], $37                                  ; $4fa7: $36 $37
    jr c, jr_007_5002                             ; $4fa9: $38 $57

    add $c5                                       ; $4fab: $c6 $c5
    call nz, $c2c3                                ; $4fad: $c4 $c3 $c2
    rst RST_38                                    ; $4fb0: $ff
    rst RST_38                                    ; $4fb1: $ff
    sbc d                                         ; $4fb2: $9a
    ld d, b                                       ; $4fb3: $50
    add hl, hl                                    ; $4fb4: $29
    ld d, e                                       ; $4fb5: $53
    dec l                                         ; $4fb6: $2d
    ld d, e                                       ; $4fb7: $53
    ld sp, $3553                                  ; $4fb8: $31 $53 $35
    ld d, e                                       ; $4fbb: $53
    add hl, sp                                    ; $4fbc: $39
    ld d, e                                       ; $4fbd: $53
    dec a                                         ; $4fbe: $3d
    ld d, e                                       ; $4fbf: $53
    dec a                                         ; $4fc0: $3d
    ld d, e                                       ; $4fc1: $53
    ld b, e                                       ; $4fc2: $43
    ld d, e                                       ; $4fc3: $53
    ld c, c                                       ; $4fc4: $49
    ld d, e                                       ; $4fc5: $53
    ld c, a                                       ; $4fc6: $4f
    ld d, e                                       ; $4fc7: $53
    ld d, e                                       ; $4fc8: $53
    ld d, e                                       ; $4fc9: $53
    ld d, e                                       ; $4fca: $53
    ld d, e                                       ; $4fcb: $53
    ld d, a                                       ; $4fcc: $57
    ld d, e                                       ; $4fcd: $53
    ld l, b                                       ; $4fce: $68
    ld d, d                                       ; $4fcf: $52
    ld [hl], d                                    ; $4fd0: $72
    ld d, d                                       ; $4fd1: $52
    ld a, h                                       ; $4fd2: $7c
    ld d, d                                       ; $4fd3: $52
    ldh a, [rHDMA1]                               ; $4fd4: $f0 $51
    ld a, [$0451]                                 ; $4fd6: $fa $51 $04
    ld d, d                                       ; $4fd9: $52
    ld c, $52                                     ; $4fda: $0e $52
    jr jr_007_5030                                ; $4fdc: $18 $52

    ld [hl+], a                                   ; $4fde: $22
    ld d, d                                       ; $4fdf: $52
    inc l                                         ; $4fe0: $2c
    ld d, d                                       ; $4fe1: $52
    ld [hl], $52                                  ; $4fe2: $36 $52
    ld b, b                                       ; $4fe4: $40
    ld d, d                                       ; $4fe5: $52
    ld c, d                                       ; $4fe6: $4a
    ld d, d                                       ; $4fe7: $52
    ld d, h                                       ; $4fe8: $54
    ld d, d                                       ; $4fe9: $52
    ld e, [hl]                                    ; $4fea: $5e
    ld d, d                                       ; $4feb: $52
    jp nz, $cc52                                  ; $4fec: $c2 $52 $cc

    ld d, d                                       ; $4fef: $52
    sub $52                                       ; $4ff0: $d6 $52
    ldh [rHDMA2], a                               ; $4ff2: $e0 $52
    and h                                         ; $4ff4: $a4
    ld d, d                                       ; $4ff5: $52
    xor [hl]                                      ; $4ff6: $ae

jr_007_4ff7:
    ld d, d                                       ; $4ff7: $52
    cp b                                          ; $4ff8: $b8
    ld d, d                                       ; $4ff9: $52
    add [hl]                                      ; $4ffa: $86
    ld d, d                                       ; $4ffb: $52
    sub b                                         ; $4ffc: $90
    ld d, d                                       ; $4ffd: $52
    ld [$f452], a                                 ; $4ffe: $ea $52 $f4
    ld d, d                                       ; $5001: $52

jr_007_5002:
    cp $52                                        ; $5002: $fe $52
    ld [$1253], sp                                ; $5004: $08 $53 $12
    ld d, e                                       ; $5007: $53
    sbc d                                         ; $5008: $9a
    ld d, d                                       ; $5009: $52
    sbc [hl]                                      ; $500a: $9e
    ld d, b                                       ; $500b: $50
    and [hl]                                      ; $500c: $a6
    ld d, b                                       ; $500d: $50
    xor d                                         ; $500e: $aa
    ld d, b                                       ; $500f: $50
    xor [hl]                                      ; $5010: $ae
    ld d, b                                       ; $5011: $50
    or d                                          ; $5012: $b2
    ld d, b                                       ; $5013: $50
    or [hl]                                       ; $5014: $b6
    ld d, b                                       ; $5015: $50
    cp d                                          ; $5016: $ba
    ld d, b                                       ; $5017: $50
    cp [hl]                                       ; $5018: $be
    ld d, b                                       ; $5019: $50
    jp nz, $c650                                  ; $501a: $c2 $50 $c6

    ld d, b                                       ; $501d: $50
    adc $50                                       ; $501e: $ce $50
    sub $50                                       ; $5020: $d6 $50
    call c, $e050                                 ; $5022: $dc $50 $e0
    ld d, b                                       ; $5025: $50
    and $50                                       ; $5026: $e6 $50
    ld [$f450], a                                 ; $5028: $ea $50 $f4
    ld d, b                                       ; $502b: $50
    ld hl, sp+$50                                 ; $502c: $f8 $50
    db $fc                                        ; $502e: $fc
    ld d, b                                       ; $502f: $50

jr_007_5030:
    ld [bc], a                                    ; $5030: $02
    ld d, c                                       ; $5031: $51
    ld b, $51                                     ; $5032: $06 $51
    inc c                                         ; $5034: $0c
    ld d, c                                       ; $5035: $51
    db $10                                        ; $5036: $10
    ld d, c                                       ; $5037: $51
    ld d, $51                                     ; $5038: $16 $51
    ld a, [de]                                    ; $503a: $1a
    ld d, c                                       ; $503b: $51
    ld e, $51                                     ; $503c: $1e $51
    ld [hl+], a                                   ; $503e: $22
    ld d, c                                       ; $503f: $51
    jr z, @+$53                                   ; $5040: $28 $51

    inc l                                         ; $5042: $2c
    ld d, c                                       ; $5043: $51
    jr nc, @+$53                                  ; $5044: $30 $51

    inc [hl]                                      ; $5046: $34
    ld d, c                                       ; $5047: $51
    jr c, jr_007_509b                             ; $5048: $38 $51

    ld a, $51                                     ; $504a: $3e $51
    ld b, h                                       ; $504c: $44
    ld d, c                                       ; $504d: $51
    ld c, [hl]                                    ; $504e: $4e
    ld d, c                                       ; $504f: $51
    ld d, d                                       ; $5050: $52
    ld d, c                                       ; $5051: $51
    ld e, b                                       ; $5052: $58
    ld d, c                                       ; $5053: $51
    ld e, b                                       ; $5054: $58
    ld d, c                                       ; $5055: $51
    ld e, b                                       ; $5056: $58
    ld d, c                                       ; $5057: $51
    ld e, [hl]                                    ; $5058: $5e
    ld d, c                                       ; $5059: $51
    ld h, d                                       ; $505a: $62
    ld d, c                                       ; $505b: $51
    ld h, [hl]                                    ; $505c: $66
    ld d, c                                       ; $505d: $51
    ld l, d                                       ; $505e: $6a
    ld d, c                                       ; $505f: $51
    ld [hl], b                                    ; $5060: $70
    ld d, c                                       ; $5061: $51
    ld [hl], b                                    ; $5062: $70
    ld d, c                                       ; $5063: $51
    ld [hl], h                                    ; $5064: $74
    ld d, c                                       ; $5065: $51
    ld a, b                                       ; $5066: $78
    ld d, c                                       ; $5067: $51
    ld a, [hl]                                    ; $5068: $7e
    ld d, c                                       ; $5069: $51
    add d                                         ; $506a: $82
    ld d, c                                       ; $506b: $51
    add [hl]                                      ; $506c: $86
    ld d, c                                       ; $506d: $51
    adc d                                         ; $506e: $8a
    ld d, c                                       ; $506f: $51
    adc [hl]                                      ; $5070: $8e
    ld d, c                                       ; $5071: $51
    sub d                                         ; $5072: $92
    ld d, c                                       ; $5073: $51
    sub [hl]                                      ; $5074: $96
    ld d, c                                       ; $5075: $51
    sbc h                                         ; $5076: $9c
    ld d, c                                       ; $5077: $51
    and b                                         ; $5078: $a0
    ld d, c                                       ; $5079: $51
    and h                                         ; $507a: $a4
    ld d, c                                       ; $507b: $51
    xor b                                         ; $507c: $a8
    ld d, c                                       ; $507d: $51
    xor [hl]                                      ; $507e: $ae
    ld d, c                                       ; $507f: $51
    or h                                          ; $5080: $b4
    ld d, c                                       ; $5081: $51
    cp d                                          ; $5082: $ba
    ld d, c                                       ; $5083: $51
    ret nz                                        ; $5084: $c0

    ld d, c                                       ; $5085: $51
    call nz, $ca51                                ; $5086: $c4 $51 $ca
    ld d, c                                       ; $5089: $51
    ret nc                                        ; $508a: $d0

    ld d, c                                       ; $508b: $51
    ret c                                         ; $508c: $d8

jr_007_508d:
    ld d, c                                       ; $508d: $51
    sbc $51                                       ; $508e: $de $51
    db $e4                                        ; $5090: $e4
    ld d, c                                       ; $5091: $51
    ld [$f051], a                                 ; $5092: $ea $51 $f0
    ld d, c                                       ; $5095: $51
    ldh a, [rHDMA1]                               ; $5096: $f0 $51
    sbc d                                         ; $5098: $9a
    ld d, b                                       ; $5099: $50
    sbc c                                         ; $509a: $99

jr_007_509b:
    jr nz, jr_007_508d                            ; $509b: $20 $f0

    ld a, h                                       ; $509d: $7c
    sub b                                         ; $509e: $90
    rlca                                          ; $509f: $07
    ld d, [hl]                                    ; $50a0: $56
    ld a, e                                       ; $50a1: $7b
    ld [hl], a                                    ; $50a2: $77
    ld a, e                                       ; $50a3: $7b
    ldh a, [$ff7c]                                ; $50a4: $f0 $7c
    add b                                         ; $50a6: $80
    inc b                                         ; $50a7: $04
    sub d                                         ; $50a8: $92
    ld [hl], c                                    ; $50a9: $71
    add b                                         ; $50aa: $80
    ld bc, $71ab                                  ; $50ab: $01 $ab $71
    ld d, b                                       ; $50ae: $50
    ld bc, $71b6                                  ; $50af: $01 $b6 $71
    ld d, b                                       ; $50b2: $50
    ld bc, $71c5                                  ; $50b3: $01 $c5 $71
    ld d, b                                       ; $50b6: $50
    ld bc, $71d4                                  ; $50b7: $01 $d4 $71
    ld d, b                                       ; $50ba: $50
    ld bc, $71e3                                  ; $50bb: $01 $e3 $71
    ld d, b                                       ; $50be: $50
    ld bc, $71f1                                  ; $50bf: $01 $f1 $71
    adc b                                         ; $50c2: $88
    ld bc, $72e4                                  ; $50c3: $01 $e4 $72
    add b                                         ; $50c6: $80
    rlca                                          ; $50c7: $07
    ld h, $7c                                     ; $50c8: $26 $7c
    ld a, $7c                                     ; $50ca: $3e $7c
    ldh a, [$ff7c]                                ; $50cc: $f0 $7c
    add b                                         ; $50ce: $80
    rlca                                          ; $50cf: $07
    ld l, c                                       ; $50d0: $69
    ld a, h                                       ; $50d1: $7c
    ld d, e                                       ; $50d2: $53
    ld a, h                                       ; $50d3: $7c
    ldh a, [$ff7c]                                ; $50d4: $f0 $7c
    add b                                         ; $50d6: $80
    dec b                                         ; $50d7: $05
    rst RST_38                                    ; $50d8: $ff
    ld [hl], c                                    ; $50d9: $71
    ld h, $72                                     ; $50da: $26 $72
    add b                                         ; $50dc: $80
    ld bc, $7254                                  ; $50dd: $01 $54 $72
    add b                                         ; $50e0: $80
    dec b                                         ; $50e1: $05
    ld [hl], l                                    ; $50e2: $75
    ld [hl], d                                    ; $50e3: $72
    halt                                          ; $50e4: $76
    ld [hl], d                                    ; $50e5: $72
    add b                                         ; $50e6: $80
    inc b                                         ; $50e7: $04
    and a                                         ; $50e8: $a7
    ld [hl], d                                    ; $50e9: $72
    sub b                                         ; $50ea: $90
    ld a, b                                       ; $50eb: $78
    xor $7b                                       ; $50ec: $ee $7b
    ld bc, $137c                                  ; $50ee: $01 $7c $13
    ld a, h                                       ; $50f1: $7c
    ldh a, [$ff7c]                                ; $50f2: $f0 $7c
    add b                                         ; $50f4: $80
    ld bc, $72d4                                  ; $50f5: $01 $d4 $72
    add b                                         ; $50f8: $80
    ld bc, $72b4                                  ; $50f9: $01 $b4 $72
    add b                                         ; $50fc: $80
    dec b                                         ; $50fd: $05
    push af                                       ; $50fe: $f5
    ld [hl], d                                    ; $50ff: $72
    or $72                                        ; $5100: $f6 $72
    add b                                         ; $5102: $80
    inc b                                         ; $5103: $04
    cpl                                           ; $5104: $2f
    ld [hl], e                                    ; $5105: $73
    add b                                         ; $5106: $80
    dec b                                         ; $5107: $05
    dec a                                         ; $5108: $3d
    ld [hl], e                                    ; $5109: $73
    ld e, e                                       ; $510a: $5b
    ld [hl], e                                    ; $510b: $73
    add b                                         ; $510c: $80
    ld bc, $736e                                  ; $510d: $01 $6e $73
    add b                                         ; $5110: $80
    dec b                                         ; $5111: $05
    xor b                                         ; $5112: $a8
    ld [hl], e                                    ; $5113: $73
    bit 6, e                                      ; $5114: $cb $73
    ld [hl], b                                    ; $5116: $70
    inc b                                         ; $5117: $04
    pop af                                        ; $5118: $f1
    ld [hl], e                                    ; $5119: $73
    add b                                         ; $511a: $80
    inc b                                         ; $511b: $04
    db $10                                        ; $511c: $10
    ld [hl], h                                    ; $511d: $74
    ld [hl], b                                    ; $511e: $70
    ld bc, $7426                                  ; $511f: $01 $26 $74
    ld [hl], b                                    ; $5122: $70
    dec b                                         ; $5123: $05
    inc a                                         ; $5124: $3c
    ld [hl], h                                    ; $5125: $74
    halt                                          ; $5126: $76
    ld [hl], h                                    ; $5127: $74
    add b                                         ; $5128: $80
    ld bc, $7481                                  ; $5129: $01 $81 $74
    add b                                         ; $512c: $80
    ld bc, $74af                                  ; $512d: $01 $af $74
    add b                                         ; $5130: $80
    ld bc, $750b                                  ; $5131: $01 $0b $75
    add b                                         ; $5134: $80
    ld bc, $7550                                  ; $5135: $01 $50 $75
    add b                                         ; $5138: $80
    dec b                                         ; $5139: $05
    ld l, [hl]                                    ; $513a: $6e
    ld [hl], l                                    ; $513b: $75
    and l                                         ; $513c: $a5
    ld [hl], l                                    ; $513d: $75
    sub b                                         ; $513e: $90
    inc bc                                        ; $513f: $03
    xor e                                         ; $5140: $ab
    ld [hl], l                                    ; $5141: $75
    cp a                                          ; $5142: $bf
    ld [hl], l                                    ; $5143: $75
    sub b                                         ; $5144: $90
    ld a, b                                       ; $5145: $78
    add l                                         ; $5146: $85
    ld a, h                                       ; $5147: $7c
    and b                                         ; $5148: $a0
    ld a, h                                       ; $5149: $7c
    xor a                                         ; $514a: $af
    ld a, h                                       ; $514b: $7c
    ldh a, [$ff7c]                                ; $514c: $f0 $7c
    ld [hl], b                                    ; $514e: $70
    ld bc, $75e2                                  ; $514f: $01 $e2 $75
    add b                                         ; $5152: $80
    dec b                                         ; $5153: $05
    ld [$2f76], sp                                ; $5154: $08 $76 $2f
    halt                                          ; $5157: $76
    add b                                         ; $5158: $80
    dec b                                         ; $5159: $05
    ld h, b                                       ; $515a: $60
    halt                                          ; $515b: $76
    xor c                                         ; $515c: $a9
    halt                                          ; $515d: $76
    ld [hl], b                                    ; $515e: $70
    ld bc, $76e2                                  ; $515f: $01 $e2 $76
    add b                                         ; $5162: $80
    ld bc, $76fa                                  ; $5163: $01 $fa $76
    add b                                         ; $5166: $80
    ld bc, $771d                                  ; $5167: $01 $1d $77
    add b                                         ; $516a: $80
    inc bc                                        ; $516b: $03
    scf                                           ; $516c: $37
    ld [hl], a                                    ; $516d: $77
    dec a                                         ; $516e: $3d
    ld [hl], a                                    ; $516f: $77
    adc b                                         ; $5170: $88
    ld bc, $7757                                  ; $5171: $01 $57 $77
    adc b                                         ; $5174: $88
    ld bc, $7775                                  ; $5175: $01 $75 $77
    add b                                         ; $5178: $80
    dec b                                         ; $5179: $05
    sub h                                         ; $517a: $94
    ld [hl], a                                    ; $517b: $77
    and b                                         ; $517c: $a0
    ld [hl], a                                    ; $517d: $77
    add b                                         ; $517e: $80
    ld bc, $77a9                                  ; $517f: $01 $a9 $77
    add b                                         ; $5182: $80
    inc b                                         ; $5183: $04
    call nc, Call_007_7077                        ; $5184: $d4 $77 $70
    ld bc, $77f5                                  ; $5187: $01 $f5 $77
    sub b                                         ; $518a: $90
    ld bc, $781b                                  ; $518b: $01 $1b $78
    sub b                                         ; $518e: $90
    ld bc, $782a                                  ; $518f: $01 $2a $78
    sub b                                         ; $5192: $90
    ld bc, $784a                                  ; $5193: $01 $4a $78
    sub b                                         ; $5196: $90
    dec b                                         ; $5197: $05
    ld l, c                                       ; $5198: $69
    ld a, b                                       ; $5199: $78
    add h                                         ; $519a: $84
    ld a, b                                       ; $519b: $78
    adc b                                         ; $519c: $88
    ld bc, $78a5                                  ; $519d: $01 $a5 $78
    adc b                                         ; $51a0: $88
    ld bc, $78bc                                  ; $51a1: $01 $bc $78
    adc d                                         ; $51a4: $8a
    ld bc, $78d5                                  ; $51a5: $01 $d5 $78
    sub b                                         ; $51a8: $90
    dec b                                         ; $51a9: $05
    db $eb                                        ; $51aa: $eb
    ld a, b                                       ; $51ab: $78
    ld a, [bc]                                    ; $51ac: $0a
    ld a, c                                       ; $51ad: $79
    add b                                         ; $51ae: $80
    dec b                                         ; $51af: $05
    rrca                                          ; $51b0: $0f
    ld a, c                                       ; $51b1: $79
    inc h                                         ; $51b2: $24
    ld a, c                                       ; $51b3: $79
    add b                                         ; $51b4: $80
    inc bc                                        ; $51b5: $03
    ld a, [de]                                    ; $51b6: $1a
    ld a, d                                       ; $51b7: $7a
    inc a                                         ; $51b8: $3c
    ld a, d                                       ; $51b9: $7a
    add b                                         ; $51ba: $80
    dec b                                         ; $51bb: $05
    add hl, sp                                    ; $51bc: $39
    ld a, c                                       ; $51bd: $79
    ld b, l                                       ; $51be: $45
    ld a, c                                       ; $51bf: $79
    add b                                         ; $51c0: $80
    inc b                                         ; $51c1: $04
    ld c, l                                       ; $51c2: $4d
    ld a, c                                       ; $51c3: $79
    add b                                         ; $51c4: $80
    dec b                                         ; $51c5: $05
    ld h, l                                       ; $51c6: $65
    ld a, c                                       ; $51c7: $79
    sub l                                         ; $51c8: $95
    ld a, c                                       ; $51c9: $79
    sub b                                         ; $51ca: $90
    inc bc                                        ; $51cb: $03
    jp nz, $df79                                  ; $51cc: $c2 $79 $df

    ld a, c                                       ; $51cf: $79
    ld [hl], b                                    ; $51d0: $70
    rlca                                          ; $51d1: $07
    db $fd                                        ; $51d2: $fd
    ld a, c                                       ; $51d3: $79
    scf                                           ; $51d4: $37
    ld a, d                                       ; $51d5: $7a
    ld e, d                                       ; $51d6: $5a
    ld a, d                                       ; $51d7: $7a
    add b                                         ; $51d8: $80
    inc bc                                        ; $51d9: $03
    sbc h                                         ; $51da: $9c
    ld a, d                                       ; $51db: $7a
    and d                                         ; $51dc: $a2
    ld a, d                                       ; $51dd: $7a
    add b                                         ; $51de: $80
    inc bc                                        ; $51df: $03
    ld a, h                                       ; $51e0: $7c
    ld a, d                                       ; $51e1: $7a
    add d                                         ; $51e2: $82
    ld a, d                                       ; $51e3: $7a
    ld [hl], b                                    ; $51e4: $70
    dec b                                         ; $51e5: $05
    cp h                                          ; $51e6: $bc
    ld a, d                                       ; $51e7: $7a
    call c, $807a                                 ; $51e8: $dc $7a $80
    dec b                                         ; $51eb: $05
    nop                                           ; $51ec: $00
    ld a, e                                       ; $51ed: $7b
    ld l, $7b                                     ; $51ee: $2e $7b
    ld b, b                                       ; $51f0: $40
    ld a, b                                       ; $51f1: $78
    cpl                                           ; $51f2: $2f
    ld e, c                                       ; $51f3: $59
    ld a, h                                       ; $51f4: $7c
    ld e, c                                       ; $51f5: $59
    ld b, $5a                                     ; $51f6: $06 $5a
    ld c, [hl]                                    ; $51f8: $4e
    ld e, d                                       ; $51f9: $5a
    ld b, b                                       ; $51fa: $40
    ld a, b                                       ; $51fb: $78
    ld d, c                                       ; $51fc: $51
    ld e, c                                       ; $51fd: $59
    sbc d                                         ; $51fe: $9a
    ld e, c                                       ; $51ff: $59
    ld hl, $545a                                  ; $5200: $21 $5a $54
    ld e, d                                       ; $5203: $5a
    ld b, b                                       ; $5204: $40
    ld a, b                                       ; $5205: $78
    ld l, d                                       ; $5206: $6a
    ld e, d                                       ; $5207: $5a
    ld h, $5b                                     ; $5208: $26 $5b
    pop hl                                        ; $520a: $e1
    ld e, e                                       ; $520b: $5b
    and l                                         ; $520c: $a5
    ld e, h                                       ; $520d: $5c
    ld b, b                                       ; $520e: $40
    ld a, b                                       ; $520f: $78
    ld a, b                                       ; $5210: $78
    ld e, d                                       ; $5211: $5a
    inc [hl]                                      ; $5212: $34
    ld e, e                                       ; $5213: $5b
    db $ed                                        ; $5214: $ed
    ld e, e                                       ; $5215: $5b
    or d                                          ; $5216: $b2
    ld e, h                                       ; $5217: $5c
    ld b, b                                       ; $5218: $40
    ld a, b                                       ; $5219: $78
    call c, $805c                                 ; $521a: $dc $5c $80
    ld e, l                                       ; $521d: $5d
    db $ec                                        ; $521e: $ec
    ld e, l                                       ; $521f: $5d
    ld c, e                                       ; $5220: $4b
    ld e, [hl]                                    ; $5221: $5e
    ld b, b                                       ; $5222: $40
    ld a, b                                       ; $5223: $78
    dec e                                         ; $5224: $1d
    ld e, l                                       ; $5225: $5d
    cp l                                          ; $5226: $bd
    ld e, l                                       ; $5227: $5d
    dec c                                         ; $5228: $0d
    ld e, [hl]                                    ; $5229: $5e
    ld e, b                                       ; $522a: $58
    ld e, [hl]                                    ; $522b: $5e
    ld b, b                                       ; $522c: $40
    ld a, b                                       ; $522d: $78
    ld h, a                                       ; $522e: $67
    ld e, [hl]                                    ; $522f: $5e
    rst RST_00                                    ; $5230: $c7
    ld e, [hl]                                    ; $5231: $5e
    add sp, $5e                                   ; $5232: $e8 $5e
    rra                                           ; $5234: $1f
    ld e, a                                       ; $5235: $5f
    ld b, b                                       ; $5236: $40
    ld a, b                                       ; $5237: $78
    jr nz, jr_007_5299                            ; $5238: $20 $5f

    ld b, a                                       ; $523a: $47
    ld h, b                                       ; $523b: $60
    sub [hl]                                      ; $523c: $96
    ld h, c                                       ; $523d: $61
    ld a, [hl-]                                   ; $523e: $3a
    ld h, d                                       ; $523f: $62
    ld b, b                                       ; $5240: $40
    ld a, b                                       ; $5241: $78
    add b                                         ; $5242: $80
    ld h, d                                       ; $5243: $62
    ld b, a                                       ; $5244: $47
    ld h, e                                       ; $5245: $63
    pop af                                        ; $5246: $f1
    ld h, e                                       ; $5247: $63
    sbc d                                         ; $5248: $9a
    ld h, h                                       ; $5249: $64
    ld b, b                                       ; $524a: $40
    ld a, b                                       ; $524b: $78
    and c                                         ; $524c: $a1
    ld h, h                                       ; $524d: $64
    ld d, h                                       ; $524e: $54
    ld h, l                                       ; $524f: $65
    rst RST_30                                    ; $5250: $f7
    ld h, l                                       ; $5251: $65
    ld [hl], b                                    ; $5252: $70
    ld h, [hl]                                    ; $5253: $66
    ld b, b                                       ; $5254: $40
    ld a, b                                       ; $5255: $78
    or d                                          ; $5256: $b2
    ld h, h                                       ; $5257: $64
    ld h, a                                       ; $5258: $67
    ld h, l                                       ; $5259: $65
    inc b                                         ; $525a: $04
    ld h, [hl]                                    ; $525b: $66
    ld a, d                                       ; $525c: $7a
    ld h, [hl]                                    ; $525d: $66
    ld b, b                                       ; $525e: $40
    ld a, b                                       ; $525f: $78
    pop bc                                        ; $5260: $c1
    ld [hl], b                                    ; $5261: $70
    rra                                           ; $5262: $1f
    ld [hl], c                                    ; $5263: $71
    ld b, d                                       ; $5264: $42
    ld [hl], c                                    ; $5265: $71
    sub c                                         ; $5266: $91
    ld [hl], c                                    ; $5267: $71
    ld b, b                                       ; $5268: $40
    ld a, b                                       ; $5269: $78
    ei                                            ; $526a: $fb
    ld d, h                                       ; $526b: $54
    adc h                                         ; $526c: $8c
    ld d, l                                       ; $526d: $55
    rlca                                          ; $526e: $07
    ld d, [hl]                                    ; $526f: $56
    ld d, e                                       ; $5270: $53
    ld d, [hl]                                    ; $5271: $56
    ld b, b                                       ; $5272: $40
    ld a, b                                       ; $5273: $78
    ld a, c                                       ; $5274: $79
    ld d, [hl]                                    ; $5275: $56
    nop                                           ; $5276: $00
    ld d, a                                       ; $5277: $57
    ld a, [hl+]                                   ; $5278: $2a
    ld d, a                                       ; $5279: $57
    add a                                         ; $527a: $87
    ld d, a                                       ; $527b: $57
    ld b, b                                       ; $527c: $40
    ld a, b                                       ; $527d: $78
    adc e                                         ; $527e: $8b
    ld d, [hl]                                    ; $527f: $56
    inc c                                         ; $5280: $0c
    ld d, a                                       ; $5281: $57
    ld b, h                                       ; $5282: $44
    ld d, a                                       ; $5283: $57
    sub e                                         ; $5284: $93
    ld d, a                                       ; $5285: $57
    ld b, b                                       ; $5286: $40
    ld a, b                                       ; $5287: $78
    cp e                                          ; $5288: $bb
    ld d, a                                       ; $5289: $57
    call nc, $fa57                                ; $528a: $d4 $57 $fa
    ld d, a                                       ; $528d: $57
    rra                                           ; $528e: $1f
    ld e, b                                       ; $528f: $58
    ld b, b                                       ; $5290: $40
    ld a, b                                       ; $5291: $78
    jr nz, jr_007_52ec                            ; $5292: $20 $58

    sub [hl]                                      ; $5294: $96
    ld e, b                                       ; $5295: $58
    db $e3                                        ; $5296: $e3
    ld e, b                                       ; $5297: $58
    rla                                           ; $5298: $17

jr_007_5299:
    ld e, c                                       ; $5299: $59
    ld b, b                                       ; $529a: $40
    ld a, b                                       ; $529b: $78
    ld h, [hl]                                    ; $529c: $66
    ld e, [hl]                                    ; $529d: $5e
    ld h, [hl]                                    ; $529e: $66
    ld e, [hl]                                    ; $529f: $5e
    ld h, [hl]                                    ; $52a0: $66
    ld e, [hl]                                    ; $52a1: $5e
    ld h, [hl]                                    ; $52a2: $66
    ld e, [hl]                                    ; $52a3: $5e
    ld b, b                                       ; $52a4: $40
    ld a, b                                       ; $52a5: $78
    rst RST_08                                    ; $52a6: $cf
    ld h, [hl]                                    ; $52a7: $66
    rst RST_08                                    ; $52a8: $cf
    ld h, a                                       ; $52a9: $67
    add d                                         ; $52aa: $82
    ld l, b                                       ; $52ab: $68
    ld a, [hl+]                                   ; $52ac: $2a
    ld l, c                                       ; $52ad: $69
    ld b, b                                       ; $52ae: $40
    ld a, b                                       ; $52af: $78
    ld h, d                                       ; $52b0: $62
    ld l, c                                       ; $52b1: $69
    ld a, [bc]                                    ; $52b2: $0a
    ld l, d                                       ; $52b3: $6a
    adc e                                         ; $52b4: $8b
    ld l, d                                       ; $52b5: $6a
    cp c                                          ; $52b6: $b9
    ld l, d                                       ; $52b7: $6a
    ld b, b                                       ; $52b8: $40
    ld a, b                                       ; $52b9: $78
    ret nz                                        ; $52ba: $c0

    ld l, d                                       ; $52bb: $6a
    ld [de], a                                    ; $52bc: $12
    ld l, e                                       ; $52bd: $6b
    ld c, e                                       ; $52be: $4b
    ld l, e                                       ; $52bf: $6b
    sbc c                                         ; $52c0: $99
    ld l, e                                       ; $52c1: $6b
    ld b, b                                       ; $52c2: $40
    ld a, b                                       ; $52c3: $78
    cp d                                          ; $52c4: $ba
    ld a, h                                       ; $52c5: $7c
    sbc $7c                                       ; $52c6: $de $7c
    rst RST_20                                    ; $52c8: $e7
    ld a, h                                       ; $52c9: $7c
    ldh a, [$ff7c]                                ; $52ca: $f0 $7c
    ld b, b                                       ; $52cc: $40
    ld a, b                                       ; $52cd: $78
    sub [hl]                                      ; $52ce: $96
    ld a, e                                       ; $52cf: $7b
    or b                                          ; $52d0: $b0
    ld a, e                                       ; $52d1: $7b
    jp $f07b                                      ; $52d2: $c3 $7b $f0


    ld a, h                                       ; $52d5: $7c
    ld b, b                                       ; $52d6: $40
    ld a, b                                       ; $52d7: $78
    and $6f                                       ; $52d8: $e6 $6f
    ld [bc], a                                    ; $52da: $02
    ld [hl], b                                    ; $52db: $70
    jr nz, @+$72                                  ; $52dc: $20 $70

    dec sp                                        ; $52de: $3b
    ld [hl], b                                    ; $52df: $70
    ld b, b                                       ; $52e0: $40
    ld a, b                                       ; $52e1: $78

Jump_007_52e2:
    inc a                                         ; $52e2: $3c

Call_007_52e3:
Jump_007_52e3:
    ld [hl], b                                    ; $52e3: $70

Call_007_52e4:
Jump_007_52e4:
    ld l, d                                       ; $52e4: $6a

Jump_007_52e5:
    ld [hl], b                                    ; $52e5: $70
    sbc b                                         ; $52e6: $98
    ld [hl], b                                    ; $52e7: $70
    ret nz                                        ; $52e8: $c0

    ld [hl], b                                    ; $52e9: $70
    ld b, b                                       ; $52ea: $40
    ld a, b                                       ; $52eb: $78

jr_007_52ec:
    sbc d                                         ; $52ec: $9a
    ld l, e                                       ; $52ed: $6b
    db $e4                                        ; $52ee: $e4
    ld l, e                                       ; $52ef: $6b
    jr nz, jr_007_535e                            ; $52f0: $20 $6c

    ld d, [hl]                                    ; $52f2: $56
    ld l, h                                       ; $52f3: $6c
    ld b, b                                       ; $52f4: $40
    ld a, b                                       ; $52f5: $78
    ld a, d                                       ; $52f6: $7a
    ld l, h                                       ; $52f7: $6c
    cp [hl]                                       ; $52f8: $be
    ld l, h                                       ; $52f9: $6c
    inc b                                         ; $52fa: $04
    ld l, l                                       ; $52fb: $6d
    ld b, c                                       ; $52fc: $41
    ld l, l                                       ; $52fd: $6d
    ld b, b                                       ; $52fe: $40
    ld a, b                                       ; $52ff: $78
    ld e, [hl]                                    ; $5300: $5e
    ld l, l                                       ; $5301: $6d
    sbc [hl]                                      ; $5302: $9e
    ld l, l                                       ; $5303: $6d
    ret nz                                        ; $5304: $c0

    ld l, l                                       ; $5305: $6d
    xor $6d                                       ; $5306: $ee $6d
    ld b, b                                       ; $5308: $40
    ld a, b                                       ; $5309: $78
    inc c                                         ; $530a: $0c
    ld l, [hl]                                    ; $530b: $6e
    ld c, h                                       ; $530c: $4c
    ld l, [hl]                                    ; $530d: $6e
    add e                                         ; $530e: $83
    ld l, [hl]                                    ; $530f: $6e
    cp h                                          ; $5310: $bc
    ld l, [hl]                                    ; $5311: $6e
    ld b, b                                       ; $5312: $40
    ld a, b                                       ; $5313: $78
    rst RST_18                                    ; $5314: $df
    ld l, [hl]                                    ; $5315: $6e
    ld b, a                                       ; $5316: $47
    ld l, a                                       ; $5317: $6f
    add c                                         ; $5318: $81
    ld l, a                                       ; $5319: $6f
    cp a                                          ; $531a: $bf
    ld l, a                                       ; $531b: $6f
    ld [bc], a                                    ; $531c: $02
    inc bc                                        ; $531d: $03
    inc b                                         ; $531e: $04
    dec b                                         ; $531f: $05
    ld b, $07                                     ; $5320: $06 $07
    ld [$0a09], sp                                ; $5322: $08 $09 $0a
    dec bc                                        ; $5325: $0b
    inc c                                         ; $5326: $0c
    dec c                                         ; $5327: $0d
    ld c, $01                                     ; $5328: $0e $01
    inc b                                         ; $532a: $04
    ld e, e                                       ; $532b: $5b
    ld d, e                                       ; $532c: $53
    ld bc, $6404                                  ; $532d: $01 $04 $64
    ld d, e                                       ; $5330: $53
    ld bc, $dc04                                  ; $5331: $01 $04 $dc
    ld d, e                                       ; $5334: $53
    ld bc, $7904                                  ; $5335: $01 $04 $79
    ld d, e                                       ; $5338: $53
    ld bc, $8604                                  ; $5339: $01 $04 $86
    ld d, e                                       ; $533c: $53
    ld bc, $a305                                  ; $533d: $01 $05 $a3
    ld d, e                                       ; $5340: $53
    sub e                                         ; $5341: $93
    ld d, e                                       ; $5342: $53
    ld bc, $ba05                                  ; $5343: $01 $05 $ba
    ld d, e                                       ; $5346: $53
    xor [hl]                                      ; $5347: $ae
    ld d, e                                       ; $5348: $53
    ld bc, $d105                                  ; $5349: $01 $05 $d1
    ld d, e                                       ; $534c: $53
    jp $0153                                      ; $534d: $c3 $53 $01


    inc b                                         ; $5350: $04
    ld [hl], b                                    ; $5351: $70
    ld d, e                                       ; $5352: $53
    ld bc, $eb04                                  ; $5353: $01 $04 $eb
    ld d, e                                       ; $5356: $53
    ld bc, $f404                                  ; $5357: $01 $04 $f4
    ld d, e                                       ; $535a: $53
    ldh [rSB], a                                  ; $535b: $e0 $01
    ld h, c                                       ; $535d: $61

jr_007_535e:
    ld e, b                                       ; $535e: $58
    ldh [rSC], a                                  ; $535f: $e0 $02
    or h                                          ; $5361: $b4
    ld bc, $e0ff                                  ; $5362: $01 $ff $e0
    ld bc, $5861                                  ; $5365: $01 $61 $58
    ldh [rDIV], a                                 ; $5368: $e0 $04
    add h                                         ; $536a: $84
    db $10                                        ; $536b: $10
    ld de, $0011                                  ; $536c: $11 $11 $00
    rst RST_38                                    ; $536f: $ff
    ldh [rSC], a                                  ; $5370: $e0 $02
    add h                                         ; $5372: $84
    ld a, e                                       ; $5373: $7b
    ldh [rSB], a                                  ; $5374: $e0 $01
    ld b, d                                       ; $5376: $42
    ld b, c                                       ; $5377: $41
    rst RST_38                                    ; $5378: $ff
    ldh [rSB], a                                  ; $5379: $e0 $01
    pop af                                        ; $537b: $f1
    ccf                                           ; $537c: $3f
    ldh [$ff08], a                                ; $537d: $e0 $08
    ld h, d                                       ; $537f: $62
    ld b, d                                       ; $5380: $42
    ldh [rTIMA], a                                ; $5381: $e0 $05
    db $10                                        ; $5383: $10
    ld [hl+], a                                   ; $5384: $22
    rst RST_38                                    ; $5385: $ff
    ldh [rSB], a                                  ; $5386: $e0 $01
    add c                                         ; $5388: $81
    ccf                                           ; $5389: $3f
    ldh [rDIV], a                                 ; $538a: $e0 $04
    ld h, d                                       ; $538c: $62
    ld b, d                                       ; $538d: $42
    ldh [rTIMA], a                                ; $538e: $e0 $05
    db $10                                        ; $5390: $10
    ld [hl+], a                                   ; $5391: $22
    rst RST_38                                    ; $5392: $ff
    rst RST_28                                    ; $5393: $ef
    ldh a, [$ffe0]                                ; $5394: $f0 $e0
    ld bc, $48a0                                  ; $5396: $01 $a0 $48
    rst RST_28                                    ; $5399: $ef
    ldh a, [$ffe0]                                ; $539a: $f0 $e0
    inc bc                                        ; $539c: $03
    ld b, h                                       ; $539d: $44
    ld [hl+], a                                   ; $539e: $22
    inc hl                                        ; $539f: $23
    ld hl, $ff00                                  ; $53a0: $21 $00 $ff
    rst RST_28                                    ; $53a3: $ef
    ldh a, [$ffe0]                                ; $53a4: $f0 $e0
    inc b                                         ; $53a6: $04
    add l                                         ; $53a7: $85
    nop                                           ; $53a8: $00
    jp hl                                         ; $53a9: $e9


    ld e, $e3                                     ; $53aa: $1e $e3
    ld h, e                                       ; $53ac: $63
    rst RST_38                                    ; $53ad: $ff
    ldh [rSB], a                                  ; $53ae: $e0 $01
    sub b                                         ; $53b0: $90
    ld c, b                                       ; $53b1: $48
    ldh [$ff03], a                                ; $53b2: $e0 $03
    ld b, h                                       ; $53b4: $44
    ld [hl+], a                                   ; $53b5: $22
    inc hl                                        ; $53b6: $23
    ld hl, $ff00                                  ; $53b7: $21 $00 $ff
    ldh [rDIV], a                                 ; $53ba: $e0 $04
    add [hl]                                      ; $53bc: $86
    nop                                           ; $53bd: $00
    jp hl                                         ; $53be: $e9


    inc e                                         ; $53bf: $1c
    db $e3                                        ; $53c0: $e3
    ld h, e                                       ; $53c1: $63
    rst RST_38                                    ; $53c2: $ff
    rst RST_28                                    ; $53c3: $ef
    rrca                                          ; $53c4: $0f
    ldh [rSB], a                                  ; $53c5: $e0 $01
    and b                                         ; $53c7: $a0
    ld c, b                                       ; $53c8: $48
    ldh [$ff03], a                                ; $53c9: $e0 $03
    ld b, h                                       ; $53cb: $44
    ld [hl+], a                                   ; $53cc: $22
    inc hl                                        ; $53cd: $23
    ld hl, $ff00                                  ; $53ce: $21 $00 $ff
    rst RST_28                                    ; $53d1: $ef
    rrca                                          ; $53d2: $0f
    ldh [rDIV], a                                 ; $53d3: $e0 $04
    add l                                         ; $53d5: $85
    nop                                           ; $53d6: $00
    jp hl                                         ; $53d7: $e9


    dec de                                        ; $53d8: $1b
    db $e3                                        ; $53d9: $e3
    db $d3                                        ; $53da: $d3
    rst RST_38                                    ; $53db: $ff
    ldh [rSB], a                                  ; $53dc: $e0 $01
    and c                                         ; $53de: $a1
    ld e, b                                       ; $53df: $58
    ldh [rTIMA], a                                ; $53e0: $e0 $05
    ld h, e                                       ; $53e2: $63
    inc b                                         ; $53e3: $04
    dec d                                         ; $53e4: $15
    ld [de], a                                    ; $53e5: $12
    ld hl, $0011                                  ; $53e6: $21 $11 $00
    nop                                           ; $53e9: $00
    rst RST_38                                    ; $53ea: $ff
    ldh [rSB], a                                  ; $53eb: $e0 $01
    ld b, c                                       ; $53ed: $41
    ld e, b                                       ; $53ee: $58
    ldh [rSC], a                                  ; $53ef: $e0 $02
    ld d, h                                       ; $53f1: $54
    nop                                           ; $53f2: $00
    rst RST_38                                    ; $53f3: $ff
    ldh [rSB], a                                  ; $53f4: $e0 $01
    ld b, c                                       ; $53f6: $41
    ld e, b                                       ; $53f7: $58
    ldh [rDIV], a                                 ; $53f8: $e0 $04
    inc [hl]                                      ; $53fa: $34
    db $10                                        ; $53fb: $10
    ld de, $0011                                  ; $53fc: $11 $11 $00
    rst RST_38                                    ; $53ff: $ff
    inc h                                         ; $5400: $24
    ld d, h                                       ; $5401: $54
    inc h                                         ; $5402: $24
    ld d, h                                       ; $5403: $54
    cpl                                           ; $5404: $2f
    ld d, h                                       ; $5405: $54
    cpl                                           ; $5406: $2f
    ld d, h                                       ; $5407: $54
    ld a, $54                                     ; $5408: $3e $54
    ld c, l                                       ; $540a: $4d
    ld d, h                                       ; $540b: $54
    ld c, l                                       ; $540c: $4d
    ld d, h                                       ; $540d: $54
    ld e, [hl]                                    ; $540e: $5e
    ld d, h                                       ; $540f: $54
    ld l, e                                       ; $5410: $6b
    ld d, h                                       ; $5411: $54
    ld l, e                                       ; $5412: $6b
    ld d, h                                       ; $5413: $54
    ld a, b                                       ; $5414: $78
    ld d, h                                       ; $5415: $54
    add a                                         ; $5416: $87
    ld d, h                                       ; $5417: $54
    sub h                                         ; $5418: $94
    ld d, h                                       ; $5419: $54
    sub h                                         ; $541a: $94
    ld d, h                                       ; $541b: $54
    sub h                                         ; $541c: $94
    ld d, h                                       ; $541d: $54
    and e                                         ; $541e: $a3
    ld d, h                                       ; $541f: $54
    or d                                          ; $5420: $b2
    ld d, h                                       ; $5421: $54
    or d                                          ; $5422: $b2
    ld d, h                                       ; $5423: $54
    ei                                            ; $5424: $fb
    db $10                                        ; $5425: $10
    add hl, de                                    ; $5426: $19
    ld a, [de]                                    ; $5427: $1a
    add hl, de                                    ; $5428: $19
    db $10                                        ; $5429: $10
    ld de, $1112                                  ; $542a: $11 $12 $11
    cp $ff                                        ; $542d: $fe $ff
    ei                                            ; $542f: $fb
    db $10                                        ; $5430: $10
    ld de, $1312                                  ; $5431: $11 $12 $13
    ld [de], a                                    ; $5434: $12
    ld de, $1910                                  ; $5435: $11 $10 $19
    ld a, [de]                                    ; $5438: $1a
    dec de                                        ; $5439: $1b
    ld a, [de]                                    ; $543a: $1a
    add hl, de                                    ; $543b: $19
    cp $ff                                        ; $543c: $fe $ff
    ei                                            ; $543e: $fb
    db $10                                        ; $543f: $10
    ld de, $1322                                  ; $5440: $11 $22 $13
    ld [de], a                                    ; $5443: $12
    ld de, $1920                                  ; $5444: $11 $20 $19
    ld a, [hl+]                                   ; $5447: $2a
    dec de                                        ; $5448: $1b
    ld a, [de]                                    ; $5449: $1a
    add hl, de                                    ; $544a: $19
    cp $ff                                        ; $544b: $fe $ff
    pop hl                                        ; $544d: $e1
    ld b, c                                       ; $544e: $41
    ei                                            ; $544f: $fb
    ld de, $1312                                  ; $5450: $11 $12 $13
    inc d                                         ; $5453: $14
    inc de                                        ; $5454: $13
    ld [de], a                                    ; $5455: $12
    ld de, $1910                                  ; $5456: $11 $10 $19
    ld a, [de]                                    ; $5459: $1a
    add hl, de                                    ; $545a: $19
    add hl, de                                    ; $545b: $19
    cp $ff                                        ; $545c: $fe $ff
    xor c                                         ; $545e: $a9
    ei                                            ; $545f: $fb
    add hl, de                                    ; $5460: $19
    db $10                                        ; $5461: $10
    ld de, $1910                                  ; $5462: $11 $10 $19
    ld a, [de]                                    ; $5465: $1a
    dec de                                        ; $5466: $1b
    ld a, [de]                                    ; $5467: $1a
    add hl, de                                    ; $5468: $19
    cp $ff                                        ; $5469: $fe $ff
    rra                                           ; $546b: $1f
    ld [hl], b                                    ; $546c: $70
    ei                                            ; $546d: $fb
    db $10                                        ; $546e: $10
    ld hl, $2112                                  ; $546f: $21 $12 $21
    db $10                                        ; $5472: $10
    add hl, hl                                    ; $5473: $29
    ld a, [de]                                    ; $5474: $1a
    add hl, hl                                    ; $5475: $29
    cp $ff                                        ; $5476: $fe $ff
    ld e, $1a                                     ; $5478: $1e $1a
    ldh a, [$ffa0]                                ; $547a: $f0 $a0
    ei                                            ; $547c: $fb
    db $10                                        ; $547d: $10
    ld de, $1223                                  ; $547e: $11 $23 $12
    db $10                                        ; $5481: $10
    ld a, [de]                                    ; $5482: $1a
    inc l                                         ; $5483: $2c
    ld a, [de]                                    ; $5484: $1a
    cp $ff                                        ; $5485: $fe $ff
    inc de                                        ; $5487: $13
    ldh a, [$fffb]                                ; $5488: $f0 $fb
    db $10                                        ; $548a: $10
    ld de, $1112                                  ; $548b: $11 $12 $11
    db $10                                        ; $548e: $10
    add hl, de                                    ; $548f: $19
    ld a, [de]                                    ; $5490: $1a
    add hl, de                                    ; $5491: $19
    cp $ff                                        ; $5492: $fe $ff
    rra                                           ; $5494: $1f
    dec de                                        ; $5495: $1b
    add hl, de                                    ; $5496: $19
    ld d, b                                       ; $5497: $50
    ei                                            ; $5498: $fb
    db $10                                        ; $5499: $10
    ld hl, $2112                                  ; $549a: $21 $12 $21
    db $10                                        ; $549d: $10
    add hl, hl                                    ; $549e: $29
    ld a, [de]                                    ; $549f: $1a
    add hl, hl                                    ; $54a0: $29
    cp $ff                                        ; $54a1: $fe $ff
    dec de                                        ; $54a3: $1b
    ldh a, [$fffb]                                ; $54a4: $f0 $fb
    db $10                                        ; $54a6: $10
    ld de, $1312                                  ; $54a7: $11 $12 $13
    ld [de], a                                    ; $54aa: $12
    ld de, $1910                                  ; $54ab: $11 $10 $19
    ld a, [de]                                    ; $54ae: $1a
    add hl, de                                    ; $54af: $19
    cp $ff                                        ; $54b0: $fe $ff
    ld d, $10                                     ; $54b2: $16 $10
    rst RST_38                                    ; $54b4: $ff
    rst RST_38                                    ; $54b5: $ff
    rst RST_38                                    ; $54b6: $ff
    rst RST_38                                    ; $54b7: $ff
    rst RST_38                                    ; $54b8: $ff
    rst RST_38                                    ; $54b9: $ff
    rst RST_38                                    ; $54ba: $ff
    rst RST_38                                    ; $54bb: $ff
    rst RST_38                                    ; $54bc: $ff
    rst RST_38                                    ; $54bd: $ff
    rst RST_38                                    ; $54be: $ff
    rst RST_38                                    ; $54bf: $ff
    rst RST_38                                    ; $54c0: $ff
    rst RST_38                                    ; $54c1: $ff
    rst RST_38                                    ; $54c2: $ff
    rst RST_38                                    ; $54c3: $ff
    rst RST_38                                    ; $54c4: $ff
    rst RST_38                                    ; $54c5: $ff
    rst RST_38                                    ; $54c6: $ff
    rst RST_38                                    ; $54c7: $ff
    rst RST_38                                    ; $54c8: $ff
    rst RST_38                                    ; $54c9: $ff
    rst RST_38                                    ; $54ca: $ff
    rst RST_38                                    ; $54cb: $ff
    rst RST_38                                    ; $54cc: $ff
    rst RST_38                                    ; $54cd: $ff
    rst RST_38                                    ; $54ce: $ff
    rst RST_38                                    ; $54cf: $ff
    rst RST_38                                    ; $54d0: $ff
    rst RST_38                                    ; $54d1: $ff
    rst RST_38                                    ; $54d2: $ff
    rst RST_38                                    ; $54d3: $ff
    rst RST_38                                    ; $54d4: $ff
    rst RST_38                                    ; $54d5: $ff
    rst RST_38                                    ; $54d6: $ff
    rst RST_38                                    ; $54d7: $ff
    rst RST_38                                    ; $54d8: $ff
    rst RST_38                                    ; $54d9: $ff
    rst RST_38                                    ; $54da: $ff
    rst RST_38                                    ; $54db: $ff
    rst RST_38                                    ; $54dc: $ff
    rst RST_38                                    ; $54dd: $ff
    rst RST_38                                    ; $54de: $ff
    rst RST_38                                    ; $54df: $ff
    rst RST_38                                    ; $54e0: $ff
    rst RST_38                                    ; $54e1: $ff
    rst RST_38                                    ; $54e2: $ff
    rst RST_38                                    ; $54e3: $ff

Call_007_54e4:
    rst RST_38                                    ; $54e4: $ff

Call_007_54e5:
    rst RST_38                                    ; $54e5: $ff
    rst RST_38                                    ; $54e6: $ff
    rst RST_38                                    ; $54e7: $ff
    rst RST_38                                    ; $54e8: $ff
    rst RST_38                                    ; $54e9: $ff
    rst RST_38                                    ; $54ea: $ff
    rst RST_38                                    ; $54eb: $ff
    rst RST_38                                    ; $54ec: $ff
    rst RST_38                                    ; $54ed: $ff
    rst RST_38                                    ; $54ee: $ff
    rst RST_38                                    ; $54ef: $ff
    rst RST_38                                    ; $54f0: $ff
    rst RST_38                                    ; $54f1: $ff
    rst RST_38                                    ; $54f2: $ff
    rst RST_38                                    ; $54f3: $ff
    rst RST_38                                    ; $54f4: $ff
    rst RST_38                                    ; $54f5: $ff
    rst RST_38                                    ; $54f6: $ff
    rst RST_38                                    ; $54f7: $ff
    rst RST_38                                    ; $54f8: $ff
    rst RST_38                                    ; $54f9: $ff
    rst RST_38                                    ; $54fa: $ff
    ldh [$ff09], a                                ; $54fb: $e0 $09
    ld b, [hl]                                    ; $54fd: $46
    add l                                         ; $54fe: $85
    xor $11                                       ; $54ff: $ee $11
    ld [$ed02], a                                 ; $5501: $ea $02 $ed
    inc d                                         ; $5504: $14
    ld [$ebfe], sp                                ; $5505: $08 $fe $eb
    ld a, [bc]                                    ; $5508: $0a
    inc b                                         ; $5509: $04
    ld [$e834], a                                 ; $550a: $ea $34 $e8
    add h                                         ; $550d: $84
    db $fd                                        ; $550e: $fd
    ld d, a                                       ; $550f: $57
    ld d, l                                       ; $5510: $55
    ld [hl], c                                    ; $5511: $71
    rst RST_20                                    ; $5512: $e7
    ld [bc], a                                    ; $5513: $02
    ld [hl], d                                    ; $5514: $72
    ld h, c                                       ; $5515: $61
    ld d, c                                       ; $5516: $51
    ld b, c                                       ; $5517: $41
    ld sp, $1121                                  ; $5518: $31 $21 $11
    pop hl                                        ; $551b: $e1
    pop bc                                        ; $551c: $c1
    rst RST_20                                    ; $551d: $e7
    add hl, bc                                    ; $551e: $09
    db $fd                                        ; $551f: $fd
    ld d, a                                       ; $5520: $57
    ld d, l                                       ; $5521: $55
    ld [hl], c                                    ; $5522: $71
    rst RST_20                                    ; $5523: $e7
    ld bc, $6174                                  ; $5524: $01 $74 $61
    ld d, c                                       ; $5527: $51
    ld b, c                                       ; $5528: $41
    ld sp, $e721                                  ; $5529: $31 $21 $e7
    add hl, bc                                    ; $552c: $09
    ld [$1130], a                                 ; $552d: $ea $30 $11
    ld [hl], c                                    ; $5530: $71
    and c                                         ; $5531: $a1
    ld [hl], c                                    ; $5532: $71
    and c                                         ; $5533: $a1
    and e                                         ; $5534: $a3
    ld h, d                                       ; $5535: $62
    add c                                         ; $5536: $81
    and e                                         ; $5537: $a3
    ld h, d                                       ; $5538: $62
    sub e                                         ; $5539: $93
    sub c                                         ; $553a: $91
    ld [hl], d                                    ; $553b: $72
    sub d                                         ; $553c: $92
    ld sp, $9151                                  ; $553d: $31 $51 $91
    ld d, c                                       ; $5540: $51
    sub c                                         ; $5541: $91
    and e                                         ; $5542: $a3
    ld h, d                                       ; $5543: $62
    add c                                         ; $5544: $81
    and e                                         ; $5545: $a3
    ld h, d                                       ; $5546: $62
    inc [hl]                                      ; $5547: $34
    sub d                                         ; $5548: $92
    pop bc                                        ; $5549: $c1
    rst RST_20                                    ; $554a: $e7
    ld [bc], a                                    ; $554b: $02
    jp nz, $a1b1                                  ; $554c: $c2 $b1 $a1

    sub c                                         ; $554f: $91
    add c                                         ; $5550: $81
    ld [hl], c                                    ; $5551: $71
    ld h, c                                       ; $5552: $61
    ld d, c                                       ; $5553: $51
    rst RST_20                                    ; $5554: $e7
    add hl, bc                                    ; $5555: $09
    cp $e2                                        ; $5556: $fe $e2
    add c                                         ; $5558: $81
    and d                                         ; $5559: $a2
    ld [$ef38], a                                 ; $555a: $ea $38 $ef
    ldh a, [$ffe3]                                ; $555d: $f0 $e3
    inc hl                                        ; $555f: $23
    ld hl, $2312                                  ; $5560: $21 $12 $23
    rst RST_28                                    ; $5563: $ef
    rst RST_38                                    ; $5564: $ff
    ld [$e234], a                                 ; $5565: $ea $34 $e2
    add c                                         ; $5568: $81
    and d                                         ; $5569: $a2
    ld [$ef38], a                                 ; $556a: $ea $38 $ef
    rrca                                          ; $556d: $0f
    db $e3                                        ; $556e: $e3
    inc hl                                        ; $556f: $23
    ld hl, $2312                                  ; $5570: $21 $12 $23
    ld [$ef34], a                                 ; $5573: $ea $34 $ef
    rst RST_38                                    ; $5576: $ff
    ldh [c], a                                    ; $5577: $e2
    add c                                         ; $5578: $81
    and d                                         ; $5579: $a2
    db $e3                                        ; $557a: $e3
    inc hl                                        ; $557b: $23
    ldh [c], a                                    ; $557c: $e2
    add c                                         ; $557d: $81
    and d                                         ; $557e: $a2
    rst RST_28                                    ; $557f: $ef
    rst RST_38                                    ; $5580: $ff
    db $e3                                        ; $5581: $e3
    inc hl                                        ; $5582: $23
    ldh [c], a                                    ; $5583: $e2
    add c                                         ; $5584: $81
    and d                                         ; $5585: $a2
    ld [hl], e                                    ; $5586: $73
    ld [hl], c                                    ; $5587: $71
    ld [de], a                                    ; $5588: $12
    rst RST_28                                    ; $5589: $ef
    rst RST_38                                    ; $558a: $ff
    db $fd                                        ; $558b: $fd
    ldh [$ff09], a                                ; $558c: $e0 $09
    ld b, a                                       ; $558e: $47
    nop                                           ; $558f: $00
    ld [$0802], a                                 ; $5590: $ea $02 $08
    cp $ec                                        ; $5593: $fe $ec
    ld bc, $09e0                                  ; $5595: $01 $e0 $09
    ld b, a                                       ; $5598: $47

jr_007_5599:
    add l                                         ; $5599: $85
    db $fc                                        ; $559a: $fc
    db $eb                                        ; $559b: $eb
    dec bc                                        ; $559c: $0b
    inc b                                         ; $559d: $04
    db $ed                                        ; $559e: $ed
    inc d                                         ; $559f: $14
    db $fd                                        ; $55a0: $fd
    sub $55                                       ; $55a1: $d6 $55
    db $fc                                        ; $55a3: $fc
    ld [bc], a                                    ; $55a4: $02
    db $ec                                        ; $55a5: $ec
    ld [bc], a                                    ; $55a6: $02
    add sp, -$0b                                  ; $55a7: $e8 $f5
    db $ed                                        ; $55a9: $ed
    jr @-$14                                      ; $55aa: $18 $ea

    jr nc, jr_007_5599                            ; $55ac: $30 $eb

    dec b                                         ; $55ae: $05
    ld [hl-], a                                   ; $55af: $32
    db $e3                                        ; $55b0: $e3
    ld sp, $fafd                                  ; $55b1: $31 $fd $fa
    ld d, l                                       ; $55b4: $55
    db $e3                                        ; $55b5: $e3
    inc sp                                        ; $55b6: $33
    ld de, $32f3                                  ; $55b7: $11 $f3 $32
    ld de, $32f5                                  ; $55ba: $11 $f5 $32
    ld de, $fafd                                  ; $55bd: $11 $fd $fa
    ld d, l                                       ; $55c0: $55
    ld h, c                                       ; $55c1: $61
    add c                                         ; $55c2: $81
    sub c                                         ; $55c3: $91
    pop bc                                        ; $55c4: $c1
    db $e3                                        ; $55c5: $e3
    ld [hl-], a                                   ; $55c6: $32
    ld d, c                                       ; $55c7: $51
    db $ed                                        ; $55c8: $ed
    nop                                           ; $55c9: $00
    rst RST_20                                    ; $55ca: $e7
    ld [bc], a                                    ; $55cb: $02
    ld d, d                                       ; $55cc: $52
    ld b, c                                       ; $55cd: $41
    ld sp, $1121                                  ; $55ce: $31 $21 $11
    ldh [c], a                                    ; $55d1: $e2
    pop bc                                        ; $55d2: $c1
    or c                                          ; $55d3: $b1
    and c                                         ; $55d4: $a1
    cp $e3                                        ; $55d5: $fe $e3
    ld de, $a922                                  ; $55d7: $11 $22 $a9
    ld de, $8922                                  ; $55da: $11 $22 $89
    ld de, $7322                                  ; $55dd: $11 $22 $73
    ld de, $5322                                  ; $55e0: $11 $22 $53
    ld de, $e222                                  ; $55e3: $11 $22 $e2
    and e                                         ; $55e6: $a3
    and c                                         ; $55e7: $a1
    add d                                         ; $55e8: $82
    and c                                         ; $55e9: $a1
    db $eb                                        ; $55ea: $eb
    nop                                           ; $55eb: $00
    rst RST_20                                    ; $55ec: $e7
    ld [bc], a                                    ; $55ed: $02
    and d                                         ; $55ee: $a2
    sub c                                         ; $55ef: $91
    add c                                         ; $55f0: $81
    ld [hl], c                                    ; $55f1: $71
    ld h, c                                       ; $55f2: $61
    ld d, c                                       ; $55f3: $51
    ld b, c                                       ; $55f4: $41
    ld sp, $09e7                                  ; $55f5: $31 $e7 $09
    ldh a, [$fffd]                                ; $55f8: $f0 $fd
    ldh a, [rNR11]                                ; $55fa: $f0 $11
    ld sp, $4211                                  ; $55fc: $31 $11 $42
    ld b, c                                       ; $55ff: $41
    ld [hl-], a                                   ; $5600: $32
    ld sp, $1112                                  ; $5601: $31 $12 $11
    ldh [c], a                                    ; $5604: $e2
    and d                                         ; $5605: $a2
    db $fd                                        ; $5606: $fd
    ldh [$ff09], a                                ; $5607: $e0 $09
    ld [bc], a                                    ; $5609: $02
    add e                                         ; $560a: $83
    ld [$0c0e], a                                 ; $560b: $ea $0e $0c
    rst RST_28                                    ; $560e: $ef
    ldh a, [$ffea]                                ; $560f: $f0 $ea
    ld b, d                                       ; $5611: $42
    cp $fc                                        ; $5612: $fe $fc
    ei                                            ; $5614: $fb
    pop hl                                        ; $5615: $e1
    and e                                         ; $5616: $a3
    ldh [c], a                                    ; $5617: $e2
    ld d, d                                       ; $5618: $52
    ld d, c                                       ; $5619: $51
    pop hl                                        ; $561a: $e1
    ld d, e                                       ; $561b: $53
    ldh [c], a                                    ; $561c: $e2
    ld d, d                                       ; $561d: $52
    ld d, c                                       ; $561e: $51
    ei                                            ; $561f: $fb
    inc bc                                        ; $5620: $03
    pop hl                                        ; $5621: $e1
    inc sp                                        ; $5622: $33
    ldh [c], a                                    ; $5623: $e2
    ld [hl-], a                                   ; $5624: $32
    ld sp, $a3e1                                  ; $5625: $31 $e1 $a3
    ldh [c], a                                    ; $5628: $e2
    ld [hl-], a                                   ; $5629: $32
    ld sp, $02fc                                  ; $562a: $31 $fc $02
    pop hl                                        ; $562d: $e1
    ld h, e                                       ; $562e: $63
    ldh [c], a                                    ; $562f: $e2
    ld h, d                                       ; $5630: $62
    ld h, c                                       ; $5631: $61
    pop hl                                        ; $5632: $e1
    inc de                                        ; $5633: $13
    ldh [c], a                                    ; $5634: $e2
    ld h, d                                       ; $5635: $62
    ld h, c                                       ; $5636: $61
    pop hl                                        ; $5637: $e1
    ld d, e                                       ; $5638: $53
    ldh [c], a                                    ; $5639: $e2
    ld d, d                                       ; $563a: $52
    ld d, c                                       ; $563b: $51
    pop hl                                        ; $563c: $e1
    jp Jump_007_52e2                              ; $563d: $c3 $e2 $52


    ld d, c                                       ; $5640: $51
    pop hl                                        ; $5641: $e1
    ld h, e                                       ; $5642: $63
    ldh [c], a                                    ; $5643: $e2
    ld h, d                                       ; $5644: $62
    ld h, c                                       ; $5645: $61
    pop hl                                        ; $5646: $e1
    inc de                                        ; $5647: $13
    ldh [c], a                                    ; $5648: $e2
    ld h, d                                       ; $5649: $62
    ld h, c                                       ; $564a: $61
    pop hl                                        ; $564b: $e1
    ld d, e                                       ; $564c: $53
    ldh [c], a                                    ; $564d: $e2
    ld d, d                                       ; $564e: $52
    pop hl                                        ; $564f: $e1
    ld d, c                                       ; $5650: $51
    ld b, $fe                                     ; $5651: $06 $fe
    ldh [$ff09], a                                ; $5653: $e0 $09
    ld [hl], c                                    ; $5655: $71
    ld [hl], c                                    ; $5656: $71
    ld [hl], c                                    ; $5657: $71
    add c                                         ; $5658: $81
    add c                                         ; $5659: $81
    add c                                         ; $565a: $81
    sub d                                         ; $565b: $92
    pop bc                                        ; $565c: $c1
    ld de, $4151                                  ; $565d: $11 $51 $41
    cp $fb                                        ; $5660: $fe $fb
    and e                                         ; $5662: $a3
    inc de                                        ; $5663: $13
    ei                                            ; $5664: $fb
    rrca                                          ; $5665: $0f
    and d                                         ; $5666: $a2
    ld de, $2111                                  ; $5667: $11 $11 $21
    ld de, $a3fb                                  ; $566a: $11 $fb $a3
    ld [de], a                                    ; $566d: $12
    pop bc                                        ; $566e: $c1
    ei                                            ; $566f: $fb
    ld b, $a3                                     ; $5670: $06 $a3
    ld [de], a                                    ; $5672: $12
    ld [hl+], a                                   ; $5673: $22
    ei                                            ; $5674: $fb
    ld de, $05fb                                  ; $5675: $11 $fb $05
    cp $e0                                        ; $5678: $fe $e0
    rrca                                          ; $567a: $0f
    add hl, bc                                    ; $567b: $09
    add l                                         ; $567c: $85
    db $eb                                        ; $567d: $eb
    ld [$0100], sp                                ; $567e: $08 $00 $01
    rst RST_28                                    ; $5681: $ef
    ldh a, [$ffee]                                ; $5682: $f0 $ee
    ld de, $e2fd                                  ; $5684: $11 $fd $e2
    ld d, [hl]                                    ; $5687: $56
    rst RST_20                                    ; $5688: $e7
    inc b                                         ; $5689: $04
    ld bc, $0fe0                                  ; $568a: $01 $e0 $0f
    add hl, bc                                    ; $568d: $09
    add l                                         ; $568e: $85
    db $eb                                        ; $568f: $eb
    ld [$ee03], sp                                ; $5690: $08 $03 $ee
    ld de, $fef5                                  ; $5693: $11 $f5 $fe
    ld [$fc1c], a                                 ; $5696: $ea $1c $fc
    rst RST_28                                    ; $5699: $ef
    ldh a, [$fffd]                                ; $569a: $f0 $fd
    or d                                          ; $569c: $b2
    ld d, [hl]                                    ; $569d: $56
    rst RST_28                                    ; $569e: $ef
    rrca                                          ; $569f: $0f
    db $fd                                        ; $56a0: $fd
    or d                                          ; $56a1: $b2
    ld d, [hl]                                    ; $56a2: $56
    db $fc                                        ; $56a3: $fc
    inc bc                                        ; $56a4: $03
    rst RST_28                                    ; $56a5: $ef
    ldh a, [$ffea]                                ; $56a6: $f0 $ea
    add hl, de                                    ; $56a8: $19
    db $fd                                        ; $56a9: $fd
    or d                                          ; $56aa: $b2
    ld d, [hl]                                    ; $56ab: $56
    rst RST_28                                    ; $56ac: $ef
    rrca                                          ; $56ad: $0f
    db $fd                                        ; $56ae: $fd
    or d                                          ; $56af: $b2
    ld d, [hl]                                    ; $56b0: $56
    cp $fb                                        ; $56b1: $fe $fb
    rst RST_20                                    ; $56b3: $e7
    ld bc, $62e2                                  ; $56b4: $01 $e2 $62
    rst RST_20                                    ; $56b7: $e7
    ld c, $82                                     ; $56b8: $0e $82
    rst RST_20                                    ; $56ba: $e7
    rrca                                          ; $56bb: $0f
    db $e3                                        ; $56bc: $e3
    add c                                         ; $56bd: $81
    add c                                         ; $56be: $81
    add c                                         ; $56bf: $81
    add c                                         ; $56c0: $81
    add c                                         ; $56c1: $81
    add c                                         ; $56c2: $81
    ei                                            ; $56c3: $fb
    ld [bc], a                                    ; $56c4: $02
    rst RST_20                                    ; $56c5: $e7
    ld bc, $22e2                                  ; $56c6: $01 $e2 $22
    rst RST_20                                    ; $56c9: $e7
    ld c, $42                                     ; $56ca: $0e $42
    rst RST_20                                    ; $56cc: $e7
    rrca                                          ; $56cd: $0f
    db $e3                                        ; $56ce: $e3
    ei                                            ; $56cf: $fb
    or c                                          ; $56d0: $b1
    ei                                            ; $56d1: $fb
    ld b, $e7                                     ; $56d2: $06 $e7
    ld bc, $b2e2                                  ; $56d4: $01 $e2 $b2
    rst RST_20                                    ; $56d7: $e7
    ld c, $e3                                     ; $56d8: $0e $e3
    ld [de], a                                    ; $56da: $12
    rst RST_20                                    ; $56db: $e7
    rrca                                          ; $56dc: $0f
    ei                                            ; $56dd: $fb
    sub c                                         ; $56de: $91
    ei                                            ; $56df: $fb
    ld b, $fd                                     ; $56e0: $06 $fd
    or $e2                                        ; $56e2: $f6 $e2
    rst RST_20                                    ; $56e4: $e7
    ld bc, $e762                                  ; $56e5: $01 $62 $e7
    ld c, $82                                     ; $56e8: $0e $82
    rst RST_20                                    ; $56ea: $e7
    rrca                                          ; $56eb: $0f
    add d                                         ; $56ec: $82
    push af                                       ; $56ed: $f5
    add d                                         ; $56ee: $82
    add d                                         ; $56ef: $82
    db $f4                                        ; $56f0: $f4
    rst RST_20                                    ; $56f1: $e7
    ld bc, $e762                                  ; $56f2: $01 $62 $e7
    ld c, $82                                     ; $56f5: $0e $82
    rst RST_20                                    ; $56f7: $e7
    rrca                                          ; $56f8: $0f
    di                                            ; $56f9: $f3
    add d                                         ; $56fa: $82
    ldh a, [c]                                    ; $56fb: $f2
    add d                                         ; $56fc: $82
    pop af                                        ; $56fd: $f1
    add d                                         ; $56fe: $82
    db $fd                                        ; $56ff: $fd
    ldh [rIF], a                                  ; $5700: $e0 $0f
    ld [$efb5], sp                                ; $5702: $08 $b5 $ef
    rst RST_38                                    ; $5705: $ff
    db $eb                                        ; $5706: $eb
    rlca                                          ; $5707: $07
    nop                                           ; $5708: $00
    db $fd                                        ; $5709: $fd
    ldh [c], a                                    ; $570a: $e2
    ld d, [hl]                                    ; $570b: $56
    ldh [rIF], a                                  ; $570c: $e0 $0f
    ld [$ebb5], sp                                ; $570e: $08 $b5 $eb
    inc c                                         ; $5711: $0c
    ld [bc], a                                    ; $5712: $02
    add sp, -$0d                                  ; $5713: $e8 $f3
    ldh a, [$ffea]                                ; $5715: $f0 $ea
    inc c                                         ; $5717: $0c
    cp $ea                                        ; $5718: $fe $ea
    inc e                                         ; $571a: $1c
    db $fc                                        ; $571b: $fc
    db $fd                                        ; $571c: $fd
    or d                                          ; $571d: $b2
    ld d, [hl]                                    ; $571e: $56
    db $fc                                        ; $571f: $fc
    ld b, $ea                                     ; $5720: $06 $ea
    add hl, de                                    ; $5722: $19
    db $fc                                        ; $5723: $fc
    db $fd                                        ; $5724: $fd
    or d                                          ; $5725: $b2
    ld d, [hl]                                    ; $5726: $56
    db $fc                                        ; $5727: $fc
    ld [bc], a                                    ; $5728: $02
    cp $e0                                        ; $5729: $fe $e0
    rrca                                          ; $572b: $0f
    ld [bc], a                                    ; $572c: $02
    add l                                         ; $572d: $85
    ld [$ef42], a                                 ; $572e: $ea $42 $ef
    ldh a, [$ffeb]                                ; $5731: $f0 $eb
    rlca                                          ; $5733: $07
    ld [bc], a                                    ; $5734: $02
    ldh [c], a                                    ; $5735: $e2
    ei                                            ; $5736: $fb
    rst RST_20                                    ; $5737: $e7
    ld bc, $e762                                  ; $5738: $01 $62 $e7
    ld c, $82                                     ; $573b: $0e $82
    rst RST_20                                    ; $573d: $e7
    rrca                                          ; $573e: $0f
    add d                                         ; $573f: $82
    add d                                         ; $5740: $82
    add d                                         ; $5741: $82
    ei                                            ; $5742: $fb
    ld [bc], a                                    ; $5743: $02
    ldh [rIF], a                                  ; $5744: $e0 $0f
    ld [bc], a                                    ; $5746: $02
    add l                                         ; $5747: $85
    ld [$eb42], a                                 ; $5748: $ea $42 $eb
    rlca                                          ; $574b: $07
    ld [bc], a                                    ; $574c: $02
    rst RST_28                                    ; $574d: $ef
    rst RST_38                                    ; $574e: $ff
    cp $ea                                        ; $574f: $fe $ea
    inc c                                         ; $5751: $0c
    db $fc                                        ; $5752: $fc
    db $fd                                        ; $5753: $fd
    ld h, c                                       ; $5754: $61
    ld d, a                                       ; $5755: $57
    db $fc                                        ; $5756: $fc
    ld b, $ea                                     ; $5757: $06 $ea
    rrca                                          ; $5759: $0f
    db $fc                                        ; $575a: $fc
    db $fd                                        ; $575b: $fd
    ld h, c                                       ; $575c: $61
    ld d, a                                       ; $575d: $57
    db $fc                                        ; $575e: $fc
    ld [bc], a                                    ; $575f: $02
    cp $e1                                        ; $5760: $fe $e1
    ei                                            ; $5762: $fb
    rst RST_20                                    ; $5763: $e7
    ld bc, $e762                                  ; $5764: $01 $62 $e7
    ld c, $82                                     ; $5767: $0e $82
    rst RST_20                                    ; $5769: $e7
    rrca                                          ; $576a: $0f
    add d                                         ; $576b: $82
    add d                                         ; $576c: $82
    add d                                         ; $576d: $82
    ei                                            ; $576e: $fb
    ld [bc], a                                    ; $576f: $02
    rst RST_20                                    ; $5770: $e7
    ld bc, $e782                                  ; $5771: $01 $82 $e7
    ld c, $92                                     ; $5774: $0e $92
    rst RST_20                                    ; $5776: $e7
    rrca                                          ; $5777: $0f
    sub d                                         ; $5778: $92
    sub d                                         ; $5779: $92
    sub d                                         ; $577a: $92
    rst RST_20                                    ; $577b: $e7
    ld bc, $e742                                  ; $577c: $01 $42 $e7
    ld c, $62                                     ; $577f: $0e $62
    rst RST_20                                    ; $5781: $e7
    rrca                                          ; $5782: $0f
    ld h, d                                       ; $5783: $62
    ld h, d                                       ; $5784: $62
    ld h, d                                       ; $5785: $62
    db $fd                                        ; $5786: $fd
    ldh [rIF], a                                  ; $5787: $e0 $0f
    inc c                                         ; $5789: $0c
    ldh [rSB], a                                  ; $578a: $e0 $01
    ret z                                         ; $578c: $c8

    rst RST_00                                    ; $578d: $c7
    jr @+$19                                      ; $578e: $18 $17

    rst RST_20                                    ; $5790: $e7
    rrca                                          ; $5791: $0f
    ld [hl+], a                                   ; $5792: $22
    cp $e0                                        ; $5793: $fe $e0
    ld bc, $c718                                  ; $5795: $01 $18 $c7
    ret z                                         ; $5798: $c8

    rst RST_00                                    ; $5799: $c7
    rst RST_20                                    ; $579a: $e7
    rrca                                          ; $579b: $0f
    pop bc                                        ; $579c: $c1
    ld de, $c111                                  ; $579d: $11 $11 $c1
    pop bc                                        ; $57a0: $c1
    ld hl, $11c1                                  ; $57a1: $21 $c1 $11
    pop bc                                        ; $57a4: $c1
    ld de, $2111                                  ; $57a5: $11 $11 $21
    pop bc                                        ; $57a8: $c1
    ld de, $c111                                  ; $57a9: $11 $11 $c1
    pop bc                                        ; $57ac: $c1
    ei                                            ; $57ad: $fb
    pop bc                                        ; $57ae: $c1
    ld de, $03fb                                  ; $57af: $11 $fb $03
    ld hl, $2111                                  ; $57b2: $21 $11 $21
    ld de, $11c1                                  ; $57b5: $11 $c1 $11
    pop bc                                        ; $57b8: $c1
    cp $ff                                        ; $57b9: $fe $ff
    ldh [rTAC], a                                 ; $57bb: $e0 $07
    add [hl]                                      ; $57bd: $86
    add [hl]                                      ; $57be: $86
    db $eb                                        ; $57bf: $eb
    dec b                                         ; $57c0: $05
    ld b, e                                       ; $57c1: $43
    ld [$ef03], a                                 ; $57c2: $ea $03 $ef
    rrca                                          ; $57c5: $0f
    db $ec                                        ; $57c6: $ec
    inc b                                         ; $57c7: $04
    db $e3                                        ; $57c8: $e3
    ld e, b                                       ; $57c9: $58
    jr c, jr_007_57e4                             ; $57ca: $38 $18

    ldh [c], a                                    ; $57cc: $e2
    ret z                                         ; $57cd: $c8

    add sp, $58                                   ; $57ce: $e8 $58
    db $ec                                        ; $57d0: $ec
    dec bc                                        ; $57d1: $0b
    and b                                         ; $57d2: $a0
    rst RST_38                                    ; $57d3: $ff
    ldh [rTAC], a                                 ; $57d4: $e0 $07
    adc b                                         ; $57d6: $88
    add h                                         ; $57d7: $84
    db $eb                                        ; $57d8: $eb
    rlca                                          ; $57d9: $07
    nop                                           ; $57da: $00
    ld [$ec03], a                                 ; $57db: $ea $03 $ec
    dec bc                                        ; $57de: $0b
    db $e3                                        ; $57df: $e3
    and d                                         ; $57e0: $a2
    jp nc, $32e4                                  ; $57e1: $d2 $e4 $32

jr_007_57e4:
    db $e3                                        ; $57e4: $e3
    and d                                         ; $57e5: $a2
    add d                                         ; $57e6: $82
    jp nc, $32e4                                  ; $57e7: $d2 $e4 $32

    db $e3                                        ; $57ea: $e3
    add d                                         ; $57eb: $82
    ld h, d                                       ; $57ec: $62
    jp nc, $32e4                                  ; $57ed: $d2 $e4 $32

    db $e3                                        ; $57f0: $e3
    ld h, d                                       ; $57f1: $62
    ld d, h                                       ; $57f2: $54
    ld [hl-], a                                   ; $57f3: $32
    ld d, d                                       ; $57f4: $52
    db $eb                                        ; $57f5: $eb
    dec b                                         ; $57f6: $05
    and d                                         ; $57f7: $a2
    ld h, b                                       ; $57f8: $60
    rst RST_38                                    ; $57f9: $ff
    ldh [rTAC], a                                 ; $57fa: $e0 $07
    ld [bc], a                                    ; $57fc: $02
    nop                                           ; $57fd: $00
    db $eb                                        ; $57fe: $eb
    ld a, [bc]                                    ; $57ff: $0a
    inc b                                         ; $5800: $04
    ld [$ef03], a                                 ; $5801: $ea $03 $ef
    ldh a, [$ffe2]                                ; $5804: $f0 $e2
    ld h, d                                       ; $5806: $62
    db $e3                                        ; $5807: $e3
    ld [de], a                                    ; $5808: $12
    ld [hl-], a                                   ; $5809: $32
    ld [de], a                                    ; $580a: $12
    ldh [c], a                                    ; $580b: $e2
    ld d, d                                       ; $580c: $52
    db $e3                                        ; $580d: $e3
    ld [de], a                                    ; $580e: $12
    ld [hl-], a                                   ; $580f: $32
    ld [de], a                                    ; $5810: $12
    ldh [c], a                                    ; $5811: $e2
    ld [hl-], a                                   ; $5812: $32
    db $e3                                        ; $5813: $e3
    ld [de], a                                    ; $5814: $12
    ld [hl-], a                                   ; $5815: $32
    ld [de], a                                    ; $5816: $12
    ldh [c], a                                    ; $5817: $e2
    ld [de], a                                    ; $5818: $12
    add d                                         ; $5819: $82
    pop hl                                        ; $581a: $e1
    add d                                         ; $581b: $82
    jp nc, $ffb0                                  ; $581c: $d2 $b0 $ff

    rst RST_38                                    ; $581f: $ff
    ldh [rTMA], a                                 ; $5820: $e0 $06
    add a                                         ; $5822: $87
    add e                                         ; $5823: $83
    db $eb                                        ; $5824: $eb
    rlca                                          ; $5825: $07
    ld bc, $00ea                                  ; $5826: $01 $ea $00
    xor $11                                       ; $5829: $ee $11
    rst RST_28                                    ; $582b: $ef
    ldh a, [$fff6]                                ; $582c: $f0 $f6
    db $e3                                        ; $582e: $e3
    or e                                          ; $582f: $b3
    or c                                          ; $5830: $b1
    db $e4                                        ; $5831: $e4
    ld sp, $f531                                  ; $5832: $31 $31 $f5
    ld h, c                                       ; $5835: $61
    ld h, c                                       ; $5836: $61
    or c                                          ; $5837: $b1
    or c                                          ; $5838: $b1
    db $f4                                        ; $5839: $f4
    db $e4                                        ; $583a: $e4
    ld de, $5111                                  ; $583b: $11 $11 $51
    ld d, c                                       ; $583e: $51
    di                                            ; $583f: $f3
    add c                                         ; $5840: $81
    add c                                         ; $5841: $81
    rst RST_28                                    ; $5842: $ef
    rst RST_38                                    ; $5843: $ff
    ld [$e000], a                                 ; $5844: $ea $00 $e0
    ld b, $89                                     ; $5847: $06 $89
    pop af                                        ; $5849: $f1
    db $eb                                        ; $584a: $eb
    inc c                                         ; $584b: $0c
    nop                                           ; $584c: $00
    rst RST_28                                    ; $584d: $ef
    rrca                                          ; $584e: $0f
    ei                                            ; $584f: $fb
    ldh a, [$ffef]                                ; $5850: $f0 $ef
    rst RST_38                                    ; $5852: $ff
    db $e3                                        ; $5853: $e3
    ld sp, $f431                                  ; $5854: $31 $31 $f4
    rst RST_28                                    ; $5857: $ef
    rrca                                          ; $5858: $0f
    ld [hl], c                                    ; $5859: $71
    ei                                            ; $585a: $fb
    ld [bc], a                                    ; $585b: $02
    ei                                            ; $585c: $fb
    ldh a, [$ffef]                                ; $585d: $f0 $ef
    rst RST_38                                    ; $585f: $ff
    ld d, c                                       ; $5860: $51
    ld d, c                                       ; $5861: $51
    db $f4                                        ; $5862: $f4
    rst RST_28                                    ; $5863: $ef
    ldh a, [$ff91]                                ; $5864: $f0 $91
    ei                                            ; $5866: $fb
    ld [bc], a                                    ; $5867: $02
    ei                                            ; $5868: $fb
    ldh a, [$ffef]                                ; $5869: $f0 $ef
    rst RST_38                                    ; $586b: $ff
    ld h, c                                       ; $586c: $61
    ld h, c                                       ; $586d: $61
    db $f4                                        ; $586e: $f4
    rst RST_28                                    ; $586f: $ef
    rrca                                          ; $5870: $0f
    and c                                         ; $5871: $a1
    ei                                            ; $5872: $fb
    ld [bc], a                                    ; $5873: $02
    ldh a, [$ffef]                                ; $5874: $f0 $ef
    rst RST_38                                    ; $5876: $ff
    ld h, c                                       ; $5877: $61
    ld h, c                                       ; $5878: $61
    db $f4                                        ; $5879: $f4
    rst RST_28                                    ; $587a: $ef
    ldh a, [$ffc1]                                ; $587b: $f0 $c1
    rst RST_28                                    ; $587d: $ef
    rst RST_38                                    ; $587e: $ff
    ldh a, [$ff61]                                ; $587f: $f0 $61
    ld h, c                                       ; $5881: $61
    db $f4                                        ; $5882: $f4
    rst RST_28                                    ; $5883: $ef
    rrca                                          ; $5884: $0f
    pop bc                                        ; $5885: $c1
    ldh a, [$ffef]                                ; $5886: $f0 $ef
    rst RST_38                                    ; $5888: $ff
    ld h, c                                       ; $5889: $61
    rst RST_28                                    ; $588a: $ef
    ldh a, [$fff4]                                ; $588b: $f0 $f4
    pop bc                                        ; $588d: $c1
    rst RST_28                                    ; $588e: $ef
    rst RST_38                                    ; $588f: $ff
    ldh a, [$ffec]                                ; $5890: $f0 $ec
    dec b                                         ; $5892: $05
    ldh a, [c]                                    ; $5893: $f2
    xor h                                         ; $5894: $ac
    rst RST_38                                    ; $5895: $ff
    ldh [rTMA], a                                 ; $5896: $e0 $06
    adc d                                         ; $5898: $8a
    adc b                                         ; $5899: $88
    ld [$ef00], a                                 ; $589a: $ea $00 $ef
    rrca                                          ; $589d: $0f
    ld sp, hl                                     ; $589e: $f9
    db $e3                                        ; $589f: $e3
    or d                                          ; $58a0: $b2
    or c                                          ; $58a1: $b1
    db $e4                                        ; $58a2: $e4
    ld sp, $f831                                  ; $58a3: $31 $31 $f8
    ld h, c                                       ; $58a6: $61
    ld h, c                                       ; $58a7: $61
    or c                                          ; $58a8: $b1
    or c                                          ; $58a9: $b1
    rst RST_30                                    ; $58aa: $f7
    db $e4                                        ; $58ab: $e4
    ld de, $5111                                  ; $58ac: $11 $11 $51
    ld d, c                                       ; $58af: $51
    push af                                       ; $58b0: $f5
    add c                                         ; $58b1: $81
    add c                                         ; $58b2: $81
    pop de                                        ; $58b3: $d1
    rst RST_28                                    ; $58b4: $ef
    rst RST_38                                    ; $58b5: $ff
    ldh a, [$ffea]                                ; $58b6: $f0 $ea
    nop                                           ; $58b8: $00
    db $ed                                        ; $58b9: $ed
    inc d                                         ; $58ba: $14
    ldh [rTMA], a                                 ; $58bb: $e0 $06
    adc d                                         ; $58bd: $8a
    ldh a, [c]                                    ; $58be: $f2
    db $eb                                        ; $58bf: $eb
    ld a, [bc]                                    ; $58c0: $0a
    nop                                           ; $58c1: $00
    db $e3                                        ; $58c2: $e3
    ei                                            ; $58c3: $fb
    ld [hl], c                                    ; $58c4: $71
    ld [hl], c                                    ; $58c5: $71
    ld bc, $02fb                                  ; $58c6: $01 $fb $02
    ei                                            ; $58c9: $fb
    sub c                                         ; $58ca: $91
    sub c                                         ; $58cb: $91
    ld bc, $02fb                                  ; $58cc: $01 $fb $02
    ei                                            ; $58cf: $fb
    and c                                         ; $58d0: $a1
    and c                                         ; $58d1: $a1
    ld bc, $02fb                                  ; $58d2: $01 $fb $02
    ei                                            ; $58d5: $fb
    pop bc                                        ; $58d6: $c1
    pop bc                                        ; $58d7: $c1
    ld bc, $02fb                                  ; $58d8: $01 $fb $02
    pop bc                                        ; $58db: $c1
    pop de                                        ; $58dc: $d1
    db $ec                                        ; $58dd: $ec
    dec b                                         ; $58de: $05
    db $e4                                        ; $58df: $e4
    ldh a, [c]                                    ; $58e0: $f2
    inc l                                         ; $58e1: $2c
    rst RST_38                                    ; $58e2: $ff
    ldh [rTMA], a                                 ; $58e3: $e0 $06

Jump_007_58e5:
    ld [de], a                                    ; $58e5: $12
    ldh a, [c]                                    ; $58e6: $f2
    ld [$ed00], a                                 ; $58e7: $ea $00 $ed
    db $10                                        ; $58ea: $10
    db $e4                                        ; $58eb: $e4
    or c                                          ; $58ec: $b1
    or c                                          ; $58ed: $b1
    push hl                                       ; $58ee: $e5
    ld sp, $6131                                  ; $58ef: $31 $31 $61
    ld h, c                                       ; $58f2: $61
    or c                                          ; $58f3: $b1
    or c                                          ; $58f4: $b1
    ldh a, [$ffe5]                                ; $58f5: $f0 $e5
    ld de, $5111                                  ; $58f7: $11 $11 $51
    ld d, c                                       ; $58fa: $51
    add c                                         ; $58fb: $81
    add c                                         ; $58fc: $81
    pop de                                        ; $58fd: $d1
    pop de                                        ; $58fe: $d1
    ld [$e000], a                                 ; $58ff: $ea $00 $e0
    ld b, $02                                     ; $5902: $06 $02
    di                                            ; $5904: $f3
    ld [$fb0c], a                                 ; $5905: $ea $0c $fb
    pop hl                                        ; $5908: $e1
    ld sp, $e231                                  ; $5909: $31 $31 $e2
    ld sp, $31e1                                  ; $590c: $31 $e1 $31
    ei                                            ; $590f: $fb
    ld b, $31                                     ; $5910: $06 $31
    ld d, c                                       ; $5912: $51
    add sp, $00                                   ; $5913: $e8 $00
    xor h                                         ; $5915: $ac
    rst RST_38                                    ; $5916: $ff
    ldh [rTMA], a                                 ; $5917: $e0 $06
    inc c                                         ; $5919: $0c
    ld [hl], c                                    ; $591a: $71
    ld [hl], c                                    ; $591b: $71
    add c                                         ; $591c: $81
    sub c                                         ; $591d: $91
    ldh [rTMA], a                                 ; $591e: $e0 $06
    ei                                            ; $5920: $fb
    ld de, $01c1                                  ; $5921: $11 $c1 $01
    ei                                            ; $5924: $fb
    ld b, $41                                     ; $5925: $06 $41
    ld d, c                                       ; $5927: $51
    ld bc, $41fb                                  ; $5928: $01 $fb $41
    ei                                            ; $592b: $fb
    dec b                                         ; $592c: $05
    inc a                                         ; $592d: $3c
    rst RST_38                                    ; $592e: $ff
    ldh [rDIV], a                                 ; $592f: $e0 $04
    adc b                                         ; $5931: $88
    nop                                           ; $5932: $00
    ld [$0c17], a                                 ; $5933: $ea $17 $0c
    xor $22                                       ; $5936: $ee $22
    push af                                       ; $5938: $f5
    rst RST_28                                    ; $5939: $ef
    rrca                                          ; $593a: $0f
    rst RST_20                                    ; $593b: $e7
    ld bc, $c6e1                                  ; $593c: $01 $e1 $c6
    ldh [c], a                                    ; $593f: $e2
    inc d                                         ; $5940: $14
    inc h                                         ; $5941: $24
    ld [hl-], a                                   ; $5942: $32
    ld b, d                                       ; $5943: $42
    ld d, d                                       ; $5944: $52
    ld h, d                                       ; $5945: $62
    ld [hl], d                                    ; $5946: $72
    add d                                         ; $5947: $82
    sub d                                         ; $5948: $92
    and d                                         ; $5949: $a2
    or d                                          ; $594a: $b2
    jp nz, Jump_000_12e3                          ; $594b: $c2 $e3 $12

    ld [hl+], a                                   ; $594e: $22
    ld [hl-], a                                   ; $594f: $32
    ldh a, [$ffea]                                ; $5950: $f0 $ea
    dec b                                         ; $5952: $05
    rst RST_28                                    ; $5953: $ef
    rst RST_38                                    ; $5954: $ff
    ldh [rTIMA], a                                ; $5955: $e0 $05
    ld b, h                                       ; $5957: $44
    ldh a, [c]                                    ; $5958: $f2
    xor $22                                       ; $5959: $ee $22
    db $ed                                        ; $595b: $ed
    db $10                                        ; $595c: $10
    cp $eb                                        ; $595d: $fe $eb
    rlca                                          ; $595f: $07
    ld b, $e1                                     ; $5960: $06 $e1
    ei                                            ; $5962: $fb
    ld d, d                                       ; $5963: $52
    ld d, c                                       ; $5964: $51
    ld d, c                                       ; $5965: $51
    ei                                            ; $5966: $fb
    inc b                                         ; $5967: $04
    ei                                            ; $5968: $fb
    or d                                          ; $5969: $b2
    or c                                          ; $596a: $b1
    or c                                          ; $596b: $b1
    ei                                            ; $596c: $fb
    inc b                                         ; $596d: $04
    ei                                            ; $596e: $fb
    and d                                         ; $596f: $a2
    and c                                         ; $5970: $a1
    and c                                         ; $5971: $a1
    ei                                            ; $5972: $fb
    inc b                                         ; $5973: $04
    ldh [c], a                                    ; $5974: $e2
    ei                                            ; $5975: $fb
    ld b, d                                       ; $5976: $42
    ld b, c                                       ; $5977: $41
    ld b, c                                       ; $5978: $41
    ei                                            ; $5979: $fb
    inc b                                         ; $597a: $04
    cp $e0                                        ; $597b: $fe $e0
    inc b                                         ; $597d: $04
    ld c, b                                       ; $597e: $48
    nop                                           ; $597f: $00
    inc c                                         ; $5980: $0c
    ld [$f217], a                                 ; $5981: $ea $17 $f2
    rst RST_20                                    ; $5984: $e7
    ld bc, $c4e1                                  ; $5985: $01 $e1 $c4
    ldh [c], a                                    ; $5988: $e2
    inc d                                         ; $5989: $14
    inc h                                         ; $598a: $24
    ld [hl-], a                                   ; $598b: $32
    ld b, d                                       ; $598c: $42
    ld d, d                                       ; $598d: $52
    ld h, d                                       ; $598e: $62
    ld [hl], d                                    ; $598f: $72
    add d                                         ; $5990: $82
    sub d                                         ; $5991: $92
    and d                                         ; $5992: $a2
    or d                                          ; $5993: $b2
    jp nz, Jump_000_12e3                          ; $5994: $c2 $e3 $12

    ld [hl+], a                                   ; $5997: $22
    ld [hl-], a                                   ; $5998: $32
    ld b, d                                       ; $5999: $42
    ld [$fe05], a                                 ; $599a: $ea $05 $fe
    ldh a, [$ffe0]                                ; $599d: $f0 $e0
    dec b                                         ; $599f: $05
    ld a, [bc]                                    ; $59a0: $0a
    ldh a, [c]                                    ; $59a1: $f2
    db $eb                                        ; $59a2: $eb
    nop                                           ; $59a3: $00
    rst RST_28                                    ; $59a4: $ef
    rst RST_38                                    ; $59a5: $ff
    db $fc                                        ; $59a6: $fc
    ldh a, [$fffd]                                ; $59a7: $f0 $fd
    sub $59                                       ; $59a9: $d6 $59
    ld [$fc34], a                                 ; $59ab: $ea $34 $fc
    ld [bc], a                                    ; $59ae: $02
    ld [$fc30], a                                 ; $59af: $ea $30 $fc
    db $fd                                        ; $59b2: $fd
    ldh [c], a                                    ; $59b3: $e2
    ld e, c                                       ; $59b4: $59
    ld [$fc34], a                                 ; $59b5: $ea $34 $fc
    ld [bc], a                                    ; $59b8: $02
    ld [$fc30], a                                 ; $59b9: $ea $30 $fc
    db $fd                                        ; $59bc: $fd
    xor $59                                       ; $59bd: $ee $59
    ld [$fc34], a                                 ; $59bf: $ea $34 $fc
    ld [bc], a                                    ; $59c2: $02
    ld [$fd30], a                                 ; $59c3: $ea $30 $fd
    ld a, [$eb59]                                 ; $59c6: $fa $59 $eb
    nop                                           ; $59c9: $00
    ldh a, [$ffe2]                                ; $59ca: $f0 $e2
    ld b, c                                       ; $59cc: $41
    add c                                         ; $59cd: $81
    and c                                         ; $59ce: $a1
    pop de                                        ; $59cf: $d1
    db $e3                                        ; $59d0: $e3
    ld b, c                                       ; $59d1: $41
    add c                                         ; $59d2: $81
    and c                                         ; $59d3: $a1
    pop de                                        ; $59d4: $d1
    cp $f0                                        ; $59d5: $fe $f0
    ei                                            ; $59d7: $fb
    db $e3                                        ; $59d8: $e3
    ld d, c                                       ; $59d9: $51
    ldh [c], a                                    ; $59da: $e2
    pop bc                                        ; $59db: $c1
    add c                                         ; $59dc: $81
    ld d, c                                       ; $59dd: $51
    db $f4                                        ; $59de: $f4
    ei                                            ; $59df: $fb
    ld [bc], a                                    ; $59e0: $02
    db $fd                                        ; $59e1: $fd
    ldh a, [$fffb]                                ; $59e2: $f0 $fb
    db $e3                                        ; $59e4: $e3
    ld d, c                                       ; $59e5: $51
    ldh [c], a                                    ; $59e6: $e2
    or c                                          ; $59e7: $b1
    add c                                         ; $59e8: $81
    ld d, c                                       ; $59e9: $51
    db $f4                                        ; $59ea: $f4
    ei                                            ; $59eb: $fb
    ld [bc], a                                    ; $59ec: $02
    db $fd                                        ; $59ed: $fd
    ldh a, [$fffb]                                ; $59ee: $f0 $fb
    db $e3                                        ; $59f0: $e3
    and c                                         ; $59f1: $a1
    ld d, c                                       ; $59f2: $51
    ld de, $a1e2                                  ; $59f3: $11 $e2 $a1
    db $f4                                        ; $59f6: $f4
    ei                                            ; $59f7: $fb
    ld [bc], a                                    ; $59f8: $02
    db $fd                                        ; $59f9: $fd
    ldh a, [$fffb]                                ; $59fa: $f0 $fb
    db $e3                                        ; $59fc: $e3
    and c                                         ; $59fd: $a1
    ld d, c                                       ; $59fe: $51
    ldh [c], a                                    ; $59ff: $e2
    pop bc                                        ; $5a00: $c1
    and c                                         ; $5a01: $a1
    db $f4                                        ; $5a02: $f4
    ei                                            ; $5a03: $fb
    ld [bc], a                                    ; $5a04: $02
    db $fd                                        ; $5a05: $fd
    ldh [rDIV], a                                 ; $5a06: $e0 $04
    ld [hl+], a                                   ; $5a08: $22
    nop                                           ; $5a09: $00
    ld [$f017], a                                 ; $5a0a: $ea $17 $f0
    ei                                            ; $5a0d: $fb
    db $e4                                        ; $5a0e: $e4
    pop bc                                        ; $5a0f: $c1
    push hl                                       ; $5a10: $e5
    ld b, c                                       ; $5a11: $41
    ld [hl], c                                    ; $5a12: $71
    pop bc                                        ; $5a13: $c1
    pop af                                        ; $5a14: $f1
    ei                                            ; $5a15: $fb
    ld [bc], a                                    ; $5a16: $02
    ldh a, [c]                                    ; $5a17: $f2
    db $e4                                        ; $5a18: $e4
    pop bc                                        ; $5a19: $c1
    push hl                                       ; $5a1a: $e5
    ld b, c                                       ; $5a1b: $41
    ld [hl], c                                    ; $5a1c: $71
    pop bc                                        ; $5a1d: $c1
    rst RST_20                                    ; $5a1e: $e7
    dec b                                         ; $5a1f: $05
    ld [$05e0], sp                                ; $5a20: $08 $e0 $05
    ld b, d                                       ; $5a23: $42
    pop bc                                        ; $5a24: $c1
    ldh a, [$ffeb]                                ; $5a25: $f0 $eb
    ld a, [bc]                                    ; $5a27: $0a
    ld b, $ea                                     ; $5a28: $06 $ea
    rla                                           ; $5a2a: $17
    cp $ef                                        ; $5a2b: $fe $ef
    ldh a, [$fffb]                                ; $5a2d: $f0 $fb
    ldh [c], a                                    ; $5a2f: $e2
    ld d, d                                       ; $5a30: $52
    ld d, c                                       ; $5a31: $51
    ld d, c                                       ; $5a32: $51
    ei                                            ; $5a33: $fb
    inc b                                         ; $5a34: $04
    rst RST_28                                    ; $5a35: $ef
    rrca                                          ; $5a36: $0f
    ei                                            ; $5a37: $fb
    or d                                          ; $5a38: $b2
    or c                                          ; $5a39: $b1
    or c                                          ; $5a3a: $b1
    ei                                            ; $5a3b: $fb
    inc b                                         ; $5a3c: $04
    rst RST_28                                    ; $5a3d: $ef
    ldh a, [$fffb]                                ; $5a3e: $f0 $fb
    and d                                         ; $5a40: $a2
    and c                                         ; $5a41: $a1
    and c                                         ; $5a42: $a1
    ei                                            ; $5a43: $fb
    inc b                                         ; $5a44: $04
    rst RST_28                                    ; $5a45: $ef
    rrca                                          ; $5a46: $0f
    ei                                            ; $5a47: $fb
    ld b, d                                       ; $5a48: $42
    ld b, c                                       ; $5a49: $41
    ld b, c                                       ; $5a4a: $41
    ei                                            ; $5a4b: $fb
    inc b                                         ; $5a4c: $04
    cp $e0                                        ; $5a4d: $fe $e0
    inc b                                         ; $5a4f: $04
    inc c                                         ; $5a50: $0c
    ldh [rTIMA], a                                ; $5a51: $e0 $05
    ld [$05e0], sp                                ; $5a53: $08 $e0 $05
    cp $fb                                        ; $5a56: $fe $fb
    and c                                         ; $5a58: $a1
    pop bc                                        ; $5a59: $c1
    pop bc                                        ; $5a5a: $c1
    pop bc                                        ; $5a5b: $c1
    add c                                         ; $5a5c: $81
    pop bc                                        ; $5a5d: $c1
    pop bc                                        ; $5a5e: $c1
    and c                                         ; $5a5f: $a1
    ei                                            ; $5a60: $fb
    rlca                                          ; $5a61: $07
    ei                                            ; $5a62: $fb
    add c                                         ; $5a63: $81
    add c                                         ; $5a64: $81
    add c                                         ; $5a65: $81
    ld de, $02fb                                  ; $5a66: $11 $fb $02
    cp $e0                                        ; $5a69: $fe $e0
    dec bc                                        ; $5a6b: $0b
    add [hl]                                      ; $5a6c: $86
    db $10                                        ; $5a6d: $10
    db $ec                                        ; $5a6e: $ec
    inc b                                         ; $5a6f: $04
    db $eb                                        ; $5a70: $eb
    inc b                                         ; $5a71: $04
    ld h, e                                       ; $5a72: $63
    db $e3                                        ; $5a73: $e3
    db $10                                        ; $5a74: $10
    rst RST_20                                    ; $5a75: $e7
    ld [$fe08], sp                                ; $5a76: $08 $08 $fe
    ldh [$ff08], a                                ; $5a79: $e0 $08
    add [hl]                                      ; $5a7b: $86
    and d                                         ; $5a7c: $a2
    db $ed                                        ; $5a7d: $ed
    db $10                                        ; $5a7e: $10
    db $eb                                        ; $5a7f: $eb
    rlca                                          ; $5a80: $07
    dec b                                         ; $5a81: $05
    ei                                            ; $5a82: $fb
    rst RST_28                                    ; $5a83: $ef
    rst RST_38                                    ; $5a84: $ff
    ld [bc], a                                    ; $5a85: $02
    ldh [c], a                                    ; $5a86: $e2
    add c                                         ; $5a87: $81
    ld bc, $8182                                  ; $5a88: $01 $82 $81
    rst RST_28                                    ; $5a8b: $ef
    ldh a, [rHDMA2]                               ; $5a8c: $f0 $52
    ld d, c                                       ; $5a8e: $51
    rst RST_28                                    ; $5a8f: $ef
    rst RST_38                                    ; $5a90: $ff
    add c                                         ; $5a91: $81
    ld bc, $8182                                  ; $5a92: $01 $82 $81
    ld bc, $e202                                  ; $5a95: $01 $02 $e2
    add c                                         ; $5a98: $81
    ld bc, $8182                                  ; $5a99: $01 $82 $81
    rst RST_28                                    ; $5a9c: $ef
    rrca                                          ; $5a9d: $0f
    ld [hl], d                                    ; $5a9e: $72
    ld [hl], c                                    ; $5a9f: $71
    rst RST_28                                    ; $5aa0: $ef
    rst RST_38                                    ; $5aa1: $ff
    add c                                         ; $5aa2: $81
    ld bc, $8182                                  ; $5aa3: $01 $82 $81
    ld bc, $e202                                  ; $5aa6: $01 $02 $e2
    ld h, c                                       ; $5aa9: $61
    ld bc, $6162                                  ; $5aaa: $01 $62 $61
    rst RST_28                                    ; $5aad: $ef
    ldh a, [$ff82]                                ; $5aae: $f0 $82
    add c                                         ; $5ab0: $81
    rst RST_28                                    ; $5ab1: $ef
    rst RST_38                                    ; $5ab2: $ff
    ld h, c                                       ; $5ab3: $61
    ld bc, $6162                                  ; $5ab4: $01 $62 $61
    ld bc, $e202                                  ; $5ab7: $01 $02 $e2
    ld h, c                                       ; $5aba: $61
    ld bc, $6162                                  ; $5abb: $01 $62 $61
    rst RST_28                                    ; $5abe: $ef
    rrca                                          ; $5abf: $0f
    and d                                         ; $5ac0: $a2
    and c                                         ; $5ac1: $a1
    rst RST_28                                    ; $5ac2: $ef
    rst RST_38                                    ; $5ac3: $ff
    ld h, c                                       ; $5ac4: $61
    ld bc, $6162                                  ; $5ac5: $01 $62 $61
    ld bc, $02fb                                  ; $5ac8: $01 $fb $02
    db $eb                                        ; $5acb: $eb
    rlca                                          ; $5acc: $07
    ld [bc], a                                    ; $5acd: $02
    ldh a, [c]                                    ; $5ace: $f2
    ld bc, $fdfc                                  ; $5acf: $01 $fc $fd
    db $10                                        ; $5ad2: $10
    ld e, e                                       ; $5ad3: $5b

jr_007_5ad4:
    rst RST_28                                    ; $5ad4: $ef
    ldh a, [$ffea]                                ; $5ad5: $f0 $ea
    jr c, jr_007_5ad4                             ; $5ad7: $38 $fb

    db $e3                                        ; $5ad9: $e3
    ld d, c                                       ; $5ada: $51
    ld d, c                                       ; $5adb: $51
    ldh [c], a                                    ; $5adc: $e2
    pop bc                                        ; $5add: $c1
    pop bc                                        ; $5ade: $c1
    and c                                         ; $5adf: $a1
    and c                                         ; $5ae0: $a1
    ld h, c                                       ; $5ae1: $61
    ld h, c                                       ; $5ae2: $61
    rst RST_28                                    ; $5ae3: $ef
    rrca                                          ; $5ae4: $0f
    ld [$fb30], a                                 ; $5ae5: $ea $30 $fb
    ld [bc], a                                    ; $5ae8: $02
    db $fc                                        ; $5ae9: $fc
    inc bc                                        ; $5aea: $03
    db $fd                                        ; $5aeb: $fd
    db $10                                        ; $5aec: $10
    ld e, e                                       ; $5aed: $5b
    rst RST_28                                    ; $5aee: $ef
    ldh a, [$ffea]                                ; $5aef: $f0 $ea
    jr c, @-$1b                                   ; $5af1: $38 $e3

    pop bc                                        ; $5af3: $c1
    pop bc                                        ; $5af4: $c1
    add c                                         ; $5af5: $81
    add c                                         ; $5af6: $81
    ld b, c                                       ; $5af7: $41
    ld b, c                                       ; $5af8: $41
    db $e4                                        ; $5af9: $e4
    ld b, c                                       ; $5afa: $41
    ld b, c                                       ; $5afb: $41
    db $e3                                        ; $5afc: $e3
    pop bc                                        ; $5afd: $c1
    pop bc                                        ; $5afe: $c1
    add c                                         ; $5aff: $81
    rst RST_20                                    ; $5b00: $e7
    inc b                                         ; $5b01: $04
    db $e4                                        ; $5b02: $e4
    add c                                         ; $5b03: $81
    ld b, c                                       ; $5b04: $41
    db $e3                                        ; $5b05: $e3
    pop bc                                        ; $5b06: $c1
    add c                                         ; $5b07: $81
    ld b, c                                       ; $5b08: $41
    ldh [c], a                                    ; $5b09: $e2
    pop bc                                        ; $5b0a: $c1
    add c                                         ; $5b0b: $81
    ld b, c                                       ; $5b0c: $41
    rst RST_28                                    ; $5b0d: $ef
    rst RST_38                                    ; $5b0e: $ff
    cp $ef                                        ; $5b0f: $fe $ef
    ldh a, [$ffea]                                ; $5b11: $f0 $ea
    jr c, @-$03                                   ; $5b13: $38 $fb

    db $e3                                        ; $5b15: $e3
    sub c                                         ; $5b16: $91
    sub c                                         ; $5b17: $91
    ld d, c                                       ; $5b18: $51
    ld d, c                                       ; $5b19: $51
    ld hl, $e221                                  ; $5b1a: $21 $21 $e2
    and c                                         ; $5b1d: $a1
    and c                                         ; $5b1e: $a1
    rst RST_28                                    ; $5b1f: $ef
    rrca                                          ; $5b20: $0f
    ld [$fb30], a                                 ; $5b21: $ea $30 $fb
    ld [bc], a                                    ; $5b24: $02
    db $fd                                        ; $5b25: $fd
    ldh [$ff0b], a                                ; $5b26: $e0 $0b
    add a                                         ; $5b28: $87
    sub e                                         ; $5b29: $93
    db $ec                                        ; $5b2a: $ec
    inc b                                         ; $5b2b: $04
    db $eb                                        ; $5b2c: $eb
    dec b                                         ; $5b2d: $05
    add e                                         ; $5b2e: $83
    db $e3                                        ; $5b2f: $e3
    ret nz                                        ; $5b30: $c0

    rst RST_20                                    ; $5b31: $e7
    ld [$fe08], sp                                ; $5b32: $08 $08 $fe
    ldh [$ff08], a                                ; $5b35: $e0 $08
    ld b, a                                       ; $5b37: $47
    add c                                         ; $5b38: $81
    db $eb                                        ; $5b39: $eb
    dec b                                         ; $5b3a: $05
    ld [hl-], a                                   ; $5b3b: $32
    db $ed                                        ; $5b3c: $ed
    db $10                                        ; $5b3d: $10
    ei                                            ; $5b3e: $fb
    pop hl                                        ; $5b3f: $e1
    db $fd                                        ; $5b40: $fd
    or l                                          ; $5b41: $b5
    ld e, e                                       ; $5b42: $5b
    ldh [c], a                                    ; $5b43: $e2
    ld d, d                                       ; $5b44: $52
    ld d, c                                       ; $5b45: $51
    db $fd                                        ; $5b46: $fd
    sbc [hl]                                      ; $5b47: $9e
    ld e, e                                       ; $5b48: $5b
    db $fd                                        ; $5b49: $fd
    or l                                          ; $5b4a: $b5
    ld e, e                                       ; $5b4b: $5b
    ldh [c], a                                    ; $5b4c: $e2
    ld [hl], d                                    ; $5b4d: $72
    ld [hl], c                                    ; $5b4e: $71
    db $fd                                        ; $5b4f: $fd
    sbc [hl]                                      ; $5b50: $9e
    ld e, e                                       ; $5b51: $5b
    db $fd                                        ; $5b52: $fd
    pop bc                                        ; $5b53: $c1
    ld e, e                                       ; $5b54: $5b
    add d                                         ; $5b55: $82
    add c                                         ; $5b56: $81
    db $fd                                        ; $5b57: $fd
    xor d                                         ; $5b58: $aa
    ld e, e                                       ; $5b59: $5b
    db $fd                                        ; $5b5a: $fd
    pop bc                                        ; $5b5b: $c1
    ld e, e                                       ; $5b5c: $5b
    and d                                         ; $5b5d: $a2
    and c                                         ; $5b5e: $a1
    db $fd                                        ; $5b5f: $fd
    xor d                                         ; $5b60: $aa
    ld e, e                                       ; $5b61: $5b
    ei                                            ; $5b62: $fb
    ld [bc], a                                    ; $5b63: $02
    db $ed                                        ; $5b64: $ed
    nop                                           ; $5b65: $00
    db $fc                                        ; $5b66: $fc
    db $eb                                        ; $5b67: $eb
    dec b                                         ; $5b68: $05
    ld sp, $cdfd                                  ; $5b69: $31 $fd $cd
    ld e, e                                       ; $5b6c: $5b
    ei                                            ; $5b6d: $fb
    db $e3                                        ; $5b6e: $e3
    ld d, c                                       ; $5b6f: $51
    ld d, c                                       ; $5b70: $51
    ldh [c], a                                    ; $5b71: $e2
    pop bc                                        ; $5b72: $c1
    pop bc                                        ; $5b73: $c1
    and c                                         ; $5b74: $a1
    and c                                         ; $5b75: $a1
    ld h, c                                       ; $5b76: $61
    ld h, c                                       ; $5b77: $61
    ld [$fb30], a                                 ; $5b78: $ea $30 $fb
    ld [bc], a                                    ; $5b7b: $02
    db $fc                                        ; $5b7c: $fc
    inc bc                                        ; $5b7d: $03
    db $fd                                        ; $5b7e: $fd
    call $e35b                                    ; $5b7f: $cd $5b $e3
    pop bc                                        ; $5b82: $c1
    pop bc                                        ; $5b83: $c1
    add c                                         ; $5b84: $81
    add c                                         ; $5b85: $81
    ld b, c                                       ; $5b86: $41
    ld b, c                                       ; $5b87: $41
    db $e4                                        ; $5b88: $e4
    ld b, c                                       ; $5b89: $41
    ld b, c                                       ; $5b8a: $41
    db $e3                                        ; $5b8b: $e3
    pop bc                                        ; $5b8c: $c1
    pop bc                                        ; $5b8d: $c1
    add c                                         ; $5b8e: $81
    add c                                         ; $5b8f: $81
    rst RST_20                                    ; $5b90: $e7
    inc b                                         ; $5b91: $04
    db $e4                                        ; $5b92: $e4
    add c                                         ; $5b93: $81
    ld b, c                                       ; $5b94: $41
    db $e3                                        ; $5b95: $e3
    pop bc                                        ; $5b96: $c1
    add c                                         ; $5b97: $81
    ld b, c                                       ; $5b98: $41
    ldh [c], a                                    ; $5b99: $e2
    pop bc                                        ; $5b9a: $c1
    add c                                         ; $5b9b: $81
    ld b, c                                       ; $5b9c: $41
    cp $ea                                        ; $5b9d: $fe $ea
    inc [hl]                                      ; $5b9f: $34
    db $e3                                        ; $5ba0: $e3
    ld sp, $51e1                                  ; $5ba1: $31 $e1 $51
    db $e3                                        ; $5ba4: $e3
    ld [hl+], a                                   ; $5ba5: $22
    ld sp, $51e1                                  ; $5ba6: $31 $e1 $51
    db $fd                                        ; $5ba9: $fd
    ld [$d134], a                                 ; $5baa: $ea $34 $d1
    pop hl                                        ; $5bad: $e1
    ld sp, $c2e2                                  ; $5bae: $31 $e2 $c2
    pop de                                        ; $5bb1: $d1
    pop hl                                        ; $5bb2: $e1
    ld sp, $51fd                                  ; $5bb3: $31 $fd $51
    ld d, c                                       ; $5bb6: $51
    db $e3                                        ; $5bb7: $e3
    ld sp, $51e1                                  ; $5bb8: $31 $e1 $51
    db $e3                                        ; $5bbb: $e3
    ld [hl+], a                                   ; $5bbc: $22
    ld sp, $38ea                                  ; $5bbd: $31 $ea $38
    db $fd                                        ; $5bc0: $fd
    ld sp, $e231                                  ; $5bc1: $31 $31 $e2
    pop de                                        ; $5bc4: $d1
    pop hl                                        ; $5bc5: $e1
    ld sp, $c2e2                                  ; $5bc6: $31 $e2 $c2
    pop de                                        ; $5bc9: $d1
    ld [$fd38], a                                 ; $5bca: $ea $38 $fd
    ld [$fb38], a                                 ; $5bcd: $ea $38 $fb
    db $e3                                        ; $5bd0: $e3
    sub c                                         ; $5bd1: $91
    sub c                                         ; $5bd2: $91
    ld d, c                                       ; $5bd3: $51
    ld d, c                                       ; $5bd4: $51
    ld hl, $e221                                  ; $5bd5: $21 $21 $e2
    and c                                         ; $5bd8: $a1
    and c                                         ; $5bd9: $a1
    ld [$fb30], a                                 ; $5bda: $ea $30 $fb
    ld [bc], a                                    ; $5bdd: $02
    ld [$fd38], a                                 ; $5bde: $ea $38 $fd
    ldh [$ff0b], a                                ; $5be1: $e0 $0b
    ld [de], a                                    ; $5be3: $12
    nop                                           ; $5be4: $00
    db $e4                                        ; $5be5: $e4
    ld b, b                                       ; $5be6: $40
    rst RST_20                                    ; $5be7: $e7
    ld [$0aeb], sp                                ; $5be8: $08 $eb $0a
    ld [bc], a                                    ; $5beb: $02
    ld [$e0fe], sp                                ; $5bec: $08 $fe $e0
    ld [$a102], sp                                ; $5bef: $08 $02 $a1
    ei                                            ; $5bf2: $fb
    ldh [c], a                                    ; $5bf3: $e2
    ld d, c                                       ; $5bf4: $51
    db $e3                                        ; $5bf5: $e3
    ld d, c                                       ; $5bf6: $51
    ldh [c], a                                    ; $5bf7: $e2
    ld d, d                                       ; $5bf8: $52
    ld d, d                                       ; $5bf9: $52
    pop bc                                        ; $5bfa: $c1
    ld d, d                                       ; $5bfb: $52
    ld d, d                                       ; $5bfc: $52
    ld d, c                                       ; $5bfd: $51
    ld d, c                                       ; $5bfe: $51
    db $e3                                        ; $5bff: $e3
    ld d, c                                       ; $5c00: $51
    ldh [c], a                                    ; $5c01: $e2
    ld d, d                                       ; $5c02: $52
    ld d, c                                       ; $5c03: $51
    db $e3                                        ; $5c04: $e3
    ld d, c                                       ; $5c05: $51
    ldh [c], a                                    ; $5c06: $e2
    ld d, d                                       ; $5c07: $52
    ld d, c                                       ; $5c08: $51
    db $e3                                        ; $5c09: $e3
    ld sp, $c1e2                                  ; $5c0a: $31 $e2 $c1
    ld d, d                                       ; $5c0d: $52
    ld d, d                                       ; $5c0e: $52
    ld d, c                                       ; $5c0f: $51
    ld d, c                                       ; $5c10: $51
    ld d, c                                       ; $5c11: $51
    db $e3                                        ; $5c12: $e3
    ld sp, $e251                                  ; $5c13: $31 $51 $e2
    ld sp, $31e3                                  ; $5c16: $31 $e3 $31
    ldh [c], a                                    ; $5c19: $e2
    ld [hl-], a                                   ; $5c1a: $32
    ld [hl-], a                                   ; $5c1b: $32
    and c                                         ; $5c1c: $a1
    ld [hl-], a                                   ; $5c1d: $32
    ld [hl-], a                                   ; $5c1e: $32
    ld sp, $e331                                  ; $5c1f: $31 $31 $e3
    ld sp, $32e2                                  ; $5c22: $31 $e2 $32
    ld sp, $31e3                                  ; $5c25: $31 $e3 $31
    ldh [c], a                                    ; $5c28: $e2
    ld [hl-], a                                   ; $5c29: $32
    ld sp, $11e3                                  ; $5c2a: $31 $e3 $11
    ldh [c], a                                    ; $5c2d: $e2
    and c                                         ; $5c2e: $a1
    ld [hl-], a                                   ; $5c2f: $32
    ld [hl-], a                                   ; $5c30: $32
    ld sp, $3131                                  ; $5c31: $31 $31 $31
    db $e3                                        ; $5c34: $e3
    ld de, $fb31                                  ; $5c35: $11 $31 $fb
    ld [bc], a                                    ; $5c38: $02
    add sp, -$7d                                  ; $5c39: $e8 $83
    db $fd                                        ; $5c3b: $fd
    ld l, d                                       ; $5c3c: $6a
    ld e, h                                       ; $5c3d: $5c
    ldh [c], a                                    ; $5c3e: $e2
    add c                                         ; $5c3f: $81
    db $e3                                        ; $5c40: $e3
    add c                                         ; $5c41: $81
    ei                                            ; $5c42: $fb
    ldh [c], a                                    ; $5c43: $e2
    add c                                         ; $5c44: $81
    add c                                         ; $5c45: $81
    db $e3                                        ; $5c46: $e3
    add c                                         ; $5c47: $81
    ei                                            ; $5c48: $fb
    inc bc                                        ; $5c49: $03
    ldh [c], a                                    ; $5c4a: $e2
    add c                                         ; $5c4b: $81
    add c                                         ; $5c4c: $81
    add c                                         ; $5c4d: $81
    db $e3                                        ; $5c4e: $e3
    add c                                         ; $5c4f: $81
    ldh [c], a                                    ; $5c50: $e2
    add c                                         ; $5c51: $81
    db $fd                                        ; $5c52: $fd
    ld l, d                                       ; $5c53: $6a
    ld e, h                                       ; $5c54: $5c
    ldh [c], a                                    ; $5c55: $e2
    ld h, c                                       ; $5c56: $61
    db $e3                                        ; $5c57: $e3
    ld h, c                                       ; $5c58: $61
    ei                                            ; $5c59: $fb
    ldh [c], a                                    ; $5c5a: $e2
    ld h, c                                       ; $5c5b: $61
    ld h, c                                       ; $5c5c: $61
    db $e3                                        ; $5c5d: $e3
    ld h, c                                       ; $5c5e: $61
    ei                                            ; $5c5f: $fb
    inc bc                                        ; $5c60: $03
    ldh [c], a                                    ; $5c61: $e2
    ld h, c                                       ; $5c62: $61
    ld h, c                                       ; $5c63: $61
    ld h, c                                       ; $5c64: $61
    db $e3                                        ; $5c65: $e3
    ld h, c                                       ; $5c66: $61
    ldh [c], a                                    ; $5c67: $e2
    ld h, c                                       ; $5c68: $61
    cp $e2                                        ; $5c69: $fe $e2
    ld [hl], c                                    ; $5c6b: $71
    db $e3                                        ; $5c6c: $e3
    ld [hl], c                                    ; $5c6d: $71
    ei                                            ; $5c6e: $fb
    ldh [c], a                                    ; $5c6f: $e2
    ld [hl], c                                    ; $5c70: $71
    ld [hl], c                                    ; $5c71: $71
    db $e3                                        ; $5c72: $e3
    ld [hl], c                                    ; $5c73: $71
    ei                                            ; $5c74: $fb
    inc bc                                        ; $5c75: $03
    ldh [c], a                                    ; $5c76: $e2
    ld [hl], c                                    ; $5c77: $71
    ld [hl], c                                    ; $5c78: $71
    ld [hl], c                                    ; $5c79: $71
    db $e3                                        ; $5c7a: $e3
    ld [hl], c                                    ; $5c7b: $71
    ldh [c], a                                    ; $5c7c: $e2
    ld [hl], c                                    ; $5c7d: $71
    ld h, c                                       ; $5c7e: $61
    db $e3                                        ; $5c7f: $e3
    ld h, c                                       ; $5c80: $61
    ei                                            ; $5c81: $fb
    ldh [c], a                                    ; $5c82: $e2
    ld h, c                                       ; $5c83: $61
    ld h, c                                       ; $5c84: $61
    db $e3                                        ; $5c85: $e3
    ld h, c                                       ; $5c86: $61
    ei                                            ; $5c87: $fb
    inc bc                                        ; $5c88: $03
    ldh [c], a                                    ; $5c89: $e2
    ld h, c                                       ; $5c8a: $61
    ld h, c                                       ; $5c8b: $61
    ld h, c                                       ; $5c8c: $61
    db $e3                                        ; $5c8d: $e3
    ld h, c                                       ; $5c8e: $61
    ldh [c], a                                    ; $5c8f: $e2
    ld h, c                                       ; $5c90: $61
    ld [hl], c                                    ; $5c91: $71
    db $e3                                        ; $5c92: $e3
    ld [hl], c                                    ; $5c93: $71
    ei                                            ; $5c94: $fb
    ldh [c], a                                    ; $5c95: $e2
    ld [hl], c                                    ; $5c96: $71
    ld [hl], c                                    ; $5c97: $71
    db $e3                                        ; $5c98: $e3
    ld [hl], c                                    ; $5c99: $71
    ei                                            ; $5c9a: $fb
    inc bc                                        ; $5c9b: $03
    ldh [c], a                                    ; $5c9c: $e2
    ld [hl], c                                    ; $5c9d: $71
    ld [hl], c                                    ; $5c9e: $71
    ld [hl], c                                    ; $5c9f: $71
    db $e3                                        ; $5ca0: $e3
    ld [hl], c                                    ; $5ca1: $71
    ldh [c], a                                    ; $5ca2: $e2
    ld [hl], c                                    ; $5ca3: $71
    db $fd                                        ; $5ca4: $fd
    ldh [$ff0b], a                                ; $5ca5: $e0 $0b
    nop                                           ; $5ca7: $00
    rst RST_20                                    ; $5ca8: $e7
    ld [$7171], sp                                ; $5ca9: $08 $71 $71
    ld [hl], c                                    ; $5cac: $71
    add c                                         ; $5cad: $81
    add c                                         ; $5cae: $81
    add c                                         ; $5caf: $81
    sub c                                         ; $5cb0: $91
    sub c                                         ; $5cb1: $91
    ldh [$ff08], a                                ; $5cb2: $e0 $08
    cp $fb                                        ; $5cb4: $fe $fb
    and c                                         ; $5cb6: $a1
    and c                                         ; $5cb7: $a1
    ld de, $41c1                                  ; $5cb8: $11 $c1 $41
    ld de, $11c1                                  ; $5cbb: $11 $c1 $11
    ei                                            ; $5cbe: $fb
    rrca                                          ; $5cbf: $0f
    ld b, c                                       ; $5cc0: $41
    ld b, c                                       ; $5cc1: $41
    ld b, c                                       ; $5cc2: $41
    ld b, c                                       ; $5cc3: $41
    ld de, $4141                                  ; $5cc4: $11 $41 $41
    ld b, c                                       ; $5cc7: $41
    ei                                            ; $5cc8: $fb
    and c                                         ; $5cc9: $a1
    and c                                         ; $5cca: $a1
    ld de, $41c1                                  ; $5ccb: $11 $c1 $41
    ld de, $51c1                                  ; $5cce: $11 $c1 $51
    ei                                            ; $5cd1: $fb
    rrca                                          ; $5cd2: $0f
    and c                                         ; $5cd3: $a1
    and c                                         ; $5cd4: $a1
    ld b, c                                       ; $5cd5: $41
    ld de, $4141                                  ; $5cd6: $11 $41 $41
    ld b, c                                       ; $5cd9: $41
    pop bc                                        ; $5cda: $c1
    cp $e0                                        ; $5cdb: $fe $e0
    ld [$f448], sp                                ; $5cdd: $08 $48 $f4
    db $eb                                        ; $5ce0: $eb
    rlca                                          ; $5ce1: $07
    ld [bc], a                                    ; $5ce2: $02
    xor $11                                       ; $5ce3: $ee $11
    push af                                       ; $5ce5: $f5
    rst RST_28                                    ; $5ce6: $ef
    ldh a, [$ffe1]                                ; $5ce7: $f0 $e1
    and e                                         ; $5ce9: $a3
    and c                                         ; $5cea: $a1
    pop hl                                        ; $5ceb: $e1
    and c                                         ; $5cec: $a1
    and c                                         ; $5ced: $a1
    and c                                         ; $5cee: $a1
    db $e3                                        ; $5cef: $e3
    and c                                         ; $5cf0: $a1
    pop hl                                        ; $5cf1: $e1
    and c                                         ; $5cf2: $a1
    and c                                         ; $5cf3: $a1
    db $f4                                        ; $5cf4: $f4
    rst RST_28                                    ; $5cf5: $ef
    rrca                                          ; $5cf6: $0f
    pop hl                                        ; $5cf7: $e1
    or c                                          ; $5cf8: $b1
    or c                                          ; $5cf9: $b1
    db $e3                                        ; $5cfa: $e3
    and c                                         ; $5cfb: $a1
    pop hl                                        ; $5cfc: $e1
    or c                                          ; $5cfd: $b1
    or c                                          ; $5cfe: $b1
    db $e3                                        ; $5cff: $e3
    and c                                         ; $5d00: $a1
    pop hl                                        ; $5d01: $e1
    or c                                          ; $5d02: $b1
    or c                                          ; $5d03: $b1
    di                                            ; $5d04: $f3
    rst RST_28                                    ; $5d05: $ef
    ldh a, [$ffe1]                                ; $5d06: $f0 $e1
    pop de                                        ; $5d08: $d1
    pop de                                        ; $5d09: $d1
    db $e3                                        ; $5d0a: $e3
    and c                                         ; $5d0b: $a1
    pop hl                                        ; $5d0c: $e1
    pop de                                        ; $5d0d: $d1
    pop de                                        ; $5d0e: $d1
    db $e3                                        ; $5d0f: $e3
    and c                                         ; $5d10: $a1
    pop hl                                        ; $5d11: $e1
    pop de                                        ; $5d12: $d1
    pop de                                        ; $5d13: $d1
    db $f4                                        ; $5d14: $f4
    pop hl                                        ; $5d15: $e1
    or c                                          ; $5d16: $b1
    or c                                          ; $5d17: $b1
    db $e3                                        ; $5d18: $e3
    and c                                         ; $5d19: $a1
    pop hl                                        ; $5d1a: $e1
    or c                                          ; $5d1b: $b1
    ld [bc], a                                    ; $5d1c: $02
    ldh [$ff08], a                                ; $5d1d: $e0 $08
    ld c, b                                       ; $5d1f: $48
    ldh a, [c]                                    ; $5d20: $f2
    ldh a, [$ffeb]                                ; $5d21: $f0 $eb
    ld a, [bc]                                    ; $5d23: $0a
    nop                                           ; $5d24: $00
    xor $11                                       ; $5d25: $ee $11
    rst RST_28                                    ; $5d27: $ef
    rst RST_38                                    ; $5d28: $ff
    cp $ea                                        ; $5d29: $fe $ea
    nop                                           ; $5d2b: $00
    db $fd                                        ; $5d2c: $fd
    dec [hl]                                      ; $5d2d: $35
    ld e, l                                       ; $5d2e: $5d
    ld [$fd02], a                                 ; $5d2f: $ea $02 $fd
    dec [hl]                                      ; $5d32: $35
    ld e, l                                       ; $5d33: $5d
    cp $fc                                        ; $5d34: $fe $fc
    add sp, -$0f                                  ; $5d36: $e8 $f1
    db $eb                                        ; $5d38: $eb
    rlca                                          ; $5d39: $07
    inc b                                         ; $5d3a: $04
    ld [$e238], a                                 ; $5d3b: $ea $38 $e2
    ldh a, [rHDMA1]                               ; $5d3e: $f0 $51
    ld d, c                                       ; $5d40: $51
    ld d, c                                       ; $5d41: $51
    ld d, c                                       ; $5d42: $51
    ld sp, $a131                                  ; $5d43: $31 $31 $a1
    and c                                         ; $5d46: $a1
    add sp, -$0d                                  ; $5d47: $e8 $f3
    db $eb                                        ; $5d49: $eb
    ld [bc], a                                    ; $5d4a: $02
    nop                                           ; $5d4b: $00
    ld [$fb34], a                                 ; $5d4c: $ea $34 $fb
    di                                            ; $5d4f: $f3
    ldh [c], a                                    ; $5d50: $e2
    ld d, c                                       ; $5d51: $51
    db $e3                                        ; $5d52: $e3
    ld sp, $a151                                  ; $5d53: $31 $51 $a1
    db $f4                                        ; $5d56: $f4
    rst RST_28                                    ; $5d57: $ef
    ldh a, [$fffb]                                ; $5d58: $f0 $fb
    ld [bc], a                                    ; $5d5a: $02
    push af                                       ; $5d5b: $f5
    rst RST_28                                    ; $5d5c: $ef
    rrca                                          ; $5d5d: $0f
    ei                                            ; $5d5e: $fb
    ldh [c], a                                    ; $5d5f: $e2
    ld d, c                                       ; $5d60: $51
    db $e3                                        ; $5d61: $e3
    ld sp, $a151                                  ; $5d62: $31 $51 $a1
    or $ef                                        ; $5d65: $f6 $ef
    rrca                                          ; $5d67: $0f
    ei                                            ; $5d68: $fb
    ld [bc], a                                    ; $5d69: $02
    db $eb                                        ; $5d6a: $eb
    rlca                                          ; $5d6b: $07
    inc b                                         ; $5d6c: $04
    rst RST_28                                    ; $5d6d: $ef
    rst RST_38                                    ; $5d6e: $ff
    add sp, -$0f                                  ; $5d6f: $e8 $f1
    ld [$e238], a                                 ; $5d71: $ea $38 $e2
    ldh a, [$ff81]                                ; $5d74: $f0 $81
    add c                                         ; $5d76: $81
    add c                                         ; $5d77: $81
    add c                                         ; $5d78: $81
    ld h, c                                       ; $5d79: $61
    ld h, c                                       ; $5d7a: $61
    ld h, c                                       ; $5d7b: $61
    ld h, c                                       ; $5d7c: $61
    db $fc                                        ; $5d7d: $fc
    ld [bc], a                                    ; $5d7e: $02
    db $fd                                        ; $5d7f: $fd
    ldh [$ff08], a                                ; $5d80: $e0 $08
    ld c, d                                       ; $5d82: $4a
    di                                            ; $5d83: $f3
    db $eb                                        ; $5d84: $eb
    inc c                                         ; $5d85: $0c
    ld [bc], a                                    ; $5d86: $02
    ldh a, [c]                                    ; $5d87: $f2
    pop hl                                        ; $5d88: $e1
    and c                                         ; $5d89: $a1
    and c                                         ; $5d8a: $a1
    db $e3                                        ; $5d8b: $e3
    and c                                         ; $5d8c: $a1
    pop hl                                        ; $5d8d: $e1
    and c                                         ; $5d8e: $a1
    and c                                         ; $5d8f: $a1
    db $e3                                        ; $5d90: $e3
    and c                                         ; $5d91: $a1
    pop hl                                        ; $5d92: $e1
    and c                                         ; $5d93: $a1
    and c                                         ; $5d94: $a1
    pop af                                        ; $5d95: $f1
    pop hl                                        ; $5d96: $e1
    or c                                          ; $5d97: $b1
    or c                                          ; $5d98: $b1
    db $e3                                        ; $5d99: $e3
    and c                                         ; $5d9a: $a1
    pop hl                                        ; $5d9b: $e1
    or c                                          ; $5d9c: $b1
    or c                                          ; $5d9d: $b1
    db $e3                                        ; $5d9e: $e3
    and c                                         ; $5d9f: $a1
    pop hl                                        ; $5da0: $e1
    or c                                          ; $5da1: $b1
    or c                                          ; $5da2: $b1
    ldh a, [$ffe1]                                ; $5da3: $f0 $e1
    pop de                                        ; $5da5: $d1
    pop de                                        ; $5da6: $d1
    db $e3                                        ; $5da7: $e3
    and c                                         ; $5da8: $a1
    pop hl                                        ; $5da9: $e1
    pop de                                        ; $5daa: $d1
    pop de                                        ; $5dab: $d1
    db $e3                                        ; $5dac: $e3
    and c                                         ; $5dad: $a1
    pop hl                                        ; $5dae: $e1

jr_007_5daf:
    pop de                                        ; $5daf: $d1
    pop de                                        ; $5db0: $d1
    pop af                                        ; $5db1: $f1
    pop hl                                        ; $5db2: $e1
    or c                                          ; $5db3: $b1
    or c                                          ; $5db4: $b1
    db $e3                                        ; $5db5: $e3
    and c                                         ; $5db6: $a1
    pop hl                                        ; $5db7: $e1
    or c                                          ; $5db8: $b1
    ld h, c                                       ; $5db9: $61
    ld [hl], c                                    ; $5dba: $71
    add c                                         ; $5dbb: $81
    sub c                                         ; $5dbc: $91
    ldh [$ff08], a                                ; $5dbd: $e0 $08
    dec bc                                        ; $5dbf: $0b
    pop af                                        ; $5dc0: $f1
    db $ed                                        ; $5dc1: $ed
    jr jr_007_5daf                                ; $5dc2: $18 $eb

    ld [de], a                                    ; $5dc4: $12
    rrca                                          ; $5dc5: $0f
    cp $ea                                        ; $5dc6: $fe $ea
    nop                                           ; $5dc8: $00
    db $fd                                        ; $5dc9: $fd
    jp nc, $ea5d                                  ; $5dca: $d2 $5d $ea

    ld [bc], a                                    ; $5dcd: $02
    db $fd                                        ; $5dce: $fd
    jp nc, $fe5d                                  ; $5dcf: $d2 $5d $fe

    db $fc                                        ; $5dd2: $fc
    ei                                            ; $5dd3: $fb
    ldh a, [$ffe2]                                ; $5dd4: $f0 $e2
    and c                                         ; $5dd6: $a1
    db $f4                                        ; $5dd7: $f4
    and c                                         ; $5dd8: $a1
    ei                                            ; $5dd9: $fb
    ld [bc], a                                    ; $5dda: $02
    db $f4                                        ; $5ddb: $f4
    and c                                         ; $5ddc: $a1
    ei                                            ; $5ddd: $fb
    ldh a, [$ffa1]                                ; $5dde: $f0 $a1
    db $f4                                        ; $5de0: $f4
    and c                                         ; $5de1: $a1
    and c                                         ; $5de2: $a1
    ei                                            ; $5de3: $fb
    inc bc                                        ; $5de4: $03
    ldh a, [$ffa1]                                ; $5de5: $f0 $a1
    db $f4                                        ; $5de7: $f4
    and c                                         ; $5de8: $a1
    db $fc                                        ; $5de9: $fc
    inc b                                         ; $5dea: $04
    db $fd                                        ; $5deb: $fd
    ldh [$ff08], a                                ; $5dec: $e0 $08
    ld [hl-], a                                   ; $5dee: $32
    push af                                       ; $5def: $f5
    pop hl                                        ; $5df0: $e1
    and c                                         ; $5df1: $a1
    ld bc, $a1a2                                  ; $5df2: $01 $a2 $a1
    and c                                         ; $5df5: $a1
    and c                                         ; $5df6: $a1
    and c                                         ; $5df7: $a1
    or c                                          ; $5df8: $b1
    ld bc, $b1b2                                  ; $5df9: $01 $b2 $b1
    or c                                          ; $5dfc: $b1
    or c                                          ; $5dfd: $b1
    or c                                          ; $5dfe: $b1
    pop de                                        ; $5dff: $d1
    ld bc, $d1d2                                  ; $5e00: $01 $d2 $d1
    pop de                                        ; $5e03: $d1
    pop de                                        ; $5e04: $d1
    pop de                                        ; $5e05: $d1
    or c                                          ; $5e06: $b1
    ld bc, $61b2                                  ; $5e07: $01 $b2 $61
    ld [hl], c                                    ; $5e0a: $71
    add c                                         ; $5e0b: $81
    sub c                                         ; $5e0c: $91
    ldh [$ff08], a                                ; $5e0d: $e0 $08
    ld [hl-], a                                   ; $5e0f: $32
    push af                                       ; $5e10: $f5
    cp $ea                                        ; $5e11: $fe $ea
    inc sp                                        ; $5e13: $33
    ld [$fd00], a                                 ; $5e14: $ea $00 $fd
    rra                                           ; $5e17: $1f
    ld e, [hl]                                    ; $5e18: $5e
    ld [$fd02], a                                 ; $5e19: $ea $02 $fd
    rra                                           ; $5e1c: $1f
    ld e, [hl]                                    ; $5e1d: $5e
    cp $fc                                        ; $5e1e: $fe $fc
    add sp, -$09                                  ; $5e20: $e8 $f7
    pop hl                                        ; $5e22: $e1
    and d                                         ; $5e23: $a2
    and d                                         ; $5e24: $a2
    add d                                         ; $5e25: $82
    and d                                         ; $5e26: $a2
    add sp, $00                                   ; $5e27: $e8 $00
    ld [$fb31], a                                 ; $5e29: $ea $31 $fb
    db $e4                                        ; $5e2c: $e4
    ld d, c                                       ; $5e2d: $51
    push hl                                       ; $5e2e: $e5
    ld sp, $a151                                  ; $5e2f: $31 $51 $a1
    pop af                                        ; $5e32: $f1
    ei                                            ; $5e33: $fb
    ld [bc], a                                    ; $5e34: $02
    ei                                            ; $5e35: $fb
    ldh a, [c]                                    ; $5e36: $f2
    db $e4                                        ; $5e37: $e4
    ld d, c                                       ; $5e38: $51
    push hl                                       ; $5e39: $e5
    ld sp, $a151                                  ; $5e3a: $31 $51 $a1
    pop af                                        ; $5e3d: $f1
    ei                                            ; $5e3e: $fb
    ld [bc], a                                    ; $5e3f: $02
    add sp, -$08                                  ; $5e40: $e8 $f8
    ld [$f033], a                                 ; $5e42: $ea $33 $f0
    pop hl                                        ; $5e45: $e1
    call nc, $fcb4                                ; $5e46: $d4 $b4 $fc
    ld [bc], a                                    ; $5e49: $02
    db $fd                                        ; $5e4a: $fd
    ldh [$ff08], a                                ; $5e4b: $e0 $08
    ei                                            ; $5e4d: $fb
    ld [bc], a                                    ; $5e4e: $02
    ld [de], a                                    ; $5e4f: $12
    ei                                            ; $5e50: $fb
    ld b, $03                                     ; $5e51: $06 $03
    ld [hl], c                                    ; $5e53: $71
    ld [hl], c                                    ; $5e54: $71
    add c                                         ; $5e55: $81
    add c                                         ; $5e56: $81
    add c                                         ; $5e57: $81
    ldh [$ff08], a                                ; $5e58: $e0 $08
    cp $fb                                        ; $5e5a: $fe $fb
    and d                                         ; $5e5c: $a2
    ld de, $fbc1                                  ; $5e5d: $11 $c1 $fb
    rra                                           ; $5e60: $1f
    and c                                         ; $5e61: $a1
    ld b, c                                       ; $5e62: $41
    and c                                         ; $5e63: $a1
    ld b, c                                       ; $5e64: $41
    cp $ff                                        ; $5e65: $fe $ff
    ldh [$ff09], a                                ; $5e67: $e0 $09
    adc b                                         ; $5e69: $88
    adc b                                         ; $5e6a: $88
    db $eb                                        ; $5e6b: $eb
    ld [$ef00], sp                                ; $5e6c: $08 $00 $ef
    rrca                                          ; $5e6f: $0f
    ldh a, [c]                                    ; $5e70: $f2
    db $f4                                        ; $5e71: $f4
    ldh [c], a                                    ; $5e72: $e2
    jp Jump_007_52e3                              ; $5e73: $c3 $e3 $52


jr_007_5e76:
    ld [hl], d                                    ; $5e76: $72
    ldh [c], a                                    ; $5e77: $e2
    pop bc                                        ; $5e78: $c1
    db $ec                                        ; $5e79: $ec
    ld a, [de]                                    ; $5e7a: $1a
    db $eb                                        ; $5e7b: $eb
    inc bc                                        ; $5e7c: $03
    ret nc                                        ; $5e7d: $d0

    rst RST_28                                    ; $5e7e: $ef
    rst RST_38                                    ; $5e7f: $ff
    ldh a, [$ffec]                                ; $5e80: $f0 $ec
    ld a, [de]                                    ; $5e82: $1a
    db $e3                                        ; $5e83: $e3
    ld e, b                                       ; $5e84: $58
    jr jr_007_5e76                                ; $5e85: $18 $ef

    rrca                                          ; $5e87: $0f
    and d                                         ; $5e88: $a2
    ld d, d                                       ; $5e89: $52
    and d                                         ; $5e8a: $a2
    db $e4                                        ; $5e8b: $e4
    ld [hl+], a                                   ; $5e8c: $22
    ld [$e042], a                                 ; $5e8d: $ea $42 $e0
    add hl, bc                                    ; $5e90: $09
    add [hl]                                      ; $5e91: $86
    nop                                           ; $5e92: $00
    db $ec                                        ; $5e93: $ec
    nop                                           ; $5e94: $00
    db $e3                                        ; $5e95: $e3
    ld de, $11f3                                  ; $5e96: $11 $f3 $11
    db $e3                                        ; $5e99: $e3
    ldh a, [$ff31]                                ; $5e9a: $f0 $31
    di                                            ; $5e9c: $f3
    ld sp, $51f0                                  ; $5e9d: $31 $f0 $51
    di                                            ; $5ea0: $f3
    ld d, c                                       ; $5ea1: $51
    xor $11                                       ; $5ea2: $ee $11
    ldh a, [$ff81]                                ; $5ea4: $f0 $81
    di                                            ; $5ea6: $f3
    add c                                         ; $5ea7: $81
    ldh a, [$ffc1]                                ; $5ea8: $f0 $c1
    di                                            ; $5eaa: $f3
    pop bc                                        ; $5eab: $c1
    ldh a, [$ffd1]                                ; $5eac: $f0 $d1
    di                                            ; $5eae: $f3
    pop de                                        ; $5eaf: $d1
    rst RST_20                                    ; $5eb0: $e7
    ld a, [bc]                                    ; $5eb1: $0a
    ldh a, [$ffe4]                                ; $5eb2: $f0 $e4
    ld de, $11f3                                  ; $5eb4: $11 $f3 $11
    xor $22                                       ; $5eb7: $ee $22
    ldh a, [$ff81]                                ; $5eb9: $f0 $81
    di                                            ; $5ebb: $f3
    add e                                         ; $5ebc: $83
    ld [$ec40], a                                 ; $5ebd: $ea $40 $ec
    ld a, [de]                                    ; $5ec0: $1a
    rst RST_28                                    ; $5ec1: $ef
    rst RST_38                                    ; $5ec2: $ff
    db $ec                                        ; $5ec3: $ec
    dec de                                        ; $5ec4: $1b
    sub b                                         ; $5ec5: $90
    rst RST_38                                    ; $5ec6: $ff
    ldh [$ff09], a                                ; $5ec7: $e0 $09
    adc b                                         ; $5ec9: $88
    ld de, $04eb                                  ; $5eca: $11 $eb $04
    ret nz                                        ; $5ecd: $c0

    db $ec                                        ; $5ece: $ec
    ld a, [de]                                    ; $5ecf: $1a
    ldh [c], a                                    ; $5ed0: $e2
    jp nz, Jump_007_52e3                          ; $5ed1: $c2 $e3 $52

    ld [hl], d                                    ; $5ed4: $72
    ldh [c], a                                    ; $5ed5: $e2
    jp nz, $96e3                                  ; $5ed6: $c2 $e3 $96

    sub d                                         ; $5ed9: $92
    add $c2                                       ; $5eda: $c6 $c2
    db $e4                                        ; $5edc: $e4
    ld d, [hl]                                    ; $5edd: $56
    ld d, d                                       ; $5ede: $52
    db $ec                                        ; $5edf: $ec
    dec de                                        ; $5ee0: $1b
    call z, $0ae7                                 ; $5ee1: $cc $e7 $0a
    add $e5                                       ; $5ee4: $c6 $e5
    ld d, b                                       ; $5ee6: $50
    rst RST_38                                    ; $5ee7: $ff
    ldh [$ff09], a                                ; $5ee8: $e0 $09
    ld [de], a                                    ; $5eea: $12
    adc b                                         ; $5eeb: $88
    ld [$07eb], sp                                ; $5eec: $08 $eb $07
    nop                                           ; $5eef: $00
    rst RST_28                                    ; $5ef0: $ef
    ldh a, [$ffe3]                                ; $5ef1: $f0 $e3
    jp nz, Jump_007_52e4                          ; $5ef3: $c2 $e4 $52

    ld [hl], d                                    ; $5ef6: $72
    db $e3                                        ; $5ef7: $e3
    jp nz, Jump_000_0ceb                          ; $5ef8: $c2 $eb $0c

    inc bc                                        ; $5efb: $03
    rst RST_28                                    ; $5efc: $ef
    rrca                                          ; $5efd: $0f
    db $e3                                        ; $5efe: $e3
    ld [hl-], a                                   ; $5eff: $32
    ld [hl], d                                    ; $5f00: $72
    and d                                         ; $5f01: $a2
    ld [hl], d                                    ; $5f02: $72
    rst RST_28                                    ; $5f03: $ef
    rst RST_38                                    ; $5f04: $ff
    ld [hl+], a                                   ; $5f05: $22
    ld d, d                                       ; $5f06: $52
    and d                                         ; $5f07: $a2
    ld d, d                                       ; $5f08: $52
    db $eb                                        ; $5f09: $eb
    rlca                                          ; $5f0a: $07
    nop                                           ; $5f0b: $00
    db $e4                                        ; $5f0c: $e4
    ld [de], a                                    ; $5f0d: $12
    ld [hl-], a                                   ; $5f0e: $32
    ld d, d                                       ; $5f0f: $52
    add d                                         ; $5f10: $82
    rst RST_20                                    ; $5f11: $e7
    ld a, [bc]                                    ; $5f12: $0a
    ldh a, [$ffc2]                                ; $5f13: $f0 $c2
    jp nc, Jump_007_52e5                          ; $5f15: $d2 $e5 $52

    add h                                         ; $5f18: $84
    db $eb                                        ; $5f19: $eb
    ld [bc], a                                    ; $5f1a: $02
    ret nc                                        ; $5f1b: $d0

    db $e3                                        ; $5f1c: $e3
    ld d, b                                       ; $5f1d: $50
    rst RST_38                                    ; $5f1e: $ff
    rst RST_38                                    ; $5f1f: $ff
    ldh [rTAC], a                                 ; $5f20: $e0 $07
    add a                                         ; $5f22: $87
    db $f4                                        ; $5f23: $f4
    db $eb                                        ; $5f24: $eb
    ld [$ea00], sp                                ; $5f25: $08 $00 $ea
    inc bc                                        ; $5f28: $03
    rst RST_28                                    ; $5f29: $ef
    ldh a, [$fff5]                                ; $5f2a: $f0 $f5
    db $e4                                        ; $5f2c: $e4
    ld d, d                                       ; $5f2d: $52
    ei                                            ; $5f2e: $fb
    db $fd                                        ; $5f2f: $fd
    dec b                                         ; $5f30: $05
    ld h, b                                       ; $5f31: $60
    db $f4                                        ; $5f32: $f4
    ei                                            ; $5f33: $fb
    ld [bc], a                                    ; $5f34: $02
    pop af                                        ; $5f35: $f1
    db $fd                                        ; $5f36: $fd
    dec b                                         ; $5f37: $05
    ld h, b                                       ; $5f38: $60
    ldh a, [$ffe1]                                ; $5f39: $f0 $e1
    ld b, $fe                                     ; $5f3b: $06 $fe
    rst RST_28                                    ; $5f3d: $ef
    ldh a, [$fffd]                                ; $5f3e: $f0 $fd
    ld de, $6460                                  ; $5f40: $11 $60 $64
    ld d, d                                       ; $5f43: $52
    ld h, d                                       ; $5f44: $62
    add d                                         ; $5f45: $82
    ld h, d                                       ; $5f46: $62
    add d                                         ; $5f47: $82
    ld h, d                                       ; $5f48: $62
    ld d, h                                       ; $5f49: $54
    ld [de], a                                    ; $5f4a: $12
    ld [hl-], a                                   ; $5f4b: $32
    ld d, h                                       ; $5f4c: $54
    ld [$ef34], a                                 ; $5f4d: $ea $34 $ef
    rrca                                          ; $5f50: $0f
    pop af                                        ; $5f51: $f1
    db $e4                                        ; $5f52: $e4
    ld d, d                                       ; $5f53: $52
    ld d, c                                       ; $5f54: $51
    ld h, c                                       ; $5f55: $61
    ld h, c                                       ; $5f56: $61
    add c                                         ; $5f57: $81
    db $fd                                        ; $5f58: $fd
    ld de, $b460                                  ; $5f59: $11 $60 $b4
    ld h, d                                       ; $5f5c: $62
    add d                                         ; $5f5d: $82
    and d                                         ; $5f5e: $a2
    or d                                          ; $5f5f: $b2
    jp nc, $32e4                                  ; $5f60: $d2 $e4 $32

    inc d                                         ; $5f63: $14
    db $e3                                        ; $5f64: $e3
    ld d, d                                       ; $5f65: $52
    ld d, [hl]                                    ; $5f66: $56
    ld [hl-], a                                   ; $5f67: $32
    ld d, d                                       ; $5f68: $52
    ldh [c], a                                    ; $5f69: $e2
    jp nz, $38ea                                  ; $5f6a: $c2 $ea $38

    add sp, -$5b                                  ; $5f6d: $e8 $a5
    ld [$ef42], a                                 ; $5f6f: $ea $42 $ef
    ldh a, [$ffe3]                                ; $5f72: $f0 $e3
    and d                                         ; $5f74: $a2
    di                                            ; $5f75: $f3
    and d                                         ; $5f76: $a2
    ldh a, [rHDMA2]                               ; $5f77: $f0 $52
    di                                            ; $5f79: $f3
    ld d, d                                       ; $5f7a: $52
    ldh a, [$ff62]                                ; $5f7b: $f0 $62
    di                                            ; $5f7d: $f3
    ld h, d                                       ; $5f7e: $62
    ldh a, [$ff82]                                ; $5f7f: $f0 $82
    di                                            ; $5f81: $f3
    add d                                         ; $5f82: $82
    ldh a, [$ffea]                                ; $5f83: $f0 $ea
    inc [hl]                                      ; $5f85: $34
    rst RST_28                                    ; $5f86: $ef
    rst RST_38                                    ; $5f87: $ff
    sub d                                         ; $5f88: $92
    ld h, d                                       ; $5f89: $62
    add d                                         ; $5f8a: $82
    sub h                                         ; $5f8b: $94
    ld h, [hl]                                    ; $5f8c: $66
    ld [$ef38], a                                 ; $5f8d: $ea $38 $ef
    rrca                                          ; $5f90: $0f
    add d                                         ; $5f91: $82
    di                                            ; $5f92: $f3
    add d                                         ; $5f93: $82
    ldh a, [$ff32]                                ; $5f94: $f0 $32
    di                                            ; $5f96: $f3
    ld [hl-], a                                   ; $5f97: $32
    ldh a, [rHDMA2]                               ; $5f98: $f0 $52
    di                                            ; $5f9a: $f3
    ld d, d                                       ; $5f9b: $52
    ldh a, [$ff82]                                ; $5f9c: $f0 $82
    di                                            ; $5f9e: $f3
    add d                                         ; $5f9f: $82
    ldh a, [$ffea]                                ; $5fa0: $f0 $ea
    inc [hl]                                      ; $5fa2: $34
    ld [$ef40], a                                 ; $5fa3: $ea $40 $ef
    rst RST_38                                    ; $5fa6: $ff
    and d                                         ; $5fa7: $a2
    or d                                          ; $5fa8: $b2
    add d                                         ; $5fa9: $82
    and h                                         ; $5faa: $a4
    ld [$ef38], a                                 ; $5fab: $ea $38 $ef
    ldh a, [rNR43]                                ; $5fae: $f0 $22
    ld [hl-], a                                   ; $5fb0: $32
    ld d, d                                       ; $5fb1: $52
    rst RST_28                                    ; $5fb2: $ef
    ldh a, [$fffd]                                ; $5fb3: $f0 $fd
    add hl, hl                                    ; $5fb5: $29
    ld h, b                                       ; $5fb6: $60
    rst RST_28                                    ; $5fb7: $ef
    rrca                                          ; $5fb8: $0f
    db $fd                                        ; $5fb9: $fd
    ld a, $60                                     ; $5fba: $3e $60
    rst RST_28                                    ; $5fbc: $ef
    rrca                                          ; $5fbd: $0f
    ld [$fd06], a                                 ; $5fbe: $ea $06 $fd
    add hl, hl                                    ; $5fc1: $29
    ld h, b                                       ; $5fc2: $60
    rst RST_28                                    ; $5fc3: $ef
    ldh a, [$fffd]                                ; $5fc4: $f0 $fd
    ld a, $60                                     ; $5fc6: $3e $60
    ldh a, [$ffea]                                ; $5fc8: $f0 $ea
    inc bc                                        ; $5fca: $03
    ld [bc], a                                    ; $5fcb: $02
    ldh [rSB], a                                  ; $5fcc: $e0 $01
    adc b                                         ; $5fce: $88
    ldh a, [c]                                    ; $5fcf: $f2
    rst RST_28                                    ; $5fd0: $ef
    rst RST_38                                    ; $5fd1: $ff
    ldh a, [$ffe4]                                ; $5fd2: $f0 $e4
    ld d, c                                       ; $5fd4: $51
    ld l, l                                       ; $5fd5: $6d
    rst RST_20                                    ; $5fd6: $e7
    rlca                                          ; $5fd7: $07
    ld h, d                                       ; $5fd8: $62
    db $f4                                        ; $5fd9: $f4
    rst RST_28                                    ; $5fda: $ef
    rrca                                          ; $5fdb: $0f
    ld h, d                                       ; $5fdc: $62
    ei                                            ; $5fdd: $fb
    rst RST_28                                    ; $5fde: $ef
    rst RST_38                                    ; $5fdf: $ff
    ldh a, [rHDMA2]                               ; $5fe0: $f0 $52
    ld d, d                                       ; $5fe2: $52
    db $f4                                        ; $5fe3: $f4
    rst RST_28                                    ; $5fe4: $ef
    rrca                                          ; $5fe5: $0f
    ld d, d                                       ; $5fe6: $52
    ld [$fb02], a                                 ; $5fe7: $ea $02 $fb
    ld [bc], a                                    ; $5fea: $02
    ld [$ef04], a                                 ; $5feb: $ea $04 $ef
    rst RST_38                                    ; $5fee: $ff
    ldh a, [rNR43]                                ; $5fef: $f0 $22
    ld [hl+], a                                   ; $5ff1: $22
    db $f4                                        ; $5ff2: $f4
    rst RST_28                                    ; $5ff3: $ef
    rrca                                          ; $5ff4: $0f
    ld [hl+], a                                   ; $5ff5: $22
    rst RST_28                                    ; $5ff6: $ef
    rst RST_38                                    ; $5ff7: $ff
    ldh a, [rNR12]                                ; $5ff8: $f0 $12
    db $f4                                        ; $5ffa: $f4
    rst RST_28                                    ; $5ffb: $ef
    ldh a, [rNR12]                                ; $5ffc: $f0 $12
    rst RST_28                                    ; $5ffe: $ef
    rst RST_38                                    ; $5fff: $ff
    db $ec                                        ; $6000: $ec
    ld a, [bc]                                    ; $6001: $0a
    db $e3                                        ; $6002: $e3
    ret nz                                        ; $6003: $c0

    rst RST_38                                    ; $6004: $ff
    db $e4                                        ; $6005: $e4
    ld d, c                                       ; $6006: $51
    ld h, c                                       ; $6007: $61
    and c                                         ; $6008: $a1
    pop de                                        ; $6009: $d1
    push hl                                       ; $600a: $e5
    add c                                         ; $600b: $81
    ld d, c                                       ; $600c: $51
    ld de, $a1e4                                  ; $600d: $11 $e4 $a1
    db $fd                                        ; $6010: $fd
    ldh [rTAC], a                                 ; $6011: $e0 $07
    add [hl]                                      ; $6013: $86
    add h                                         ; $6014: $84
    ldh a, [rSC]                                  ; $6015: $f0 $02
    db $e3                                        ; $6017: $e3
    ld h, d                                       ; $6018: $62
    ld h, d                                       ; $6019: $62
    ld [bc], a                                    ; $601a: $02
    ld d, d                                       ; $601b: $52
    ld d, d                                       ; $601c: $52
    ld [bc], a                                    ; $601d: $02
    ld b, d                                       ; $601e: $42
    ld b, d                                       ; $601f: $42
    ld [bc], a                                    ; $6020: $02
    ld d, d                                       ; $6021: $52
    ld d, d                                       ; $6022: $52
    ld [bc], a                                    ; $6023: $02
    rst RST_28                                    ; $6024: $ef
    rst RST_38                                    ; $6025: $ff
    add d                                         ; $6026: $82
    ld [bc], a                                    ; $6027: $02
    db $fd                                        ; $6028: $fd
    ld [$f238], a                                 ; $6029: $ea $38 $f2
    db $e3                                        ; $602c: $e3
    call nc, Call_007_6252                        ; $602d: $d4 $52 $62
    jp nc, $eff0                                  ; $6030: $d2 $f0 $ef

    rst RST_38                                    ; $6033: $ff
    ld h, d                                       ; $6034: $62
    ld d, d                                       ; $6035: $52
    ld [hl-], a                                   ; $6036: $32
    ldh [c], a                                    ; $6037: $e2
    ld d, d                                       ; $6038: $52
    add d                                         ; $6039: $82
    jp nz, $34e3                                  ; $603a: $c2 $e3 $34

    db $fd                                        ; $603d: $fd
    ld [$e530], a                                 ; $603e: $ea $30 $e5
    inc sp                                        ; $6041: $33
    ld sp, $c1e4                                  ; $6042: $31 $e4 $c1
    pop bc                                        ; $6045: $c1
    db $fd                                        ; $6046: $fd
    ldh [rTAC], a                                 ; $6047: $e0 $07
    adc b                                         ; $6049: $88
    di                                            ; $604a: $f3
    ld [$eb03], a                                 ; $604b: $ea $03 $eb
    dec b                                         ; $604e: $05
    ldh [$fff5], a                                ; $604f: $e0 $f5
    db $e4                                        ; $6051: $e4
    ei                                            ; $6052: $fb
    db $fd                                        ; $6053: $fd
    dec b                                         ; $6054: $05
    ld h, b                                       ; $6055: $60
    db $f4                                        ; $6056: $f4
    ei                                            ; $6057: $fb
    ld [bc], a                                    ; $6058: $02
    ldh a, [c]                                    ; $6059: $f2
    db $fd                                        ; $605a: $fd
    dec b                                         ; $605b: $05
    ld h, b                                       ; $605c: $60
    ld [$ef42], a                                 ; $605d: $ea $42 $ef
    rrca                                          ; $6060: $0f
    add sp, -$08                                  ; $6061: $e8 $f8
    or $fd                                        ; $6063: $f6 $fd
    dec b                                         ; $6065: $05
    ld h, b                                       ; $6066: $60
    ldh a, [$ffef]                                ; $6067: $f0 $ef
    rst RST_38                                    ; $6069: $ff
    ld [$fe40], a                                 ; $606a: $ea $40 $fe
    db $ed                                        ; $606d: $ed
    jr @-$1e                                      ; $606e: $18 $e0

    rlca                                          ; $6070: $07
    ld c, b                                       ; $6071: $48
    add l                                         ; $6072: $85
    ld [$eb38], a                                 ; $6073: $ea $38 $eb
    dec b                                         ; $6076: $05
    ld d, c                                       ; $6077: $51
    db $fd                                        ; $6078: $fd
    jr nc, jr_007_60dc                            ; $6079: $30 $61

    ldh a, [$ffef]                                ; $607b: $f0 $ef
    rst RST_38                                    ; $607d: $ff
    cp d                                          ; $607e: $ba
    ldh [rTAC], a                                 ; $607f: $e0 $07
    adc b                                         ; $6081: $88
    add l                                         ; $6082: $85
    db $ec                                        ; $6083: $ec
    nop                                           ; $6084: $00
    and d                                         ; $6085: $a2
    or c                                          ; $6086: $b1
    db $f4                                        ; $6087: $f4
    or c                                          ; $6088: $b1
    ldh a, [$ffa2]                                ; $6089: $f0 $a2
    adc h                                         ; $608b: $8c
    rst RST_28                                    ; $608c: $ef
    ldh a, [$ffe8]                                ; $608d: $f0 $e8
    pop af                                        ; $608f: $f1
    ld [$e434], a                                 ; $6090: $ea $34 $e4
    ld d, c                                       ; $6093: $51
    ld d, c                                       ; $6094: $51
    ld h, c                                       ; $6095: $61
    ld h, c                                       ; $6096: $61
    add c                                         ; $6097: $81
    add c                                         ; $6098: $81
    add sp, -$7b                                  ; $6099: $e8 $85
    ld [$ef38], a                                 ; $609b: $ea $38 $ef
    rrca                                          ; $609e: $0f
    db $fd                                        ; $609f: $fd
    jr nc, jr_007_6103                            ; $60a0: $30 $61

    ldh a, [$ffef]                                ; $60a2: $f0 $ef
    rst RST_38                                    ; $60a4: $ff
    db $e4                                        ; $60a5: $e4
    ld a, [hl-]                                   ; $60a6: $3a
    ldh [rTAC], a                                 ; $60a7: $e0 $07
    adc b                                         ; $60a9: $88
    add l                                         ; $60aa: $85
    db $ec                                        ; $60ab: $ec
    nop                                           ; $60ac: $00
    ld [hl-], a                                   ; $60ad: $32
    ld d, c                                       ; $60ae: $51
    db $f4                                        ; $60af: $f4
    ld d, c                                       ; $60b0: $51
    ldh a, [$ff62]                                ; $60b1: $f0 $62
    ld d, h                                       ; $60b3: $54
    ld de, $11f4                                  ; $60b4: $11 $f4 $11
    ldh a, [rNR14]                                ; $60b7: $f0 $14
    db $ec                                        ; $60b9: $ec
    ld a, [bc]                                    ; $60ba: $0a
    db $ed                                        ; $60bb: $ed
    jr @-$14                                      ; $60bc: $18 $ea

    inc [hl]                                      ; $60be: $34
    db $e3                                        ; $60bf: $e3
    and d                                         ; $60c0: $a2
    jp nz, $e4d2                                  ; $60c1: $c2 $d2 $e4

    ld [hl-], a                                   ; $60c4: $32
    db $eb                                        ; $60c5: $eb
    ld a, [bc]                                    ; $60c6: $0a
    nop                                           ; $60c7: $00
    db $e4                                        ; $60c8: $e4
    ld d, [hl]                                    ; $60c9: $56
    inc d                                         ; $60ca: $14
    ld h, [hl]                                    ; $60cb: $66
    ld d, [hl]                                    ; $60cc: $56
    ld a, [de]                                    ; $60cd: $1a
    ld [hl], $e3                                  ; $60ce: $36 $e3
    call nz, $36e4                                ; $60d0: $c4 $e4 $36
    ld h, $34                                     ; $60d3: $26 $34
    ld d, [hl]                                    ; $60d5: $56
    db $fd                                        ; $60d6: $fd
    ld [hl], d                                    ; $60d7: $72
    ld h, c                                       ; $60d8: $61
    rst RST_28                                    ; $60d9: $ef
    ldh a, [$ffe5]                                ; $60da: $f0 $e5

jr_007_60dc:
    ld sp, $e431                                  ; $60dc: $31 $31 $e4
    pop bc                                        ; $60df: $c1
    pop bc                                        ; $60e0: $c1
    add c                                         ; $60e1: $81
    add c                                         ; $60e2: $81
    ld [$fd06], a                                 ; $60e3: $ea $06 $fd
    ld [hl], d                                    ; $60e6: $72
    ld h, c                                       ; $60e7: $61
    ld [$ef03], a                                 ; $60e8: $ea $03 $ef
    rrca                                          ; $60eb: $0f
    push hl                                       ; $60ec: $e5
    ld h, c                                       ; $60ed: $61
    ld h, c                                       ; $60ee: $61
    ld sp, $e431                                  ; $60ef: $31 $31 $e4
    or c                                          ; $60f2: $b1
    or c                                          ; $60f3: $b1
    db $ec                                        ; $60f4: $ec
    nop                                           ; $60f5: $00
    db $eb                                        ; $60f6: $eb
    dec b                                         ; $60f7: $05
    ld d, c                                       ; $60f8: $51
    ld [bc], a                                    ; $60f9: $02
    ldh [rSB], a                                  ; $60fa: $e0 $01
    adc b                                         ; $60fc: $88
    ldh a, [c]                                    ; $60fd: $f2
    rst RST_28                                    ; $60fe: $ef
    rst RST_38                                    ; $60ff: $ff
    ldh a, [$ffe3]                                ; $6100: $f0 $e3
    sub c                                         ; $6102: $91

jr_007_6103:
    xor l                                         ; $6103: $ad
    rst RST_20                                    ; $6104: $e7
    rlca                                          ; $6105: $07
    and d                                         ; $6106: $a2
    db $f4                                        ; $6107: $f4
    rst RST_28                                    ; $6108: $ef
    ldh a, [$ffa2]                                ; $6109: $f0 $a2
    ei                                            ; $610b: $fb
    rst RST_28                                    ; $610c: $ef
    rst RST_38                                    ; $610d: $ff
    ldh a, [$ff82]                                ; $610e: $f0 $82
    add d                                         ; $6110: $82
    db $f4                                        ; $6111: $f4
    rst RST_28                                    ; $6112: $ef
    ldh a, [$ff82]                                ; $6113: $f0 $82
    ld [$fb02], a                                 ; $6115: $ea $02 $fb
    ld [bc], a                                    ; $6118: $02
    rst RST_28                                    ; $6119: $ef
    rst RST_38                                    ; $611a: $ff
    ldh a, [$ff72]                                ; $611b: $f0 $72
    ld [hl], d                                    ; $611d: $72
    db $f4                                        ; $611e: $f4
    rst RST_28                                    ; $611f: $ef
    ldh a, [$ff72]                                ; $6120: $f0 $72
    rst RST_28                                    ; $6122: $ef
    rst RST_38                                    ; $6123: $ff
    ldh a, [$ff72]                                ; $6124: $f0 $72
    db $f4                                        ; $6126: $f4
    rst RST_28                                    ; $6127: $ef
    ldh a, [$ff72]                                ; $6128: $f0 $72
    rst RST_28                                    ; $612a: $ef
    rst RST_38                                    ; $612b: $ff
    db $ec                                        ; $612c: $ec
    ld a, [bc]                                    ; $612d: $0a
    ld h, b                                       ; $612e: $60
    rst RST_38                                    ; $612f: $ff
    add sp, -$0d                                  ; $6130: $e8 $f3
    rst RST_28                                    ; $6132: $ef
    rst RST_38                                    ; $6133: $ff
    ld [bc], a                                    ; $6134: $02
    rst RST_20                                    ; $6135: $e7
    ld bc, $e3f0                                  ; $6136: $01 $f0 $e3
    sub c                                         ; $6139: $91
    xor l                                         ; $613a: $ad
    rst RST_20                                    ; $613b: $e7
    rlca                                          ; $613c: $07
    and d                                         ; $613d: $a2
    db $f4                                        ; $613e: $f4
    rst RST_28                                    ; $613f: $ef
    ldh a, [$ffa2]                                ; $6140: $f0 $a2
    rst RST_28                                    ; $6142: $ef
    rst RST_38                                    ; $6143: $ff
    ldh a, [$ff82]                                ; $6144: $f0 $82
    add d                                         ; $6146: $82
    db $f4                                        ; $6147: $f4
    rst RST_28                                    ; $6148: $ef
    ldh a, [$ff82]                                ; $6149: $f0 $82
    rst RST_28                                    ; $614b: $ef
    rst RST_38                                    ; $614c: $ff
    ldh a, [$ff72]                                ; $614d: $f0 $72
    ld [hl], d                                    ; $614f: $72
    db $f4                                        ; $6150: $f4
    rst RST_28                                    ; $6151: $ef
    ldh a, [$ff72]                                ; $6152: $f0 $72
    rst RST_28                                    ; $6154: $ef
    rst RST_38                                    ; $6155: $ff
    ldh a, [$ff82]                                ; $6156: $f0 $82
    add d                                         ; $6158: $82
    db $f4                                        ; $6159: $f4
    rst RST_28                                    ; $615a: $ef
    ldh a, [$ff82]                                ; $615b: $f0 $82
    ld [$ef30], a                                 ; $615d: $ea $30 $ef
    rst RST_38                                    ; $6160: $ff

jr_007_6161:
    ldh a, [$ffe7]                                ; $6161: $f0 $e7
    ld bc, $ddb1                                  ; $6163: $01 $b1 $dd
    db $f4                                        ; $6166: $f4
    rst RST_28                                    ; $6167: $ef
    ldh a, [$ffe7]                                ; $6168: $f0 $e7
    ld bc, $ddb1                                  ; $616a: $01 $b1 $dd
    rst RST_20                                    ; $616d: $e7
    rlca                                          ; $616e: $07
    db $ec                                        ; $616f: $ec
    ld [$eafd], sp                                ; $6170: $08 $fd $ea
    jr c, jr_007_6161                             ; $6173: $38 $ec

    ld a, [bc]                                    ; $6175: $0a
    db $eb                                        ; $6176: $eb
    ld a, [bc]                                    ; $6177: $0a
    nop                                           ; $6178: $00
    db $ed                                        ; $6179: $ed
    jr @-$0f                                      ; $617a: $18 $ef

    rst RST_38                                    ; $617c: $ff
    db $e3                                        ; $617d: $e3
    jp nc, Jump_007_6252                          ; $617e: $d2 $52 $62

    call nc, Call_000_34ea                        ; $6181: $d4 $ea $34
    and d                                         ; $6184: $a2
    jp nc, $e4a2                                  ; $6185: $d2 $a2 $e4

    ld [hl-], a                                   ; $6188: $32
    ld [de], a                                    ; $6189: $12
    db $e3                                        ; $618a: $e3
    jp nz, $eb84                                  ; $618b: $c2 $84 $eb

    nop                                           ; $618e: $00
    db $ed                                        ; $618f: $ed
    nop                                           ; $6190: $00
    ld [$ec30], a                                 ; $6191: $ea $30 $ec
    ld b, $fd                                     ; $6194: $06 $fd
    ldh [rTAC], a                                 ; $6196: $e0 $07
    ld c, b                                       ; $6198: $48
    db $f4                                        ; $6199: $f4
    ld [$e50f], a                                 ; $619a: $ea $0f $e5
    ei                                            ; $619d: $fb
    db $fd                                        ; $619e: $fd
    dec b                                         ; $619f: $05
    ld h, b                                       ; $61a0: $60

Jump_007_61a1:
    ei                                            ; $61a1: $fb
    ld [bc], a                                    ; $61a2: $02
    ld d, c                                       ; $61a3: $51
    ld h, c                                       ; $61a4: $61
    and c                                         ; $61a5: $a1
    pop de                                        ; $61a6: $d1
    push hl                                       ; $61a7: $e5
    add c                                         ; $61a8: $81
    ld d, c                                       ; $61a9: $51
    ldh a, [$ffe0]                                ; $61aa: $f0 $e0
    rlca                                          ; $61ac: $07
    ld [bc], a                                    ; $61ad: $02
    add l                                         ; $61ae: $85
    ld [$eb03], a                                 ; $61af: $ea $03 $eb
    ld a, [bc]                                    ; $61b2: $0a
    nop                                           ; $61b3: $00
    ldh [c], a                                    ; $61b4: $e2
    add h                                         ; $61b5: $84
    ld h, d                                       ; $61b6: $62
    ld d, d                                       ; $61b7: $52
    ld [hl-], a                                   ; $61b8: $32
    cp $fd                                        ; $61b9: $fe $fd
    ld e, $62                                     ; $61bb: $1e $62
    pop hl                                        ; $61bd: $e1
    add d                                         ; $61be: $82
    ldh [c], a                                    ; $61bf: $e2
    ld [hl-], a                                   ; $61c0: $32
    ld d, d                                       ; $61c1: $52
    db $fd                                        ; $61c2: $fd
    ld e, $62                                     ; $61c3: $1e $62
    pop hl                                        ; $61c5: $e1
    jp nz, $9282                                  ; $61c6: $c2 $82 $92

    ei                                            ; $61c9: $fb
    ldh [c], a                                    ; $61ca: $e2
    ld h, d                                       ; $61cb: $62
    ld h, d                                       ; $61cc: $62
    jp nc, $e362                                  ; $61cd: $d2 $62 $e3

    ld h, d                                       ; $61d0: $62
    ldh [c], a                                    ; $61d1: $e2
    ld h, h                                       ; $61d2: $64
    ld h, d                                       ; $61d3: $62
    ei                                            ; $61d4: $fb
    ld [bc], a                                    ; $61d5: $02
    ld d, d                                       ; $61d6: $52
    ld d, d                                       ; $61d7: $52
    jp nz, $e352                                  ; $61d8: $c2 $52 $e3

    ld d, d                                       ; $61db: $52
    ldh [c], a                                    ; $61dc: $e2
    ld d, h                                       ; $61dd: $54
    ld d, d                                       ; $61de: $52
    and d                                         ; $61df: $a2
    and d                                         ; $61e0: $a2
    db $e3                                        ; $61e1: $e3
    ld d, d                                       ; $61e2: $52
    ldh [c], a                                    ; $61e3: $e2
    and d                                         ; $61e4: $a2
    db $e3                                        ; $61e5: $e3
    and d                                         ; $61e6: $a2
    add d                                         ; $61e7: $82
    ld h, d                                       ; $61e8: $62
    ld d, d                                       ; $61e9: $52
    ldh [c], a                                    ; $61ea: $e2
    ld [hl-], a                                   ; $61eb: $32
    ld [hl-], a                                   ; $61ec: $32
    and d                                         ; $61ed: $a2
    ld [hl-], a                                   ; $61ee: $32
    db $e3                                        ; $61ef: $e3
    ld [hl-], a                                   ; $61f0: $32
    ldh [c], a                                    ; $61f1: $e2
    inc [hl]                                      ; $61f2: $34
    ld [hl-], a                                   ; $61f3: $32
    ldh [c], a                                    ; $61f4: $e2
    ld d, d                                       ; $61f5: $52
    ld d, d                                       ; $61f6: $52
    jp nz, $e352                                  ; $61f7: $c2 $52 $e3

    ld d, d                                       ; $61fa: $52
    ldh [c], a                                    ; $61fb: $e2
    ld d, h                                       ; $61fc: $54
    ld d, d                                       ; $61fd: $52
    ld h, d                                       ; $61fe: $62
    ld h, d                                       ; $61ff: $62
    jp nc, $e362                                  ; $6200: $d2 $62 $e3

    ld h, d                                       ; $6203: $62
    ldh [c], a                                    ; $6204: $e2
    ld h, h                                       ; $6205: $64
    ld h, d                                       ; $6206: $62
    add d                                         ; $6207: $82
    add d                                         ; $6208: $82
    db $e3                                        ; $6209: $e3
    ld [hl-], a                                   ; $620a: $32
    ldh [c], a                                    ; $620b: $e2
    add d                                         ; $620c: $82
    db $e3                                        ; $620d: $e3
    add d                                         ; $620e: $82
    ldh [c], a                                    ; $620f: $e2
    add h                                         ; $6210: $84
    add d                                         ; $6211: $82

Jump_007_6212:
    ei                                            ; $6212: $fb
    jp nc, Jump_000_1212                          ; $6213: $d2 $12 $12

    ei                                            ; $6216: $fb
    inc b                                         ; $6217: $04
    jp nc, $e824                                  ; $6218: $d2 $24 $e8

    ld c, b                                       ; $621b: $48
    db $10                                        ; $621c: $10
    rst RST_38                                    ; $621d: $ff
    ei                                            ; $621e: $fb
    ldh [c], a                                    ; $621f: $e2
    ld [de], a                                    ; $6220: $12
    add d                                         ; $6221: $82
    db $e3                                        ; $6222: $e3
    ld [hl-], a                                   ; $6223: $32
    inc d                                         ; $6224: $14
    ldh [c], a                                    ; $6225: $e2
    jp nz, $82d2                                  ; $6226: $c2 $d2 $82

    ei                                            ; $6229: $fb
    ld [bc], a                                    ; $622a: $02
    pop hl                                        ; $622b: $e1
    or d                                          ; $622c: $b2
    ldh [c], a                                    ; $622d: $e2
    ld h, d                                       ; $622e: $62
    jp nc, $e1b4                                  ; $622f: $d2 $b4 $e1

    and d                                         ; $6232: $a2
    or d                                          ; $6233: $b2
    call nc, $e282                                ; $6234: $d4 $82 $e2
    ld [hl-], a                                   ; $6237: $32
    inc d                                         ; $6238: $14
    db $fd                                        ; $6239: $fd
    ldh [rTAC], a                                 ; $623a: $e0 $07
    inc b                                         ; $623c: $04
    inc d                                         ; $623d: $14
    inc b                                         ; $623e: $04
    inc d                                         ; $623f: $14
    inc b                                         ; $6240: $04
    ld [de], a                                    ; $6241: $12
    ld [hl+], a                                   ; $6242: $22
    ld [hl], c                                    ; $6243: $71
    ld [hl], c                                    ; $6244: $71
    ld [hl], d                                    ; $6245: $72
    ld [hl], c                                    ; $6246: $71
    ld [hl], c                                    ; $6247: $71
    ld [hl], d                                    ; $6248: $72
    cp $fb                                        ; $6249: $fe $fb
    and d                                         ; $624b: $a2
    ld [de], a                                    ; $624c: $12
    ld b, d                                       ; $624d: $42
    and d                                         ; $624e: $a2
    jp nz, Jump_007_42a2                          ; $624f: $c2 $a2 $42

Call_007_6252:
Jump_007_6252:
    and d                                         ; $6252: $a2
    ei                                            ; $6253: $fb
    rlca                                          ; $6254: $07
    and d                                         ; $6255: $a2
    ld [de], a                                    ; $6256: $12
    ld b, d                                       ; $6257: $42
    and d                                         ; $6258: $a2
    ld [de], a                                    ; $6259: $12
    ld [hl], c                                    ; $625a: $71
    ld [hl], c                                    ; $625b: $71
    add d                                         ; $625c: $82
    sub d                                         ; $625d: $92
    ei                                            ; $625e: $fb
    and d                                         ; $625f: $a2
    jp nz, $a242                                  ; $6260: $c2 $42 $a2

    jp nz, Jump_007_4212                          ; $6263: $c2 $12 $42

    pop bc                                        ; $6266: $c1
    pop bc                                        ; $6267: $c1
    ei                                            ; $6268: $fb
    rlca                                          ; $6269: $07
    ld b, d                                       ; $626a: $42
    ld b, d                                       ; $626b: $42
    ld b, d                                       ; $626c: $42
    ld b, c                                       ; $626d: $41
    ld b, c                                       ; $626e: $41
    ld [de], a                                    ; $626f: $12
    ld [hl+], a                                   ; $6270: $22
    ld b, c                                       ; $6271: $41
    ld b, c                                       ; $6272: $41
    ld b, c                                       ; $6273: $41
    ld b, c                                       ; $6274: $41
    ei                                            ; $6275: $fb
    ld b, d                                       ; $6276: $42
    ld [de], a                                    ; $6277: $12
    ld [de], a                                    ; $6278: $12
    ei                                            ; $6279: $fb
    inc b                                         ; $627a: $04
    ld [de], a                                    ; $627b: $12
    ld b, d                                       ; $627c: $42
    ld b, d                                       ; $627d: $42
    jr nc, @+$01                                  ; $627e: $30 $ff

    ldh [$ff08], a                                ; $6280: $e0 $08
    ld b, $85                                     ; $6282: $06 $85
    xor $11                                       ; $6284: $ee $11
    cp $ef                                        ; $6286: $fe $ef
    ldh a, [$ffeb]                                ; $6288: $f0 $eb
    rlca                                          ; $628a: $07
    ld bc, $e2f2                                  ; $628b: $01 $f2 $e2
    add e                                         ; $628e: $83
    sub d                                         ; $628f: $92
    ei                                            ; $6290: $fb
    add d                                         ; $6291: $82
    sub d                                         ; $6292: $92
    ei                                            ; $6293: $fb
    rlca                                          ; $6294: $07
    rst RST_28                                    ; $6295: $ef
    rrca                                          ; $6296: $0f
    ei                                            ; $6297: $fb
    and d                                         ; $6298: $a2
    or d                                          ; $6299: $b2
    ei                                            ; $629a: $fb
    rlca                                          ; $629b: $07
    and d                                         ; $629c: $a2
    or c                                          ; $629d: $b1
    db $eb                                        ; $629e: $eb
    ld [bc], a                                    ; $629f: $02
    rra                                           ; $62a0: $1f
    ei                                            ; $62a1: $fb
    ld [$ef38], a                                 ; $62a2: $ea $38 $ef
    ldh a, [$ffea]                                ; $62a5: $f0 $ea
    ld b, d                                       ; $62a7: $42
    ldh a, [$ffe2]                                ; $62a8: $f0 $e2
    ld b, h                                       ; $62aa: $44
    ld d, h                                       ; $62ab: $54
    ld b, h                                       ; $62ac: $44
    inc h                                         ; $62ad: $24
    ld [$ea40], a                                 ; $62ae: $ea $40 $ea
    inc [hl]                                      ; $62b1: $34
    rst RST_28                                    ; $62b2: $ef
    rst RST_38                                    ; $62b3: $ff
    ld b, d                                       ; $62b4: $42
    ld d, d                                       ; $62b5: $52
    add d                                         ; $62b6: $82
    sub d                                         ; $62b7: $92
    or d                                          ; $62b8: $b2
    sub d                                         ; $62b9: $92
    add d                                         ; $62ba: $82
    ld d, d                                       ; $62bb: $52
    ei                                            ; $62bc: $fb
    inc bc                                        ; $62bd: $03
    ld [$ef38], a                                 ; $62be: $ea $38 $ef
    ldh a, [$ffea]                                ; $62c1: $f0 $ea
    ld b, d                                       ; $62c3: $42
    ld b, h                                       ; $62c4: $44
    ld d, h                                       ; $62c5: $54
    ld b, h                                       ; $62c6: $44
    inc h                                         ; $62c7: $24
    ld [$ef40], a                                 ; $62c8: $ea $40 $ef
    rst RST_38                                    ; $62cb: $ff
    ld [$eb34], a                                 ; $62cc: $ea $34 $eb
    ld a, [bc]                                    ; $62cf: $0a
    nop                                           ; $62d0: $00
    ld b, d                                       ; $62d1: $42
    ld d, d                                       ; $62d2: $52
    add d                                         ; $62d3: $82
    sub d                                         ; $62d4: $92
    or d                                          ; $62d5: $b2
    sub d                                         ; $62d6: $92
    or d                                          ; $62d7: $b2
    jp nz, $0ffd                                  ; $62d8: $c2 $fd $0f

    ld h, e                                       ; $62db: $63
    ld [$ef30], a                                 ; $62dc: $ea $30 $ef
    rrca                                          ; $62df: $0f
    rst RST_20                                    ; $62e0: $e7
    ld [$12e3], sp                                ; $62e1: $08 $e3 $12
    ld [hl+], a                                   ; $62e4: $22
    ld [de], a                                    ; $62e5: $12
    ldh [c], a                                    ; $62e6: $e2
    and d                                         ; $62e7: $a2
    ldh a, [c]                                    ; $62e8: $f2
    db $e3                                        ; $62e9: $e3
    ld [de], a                                    ; $62ea: $12
    ld hl, $5141                                  ; $62eb: $21 $41 $51
    ld [hl], c                                    ; $62ee: $71
    ld d, c                                       ; $62ef: $51
    ld [hl], c                                    ; $62f0: $71
    ldh a, [$fffd]                                ; $62f1: $f0 $fd
    rrca                                          ; $62f3: $0f
    ld h, e                                       ; $62f4: $63
    rst RST_28                                    ; $62f5: $ef
    rrca                                          ; $62f6: $0f
    ld [$e730], a                                 ; $62f7: $ea $30 $e7
    ld [$82e2], sp                                ; $62fa: $08 $e2 $82
    sub d                                         ; $62fd: $92
    add d                                         ; $62fe: $82
    sub d                                         ; $62ff: $92
    rst RST_28                                    ; $6300: $ef
    ldh a, [$fff4]                                ; $6301: $f0 $f4
    db $e3                                        ; $6303: $e3
    ld d, d                                       ; $6304: $52
    ld hl, $b1e2                                  ; $6305: $21 $e2 $b1
    add c                                         ; $6308: $81
    ld d, c                                       ; $6309: $51
    ld hl, $b1e1                                  ; $630a: $21 $e1 $b1
    ldh a, [$fffe]                                ; $630d: $f0 $fe
    rst RST_28                                    ; $630f: $ef
    rst RST_38                                    ; $6310: $ff
    ld [$e334], a                                 ; $6311: $ea $34 $e3
    inc h                                         ; $6314: $24
    ldh [c], a                                    ; $6315: $e2
    ld d, d                                       ; $6316: $52
    and d                                         ; $6317: $a2
    db $e3                                        ; $6318: $e3
    ld [hl+], a                                   ; $6319: $22
    ldh [c], a                                    ; $631a: $e2
    and d                                         ; $631b: $a2
    db $e3                                        ; $631c: $e3
    ld [hl+], a                                   ; $631d: $22
    ldh [c], a                                    ; $631e: $e2
    and d                                         ; $631f: $a2
    ld [$ef30], a                                 ; $6320: $ea $30 $ef
    ldh a, [$ffc2]                                ; $6323: $f0 $c2
    db $e3                                        ; $6325: $e3
    ld [hl+], a                                   ; $6326: $22
    ldh [c], a                                    ; $6327: $e2
    jp nz, $92b2                                  ; $6328: $c2 $b2 $92

    ld b, c                                       ; $632b: $41
    ld d, c                                       ; $632c: $51
    ld [hl], c                                    ; $632d: $71
    sub c                                         ; $632e: $91
    or c                                          ; $632f: $b1
    pop bc                                        ; $6330: $c1
    ld [$ef34], a                                 ; $6331: $ea $34 $ef
    rst RST_38                                    ; $6334: $ff
    db $e3                                        ; $6335: $e3
    inc h                                         ; $6336: $24
    ldh [c], a                                    ; $6337: $e2
    ld d, d                                       ; $6338: $52
    and d                                         ; $6339: $a2
    db $e3                                        ; $633a: $e3
    ld [hl+], a                                   ; $633b: $22
    ldh [c], a                                    ; $633c: $e2
    and d                                         ; $633d: $a2
    rst RST_20                                    ; $633e: $e7
    ld bc, $2be3                                  ; $633f: $01 $e3 $2b
    ldh [c], a                                    ; $6342: $e2
    xor e                                         ; $6343: $ab
    db $e3                                        ; $6344: $e3
    ld a, [hl+]                                   ; $6345: $2a
    db $fd                                        ; $6346: $fd
    ldh [$ff08], a                                ; $6347: $e0 $08
    ld c, c                                       ; $6349: $49
    add l                                         ; $634a: $85
    cp $eb                                        ; $634b: $fe $eb
    dec bc                                        ; $634d: $0b
    ld [bc], a                                    ; $634e: $02
    ldh [c], a                                    ; $634f: $e2
    push af                                       ; $6350: $f5
    add d                                         ; $6351: $82
    sub d                                         ; $6352: $92
    add d                                         ; $6353: $82
    sub d                                         ; $6354: $92
    db $f4                                        ; $6355: $f4
    add d                                         ; $6356: $82
    sub d                                         ; $6357: $92
    di                                            ; $6358: $f3
    add d                                         ; $6359: $82
    sub d                                         ; $635a: $92
    ldh a, [$ff82]                                ; $635b: $f0 $82
    sub d                                         ; $635d: $92
    add d                                         ; $635e: $82
    sub d                                         ; $635f: $92
    db $f4                                        ; $6360: $f4
    add d                                         ; $6361: $82
    sub d                                         ; $6362: $92
    add d                                         ; $6363: $82
    sub d                                         ; $6364: $92
    push af                                       ; $6365: $f5
    and d                                         ; $6366: $a2
    or d                                          ; $6367: $b2
    and d                                         ; $6368: $a2
    or d                                          ; $6369: $b2
    db $f4                                        ; $636a: $f4
    and d                                         ; $636b: $a2
    or d                                          ; $636c: $b2
    di                                            ; $636d: $f3
    and d                                         ; $636e: $a2
    or d                                          ; $636f: $b2
    ldh a, [$ffa2]                                ; $6370: $f0 $a2
    or d                                          ; $6372: $b2
    and d                                         ; $6373: $a2
    or d                                          ; $6374: $b2
    db $f4                                        ; $6375: $f4
    and d                                         ; $6376: $a2
    or d                                          ; $6377: $b2
    and d                                         ; $6378: $a2
    or d                                          ; $6379: $b2
    ldh [$ff08], a                                ; $637a: $e0 $08
    ld c, b                                       ; $637c: $48
    add l                                         ; $637d: $85
    ldh a, [$fffc]                                ; $637e: $f0 $fc
    db $eb                                        ; $6380: $eb
    dec bc                                        ; $6381: $0b
    ld [bc], a                                    ; $6382: $02
    ld [$fb34], a                                 ; $6383: $ea $34 $fb
    add d                                         ; $6386: $82
    sub d                                         ; $6387: $92
    ei                                            ; $6388: $fb
    inc b                                         ; $6389: $04
    db $eb                                        ; $638a: $eb
    dec b                                         ; $638b: $05
    ld [de], a                                    ; $638c: $12
    ld [$8238], a                                 ; $638d: $ea $38 $82
    sub d                                         ; $6390: $92
    or d                                          ; $6391: $b2
    jp nz, $22e3                                  ; $6392: $c2 $e3 $22

    ldh [c], a                                    ; $6395: $e2
    jp nz, $92b2                                  ; $6396: $c2 $b2 $92

    db $fc                                        ; $6399: $fc
    inc bc                                        ; $639a: $03
    ld [$fb34], a                                 ; $639b: $ea $34 $fb
    add d                                         ; $639e: $82
    sub d                                         ; $639f: $92
    ei                                            ; $63a0: $fb
    inc b                                         ; $63a1: $04
    db $eb                                        ; $63a2: $eb
    dec bc                                        ; $63a3: $0b
    ld [bc], a                                    ; $63a4: $02
    add d                                         ; $63a5: $82
    sub d                                         ; $63a6: $92
    or d                                          ; $63a7: $b2
    jp nz, $22e3                                  ; $63a8: $c2 $e3 $22

    ldh [c], a                                    ; $63ab: $e2
    jp nz, $22e3                                  ; $63ac: $c2 $e3 $22

    ld b, d                                       ; $63af: $42
    ld [$eb30], a                                 ; $63b0: $ea $30 $eb
    db $10                                        ; $63b3: $10
    dec b                                         ; $63b4: $05
    db $fd                                        ; $63b5: $fd
    db $db                                        ; $63b6: $db
    ld h, e                                       ; $63b7: $63
    db $eb                                        ; $63b8: $eb
    nop                                           ; $63b9: $00
    ld [$1134], a                                 ; $63ba: $ea $34 $11
    ld hl, $5141                                  ; $63bd: $21 $41 $51
    ld [hl], c                                    ; $63c0: $71
    ld d, c                                       ; $63c1: $51
    ld [hl], c                                    ; $63c2: $71
    add c                                         ; $63c3: $81
    db $eb                                        ; $63c4: $eb
    db $10                                        ; $63c5: $10
    inc b                                         ; $63c6: $04
    ld [$fd30], a                                 ; $63c7: $ea $30 $fd
    db $db                                        ; $63ca: $db
    ld h, e                                       ; $63cb: $63
    db $eb                                        ; $63cc: $eb
    nop                                           ; $63cd: $00
    ld [$5134], a                                 ; $63ce: $ea $34 $51
    ld hl, $b1e2                                  ; $63d1: $21 $e2 $b1
    add c                                         ; $63d4: $81
    ld d, c                                       ; $63d5: $51
    ld hl, $b1e1                                  ; $63d6: $21 $e1 $b1
    add c                                         ; $63d9: $81
    cp $fb                                        ; $63da: $fe $fb
    ld d, d                                       ; $63dc: $52
    ld [hl], d                                    ; $63dd: $72
    ei                                            ; $63de: $fb
    inc bc                                        ; $63df: $03
    ld d, d                                       ; $63e0: $52
    ld [hl+], a                                   ; $63e1: $22
    ld b, b                                       ; $63e2: $40
    ei                                            ; $63e3: $fb
    ld d, d                                       ; $63e4: $52
    ld [hl], d                                    ; $63e5: $72
    ei                                            ; $63e6: $fb
    inc bc                                        ; $63e7: $03
    rst RST_20                                    ; $63e8: $e7
    ld bc, $7b9b                                  ; $63e9: $01 $9b $7b
    ld e, d                                       ; $63ec: $5a
    rst RST_20                                    ; $63ed: $e7
    ld [$fd48], sp                                ; $63ee: $08 $48 $fd
    ldh [$ff08], a                                ; $63f1: $e0 $08
    ld [bc], a                                    ; $63f3: $02
    add l                                         ; $63f4: $85
    ld [$fe0c], a                                 ; $63f5: $ea $0c $fe
    rst RST_28                                    ; $63f8: $ef
    ldh a, [$ffea]                                ; $63f9: $f0 $ea
    ld b, d                                       ; $63fb: $42
    pop hl                                        ; $63fc: $e1
    ld b, h                                       ; $63fd: $44
    ld d, h                                       ; $63fe: $54
    ld b, h                                       ; $63ff: $44
    inc h                                         ; $6400: $24
    ld b, h                                       ; $6401: $44
    ld d, h                                       ; $6402: $54
    ld b, h                                       ; $6403: $44
    inc h                                         ; $6404: $24
    ei                                            ; $6405: $fb
    ld h, h                                       ; $6406: $64
    ld [hl], h                                    ; $6407: $74
    ld h, h                                       ; $6408: $64
    ld b, h                                       ; $6409: $44
    ei                                            ; $640a: $fb
    ld [bc], a                                    ; $640b: $02
    ld [$fc40], a                                 ; $640c: $ea $40 $fc
    ei                                            ; $640f: $fb
    rst RST_28                                    ; $6410: $ef
    ldh a, [rSC]                                  ; $6411: $f0 $02
    ld b, d                                       ; $6413: $42
    rst RST_28                                    ; $6414: $ef
    rrca                                          ; $6415: $0f
    ld [bc], a                                    ; $6416: $02
    ld b, d                                       ; $6417: $42
    ei                                            ; $6418: $fb
    ld [bc], a                                    ; $6419: $02
    ld [bc], a                                    ; $641a: $02
    rst RST_28                                    ; $641b: $ef
    ldh a, [rSCY]                                 ; $641c: $f0 $42
    ldh [c], a                                    ; $641e: $e2
    ld b, d                                       ; $641f: $42
    pop hl                                        ; $6420: $e1
    ld b, d                                       ; $6421: $42
    rst RST_28                                    ; $6422: $ef
    rrca                                          ; $6423: $0f
    ld [bc], a                                    ; $6424: $02
    ld [hl+], a                                   ; $6425: $22
    ldh [c], a                                    ; $6426: $e2
    ld [hl+], a                                   ; $6427: $22
    pop hl                                        ; $6428: $e1
    ld [hl+], a                                   ; $6429: $22
    db $fc                                        ; $642a: $fc
    inc bc                                        ; $642b: $03
    ei                                            ; $642c: $fb
    rst RST_28                                    ; $642d: $ef
    ldh a, [rSC]                                  ; $642e: $f0 $02
    ld b, d                                       ; $6430: $42
    rst RST_28                                    ; $6431: $ef
    rrca                                          ; $6432: $0f
    ld [bc], a                                    ; $6433: $02
    ld b, d                                       ; $6434: $42
    ei                                            ; $6435: $fb
    ld [bc], a                                    ; $6436: $02
    rst RST_28                                    ; $6437: $ef
    ldh a, [$ff82]                                ; $6438: $f0 $82
    sub d                                         ; $643a: $92
    or d                                          ; $643b: $b2
    jp nz, Jump_000_22e2                          ; $643c: $c2 $e2 $22

    pop hl                                        ; $643f: $e1
    jp nz, Jump_000_22e2                          ; $6440: $c2 $e2 $22

    ld b, d                                       ; $6443: $42
    db $fc                                        ; $6444: $fc
    rst RST_28                                    ; $6445: $ef
    ldh a, [$fffb]                                ; $6446: $f0 $fb
    ld [bc], a                                    ; $6448: $02
    pop hl                                        ; $6449: $e1
    and c                                         ; $644a: $a1
    and c                                         ; $644b: $a1
    ldh [c], a                                    ; $644c: $e2
    and d                                         ; $644d: $a2
    pop hl                                        ; $644e: $e1
    and d                                         ; $644f: $a2
    rst RST_28                                    ; $6450: $ef
    rrca                                          ; $6451: $0f
    ei                                            ; $6452: $fb
    ld [bc], a                                    ; $6453: $02
    rst RST_28                                    ; $6454: $ef
    rst RST_38                                    ; $6455: $ff
    ei                                            ; $6456: $fb
    ld [bc], a                                    ; $6457: $02
    sub c                                         ; $6458: $91
    sub c                                         ; $6459: $91
    ldh [c], a                                    ; $645a: $e2
    sub d                                         ; $645b: $92
    pop hl                                        ; $645c: $e1
    sub d                                         ; $645d: $92
    ei                                            ; $645e: $fb
    ld [bc], a                                    ; $645f: $02
    db $fc                                        ; $6460: $fc
    ld [bc], a                                    ; $6461: $02
    rst RST_28                                    ; $6462: $ef
    ldh a, [$fffb]                                ; $6463: $f0 $fb
    ld [bc], a                                    ; $6465: $02
    pop hl                                        ; $6466: $e1
    and c                                         ; $6467: $a1
    and c                                         ; $6468: $a1
    ldh [c], a                                    ; $6469: $e2
    and d                                         ; $646a: $a2
    pop hl                                        ; $646b: $e1
    and d                                         ; $646c: $a2
    rst RST_28                                    ; $646d: $ef
    rrca                                          ; $646e: $0f
    ei                                            ; $646f: $fb
    ld [bc], a                                    ; $6470: $02
    rst RST_28                                    ; $6471: $ef
    rst RST_38                                    ; $6472: $ff
    ei                                            ; $6473: $fb
    ld [bc], a                                    ; $6474: $02
    sub c                                         ; $6475: $91
    sub c                                         ; $6476: $91
    ldh [c], a                                    ; $6477: $e2
    sub d                                         ; $6478: $92
    pop hl                                        ; $6479: $e1
    sub d                                         ; $647a: $92
    ei                                            ; $647b: $fb
    ld [bc], a                                    ; $647c: $02
    rst RST_28                                    ; $647d: $ef
    ldh a, [$fffb]                                ; $647e: $f0 $fb
    ld [bc], a                                    ; $6480: $02
    pop hl                                        ; $6481: $e1
    and c                                         ; $6482: $a1
    and c                                         ; $6483: $a1
    ldh [c], a                                    ; $6484: $e2
    and d                                         ; $6485: $a2
    pop hl                                        ; $6486: $e1
    and d                                         ; $6487: $a2
    rst RST_28                                    ; $6488: $ef
    rrca                                          ; $6489: $0f
    ei                                            ; $648a: $fb
    ld [bc], a                                    ; $648b: $02
    rst RST_28                                    ; $648c: $ef
    rst RST_38                                    ; $648d: $ff
    ei                                            ; $648e: $fb
    ld [bc], a                                    ; $648f: $02
    pop hl                                        ; $6490: $e1
    or c                                          ; $6491: $b1
    or c                                          ; $6492: $b1
    ldh [c], a                                    ; $6493: $e2
    or d                                          ; $6494: $b2
    pop hl                                        ; $6495: $e1
    or d                                          ; $6496: $b2
    ei                                            ; $6497: $fb
    ld [bc], a                                    ; $6498: $02
    cp $e0                                        ; $6499: $fe $e0
    ld [$a6fe], sp                                ; $649b: $08 $fe $a6
    and d                                         ; $649e: $a2
    xor b                                         ; $649f: $a8
    cp $e0                                        ; $64a0: $fe $e0
    ld [$a20a], sp                                ; $64a2: $08 $0a $a2
    ld [$eb05], a                                 ; $64a5: $ea $05 $eb
    dec b                                         ; $64a8: $05
    and b                                         ; $64a9: $a0
    db $ec                                        ; $64aa: $ec
    rlca                                          ; $64ab: $07
    ldh [c], a                                    ; $64ac: $e2
    ld h, b                                       ; $64ad: $60
    ret nz                                        ; $64ae: $c0

    inc b                                         ; $64af: $04
    db $ec                                        ; $64b0: $ec
    nop                                           ; $64b1: $00
    cp $e0                                        ; $64b2: $fe $e0
    ld [$a246], sp                                ; $64b4: $08 $46 $a2
    ld [$eb05], a                                 ; $64b7: $ea $05 $eb
    rlca                                          ; $64ba: $07
    dec b                                         ; $64bb: $05
    rst RST_28                                    ; $64bc: $ef
    rrca                                          ; $64bd: $0f
    pop hl                                        ; $64be: $e1
    inc de                                        ; $64bf: $13
    add d                                         ; $64c0: $82
    ld [hl], d                                    ; $64c1: $72
    add c                                         ; $64c2: $81
    ld [de], a                                    ; $64c3: $12
    ld de, $7282                                  ; $64c4: $11 $82 $72
    add d                                         ; $64c7: $82
    rst RST_28                                    ; $64c8: $ef
    ldh a, [$ffe1]                                ; $64c9: $f0 $e1
    ld [de], a                                    ; $64cb: $12
    add d                                         ; $64cc: $82
    ld [hl], d                                    ; $64cd: $72
    add c                                         ; $64ce: $81
    ld [de], a                                    ; $64cf: $12
    ld de, $7282                                  ; $64d0: $11 $82 $72
    add c                                         ; $64d3: $81
    db $eb                                        ; $64d4: $eb
    ld a, [bc]                                    ; $64d5: $0a
    ld [bc], a                                    ; $64d6: $02
    rst RST_28                                    ; $64d7: $ef
    rst RST_38                                    ; $64d8: $ff
    ld [$ed30], a                                 ; $64d9: $ea $30 $ed
    inc d                                         ; $64dc: $14
    add sp, -$0e                                  ; $64dd: $e8 $f2
    db $fc                                        ; $64df: $fc
    ei                                            ; $64e0: $fb
    pop hl                                        ; $64e1: $e1
    add c                                         ; $64e2: $81

Jump_007_64e3:
    ld de, $9181                                  ; $64e3: $11 $81 $91
    ld de, $a191                                  ; $64e6: $11 $91 $a1
    ld de, $b1a1                                  ; $64e9: $11 $a1 $b1
    ld de, $a1b1                                  ; $64ec: $11 $b1 $a1
    ld de, $1191                                  ; $64ef: $11 $91 $11
    ei                                            ; $64f2: $fb
    ld [bc], a                                    ; $64f3: $02
    ei                                            ; $64f4: $fb
    and c                                         ; $64f5: $a1
    ld sp, $b1a1                                  ; $64f6: $31 $a1 $b1
    ld sp, $c1b1                                  ; $64f9: $31 $b1 $c1
    ld sp, $d1c1                                  ; $64fc: $31 $c1 $d1
    ld sp, $c1d1                                  ; $64ff: $31 $d1 $c1
    ld sp, $31b1                                  ; $6502: $31 $b1 $31
    ei                                            ; $6505: $fb
    ld [bc], a                                    ; $6506: $02
    db $fc                                        ; $6507: $fc
    ld [bc], a                                    ; $6508: $02
    add sp, -$4c                                  ; $6509: $e8 $b4
    db $eb                                        ; $650b: $eb
    rrca                                          ; $650c: $0f
    dec b                                         ; $650d: $05
    db $fd                                        ; $650e: $fd
    ld a, [hl-]                                   ; $650f: $3a
    ld h, l                                       ; $6510: $65
    ld [$fd04], a                                 ; $6511: $ea $04 $fd
    ld a, [hl-]                                   ; $6514: $3a
    ld h, l                                       ; $6515: $65
    ld [$fd05], a                                 ; $6516: $ea $05 $fd
    ld a, [hl-]                                   ; $6519: $3a
    ld h, l                                       ; $651a: $65
    db $eb                                        ; $651b: $eb
    rrca                                          ; $651c: $0f
    dec b                                         ; $651d: $05
    ld [$e234], a                                 ; $651e: $ea $34 $e2
    add e                                         ; $6521: $83
    add c                                         ; $6522: $81
    db $eb                                        ; $6523: $eb
    rlca                                          ; $6524: $07
    ld bc, $0fef                                  ; $6525: $01 $ef $0f
    ld [$f230], a                                 ; $6528: $ea $30 $f2
    ld [hl-], a                                   ; $652b: $32
    add c                                         ; $652c: $81
    pop bc                                        ; $652d: $c1
    add c                                         ; $652e: $81
    pop bc                                        ; $652f: $c1
    db $e3                                        ; $6530: $e3
    ld sp, $3181                                  ; $6531: $31 $81 $31
    add c                                         ; $6534: $81
    pop bc                                        ; $6535: $c1
    db $e4                                        ; $6536: $e4
    ld sp, $fef0                                  ; $6537: $31 $f0 $fe
    db $eb                                        ; $653a: $eb
    inc b                                         ; $653b: $04
    ld [hl-], a                                   ; $653c: $32
    ld [$e234], a                                 ; $653d: $ea $34 $e2
    ld [hl], e                                    ; $6540: $73
    ld [hl], a                                    ; $6541: $77
    db $eb                                        ; $6542: $eb
    rlca                                          ; $6543: $07
    ld bc, $f0ef                                  ; $6544: $01 $ef $f0
    ld [$f338], a                                 ; $6547: $ea $38 $f3
    or d                                          ; $654a: $b2
    ld [hl], c                                    ; $654b: $71
    or c                                          ; $654c: $b1
    db $e3                                        ; $654d: $e3
    ld hl, $f071                                  ; $654e: $21 $71 $f0
    rst RST_28                                    ; $6551: $ef
    rst RST_38                                    ; $6552: $ff
    db $fd                                        ; $6553: $fd
    ldh [$ff08], a                                ; $6554: $e0 $08
    ld a, [bc]                                    ; $6556: $0a
    add c                                         ; $6557: $81
    ld [$eb05], a                                 ; $6558: $ea $05 $eb
    ld [$ec02], sp                                ; $655b: $08 $02 $ec
    rlca                                          ; $655e: $07
    ldh [c], a                                    ; $655f: $e2
    ld h, b                                       ; $6560: $60
    ret nz                                        ; $6561: $c0

    inc b                                         ; $6562: $04
    db $ec                                        ; $6563: $ec
    nop                                           ; $6564: $00
    rst RST_28                                    ; $6565: $ef
    rst RST_38                                    ; $6566: $ff
    cp $e0                                        ; $6567: $fe $e0
    ld [$8188], sp                                ; $6569: $08 $88 $81
    ld [$eb05], a                                 ; $656c: $ea $05 $eb
    rlca                                          ; $656f: $07
    dec b                                         ; $6570: $05
    ei                                            ; $6571: $fb
    pop hl                                        ; $6572: $e1
    ld [de], a                                    ; $6573: $12
    add d                                         ; $6574: $82
    ld [hl], d                                    ; $6575: $72
    add c                                         ; $6576: $81
    ld [de], a                                    ; $6577: $12
    ld de, $7282                                  ; $6578: $11 $82 $72
    add d                                         ; $657b: $82
    ei                                            ; $657c: $fb
    ld [bc], a                                    ; $657d: $02
    ld [$eb34], a                                 ; $657e: $ea $34 $eb
    ld a, [bc]                                    ; $6581: $0a
    nop                                           ; $6582: $00
    db $fc                                        ; $6583: $fc
    ld [$fd05], a                                 ; $6584: $ea $05 $fd
    call nz, $ea65                                ; $6587: $c4 $65 $ea
    rlca                                          ; $658a: $07
    db $fd                                        ; $658b: $fd
    call nz, $fc65                                ; $658c: $c4 $65 $fc
    ld [bc], a                                    ; $658f: $02
    ld [$ed05], a                                 ; $6590: $ea $05 $ed
    nop                                           ; $6593: $00
    db $eb                                        ; $6594: $eb
    rrca                                          ; $6595: $0f
    ld b, $e8                                     ; $6596: $06 $e8
    or l                                          ; $6598: $b5
    pop af                                        ; $6599: $f1
    ldh [c], a                                    ; $659a: $e2
    db $fd                                        ; $659b: $fd
    db $e3                                        ; $659c: $e3
    ld h, l                                       ; $659d: $65
    ld [$fd04], a                                 ; $659e: $ea $04 $fd
    db $e3                                        ; $65a1: $e3
    ld h, l                                       ; $65a2: $65
    ld [$fd05], a                                 ; $65a3: $ea $05 $fd
    db $e3                                        ; $65a6: $e3
    ld h, l                                       ; $65a7: $65
    ldh [c], a                                    ; $65a8: $e2
    ld [$c334], a                                 ; $65a9: $ea $34 $c3
    pop bc                                        ; $65ac: $c1
    db $eb                                        ; $65ad: $eb
    nop                                           ; $65ae: $00
    add sp, -$0d                                  ; $65af: $e8 $f3
    ldh a, [c]                                    ; $65b1: $f2
    ld [$3130], a                                 ; $65b2: $ea $30 $31
    add c                                         ; $65b5: $81
    pop bc                                        ; $65b6: $c1
    add c                                         ; $65b7: $81
    pop bc                                        ; $65b8: $c1
    db $e3                                        ; $65b9: $e3
    ld sp, $3181                                  ; $65ba: $31 $81 $31
    add c                                         ; $65bd: $81
    pop bc                                        ; $65be: $c1
    db $e4                                        ; $65bf: $e4
    ld sp, $f081                                  ; $65c0: $31 $81 $f0
    cp $fb                                        ; $65c3: $fe $fb
    add sp, -$0d                                  ; $65c5: $e8 $f3
    ldh a, [$ffe3]                                ; $65c7: $f0 $e3
    ld b, c                                       ; $65c9: $41
    ld sp, $f311                                  ; $65ca: $31 $11 $f3
    db $e3                                        ; $65cd: $e3
    ld b, c                                       ; $65ce: $41
    ld sp, $f411                                  ; $65cf: $31 $11 $f4
    ld b, c                                       ; $65d2: $41
    ld sp, $f511                                  ; $65d3: $31 $11 $f5
    ld b, c                                       ; $65d6: $41
    ld sp, $e811                                  ; $65d7: $31 $11 $e8
    add e                                         ; $65da: $83
    or $41                                        ; $65db: $f6 $41
    ld sp, $1111                                  ; $65dd: $31 $11 $11
    ei                                            ; $65e0: $fb
    ld [bc], a                                    ; $65e1: $02
    db $fd                                        ; $65e2: $fd
    ld [$eb34], a                                 ; $65e3: $ea $34 $eb
    rrca                                          ; $65e6: $0f
    ld b, $e2                                     ; $65e7: $06 $e2
    or e                                          ; $65e9: $b3
    or a                                          ; $65ea: $b7
    db $eb                                        ; $65eb: $eb
    nop                                           ; $65ec: $00
    ld [$b138], a                                 ; $65ed: $ea $38 $b1
    ld [hl], c                                    ; $65f0: $71
    or c                                          ; $65f1: $b1
    db $e3                                        ; $65f2: $e3
    ld hl, $b171                                  ; $65f3: $21 $71 $b1
    db $fd                                        ; $65f6: $fd
    ldh [$ff08], a                                ; $65f7: $e0 $08
    ld [bc], a                                    ; $65f9: $02
    nop                                           ; $65fa: $00
    db $eb                                        ; $65fb: $eb
    ld a, [bc]                                    ; $65fc: $0a
    inc bc                                        ; $65fd: $03
    ld [$e105], a                                 ; $65fe: $ea $05 $e1
    sub b                                         ; $6601: $90
    add b                                         ; $6602: $80
    inc b                                         ; $6603: $04
    ldh [$ff08], a                                ; $6604: $e0 $08
    ld [bc], a                                    ; $6606: $02
    add d                                         ; $6607: $82
    db $eb                                        ; $6608: $eb
    ld a, [bc]                                    ; $6609: $0a
    inc bc                                        ; $660a: $03
    ld [$fe05], a                                 ; $660b: $ea $05 $fe
    ei                                            ; $660e: $fb
    ldh [c], a                                    ; $660f: $e2
    ld [de], a                                    ; $6610: $12
    add d                                         ; $6611: $82
    ld [hl], d                                    ; $6612: $72
    add c                                         ; $6613: $81
    ld [de], a                                    ; $6614: $12
    ld de, $7282                                  ; $6615: $11 $82 $72
    add d                                         ; $6618: $82
    ei                                            ; $6619: $fb
    ld [bc], a                                    ; $661a: $02
    db $fc                                        ; $661b: $fc
    rst RST_28                                    ; $661c: $ef
    rrca                                          ; $661d: $0f
    ei                                            ; $661e: $fb
    ldh [c], a                                    ; $661f: $e2
    ld [de], a                                    ; $6620: $12
    add d                                         ; $6621: $82
    ld [hl], d                                    ; $6622: $72
    add c                                         ; $6623: $81
    ld [de], a                                    ; $6624: $12
    ld de, $7282                                  ; $6625: $11 $82 $72
    add d                                         ; $6628: $82
    rst RST_28                                    ; $6629: $ef
    ldh a, [$fffb]                                ; $662a: $f0 $fb
    ld [bc], a                                    ; $662c: $02
    rst RST_28                                    ; $662d: $ef
    rrca                                          ; $662e: $0f
    ei                                            ; $662f: $fb
    ld [hl-], a                                   ; $6630: $32
    and d                                         ; $6631: $a2
    sub d                                         ; $6632: $92
    and c                                         ; $6633: $a1
    ld [hl-], a                                   ; $6634: $32
    ld sp, $92a2                                  ; $6635: $31 $a2 $92
    and d                                         ; $6638: $a2
    rst RST_28                                    ; $6639: $ef
    ldh a, [$fffb]                                ; $663a: $f0 $fb
    ld [bc], a                                    ; $663c: $02
    ldh a, [$fffc]                                ; $663d: $f0 $fc
    ld [bc], a                                    ; $663f: $02
    rst RST_28                                    ; $6640: $ef
    rst RST_38                                    ; $6641: $ff
    db $fd                                        ; $6642: $fd
    ld d, a                                       ; $6643: $57
    ld h, [hl]                                    ; $6644: $66
    ld [$fd04], a                                 ; $6645: $ea $04 $fd
    ld d, a                                       ; $6648: $57
    ld h, [hl]                                    ; $6649: $66
    ld [$fd05], a                                 ; $664a: $ea $05 $fd
    ld d, a                                       ; $664d: $57
    ld h, [hl]                                    ; $664e: $66
    ld [$fd06], a                                 ; $664f: $ea $06 $fd
    ld d, a                                       ; $6652: $57
    ld h, [hl]                                    ; $6653: $66
    ld [$fe05], a                                 ; $6654: $ea $05 $fe
    ei                                            ; $6657: $fb
    ldh [c], a                                    ; $6658: $e2
    sub c                                         ; $6659: $91
    sub c                                         ; $665a: $91
    db $e3                                        ; $665b: $e3
    sub c                                         ; $665c: $91
    ei                                            ; $665d: $fb
    ld [bc], a                                    ; $665e: $02
    ldh [c], a                                    ; $665f: $e2
    sub c                                         ; $6660: $91
    db $e3                                        ; $6661: $e3
    sub c                                         ; $6662: $91
    ldh [c], a                                    ; $6663: $e2
    sub c                                         ; $6664: $91
    ei                                            ; $6665: $fb
    db $e3                                        ; $6666: $e3
    sub c                                         ; $6667: $91
    ldh [c], a                                    ; $6668: $e2
    sub c                                         ; $6669: $91
    sub c                                         ; $666a: $91
    ei                                            ; $666b: $fb
    ld [bc], a                                    ; $666c: $02
    db $e3                                        ; $666d: $e3
    sub c                                         ; $666e: $91
    db $fd                                        ; $666f: $fd
    ldh [rNR10], a                                ; $6670: $e0 $10
    nop                                           ; $6672: $00
    ldh [rDIV], a                                 ; $6673: $e0 $04
    ld [hl], c                                    ; $6675: $71
    ld [hl], c                                    ; $6676: $71
    ld [hl], d                                    ; $6677: $72
    ld [hl], d                                    ; $6678: $72
    ld [hl], d                                    ; $6679: $72
    cp $e7                                        ; $667a: $fe $e7
    ld [$a1fb], sp                                ; $667c: $08 $fb $a1
    pop bc                                        ; $667f: $c1
    ld de, $41c1                                  ; $6680: $11 $c1 $41
    ld de, $a1c1                                  ; $6683: $11 $c1 $a1
    ei                                            ; $6686: $fb
    inc bc                                        ; $6687: $03
    and c                                         ; $6688: $a1
    pop bc                                        ; $6689: $c1
    ld de, $41c1                                  ; $668a: $11 $c1 $41
    ld b, c                                       ; $668d: $41
    ld de, $fb41                                  ; $668e: $11 $41 $fb
    and c                                         ; $6691: $a1
    pop bc                                        ; $6692: $c1
    ld de, $41c1                                  ; $6693: $11 $c1 $41
    ld de, $a1c1                                  ; $6696: $11 $c1 $a1
    ei                                            ; $6699: $fb
    rrca                                          ; $669a: $0f
    and c                                         ; $669b: $a1
    pop bc                                        ; $669c: $c1
    ld de, $41c1                                  ; $669d: $11 $c1 $41
    ld de, $4141                                  ; $66a0: $11 $41 $41
    ei                                            ; $66a3: $fb
    and c                                         ; $66a4: $a1
    ld de, $11d1                                  ; $66a5: $11 $d1 $11
    ld b, c                                       ; $66a8: $41
    pop bc                                        ; $66a9: $c1
    pop de                                        ; $66aa: $d1
    and c                                         ; $66ab: $a1
    and c                                         ; $66ac: $a1
    ld de, $11d1                                  ; $66ad: $11 $d1 $11
    ld b, c                                       ; $66b0: $41
    rst RST_20                                    ; $66b1: $e7
    inc b                                         ; $66b2: $04
    pop bc                                        ; $66b3: $c1
    pop bc                                        ; $66b4: $c1
    rst RST_20                                    ; $66b5: $e7
    ld [$a1d1], sp                                ; $66b6: $08 $d1 $a1
    ei                                            ; $66b9: $fb
    inc bc                                        ; $66ba: $03
    and c                                         ; $66bb: $a1
    ld de, $11d1                                  ; $66bc: $11 $d1 $11
    ld b, c                                       ; $66bf: $41
    pop bc                                        ; $66c0: $c1
    pop de                                        ; $66c1: $d1
    and c                                         ; $66c2: $a1
    and c                                         ; $66c3: $a1
    ld de, $11d1                                  ; $66c4: $11 $d1 $11
    ldh [rDIV], a                                 ; $66c7: $e0 $04
    ld [hl], c                                    ; $66c9: $71
    ld [hl], c                                    ; $66ca: $71
    ld [hl], d                                    ; $66cb: $72
    ld [hl], d                                    ; $66cc: $72
    ld [hl], d                                    ; $66cd: $72
    cp $e0                                        ; $66ce: $fe $e0
    dec bc                                        ; $66d0: $0b
    add a                                         ; $66d1: $87
    add sp, -$14                                  ; $66d2: $e8 $ec
    inc d                                         ; $66d4: $14
    db $eb                                        ; $66d5: $eb
    dec b                                         ; $66d6: $05
    ret nz                                        ; $66d7: $c0

    ld [$f304], a                                 ; $66d8: $ea $04 $f3
    db $e4                                        ; $66db: $e4
    ret z                                         ; $66dc: $c8

    xor b                                         ; $66dd: $a8
    adc c                                         ; $66de: $89
    adc l                                         ; $66df: $8d
    cp $eb                                        ; $66e0: $fe $eb
    dec b                                         ; $66e2: $05
    ld b, d                                       ; $66e3: $42
    ldh a, [$ffec]                                ; $66e4: $f0 $ec
    nop                                           ; $66e6: $00
    xor $0c                                       ; $66e7: $ee $0c
    db $fd                                        ; $66e9: $fd
    and b                                         ; $66ea: $a0
    ld h, a                                       ; $66eb: $67
    ld [$ef34], a                                 ; $66ec: $ea $34 $ef
    rst RST_38                                    ; $66ef: $ff
    ldh [c], a                                    ; $66f0: $e2
    and d                                         ; $66f1: $a2
    jp nz, $e3d2                                  ; $66f2: $c2 $d2 $e3

    ld [hl-], a                                   ; $66f5: $32
    ld d, d                                       ; $66f6: $52
    ld [hl-], a                                   ; $66f7: $32
    ld [de], a                                    ; $66f8: $12
    ldh [c], a                                    ; $66f9: $e2
    jp nz, Jump_007_64e3                          ; $66fa: $c2 $e3 $64

    ldh [c], a                                    ; $66fd: $e2
    call nz, $a0fd                                ; $66fe: $c4 $fd $a0
    ld h, a                                       ; $6701: $67
    ld [$ef34], a                                 ; $6702: $ea $34 $ef
    rst RST_38                                    ; $6705: $ff
    ldh [c], a                                    ; $6706: $e2
    jp nc, $d2c2                                  ; $6707: $d2 $c2 $d2

    and d                                         ; $670a: $a2
    db $e3                                        ; $670b: $e3
    ld d, d                                       ; $670c: $52
    ld [hl-], a                                   ; $670d: $32

jr_007_670e:
    ld [de], a                                    ; $670e: $12
    ldh [c], a                                    ; $670f: $e2
    jp nz, $30ea                                  ; $6710: $c2 $ea $30

    rst RST_28                                    ; $6713: $ef
    rrca                                          ; $6714: $0f
    ld d, d                                       ; $6715: $52
    add d                                         ; $6716: $82
    ld [de], a                                    ; $6717: $12
    ld [hl-], a                                   ; $6718: $32
    ld d, d                                       ; $6719: $52
    ld h, d                                       ; $671a: $62
    add d                                         ; $671b: $82
    and d                                         ; $671c: $a2
    db $eb                                        ; $671d: $eb
    rlca                                          ; $671e: $07
    nop                                           ; $671f: $00
    rst RST_28                                    ; $6720: $ef
    rrca                                          ; $6721: $0f
    db $ed                                        ; $6722: $ed
    nop                                           ; $6723: $00
    ei                                            ; $6724: $fb
    ldh a, [$ffec]                                ; $6725: $f0 $ec
    ld d, $ea                                     ; $6727: $16 $ea
    jr nc, jr_007_670e                            ; $6729: $30 $e3

    ld [de], a                                    ; $672b: $12
    ld [hl-], a                                   ; $672c: $32
    ld d, d                                       ; $672d: $52
    ld [de], a                                    ; $672e: $12
    add d                                         ; $672f: $82
    ldh [c], a                                    ; $6730: $e2
    db $fd                                        ; $6731: $fd
    jp nz, $fb67                                  ; $6732: $c2 $67 $fb

    ld [bc], a                                    ; $6735: $02
    db $ec                                        ; $6736: $ec
    ld d, $f0                                     ; $6737: $16 $f0
    rst RST_28                                    ; $6739: $ef
    rst RST_38                                    ; $673a: $ff
    db $e3                                        ; $673b: $e3
    ld b, h                                       ; $673c: $44
    add h                                         ; $673d: $84
    add d                                         ; $673e: $82
    ld h, d                                       ; $673f: $62
    ld b, d                                       ; $6740: $42
    ld [hl-], a                                   ; $6741: $32
    inc d                                         ; $6742: $14
    ldh [c], a                                    ; $6743: $e2
    call z, $30ea                                 ; $6744: $cc $ea $30
    rst RST_28                                    ; $6747: $ef
    rrca                                          ; $6748: $0f

jr_007_6749:
    and d                                         ; $6749: $a2
    jp nc, $32e3                                  ; $674a: $d2 $e3 $32

    ldh [c], a                                    ; $674d: $e2
    and d                                         ; $674e: $a2
    db $e3                                        ; $674f: $e3
    ld d, d                                       ; $6750: $52
    db $fd                                        ; $6751: $fd
    jp nz, $ec67                                  ; $6752: $c2 $67 $ec

    ld d, $ea                                     ; $6755: $16 $ea
    jr nc, jr_007_6749                            ; $6757: $30 $f0

    ldh [c], a                                    ; $6759: $e2
    add d                                         ; $675a: $82
    jp nc, $32e3                                  ; $675b: $d2 $e3 $32

    ldh [c], a                                    ; $675e: $e2
    add d                                         ; $675f: $82
    db $e3                                        ; $6760: $e3
    ld d, d                                       ; $6761: $52
    db $ec                                        ; $6762: $ec
    rla                                           ; $6763: $17
    ld [$f338], a                                 ; $6764: $ea $38 $f3
    push hl                                       ; $6767: $e5
    inc sp                                        ; $6768: $33
    ld d, d                                       ; $6769: $52
    ld de, $16ec                                  ; $676a: $11 $ec $16
    ldh a, [$ffef]                                ; $676d: $f0 $ef
    rst RST_38                                    ; $676f: $ff
    db $e3                                        ; $6770: $e3
    ld h, h                                       ; $6771: $64
    ld d, h                                       ; $6772: $54
    inc [hl]                                      ; $6773: $34
    inc d                                         ; $6774: $14
    ldh [c], a                                    ; $6775: $e2
    ret z                                         ; $6776: $c8

    ldh [rTAC], a                                 ; $6777: $e0 $07
    ld b, $f5                                     ; $6779: $06 $f5
    db $ec                                        ; $677b: $ec
    nop                                           ; $677c: $00
    rst RST_28                                    ; $677d: $ef
    rrca                                          ; $677e: $0f
    pop af                                        ; $677f: $f1
    ld h, e                                       ; $6780: $63
    and c                                         ; $6781: $a1
    pop de                                        ; $6782: $d1
    db $e3                                        ; $6783: $e3
    ld h, c                                       ; $6784: $61
    ldh [c], a                                    ; $6785: $e2
    and c                                         ; $6786: $a1
    pop de                                        ; $6787: $d1
    db $e3                                        ; $6788: $e3
    ld h, c                                       ; $6789: $61
    and c                                         ; $678a: $a1
    rst RST_28                                    ; $678b: $ef
    ldh a, [rNR11]                                ; $678c: $f0 $11
    ld h, c                                       ; $678e: $61
    and c                                         ; $678f: $a1
    pop de                                        ; $6790: $d1
    ld h, c                                       ; $6791: $61
    and c                                         ; $6792: $a1
    ld [$e838], a                                 ; $6793: $ea $38 $e8
    add $ef                                       ; $6796: $c6 $ef
    rst RST_38                                    ; $6798: $ff
    jp nz, $f6c2                                  ; $6799: $c2 $c2 $f6

    jp nz, $c2f6                                  ; $679c: $c2 $f6 $c2

    cp $e0                                        ; $679f: $fe $e0
    rlca                                          ; $67a1: $07
    add [hl]                                      ; $67a2: $86
    add e                                         ; $67a3: $83
    rst RST_28                                    ; $67a4: $ef
    ldh a, [$ffea]                                ; $67a5: $f0 $ea
    ld b, d                                       ; $67a7: $42
    ldh a, [c]                                    ; $67a8: $f2
    ldh [c], a                                    ; $67a9: $e2
    add e                                         ; $67aa: $83
    jp nc, $32e3                                  ; $67ab: $d2 $e3 $32

    ldh [c], a                                    ; $67ae: $e2
    add c                                         ; $67af: $81
    ldh a, [$ffe2]                                ; $67b0: $f0 $e2
    add d                                         ; $67b2: $82
    add h                                         ; $67b3: $84
    add d                                         ; $67b4: $82
    and d                                         ; $67b5: $a2
    and h                                         ; $67b6: $a4
    and d                                         ; $67b7: $a2
    jp nz, $c2c4                                  ; $67b8: $c2 $c4 $c2

    and d                                         ; $67bb: $a2
    and d                                         ; $67bc: $a2
    jp nz, $ead2                                  ; $67bd: $c2 $d2 $ea

    ld b, b                                       ; $67c0: $40
    db $fd                                        ; $67c1: $fd
    db $ec                                        ; $67c2: $ec
    rla                                           ; $67c3: $17
    ld [$f338], a                                 ; $67c4: $ea $38 $f3
    push hl                                       ; $67c7: $e5
    ld [hl-], a                                   ; $67c8: $32
    ld sp, $1152                                  ; $67c9: $31 $52 $11
    rst RST_28                                    ; $67cc: $ef
    ldh a, [$fffd]                                ; $67cd: $f0 $fd
    ldh [$ff0b], a                                ; $67cf: $e0 $0b
    adc b                                         ; $67d1: $88
    ld hl, sp-$11                                 ; $67d2: $f8 $ef
    rrca                                          ; $67d4: $0f
    db $ec                                        ; $67d5: $ec
    inc d                                         ; $67d6: $14
    db $eb                                        ; $67d7: $eb
    inc b                                         ; $67d8: $04
    ret nc                                        ; $67d9: $d0

    ld [$e504], a                                 ; $67da: $ea $04 $e5
    ld e, b                                       ; $67dd: $58
    rst RST_28                                    ; $67de: $ef
    ldh a, [$ff38]                                ; $67df: $f0 $38
    rst RST_28                                    ; $67e1: $ef
    rrca                                          ; $67e2: $0f
    add hl, de                                    ; $67e3: $19
    rst RST_28                                    ; $67e4: $ef
    ldh a, [$ffe4]                                ; $67e5: $f0 $e4
    call $e8fe                                    ; $67e7: $cd $fe $e8

jr_007_67ea:
    add l                                         ; $67ea: $85
    rst RST_28                                    ; $67eb: $ef
    rst RST_38                                    ; $67ec: $ff
    ldh a, [$ffe0]                                ; $67ed: $f0 $e0
    rlca                                          ; $67ef: $07
    ld c, c                                       ; $67f0: $49
    add h                                         ; $67f1: $84
    db $ec                                        ; $67f2: $ec
    add hl, bc                                    ; $67f3: $09
    db $ed                                        ; $67f4: $ed
    nop                                           ; $67f5: $00
    db $eb                                        ; $67f6: $eb
    dec b                                         ; $67f7: $05
    ld b, d                                       ; $67f8: $42
    db $fd                                        ; $67f9: $fd
    ld d, a                                       ; $67fa: $57
    ld l, b                                       ; $67fb: $68
    db $e3                                        ; $67fc: $e3
    and h                                         ; $67fd: $a4
    add h                                         ; $67fe: $84
    db $fd                                        ; $67ff: $fd
    ld d, a                                       ; $6800: $57
    ld l, b                                       ; $6801: $68
    db $e3                                        ; $6802: $e3
    ld a, [de]                                    ; $6803: $1a
    db $eb                                        ; $6804: $eb
    dec b                                         ; $6805: $05
    ld d, c                                       ; $6806: $51
    db $ed                                        ; $6807: $ed
    jr jr_007_67ea                                ; $6808: $18 $e0

    rlca                                          ; $680a: $07
    adc d                                         ; $680b: $8a
    add d                                         ; $680c: $82
    db $ec                                        ; $680d: $ec
    inc c                                         ; $680e: $0c
    ldh a, [$ff32]                                ; $680f: $f0 $32
    ld d, d                                       ; $6811: $52
    ld [de], a                                    ; $6812: $12
    db $ed                                        ; $6813: $ed
    nop                                           ; $6814: $00
    db $eb                                        ; $6815: $eb
    dec b                                         ; $6816: $05
    ld b, d                                       ; $6817: $42
    db $fd                                        ; $6818: $fd
    ld [hl], b                                    ; $6819: $70
    ld l, b                                       ; $681a: $68
    db $e3                                        ; $681b: $e3
    add h                                         ; $681c: $84
    call nc, $92b2                                ; $681d: $d4 $b2 $92
    add d                                         ; $6820: $82
    ld h, d                                       ; $6821: $62
    adc d                                         ; $6822: $8a
    ld [hl-], a                                   ; $6823: $32
    ld d, d                                       ; $6824: $52
    ld [de], a                                    ; $6825: $12
    db $fd                                        ; $6826: $fd
    ld [hl], b                                    ; $6827: $70
    ld l, b                                       ; $6828: $68
    db $e3                                        ; $6829: $e3
    and h                                         ; $682a: $a4
    call nc, Call_000_34e4                        ; $682b: $d4 $e4 $34
    ld d, h                                       ; $682e: $54
    db $eb                                        ; $682f: $eb
    dec b                                         ; $6830: $05
    ld [hl], b                                    ; $6831: $70
    ld l, b                                       ; $6832: $68
    ld [$e234], a                                 ; $6833: $ea $34 $e2
    ld h, c                                       ; $6836: $61
    and c                                         ; $6837: $a1
    pop de                                        ; $6838: $d1
    db $e3                                        ; $6839: $e3
    ld h, c                                       ; $683a: $61
    ldh [c], a                                    ; $683b: $e2
    and c                                         ; $683c: $a1
    pop de                                        ; $683d: $d1
    db $e3                                        ; $683e: $e3
    ld h, c                                       ; $683f: $61
    and c                                         ; $6840: $a1
    ld de, $a161                                  ; $6841: $11 $61 $a1
    pop de                                        ; $6844: $d1
    ld h, c                                       ; $6845: $61
    and c                                         ; $6846: $a1
    pop de                                        ; $6847: $d1
    db $e4                                        ; $6848: $e4
    ld h, c                                       ; $6849: $61
    rst RST_28                                    ; $684a: $ef
    rst RST_38                                    ; $684b: $ff
    ldh a, [$ff82]                                ; $684c: $f0 $82
    add d                                         ; $684e: $82
    db $ec                                        ; $684f: $ec
    nop                                           ; $6850: $00
    push af                                       ; $6851: $f5
    add d                                         ; $6852: $82
    push af                                       ; $6853: $f5
    add d                                         ; $6854: $82
    ldh a, [$fffe]                                ; $6855: $f0 $fe
    ldh [c], a                                    ; $6857: $e2
    add d                                         ; $6858: $82
    jp nc, $32e3                                  ; $6859: $d2 $e3 $32

    ldh [c], a                                    ; $685c: $e2
    add d                                         ; $685d: $82
    db $e3                                        ; $685e: $e3
    ld d, [hl]                                    ; $685f: $56
    ld d, d                                       ; $6860: $52
    ld h, d                                       ; $6861: $62
    ld d, d                                       ; $6862: $52
    ld [hl-], a                                   ; $6863: $32
    ld [de], a                                    ; $6864: $12
    add h                                         ; $6865: $84
    jr c, jr_007_689a                             ; $6866: $38 $32

    ld d, d                                       ; $6868: $52
    ld h, [hl]                                    ; $6869: $66
    ld h, d                                       ; $686a: $62
    add d                                         ; $686b: $82
    ld h, d                                       ; $686c: $62
    ld d, d                                       ; $686d: $52
    ld [hl-], a                                   ; $686e: $32
    db $fd                                        ; $686f: $fd
    ei                                            ; $6870: $fb
    db $ec                                        ; $6871: $ec
    inc c                                         ; $6872: $0c
    db $e3                                        ; $6873: $e3
    add [hl]                                      ; $6874: $86
    call nc, $15ec                                ; $6875: $d4 $ec $15
    push hl                                       ; $6878: $e5
    ld sp, $5231                                  ; $6879: $31 $31 $52
    ld [de], a                                    ; $687c: $12
    ei                                            ; $687d: $fb
    ld [bc], a                                    ; $687e: $02
    db $ec                                        ; $687f: $ec
    inc c                                         ; $6880: $0c
    db $fd                                        ; $6881: $fd
    ldh [$ff0b], a                                ; $6882: $e0 $0b
    ld [hl+], a                                   ; $6884: $22
    add c                                         ; $6885: $81
    ld [$ef04], a                                 ; $6886: $ea $04 $ef
    ldh a, [$ffea]                                ; $6889: $f0 $ea
    ld b, d                                       ; $688b: $42
    ldh [c], a                                    ; $688c: $e2
    jp nc, $d2f1                                  ; $688d: $d2 $f1 $d2

    ldh a, [c]                                    ; $6890: $f2
    jp nc, $f0d2                                  ; $6891: $d2 $d2 $f0

    ldh [c], a                                    ; $6894: $e2
    or d                                          ; $6895: $b2
    pop af                                        ; $6896: $f1
    or d                                          ; $6897: $b2
    ldh a, [c]                                    ; $6898: $f2
    or d                                          ; $6899: $b2

jr_007_689a:
    or d                                          ; $689a: $b2
    ldh a, [$ffe2]                                ; $689b: $f0 $e2
    sub d                                         ; $689d: $92
    pop af                                        ; $689e: $f1
    sub d                                         ; $689f: $92
    ldh a, [c]                                    ; $68a0: $f2
    sub d                                         ; $68a1: $92
    sub e                                         ; $68a2: $93
    ldh a, [$ffe2]                                ; $68a3: $f0 $e2
    add h                                         ; $68a5: $84
    inc b                                         ; $68a6: $04
    dec b                                         ; $68a7: $05
    ldh a, [$ffef]                                ; $68a8: $f0 $ef
    rst RST_38                                    ; $68aa: $ff
    ld [$fe40], a                                 ; $68ab: $ea $40 $fe
    ldh [rTAC], a                                 ; $68ae: $e0 $07
    ld [bc], a                                    ; $68b0: $02
    add l                                         ; $68b1: $85
    ldh [c], a                                    ; $68b2: $e2
    add d                                         ; $68b3: $82
    ld h, d                                       ; $68b4: $62
    ld d, d                                       ; $68b5: $52
    ld [hl-], a                                   ; $68b6: $32
    ei                                            ; $68b7: $fb
    pop hl                                        ; $68b8: $e1
    sub $82                                       ; $68b9: $d6 $82
    jp nc, $82d4                                  ; $68bb: $d2 $d4 $82

    ei                                            ; $68be: $fb
    ld [bc], a                                    ; $68bf: $02
    ld h, [hl]                                    ; $68c0: $66
    ld [de], a                                    ; $68c1: $12
    ld h, d                                       ; $68c2: $62
    ld h, h                                       ; $68c3: $64
    ld [de], a                                    ; $68c4: $12
    add h                                         ; $68c5: $84
    inc [hl]                                      ; $68c6: $34
    ldh [c], a                                    ; $68c7: $e2
    add d                                         ; $68c8: $82
    ld h, d                                       ; $68c9: $62
    ld d, d                                       ; $68ca: $52
    ld [hl-], a                                   ; $68cb: $32
    pop hl                                        ; $68cc: $e1
    ei                                            ; $68cd: $fb
    sub $82                                       ; $68ce: $d6 $82
    jp nc, $82d4                                  ; $68d0: $d2 $d4 $82

    ei                                            ; $68d3: $fb
    ld [bc], a                                    ; $68d4: $02
    ld [hl], $a2                                  ; $68d5: $36 $a2
    add d                                         ; $68d7: $82
    and h                                         ; $68d8: $a4
    jp nz, $86d4                                  ; $68d9: $c2 $d4 $86

    jp nc, $d282                                  ; $68dc: $d2 $82 $d2

    ld [$e834], a                                 ; $68df: $ea $34 $e8
    and e                                         ; $68e2: $a3
    ei                                            ; $68e3: $fb
    pop hl                                        ; $68e4: $e1
    or d                                          ; $68e5: $b2
    ldh [c], a                                    ; $68e6: $e2
    or c                                          ; $68e7: $b1
    or c                                          ; $68e8: $b1
    ei                                            ; $68e9: $fb
    inc b                                         ; $68ea: $04
    ei                                            ; $68eb: $fb
    pop hl                                        ; $68ec: $e1
    and d                                         ; $68ed: $a2
    ldh [c], a                                    ; $68ee: $e2
    and c                                         ; $68ef: $a1
    and c                                         ; $68f0: $a1
    ei                                            ; $68f1: $fb
    inc b                                         ; $68f2: $04
    ei                                            ; $68f3: $fb
    pop hl                                        ; $68f4: $e1
    sub d                                         ; $68f5: $92
    ldh [c], a                                    ; $68f6: $e2
    sub c                                         ; $68f7: $91
    sub c                                         ; $68f8: $91
    ei                                            ; $68f9: $fb
    inc b                                         ; $68fa: $04
    ei                                            ; $68fb: $fb
    pop hl                                        ; $68fc: $e1
    add d                                         ; $68fd: $82
    ldh [c], a                                    ; $68fe: $e2
    add c                                         ; $68ff: $81
    add c                                         ; $6900: $81
    ei                                            ; $6901: $fb
    inc b                                         ; $6902: $04
    ei                                            ; $6903: $fb
    pop hl                                        ; $6904: $e1
    ld h, d                                       ; $6905: $62
    ldh [c], a                                    ; $6906: $e2
    ld h, c                                       ; $6907: $61
    ld h, c                                       ; $6908: $61
    ei                                            ; $6909: $fb
    inc b                                         ; $690a: $04
    ei                                            ; $690b: $fb
    pop hl                                        ; $690c: $e1
    ld d, d                                       ; $690d: $52
    ldh [c], a                                    ; $690e: $e2
    ld d, c                                       ; $690f: $51
    ld d, c                                       ; $6910: $51
    ei                                            ; $6911: $fb
    inc b                                         ; $6912: $04
    ei                                            ; $6913: $fb
    pop hl                                        ; $6914: $e1
    ld [hl-], a                                   ; $6915: $32
    ldh [c], a                                    ; $6916: $e2
    ld sp, $fb31                                  ; $6917: $31 $31 $fb
    inc b                                         ; $691a: $04
    ei                                            ; $691b: $fb
    pop hl                                        ; $691c: $e1
    add d                                         ; $691d: $82
    ldh [c], a                                    ; $691e: $e2
    add c                                         ; $691f: $81
    add c                                         ; $6920: $81
    ei                                            ; $6921: $fb
    ld b, $e1                                     ; $6922: $06 $e1
    add d                                         ; $6924: $82
    add d                                         ; $6925: $82
    inc b                                         ; $6926: $04
    rst RST_28                                    ; $6927: $ef
    rst RST_38                                    ; $6928: $ff
    cp $e0                                        ; $6929: $fe $e0
    dec bc                                        ; $692b: $0b
    ldh [c], a                                    ; $692c: $e2
    ld [$0908], sp                                ; $692d: $08 $08 $09
    dec c                                         ; $6930: $0d
    cp $e0                                        ; $6931: $fe $e0

Jump_007_6933:
    rlca                                          ; $6933: $07
    ld [hl], d                                    ; $6934: $72
    add d                                         ; $6935: $82
    sub d                                         ; $6936: $92
    sub d                                         ; $6937: $92
    ei                                            ; $6938: $fb

jr_007_6939:
    and d                                         ; $6939: $a2
    ld [de], a                                    ; $693a: $12
    ld b, d                                       ; $693b: $42
    pop bc                                        ; $693c: $c1
    pop bc                                        ; $693d: $c1
    and d                                         ; $693e: $a2
    and d                                         ; $693f: $a2
    ld b, d                                       ; $6940: $42
    ld [de], a                                    ; $6941: $12
    ei                                            ; $6942: $fb
    rlca                                          ; $6943: $07
    and d                                         ; $6944: $a2
    ld [de], a                                    ; $6945: $12
    ld b, d                                       ; $6946: $42
    pop bc                                        ; $6947: $c1
    pop bc                                        ; $6948: $c1
    ld b, d                                       ; $6949: $42
    ld b, d                                       ; $694a: $42
    ld b, d                                       ; $694b: $42
    ld b, c                                       ; $694c: $41
    ld b, c                                       ; $694d: $41
    ei                                            ; $694e: $fb

jr_007_694f:
    and d                                         ; $694f: $a2
    ld de, $42c1                                  ; $6950: $11 $c1 $42
    ld de, $fbc1                                  ; $6953: $11 $c1 $fb
    db $10                                        ; $6956: $10
    and d                                         ; $6957: $a2
    ld de, $51c1                                  ; $6958: $11 $c1 $51
    ld d, c                                       ; $695b: $51
    ld b, c                                       ; $695c: $41
    ld b, c                                       ; $695d: $41
    ld b, d                                       ; $695e: $42
    ld b, d                                       ; $695f: $42
    inc b                                         ; $6960: $04
    cp $fe                                        ; $6961: $fe $fe
    ldh [$ff0b], a                                ; $6963: $e0 $0b
    add [hl]                                      ; $6965: $86
    or $ec                                        ; $6966: $f6 $ec
    ld de, $07ea                                  ; $6968: $11 $ea $07
    rst RST_28                                    ; $696b: $ef
    ldh a, [$ffee]                                ; $696c: $f0 $ee
    ld de, $52e3                                  ; $696e: $11 $e3 $52
    ld [hl], d                                    ; $6971: $72
    sub d                                         ; $6972: $92
    ld [hl], c                                    ; $6973: $71
    ld d, c                                       ; $6974: $51
    ld b, h                                       ; $6975: $44
    rst RST_28                                    ; $6976: $ef
    rrca                                          ; $6977: $0f
    ld [$e234], a                                 ; $6978: $ea $34 $e2
    ld b, c                                       ; $697b: $41
    ld d, c                                       ; $697c: $51
    ld [hl], c                                    ; $697d: $71
    ld b, c                                       ; $697e: $41
    rst RST_28                                    ; $697f: $ef
    ldh a, [$ffea]                                ; $6980: $f0 $ea
    jr c, jr_007_69d6                             ; $6982: $38 $52

    jp nz, $22e3                                  ; $6984: $c2 $e3 $22

    ldh [c], a                                    ; $6987: $e2
    pop bc                                        ; $6988: $c1
    and c                                         ; $6989: $a1
    call nz, Call_000_0fef                        ; $698a: $c4 $ef $0f
    ld [$4134], a                                 ; $698d: $ea $34 $41
    ld hl, $5141                                  ; $6990: $21 $41 $51
    rst RST_28                                    ; $6993: $ef
    ldh a, [$ffea]                                ; $6994: $f0 $ea
    jr c, jr_007_6939                             ; $6996: $38 $a1

    sub c                                         ; $6998: $91
    and c                                         ; $6999: $a1
    pop bc                                        ; $699a: $c1
    db $e3                                        ; $699b: $e3
    ld [hl+], a                                   ; $699c: $22
    and d                                         ; $699d: $a2
    sub h                                         ; $699e: $94
    rst RST_28                                    ; $699f: $ef
    rrca                                          ; $69a0: $0f
    ld [$e234], a                                 ; $69a1: $ea $34 $e2
    pop bc                                        ; $69a4: $c1
    and c                                         ; $69a5: $a1
    sub c                                         ; $69a6: $91
    pop bc                                        ; $69a7: $c1
    rst RST_28                                    ; $69a8: $ef
    ldh a, [$ffea]                                ; $69a9: $f0 $ea
    jr c, jr_007_694f                             ; $69ab: $38 $a2

    db $e3                                        ; $69ad: $e3
    ld [hl+], a                                   ; $69ae: $22
    ldh [c], a                                    ; $69af: $e2
    jp nz, $9172                                  ; $69b0: $c2 $72 $91

    rst RST_28                                    ; $69b3: $ef
    rrca                                          ; $69b4: $0f
    ld [$a134], a                                 ; $69b5: $ea $34 $a1
    sub c                                         ; $69b8: $91
    ld [hl], c                                    ; $69b9: $71
    sub c                                         ; $69ba: $91
    ld [hl], c                                    ; $69bb: $71
    ld d, c                                       ; $69bc: $51
    ld sp, $f0ef                                  ; $69bd: $31 $ef $f0
    ld [$d138], a                                 ; $69c0: $ea $38 $d1
    add c                                         ; $69c3: $81
    ld d, c                                       ; $69c4: $51
    db $e3                                        ; $69c5: $e3
    ld de, $ffef                                  ; $69c6: $11 $ef $ff
    ld [hl-], a                                   ; $69c9: $32
    ldh [c], a                                    ; $69ca: $e2
    add d                                         ; $69cb: $82
    ldh [c], a                                    ; $69cc: $e2
    ld d, d                                       ; $69cd: $52
    add d                                         ; $69ce: $82
    db $e3                                        ; $69cf: $e3
    ld de, $5131                                  ; $69d0: $11 $31 $51
    ld de, $f0ef                                  ; $69d3: $11 $ef $f0

jr_007_69d6:
    ld h, c                                       ; $69d6: $61
    ldh [c], a                                    ; $69d7: $e2
    and c                                         ; $69d8: $a1
    pop de                                        ; $69d9: $d1
    db $e3                                        ; $69da: $e3
    ld h, c                                       ; $69db: $61
    rst RST_28                                    ; $69dc: $ef
    rst RST_38                                    ; $69dd: $ff
    ld d, d                                       ; $69de: $52
    ldh [c], a                                    ; $69df: $e2
    add d                                         ; $69e0: $82
    and d                                         ; $69e1: $a2
    ld h, d                                       ; $69e2: $62
    db $e3                                        ; $69e3: $e3
    ld de, $c1e2                                  ; $69e4: $11 $e2 $c1
    and c                                         ; $69e7: $a1
    pop bc                                        ; $69e8: $c1
    rst RST_28                                    ; $69e9: $ef
    ldh a, [$ffd1]                                ; $69ea: $f0 $d1
    add c                                         ; $69ec: $81
    ld d, c                                       ; $69ed: $51
    pop de                                        ; $69ee: $d1
    rst RST_28                                    ; $69ef: $ef
    rst RST_38                                    ; $69f0: $ff
    db $e3                                        ; $69f1: $e3
    ld [hl-], a                                   ; $69f2: $32
    ldh [c], a                                    ; $69f3: $e2
    add d                                         ; $69f4: $82
    db $e3                                        ; $69f5: $e3
    ld de, $5131                                  ; $69f6: $11 $31 $51
    ld de, $f0ef                                  ; $69f9: $11 $ef $f0
    ld de, $5131                                  ; $69fc: $11 $31 $51
    ld de, $0fef                                  ; $69ff: $11 $ef $0f
    ldh [c], a                                    ; $6a02: $e2
    sub d                                         ; $6a03: $92
    add d                                         ; $6a04: $82
    ld h, d                                       ; $6a05: $62
    ld [hl-], a                                   ; $6a06: $32
    ld d, h                                       ; $6a07: $54
    ld b, h                                       ; $6a08: $44
    cp $fe                                        ; $6a09: $fe $fe
    ldh [$ff0b], a                                ; $6a0b: $e0 $0b
    adc b                                         ; $6a0d: $88
    db $f4                                        ; $6a0e: $f4
    db $ec                                        ; $6a0f: $ec
    db $10                                        ; $6a10: $10
    ld [$eb07], a                                 ; $6a11: $ea $07 $eb
    dec b                                         ; $6a14: $05
    ld [hl], b                                    ; $6a15: $70
    db $e3                                        ; $6a16: $e3
    sub d                                         ; $6a17: $92
    and d                                         ; $6a18: $a2
    jp nz, $91a1                                  ; $6a19: $c2 $a1 $91

    ld [hl], d                                    ; $6a1c: $72
    jp nz, $c4e2                                  ; $6a1d: $c2 $e2 $c4

    db $e3                                        ; $6a20: $e3
    ld [hl+], a                                   ; $6a21: $22
    ld b, d                                       ; $6a22: $42
    ld d, d                                       ; $6a23: $52
    ld b, c                                       ; $6a24: $41
    ld hl, $9242                                  ; $6a25: $21 $42 $92
    ldh [c], a                                    ; $6a28: $e2
    sub h                                         ; $6a29: $94
    db $e3                                        ; $6a2a: $e3
    ld hl, $2111                                  ; $6a2b: $21 $11 $21
    ld b, c                                       ; $6a2e: $41
    ld d, d                                       ; $6a2f: $52
    db $e4                                        ; $6a30: $e4
    ld [hl+], a                                   ; $6a31: $22
    db $e3                                        ; $6a32: $e3
    call nz, Call_007_7294                        ; $6a33: $c4 $94 $72
    sub c                                         ; $6a36: $91
    and c                                         ; $6a37: $a1
    rst RST_20                                    ; $6a38: $e7
    ld bc, $7758                                  ; $6a39: $01 $58 $77
    ld d, a                                       ; $6a3c: $57
    ld c, b                                       ; $6a3d: $48
    daa                                           ; $6a3e: $27
    ld b, a                                       ; $6a3f: $47
    rst RST_20                                    ; $6a40: $e7
    dec bc                                        ; $6a41: $0b
    ld d, h                                       ; $6a42: $54
    ld d, d                                       ; $6a43: $52
    ld d, d                                       ; $6a44: $52
    ld [$e334], a                                 ; $6a45: $ea $34 $e3
    ld d, d                                       ; $6a48: $52
    ld h, d                                       ; $6a49: $62
    add c                                         ; $6a4a: $81
    ld h, c                                       ; $6a4b: $61
    ld d, c                                       ; $6a4c: $51
    ld sp, $3111                                  ; $6a4d: $31 $11 $31
    ld d, c                                       ; $6a50: $51
    ld de, $c1d1                                  ; $6a51: $11 $d1 $c1
    and c                                         ; $6a54: $a1
    add c                                         ; $6a55: $81
    and c                                         ; $6a56: $a1
    ld de, $a161                                  ; $6a57: $11 $61 $a1
    add c                                         ; $6a5a: $81
    pop de                                        ; $6a5b: $d1
    ld de, $5131                                  ; $6a5c: $11 $31 $51
    ld h, c                                       ; $6a5f: $61
    add c                                         ; $6a60: $81
    ld de, $01e7                                  ; $6a61: $11 $e7 $01
    jr c, jr_007_6abd                             ; $6a64: $38 $57

    inc [hl]                                      ; $6a66: $34
    ld d, e                                       ; $6a67: $53
    inc [hl]                                      ; $6a68: $34
    ld d, h                                       ; $6a69: $54
    inc [hl]                                      ; $6a6a: $34
    ld d, e                                       ; $6a6b: $53
    ld d, h                                       ; $6a6c: $54
    inc sp                                        ; $6a6d: $33
    rst RST_20                                    ; $6a6e: $e7
    dec bc                                        ; $6a6f: $0b
    ld d, d                                       ; $6a70: $52
    ld h, d                                       ; $6a71: $62
    add c                                         ; $6a72: $81
    ld h, c                                       ; $6a73: $61
    ld d, c                                       ; $6a74: $51
    ld sp, $8252                                  ; $6a75: $31 $52 $82
    jp nc, Jump_007_6212                          ; $6a78: $d2 $12 $62

    ld d, c                                       ; $6a7b: $51
    ld sp, $01e7                                  ; $6a7c: $31 $e7 $01
    jr @+$39                                      ; $6a7f: $18 $37

    rla                                           ; $6a81: $17
    ldh [c], a                                    ; $6a82: $e2
    ret z                                         ; $6a83: $c8

    and a                                         ; $6a84: $a7
    rst RST_00                                    ; $6a85: $c7
    rst RST_20                                    ; $6a86: $e7
    dec bc                                        ; $6a87: $0b
    call nc, $fec4                                ; $6a88: $d4 $c4 $fe
    cp $e0                                        ; $6a8b: $fe $e0
    dec bc                                        ; $6a8d: $0b
    ld d, d                                       ; $6a8e: $52
    adc b                                         ; $6a8f: $88
    db $eb                                        ; $6a90: $eb
    inc c                                         ; $6a91: $0c
    inc b                                         ; $6a92: $04
    ld [$e107], a                                 ; $6a93: $ea $07 $e1
    ld d, h                                       ; $6a96: $54
    ld d, h                                       ; $6a97: $54
    call nz, $e1c4                                ; $6a98: $c4 $c4 $e1
    inc h                                         ; $6a9b: $24
    inc h                                         ; $6a9c: $24
    sub h                                         ; $6a9d: $94
    call nz, $a4a4                                ; $6a9e: $c4 $a4 $a4
    ld d, h                                       ; $6aa1: $54
    ld d, h                                       ; $6aa2: $54
    ld [hl], h                                    ; $6aa3: $74
    jp nz, $5442                                  ; $6aa4: $c2 $42 $54

    ld d, h                                       ; $6aa7: $54
    inc d                                         ; $6aa8: $14
    add h                                         ; $6aa9: $84
    and h                                         ; $6aaa: $a4
    add h                                         ; $6aab: $84
    ld h, h                                       ; $6aac: $64
    ld d, h                                       ; $6aad: $54
    inc [hl]                                      ; $6aae: $34
    add h                                         ; $6aaf: $84
    call nc, $b4c4                                ; $6ab0: $d4 $c4 $b4
    and h                                         ; $6ab3: $a4
    sub h                                         ; $6ab4: $94
    add h                                         ; $6ab5: $84
    call nc, $fec4                                ; $6ab6: $d4 $c4 $fe
    ldh [rSC], a                                  ; $6ab9: $e0 $02
    cp $c8                                        ; $6abb: $fe $c8

jr_007_6abd:
    rst RST_00                                    ; $6abd: $c7
    rst RST_00                                    ; $6abe: $c7
    cp $e0                                        ; $6abf: $fe $e0
    ld [$f706], sp                                ; $6ac1: $08 $06 $f7
    db $eb                                        ; $6ac4: $eb
    inc b                                         ; $6ac5: $04
    ld [hl], b                                    ; $6ac6: $70
    db $ec                                        ; $6ac7: $ec
    inc de                                        ; $6ac8: $13
    rst RST_28                                    ; $6ac9: $ef
    ldh a, [$ffea]                                ; $6aca: $f0 $ea
    ld [de], a                                    ; $6acc: $12
    db $e3                                        ; $6acd: $e3
    and h                                         ; $6ace: $a4
    cp $e4                                        ; $6acf: $fe $e4
    ld [hl-], a                                   ; $6ad1: $32
    db $e3                                        ; $6ad2: $e3
    ld [hl], d                                    ; $6ad3: $72
    and d                                         ; $6ad4: $a2
    db $e4                                        ; $6ad5: $e4
    ld [hl-], a                                   ; $6ad6: $32
    db $e3                                        ; $6ad7: $e3
    call nz, Call_007_54e4                        ; $6ad8: $c4 $e4 $54
    inc h                                         ; $6adb: $24
    db $e3                                        ; $6adc: $e3
    and h                                         ; $6add: $a4
    add d                                         ; $6ade: $82
    and d                                         ; $6adf: $a2
    jp nz, Jump_007_52e4                          ; $6ae0: $c2 $e4 $52

    ld [hl-], a                                   ; $6ae3: $32
    ld [hl+], a                                   ; $6ae4: $22
    db $e3                                        ; $6ae5: $e3
    jp nz, $22e4                                  ; $6ae6: $c2 $e4 $22

    inc [hl]                                      ; $6ae9: $34
    db $e3                                        ; $6aea: $e3
    ld [hl], h                                    ; $6aeb: $74
    ld d, d                                       ; $6aec: $52
    ld [hl], d                                    ; $6aed: $72
    add d                                         ; $6aee: $82
    sub d                                         ; $6aef: $92
    and d                                         ; $6af0: $a2
    jp nz, $a2a4                                  ; $6af1: $c2 $a4 $a2

    sub d                                         ; $6af4: $92
    and d                                         ; $6af5: $a2
    db $e4                                        ; $6af6: $e4
    ld [hl-], a                                   ; $6af7: $32
    db $e3                                        ; $6af8: $e3
    call nz, Call_007_52e4                        ; $6af9: $c4 $e4 $52
    ld [hl-], a                                   ; $6afc: $32
    db $e3                                        ; $6afd: $e3
    and h                                         ; $6afe: $a4
    add h                                         ; $6aff: $84
    ld [hl], h                                    ; $6b00: $74
    call nz, $e282                                ; $6b01: $c4 $82 $e2
    call nz, Call_007_52e3                        ; $6b04: $c4 $e3 $52
    ld [hl-], a                                   ; $6b07: $32
    ld [hl+], a                                   ; $6b08: $22
    ld [hl-], a                                   ; $6b09: $32
    ld d, d                                       ; $6b0a: $52
    ld [hl], d                                    ; $6b0b: $72
    inc [hl]                                      ; $6b0c: $34
    ld [hl], d                                    ; $6b0d: $72
    add h                                         ; $6b0e: $84
    ld [hl], d                                    ; $6b0f: $72
    ld d, d                                       ; $6b10: $52
    cp $ea                                        ; $6b11: $fe $ea
    ld [de], a                                    ; $6b13: $12
    ldh [$ff08], a                                ; $6b14: $e0 $08
    ld b, a                                       ; $6b16: $47
    rst RST_30                                    ; $6b17: $f7
    db $eb                                        ; $6b18: $eb
    dec b                                         ; $6b19: $05
    ld d, b                                       ; $6b1a: $50
    db $ec                                        ; $6b1b: $ec
    ld [de], a                                    ; $6b1c: $12
    db $ec                                        ; $6b1d: $ec
    db $10                                        ; $6b1e: $10
    db $e4                                        ; $6b1f: $e4
    ld [hl-], a                                   ; $6b20: $32
    ld d, d                                       ; $6b21: $52
    cp $fd                                        ; $6b22: $fe $fd
    ccf                                           ; $6b24: $3f
    ld l, e                                       ; $6b25: $6b
    ld [hl], h                                    ; $6b26: $74
    inc [hl]                                      ; $6b27: $34
    add d                                         ; $6b28: $82
    ld [hl], d                                    ; $6b29: $72
    ld d, d                                       ; $6b2a: $52
    ld [hl-], a                                   ; $6b2b: $32
    ld d, h                                       ; $6b2c: $54
    ld [hl-], a                                   ; $6b2d: $32
    ld d, d                                       ; $6b2e: $52
    db $fd                                        ; $6b2f: $fd
    ccf                                           ; $6b30: $3f
    ld l, e                                       ; $6b31: $6b
    add d                                         ; $6b32: $82
    ld d, d                                       ; $6b33: $52
    ld [hl-], a                                   ; $6b34: $32
    ld [hl+], a                                   ; $6b35: $22
    ld [hl], $e3                                  ; $6b36: $36 $e3
    and d                                         ; $6b38: $a2
    jp nz, $22e4                                  ; $6b39: $c2 $e4 $22

    ld [hl-], a                                   ; $6b3c: $32
    ld d, d                                       ; $6b3d: $52
    cp $76                                        ; $6b3e: $fe $76
    ld [hl], d                                    ; $6b40: $72
    ld d, h                                       ; $6b41: $54
    sub h                                         ; $6b42: $94
    xor b                                         ; $6b43: $a8
    call nz, $82a2                                ; $6b44: $c4 $a2 $82
    ld [hl], h                                    ; $6b47: $74
    ld [hl-], a                                   ; $6b48: $32
    ld d, d                                       ; $6b49: $52
    db $fd                                        ; $6b4a: $fd
    ldh [$ff08], a                                ; $6b4b: $e0 $08
    ld [de], a                                    ; $6b4d: $12
    nop                                           ; $6b4e: $00
    ld [$eb12], a                                 ; $6b4f: $ea $12 $eb
    inc c                                         ; $6b52: $0c
    inc b                                         ; $6b53: $04
    db $e3                                        ; $6b54: $e3
    ld [hl], d                                    ; $6b55: $72
    ld d, d                                       ; $6b56: $52
    cp $e3                                        ; $6b57: $fe $e3
    inc [hl]                                      ; $6b59: $34
    ldh [c], a                                    ; $6b5a: $e2
    and h                                         ; $6b5b: $a4
    sub h                                         ; $6b5c: $94
    db $e3                                        ; $6b5d: $e3
    ld [hl-], a                                   ; $6b5e: $32
    ld d, d                                       ; $6b5f: $52
    ld [hl+], a                                   ; $6b60: $22
    ldh [c], a                                    ; $6b61: $e2
    ld d, d                                       ; $6b62: $52
    and d                                         ; $6b63: $a2
    db $e3                                        ; $6b64: $e3
    ld [hl+], a                                   ; $6b65: $22
    inc d                                         ; $6b66: $14
    ldh [c], a                                    ; $6b67: $e2
    add h                                         ; $6b68: $84
    call nz, $b474                                ; $6b69: $c4 $74 $b4
    or h                                          ; $6b6c: $b4
    ld d, d                                       ; $6b6d: $52
    db $e3                                        ; $6b6e: $e3
    ld [hl-], a                                   ; $6b6f: $32
    ld [hl+], a                                   ; $6b70: $22
    ldh [c], a                                    ; $6b71: $e2
    jp nz, $c2a4                                  ; $6b72: $c2 $a4 $c2

    db $e3                                        ; $6b75: $e3
    ld [hl+], a                                   ; $6b76: $22
    ld [hl-], a                                   ; $6b77: $32
    ld d, d                                       ; $6b78: $52
    ld [hl], d                                    ; $6b79: $72
    ld [hl-], a                                   ; $6b7a: $32
    sub d                                         ; $6b7b: $92
    ld d, d                                       ; $6b7c: $52
    ldh [c], a                                    ; $6b7d: $e2
    jp nz, Jump_007_52e3                          ; $6b7e: $c2 $e3 $52

    ld [hl+], a                                   ; $6b81: $22
    ld [hl-], a                                   ; $6b82: $32
    ldh [c], a                                    ; $6b83: $e2
    jp nz, $22e3                                  ; $6b84: $c2 $e3 $22

    ld b, d                                       ; $6b87: $42
    ld d, d                                       ; $6b88: $52
    ld [hl], d                                    ; $6b89: $72
    ld b, d                                       ; $6b8a: $42
    ld d, h                                       ; $6b8b: $54
    ldh [c], a                                    ; $6b8c: $e2
    call nz, Call_000_24a4                        ; $6b8d: $c4 $a4 $24
    inc [hl]                                      ; $6b90: $34
    ld [hl], d                                    ; $6b91: $72
    add d                                         ; $6b92: $82
    and d                                         ; $6b93: $a2
    jp nz, $32e3                                  ; $6b94: $c2 $e3 $32

    ld [hl+], a                                   ; $6b97: $22
    cp $ff                                        ; $6b98: $fe $ff
    ldh [rTAC], a                                 ; $6b9a: $e0 $07
    adc b                                         ; $6b9c: $88
    and e                                         ; $6b9d: $a3
    ld bc, $05ea                                  ; $6b9e: $01 $ea $05
    db $eb                                        ; $6ba1: $eb
    rlca                                          ; $6ba2: $07
    nop                                           ; $6ba3: $00
    rst RST_28                                    ; $6ba4: $ef
    ldh a, [$fff6]                                ; $6ba5: $f0 $f6
    ei                                            ; $6ba7: $fb
    db $e3                                        ; $6ba8: $e3
    pop bc                                        ; $6ba9: $c1
    db $e4                                        ; $6baa: $e4
    ld d, c                                       ; $6bab: $51
    ld [hl], c                                    ; $6bac: $71
    pop bc                                        ; $6bad: $c1
    ei                                            ; $6bae: $fb
    ld [bc], a                                    ; $6baf: $02
    rst RST_28                                    ; $6bb0: $ef
    rrca                                          ; $6bb1: $0f
    push af                                       ; $6bb2: $f5
    ei                                            ; $6bb3: $fb
    db $e3                                        ; $6bb4: $e3
    pop bc                                        ; $6bb5: $c1
    db $e4                                        ; $6bb6: $e4
    ld d, c                                       ; $6bb7: $51
    ld [hl], c                                    ; $6bb8: $71
    pop bc                                        ; $6bb9: $c1
    di                                            ; $6bba: $f3
    ei                                            ; $6bbb: $fb
    ld [bc], a                                    ; $6bbc: $02
    rst RST_28                                    ; $6bbd: $ef
    ldh a, [$fffb]                                ; $6bbe: $f0 $fb
    ldh [c], a                                    ; $6bc0: $e2
    pop bc                                        ; $6bc1: $c1
    db $e3                                        ; $6bc2: $e3
    ld d, c                                       ; $6bc3: $51
    ld [hl], c                                    ; $6bc4: $71
    pop bc                                        ; $6bc5: $c1
    ei                                            ; $6bc6: $fb
    ld [bc], a                                    ; $6bc7: $02
    ldh [c], a                                    ; $6bc8: $e2
    pop bc                                        ; $6bc9: $c1
    db $e3                                        ; $6bca: $e3
    ld d, c                                       ; $6bcb: $51
    ld [hl], c                                    ; $6bcc: $71
    rst RST_20                                    ; $6bcd: $e7
    ld bc, $33e2                                  ; $6bce: $01 $e2 $33
    sub h                                         ; $6bd1: $94
    and e                                         ; $6bd2: $a3
    call nz, Call_000_23e3                        ; $6bd3: $c4 $e3 $23
    inc [hl]                                      ; $6bd6: $34
    ld d, e                                       ; $6bd7: $53
    ld [hl], h                                    ; $6bd8: $74
    rst RST_20                                    ; $6bd9: $e7
    rlca                                          ; $6bda: $07
    db $ec                                        ; $6bdb: $ec
    dec b                                         ; $6bdc: $05
    db $eb                                        ; $6bdd: $eb
    inc b                                         ; $6bde: $04
    and b                                         ; $6bdf: $a0
    rst RST_28                                    ; $6be0: $ef
    rst RST_38                                    ; $6be1: $ff
    sbc h                                         ; $6be2: $9c
    rst RST_38                                    ; $6be3: $ff
    ldh [rTAC], a                                 ; $6be4: $e0 $07
    adc e                                         ; $6be6: $8b
    and e                                         ; $6be7: $a3
    ld [$f705], a                                 ; $6be8: $ea $05 $f7
    ei                                            ; $6beb: $fb
    db $e3                                        ; $6bec: $e3
    pop bc                                        ; $6bed: $c1
    db $e4                                        ; $6bee: $e4
    ld d, c                                       ; $6bef: $51
    ld [hl], c                                    ; $6bf0: $71
    pop bc                                        ; $6bf1: $c1
    or $fb                                        ; $6bf2: $f6 $fb
    ld [bc], a                                    ; $6bf4: $02
    db $f4                                        ; $6bf5: $f4
    ei                                            ; $6bf6: $fb
    db $e3                                        ; $6bf7: $e3
    pop bc                                        ; $6bf8: $c1
    db $e4                                        ; $6bf9: $e4
    ld d, c                                       ; $6bfa: $51
    ld [hl], c                                    ; $6bfb: $71
    pop bc                                        ; $6bfc: $c1
    ldh a, [c]                                    ; $6bfd: $f2
    ei                                            ; $6bfe: $fb
    ld [bc], a                                    ; $6bff: $02
    ldh a, [$fffb]                                ; $6c00: $f0 $fb
    ldh [c], a                                    ; $6c02: $e2
    pop bc                                        ; $6c03: $c1
    db $e3                                        ; $6c04: $e3
    ld d, c                                       ; $6c05: $51
    ld [hl], c                                    ; $6c06: $71
    pop bc                                        ; $6c07: $c1
    ei                                            ; $6c08: $fb
    inc bc                                        ; $6c09: $03
    rst RST_20                                    ; $6c0a: $e7
    ld bc, $c3e2                                  ; $6c0b: $01 $e2 $c3
    db $e3                                        ; $6c0e: $e3
    ld d, h                                       ; $6c0f: $54
    ld [hl], e                                    ; $6c10: $73
    add h                                         ; $6c11: $84
    and e                                         ; $6c12: $a3
    call nz, $23e4                                ; $6c13: $c4 $e4 $23
    inc [hl]                                      ; $6c16: $34
    rst RST_20                                    ; $6c17: $e7
    rlca                                          ; $6c18: $07
    db $ec                                        ; $6c19: $ec
    dec b                                         ; $6c1a: $05
    db $eb                                        ; $6c1b: $eb
    dec b                                         ; $6c1c: $05
    sub b                                         ; $6c1d: $90
    ld e, h                                       ; $6c1e: $5c
    rst RST_38                                    ; $6c1f: $ff

jr_007_6c20:
    ldh [rTAC], a                                 ; $6c20: $e0 $07
    ld [de], a                                    ; $6c22: $12
    add l                                         ; $6c23: $85
    ld [$f205], a                                 ; $6c24: $ea $05 $f2
    ei                                            ; $6c27: $fb
    db $e4                                        ; $6c28: $e4
    pop bc                                        ; $6c29: $c1
    push hl                                       ; $6c2a: $e5
    ld d, c                                       ; $6c2b: $51
    ld [hl], c                                    ; $6c2c: $71
    pop bc                                        ; $6c2d: $c1
    ei                                            ; $6c2e: $fb
    ld [bc], a                                    ; $6c2f: $02
    ei                                            ; $6c30: $fb
    db $e4                                        ; $6c31: $e4
    pop bc                                        ; $6c32: $c1
    push hl                                       ; $6c33: $e5
    ld d, c                                       ; $6c34: $51
    ld [hl], c                                    ; $6c35: $71
    pop bc                                        ; $6c36: $c1
    pop af                                        ; $6c37: $f1
    ei                                            ; $6c38: $fb
    ld [bc], a                                    ; $6c39: $02
    ldh a, [$ffea]                                ; $6c3a: $f0 $ea
    jr nc, jr_007_6c20                            ; $6c3c: $30 $e2

    ld d, d                                       ; $6c3e: $52
    db $e3                                        ; $6c3f: $e3
    ld d, c                                       ; $6c40: $51
    ld d, c                                       ; $6c41: $51
    ldh [c], a                                    ; $6c42: $e2
    ld [hl-], a                                   ; $6c43: $32
    db $e3                                        ; $6c44: $e3
    ld sp, $e231                                  ; $6c45: $31 $31 $e2
    ld [de], a                                    ; $6c48: $12
    db $e3                                        ; $6c49: $e3
    ld de, $e111                                  ; $6c4a: $11 $11 $e1
    jp nz, $c1e2                                  ; $6c4d: $c2 $e2 $c1

    pop bc                                        ; $6c50: $c1
    pop hl                                        ; $6c51: $e1
    add sp, $00                                   ; $6c52: $e8 $00
    ld e, h                                       ; $6c54: $5c
    rst RST_38                                    ; $6c55: $ff
    ldh [rTAC], a                                 ; $6c56: $e0 $07
    ei                                            ; $6c58: $fb
    ld de, $c1c1                                  ; $6c59: $11 $c1 $c1
    ei                                            ; $6c5c: $fb
    ld [bc], a                                    ; $6c5d: $02
    ld de, $c1c1                                  ; $6c5e: $11 $c1 $c1
    ld de, $c1c1                                  ; $6c61: $11 $c1 $c1
    ld b, c                                       ; $6c64: $41
    ld b, c                                       ; $6c65: $41
    ld b, c                                       ; $6c66: $41
    ld b, c                                       ; $6c67: $41
    and c                                         ; $6c68: $a1
    pop bc                                        ; $6c69: $c1
    ld b, c                                       ; $6c6a: $41
    and c                                         ; $6c6b: $a1
    pop bc                                        ; $6c6c: $c1
    and c                                         ; $6c6d: $a1
    ld b, c                                       ; $6c6e: $41
    and c                                         ; $6c6f: $a1
    and c                                         ; $6c70: $a1
    pop bc                                        ; $6c71: $c1
    ld b, c                                       ; $6c72: $41
    and c                                         ; $6c73: $a1
    pop bc                                        ; $6c74: $c1
    ld b, c                                       ; $6c75: $41
    ld b, c                                       ; $6c76: $41
    ld b, c                                       ; $6c77: $41
    inc a                                         ; $6c78: $3c
    rst RST_38                                    ; $6c79: $ff
    ldh [rTAC], a                                 ; $6c7a: $e0 $07
    adc b                                         ; $6c7c: $88
    di                                            ; $6c7d: $f3
    db $eb                                        ; $6c7e: $eb
    rlca                                          ; $6c7f: $07
    ld bc, $05ea                                  ; $6c80: $01 $ea $05
    rst RST_28                                    ; $6c83: $ef
    ldh a, [$fff3]                                ; $6c84: $f0 $f3
    ldh [c], a                                    ; $6c86: $e2
    jp nc, $d181                                  ; $6c87: $d2 $81 $d1

    db $e3                                        ; $6c8a: $e3
    ld sp, $1151                                  ; $6c8b: $31 $51 $11
    ld sp, $81e2                                  ; $6c8e: $31 $e2 $81
    db $e3                                        ; $6c91: $e3
    ld sp, $a1e2                                  ; $6c92: $31 $e2 $a1
    db $e3                                        ; $6c95: $e3
    ld sp, $7151                                  ; $6c96: $31 $51 $71
    ld sp, $ea51                                  ; $6c99: $31 $51 $ea
    ld b, d                                       ; $6c9c: $42
    db $f4                                        ; $6c9d: $f4
    and c                                         ; $6c9e: $a1
    ei                                            ; $6c9f: $fb
    ldh [c], a                                    ; $6ca0: $e2
    pop bc                                        ; $6ca1: $c1
    db $e3                                        ; $6ca2: $e3
    ld d, c                                       ; $6ca3: $51
    pop bc                                        ; $6ca4: $c1
    ldh [c], a                                    ; $6ca5: $e2
    pop bc                                        ; $6ca6: $c1
    db $e3                                        ; $6ca7: $e3
    ld d, c                                       ; $6ca8: $51
    and c                                         ; $6ca9: $a1
    ei                                            ; $6caa: $fb
    ld [bc], a                                    ; $6cab: $02
    ldh [c], a                                    ; $6cac: $e2
    pop bc                                        ; $6cad: $c1
    ld [$ef34], a                                 ; $6cae: $ea $34 $ef
    rst RST_38                                    ; $6cb1: $ff
    ldh a, [c]                                    ; $6cb2: $f2
    pop bc                                        ; $6cb3: $c1
    db $e3                                        ; $6cb4: $e3
    ld de, $05ec                                  ; $6cb5: $11 $ec $05
    db $eb                                        ; $6cb8: $eb
    inc b                                         ; $6cb9: $04
    ret nz                                        ; $6cba: $c0

    ldh [c], a                                    ; $6cbb: $e2
    call z, $e0ff                                 ; $6cbc: $cc $ff $e0
    rlca                                          ; $6cbf: $07
    adc e                                         ; $6cc0: $8b
    di                                            ; $6cc1: $f3
    db $eb                                        ; $6cc2: $eb
    dec b                                         ; $6cc3: $05
    and c                                         ; $6cc4: $a1
    ld [$f405], a                                 ; $6cc5: $ea $05 $f4
    ldh [c], a                                    ; $6cc8: $e2
    pop de                                        ; $6cc9: $d1
    add c                                         ; $6cca: $81
    pop de                                        ; $6ccb: $d1
    db $e3                                        ; $6ccc: $e3
    ld sp, $51f3                                  ; $6ccd: $31 $f3 $51
    ld de, $e231                                  ; $6cd0: $11 $31 $e2
    add c                                         ; $6cd3: $81
    ldh a, [c]                                    ; $6cd4: $f2
    db $e3                                        ; $6cd5: $e3
    ld sp, $a1e2                                  ; $6cd6: $31 $e2 $a1
    db $e3                                        ; $6cd9: $e3
    ld sp, $f151                                  ; $6cda: $31 $51 $f1
    ld [hl], c                                    ; $6cdd: $71
    ld sp, $e251                                  ; $6cde: $31 $51 $e2
    and c                                         ; $6ce1: $a1
    ld [$ed38], a                                 ; $6ce2: $ea $38 $ed
    db $10                                        ; $6ce5: $10
    ldh a, [$ffe8]                                ; $6ce6: $f0 $e8
    ldh a, [c]                                    ; $6ce8: $f2
    db $e3                                        ; $6ce9: $e3
    and c                                         ; $6cea: $a1
    ei                                            ; $6ceb: $fb
    ldh [c], a                                    ; $6cec: $e2
    pop bc                                        ; $6ced: $c1
    db $e3                                        ; $6cee: $e3
    ld d, c                                       ; $6cef: $51
    pop bc                                        ; $6cf0: $c1
    ldh [c], a                                    ; $6cf1: $e2
    pop bc                                        ; $6cf2: $c1
    db $e3                                        ; $6cf3: $e3
    ld d, c                                       ; $6cf4: $51
    and c                                         ; $6cf5: $a1
    ei                                            ; $6cf6: $fb
    ld [bc], a                                    ; $6cf7: $02
    ldh [c], a                                    ; $6cf8: $e2
    pop bc                                        ; $6cf9: $c1
    db $e3                                        ; $6cfa: $e3
    ld d, c                                       ; $6cfb: $51
    and c                                         ; $6cfc: $a1
    db $eb                                        ; $6cfd: $eb
    dec b                                         ; $6cfe: $05
    ldh [$ffec], a                                ; $6cff: $e0 $ec
    dec b                                         ; $6d01: $05
    sbc h                                         ; $6d02: $9c
    rst RST_38                                    ; $6d03: $ff
    ldh [rTAC], a                                 ; $6d04: $e0 $07
    ld [de], a                                    ; $6d06: $12
    ldh a, [c]                                    ; $6d07: $f2
    ld [$e305], a                                 ; $6d08: $ea $05 $e3
    pop de                                        ; $6d0b: $d1
    add c                                         ; $6d0c: $81
    pop de                                        ; $6d0d: $d1
    db $e4                                        ; $6d0e: $e4
    ld sp, $1151                                  ; $6d0f: $31 $51 $11
    ld sp, $81e3                                  ; $6d12: $31 $e3 $81
    db $e4                                        ; $6d15: $e4
    ld sp, $a1e3                                  ; $6d16: $31 $e3 $a1
    db $e4                                        ; $6d19: $e4
    ld sp, $7151                                  ; $6d1a: $31 $51 $71
    ld sp, $e351                                  ; $6d1d: $31 $51 $e3
    and c                                         ; $6d20: $a1
    ld [$e830], a                                 ; $6d21: $ea $30 $e8
    add d                                         ; $6d24: $82
    pop hl                                        ; $6d25: $e1
    ld d, d                                       ; $6d26: $52
    ldh [c], a                                    ; $6d27: $e2
    pop bc                                        ; $6d28: $c1
    ld d, c                                       ; $6d29: $51
    pop hl                                        ; $6d2a: $e1
    ld d, c                                       ; $6d2b: $51
    ldh [c], a                                    ; $6d2c: $e2
    and c                                         ; $6d2d: $a1
    ld d, c                                       ; $6d2e: $51
    pop hl                                        ; $6d2f: $e1
    ld d, c                                       ; $6d30: $51
    ldh [c], a                                    ; $6d31: $e2
    pop bc                                        ; $6d32: $c1
    ld d, c                                       ; $6d33: $51
    pop hl                                        ; $6d34: $e1
    ld d, c                                       ; $6d35: $51
    ldh [c], a                                    ; $6d36: $e2
    and c                                         ; $6d37: $a1
    ld d, c                                       ; $6d38: $51
    pop bc                                        ; $6d39: $c1
    ld d, c                                       ; $6d3a: $51
    pop hl                                        ; $6d3b: $e1
    pop bc                                        ; $6d3c: $c1
    add sp, $00                                   ; $6d3d: $e8 $00
    ld e, h                                       ; $6d3f: $5c
    rst RST_38                                    ; $6d40: $ff
    ldh [rTAC], a                                 ; $6d41: $e0 $07
    ei                                            ; $6d43: $fb
    ld [de], a                                    ; $6d44: $12
    pop bc                                        ; $6d45: $c1
    pop bc                                        ; $6d46: $c1
    ei                                            ; $6d47: $fb
    inc bc                                        ; $6d48: $03
    ld [hl], c                                    ; $6d49: $71
    ld [hl], c                                    ; $6d4a: $71
    add d                                         ; $6d4b: $82
    and c                                         ; $6d4c: $a1
    ld de, $a141                                  ; $6d4d: $11 $41 $a1
    ld de, $41a1                                  ; $6d50: $11 $a1 $41
    and c                                         ; $6d53: $a1
    and c                                         ; $6d54: $a1
    ld de, $a141                                  ; $6d55: $11 $41 $a1
    ld b, c                                       ; $6d58: $41
    ld b, c                                       ; $6d59: $41
    ld b, c                                       ; $6d5a: $41
    ld b, c                                       ; $6d5b: $41
    inc a                                         ; $6d5c: $3c
    rst RST_38                                    ; $6d5d: $ff
    ldh [rTAC], a                                 ; $6d5e: $e0 $07
    adc b                                         ; $6d60: $88
    and d                                         ; $6d61: $a2
    di                                            ; $6d62: $f3
    db $eb                                        ; $6d63: $eb
    rlca                                          ; $6d64: $07
    ld bc, $07ea                                  ; $6d65: $01 $ea $07
    rst RST_28                                    ; $6d68: $ef
    rrca                                          ; $6d69: $0f
    ldh [c], a                                    ; $6d6a: $e2
    add c                                         ; $6d6b: $81
    ei                                            ; $6d6c: $fb
    ldh [c], a                                    ; $6d6d: $e2
    add c                                         ; $6d6e: $81
    sub c                                         ; $6d6f: $91
    pop de                                        ; $6d70: $d1
    db $e3                                        ; $6d71: $e3
    ld b, c                                       ; $6d72: $41
    add c                                         ; $6d73: $81
    ei                                            ; $6d74: $fb
    inc bc                                        ; $6d75: $03
    rst RST_28                                    ; $6d76: $ef
    ldh a, [$fff0]                                ; $6d77: $f0 $f0
    or c                                          ; $6d79: $b1
    sub c                                         ; $6d7a: $91
    add c                                         ; $6d7b: $81
    ld h, c                                       ; $6d7c: $61
    rst RST_28                                    ; $6d7d: $ef
    rrca                                          ; $6d7e: $0f
    add c                                         ; $6d7f: $81
    ld h, c                                       ; $6d80: $61
    ld b, c                                       ; $6d81: $41
    ld sp, $f0ef                                  ; $6d82: $31 $ef $f0
    ld b, c                                       ; $6d85: $41
    ld sp, $e211                                  ; $6d86: $31 $11 $e2
    or c                                          ; $6d89: $b1
    rst RST_28                                    ; $6d8a: $ef
    rrca                                          ; $6d8b: $0f
    db $e3                                        ; $6d8c: $e3
    ld sp, $e211                                  ; $6d8d: $31 $11 $e2
    or c                                          ; $6d90: $b1
    sub c                                         ; $6d91: $91
    db $eb                                        ; $6d92: $eb
    inc b                                         ; $6d93: $04
    ret nz                                        ; $6d94: $c0

    ld [$ef30], a                                 ; $6d95: $ea $30 $ef
    rst RST_38                                    ; $6d98: $ff
    db $ec                                        ; $6d99: $ec
    dec b                                         ; $6d9a: $05
    db $e3                                        ; $6d9b: $e3
    adc h                                         ; $6d9c: $8c
    rst RST_38                                    ; $6d9d: $ff
    ldh [rTAC], a                                 ; $6d9e: $e0 $07
    adc d                                         ; $6da0: $8a
    and d                                         ; $6da1: $a2
    db $eb                                        ; $6da2: $eb
    dec b                                         ; $6da3: $05
    and b                                         ; $6da4: $a0
    ld [$fb07], a                                 ; $6da5: $ea $07 $fb
    ldh [c], a                                    ; $6da8: $e2
    add c                                         ; $6da9: $81
    sub c                                         ; $6daa: $91
    pop de                                        ; $6dab: $d1
    db $e3                                        ; $6dac: $e3
    ld b, c                                       ; $6dad: $41
    add c                                         ; $6dae: $81
    ei                                            ; $6daf: $fb
    inc bc                                        ; $6db0: $03
    sub c                                         ; $6db1: $91
    add sp, -$0e                                  ; $6db2: $e8 $f2
    ei                                            ; $6db4: $fb
    or c                                          ; $6db5: $b1
    sub c                                         ; $6db6: $91
    add c                                         ; $6db7: $81
    ld h, c                                       ; $6db8: $61
    ei                                            ; $6db9: $fb
    inc b                                         ; $6dba: $04
    db $ec                                        ; $6dbb: $ec
    dec b                                         ; $6dbc: $05
    db $e4                                        ; $6dbd: $e4
    ld c, h                                       ; $6dbe: $4c
    rst RST_38                                    ; $6dbf: $ff
    ldh [rTAC], a                                 ; $6dc0: $e0 $07
    ld [bc], a                                    ; $6dc2: $02
    add l                                         ; $6dc3: $85
    ld [$e107], a                                 ; $6dc4: $ea $07 $e1
    or e                                          ; $6dc7: $b3
    ldh [c], a                                    ; $6dc8: $e2
    or d                                          ; $6dc9: $b2
    pop hl                                        ; $6dca: $e1
    or e                                          ; $6dcb: $b3
    ldh [c], a                                    ; $6dcc: $e2
    or d                                          ; $6dcd: $b2
    pop hl                                        ; $6dce: $e1
    or c                                          ; $6dcf: $b1
    ldh [c], a                                    ; $6dd0: $e2
    ld de, $4131                                  ; $6dd1: $11 $31 $41
    ld h, c                                       ; $6dd4: $61
    add c                                         ; $6dd5: $81
    add sp, -$7e                                  ; $6dd6: $e8 $82
    ei                                            ; $6dd8: $fb
    pop hl                                        ; $6dd9: $e1
    sub d                                         ; $6dda: $92
    ldh [c], a                                    ; $6ddb: $e2
    sub c                                         ; $6ddc: $91
    sub c                                         ; $6ddd: $91
    ei                                            ; $6dde: $fb
    ld [bc], a                                    ; $6ddf: $02
    pop hl                                        ; $6de0: $e1
    add d                                         ; $6de1: $82
    ldh [c], a                                    ; $6de2: $e2
    add c                                         ; $6de3: $81
    add c                                         ; $6de4: $81
    pop hl                                        ; $6de5: $e1
    ld h, d                                       ; $6de6: $62
    ldh [c], a                                    ; $6de7: $e2
    ld h, c                                       ; $6de8: $61
    ld h, c                                       ; $6de9: $61
    add sp, $00                                   ; $6dea: $e8 $00
    ld c, h                                       ; $6dec: $4c
    rst RST_38                                    ; $6ded: $ff
    ldh [rTAC], a                                 ; $6dee: $e0 $07
    ei                                            ; $6df0: $fb
    ld de, $c1c1                                  ; $6df1: $11 $c1 $c1
    ld de, $fbc1                                  ; $6df4: $11 $c1 $fb
    ld [bc], a                                    ; $6df7: $02
    ld [hl], c                                    ; $6df8: $71
    ld [hl], c                                    ; $6df9: $71
    add c                                         ; $6dfa: $81
    add c                                         ; $6dfb: $81
    sub d                                         ; $6dfc: $92
    ei                                            ; $6dfd: $fb
    and c                                         ; $6dfe: $a1
    ld de, $1141                                  ; $6dff: $11 $41 $11
    ld b, c                                       ; $6e02: $41
    ld de, $02fb                                  ; $6e03: $11 $fb $02
    ld b, c                                       ; $6e06: $41
    ld b, c                                       ; $6e07: $41
    ld b, c                                       ; $6e08: $41
    ld b, c                                       ; $6e09: $41
    inc a                                         ; $6e0a: $3c
    rst RST_38                                    ; $6e0b: $ff
    ldh [rTAC], a                                 ; $6e0c: $e0 $07
    adc b                                         ; $6e0e: $88
    add l                                         ; $6e0f: $85
    db $eb                                        ; $6e10: $eb
    rlca                                          ; $6e11: $07
    nop                                           ; $6e12: $00
    rst RST_28                                    ; $6e13: $ef
    ldh a, [$fff5]                                ; $6e14: $f0 $f5
    db $e3                                        ; $6e16: $e3
    sub d                                         ; $6e17: $92
    ld de, $9141                                  ; $6e18: $11 $41 $91
    db $f4                                        ; $6e1b: $f4
    or c                                          ; $6e1c: $b1
    ld sp, $b161                                  ; $6e1d: $31 $61 $b1
    di                                            ; $6e20: $f3
    pop de                                        ; $6e21: $d1
    ld d, c                                       ; $6e22: $51
    add c                                         ; $6e23: $81
    pop de                                        ; $6e24: $d1
    ldh a, [c]                                    ; $6e25: $f2
    db $e4                                        ; $6e26: $e4
    ld sp, $71e3                                  ; $6e27: $31 $e3 $71
    and c                                         ; $6e2a: $a1
    rst RST_28                                    ; $6e2b: $ef
    rrca                                          ; $6e2c: $0f
    db $eb                                        ; $6e2d: $eb
    dec b                                         ; $6e2e: $05
    and b                                         ; $6e2f: $a0
    ldh a, [$ffa1]                                ; $6e30: $f0 $a1
    ld h, c                                       ; $6e32: $61
    add c                                         ; $6e33: $81
    and c                                         ; $6e34: $a1
    pop bc                                        ; $6e35: $c1
    add c                                         ; $6e36: $81
    and c                                         ; $6e37: $a1
    pop bc                                        ; $6e38: $c1
    rst RST_28                                    ; $6e39: $ef
    ldh a, [$ffd1]                                ; $6e3a: $f0 $d1
    and c                                         ; $6e3c: $a1
    pop bc                                        ; $6e3d: $c1
    pop de                                        ; $6e3e: $d1
    db $e4                                        ; $6e3f: $e4
    ld sp, $c1e3                                  ; $6e40: $31 $e3 $c1
    pop de                                        ; $6e43: $d1
    db $e4                                        ; $6e44: $e4
    ld sp, $ffef                                  ; $6e45: $31 $ef $ff
    db $ec                                        ; $6e48: $ec
    dec b                                         ; $6e49: $05
    ld e, h                                       ; $6e4a: $5c
    rst RST_38                                    ; $6e4b: $ff
    ldh [rTAC], a                                 ; $6e4c: $e0 $07
    adc e                                         ; $6e4e: $8b
    add l                                         ; $6e4f: $85
    db $eb                                        ; $6e50: $eb
    dec b                                         ; $6e51: $05
    and b                                         ; $6e52: $a0
    di                                            ; $6e53: $f3
    db $e3                                        ; $6e54: $e3
    sub c                                         ; $6e55: $91
    ld de, $9141                                  ; $6e56: $11 $41 $91
    or c                                          ; $6e59: $b1
    ld sp, $b161                                  ; $6e5a: $31 $61 $b1
    ldh a, [c]                                    ; $6e5d: $f2
    pop de                                        ; $6e5e: $d1
    ld d, c                                       ; $6e5f: $51
    add c                                         ; $6e60: $81
    pop de                                        ; $6e61: $d1
    pop af                                        ; $6e62: $f1
    db $e4                                        ; $6e63: $e4
    ld sp, $71e3                                  ; $6e64: $31 $e3 $71
    and c                                         ; $6e67: $a1
    db $e4                                        ; $6e68: $e4
    ld sp, $e3f0                                  ; $6e69: $31 $f0 $e3
    pop de                                        ; $6e6c: $d1
    and c                                         ; $6e6d: $a1
    pop bc                                        ; $6e6e: $c1
    pop de                                        ; $6e6f: $d1
    db $e4                                        ; $6e70: $e4
    ld sp, $c1e3                                  ; $6e71: $31 $e3 $c1
    pop de                                        ; $6e74: $d1
    db $e4                                        ; $6e75: $e4
    ld sp, $1151                                  ; $6e76: $31 $51 $11
    ld sp, $6151                                  ; $6e79: $31 $51 $61
    ld d, c                                       ; $6e7c: $51
    ld h, c                                       ; $6e7d: $61
    add c                                         ; $6e7e: $81
    db $ec                                        ; $6e7f: $ec
    dec b                                         ; $6e80: $05
    call c, $e0ff                                 ; $6e81: $dc $ff $e0
    rlca                                          ; $6e84: $07
    ld [de], a                                    ; $6e85: $12
    and e                                         ; $6e86: $a3
    ldh [c], a                                    ; $6e87: $e2
    or c                                          ; $6e88: $b1
    db $e3                                        ; $6e89: $e3
    ld h, c                                       ; $6e8a: $61
    or c                                          ; $6e8b: $b1
    ld h, c                                       ; $6e8c: $61
    ld de, $d181                                  ; $6e8d: $11 $81 $d1
    add c                                         ; $6e90: $81
    ld sp, $e4a1                                  ; $6e91: $31 $a1 $e4
    ld sp, $a1e3                                  ; $6e94: $31 $e3 $a1
    ld [$e730], a                                 ; $6e97: $ea $30 $e7
    ld bc, $4354                                  ; $6e9a: $01 $54 $43
    inc [hl]                                      ; $6e9d: $34
    inc hl                                        ; $6e9e: $23
    inc d                                         ; $6e9f: $14
    ldh [c], a                                    ; $6ea0: $e2
    jp $a3b4                                      ; $6ea1: $c3 $b4 $a3


    rst RST_20                                    ; $6ea4: $e7
    rlca                                          ; $6ea5: $07
    ei                                            ; $6ea6: $fb
    pop hl                                        ; $6ea7: $e1
    add c                                         ; $6ea8: $81
    add c                                         ; $6ea9: $81
    ldh [c], a                                    ; $6eaa: $e2
    add c                                         ; $6eab: $81
    ei                                            ; $6eac: $fb
    ld [bc], a                                    ; $6ead: $02
    ldh [c], a                                    ; $6eae: $e2
    add c                                         ; $6eaf: $81
    ei                                            ; $6eb0: $fb
    pop hl                                        ; $6eb1: $e1
    add c                                         ; $6eb2: $81
    add c                                         ; $6eb3: $81
    ldh [c], a                                    ; $6eb4: $e2
    add c                                         ; $6eb5: $81
    ei                                            ; $6eb6: $fb
    inc bc                                        ; $6eb7: $03
    add sp, $00                                   ; $6eb8: $e8 $00
    inc e                                         ; $6eba: $1c
    rst RST_38                                    ; $6ebb: $ff
    ldh [rSB], a                                  ; $6ebc: $e0 $01
    rst RST_00                                    ; $6ebe: $c7
    rst RST_00                                    ; $6ebf: $c7
    rla                                           ; $6ec0: $17
    rst RST_00                                    ; $6ec1: $c7
    rst RST_00                                    ; $6ec2: $c7
    rla                                           ; $6ec3: $17
    rst RST_00                                    ; $6ec4: $c7
    rst RST_00                                    ; $6ec5: $c7
    jp $17c4                                      ; $6ec6: $c3 $c4 $17


    rst RST_00                                    ; $6ec9: $c7
    rst RST_00                                    ; $6eca: $c7
    rla                                           ; $6ecb: $17
    ld b, h                                       ; $6ecc: $44
    ld b, e                                       ; $6ecd: $43
    ld b, a                                       ; $6ece: $47
    ld b, a                                       ; $6ecf: $47
    ei                                            ; $6ed0: $fb
    and a                                         ; $6ed1: $a7
    rst RST_00                                    ; $6ed2: $c7
    daa                                           ; $6ed3: $27
    rla                                           ; $6ed4: $17
    ld b, a                                       ; $6ed5: $47
    ld b, a                                       ; $6ed6: $47
    daa                                           ; $6ed7: $27
    ld b, a                                       ; $6ed8: $47
    ei                                            ; $6ed9: $fb
    ld [bc], a                                    ; $6eda: $02
    rst RST_20                                    ; $6edb: $e7
    rlca                                          ; $6edc: $07
    inc a                                         ; $6edd: $3c
    rst RST_38                                    ; $6ede: $ff
    ldh [rTAC], a                                 ; $6edf: $e0 $07
    adc d                                         ; $6ee1: $8a
    db $f4                                        ; $6ee2: $f4
    db $eb                                        ; $6ee3: $eb
    ld [$ea01], sp                                ; $6ee4: $08 $01 $ea
    inc bc                                        ; $6ee7: $03
    db $e3                                        ; $6ee8: $e3
    or c                                          ; $6ee9: $b1
    add c                                         ; $6eea: $81
    ld b, c                                       ; $6eeb: $41
    or c                                          ; $6eec: $b1
    rst RST_28                                    ; $6eed: $ef
    ldh a, [$fff4]                                ; $6eee: $f0 $f4
    db $e4                                        ; $6ef0: $e4
    or d                                          ; $6ef1: $b2
    add c                                         ; $6ef2: $81
    ld b, c                                       ; $6ef3: $41
    or c                                          ; $6ef4: $b1
    rst RST_28                                    ; $6ef5: $ef
    rst RST_38                                    ; $6ef6: $ff
    ldh a, [$ffe3]                                ; $6ef7: $f0 $e3
    and c                                         ; $6ef9: $a1
    ld h, c                                       ; $6efa: $61
    pop de                                        ; $6efb: $d1
    rst RST_28                                    ; $6efc: $ef
    rrca                                          ; $6efd: $0f
    db $e4                                        ; $6efe: $e4
    db $f4                                        ; $6eff: $f4
    jp nc, Jump_007_61a1                          ; $6f00: $d2 $a1 $61

    db $eb                                        ; $6f03: $eb
    dec b                                         ; $6f04: $05
    ld d, c                                       ; $6f05: $51
    rst RST_28                                    ; $6f06: $ef
    rst RST_38                                    ; $6f07: $ff
    add sp, -$3e                                  ; $6f08: $e8 $c2
    db $ed                                        ; $6f0a: $ed
    inc d                                         ; $6f0b: $14
    ei                                            ; $6f0c: $fb
    rst RST_28                                    ; $6f0d: $ef
    rst RST_38                                    ; $6f0e: $ff
    ldh a, [$ffe3]                                ; $6f0f: $f0 $e3
    add c                                         ; $6f11: $81
    add c                                         ; $6f12: $81
    rst RST_28                                    ; $6f13: $ef
    rrca                                          ; $6f14: $0f
    db $f4                                        ; $6f15: $f4
    add c                                         ; $6f16: $81
    ei                                            ; $6f17: $fb
    ld [bc], a                                    ; $6f18: $02
    rst RST_28                                    ; $6f19: $ef
    rst RST_38                                    ; $6f1a: $ff
    ldh a, [$ffe4]                                ; $6f1b: $f0 $e4
    ld de, $fb11                                  ; $6f1d: $11 $11 $fb
    ldh a, [$ffe3]                                ; $6f20: $f0 $e3
    ld [hl], c                                    ; $6f22: $71
    ld [hl], c                                    ; $6f23: $71
    rst RST_28                                    ; $6f24: $ef
    rrca                                          ; $6f25: $0f
    db $f4                                        ; $6f26: $f4
    ld [hl], c                                    ; $6f27: $71
    ei                                            ; $6f28: $fb
    ld [bc], a                                    ; $6f29: $02
    rst RST_28                                    ; $6f2a: $ef
    rst RST_38                                    ; $6f2b: $ff
    ldh a, [$ffe4]                                ; $6f2c: $f0 $e4
    ld de, $fb11                                  ; $6f2e: $11 $11 $fb
    ldh a, [$ffe3]                                ; $6f31: $f0 $e3
    ld h, c                                       ; $6f33: $61
    ld h, c                                       ; $6f34: $61
    rst RST_28                                    ; $6f35: $ef
    rrca                                          ; $6f36: $0f
    db $f4                                        ; $6f37: $f4
    ld h, c                                       ; $6f38: $61
    ei                                            ; $6f39: $fb
    ld [bc], a                                    ; $6f3a: $02
    rst RST_28                                    ; $6f3b: $ef
    rst RST_38                                    ; $6f3c: $ff
    ldh a, [$ffe4]                                ; $6f3d: $f0 $e4
    ld de, $ea11                                  ; $6f3f: $11 $11 $ea
    jr c, @-$12                                   ; $6f42: $38 $ec

    dec b                                         ; $6f44: $05
    ld e, h                                       ; $6f45: $5c
    rst RST_38                                    ; $6f46: $ff
    ldh [rTAC], a                                 ; $6f47: $e0 $07
    adc d                                         ; $6f49: $8a
    db $f4                                        ; $6f4a: $f4
    ld [$e303], a                                 ; $6f4b: $ea $03 $e3
    ei                                            ; $6f4e: $fb
    or c                                          ; $6f4f: $b1
    add c                                         ; $6f50: $81
    ld b, c                                       ; $6f51: $41
    or c                                          ; $6f52: $b1
    db $e4                                        ; $6f53: $e4
    ei                                            ; $6f54: $fb
    ld [bc], a                                    ; $6f55: $02
    db $e3                                        ; $6f56: $e3
    ei                                            ; $6f57: $fb
    pop de                                        ; $6f58: $d1
    and c                                         ; $6f59: $a1
    ld h, c                                       ; $6f5a: $61
    pop de                                        ; $6f5b: $d1
    db $e4                                        ; $6f5c: $e4
    ei                                            ; $6f5d: $fb
    ld [bc], a                                    ; $6f5e: $02
    add sp, -$3e                                  ; $6f5f: $e8 $c2
    db $ed                                        ; $6f61: $ed
    db $10                                        ; $6f62: $10
    db $fc                                        ; $6f63: $fc
    ld [$fb38], a                                 ; $6f64: $ea $38 $fb
    rst RST_28                                    ; $6f67: $ef
    rst RST_38                                    ; $6f68: $ff
    ldh a, [rNR11]                                ; $6f69: $f0 $11
    ld de, $f0ef                                  ; $6f6b: $11 $ef $f0
    db $f4                                        ; $6f6e: $f4
    ld de, $02fb                                  ; $6f6f: $11 $fb $02
    rst RST_28                                    ; $6f72: $ef
    rst RST_38                                    ; $6f73: $ff
    ld [$f030], a                                 ; $6f74: $ea $30 $f0
    pop de                                        ; $6f77: $d1
    pop de                                        ; $6f78: $d1
    db $fc                                        ; $6f79: $fc
    inc bc                                        ; $6f7a: $03
    ld [$ec38], a                                 ; $6f7b: $ea $38 $ec
    dec b                                         ; $6f7e: $05
    call c, $e0ff                                 ; $6f7f: $dc $ff $e0
    rlca                                          ; $6f82: $07
    ld [bc], a                                    ; $6f83: $02
    add d                                         ; $6f84: $82
    ld [$fb0f], a                                 ; $6f85: $ea $0f $fb
    pop hl                                        ; $6f88: $e1
    ld h, d                                       ; $6f89: $62
    ldh [c], a                                    ; $6f8a: $e2
    ld h, c                                       ; $6f8b: $61
    ld h, c                                       ; $6f8c: $61
    ei                                            ; $6f8d: $fb
    ld [bc], a                                    ; $6f8e: $02
    ei                                            ; $6f8f: $fb
    pop hl                                        ; $6f90: $e1
    add d                                         ; $6f91: $82
    ldh [c], a                                    ; $6f92: $e2
    add c                                         ; $6f93: $81
    add c                                         ; $6f94: $81
    ei                                            ; $6f95: $fb
    ld [bc], a                                    ; $6f96: $02
    ei                                            ; $6f97: $fb
    pop hl                                        ; $6f98: $e1
    ld d, c                                       ; $6f99: $51
    ld d, c                                       ; $6f9a: $51
    ldh [c], a                                    ; $6f9b: $e2
    ld d, c                                       ; $6f9c: $51
    ei                                            ; $6f9d: $fb
    ld [bc], a                                    ; $6f9e: $02
    pop hl                                        ; $6f9f: $e1
    ld d, c                                       ; $6fa0: $51
    ldh [c], a                                    ; $6fa1: $e2
    ld d, c                                       ; $6fa2: $51
    ei                                            ; $6fa3: $fb
    pop hl                                        ; $6fa4: $e1
    ld b, c                                       ; $6fa5: $41
    ld b, c                                       ; $6fa6: $41
    ldh [c], a                                    ; $6fa7: $e2
    ld b, c                                       ; $6fa8: $41
    ei                                            ; $6fa9: $fb
    ld [bc], a                                    ; $6faa: $02
    pop hl                                        ; $6fab: $e1
    ld b, c                                       ; $6fac: $41
    ldh [c], a                                    ; $6fad: $e2
    ld b, c                                       ; $6fae: $41
    ei                                            ; $6faf: $fb
    pop hl                                        ; $6fb0: $e1
    ld sp, $e231                                  ; $6fb1: $31 $31 $e2
    ld sp, $02fb                                  ; $6fb4: $31 $fb $02
    pop hl                                        ; $6fb7: $e1
    ld hl, $21e2                                  ; $6fb8: $21 $e2 $21
    add sp, $00                                   ; $6fbb: $e8 $00
    inc e                                         ; $6fbd: $1c
    rst RST_38                                    ; $6fbe: $ff
    ldh [rTAC], a                                 ; $6fbf: $e0 $07
    ld de, $c1c1                                  ; $6fc1: $11 $c1 $c1
    ld de, $2111                                  ; $6fc4: $11 $11 $21
    ld de, $1121                                  ; $6fc7: $11 $21 $11
    pop bc                                        ; $6fca: $c1
    pop bc                                        ; $6fcb: $c1
    ld de, $5151                                  ; $6fcc: $11 $51 $51
    ld b, c                                       ; $6fcf: $41
    ld b, c                                       ; $6fd0: $41
    ei                                            ; $6fd1: $fb
    and c                                         ; $6fd2: $a1
    ld de, $41a1                                  ; $6fd3: $11 $a1 $41
    ld de, $41a1                                  ; $6fd6: $11 $a1 $41
    ld b, c                                       ; $6fd9: $41
    ei                                            ; $6fda: $fb
    ld [bc], a                                    ; $6fdb: $02
    and c                                         ; $6fdc: $a1
    ld de, $41a1                                  ; $6fdd: $11 $a1 $41
    ld b, c                                       ; $6fe0: $41
    ld b, c                                       ; $6fe1: $41
    ld b, c                                       ; $6fe2: $41
    ld b, c                                       ; $6fe3: $41
    inc a                                         ; $6fe4: $3c
    rst RST_38                                    ; $6fe5: $ff
    ldh [$ff08], a                                ; $6fe6: $e0 $08
    add d                                         ; $6fe8: $82
    adc b                                         ; $6fe9: $88
    ld [bc], a                                    ; $6fea: $02
    db $eb                                        ; $6feb: $eb
    ld [$fe00], sp                                ; $6fec: $08 $00 $fe
    push hl                                       ; $6fef: $e5
    add $72                                       ; $6ff0: $c6 $72
    ld d, h                                       ; $6ff2: $54
    and h                                         ; $6ff3: $a4
    ld [hl], h                                    ; $6ff4: $74
    inc [hl]                                      ; $6ff5: $34
    db $e4                                        ; $6ff6: $e4
    call nz, Call_007_54e5                        ; $6ff7: $c4 $e5 $54
    inc h                                         ; $6ffa: $24
    db $e4                                        ; $6ffb: $e4
    and h                                         ; $6ffc: $a4
    push hl                                       ; $6ffd: $e5
    inc [hl]                                      ; $6ffe: $34
    db $e4                                        ; $6fff: $e4
    call z, $e0fe                                 ; $7000: $cc $fe $e0
    ld [$8881], sp                                ; $7003: $08 $81 $88
    inc b                                         ; $7006: $04
    db $eb                                        ; $7007: $eb
    rlca                                          ; $7008: $07
    nop                                           ; $7009: $00
    rst RST_28                                    ; $700a: $ef
    rrca                                          ; $700b: $0f
    cp $e5                                        ; $700c: $fe $e5
    add $72                                       ; $700e: $c6 $72
    ld d, h                                       ; $7010: $54
    and h                                         ; $7011: $a4
    ld [hl], h                                    ; $7012: $74
    inc [hl]                                      ; $7013: $34
    db $e4                                        ; $7014: $e4
    call nz, Call_007_54e5                        ; $7015: $c4 $e5 $54
    inc h                                         ; $7018: $24
    db $e4                                        ; $7019: $e4
    and h                                         ; $701a: $a4
    push hl                                       ; $701b: $e5
    inc [hl]                                      ; $701c: $34
    db $e4                                        ; $701d: $e4
    call z, $e0fe                                 ; $701e: $cc $fe $e0
    ld [$8822], sp                                ; $7021: $08 $22 $88
    db $eb                                        ; $7024: $eb
    inc b                                         ; $7025: $04
    ld d, b                                       ; $7026: $50
    cp $e5                                        ; $7027: $fe $e5
    add $72                                       ; $7029: $c6 $72
    ld d, h                                       ; $702b: $54
    and h                                         ; $702c: $a4
    ld [hl], h                                    ; $702d: $74
    inc [hl]                                      ; $702e: $34
    db $e4                                        ; $702f: $e4
    call nz, Call_007_54e5                        ; $7030: $c4 $e5 $54
    inc h                                         ; $7033: $24
    db $e4                                        ; $7034: $e4
    and h                                         ; $7035: $a4
    push hl                                       ; $7036: $e5
    inc [hl]                                      ; $7037: $34
    db $e4                                        ; $7038: $e4
    call z, $fffe                                 ; $7039: $cc $fe $ff
    ldh [rTAC], a                                 ; $703c: $e0 $07
    add e                                         ; $703e: $83
    and e                                         ; $703f: $a3
    db $eb                                        ; $7040: $eb
    rlca                                          ; $7041: $07
    nop                                           ; $7042: $00
    ld [bc], a                                    ; $7043: $02
    rst RST_28                                    ; $7044: $ef
    ldh a, [$fffe]                                ; $7045: $f0 $fe
    ei                                            ; $7047: $fb
    push hl                                       ; $7048: $e5
    ld d, c                                       ; $7049: $51
    ld [hl], c                                    ; $704a: $71
    add c                                         ; $704b: $81
    pop bc                                        ; $704c: $c1
    ei                                            ; $704d: $fb
    inc b                                         ; $704e: $04
    ei                                            ; $704f: $fb
    db $e4                                        ; $7050: $e4
    pop bc                                        ; $7051: $c1
    push hl                                       ; $7052: $e5
    ld hl, $7131                                  ; $7053: $21 $31 $71
    ei                                            ; $7056: $fb
    inc b                                         ; $7057: $04
    ei                                            ; $7058: $fb
    db $e4                                        ; $7059: $e4
    ld [hl], c                                    ; $705a: $71
    sub c                                         ; $705b: $91
    and c                                         ; $705c: $a1
    push hl                                       ; $705d: $e5
    ld hl, $04fb                                  ; $705e: $21 $fb $04
    ei                                            ; $7061: $fb
    db $e4                                        ; $7062: $e4
    ld hl, $5141                                  ; $7063: $21 $41 $51
    sub c                                         ; $7066: $91
    ei                                            ; $7067: $fb
    inc b                                         ; $7068: $04
    cp $e0                                        ; $7069: $fe $e0
    rlca                                          ; $706b: $07
    add e                                         ; $706c: $83
    ldh a, [c]                                    ; $706d: $f2
    db $eb                                        ; $706e: $eb
    ld [$0100], sp                                ; $706f: $08 $00 $01
    rst RST_28                                    ; $7072: $ef
    rrca                                          ; $7073: $0f
    cp $fb                                        ; $7074: $fe $fb
    push hl                                       ; $7076: $e5

Call_007_7077:
    ld d, c                                       ; $7077: $51
    ld [hl], c                                    ; $7078: $71
    add c                                         ; $7079: $81
    pop bc                                        ; $707a: $c1
    ei                                            ; $707b: $fb
    inc b                                         ; $707c: $04
    ei                                            ; $707d: $fb
    db $e4                                        ; $707e: $e4
    pop bc                                        ; $707f: $c1
    push hl                                       ; $7080: $e5
    ld hl, $7131                                  ; $7081: $21 $31 $71
    ei                                            ; $7084: $fb
    inc b                                         ; $7085: $04
    ei                                            ; $7086: $fb
    db $e4                                        ; $7087: $e4
    ld [hl], c                                    ; $7088: $71
    sub c                                         ; $7089: $91
    and c                                         ; $708a: $a1
    push hl                                       ; $708b: $e5
    ld hl, $04fb                                  ; $708c: $21 $fb $04
    ei                                            ; $708f: $fb
    db $e4                                        ; $7090: $e4
    ld hl, $5141                                  ; $7091: $21 $41 $51
    sub c                                         ; $7094: $91
    ei                                            ; $7095: $fb
    inc b                                         ; $7096: $04
    cp $e0                                        ; $7097: $fe $e0
    rlca                                          ; $7099: $07
    ld [hl+], a                                   ; $709a: $22
    db $f4                                        ; $709b: $f4
    cp $fb                                        ; $709c: $fe $fb
    push hl                                       ; $709e: $e5
    ld d, c                                       ; $709f: $51
    ld [hl], c                                    ; $70a0: $71
    add c                                         ; $70a1: $81
    pop bc                                        ; $70a2: $c1
    ei                                            ; $70a3: $fb
    inc b                                         ; $70a4: $04
    ei                                            ; $70a5: $fb
    db $e4                                        ; $70a6: $e4
    pop bc                                        ; $70a7: $c1
    push hl                                       ; $70a8: $e5
    ld hl, $7131                                  ; $70a9: $21 $31 $71
    ei                                            ; $70ac: $fb
    inc b                                         ; $70ad: $04
    ei                                            ; $70ae: $fb
    db $e4                                        ; $70af: $e4
    ld [hl], c                                    ; $70b0: $71
    sub c                                         ; $70b1: $91
    and c                                         ; $70b2: $a1
    push hl                                       ; $70b3: $e5
    ld hl, $04fb                                  ; $70b4: $21 $fb $04
    ei                                            ; $70b7: $fb
    db $e4                                        ; $70b8: $e4
    ld hl, $5141                                  ; $70b9: $21 $41 $51
    sub c                                         ; $70bc: $91
    ei                                            ; $70bd: $fb
    inc b                                         ; $70be: $04
    cp $ff                                        ; $70bf: $fe $ff
    ldh [rDIV], a                                 ; $70c1: $e0 $04
    add [hl]                                      ; $70c3: $86
    and d                                         ; $70c4: $a2
    db $eb                                        ; $70c5: $eb
    rlca                                          ; $70c6: $07
    nop                                           ; $70c7: $00
    xor $22                                       ; $70c8: $ee $22
    ld [$fe13], a                                 ; $70ca: $ea $13 $fe
    ldh a, [c]                                    ; $70cd: $f2
    rst RST_28                                    ; $70ce: $ef
    ldh a, [rSC]                                  ; $70cf: $f0 $02
    add sp, -$5e                                  ; $70d1: $e8 $a2
    ldh [c], a                                    ; $70d3: $e2
    ld [de], a                                    ; $70d4: $12
    add d                                         ; $70d5: $82
    jp nc, $82e3                                  ; $70d6: $d2 $e3 $82

    add d                                         ; $70d9: $82
    jp nc, $82e1                                  ; $70da: $d2 $e1 $82

    ldh [c], a                                    ; $70dd: $e2
    add d                                         ; $70de: $82
    jp nc, $82e3                                  ; $70df: $d2 $e3 $82

    add d                                         ; $70e2: $82
    jp nc, Jump_000_0fef                          ; $70e3: $d2 $ef $0f

    ldh [c], a                                    ; $70e6: $e2
    ld [de], a                                    ; $70e7: $12
    ld [hl], d                                    ; $70e8: $72
    jp nc, Jump_007_42e3                          ; $70e9: $d2 $e3 $42

    ld [hl], d                                    ; $70ec: $72
    and d                                         ; $70ed: $a2
    pop hl                                        ; $70ee: $e1
    ld [hl], d                                    ; $70ef: $72
    ldh [c], a                                    ; $70f0: $e2
    ld [hl], d                                    ; $70f1: $72
    jp nc, Jump_007_42e3                          ; $70f2: $d2 $e3 $42

    ld [hl], d                                    ; $70f5: $72
    and d                                         ; $70f6: $a2
    ldh [c], a                                    ; $70f7: $e2
    ld [hl-], a                                   ; $70f8: $32
    and d                                         ; $70f9: $a2
    db $e3                                        ; $70fa: $e3
    ld [hl-], a                                   ; $70fb: $32
    rst RST_28                                    ; $70fc: $ef
    ldh a, [$ffe4]                                ; $70fd: $f0 $e4
    inc sp                                        ; $70ff: $33
    ld [hl+], a                                   ; $7100: $22
    ld [hl-], a                                   ; $7101: $32
    ld h, d                                       ; $7102: $62
    ld [hl+], a                                   ; $7103: $22
    ld [hl-], a                                   ; $7104: $32
    ld h, d                                       ; $7105: $62
    and d                                         ; $7106: $a2
    pop de                                        ; $7107: $d1
    rst RST_28                                    ; $7108: $ef
    rrca                                          ; $7109: $0f
    pop hl                                        ; $710a: $e1
    add d                                         ; $710b: $82
    ldh [c], a                                    ; $710c: $e2
    jp nz, $32e3                                  ; $710d: $c2 $e3 $32

    ld h, d                                       ; $7110: $62
    and d                                         ; $7111: $a2
    rst RST_28                                    ; $7112: $ef
    rst RST_38                                    ; $7113: $ff
    add sp, -$0e                                  ; $7114: $e8 $f2
    ldh a, [$ffe3]                                ; $7116: $f0 $e3
    add d                                         ; $7118: $82
    jp nz, $82a2                                  ; $7119: $c2 $a2 $82

    ld h, d                                       ; $711c: $62
    ld [hl-], a                                   ; $711d: $32
    cp $e0                                        ; $711e: $fe $e0
    inc b                                         ; $7120: $04
    add [hl]                                      ; $7121: $86
    jr c, @-$13                                   ; $7122: $38 $eb

    dec b                                         ; $7124: $05
    and b                                         ; $7125: $a0
    db $ec                                        ; $7126: $ec
    db $10                                        ; $7127: $10
    cp $ea                                        ; $7128: $fe $ea
    inc de                                        ; $712a: $13
    push hl                                       ; $712b: $e5
    inc a                                         ; $712c: $3c
    inc e                                         ; $712d: $1c
    db $e4                                        ; $712e: $e4
    call z, $c4a4                                 ; $712f: $cc $a4 $c4
    call nc, $32a6                                ; $7132: $d4 $a6 $32
    ld [hl+], a                                   ; $7135: $22
    ld [hl-], a                                   ; $7136: $32
    ld h, d                                       ; $7137: $62
    ld [hl+], a                                   ; $7138: $22
    ld [hl-], a                                   ; $7139: $32
    ld h, d                                       ; $713a: $62
    and d                                         ; $713b: $a2
    jp nc, Jump_007_58e5                          ; $713c: $d2 $e5 $58

    ld d, h                                       ; $713f: $54
    inc a                                         ; $7140: $3c
    cp $fe                                        ; $7141: $fe $fe
    ldh [rDIV], a                                 ; $7143: $e0 $04
    ld [hl+], a                                   ; $7145: $22
    and c                                         ; $7146: $a1
    ld [$e213], a                                 ; $7147: $ea $13 $e2
    ld [de], a                                    ; $714a: $12
    add d                                         ; $714b: $82
    jp nc, $82e3                                  ; $714c: $d2 $e3 $82

    add d                                         ; $714f: $82
    jp nc, $82e1                                  ; $7150: $d2 $e1 $82

    ldh [c], a                                    ; $7153: $e2
    add d                                         ; $7154: $82
    jp nc, $82e3                                  ; $7155: $d2 $e3 $82

    add d                                         ; $7158: $82
    jp nc, $12e2                                  ; $7159: $d2 $e2 $12

    ld [hl], d                                    ; $715c: $72
    jp nc, Jump_007_42e3                          ; $715d: $d2 $e3 $42

    ld [hl], d                                    ; $7160: $72
    and d                                         ; $7161: $a2
    pop hl                                        ; $7162: $e1
    ld [hl], d                                    ; $7163: $72
    ldh [c], a                                    ; $7164: $e2
    ld [hl], d                                    ; $7165: $72
    jp nc, Jump_007_42e3                          ; $7166: $d2 $e3 $42

    ld [hl], d                                    ; $7169: $72
    and d                                         ; $716a: $a2
    ldh [c], a                                    ; $716b: $e2
    ld [hl-], a                                   ; $716c: $32
    and d                                         ; $716d: $a2
    db $e3                                        ; $716e: $e3
    ld [hl-], a                                   ; $716f: $32
    ld h, d                                       ; $7170: $62
    and d                                         ; $7171: $a2
    db $e4                                        ; $7172: $e4
    ld [hl-], a                                   ; $7173: $32
    pop hl                                        ; $7174: $e1
    and d                                         ; $7175: $a2
    ldh [c], a                                    ; $7176: $e2
    ld h, d                                       ; $7177: $62
    and d                                         ; $7178: $a2
    db $e3                                        ; $7179: $e3
    ld [hl-], a                                   ; $717a: $32
    ld h, d                                       ; $717b: $62
    and d                                         ; $717c: $a2
    pop hl                                        ; $717d: $e1
    add d                                         ; $717e: $82
    ldh [c], a                                    ; $717f: $e2
    jp nz, $32e3                                  ; $7180: $c2 $e3 $32

    ld h, d                                       ; $7183: $62
    and d                                         ; $7184: $a2
    add sp, -$0d                                  ; $7185: $e8 $f3
    jp nc, Jump_007_52e4                          ; $7187: $d2 $e4 $52

    add d                                         ; $718a: $82
    ld h, d                                       ; $718b: $62
    ld d, d                                       ; $718c: $52
    ld [hl-], a                                   ; $718d: $32
    db $e3                                        ; $718e: $e3
    jp nz, $fffe                                  ; $718f: $c2 $fe $ff

    ldh [rSC], a                                  ; $7192: $e0 $02
    di                                            ; $7194: $f3
    ld [hl-], a                                   ; $7195: $32
    xor b                                         ; $7196: $a8
    rst RST_20                                    ; $7197: $e7
    inc bc                                        ; $7198: $03
    ld b, d                                       ; $7199: $42
    ld b, d                                       ; $719a: $42
    ld b, d                                       ; $719b: $42
    ld b, e                                       ; $719c: $43
    ld b, e                                       ; $719d: $43
    ldh [$ff03], a                                ; $719e: $e0 $03
    add e                                         ; $71a0: $83
    ld b, e                                       ; $71a1: $43
    ldh [$ff03], a                                ; $71a2: $e0 $03
    ld b, e                                       ; $71a4: $43
    ld b, e                                       ; $71a5: $43
    ldh [$ff03], a                                ; $71a6: $e0 $03
    inc hl                                        ; $71a8: $23
    ld b, e                                       ; $71a9: $43
    rst RST_38                                    ; $71aa: $ff
    ldh [$ff03], a                                ; $71ab: $e0 $03
    ld c, l                                       ; $71ad: $4d
    nop                                           ; $71ae: $00
    and $41                                       ; $71af: $e6 $41
    ld bc, $f941                                  ; $71b1: $01 $41 $f9
    pop de                                        ; $71b4: $d1
    rst RST_38                                    ; $71b5: $ff
    ldh [rSB], a                                  ; $71b6: $e0 $01
    ld c, l                                       ; $71b8: $4d
    pop af                                        ; $71b9: $f1
    ei                                            ; $71ba: $fb
    push hl                                       ; $71bb: $e5
    ld d, c                                       ; $71bc: $51
    push hl                                       ; $71bd: $e5
    add c                                         ; $71be: $81
    and $51                                       ; $71bf: $e6 $51
    ld sp, hl                                     ; $71c1: $f9
    ei                                            ; $71c2: $fb
    ld [bc], a                                    ; $71c3: $02
    rst RST_38                                    ; $71c4: $ff
    ldh [rSC], a                                  ; $71c5: $e0 $02
    adc l                                         ; $71c7: $8d
    nop                                           ; $71c8: $00
    db $e4                                        ; $71c9: $e4
    ei                                            ; $71ca: $fb
    ld hl, $9161                                  ; $71cb: $21 $61 $91
    push hl                                       ; $71ce: $e5
    ld h, c                                       ; $71cf: $61
    ld hl, sp-$05                                 ; $71d0: $f8 $fb
    ld [bc], a                                    ; $71d2: $02
    rst RST_38                                    ; $71d3: $ff
    ldh [rSB], a                                  ; $71d4: $e0 $01
    adc a                                         ; $71d6: $8f
    nop                                           ; $71d7: $00
    ei                                            ; $71d8: $fb
    db $e4                                        ; $71d9: $e4
    pop de                                        ; $71da: $d1
    ld b, c                                       ; $71db: $41
    ld sp, $d191                                  ; $71dc: $31 $91 $d1
    ld a, [$02fb]                                 ; $71df: $fa $fb $02

jr_007_71e2:
    rst RST_38                                    ; $71e2: $ff
    ldh [rSB], a                                  ; $71e3: $e0 $01
    ld c, l                                       ; $71e5: $4d
    nop                                           ; $71e6: $00
    ei                                            ; $71e7: $fb
    and $b1                                       ; $71e8: $e6 $b1
    ld d, c                                       ; $71ea: $51
    or c                                          ; $71eb: $b1
    ld d, c                                       ; $71ec: $51
    ld a, [$02fb]                                 ; $71ed: $fa $fb $02
    rst RST_38                                    ; $71f0: $ff
    ldh [rSC], a                                  ; $71f1: $e0 $02
    ld c, l                                       ; $71f3: $4d
    nop                                           ; $71f4: $00
    ei                                            ; $71f5: $fb
    db $e4                                        ; $71f6: $e4
    ld [hl], c                                    ; $71f7: $71
    pop bc                                        ; $71f8: $c1
    add c                                         ; $71f9: $81
    pop de                                        ; $71fa: $d1
    ld a, [$02fb]                                 ; $71fb: $fa $fb $02
    rst RST_38                                    ; $71fe: $ff
    pop hl                                        ; $71ff: $e1
    ld bc, $170c                                  ; $7200: $01 $0c $17
    db $eb                                        ; $7203: $eb
    rst RST_30                                    ; $7204: $f7
    ld b, b                                       ; $7205: $40
    db $ec                                        ; $7206: $ec
    dec b                                         ; $7207: $05
    add c                                         ; $7208: $81
    sub b                                         ; $7209: $90
    and [hl]                                      ; $720a: $a6
    ldh [$ff96], a                                ; $720b: $e0 $96
    ret nz                                        ; $720d: $c0

    add [hl]                                      ; $720e: $86
    and b                                         ; $720f: $a0
    pop hl                                        ; $7210: $e1
    ld [bc], a                                    ; $7211: $02
    inc c                                         ; $7212: $0c
    ld h, $eb                                     ; $7213: $26 $eb
    rst RST_00                                    ; $7215: $c7
    and b                                         ; $7216: $a0
    rst RST_00                                    ; $7217: $c7
    ld h, b                                       ; $7218: $60
    rst RST_00                                    ; $7219: $c7
    jr nz, jr_007_71e2                            ; $721a: $20 $c6

    ldh [$ffc6], a                                ; $721c: $e0 $c6
    and b                                         ; $721e: $a0
    add $60                                       ; $721f: $c6 $60
    db $ec                                        ; $7221: $ec
    dec b                                         ; $7222: $05
    add d                                         ; $7223: $82
    and b                                         ; $7224: $a0
    rst RST_38                                    ; $7225: $ff
    ldh [rSC], a                                  ; $7226: $e0 $02
    ret nz                                        ; $7228: $c0

    ld a, c                                       ; $7229: $79
    ld l, c                                       ; $722a: $69
    ld e, c                                       ; $722b: $59
    ld c, c                                       ; $722c: $49
    add hl, sp                                    ; $722d: $39
    add hl, hl                                    ; $722e: $29
    ldh [rSC], a                                  ; $722f: $e0 $02
    and b                                         ; $7231: $a0
    ld a, d                                       ; $7232: $7a
    ld l, d                                       ; $7233: $6a
    ld e, d                                       ; $7234: $5a
    ld c, d                                       ; $7235: $4a
    ld a, [hl-]                                   ; $7236: $3a
    ld a, [hl+]                                   ; $7237: $2a
    ldh [rSC], a                                  ; $7238: $e0 $02
    add b                                         ; $723a: $80
    ld a, e                                       ; $723b: $7b
    ld l, e                                       ; $723c: $6b
    ld e, e                                       ; $723d: $5b
    ld c, e                                       ; $723e: $4b
    dec sp                                        ; $723f: $3b
    dec hl                                        ; $7240: $2b
    ldh [rSC], a                                  ; $7241: $e0 $02
    ld h, b                                       ; $7243: $60
    ld a, h                                       ; $7244: $7c
    ld l, h                                       ; $7245: $6c
    ld e, h                                       ; $7246: $5c
    ld c, h                                       ; $7247: $4c
    inc a                                         ; $7248: $3c
    inc l                                         ; $7249: $2c
    ldh [rSC], a                                  ; $724a: $e0 $02
    ld b, b                                       ; $724c: $40
    ld a, l                                       ; $724d: $7d
    ld l, l                                       ; $724e: $6d
    ld e, l                                       ; $724f: $5d
    ld c, l                                       ; $7250: $4d
    dec a                                         ; $7251: $3d
    dec l                                         ; $7252: $2d
    rst RST_38                                    ; $7253: $ff
    pop hl                                        ; $7254: $e1
    inc bc                                        ; $7255: $03
    ld [$f788], sp                                ; $7256: $08 $88 $f7
    add b                                         ; $7259: $80
    rst RST_30                                    ; $725a: $f7
    ld b, b                                       ; $725b: $40
    rst RST_10                                    ; $725c: $d7
    ld h, b                                       ; $725d: $60
    rst RST_10                                    ; $725e: $d7
    nop                                           ; $725f: $00
    rst RST_00                                    ; $7260: $c7
    ld b, b                                       ; $7261: $40
    add $c0                                       ; $7262: $c6 $c0
    or a                                          ; $7264: $b7
    jr nz, @-$48                                  ; $7265: $20 $b6

    add b                                         ; $7267: $80
    and a                                         ; $7268: $a7
    nop                                           ; $7269: $00
    add [hl]                                      ; $726a: $86
    ld b, b                                       ; $726b: $40
    ld h, [hl]                                    ; $726c: $66
    ldh [rDMA], a                                 ; $726d: $e0 $46
    nop                                           ; $726f: $00
    ld h, $c0                                     ; $7270: $26 $c0
    dec d                                         ; $7272: $15
    ret nz                                        ; $7273: $c0

    rst RST_38                                    ; $7274: $ff
    rst RST_38                                    ; $7275: $ff
    ldh [$ff03], a                                ; $7276: $e0 $03
    di                                            ; $7278: $f3
    inc a                                         ; $7279: $3c
    ld c, e                                       ; $727a: $4b
    ld e, d                                       ; $727b: $5a
    ld l, c                                       ; $727c: $69
    rst RST_20                                    ; $727d: $e7
    ld [bc], a                                    ; $727e: $02
    inc sp                                        ; $727f: $33
    ld b, h                                       ; $7280: $44
    inc sp                                        ; $7281: $33
    ld b, h                                       ; $7282: $44
    ldh [$ff03], a                                ; $7283: $e0 $03
    db $e3                                        ; $7285: $e3
    ld a, [hl-]                                   ; $7286: $3a
    ld l, c                                       ; $7287: $69
    ld c, b                                       ; $7288: $48
    daa                                           ; $7289: $27
    ldh [$ff03], a                                ; $728a: $e0 $03
    jp Jump_007_6933                              ; $728c: $c3 $33 $69


    ld b, h                                       ; $728f: $44
    daa                                           ; $7290: $27
    ldh [$ff03], a                                ; $7291: $e0 $03
    and e                                         ; $7293: $a3

Call_007_7294:
    ld a, [hl-]                                   ; $7294: $3a
    ld l, c                                       ; $7295: $69
    ld c, b                                       ; $7296: $48
    daa                                           ; $7297: $27
    ldh [$ff03], a                                ; $7298: $e0 $03
    add e                                         ; $729a: $83
    inc sp                                        ; $729b: $33
    ld l, c                                       ; $729c: $69
    ld b, h                                       ; $729d: $44
    daa                                           ; $729e: $27
    ldh [$ff03], a                                ; $729f: $e0 $03
    ld b, e                                       ; $72a1: $43
    ld a, [hl-]                                   ; $72a2: $3a
    ld l, c                                       ; $72a3: $69
    ld c, b                                       ; $72a4: $48
    daa                                           ; $72a5: $27
    rst RST_38                                    ; $72a6: $ff
    ldh [$ff03], a                                ; $72a7: $e0 $03
    and b                                         ; $72a9: $a0
    dec a                                         ; $72aa: $3d
    ldh [rDIV], a                                 ; $72ab: $e0 $04
    nop                                           ; $72ad: $00
    ld a, [hl-]                                   ; $72ae: $3a
    ldh [rDIV], a                                 ; $72af: $e0 $04
    and b                                         ; $72b1: $a0
    dec sp                                        ; $72b2: $3b
    rst RST_38                                    ; $72b3: $ff
    ldh [rSB], a                                  ; $72b4: $e0 $01
    adc l                                         ; $72b6: $8d
    nop                                           ; $72b7: $00
    ei                                            ; $72b8: $fb
    db $e3                                        ; $72b9: $e3
    ld b, c                                       ; $72ba: $41
    add c                                         ; $72bb: $81
    or c                                          ; $72bc: $b1
    db $e4                                        ; $72bd: $e4
    ld b, c                                       ; $72be: $41
    ei                                            ; $72bf: $fb
    ld [bc], a                                    ; $72c0: $02
    rst RST_20                                    ; $72c1: $e7
    inc bc                                        ; $72c2: $03
    ei                                            ; $72c3: $fb
    push hl                                       ; $72c4: $e5
    ld b, c                                       ; $72c5: $41
    add c                                         ; $72c6: $81
    or c                                          ; $72c7: $b1
    db $e4                                        ; $72c8: $e4
    ld b, c                                       ; $72c9: $41
    add c                                         ; $72ca: $81
    or c                                          ; $72cb: $b1
    push hl                                       ; $72cc: $e5
    ld b, c                                       ; $72cd: $41
    add c                                         ; $72ce: $81
    or c                                          ; $72cf: $b1
    ld a, [$02fb]                                 ; $72d0: $fa $fb $02
    rst RST_38                                    ; $72d3: $ff
    jp hl                                         ; $72d4: $e9


    halt                                          ; $72d5: $76
    ldh [rTMA], a                                 ; $72d6: $e0 $06
    ld c, h                                       ; $72d8: $4c
    nop                                           ; $72d9: $00
    ei                                            ; $72da: $fb
    db $e3                                        ; $72db: $e3
    pop bc                                        ; $72dc: $c1
    db $e4                                        ; $72dd: $e4
    ld sp, $fac1                                  ; $72de: $31 $c1 $fa
    ei                                            ; $72e1: $fb
    ld [bc], a                                    ; $72e2: $02
    rst RST_38                                    ; $72e3: $ff
    ldh [rTIMA], a                                ; $72e4: $e0 $05
    ld c, l                                       ; $72e6: $4d
    nop                                           ; $72e7: $00
    ei                                            ; $72e8: $fb
    push hl                                       ; $72e9: $e5
    ld de, $8151                                  ; $72ea: $11 $51 $81
    or c                                          ; $72ed: $b1
    and $31                                       ; $72ee: $e6 $31
    ld d, c                                       ; $72f0: $51
    ld a, [$02fb]                                 ; $72f1: $fa $fb $02
    rst RST_38                                    ; $72f4: $ff
    rst RST_38                                    ; $72f5: $ff
    ldh [rSB], a                                  ; $72f6: $e0 $01
    ldh a, [$ff34]                                ; $72f8: $f0 $34
    inc h                                         ; $72fa: $24
    inc b                                         ; $72fb: $04
    ldh [rNR10], a                                ; $72fc: $e0 $10
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00
    ldh [rSB], a                                  ; $7300: $e0 $01
    ret nc                                        ; $7302: $d0

    ld b, h                                       ; $7303: $44
    inc [hl]                                      ; $7304: $34
    inc d                                         ; $7305: $14
    ldh [rNR10], a                                ; $7306: $e0 $10
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    ldh [rSB], a                                  ; $730a: $e0 $01
    ret nz                                        ; $730c: $c0

    ld d, h                                       ; $730d: $54
    ld b, h                                       ; $730e: $44
    inc h                                         ; $730f: $24
    ldh [rNR10], a                                ; $7310: $e0 $10
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    ldh [rSB], a                                  ; $7314: $e0 $01
    or b                                          ; $7316: $b0
    ld h, h                                       ; $7317: $64
    ld d, h                                       ; $7318: $54
    inc [hl]                                      ; $7319: $34
    ldh [rNR10], a                                ; $731a: $e0 $10
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    ldh [rSB], a                                  ; $731e: $e0 $01
    and b                                         ; $7320: $a0
    ld [hl], h                                    ; $7321: $74
    ld h, h                                       ; $7322: $64
    ld b, h                                       ; $7323: $44
    ldh [rNR10], a                                ; $7324: $e0 $10
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    ldh [rSB], a                                  ; $7328: $e0 $01
    sub b                                         ; $732a: $90
    add h                                         ; $732b: $84
    ld [hl], h                                    ; $732c: $74
    ld d, h                                       ; $732d: $54
    rst RST_38                                    ; $732e: $ff
    ldh [rSC], a                                  ; $732f: $e0 $02
    ret nz                                        ; $7331: $c0

    ld [hl-], a                                   ; $7332: $32
    inc sp                                        ; $7333: $33
    ld [bc], a                                    ; $7334: $02
    ldh [rTIMA], a                                ; $7335: $e0 $05
    ldh a, [$ff34]                                ; $7337: $f0 $34
    jr nc, @+$04                                  ; $7339: $30 $02

    ld bc, $e1ff                                  ; $733b: $01 $ff $e1
    inc bc                                        ; $733e: $03
    inc c                                         ; $733f: $0c
    inc e                                         ; $7340: $1c
    rst RST_30                                    ; $7341: $f7
    ldh [$fff7], a                                ; $7342: $e0 $f7
    nop                                           ; $7344: $00
    rst RST_30                                    ; $7345: $f7
    ldh [$fff7], a                                ; $7346: $e0 $f7
    nop                                           ; $7348: $00
    db $eb                                        ; $7349: $eb
    rst RST_10                                    ; $734a: $d7
    ldh [$ffc7], a                                ; $734b: $e0 $c7
    nop                                           ; $734d: $00
    db $ec                                        ; $734e: $ec
    inc b                                         ; $734f: $04
    add d                                         ; $7350: $82
    nop                                           ; $7351: $00
    daa                                           ; $7352: $27
    ldh [$ff27], a                                ; $7353: $e0 $27
    nop                                           ; $7355: $00
    rla                                           ; $7356: $17
    ldh [rNR22], a                                ; $7357: $e0 $17
    nop                                           ; $7359: $00
    rst RST_38                                    ; $735a: $ff
    ldh [$ff03], a                                ; $735b: $e0 $03
    ret nz                                        ; $735d: $c0

    ei                                            ; $735e: $fb
    ld h, a                                       ; $735f: $67
    inc sp                                        ; $7360: $33
    halt                                          ; $7361: $76
    ld b, e                                       ; $7362: $43
    ld h, d                                       ; $7363: $62
    ld d, d                                       ; $7364: $52
    ld b, d                                       ; $7365: $42
    ld [hl-], a                                   ; $7366: $32

jr_007_7367:
    ld [hl+], a                                   ; $7367: $22
    ldh [$ff03], a                                ; $7368: $e0 $03
    jr nz, jr_007_7367                            ; $736a: $20 $fb

    ld [bc], a                                    ; $736c: $02
    rst RST_38                                    ; $736d: $ff
    pop hl                                        ; $736e: $e1
    ld [bc], a                                    ; $736f: $02
    nop                                           ; $7370: $00
    rla                                           ; $7371: $17
    db $eb                                        ; $7372: $eb
    rst RST_30                                    ; $7373: $f7
    ldh [$ffec], a                                ; $7374: $e0 $ec
    rlca                                          ; $7376: $07
    nop                                           ; $7377: $00
    sub b                                         ; $7378: $90
    db $eb                                        ; $7379: $eb
    rst RST_00                                    ; $737a: $c7
    ld [hl], b                                    ; $737b: $70
    db $ec                                        ; $737c: $ec
    rlca                                          ; $737d: $07
    nop                                           ; $737e: $00
    sub b                                         ; $737f: $90
    db $eb                                        ; $7380: $eb
    and a                                         ; $7381: $a7
    nop                                           ; $7382: $00
    and [hl]                                      ; $7383: $a6
    db $fc                                        ; $7384: $fc
    and [hl]                                      ; $7385: $a6
    ld hl, sp-$5a                                 ; $7386: $f8 $a6
    db $f4                                        ; $7388: $f4
    and [hl]                                      ; $7389: $a6
    ldh a, [$ffa6]                                ; $738a: $f0 $a6
    db $ec                                        ; $738c: $ec
    and [hl]                                      ; $738d: $a6
    add sp, -$5a                                  ; $738e: $e8 $a6
    db $e4                                        ; $7390: $e4
    and [hl]                                      ; $7391: $a6
    ldh [$ffa6], a                                ; $7392: $e0 $a6
    call c, $d8a6                                 ; $7394: $dc $a6 $d8
    and [hl]                                      ; $7397: $a6
    call nc, $d0a6                                ; $7398: $d4 $a6 $d0
    and [hl]                                      ; $739b: $a6
    call z, $c8a6                                 ; $739c: $cc $a6 $c8
    and [hl]                                      ; $739f: $a6
    call nz, Call_000_0aec                        ; $73a0: $c4 $ec $0a
    add c                                         ; $73a3: $81
    ret nz                                        ; $73a4: $c0

    inc d                                         ; $73a5: $14
    add b                                         ; $73a6: $80
    rst RST_38                                    ; $73a7: $ff
    jp hl                                         ; $73a8: $e9


    xor d                                         ; $73a9: $aa
    ldh [$ff03], a                                ; $73aa: $e0 $03
    ld c, a                                       ; $73ac: $4f
    nop                                           ; $73ad: $00
    ei                                            ; $73ae: $fb
    db $e3                                        ; $73af: $e3
    ld sp, $e361                                  ; $73b0: $31 $61 $e3
    ld sp, $e361                                  ; $73b3: $31 $61 $e3
    ld sp, $03fb                                  ; $73b6: $31 $fb $03
    ei                                            ; $73b9: $fb
    ldh [c], a                                    ; $73ba: $e2
    ld [hl], c                                    ; $73bb: $71
    db $e3                                        ; $73bc: $e3
    ld sp, $21e2                                  ; $73bd: $31 $e2 $21
    db $e3                                        ; $73c0: $e3
    ld sp, $61e2                                  ; $73c1: $31 $e2 $61
    ld d, c                                       ; $73c4: $51
    pop hl                                        ; $73c5: $e1
    ld b, c                                       ; $73c6: $41
    ld a, [$02fb]                                 ; $73c7: $fa $fb $02
    rst RST_38                                    ; $73ca: $ff
    ldh [rSB], a                                  ; $73cb: $e0 $01
    ldh a, [$fffb]                                ; $73cd: $f0 $fb
    ld c, h                                       ; $73cf: $4c
    ld l, h                                       ; $73d0: $6c
    adc h                                         ; $73d1: $8c
    ld c, h                                       ; $73d2: $4c
    ei                                            ; $73d3: $fb
    ld b, $ef                                     ; $73d4: $06 $ef
    rst RST_38                                    ; $73d6: $ff
    rst RST_20                                    ; $73d7: $e7
    ld [bc], a                                    ; $73d8: $02
    ei                                            ; $73d9: $fb
    ld [hl], l                                    ; $73da: $75
    ld d, d                                       ; $73db: $52
    sub e                                         ; $73dc: $93
    ld h, l                                       ; $73dd: $65
    ld [hl], l                                    ; $73de: $75
    ld h, h                                       ; $73df: $64
    ld [hl], e                                    ; $73e0: $73
    ld c, h                                       ; $73e1: $4c
    add a                                         ; $73e2: $87
    adc b                                         ; $73e3: $88
    dec a                                         ; $73e4: $3d
    ldh [rSC], a                                  ; $73e5: $e0 $02
    ld b, b                                       ; $73e7: $40
    ei                                            ; $73e8: $fb
    ld [bc], a                                    ; $73e9: $02
    ld a, [hl]                                    ; $73ea: $7e
    ld a, $ce                                     ; $73eb: $3e $ce
    ld e, [hl]                                    ; $73ed: $5e
    ld a, $8e                                     ; $73ee: $3e $8e
    rst RST_38                                    ; $73f0: $ff
    ldh [rTMA], a                                 ; $73f1: $e0 $06
    ldh a, [$ff3f]                                ; $73f3: $f0 $3f
    ld c, a                                       ; $73f5: $4f
    ld b, a                                       ; $73f6: $47
    ld b, a                                       ; $73f7: $47
    ld b, a                                       ; $73f8: $47
    ld b, a                                       ; $73f9: $47
    ld b, [hl]                                    ; $73fa: $46
    ld b, a                                       ; $73fb: $47
    ld b, [hl]                                    ; $73fc: $46
    ld b, a                                       ; $73fd: $47
    ld d, [hl]                                    ; $73fe: $56
    ld b, [hl]                                    ; $73ff: $46
    ld d, [hl]                                    ; $7400: $56
    ld b, [hl]                                    ; $7401: $46
    ld d, [hl]                                    ; $7402: $56
    ldh [rTMA], a                                 ; $7403: $e0 $06
    ret nz                                        ; $7405: $c0

    ld b, [hl]                                    ; $7406: $46
    ldh [rTMA], a                                 ; $7407: $e0 $06
    add b                                         ; $7409: $80
    ld b, [hl]                                    ; $740a: $46
    ldh [rTMA], a                                 ; $740b: $e0 $06
    ld b, b                                       ; $740d: $40
    ld b, [hl]                                    ; $740e: $46
    rst RST_38                                    ; $740f: $ff
    ldh [rSB], a                                  ; $7410: $e0 $01
    ldh a, [rIF]                                  ; $7412: $f0 $0f
    rra                                           ; $7414: $1f
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    rrca                                          ; $7417: $0f
    rra                                           ; $7418: $1f
    nop                                           ; $7419: $00
    nop                                           ; $741a: $00
    rrca                                          ; $741b: $0f
    ld l, a                                       ; $741c: $6f
    nop                                           ; $741d: $00
    nop                                           ; $741e: $00
    rrca                                          ; $741f: $0f
    ld l, a                                       ; $7420: $6f
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    rrca                                          ; $7423: $0f
    ld l, a                                       ; $7424: $6f
    rst RST_38                                    ; $7425: $ff
    pop hl                                        ; $7426: $e1
    inc b                                         ; $7427: $04
    inc b                                         ; $7428: $04
    inc [hl]                                      ; $7429: $34
    push af                                       ; $742a: $f5
    add b                                         ; $742b: $80
    or $80                                        ; $742c: $f6 $80
    rst RST_30                                    ; $742e: $f7
    add b                                         ; $742f: $80
    pop hl                                        ; $7430: $e1
    inc bc                                        ; $7431: $03
    ld [$eb3b], sp                                ; $7432: $08 $3b $eb
    or $00                                        ; $7435: $f6 $00
    db $ec                                        ; $7437: $ec
    ld b, $00                                     ; $7438: $06 $00
    ld b, b                                       ; $743a: $40
    rst RST_38                                    ; $743b: $ff
    pop hl                                        ; $743c: $e1
    ld [bc], a                                    ; $743d: $02
    ld [$f61c], sp                                ; $743e: $08 $1c $f6
    nop                                           ; $7441: $00
    call nz, $8200                                ; $7442: $c4 $00 $82
    nop                                           ; $7445: $00
    ld b, c                                       ; $7446: $41
    nop                                           ; $7447: $00
    or $00                                        ; $7448: $f6 $00
    or $e0                                        ; $744a: $f6 $e0
    ei                                            ; $744c: $fb
    sub $00                                       ; $744d: $d6 $00
    sub $e0                                       ; $744f: $d6 $e0
    ei                                            ; $7451: $fb
    inc b                                         ; $7452: $04
    ei                                            ; $7453: $fb
    add $00                                       ; $7454: $c6 $00
    add $e0                                       ; $7456: $c6 $e0
    ei                                            ; $7458: $fb
    inc bc                                        ; $7459: $03
    pop hl                                        ; $745a: $e1
    dec b                                         ; $745b: $05
    ld [$fb1c], sp                                ; $745c: $08 $1c $fb
    and a                                         ; $745f: $a7
    ld h, b                                       ; $7460: $60
    and a                                         ; $7461: $a7
    nop                                           ; $7462: $00
    ei                                            ; $7463: $fb
    inc b                                         ; $7464: $04
    add a                                         ; $7465: $87
    ld h, b                                       ; $7466: $60
    add a                                         ; $7467: $87
    nop                                           ; $7468: $00
    add a                                         ; $7469: $87
    ld h, b                                       ; $746a: $60
    ld h, a                                       ; $746b: $67
    nop                                           ; $746c: $00
    ld h, a                                       ; $746d: $67
    ld h, b                                       ; $746e: $60
    ld b, a                                       ; $746f: $47
    nop                                           ; $7470: $00
    daa                                           ; $7471: $27
    ld h, b                                       ; $7472: $60
    rla                                           ; $7473: $17
    nop                                           ; $7474: $00
    rst RST_38                                    ; $7475: $ff
    ldh [rSC], a                                  ; $7476: $e0 $02
    ldh a, [rLY]                                  ; $7478: $f0 $44
    ld h, l                                       ; $747a: $65
    ld b, h                                       ; $747b: $44
    ld h, l                                       ; $747c: $65
    scf                                           ; $747d: $37
    daa                                           ; $747e: $27
    rla                                           ; $747f: $17
    rst RST_38                                    ; $7480: $ff
    pop hl                                        ; $7481: $e1
    ld bc, $880c                                  ; $7482: $01 $0c $88
    db $eb                                        ; $7485: $eb
    or $80                                        ; $7486: $f6 $80
    db $ec                                        ; $7488: $ec
    add hl, bc                                    ; $7489: $09
    nop                                           ; $748a: $00
    jr nz, @-$07                                  ; $748b: $20 $f7

    sub b                                         ; $748d: $90
    rst RST_30                                    ; $748e: $f7
    and b                                         ; $748f: $a0
    rst RST_30                                    ; $7490: $f7
    and b                                         ; $7491: $a0
    db $eb                                        ; $7492: $eb
    rst RST_00                                    ; $7493: $c7
    and b                                         ; $7494: $a0
    db $ec                                        ; $7495: $ec
    ld b, $82                                     ; $7496: $06 $82
    nop                                           ; $7498: $00
    db $fd                                        ; $7499: $fd
    sbc l                                         ; $749a: $9d
    ld [hl], h                                    ; $749b: $74
    rst RST_38                                    ; $749c: $ff
    rst RST_20                                    ; $749d: $e7
    inc bc                                        ; $749e: $03
    rst RST_30                                    ; $749f: $f7
    ret nc                                        ; $74a0: $d0

    db $eb                                        ; $74a1: $eb
    rst RST_30                                    ; $74a2: $f7
    ret nc                                        ; $74a3: $d0

    db $ec                                        ; $74a4: $ec
    rlca                                          ; $74a5: $07
    add d                                         ; $74a6: $82
    nop                                           ; $74a7: $00
    rst RST_20                                    ; $74a8: $e7
    rrca                                          ; $74a9: $0f
    ld b, a                                       ; $74aa: $47
    ret nc                                        ; $74ab: $d0

    daa                                           ; $74ac: $27
    ret nc                                        ; $74ad: $d0

    db $fd                                        ; $74ae: $fd
    pop hl                                        ; $74af: $e1
    ld [bc], a                                    ; $74b0: $02
    ld [$eb88], sp                                ; $74b1: $08 $88 $eb
    rst RST_30                                    ; $74b4: $f7
    add b                                         ; $74b5: $80
    or $80                                        ; $74b6: $f6 $80
    db $ec                                        ; $74b8: $ec
    dec c                                         ; $74b9: $0d
    nop                                           ; $74ba: $00
    ret nz                                        ; $74bb: $c0

    rst RST_20                                    ; $74bc: $e7
    ld bc, $a0f6                                  ; $74bd: $01 $f6 $a0
    push af                                       ; $74c0: $f5
    and b                                         ; $74c1: $a0
    or $80                                        ; $74c2: $f6 $80
    push af                                       ; $74c4: $f5
    add b                                         ; $74c5: $80

jr_007_74c6:
    or $60                                        ; $74c6: $f6 $60
    push af                                       ; $74c8: $f5
    ld h, b                                       ; $74c9: $60
    or $40                                        ; $74ca: $f6 $40
    push af                                       ; $74cc: $f5
    ld b, b                                       ; $74cd: $40
    or $00                                        ; $74ce: $f6 $00
    push af                                       ; $74d0: $f5
    nop                                           ; $74d1: $00
    push af                                       ; $74d2: $f5
    ret nz                                        ; $74d3: $c0

    db $f4                                        ; $74d4: $f4
    ret nz                                        ; $74d5: $c0

    push de                                       ; $74d6: $d5
    add b                                         ; $74d7: $80
    call nc, $c580                                ; $74d8: $d4 $80 $c5
    ld b, b                                       ; $74db: $40
    call nz, $b540                                ; $74dc: $c4 $40 $b5
    nop                                           ; $74df: $00
    or h                                          ; $74e0: $b4
    nop                                           ; $74e1: $00
    and h                                         ; $74e2: $a4
    ret nz                                        ; $74e3: $c0

    and e                                         ; $74e4: $a3
    ret nz                                        ; $74e5: $c0

    sub h                                         ; $74e6: $94
    add b                                         ; $74e7: $80
    sub e                                         ; $74e8: $93
    add b                                         ; $74e9: $80
    add h                                         ; $74ea: $84
    ld b, b                                       ; $74eb: $40
    add e                                         ; $74ec: $83
    ld b, b                                       ; $74ed: $40
    ld [hl], h                                    ; $74ee: $74
    nop                                           ; $74ef: $00
    ld [hl], e                                    ; $74f0: $73
    nop                                           ; $74f1: $00
    ld h, e                                       ; $74f2: $63
    ret nz                                        ; $74f3: $c0

    ld h, d                                       ; $74f4: $62
    ret nz                                        ; $74f5: $c0

    ld d, e                                       ; $74f6: $53
    add b                                         ; $74f7: $80
    ld d, d                                       ; $74f8: $52
    add b                                         ; $74f9: $80
    ld b, e                                       ; $74fa: $43
    ld b, b                                       ; $74fb: $40
    ld b, d                                       ; $74fc: $42
    ld b, b                                       ; $74fd: $40
    ld [hl-], a                                   ; $74fe: $32
    nop                                           ; $74ff: $00
    ld sp, $3100                                  ; $7500: $31 $00 $31
    ret nz                                        ; $7503: $c0

    jr nc, jr_007_74c6                            ; $7504: $30 $c0

    ld sp, $3080                                  ; $7506: $31 $80 $30
    add b                                         ; $7509: $80
    rst RST_38                                    ; $750a: $ff
    pop hl                                        ; $750b: $e1
    ld bc, $1f08                                  ; $750c: $01 $08 $1f
    rst RST_30                                    ; $750f: $f7
    ldh [$fff7], a                                ; $7510: $e0 $f7
    ret nc                                        ; $7512: $d0

    rst RST_00                                    ; $7513: $c7
    ret nz                                        ; $7514: $c0

    rst RST_00                                    ; $7515: $c7
    or b                                          ; $7516: $b0
    or a                                          ; $7517: $b7
    and b                                         ; $7518: $a0
    or a                                          ; $7519: $b7
    sub b                                         ; $751a: $90
    and a                                         ; $751b: $a7
    add b                                         ; $751c: $80
    and a                                         ; $751d: $a7
    ld [hl], b                                    ; $751e: $70
    sub a                                         ; $751f: $97
    ld h, b                                       ; $7520: $60
    db $eb                                        ; $7521: $eb
    rst RST_00                                    ; $7522: $c7
    ret nz                                        ; $7523: $c0

    rst RST_00                                    ; $7524: $c7
    or b                                          ; $7525: $b0
    or a                                          ; $7526: $b7
    and b                                         ; $7527: $a0
    or a                                          ; $7528: $b7
    sub b                                         ; $7529: $90
    and a                                         ; $752a: $a7
    add b                                         ; $752b: $80
    and a                                         ; $752c: $a7
    ld [hl], b                                    ; $752d: $70
    sub a                                         ; $752e: $97
    ld h, b                                       ; $752f: $60
    sub a                                         ; $7530: $97
    ld d, b                                       ; $7531: $50
    add a                                         ; $7532: $87
    ld b, b                                       ; $7533: $40
    db $ec                                        ; $7534: $ec
    ld [bc], a                                    ; $7535: $02
    ld bc, $eb00                                  ; $7536: $01 $00 $eb
    rst RST_00                                    ; $7539: $c7
    ret nz                                        ; $753a: $c0

    rst RST_00                                    ; $753b: $c7
    or b                                          ; $753c: $b0
    or a                                          ; $753d: $b7
    and b                                         ; $753e: $a0
    or a                                          ; $753f: $b7
    sub b                                         ; $7540: $90
    and a                                         ; $7541: $a7
    add b                                         ; $7542: $80
    and a                                         ; $7543: $a7
    ld [hl], b                                    ; $7544: $70
    sub a                                         ; $7545: $97
    ld h, b                                       ; $7546: $60
    sub a                                         ; $7547: $97
    ld d, b                                       ; $7548: $50
    add a                                         ; $7549: $87
    ld b, b                                       ; $754a: $40
    db $ec                                        ; $754b: $ec
    dec b                                         ; $754c: $05
    add d                                         ; $754d: $82
    nop                                           ; $754e: $00
    rst RST_38                                    ; $754f: $ff
    pop hl                                        ; $7550: $e1
    ld [bc], a                                    ; $7551: $02
    inc b                                         ; $7552: $04
    dec de                                        ; $7553: $1b
    rst RST_30                                    ; $7554: $f7
    ldh [$fff7], a                                ; $7555: $e0 $f7
    nop                                           ; $7557: $00
    rst RST_30                                    ; $7558: $f7
    ldh [$fff7], a                                ; $7559: $e0 $f7
    nop                                           ; $755b: $00
    db $eb                                        ; $755c: $eb
    rst RST_10                                    ; $755d: $d7
    ldh [$ffc7], a                                ; $755e: $e0 $c7
    nop                                           ; $7560: $00
    db $ec                                        ; $7561: $ec
    inc b                                         ; $7562: $04
    add d                                         ; $7563: $82
    nop                                           ; $7564: $00
    daa                                           ; $7565: $27

jr_007_7566:
    ldh [$ff27], a                                ; $7566: $e0 $27
    nop                                           ; $7568: $00
    rla                                           ; $7569: $17
    ldh [rNR22], a                                ; $756a: $e0 $17
    nop                                           ; $756c: $00
    rst RST_38                                    ; $756d: $ff
    pop hl                                        ; $756e: $e1
    ld bc, $1e04                                  ; $756f: $01 $04 $1e
    or $80                                        ; $7572: $f6 $80
    add $00                                       ; $7574: $c6 $00
    and [hl]                                      ; $7576: $a6
    add b                                         ; $7577: $80
    add [hl]                                      ; $7578: $86
    nop                                           ; $7579: $00
    jp hl                                         ; $757a: $e9


    adc b                                         ; $757b: $88
    or $80                                        ; $757c: $f6 $80
    rst RST_30                                    ; $757e: $f7
    nop                                           ; $757f: $00
    db $eb                                        ; $7580: $eb
    sub $80                                       ; $7581: $d6 $80
    rst RST_00                                    ; $7583: $c7
    nop                                           ; $7584: $00
    db $ec                                        ; $7585: $ec
    ld b, $82                                     ; $7586: $06 $82
    nop                                           ; $7588: $00
    rst RST_20                                    ; $7589: $e7
    inc b                                         ; $758a: $04
    daa                                           ; $758b: $27
    nop                                           ; $758c: $00
    pop hl                                        ; $758d: $e1
    ld bc, $8808                                  ; $758e: $01 $08 $88
    db $eb                                        ; $7591: $eb
    add $80                                       ; $7592: $c6 $80
    add $a0                                       ; $7594: $c6 $a0
    add $c0                                       ; $7596: $c6 $c0
    add $e0                                       ; $7598: $c6 $e0
    rst RST_00                                    ; $759a: $c7
    nop                                           ; $759b: $00
    rst RST_00                                    ; $759c: $c7
    jr nz, jr_007_7566                            ; $759d: $20 $c7

    ld b, b                                       ; $759f: $40
    db $ec                                        ; $75a0: $ec
    inc bc                                        ; $75a1: $03
    add d                                         ; $75a2: $82
    ld b, b                                       ; $75a3: $40
    rst RST_38                                    ; $75a4: $ff
    ldh [rDIV], a                                 ; $75a5: $e0 $04
    ldh [rSVBK], a                                ; $75a7: $e0 $70
    nop                                           ; $75a9: $00
    rst RST_38                                    ; $75aa: $ff
    pop hl                                        ; $75ab: $e1
    ld bc, $8808                                  ; $75ac: $01 $08 $88
    push af                                       ; $75af: $f5
    ldh [$fff6], a                                ; $75b0: $e0 $f6
    ld b, b                                       ; $75b2: $40
    db $eb                                        ; $75b3: $eb
    or l                                          ; $75b4: $b5
    ldh [$ffc6], a                                ; $75b5: $e0 $c6
    ld b, b                                       ; $75b7: $40
    db $ec                                        ; $75b8: $ec

jr_007_75b9:
    ld b, $82                                     ; $75b9: $06 $82
    nop                                           ; $75bb: $00
    dec d                                         ; $75bc: $15
    ldh [rIE], a                                  ; $75bd: $e0 $ff
    pop hl                                        ; $75bf: $e1
    ld [bc], a                                    ; $75c0: $02
    ld [$a688], sp                                ; $75c1: $08 $88 $a6
    ldh [$ffa7], a                                ; $75c4: $e0 $a7
    ld b, b                                       ; $75c6: $40
    sub [hl]                                      ; $75c7: $96
    ldh [$ff87], a                                ; $75c8: $e0 $87
    ld b, b                                       ; $75ca: $40
    halt                                          ; $75cb: $76
    ldh [$ff67], a                                ; $75cc: $e0 $67
    ld b, b                                       ; $75ce: $40
    ld d, [hl]                                    ; $75cf: $56
    ldh [rBGP], a                                 ; $75d0: $e0 $47
    ld b, b                                       ; $75d2: $40
    ld [hl], $e0                                  ; $75d3: $36 $e0
    daa                                           ; $75d5: $27
    ld b, b                                       ; $75d6: $40
    ld h, $e0                                     ; $75d7: $26 $e0
    daa                                           ; $75d9: $27

jr_007_75da:
    ld b, b                                       ; $75da: $40
    ld h, $e0                                     ; $75db: $26 $e0
    rla                                           ; $75dd: $17
    ld b, b                                       ; $75de: $40
    ld d, $e0                                     ; $75df: $16 $e0
    rst RST_38                                    ; $75e1: $ff
    pop hl                                        ; $75e2: $e1
    ld bc, $1f04                                  ; $75e3: $01 $04 $1f
    db $eb                                        ; $75e6: $eb
    add [hl]                                      ; $75e7: $86
    ret nz                                        ; $75e8: $c0

    db $ec                                        ; $75e9: $ec
    ld b, $01                                     ; $75ea: $06 $01
    jr nz, @-$07                                  ; $75ec: $20 $f7

    add b                                         ; $75ee: $80
    rst RST_30                                    ; $75ef: $f7
    and b                                         ; $75f0: $a0
    rst RST_30                                    ; $75f1: $f7
    ret nz                                        ; $75f2: $c0

    rst RST_30                                    ; $75f3: $f7
    ldh [$fff7], a                                ; $75f4: $e0 $f7
    ret nz                                        ; $75f6: $c0

    rst RST_30                                    ; $75f7: $f7
    and b                                         ; $75f8: $a0
    rst RST_30                                    ; $75f9: $f7
    add b                                         ; $75fa: $80
    rst RST_30                                    ; $75fb: $f7
    ld h, b                                       ; $75fc: $60
    rst RST_10                                    ; $75fd: $d7
    ld b, b                                       ; $75fe: $40
    rst RST_00                                    ; $75ff: $c7
    jr nz, jr_007_75b9                            ; $7600: $20 $b7

    nop                                           ; $7602: $00
    and [hl]                                      ; $7603: $a6
    ldh [$ff96], a                                ; $7604: $e0 $96
    ret nz                                        ; $7606: $c0

    rst RST_38                                    ; $7607: $ff
    pop hl                                        ; $7608: $e1
    ld [bc], a                                    ; $7609: $02
    nop                                           ; $760a: $00
    inc e                                         ; $760b: $1c
    rst RST_30                                    ; $760c: $f7
    ldh [$fff7], a                                ; $760d: $e0 $f7
    add b                                         ; $760f: $80
    rst RST_10                                    ; $7610: $d7
    jr nz, jr_007_75da                            ; $7611: $20 $c7

    ldh [$ffb7], a                                ; $7613: $e0 $b7
    jr nz, @-$57                                  ; $7615: $20 $a7

    ldh [$fff6], a                                ; $7617: $e0 $f6
    nop                                           ; $7619: $00
    or $20                                        ; $761a: $f6 $20
    sub $40                                       ; $761c: $d6 $40
    add $60                                       ; $761e: $c6 $60
    or [hl]                                       ; $7620: $b6
    add b                                         ; $7621: $80
    and [hl]                                      ; $7622: $a6
    and b                                         ; $7623: $a0
    add [hl]                                      ; $7624: $86
    ret nz                                        ; $7625: $c0

    ld h, [hl]                                    ; $7626: $66
    ldh [rBGP], a                                 ; $7627: $e0 $47
    nop                                           ; $7629: $00
    daa                                           ; $762a: $27
    jr nz, jr_007_7644                            ; $762b: $20 $17

    ld b, b                                       ; $762d: $40
    rst RST_38                                    ; $762e: $ff
    ldh [rSB], a                                  ; $762f: $e0 $01
    ldh a, [$ff7c]                                ; $7631: $f0 $7c
    ld l, e                                       ; $7633: $6b
    ld e, d                                       ; $7634: $5a
    ld c, c                                       ; $7635: $49
    add hl, sp                                    ; $7636: $39
    add hl, hl                                    ; $7637: $29
    ei                                            ; $7638: $fb
    ldh [rSB], a                                  ; $7639: $e0 $01
    ldh a, [$ff7b]                                ; $763b: $f0 $7b
    ld l, e                                       ; $763d: $6b
    ld e, e                                       ; $763e: $5b
    ld c, e                                       ; $763f: $4b
    dec sp                                        ; $7640: $3b
    dec hl                                        ; $7641: $2b
    ei                                            ; $7642: $fb
    dec b                                         ; $7643: $05

jr_007_7644:
    ldh [rSB], a                                  ; $7644: $e0 $01
    ret nz                                        ; $7646: $c0

    ld a, d                                       ; $7647: $7a
    ld l, d                                       ; $7648: $6a
    ld e, d                                       ; $7649: $5a
    ld c, d                                       ; $764a: $4a
    ld a, [hl-]                                   ; $764b: $3a
    ld a, [hl+]                                   ; $764c: $2a
    ldh [rSB], a                                  ; $764d: $e0 $01
    ld h, b                                       ; $764f: $60
    ld a, c                                       ; $7650: $79
    ld l, c                                       ; $7651: $69
    ld e, c                                       ; $7652: $59
    ld c, c                                       ; $7653: $49
    add hl, sp                                    ; $7654: $39
    add hl, hl                                    ; $7655: $29
    ldh [rSB], a                                  ; $7656: $e0 $01
    ld b, b                                       ; $7658: $40
    ld a, b                                       ; $7659: $78
    ld l, b                                       ; $765a: $68
    ld e, b                                       ; $765b: $58
    ld c, b                                       ; $765c: $48
    jr c, jr_007_7687                             ; $765d: $38 $28

    rst RST_38                                    ; $765f: $ff
    pop hl                                        ; $7660: $e1
    ld bc, $880c                                  ; $7661: $01 $0c $88
    db $eb                                        ; $7664: $eb
    or l                                          ; $7665: $b5
    add b                                         ; $7666: $80
    or l                                          ; $7667: $b5
    add b                                         ; $7668: $80
    sub a                                         ; $7669: $97
    add b                                         ; $766a: $80
    ld h, a                                       ; $766b: $67
    and b                                         ; $766c: $a0
    ld h, a                                       ; $766d: $67
    ret nz                                        ; $766e: $c0

    ld h, a                                       ; $766f: $67
    ldh [$ffe7], a                                ; $7670: $e0 $e7
    dec c                                         ; $7672: $0d
    nop                                           ; $7673: $00
    rst RST_20                                    ; $7674: $e7
    ld bc, $03ec                                  ; $7675: $01 $ec $03
    add c                                         ; $7678: $81
    nop                                           ; $7679: $00
    ld h, l                                       ; $767a: $65
    add b                                         ; $767b: $80
    ld h, l                                       ; $767c: $65
    add b                                         ; $767d: $80
    ld h, a                                       ; $767e: $67
    add b                                         ; $767f: $80
    ld b, a                                       ; $7680: $47
    and b                                         ; $7681: $a0
    ld b, a                                       ; $7682: $47
    ret nz                                        ; $7683: $c0

    ld b, a                                       ; $7684: $47
    ldh [$ffe7], a                                ; $7685: $e0 $e7

jr_007_7687:
    dec c                                         ; $7687: $0d
    nop                                           ; $7688: $00
    rst RST_20                                    ; $7689: $e7
    ld bc, $8055                                  ; $768a: $01 $55 $80
    ld d, l                                       ; $768d: $55
    add b                                         ; $768e: $80
    ld d, a                                       ; $768f: $57
    add b                                         ; $7690: $80
    scf                                           ; $7691: $37
    and b                                         ; $7692: $a0
    scf                                           ; $7693: $37
    ret nz                                        ; $7694: $c0

    scf                                           ; $7695: $37
    ldh [$ffe7], a                                ; $7696: $e0 $e7
    dec c                                         ; $7698: $0d
    nop                                           ; $7699: $00
    rst RST_20                                    ; $769a: $e7
    ld bc, $8045                                  ; $769b: $01 $45 $80
    ld b, l                                       ; $769e: $45
    add b                                         ; $769f: $80
    ld b, a                                       ; $76a0: $47
    add b                                         ; $76a1: $80
    scf                                           ; $76a2: $37
    and b                                         ; $76a3: $a0
    scf                                           ; $76a4: $37
    ret nz                                        ; $76a5: $c0

    scf                                           ; $76a6: $37
    ldh [rIE], a                                  ; $76a7: $e0 $ff
    ldh [rSB], a                                  ; $76a9: $e0 $01
    ldh a, [rNR50]                                ; $76ab: $f0 $24
    inc d                                         ; $76ad: $14
    inc b                                         ; $76ae: $04
    ldh [rNR10], a                                ; $76af: $e0 $10
    nop                                           ; $76b1: $00
    nop                                           ; $76b2: $00
    ldh [rSB], a                                  ; $76b3: $e0 $01
    ret nc                                        ; $76b5: $d0

    inc [hl]                                      ; $76b6: $34
    inc h                                         ; $76b7: $24
    inc d                                         ; $76b8: $14
    ldh [rNR10], a                                ; $76b9: $e0 $10
    nop                                           ; $76bb: $00
    nop                                           ; $76bc: $00
    ldh [rSB], a                                  ; $76bd: $e0 $01
    ret nz                                        ; $76bf: $c0

    inc h                                         ; $76c0: $24
    inc d                                         ; $76c1: $14
    inc b                                         ; $76c2: $04
    ldh [rNR10], a                                ; $76c3: $e0 $10
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    ldh [rSB], a                                  ; $76c7: $e0 $01
    and b                                         ; $76c9: $a0
    inc [hl]                                      ; $76ca: $34
    inc h                                         ; $76cb: $24
    inc d                                         ; $76cc: $14
    ldh [rNR10], a                                ; $76cd: $e0 $10
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    ldh [rSB], a                                  ; $76d1: $e0 $01
    ld h, b                                       ; $76d3: $60
    inc h                                         ; $76d4: $24
    inc d                                         ; $76d5: $14
    inc b                                         ; $76d6: $04
    ldh [rNR10], a                                ; $76d7: $e0 $10
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00
    ldh [rSB], a                                  ; $76db: $e0 $01
    jr nz, jr_007_7713                            ; $76dd: $20 $34

    inc h                                         ; $76df: $24
    inc d                                         ; $76e0: $14
    rst RST_38                                    ; $76e1: $ff
    pop hl                                        ; $76e2: $e1
    rlca                                          ; $76e3: $07
    nop                                           ; $76e4: $00
    rla                                           ; $76e5: $17
    ld b, [hl]                                    ; $76e6: $46
    ret nz                                        ; $76e7: $c0

    add [hl]                                      ; $76e8: $86
    ret nz                                        ; $76e9: $c0

    add $c0                                       ; $76ea: $c6 $c0
    or $c0                                        ; $76ec: $f6 $c0
    pop hl                                        ; $76ee: $e1
    inc bc                                        ; $76ef: $03

jr_007_76f0:
    ld [$eb17], sp                                ; $76f0: $08 $17 $eb
    or $c0                                        ; $76f3: $f6 $c0
    db $ec                                        ; $76f5: $ec
    ld a, [bc]                                    ; $76f6: $0a
    nop                                           ; $76f7: $00
    db $10                                        ; $76f8: $10
    rst RST_38                                    ; $76f9: $ff
    pop hl                                        ; $76fa: $e1
    ld b, $00                                     ; $76fb: $06 $00
    ld [hl], a                                    ; $76fd: $77
    db $eb                                        ; $76fe: $eb
    ld b, a                                       ; $76ff: $47
    nop                                           ; $7700: $00
    ld d, a                                       ; $7701: $57
    jr nz, jr_007_76f0                            ; $7702: $20 $ec

    ld b, $02                                     ; $7704: $06 $02
    db $10                                        ; $7706: $10
    db $eb                                        ; $7707: $eb
    rst RST_30                                    ; $7708: $f7
    ld h, b                                       ; $7709: $60
    rst RST_30                                    ; $770a: $f7
    add b                                         ; $770b: $80
    db $ec                                        ; $770c: $ec
    inc b                                         ; $770d: $04
    nop                                           ; $770e: $00
    db $10                                        ; $770f: $10
    rst RST_00                                    ; $7710: $c7
    and b                                         ; $7711: $a0
    and a                                         ; $7712: $a7

jr_007_7713:
    ret nz                                        ; $7713: $c0

    add a                                         ; $7714: $87
    or b                                          ; $7715: $b0
    ld h, a                                       ; $7716: $67
    ret nc                                        ; $7717: $d0

    ld b, a                                       ; $7718: $47
    ret nz                                        ; $7719: $c0

    daa                                           ; $771a: $27
    ldh [rIE], a                                  ; $771b: $e0 $ff
    pop hl                                        ; $771d: $e1
    ld [$6c04], sp                                ; $771e: $08 $04 $6c
    db $eb                                        ; $7721: $eb
    ld h, l                                       ; $7722: $65
    nop                                           ; $7723: $00
    db $ec                                        ; $7724: $ec
    ld [$0801], sp                                ; $7725: $08 $01 $08
    db $eb                                        ; $7728: $eb
    push af                                       ; $7729: $f5
    ld b, b                                       ; $772a: $40
    db $ec                                        ; $772b: $ec
    dec bc                                        ; $772c: $0b
    nop                                           ; $772d: $00
    ld [$c5eb], sp                                ; $772e: $08 $eb $c5
    sbc b                                         ; $7731: $98
    db $ec                                        ; $7732: $ec
    ld b, $82                                     ; $7733: $06 $82
    ld [$e1ff], sp                                ; $7735: $08 $ff $e1
    ld b, b                                       ; $7738: $40
    nop                                           ; $7739: $00
    adc b                                         ; $773a: $88
    nop                                           ; $773b: $00
    rst RST_38                                    ; $773c: $ff
    pop hl                                        ; $773d: $e1
    ld bc, $1700                                  ; $773e: $01 $00 $17
    ei                                            ; $7741: $fb
    db $eb                                        ; $7742: $eb
    rst RST_30                                    ; $7743: $f7
    db $10                                        ; $7744: $10
    db $ec                                        ; $7745: $ec
    ld [$1000], sp                                ; $7746: $08 $00 $10
    jp hl                                         ; $7749: $e9


    adc b                                         ; $774a: $88
    db $eb                                        ; $774b: $eb
    rst RST_30                                    ; $774c: $f7
    and b                                         ; $774d: $a0
    db $ec                                        ; $774e: $ec
    ld [$0081], sp                                ; $774f: $08 $81 $00
    jp hl                                         ; $7752: $e9


    rla                                           ; $7753: $17
    ei                                            ; $7754: $fb
    inc b                                         ; $7755: $04
    rst RST_38                                    ; $7756: $ff
    pop hl                                        ; $7757: $e1
    inc b                                         ; $7758: $04
    nop                                           ; $7759: $00
    adc b                                         ; $775a: $88
    rst RST_30                                    ; $775b: $f7
    add b                                         ; $775c: $80
    rst RST_30                                    ; $775d: $f7
    ld h, b                                       ; $775e: $60
    rst RST_10                                    ; $775f: $d7
    and b                                         ; $7760: $a0
    rst RST_10                                    ; $7761: $d7
    add b                                         ; $7762: $80
    db $eb                                        ; $7763: $eb
    rst RST_00                                    ; $7764: $c7
    ret nz                                        ; $7765: $c0

    rst RST_00                                    ; $7766: $c7
    add b                                         ; $7767: $80

jr_007_7768:
    db $ec                                        ; $7768: $ec
    inc b                                         ; $7769: $04
    add e                                         ; $776a: $83
    nop                                           ; $776b: $00
    rla                                           ; $776c: $17
    ret nz                                        ; $776d: $c0

    rla                                           ; $776e: $17
    add b                                         ; $776f: $80
    rla                                           ; $7770: $17
    ret nz                                        ; $7771: $c0

    rla                                           ; $7772: $17
    add b                                         ; $7773: $80
    rst RST_38                                    ; $7774: $ff
    pop hl                                        ; $7775: $e1
    inc bc                                        ; $7776: $03
    ld [$eb88], sp                                ; $7777: $08 $88 $eb
    rst RST_30                                    ; $777a: $f7
    nop                                           ; $777b: $00
    db $ec                                        ; $777c: $ec
    rlca                                          ; $777d: $07
    nop                                           ; $777e: $00
    jr nz, jr_007_7768                            ; $777f: $20 $e7

    inc b                                         ; $7781: $04
    db $eb                                        ; $7782: $eb
    rst RST_30                                    ; $7783: $f7
    ret nz                                        ; $7784: $c0

    rst RST_30                                    ; $7785: $f7
    add b                                         ; $7786: $80
    db $ec                                        ; $7787: $ec
    inc b                                         ; $7788: $04
    add e                                         ; $7789: $83
    nop                                           ; $778a: $00
    rla                                           ; $778b: $17
    ret nz                                        ; $778c: $c0

    rla                                           ; $778d: $17
    add b                                         ; $778e: $80
    rla                                           ; $778f: $17
    ret nz                                        ; $7790: $c0

    rla                                           ; $7791: $17
    add b                                         ; $7792: $80
    rst RST_38                                    ; $7793: $ff
    pop hl                                        ; $7794: $e1
    ld [bc], a                                    ; $7795: $02
    ld [$eb88], sp                                ; $7796: $08 $88 $eb
    rst RST_30                                    ; $7799: $f7
    nop                                           ; $779a: $00
    db $ec                                        ; $779b: $ec
    rlca                                          ; $779c: $07
    nop                                           ; $779d: $00
    and b                                         ; $779e: $a0
    rst RST_38                                    ; $779f: $ff
    ldh [rSC], a                                  ; $77a0: $e0 $02
    ldh [rNR12], a                                ; $77a2: $e0 $12
    ld [hl+], a                                   ; $77a4: $22
    ld [hl-], a                                   ; $77a5: $32
    ld b, d                                       ; $77a6: $42
    ld b, d                                       ; $77a7: $42
    rst RST_38                                    ; $77a8: $ff
    pop hl                                        ; $77a9: $e1
    ld bc, $1c04                                  ; $77aa: $01 $04 $1c
    db $eb                                        ; $77ad: $eb
    rst RST_30                                    ; $77ae: $f7
    ret nz                                        ; $77af: $c0

    db $ec                                        ; $77b0: $ec
    ld [$a000], sp                                ; $77b1: $08 $00 $a0
    ei                                            ; $77b4: $fb
    db $eb                                        ; $77b5: $eb
    rst RST_30                                    ; $77b6: $f7
    ret nz                                        ; $77b7: $c0

    db $ec                                        ; $77b8: $ec
    ld [$c000], sp                                ; $77b9: $08 $00 $c0
    ei                                            ; $77bc: $fb
    dec b                                         ; $77bd: $05
    db $eb                                        ; $77be: $eb
    rst RST_00                                    ; $77bf: $c7
    ret nz                                        ; $77c0: $c0

    rst RST_00                                    ; $77c1: $c7
    add b                                         ; $77c2: $80
    rst RST_00                                    ; $77c3: $c7
    ld b, b                                       ; $77c4: $40
    rst RST_00                                    ; $77c5: $c7
    nop                                           ; $77c6: $00
    add $c0                                       ; $77c7: $c6 $c0
    add $80                                       ; $77c9: $c6 $80
    add $40                                       ; $77cb: $c6 $40
    add $00                                       ; $77cd: $c6 $00
    db $ec                                        ; $77cf: $ec
    ld b, $82                                     ; $77d0: $06 $82
    nop                                           ; $77d2: $00
    rst RST_38                                    ; $77d3: $ff
    ldh [rSC], a                                  ; $77d4: $e0 $02
    di                                            ; $77d6: $f3
    ld [hl-], a                                   ; $77d7: $32
    xor b                                         ; $77d8: $a8
    rst RST_20                                    ; $77d9: $e7
    inc bc                                        ; $77da: $03
    ld b, d                                       ; $77db: $42
    ld b, d                                       ; $77dc: $42
    ld b, e                                       ; $77dd: $43
    ld b, e                                       ; $77de: $43
    ldh [$ff03], a                                ; $77df: $e0 $03
    ret nz                                        ; $77e1: $c0

    ld b, d                                       ; $77e2: $42
    ld b, d                                       ; $77e3: $42
    ld b, e                                       ; $77e4: $43
    ld b, e                                       ; $77e5: $43
    ldh [$ff03], a                                ; $77e6: $e0 $03
    ld b, b                                       ; $77e8: $40
    ld b, d                                       ; $77e9: $42
    ld b, d                                       ; $77ea: $42
    ld b, e                                       ; $77eb: $43
    ld b, e                                       ; $77ec: $43
    ldh [$ff03], a                                ; $77ed: $e0 $03
    jr nz, jr_007_7835                            ; $77ef: $20 $44

    ld b, h                                       ; $77f1: $44
    ld b, l                                       ; $77f2: $45
    ld b, l                                       ; $77f3: $45
    rst RST_38                                    ; $77f4: $ff
    pop hl                                        ; $77f5: $e1
    ld [bc], a                                    ; $77f6: $02
    nop                                           ; $77f7: $00
    dec a                                         ; $77f8: $3d
    rst RST_30                                    ; $77f9: $f7
    add b                                         ; $77fa: $80
    or $e0                                        ; $77fb: $f6 $e0
    or $a0                                        ; $77fd: $f6 $a0
    rst RST_30                                    ; $77ff: $f7
    ld b, b                                       ; $7800: $40
    or $c0                                        ; $7801: $f6 $c0
    or $80                                        ; $7803: $f6 $80
    rst RST_30                                    ; $7805: $f7
    nop                                           ; $7806: $00
    db $eb                                        ; $7807: $eb
    rst RST_30                                    ; $7808: $f7
    add b                                         ; $7809: $80
    or $e0                                        ; $780a: $f6 $e0
    or $a0                                        ; $780c: $f6 $a0
    rst RST_30                                    ; $780e: $f7
    ld b, b                                       ; $780f: $40
    or $c0                                        ; $7810: $f6 $c0
    or $80                                        ; $7812: $f6 $80
    rst RST_30                                    ; $7814: $f7
    nop                                           ; $7815: $00
    db $ec                                        ; $7816: $ec
    inc b                                         ; $7817: $04
    add e                                         ; $7818: $83
    nop                                           ; $7819: $00
    rst RST_38                                    ; $781a: $ff
    pop hl                                        ; $781b: $e1
    ld bc, $880c                                  ; $781c: $01 $0c $88
    db $eb                                        ; $781f: $eb
    rst RST_30                                    ; $7820: $f7
    add b                                         ; $7821: $80
    db $ec                                        ; $7822: $ec
    ld b, $82                                     ; $7823: $06 $82
    nop                                           ; $7825: $00
    db $fd                                        ; $7826: $fd
    sbc l                                         ; $7827: $9d
    ld [hl], h                                    ; $7828: $74
    rst RST_38                                    ; $7829: $ff
    pop hl                                        ; $782a: $e1
    ld bc, $8808                                  ; $782b: $01 $08 $88
    db $eb                                        ; $782e: $eb
    rst RST_30                                    ; $782f: $f7
    ld [hl], b                                    ; $7830: $70
    db $ec                                        ; $7831: $ec
    ld b, $82                                     ; $7832: $06 $82
    nop                                           ; $7834: $00

jr_007_7835:
    rst RST_20                                    ; $7835: $e7
    ld [bc], a                                    ; $7836: $02
    ei                                            ; $7837: $fb
    rst RST_30                                    ; $7838: $f7
    ret nc                                        ; $7839: $d0

    rst RST_00                                    ; $783a: $c7
    ret nc                                        ; $783b: $d0

    and a                                         ; $783c: $a7

jr_007_783d:
    ret nc                                        ; $783d: $d0

jr_007_783e:
    add a                                         ; $783e: $87
    ret nc                                        ; $783f: $d0

    ld h, a                                       ; $7840: $67
    ret nc                                        ; $7841: $d0

    ei                                            ; $7842: $fb
    ld [bc], a                                    ; $7843: $02
    ld b, a                                       ; $7844: $47

jr_007_7845:
    ret nc                                        ; $7845: $d0

    db $fd                                        ; $7846: $fd
    sbc l                                         ; $7847: $9d
    ld [hl], h                                    ; $7848: $74

jr_007_7849:
    rst RST_38                                    ; $7849: $ff
    pop hl                                        ; $784a: $e1
    ld [bc], a                                    ; $784b: $02
    inc c                                         ; $784c: $0c
    adc b                                         ; $784d: $88
    db $eb                                        ; $784e: $eb
    rst RST_30                                    ; $784f: $f7
    jr nz, jr_007_783e                            ; $7850: $20 $ec

    ld b, $82                                     ; $7852: $06 $82
    jr nz, jr_007_783d                            ; $7854: $20 $e7

    inc bc                                        ; $7856: $03
    rst RST_30                                    ; $7857: $f7
    jr nz, jr_007_7845                            ; $7858: $20 $eb

    rst RST_30                                    ; $785a: $f7
    jr nc, jr_007_7849                            ; $785b: $30 $ec

    ld [$1082], sp                                ; $785d: $08 $82 $10
    daa                                           ; $7860: $27
    or b                                          ; $7861: $b0
    daa                                           ; $7862: $27
    ret nz                                        ; $7863: $c0

    daa                                           ; $7864: $27
    ret nc                                        ; $7865: $d0

    daa                                           ; $7866: $27
    ldh [rIE], a                                  ; $7867: $e0 $ff
    pop hl                                        ; $7869: $e1
    ld bc, $880c                                  ; $786a: $01 $0c $88
    db $eb                                        ; $786d: $eb
    rst RST_30                                    ; $786e: $f7
    add b                                         ; $786f: $80
    db $ec                                        ; $7870: $ec
    ld b, $82                                     ; $7871: $06 $82
    nop                                           ; $7873: $00
    rst RST_20                                    ; $7874: $e7
    inc bc                                        ; $7875: $03
    rst RST_30                                    ; $7876: $f7
    jp nc, $f7eb                                  ; $7877: $d2 $eb $f7

    jp nc, $07ec                                  ; $787a: $d2 $ec $07

    add d                                         ; $787d: $82
    nop                                           ; $787e: $00
    rst RST_20                                    ; $787f: $e7
    rrca                                          ; $7880: $0f
    daa                                           ; $7881: $27
    jp nc, $e0ff                                  ; $7882: $d2 $ff $e0

    ld [bc], a                                    ; $7885: $02
    ldh a, [$ff33]                                ; $7886: $f0 $33
    ldh [rSC], a                                  ; $7888: $e0 $02
    ret nz                                        ; $788a: $c0

    inc sp                                        ; $788b: $33
    ldh [rSC], a                                  ; $788c: $e0 $02
    add b                                         ; $788e: $80
    inc sp                                        ; $788f: $33
    ldh [rSC], a                                  ; $7890: $e0 $02
    ld b, b                                       ; $7892: $40
    inc sp                                        ; $7893: $33
    ldh [$ff03], a                                ; $7894: $e0 $03
    ldh a, [rNR42]                                ; $7896: $f0 $21
    ldh [$ff03], a                                ; $7898: $e0 $03
    ret nz                                        ; $789a: $c0

    ld hl, $03e0                                  ; $789b: $21 $e0 $03
    ld h, b                                       ; $789e: $60
    ld hl, $03e0                                  ; $789f: $21 $e0 $03
    jr nc, @+$23                                  ; $78a2: $30 $21

    rst RST_38                                    ; $78a4: $ff
    pop hl                                        ; $78a5: $e1
    ld bc, $8800                                  ; $78a6: $01 $00 $88
    db $eb                                        ; $78a9: $eb
    rst RST_30                                    ; $78aa: $f7
    ld b, b                                       ; $78ab: $40
    db $ec                                        ; $78ac: $ec
    ld b, $82                                     ; $78ad: $06 $82
    nop                                           ; $78af: $00

jr_007_78b0:
    rst RST_20                                    ; $78b0: $e7
    ld [bc], a                                    ; $78b1: $02
    rst RST_30                                    ; $78b2: $f7
    add b                                         ; $78b3: $80
    db $eb                                        ; $78b4: $eb

jr_007_78b5:
    rst RST_30                                    ; $78b5: $f7
    add b                                         ; $78b6: $80
    db $ec                                        ; $78b7: $ec
    ld [$0082], sp                                ; $78b8: $08 $82 $00
    rst RST_38                                    ; $78bb: $ff
    pop hl                                        ; $78bc: $e1
    ld bc, $8808                                  ; $78bd: $01 $08 $88
    db $eb                                        ; $78c0: $eb
    rst RST_30                                    ; $78c1: $f7
    jr nz, jr_007_78b0                            ; $78c2: $20 $ec

    ld b, $82                                     ; $78c4: $06 $82
    nop                                           ; $78c6: $00
    rst RST_30                                    ; $78c7: $f7
    jr nz, jr_007_78b5                            ; $78c8: $20 $eb

    rst RST_30                                    ; $78ca: $f7
    jr nz, @-$12                                  ; $78cb: $20 $ec

    rlca                                          ; $78cd: $07
    add d                                         ; $78ce: $82
    add d                                         ; $78cf: $82
    rst RST_20                                    ; $78d0: $e7
    rrca                                          ; $78d1: $0f
    daa                                           ; $78d2: $27
    inc d                                         ; $78d3: $14
    rst RST_38                                    ; $78d4: $ff
    pop hl                                        ; $78d5: $e1
    ld bc, $8808                                  ; $78d6: $01 $08 $88
    rst RST_30                                    ; $78d9: $f7
    ld b, b                                       ; $78da: $40
    and a                                         ; $78db: $a7
    nop                                           ; $78dc: $00
    pop hl                                        ; $78dd: $e1
    inc bc                                        ; $78de: $03
    inc c                                         ; $78df: $0c
    adc b                                         ; $78e0: $88
    db $eb                                        ; $78e1: $eb
    rst RST_30                                    ; $78e2: $f7
    ld b, b                                       ; $78e3: $40
    rst RST_30                                    ; $78e4: $f7
    nop                                           ; $78e5: $00
    db $ec                                        ; $78e6: $ec
    rlca                                          ; $78e7: $07
    add d                                         ; $78e8: $82
    nop                                           ; $78e9: $00
    rst RST_38                                    ; $78ea: $ff
    pop hl                                        ; $78eb: $e1
    ld [bc], a                                    ; $78ec: $02
    ld [$eb1f], sp                                ; $78ed: $08 $1f $eb
    ld b, a                                       ; $78f0: $47
    nop                                           ; $78f1: $00
    ld b, a                                       ; $78f2: $47
    ld [bc], a                                    ; $78f3: $02
    ld b, a                                       ; $78f4: $47
    inc b                                         ; $78f5: $04
    db $ec                                        ; $78f6: $ec
    add hl, bc                                    ; $78f7: $09
    ld bc, $c708                                  ; $78f8: $01 $08 $c7
    ld c, b                                       ; $78fb: $48
    rst RST_10                                    ; $78fc: $d7
    ld d, b                                       ; $78fd: $50
    rst RST_10                                    ; $78fe: $d7
    ld e, b                                       ; $78ff: $58
    db $eb                                        ; $7900: $eb
    rst RST_30                                    ; $7901: $f7
    ld h, b                                       ; $7902: $60
    rst RST_30                                    ; $7903: $f7
    ld h, h                                       ; $7904: $64
    db $ec                                        ; $7905: $ec
    ld c, $81                                     ; $7906: $0e $81
    ld [$e0ff], sp                                ; $7908: $08 $ff $e0
    ld c, d                                       ; $790b: $4a
    jr nc, @+$13                                  ; $790c: $30 $11

    rst RST_38                                    ; $790e: $ff
    pop hl                                        ; $790f: $e1
    ld bc, $170c                                  ; $7910: $01 $0c $17
    ei                                            ; $7913: $fb
    db $eb                                        ; $7914: $eb
    rst RST_30                                    ; $7915: $f7
    ld b, b                                       ; $7916: $40
    db $ec                                        ; $7917: $ec
    dec b                                         ; $7918: $05
    add c                                         ; $7919: $81
    sub b                                         ; $791a: $90
    ei                                            ; $791b: $fb
    inc bc                                        ; $791c: $03
    and [hl]                                      ; $791d: $a6
    ldh [$ff96], a                                ; $791e: $e0 $96
    ret nz                                        ; $7920: $c0

    add [hl]                                      ; $7921: $86
    and b                                         ; $7922: $a0
    rst RST_38                                    ; $7923: $ff
    ldh [$ff0c], a                                ; $7924: $e0 $0c
    ret nz                                        ; $7926: $c0

    ld a, c                                       ; $7927: $79
    ldh [rTMA], a                                 ; $7928: $e0 $06
    add b                                         ; $792a: $80
    ld l, d                                       ; $792b: $6a
    ldh [rTMA], a                                 ; $792c: $e0 $06
    ld b, b                                       ; $792e: $40
    ld c, e                                       ; $792f: $4b
    ldh [rTMA], a                                 ; $7930: $e0 $06
    jr nz, jr_007_7960                            ; $7932: $20 $2c

    ldh [rTMA], a                                 ; $7934: $e0 $06
    db $10                                        ; $7936: $10
    dec e                                         ; $7937: $1d
    rst RST_38                                    ; $7938: $ff
    pop hl                                        ; $7939: $e1
    inc bc                                        ; $793a: $03
    ld [$eb35], sp                                ; $793b: $08 $35 $eb
    rst RST_30                                    ; $793e: $f7
    nop                                           ; $793f: $00
    db $ec                                        ; $7940: $ec
    rlca                                          ; $7941: $07
    nop                                           ; $7942: $00
    ret nz                                        ; $7943: $c0

    rst RST_38                                    ; $7944: $ff
    ldh [rSC], a                                  ; $7945: $e0 $02
    ldh [$ff3c], a                                ; $7947: $e0 $3c
    ld c, e                                       ; $7949: $4b
    ld e, d                                       ; $794a: $5a
    ld l, c                                       ; $794b: $69
    rst RST_38                                    ; $794c: $ff
    ldh [rDIV], a                                 ; $794d: $e0 $04
    di                                            ; $794f: $f3
    inc a                                         ; $7950: $3c
    ld c, e                                       ; $7951: $4b
    inc a                                         ; $7952: $3c
    ld c, e                                       ; $7953: $4b
    ldh [$ff03], a                                ; $7954: $e0 $03
    jp $e05a                                      ; $7956: $c3 $5a $e0


    inc bc                                        ; $7959: $03
    and e                                         ; $795a: $a3
    ld l, c                                       ; $795b: $69
    ldh [$ff03], a                                ; $795c: $e0 $03
    add e                                         ; $795e: $83
    ld c, b                                       ; $795f: $48

jr_007_7960:
    ldh [$ff03], a                                ; $7960: $e0 $03
    ld b, e                                       ; $7962: $43
    daa                                           ; $7963: $27
    rst RST_38                                    ; $7964: $ff
    pop hl                                        ; $7965: $e1
    ld [bc], a                                    ; $7966: $02
    inc c                                         ; $7967: $0c
    inc e                                         ; $7968: $1c
    ei                                            ; $7969: $fb
    or $80                                        ; $796a: $f6 $80
    rst RST_30                                    ; $796c: $f7
    nop                                           ; $796d: $00
    ei                                            ; $796e: $fb
    inc bc                                        ; $796f: $03
    rst RST_20                                    ; $7970: $e7
    ld bc, $f7eb                                  ; $7971: $01 $eb $f7
    ret nz                                        ; $7974: $c0

    rst RST_30                                    ; $7975: $f7
    add b                                         ; $7976: $80
    rst RST_30                                    ; $7977: $f7
    ld b, b                                       ; $7978: $40
    rst RST_30                                    ; $7979: $f7
    nop                                           ; $797a: $00
    or $c0                                        ; $797b: $f6 $c0
    or $80                                        ; $797d: $f6 $80
    db $ec                                        ; $797f: $ec
    ld [bc], a                                    ; $7980: $02
    add d                                         ; $7981: $82
    nop                                           ; $7982: $00
    db $eb                                        ; $7983: $eb
    add a                                         ; $7984: $87
    sub b                                         ; $7985: $90
    add a                                         ; $7986: $87
    ld d, b                                       ; $7987: $50
    add a                                         ; $7988: $87
    db $10                                        ; $7989: $10
    add [hl]                                      ; $798a: $86
    ret nc                                        ; $798b: $d0

    add [hl]                                      ; $798c: $86
    sub b                                         ; $798d: $90
    add [hl]                                      ; $798e: $86
    ld d, b                                       ; $798f: $50
    db $ec                                        ; $7990: $ec
    ld [bc], a                                    ; $7991: $02
    add h                                         ; $7992: $84
    jr nz, @+$01                                  ; $7993: $20 $ff

    ldh [rSC], a                                  ; $7995: $e0 $02
    di                                            ; $7997: $f3
    inc a                                         ; $7998: $3c
    ld c, e                                       ; $7999: $4b
    rst RST_20                                    ; $799a: $e7
    inc bc                                        ; $799b: $03
    ld e, d                                       ; $799c: $5a
    ld l, c                                       ; $799d: $69
    ldh [$ff03], a                                ; $799e: $e0 $03
    db $e3                                        ; $79a0: $e3
    ld e, d                                       ; $79a1: $5a
    ld l, c                                       ; $79a2: $69
    ld c, b                                       ; $79a3: $48
    daa                                           ; $79a4: $27
    ldh [$ff03], a                                ; $79a5: $e0 $03
    jp $695a                                      ; $79a7: $c3 $5a $69


    ld c, b                                       ; $79aa: $48
    daa                                           ; $79ab: $27
    ldh [$ff03], a                                ; $79ac: $e0 $03
    add e                                         ; $79ae: $83
    ld e, d                                       ; $79af: $5a
    ld l, c                                       ; $79b0: $69
    ld c, b                                       ; $79b1: $48
    daa                                           ; $79b2: $27
    ldh [$ff03], a                                ; $79b3: $e0 $03
    ld b, e                                       ; $79b5: $43
    ld e, d                                       ; $79b6: $5a
    ld l, c                                       ; $79b7: $69
    ld c, b                                       ; $79b8: $48
    daa                                           ; $79b9: $27
    ldh [$ff03], a                                ; $79ba: $e0 $03
    inc hl                                        ; $79bc: $23
    ld e, d                                       ; $79bd: $5a
    ld l, c                                       ; $79be: $69
    ld c, b                                       ; $79bf: $48
    daa                                           ; $79c0: $27
    rst RST_38                                    ; $79c1: $ff
    pop hl                                        ; $79c2: $e1
    inc bc                                        ; $79c3: $03
    nop                                           ; $79c4: $00
    adc b                                         ; $79c5: $88
    ei                                            ; $79c6: $fb
    or a                                          ; $79c7: $b7
    ret nz                                        ; $79c8: $c0

    or a                                          ; $79c9: $b7
    ret nc                                        ; $79ca: $d0

    or a                                          ; $79cb: $b7
    ret nz                                        ; $79cc: $c0

    or a                                          ; $79cd: $b7
    ldh [$fffb], a                                ; $79ce: $e0 $fb
    ld bc, $a7eb                                  ; $79d0: $01 $eb $a7
    ret nz                                        ; $79d3: $c0

    and a                                         ; $79d4: $a7
    ret nc                                        ; $79d5: $d0

    and a                                         ; $79d6: $a7
    ret nz                                        ; $79d7: $c0

    and a                                         ; $79d8: $a7
    ldh [$ffec], a                                ; $79d9: $e0 $ec
    inc bc                                        ; $79db: $03
    add h                                         ; $79dc: $84
    nop                                           ; $79dd: $00
    rst RST_38                                    ; $79de: $ff
    pop hl                                        ; $79df: $e1
    inc bc                                        ; $79e0: $03
    nop                                           ; $79e1: $00
    adc b                                         ; $79e2: $88
    nop                                           ; $79e3: $00
    ei                                            ; $79e4: $fb
    sub a                                         ; $79e5: $97
    jp nz, $d297                                  ; $79e6: $c2 $97 $d2

    sub a                                         ; $79e9: $97
    jp nz, $e297                                  ; $79ea: $c2 $97 $e2

    ei                                            ; $79ed: $fb
    ld bc, $87eb                                  ; $79ee: $01 $eb $87
    jp nz, $d287                                  ; $79f1: $c2 $87 $d2

    add a                                         ; $79f4: $87
    jp nz, $e287                                  ; $79f5: $c2 $87 $e2

    db $ec                                        ; $79f8: $ec
    inc bc                                        ; $79f9: $03
    add e                                         ; $79fa: $83
    nop                                           ; $79fb: $00
    rst RST_38                                    ; $79fc: $ff
    pop hl                                        ; $79fd: $e1
    ld bc, $880c                                  ; $79fe: $01 $0c $88
    nop                                           ; $7a01: $00
    nop                                           ; $7a02: $00
    nop                                           ; $7a03: $00
    db $eb                                        ; $7a04: $eb
    rst RST_30                                    ; $7a05: $f7
    ret nc                                        ; $7a06: $d0

    db $ec                                        ; $7a07: $ec
    ld b, $82                                     ; $7a08: $06 $82
    nop                                           ; $7a0a: $00
    rst RST_20                                    ; $7a0b: $e7
    ld [bc], a                                    ; $7a0c: $02
    rst RST_30                                    ; $7a0d: $f7
    ldh [$ffeb], a                                ; $7a0e: $e0 $eb
    rst RST_30                                    ; $7a10: $f7
    ldh [$ffec], a                                ; $7a11: $e0 $ec
    rlca                                          ; $7a13: $07
    add d                                         ; $7a14: $82
    nop                                           ; $7a15: $00
    rst RST_20                                    ; $7a16: $e7
    rrca                                          ; $7a17: $0f
    daa                                           ; $7a18: $27
    ldh [$ffe1], a                                ; $7a19: $e0 $e1
    dec b                                         ; $7a1b: $05
    nop                                           ; $7a1c: $00
    adc b                                         ; $7a1d: $88
    ei                                            ; $7a1e: $fb
    and a                                         ; $7a1f: $a7
    ret nz                                        ; $7a20: $c0

    and a                                         ; $7a21: $a7
    ret nc                                        ; $7a22: $d0

    and a                                         ; $7a23: $a7
    ret nz                                        ; $7a24: $c0

    and a                                         ; $7a25: $a7
    ldh [$fffb], a                                ; $7a26: $e0 $fb
    inc bc                                        ; $7a28: $03
    db $eb                                        ; $7a29: $eb
    sub a                                         ; $7a2a: $97
    ret nz                                        ; $7a2b: $c0

    sub a                                         ; $7a2c: $97
    ret nc                                        ; $7a2d: $d0

    sub a                                         ; $7a2e: $97
    ret nz                                        ; $7a2f: $c0

    sub a                                         ; $7a30: $97
    ldh [$ffec], a                                ; $7a31: $e0 $ec
    inc bc                                        ; $7a33: $03
    add h                                         ; $7a34: $84
    nop                                           ; $7a35: $00
    rst RST_38                                    ; $7a36: $ff
    pop hl                                        ; $7a37: $e1
    jr z, jr_007_7a3a                             ; $7a38: $28 $00

jr_007_7a3a:
    adc b                                         ; $7a3a: $88
    nop                                           ; $7a3b: $00
    pop hl                                        ; $7a3c: $e1
    dec b                                         ; $7a3d: $05
    nop                                           ; $7a3e: $00
    adc b                                         ; $7a3f: $88
    nop                                           ; $7a40: $00
    ei                                            ; $7a41: $fb
    add a                                         ; $7a42: $87
    jp nz, $d287                                  ; $7a43: $c2 $87 $d2

    add a                                         ; $7a46: $87
    jp nz, $e287                                  ; $7a47: $c2 $87 $e2

    ei                                            ; $7a4a: $fb
    inc bc                                        ; $7a4b: $03
    db $eb                                        ; $7a4c: $eb
    ld [hl], a                                    ; $7a4d: $77
    jp nz, $d277                                  ; $7a4e: $c2 $77 $d2

    ld [hl], a                                    ; $7a51: $77
    jp nz, $e277                                  ; $7a52: $c2 $77 $e2

    db $ec                                        ; $7a55: $ec
    inc bc                                        ; $7a56: $03
    add e                                         ; $7a57: $83
    nop                                           ; $7a58: $00
    rst RST_38                                    ; $7a59: $ff
    ldh [rSC], a                                  ; $7a5a: $e0 $02
    ret nz                                        ; $7a5c: $c0

    ld c, c                                       ; $7a5d: $49
    ld e, c                                       ; $7a5e: $59
    ldh [rSC], a                                  ; $7a5f: $e0 $02
    add b                                         ; $7a61: $80
    ld h, h                                       ; $7a62: $64
    ldh [rSC], a                                  ; $7a63: $e0 $02
    ld b, b                                       ; $7a65: $40
    ld h, h                                       ; $7a66: $64
    ldh [rSC], a                                  ; $7a67: $e0 $02
    jr nz, jr_007_7acf                            ; $7a69: $20 $64

    ldh [$ff03], a                                ; $7a6b: $e0 $03
    ret nz                                        ; $7a6d: $c0

    ld b, h                                       ; $7a6e: $44
    ldh [$ff03], a                                ; $7a6f: $e0 $03
    add b                                         ; $7a71: $80
    ld b, h                                       ; $7a72: $44
    ldh [$ff03], a                                ; $7a73: $e0 $03
    ld b, b                                       ; $7a75: $40
    ld b, h                                       ; $7a76: $44
    ldh [$ff03], a                                ; $7a77: $e0 $03
    jr nz, @+$46                                  ; $7a79: $20 $44

    rst RST_38                                    ; $7a7b: $ff
    pop hl                                        ; $7a7c: $e1
    jr nz, jr_007_7a7f                            ; $7a7d: $20 $00

jr_007_7a7f:
    adc b                                         ; $7a7f: $88
    nop                                           ; $7a80: $00
    rst RST_38                                    ; $7a81: $ff
    pop hl                                        ; $7a82: $e1
    ld bc, $1700                                  ; $7a83: $01 $00 $17
    ei                                            ; $7a86: $fb
    db $eb                                        ; $7a87: $eb
    rst RST_30                                    ; $7a88: $f7
    db $10                                        ; $7a89: $10
    db $ec                                        ; $7a8a: $ec
    ld [$1000], sp                                ; $7a8b: $08 $00 $10
    jp hl                                         ; $7a8e: $e9


    adc b                                         ; $7a8f: $88
    db $eb                                        ; $7a90: $eb
    rst RST_30                                    ; $7a91: $f7
    and b                                         ; $7a92: $a0
    db $ec                                        ; $7a93: $ec
    ld [$0081], sp                                ; $7a94: $08 $81 $00
    jp hl                                         ; $7a97: $e9


    rla                                           ; $7a98: $17
    ei                                            ; $7a99: $fb
    ld [bc], a                                    ; $7a9a: $02
    rst RST_38                                    ; $7a9b: $ff
    pop hl                                        ; $7a9c: $e1
    jr nc, jr_007_7a9f                            ; $7a9d: $30 $00

jr_007_7a9f:
    adc b                                         ; $7a9f: $88
    nop                                           ; $7aa0: $00
    rst RST_38                                    ; $7aa1: $ff
    pop hl                                        ; $7aa2: $e1
    ld bc, $1700                                  ; $7aa3: $01 $00 $17
    ei                                            ; $7aa6: $fb
    db $eb                                        ; $7aa7: $eb
    rst RST_30                                    ; $7aa8: $f7
    db $10                                        ; $7aa9: $10
    db $ec                                        ; $7aaa: $ec
    ld [$1000], sp                                ; $7aab: $08 $00 $10
    jp hl                                         ; $7aae: $e9


    adc b                                         ; $7aaf: $88
    db $eb                                        ; $7ab0: $eb
    rst RST_30                                    ; $7ab1: $f7
    and b                                         ; $7ab2: $a0
    db $ec                                        ; $7ab3: $ec
    ld [$0081], sp                                ; $7ab4: $08 $81 $00
    jp hl                                         ; $7ab7: $e9


    rla                                           ; $7ab8: $17
    ei                                            ; $7ab9: $fb
    inc bc                                        ; $7aba: $03
    rst RST_38                                    ; $7abb: $ff
    pop hl                                        ; $7abc: $e1
    ld bc, $1b00                                  ; $7abd: $01 $00 $1b
    ei                                            ; $7ac0: $fb
    or $00                                        ; $7ac1: $f6 $00
    rst RST_30                                    ; $7ac3: $f7
    nop                                           ; $7ac4: $00
    push af                                       ; $7ac5: $f5
    nop                                           ; $7ac6: $00
    rst RST_30                                    ; $7ac7: $f7
    add b                                         ; $7ac8: $80
    or $00                                        ; $7ac9: $f6 $00
    rst RST_30                                    ; $7acb: $f7
    nop                                           ; $7acc: $00
    ei                                            ; $7acd: $fb
    inc c                                         ; $7ace: $0c

jr_007_7acf:
    db $eb                                        ; $7acf: $eb
    ei                                            ; $7ad0: $fb
    push bc                                       ; $7ad1: $c5
    nop                                           ; $7ad2: $00
    add $00                                       ; $7ad3: $c6 $00
    ei                                            ; $7ad5: $fb
    ld [bc], a                                    ; $7ad6: $02
    db $ec                                        ; $7ad7: $ec
    inc bc                                        ; $7ad8: $03
    add d                                         ; $7ad9: $82
    nop                                           ; $7ada: $00
    rst RST_38                                    ; $7adb: $ff
    ldh [rTMA], a                                 ; $7adc: $e0 $06
    ldh a, [$ff3f]                                ; $7ade: $f0 $3f
    ld c, a                                       ; $7ae0: $4f
    ld b, a                                       ; $7ae1: $47
    ld b, a                                       ; $7ae2: $47
    ld d, a                                       ; $7ae3: $57
    ld b, a                                       ; $7ae4: $47
    scf                                           ; $7ae5: $37
    ld d, [hl]                                    ; $7ae6: $56
    ld b, [hl]                                    ; $7ae7: $46
    ld d, a                                       ; $7ae8: $57
    scf                                           ; $7ae9: $37
    ld d, [hl]                                    ; $7aea: $56
    ld b, [hl]                                    ; $7aeb: $46
    ld d, a                                       ; $7aec: $57
    scf                                           ; $7aed: $37
    ld d, [hl]                                    ; $7aee: $56
    ld b, [hl]                                    ; $7aef: $46
    ldh [rTMA], a                                 ; $7af0: $e0 $06
    ldh [rDMA], a                                 ; $7af2: $e0 $46
    ld d, [hl]                                    ; $7af4: $56
    ldh [rTMA], a                                 ; $7af5: $e0 $06
    ret nz                                        ; $7af7: $c0

    ld b, [hl]                                    ; $7af8: $46
    ld d, [hl]                                    ; $7af9: $56
    ldh [rTMA], a                                 ; $7afa: $e0 $06
    add b                                         ; $7afc: $80
    ld b, [hl]                                    ; $7afd: $46
    ld d, [hl]                                    ; $7afe: $56
    rst RST_38                                    ; $7aff: $ff
    pop hl                                        ; $7b00: $e1
    ld bc, $1c0c                                  ; $7b01: $01 $0c $1c
    ei                                            ; $7b04: $fb
    rst RST_30                                    ; $7b05: $f7
    add b                                         ; $7b06: $80
    rst RST_30                                    ; $7b07: $f7
    nop                                           ; $7b08: $00
    ei                                            ; $7b09: $fb
    inc bc                                        ; $7b0a: $03
    db $eb                                        ; $7b0b: $eb
    rst RST_30                                    ; $7b0c: $f7
    add b                                         ; $7b0d: $80
    rst RST_30                                    ; $7b0e: $f7
    ld b, b                                       ; $7b0f: $40
    rst RST_30                                    ; $7b10: $f7
    nop                                           ; $7b11: $00
    or $c0                                        ; $7b12: $f6 $c0
    or $80                                        ; $7b14: $f6 $80
    or $40                                        ; $7b16: $f6 $40
    db $ec                                        ; $7b18: $ec
    ld [bc], a                                    ; $7b19: $02
    add d                                         ; $7b1a: $82
    nop                                           ; $7b1b: $00
    db $eb                                        ; $7b1c: $eb
    add a                                         ; $7b1d: $87
    sub b                                         ; $7b1e: $90
    add a                                         ; $7b1f: $87
    ld d, b                                       ; $7b20: $50
    add a                                         ; $7b21: $87
    db $10                                        ; $7b22: $10
    add [hl]                                      ; $7b23: $86
    ret nc                                        ; $7b24: $d0

    add [hl]                                      ; $7b25: $86
    sub b                                         ; $7b26: $90
    add [hl]                                      ; $7b27: $86
    ld d, b                                       ; $7b28: $50
    db $ec                                        ; $7b29: $ec
    inc b                                         ; $7b2a: $04
    add d                                         ; $7b2b: $82
    db $10                                        ; $7b2c: $10
    rst RST_38                                    ; $7b2d: $ff
    ldh [rSC], a                                  ; $7b2e: $e0 $02
    di                                            ; $7b30: $f3
    ld [hl-], a                                   ; $7b31: $32
    xor b                                         ; $7b32: $a8
    rst RST_20                                    ; $7b33: $e7
    inc bc                                        ; $7b34: $03
    ld b, d                                       ; $7b35: $42
    ld b, d                                       ; $7b36: $42
    ld b, e                                       ; $7b37: $43
    ld b, e                                       ; $7b38: $43
    ldh [$ff03], a                                ; $7b39: $e0 $03
    ret nz                                        ; $7b3b: $c0

    ld b, d                                       ; $7b3c: $42
    ld b, d                                       ; $7b3d: $42
    ld b, e                                       ; $7b3e: $43
    ld b, e                                       ; $7b3f: $43
    ldh [$ff03], a                                ; $7b40: $e0 $03
    add b                                         ; $7b42: $80
    ld b, d                                       ; $7b43: $42
    ld b, d                                       ; $7b44: $42
    ld b, e                                       ; $7b45: $43
    ld b, e                                       ; $7b46: $43
    ldh [$ff03], a                                ; $7b47: $e0 $03
    ld b, b                                       ; $7b49: $40
    ld b, h                                       ; $7b4a: $44
    ld b, h                                       ; $7b4b: $44
    ld b, l                                       ; $7b4c: $45
    ld b, l                                       ; $7b4d: $45
    ldh [$ff03], a                                ; $7b4e: $e0 $03
    jr nz, jr_007_7b96                            ; $7b50: $20 $44

    ld b, h                                       ; $7b52: $44
    ld b, l                                       ; $7b53: $45
    ld b, l                                       ; $7b54: $45
    rst RST_38                                    ; $7b55: $ff
    ldh [rDIV], a                                 ; $7b56: $e0 $04
    adc e                                         ; $7b58: $8b
    add [hl]                                      ; $7b59: $86
    db $eb                                        ; $7b5a: $eb
    ld [$ea00], sp                                ; $7b5b: $08 $00 $ea
    dec b                                         ; $7b5e: $05
    rst RST_28                                    ; $7b5f: $ef
    rrca                                          ; $7b60: $0f
    db $f4                                        ; $7b61: $f4
    db $f4                                        ; $7b62: $f4
    db $e3                                        ; $7b63: $e3
    jp nz, $41e4                                  ; $7b64: $c2 $e4 $41

jr_007_7b67:
    ld [hl], c                                    ; $7b67: $71
    pop bc                                        ; $7b68: $c1
    ld hl, sp-$1d                                 ; $7b69: $f8 $e3
    pop bc                                        ; $7b6b: $c1
    db $e4                                        ; $7b6c: $e4
    ld b, c                                       ; $7b6d: $41
    ld [hl], c                                    ; $7b6e: $71
    pop bc                                        ; $7b6f: $c1
    ld a, [$c1e3]                                 ; $7b70: $fa $e3 $c1
    db $e4                                        ; $7b73: $e4
    ld b, c                                       ; $7b74: $41
    ld [hl], c                                    ; $7b75: $71
    rst RST_38                                    ; $7b76: $ff
    ldh [rDIV], a                                 ; $7b77: $e0 $04
    ld c, d                                       ; $7b79: $4a
    jr c, jr_007_7b67                             ; $7b7a: $38 $eb

    rlca                                          ; $7b7c: $07
    add [hl]                                      ; $7b7d: $86
    ld [$f005], a                                 ; $7b7e: $ea $05 $f0
    db $e3                                        ; $7b81: $e3
    pop bc                                        ; $7b82: $c1
    db $e4                                        ; $7b83: $e4
    ld b, c                                       ; $7b84: $41
    ld [hl], c                                    ; $7b85: $71
    pop bc                                        ; $7b86: $c1
    or $e3                                        ; $7b87: $f6 $e3
    pop bc                                        ; $7b89: $c1
    db $e4                                        ; $7b8a: $e4
    ld b, c                                       ; $7b8b: $41
    ld [hl], c                                    ; $7b8c: $71
    pop bc                                        ; $7b8d: $c1
    ld sp, hl                                     ; $7b8e: $f9
    db $e3                                        ; $7b8f: $e3
    pop bc                                        ; $7b90: $c1
    db $e4                                        ; $7b91: $e4
    ld b, c                                       ; $7b92: $41
    ld [hl], c                                    ; $7b93: $71
    pop bc                                        ; $7b94: $c1
    rst RST_38                                    ; $7b95: $ff

jr_007_7b96:
    ldh [rSB], a                                  ; $7b96: $e0 $01
    add e                                         ; $7b98: $83
    ldh a, [c]                                    ; $7b99: $f2
    rst RST_28                                    ; $7b9a: $ef
    rrca                                          ; $7b9b: $0f
    db $eb                                        ; $7b9c: $eb
    rlca                                          ; $7b9d: $07
    nop                                           ; $7b9e: $00
    ld [$0107], a                                 ; $7b9f: $ea $07 $01
    rst RST_20                                    ; $7ba2: $e7
    ld [$effe], sp                                ; $7ba3: $08 $fe $ef
    rrca                                          ; $7ba6: $0f
    db $fd                                        ; $7ba7: $fd
    adc $7b                                       ; $7ba8: $ce $7b
    rst RST_28                                    ; $7baa: $ef
    ldh a, [$fffd]                                ; $7bab: $f0 $fd
    adc $7b                                       ; $7bad: $ce $7b
    cp $e0                                        ; $7baf: $fe $e0
    ld [$f383], sp                                ; $7bb1: $08 $83 $f3
    ld [$0207], a                                 ; $7bb4: $ea $07 $02
    cp $ef                                        ; $7bb7: $fe $ef
    ldh a, [$fffd]                                ; $7bb9: $f0 $fd
    adc $7b                                       ; $7bbb: $ce $7b
    rst RST_28                                    ; $7bbd: $ef
    rrca                                          ; $7bbe: $0f
    db $fd                                        ; $7bbf: $fd
    adc $7b                                       ; $7bc0: $ce $7b
    cp $e0                                        ; $7bc2: $fe $e0
    ld [$f322], sp                                ; $7bc4: $08 $22 $f3
    ld [$fe07], a                                 ; $7bc7: $ea $07 $fe
    db $fd                                        ; $7bca: $fd
    adc $7b                                       ; $7bcb: $ce $7b
    cp $fb                                        ; $7bcd: $fe $fb
    ldh a, [$ffe3]                                ; $7bcf: $f0 $e3
    ld de, $8151                                  ; $7bd1: $11 $51 $81
    pop bc                                        ; $7bd4: $c1
    db $e4                                        ; $7bd5: $e4
    ld de, $8151                                  ; $7bd6: $11 $51 $81
    pop bc                                        ; $7bd9: $c1
    pop af                                        ; $7bda: $f1
    ei                                            ; $7bdb: $fb
    ld [bc], a                                    ; $7bdc: $02
    ei                                            ; $7bdd: $fb
    ldh a, [$ffe2]                                ; $7bde: $f0 $e2
    sub c                                         ; $7be0: $91
    pop bc                                        ; $7be1: $c1
    db $e3                                        ; $7be2: $e3
    ld b, c                                       ; $7be3: $41
    add c                                         ; $7be4: $81
    sub c                                         ; $7be5: $91
    pop bc                                        ; $7be6: $c1
    db $e4                                        ; $7be7: $e4
    ld b, c                                       ; $7be8: $41
    add c                                         ; $7be9: $81
    pop af                                        ; $7bea: $f1
    ei                                            ; $7beb: $fb
    ld [bc], a                                    ; $7bec: $02
    db $fd                                        ; $7bed: $fd
    ldh [rTAC], a                                 ; $7bee: $e0 $07
    ld c, l                                       ; $7bf0: $4d
    adc b                                         ; $7bf1: $88
    xor $22                                       ; $7bf2: $ee $22
    db $eb                                        ; $7bf4: $eb
    dec b                                         ; $7bf5: $05
    ccf                                           ; $7bf6: $3f
    ld [$f507], a                                 ; $7bf7: $ea $07 $f5
    ldh [c], a                                    ; $7bfa: $e2
    pop bc                                        ; $7bfb: $c1
    or c                                          ; $7bfc: $b1
    and c                                         ; $7bfd: $a1
    sub c                                         ; $7bfe: $91
    adc b                                         ; $7bff: $88
    rst RST_38                                    ; $7c00: $ff
    ldh [rTAC], a                                 ; $7c01: $e0 $07
    ld c, d                                       ; $7c03: $4a
    add l                                         ; $7c04: $85
    rst RST_28                                    ; $7c05: $ef
    ldh a, [$ffeb]                                ; $7c06: $f0 $eb
    ld a, [bc]                                    ; $7c08: $0a
    ld a, [hl+]                                   ; $7c09: $2a
    xor $11                                       ; $7c0a: $ee $11
    ldh [c], a                                    ; $7c0c: $e2
    pop bc                                        ; $7c0d: $c1
    or d                                          ; $7c0e: $b2
    and c                                         ; $7c0f: $a1
    sub c                                         ; $7c10: $91
    adc b                                         ; $7c11: $88
    rst RST_38                                    ; $7c12: $ff
    ldh [rTAC], a                                 ; $7c13: $e0 $07
    ld [bc], a                                    ; $7c15: $02
    add e                                         ; $7c16: $83
    db $eb                                        ; $7c17: $eb

jr_007_7c18:
    dec b                                         ; $7c18: $05
    inc de                                        ; $7c19: $13
    xor $11                                       ; $7c1a: $ee $11
    db $e3                                        ; $7c1c: $e3
    pop bc                                        ; $7c1d: $c1
    or c                                          ; $7c1e: $b1
    and c                                         ; $7c1f: $a1
    sub c                                         ; $7c20: $91
    add sp, $00                                   ; $7c21: $e8 $00
    adc b                                         ; $7c23: $88
    rst RST_38                                    ; $7c24: $ff
    rst RST_38                                    ; $7c25: $ff
    ldh [$ff03], a                                ; $7c26: $e0 $03
    ld b, h                                       ; $7c28: $44
    push hl                                       ; $7c29: $e5
    db $ed                                        ; $7c2a: $ed
    jr jr_007_7c18                                ; $7c2b: $18 $eb

    rlca                                          ; $7c2d: $07
    nop                                           ; $7c2e: $00
    rst RST_28                                    ; $7c2f: $ef

jr_007_7c30:
    ldh a, [rSB]                                  ; $7c30: $f0 $01
    rst RST_20                                    ; $7c32: $e7
    ld b, $e3                                     ; $7c33: $06 $e3
    or e                                          ; $7c35: $b3
    db $e4                                        ; $7c36: $e4
    ld sp, $b161                                  ; $7c37: $31 $61 $b1
    ld h, c                                       ; $7c3a: $61
    ld h, c                                       ; $7c3b: $61
    cp b                                          ; $7c3c: $b8
    rst RST_38                                    ; $7c3d: $ff
    ldh [rTMA], a                                 ; $7c3e: $e0 $06
    ld c, e                                       ; $7c40: $4b
    push hl                                       ; $7c41: $e5
    db $ed                                        ; $7c42: $ed
    jr jr_007_7c30                                ; $7c43: $18 $eb

    dec bc                                        ; $7c45: $0b
    ld [bc], a                                    ; $7c46: $02
    db $e3                                        ; $7c47: $e3
    or c                                          ; $7c48: $b1
    db $e4                                        ; $7c49: $e4
    ld sp, $b161                                  ; $7c4a: $31 $61 $b1
    push af                                       ; $7c4d: $f5
    ld h, c                                       ; $7c4e: $61
    ldh a, [$ff61]                                ; $7c4f: $f0 $61
    cp b                                          ; $7c51: $b8
    rst RST_38                                    ; $7c52: $ff
    ldh [rTMA], a                                 ; $7c53: $e0 $06
    ld c, l                                       ; $7c55: $4d
    push hl                                       ; $7c56: $e5
    db $eb                                        ; $7c57: $eb
    dec bc                                        ; $7c58: $0b
    nop                                           ; $7c59: $00
    ld [$e303], a                                 ; $7c5a: $ea $03 $e3
    or c                                          ; $7c5d: $b1
    db $e4                                        ; $7c5e: $e4
    ld sp, $b161                                  ; $7c5f: $31 $61 $b1
    ld de, $8151                                  ; $7c62: $11 $51 $81
    pop de                                        ; $7c65: $d1
    push hl                                       ; $7c66: $e5
    jr c, @+$01                                   ; $7c67: $38 $ff

    ldh [rTMA], a                                 ; $7c69: $e0 $06
    ld c, d                                       ; $7c6b: $4a
    push hl                                       ; $7c6c: $e5
    di                                            ; $7c6d: $f3
    db $eb                                        ; $7c6e: $eb
    rlca                                          ; $7c6f: $07
    nop                                           ; $7c70: $00
    ld [$ef03], a                                 ; $7c71: $ea $03 $ef
    rrca                                          ; $7c74: $0f
    db $e3                                        ; $7c75: $e3
    or e                                          ; $7c76: $b3
    db $e4                                        ; $7c77: $e4
    ld sp, $b161                                  ; $7c78: $31 $61 $b1
    ld de, $ef51                                  ; $7c7b: $11 $51 $ef
    rst RST_38                                    ; $7c7e: $ff
    db $eb                                        ; $7c7f: $eb
    dec b                                         ; $7c80: $05
    ld h, b                                       ; $7c81: $60
    ldh a, [$ff78]                                ; $7c82: $f0 $78
    rst RST_38                                    ; $7c84: $ff
    ldh [rTIMA], a                                ; $7c85: $e0 $05
    add e                                         ; $7c87: $83
    adc b                                         ; $7c88: $88
    rst RST_28                                    ; $7c89: $ef
    ldh a, [$ffeb]                                ; $7c8a: $f0 $eb
    ld [$e300], sp                                ; $7c8c: $08 $00 $e3
    ld b, c                                       ; $7c8f: $41
    db $fd                                        ; $7c90: $fd
    sub h                                         ; $7c91: $94
    ld a, h                                       ; $7c92: $7c
    rst RST_38                                    ; $7c93: $ff
    db $e3                                        ; $7c94: $e3
    ld b, c                                       ; $7c95: $41
    ld [hl], c                                    ; $7c96: $71
    or c                                          ; $7c97: $b1
    db $e4                                        ; $7c98: $e4
    ld sp, $7141                                  ; $7c99: $31 $41 $71
    or c                                          ; $7c9c: $b1
    push hl                                       ; $7c9d: $e5
    ld sp, $e0fd                                  ; $7c9e: $31 $fd $e0
    dec b                                         ; $7ca1: $05
    adc l                                         ; $7ca2: $8d
    adc b                                         ; $7ca3: $88
    db $fd                                        ; $7ca4: $fd
    sub h                                         ; $7ca5: $94
    ld a, h                                       ; $7ca6: $7c
    ldh [rTIMA], a                                ; $7ca7: $e0 $05
    add d                                         ; $7ca9: $82
    adc b                                         ; $7caa: $88
    db $fd                                        ; $7cab: $fd
    sub h                                         ; $7cac: $94
    ld a, h                                       ; $7cad: $7c
    rst RST_38                                    ; $7cae: $ff
    ldh [rTIMA], a                                ; $7caf: $e0 $05
    ld [hl+], a                                   ; $7cb1: $22
    adc b                                         ; $7cb2: $88
    db $eb                                        ; $7cb3: $eb
    rlca                                          ; $7cb4: $07
    nop                                           ; $7cb5: $00
    db $fd                                        ; $7cb6: $fd
    sub h                                         ; $7cb7: $94
    ld a, h                                       ; $7cb8: $7c
    rst RST_38                                    ; $7cb9: $ff
    ldh [$ff09], a                                ; $7cba: $e0 $09
    add e                                         ; $7cbc: $83
    di                                            ; $7cbd: $f3
    rst RST_28                                    ; $7cbe: $ef
    ldh a, [$ffeb]                                ; $7cbf: $f0 $eb
    rlca                                          ; $7cc1: $07
    nop                                           ; $7cc2: $00
    push hl                                       ; $7cc3: $e5
    sub c                                         ; $7cc4: $91
    cp $fd                                        ; $7cc5: $fe $fd
    jp z, $fe7c                                   ; $7cc7: $ca $7c $fe

    add sp, -$0d                                  ; $7cca: $e8 $f3
    ldh a, [$fffb]                                ; $7ccc: $f0 $fb
    push hl                                       ; $7cce: $e5
    sub c                                         ; $7ccf: $91
    or c                                          ; $7cd0: $b1
    pop de                                        ; $7cd1: $d1
    and $31                                       ; $7cd2: $e6 $31
    ld d, c                                       ; $7cd4: $51
    ld [hl], c                                    ; $7cd5: $71
    sub c                                         ; $7cd6: $91
    ldh a, [c]                                    ; $7cd7: $f2
    add sp, -$0b                                  ; $7cd8: $e8 $f5
    ei                                            ; $7cda: $fb
    ld [bc], a                                    ; $7cdb: $02
    sub d                                         ; $7cdc: $92
    db $fd                                        ; $7cdd: $fd
    ldh [$ff09], a                                ; $7cde: $e0 $09
    add e                                         ; $7ce0: $83
    di                                            ; $7ce1: $f3
    cp $fd                                        ; $7ce2: $fe $fd
    jp z, $fe7c                                   ; $7ce4: $ca $7c $fe

    ldh [$ff09], a                                ; $7ce7: $e0 $09
    ld [hl+], a                                   ; $7ce9: $22
    di                                            ; $7cea: $f3
    cp $fd                                        ; $7ceb: $fe $fd
    jp z, $fe7c                                   ; $7ced: $ca $7c $fe

    rst RST_38                                    ; $7cf0: $ff
    dec b                                         ; $7cf1: $05
    ld a, l                                       ; $7cf2: $7d
    dec b                                         ; $7cf3: $05
    ld a, l                                       ; $7cf4: $7d
    ld b, a                                       ; $7cf5: $47
    ld a, l                                       ; $7cf6: $7d
    adc c                                         ; $7cf7: $89
    ld a, l                                       ; $7cf8: $7d
    rst RST_00                                    ; $7cf9: $c7
    ld a, l                                       ; $7cfa: $7d
    add l                                         ; $7cfb: $85
    ld a, [hl]                                    ; $7cfc: $7e
    or [hl]                                       ; $7cfd: $b6
    ld a, [hl]                                    ; $7cfe: $7e
    add sp, $7e                                   ; $7cff: $e8 $7e
    ld a, [de]                                    ; $7d01: $1a
    ld a, a                                       ; $7d02: $7f
    ld c, h                                       ; $7d03: $4c
    ld a, a                                       ; $7d04: $7f
    ret nz                                        ; $7d05: $c0

    ld d, e                                       ; $7d06: $53
    ret nz                                        ; $7d07: $c0

    ld c, d                                       ; $7d08: $4a
    ret nz                                        ; $7d09: $c0

    ld l, [hl]                                    ; $7d0a: $6e
    ret nz                                        ; $7d0b: $c0

    ld h, h                                       ; $7d0c: $64
    ret nz                                        ; $7d0d: $c0

    ld h, h                                       ; $7d0e: $64
    ret nz                                        ; $7d0f: $c0

    ld [hl], l                                    ; $7d10: $75

jr_007_7d11:
    ret nz                                        ; $7d11: $c0

jr_007_7d12:
    ld [hl], c                                    ; $7d12: $71
    ret nz                                        ; $7d13: $c0

    ld [hl], c                                    ; $7d14: $71
    ret nz                                        ; $7d15: $c0

    ld d, e                                       ; $7d16: $53
    ret nz                                        ; $7d17: $c0

    ld c, d                                       ; $7d18: $4a
    ret nz                                        ; $7d19: $c0

    ld l, [hl]                                    ; $7d1a: $6e
    ret nz                                        ; $7d1b: $c0

    ld h, h                                       ; $7d1c: $64
    ret nz                                        ; $7d1d: $c0

    ld h, h                                       ; $7d1e: $64
    ret nz                                        ; $7d1f: $c0

    ld [hl], l                                    ; $7d20: $75

jr_007_7d21:
    ret nz                                        ; $7d21: $c0

    ld [hl], c                                    ; $7d22: $71
    ret nz                                        ; $7d23: $c0

    ld [hl], c                                    ; $7d24: $71
    ret nz                                        ; $7d25: $c0

    ld [hl], d                                    ; $7d26: $72
    inc bc                                        ; $7d27: $03
    ld h, $03                                     ; $7d28: $26 $03
    ld h, $03                                     ; $7d2a: $26 $03
    adc [hl]                                      ; $7d2c: $8e
    inc bc                                        ; $7d2d: $03
    adc d                                         ; $7d2e: $8a
    inc bc                                        ; $7d2f: $03
    jp z, $da03                                   ; $7d30: $ca $03 $da

    inc bc                                        ; $7d33: $03
    ld d, [hl]                                    ; $7d34: $56

jr_007_7d35:
    inc bc                                        ; $7d35: $03
    ld [hl], d                                    ; $7d36: $72
    inc bc                                        ; $7d37: $03
    ld h, $03                                     ; $7d38: $26 $03
    ld h, $03                                     ; $7d3a: $26 $03
    adc [hl]                                      ; $7d3c: $8e
    inc bc                                        ; $7d3d: $03
    adc d                                         ; $7d3e: $8a
    inc bc                                        ; $7d3f: $03
    jp z, $da03                                   ; $7d40: $ca $03 $da

    inc bc                                        ; $7d43: $03
    ld d, [hl]                                    ; $7d44: $56
    inc bc                                        ; $7d45: $03
    nop                                           ; $7d46: $00
    ret nz                                        ; $7d47: $c0

    dec e                                         ; $7d48: $1d
    jr nz, jr_007_7dc9                            ; $7d49: $20 $7e

    nop                                           ; $7d4b: $00

jr_007_7d4c:
    ld h, l                                       ; $7d4c: $65
    sbc b                                         ; $7d4d: $98
    add $20                                       ; $7d4e: $c6 $20
    adc e                                         ; $7d50: $8b
    ld b, h                                       ; $7d51: $44
    ld d, c                                       ; $7d52: $51
    and [hl]                                      ; $7d53: $a6
    ld h, a                                       ; $7d54: $67
    sbc b                                         ; $7d55: $98
    jr @+$44                                      ; $7d56: $18 $42

    ld a, l                                       ; $7d58: $7d
    nop                                           ; $7d59: $00
    add $38                                       ; $7d5a: $c6 $38

jr_007_7d5c:
    add l                                         ; $7d5c: $85
    ld b, b                                       ; $7d5d: $40
    ld [bc], a                                    ; $7d5e: $02
    add b                                         ; $7d5f: $80
    rra                                           ; $7d60: $1f
    add b                                         ; $7d61: $80
    add l                                         ; $7d62: $85
    ld b, d                                       ; $7d63: $42
    ld b, a                                       ; $7d64: $47
    cp b                                          ; $7d65: $b8
    jr jr_007_7daa                                ; $7d66: $18 $42

    ld b, c                                       ; $7d68: $41
    inc a                                         ; $7d69: $3c
    add b                                         ; $7d6a: $80
    ld b, e                                       ; $7d6b: $43
    ld bc, $0e80                                  ; $7d6c: $01 $80 $0e
    add c                                         ; $7d6f: $81
    ld e, $00                                     ; $7d70: $1e $00
    sbc a                                         ; $7d72: $9f
    nop                                           ; $7d73: $00
    ld c, c                                       ; $7d74: $49
    add d                                         ; $7d75: $82
    inc a                                         ; $7d76: $3c
    ld b, d                                       ; $7d77: $42
    ld h, c                                       ; $7d78: $61
    jr jr_007_7d12                                ; $7d79: $18 $97

    nop                                           ; $7d7b: $00

jr_007_7d7c:
    ld e, h                                       ; $7d7c: $5c
    nop                                           ; $7d7d: $00
    inc a                                         ; $7d7e: $3c
    add c                                         ; $7d7f: $81
    ld a, $00                                     ; $7d80: $3e $00
    dec e                                         ; $7d82: $1d
    add b                                         ; $7d83: $80
    dec bc                                        ; $7d84: $0b
    ret nz                                        ; $7d85: $c0

    inc e                                         ; $7d86: $1c
    ld h, d                                       ; $7d87: $62
    nop                                           ; $7d88: $00
    add [hl]                                      ; $7d89: $86
    add hl, de                                    ; $7d8a: $19
    nop                                           ; $7d8b: $00
    and l                                         ; $7d8c: $a5
    jr jr_007_7d4c                                ; $7d8d: $18 $bd

    jr jr_007_7d11                                ; $7d8f: $18 $80

    add c                                         ; $7d91: $81
    ld [$bdbd], sp                                ; $7d92: $08 $bd $bd
    inc a                                         ; $7d95: $3c
    ld a, [hl]                                    ; $7d96: $7e
    inc a                                         ; $7d97: $3c
    add c                                         ; $7d98: $81
    jp $8499                                      ; $7d99: $c3 $99 $84


    and l                                         ; $7d9c: $a5
    jr jr_007_7d5c                                ; $7d9d: $18 $bd

    jr jr_007_7d21                                ; $7d9f: $18 $80

    add c                                         ; $7da1: $81
    inc b                                         ; $7da2: $04
    inc a                                         ; $7da3: $3c
    ld a, [hl]                                    ; $7da4: $7e
    inc a                                         ; $7da5: $3c
    add c                                         ; $7da6: $81
    adc h                                         ; $7da7: $8c
    rst RST_38                                    ; $7da8: $ff
    nop                                           ; $7da9: $00

jr_007_7daa:
    rst RST_38                                    ; $7daa: $ff
    nop                                           ; $7dab: $00
    jp $9900                                      ; $7dac: $c3 $00 $99


    nop                                           ; $7daf: $00
    inc h                                         ; $7db0: $24
    jr jr_007_7e31                                ; $7db1: $18 $7e

    jr jr_007_7d35                                ; $7db3: $18 $80

    add c                                         ; $7db5: $81
    inc b                                         ; $7db6: $04
    inc a                                         ; $7db7: $3c
    add c                                         ; $7db8: $81
    jp $8a99                                      ; $7db9: $c3 $99 $8a


    and l                                         ; $7dbc: $a5
    jr jr_007_7d7c                                ; $7dbd: $18 $bd

    jr jr_007_7dfd                                ; $7dbf: $18 $3c

    nop                                           ; $7dc1: $00
    ld a, [hl]                                    ; $7dc2: $7e
    nop                                           ; $7dc3: $00
    inc a                                         ; $7dc4: $3c
    nop                                           ; $7dc5: $00
    nop                                           ; $7dc6: $00
    add c                                         ; $7dc7: $81
    ld b, b                                       ; $7dc8: $40

jr_007_7dc9:
    inc bc                                        ; $7dc9: $03
    nop                                           ; $7dca: $00
    add c                                         ; $7dcb: $81
    ld bc, $0003                                  ; $7dcc: $01 $03 $00
    add b                                         ; $7dcf: $80
    add c                                         ; $7dd0: $81
    dec b                                         ; $7dd1: $05
    jr jr_007_7e08                                ; $7dd2: $18 $34

    jr jr_007_7dd8                                ; $7dd4: $18 $02

    ld b, b                                       ; $7dd6: $40
    add c                                         ; $7dd7: $81

jr_007_7dd8:
    nop                                           ; $7dd8: $00
    add b                                         ; $7dd9: $80
    add d                                         ; $7dda: $82
    rlca                                          ; $7ddb: $07
    ld bc, $3418                                  ; $7ddc: $01 $18 $34
    ld h, [hl]                                    ; $7ddf: $66
    jr nc, jr_007_7de4                            ; $7de0: $30 $02

    ld b, b                                       ; $7de2: $40
    inc bc                                        ; $7de3: $03

jr_007_7de4:
    nop                                           ; $7de4: $00
    add b                                         ; $7de5: $80
    add c                                         ; $7de6: $81
    rrca                                          ; $7de7: $0f
    add hl, de                                    ; $7de8: $19
    inc a                                         ; $7de9: $3c
    inc [hl]                                      ; $7dea: $34
    ld h, [hl]                                    ; $7deb: $66
    inc [hl]                                      ; $7dec: $34
    ld [bc], a                                    ; $7ded: $02
    ld e, b                                       ; $7dee: $58
    inc a                                         ; $7def: $3c
    dec [hl]                                      ; $7df0: $35
    inc [hl]                                      ; $7df1: $34
    halt                                          ; $7df2: $76
    jp $3240                                      ; $7df3: $c3 $40 $32


    ld b, b                                       ; $7df6: $40
    add c                                         ; $7df7: $81
    nop                                           ; $7df8: $00
    add b                                         ; $7df9: $80
    add d                                         ; $7dfa: $82
    rlca                                          ; $7dfb: $07
    add hl, de                                    ; $7dfc: $19

jr_007_7dfd:
    inc a                                         ; $7dfd: $3c
    inc [hl]                                      ; $7dfe: $34
    ld h, [hl]                                    ; $7dff: $66
    inc [hl]                                      ; $7e00: $34
    ld [bc], a                                    ; $7e01: $02
    ld b, b                                       ; $7e02: $40
    inc bc                                        ; $7e03: $03
    nop                                           ; $7e04: $00
    add b                                         ; $7e05: $80
    add c                                         ; $7e06: $81
    rlca                                          ; $7e07: $07

jr_007_7e08:
    ld bc, $3418                                  ; $7e08: $01 $18 $34
    ld h, [hl]                                    ; $7e0b: $66
    jr nc, jr_007_7e10                            ; $7e0c: $30 $02

    ld b, b                                       ; $7e0e: $40
    add c                                         ; $7e0f: $81

jr_007_7e10:
    nop                                           ; $7e10: $00
    add b                                         ; $7e11: $80
    add d                                         ; $7e12: $82
    rlca                                          ; $7e13: $07
    ld bc, $3418                                  ; $7e14: $01 $18 $34
    ld h, [hl]                                    ; $7e17: $66
    jr nc, jr_007_7e1c                            ; $7e18: $30 $02

    ld b, b                                       ; $7e1a: $40
    inc bc                                        ; $7e1b: $03

jr_007_7e1c:
    nop                                           ; $7e1c: $00
    add b                                         ; $7e1d: $80
    add c                                         ; $7e1e: $81
    rrca                                          ; $7e1f: $0f
    ld bc, $3418                                  ; $7e20: $01 $18 $34
    ld h, [hl]                                    ; $7e23: $66
    jr nc, jr_007_7e28                            ; $7e24: $30 $02

    ld e, b                                       ; $7e26: $58
    inc a                                         ; $7e27: $3c

jr_007_7e28:
    dec [hl]                                      ; $7e28: $35
    inc [hl]                                      ; $7e29: $34
    halt                                          ; $7e2a: $76
    jp $3240                                      ; $7e2b: $c3 $40 $32


    ld b, b                                       ; $7e2e: $40
    add c                                         ; $7e2f: $81
    nop                                           ; $7e30: $00

jr_007_7e31:
    add b                                         ; $7e31: $80
    add d                                         ; $7e32: $82
    rlca                                          ; $7e33: $07
    add hl, de                                    ; $7e34: $19
    inc a                                         ; $7e35: $3c
    inc [hl]                                      ; $7e36: $34
    ld h, [hl]                                    ; $7e37: $66
    inc [hl]                                      ; $7e38: $34
    ld [bc], a                                    ; $7e39: $02
    ld b, b                                       ; $7e3a: $40
    inc bc                                        ; $7e3b: $03
    nop                                           ; $7e3c: $00
    add b                                         ; $7e3d: $80
    add c                                         ; $7e3e: $81
    rlca                                          ; $7e3f: $07
    ld bc, $3418                                  ; $7e40: $01 $18 $34
    ld h, [hl]                                    ; $7e43: $66
    jr nc, jr_007_7e48                            ; $7e44: $30 $02

    ld b, b                                       ; $7e46: $40
    add e                                         ; $7e47: $83

jr_007_7e48:
    nop                                           ; $7e48: $00
    nop                                           ; $7e49: $00
    ld bc, $0003                                  ; $7e4a: $01 $03 $00
    add b                                         ; $7e4d: $80
    add c                                         ; $7e4e: $81
    dec b                                         ; $7e4f: $05
    jr jr_007_7e86                                ; $7e50: $18 $34

    jr jr_007_7e56                                ; $7e52: $18 $02

    ld b, b                                       ; $7e54: $40
    add c                                         ; $7e55: $81

jr_007_7e56:
    nop                                           ; $7e56: $00
    add b                                         ; $7e57: $80
    add d                                         ; $7e58: $82
    rlca                                          ; $7e59: $07
    ld bc, $3418                                  ; $7e5a: $01 $18 $34
    ld h, [hl]                                    ; $7e5d: $66
    jr nc, jr_007_7e62                            ; $7e5e: $30 $02

    ld b, b                                       ; $7e60: $40
    inc bc                                        ; $7e61: $03

jr_007_7e62:
    nop                                           ; $7e62: $00
    add b                                         ; $7e63: $80
    add c                                         ; $7e64: $81
    rlca                                          ; $7e65: $07
    add hl, de                                    ; $7e66: $19
    inc a                                         ; $7e67: $3c
    inc [hl]                                      ; $7e68: $34
    ld h, [hl]                                    ; $7e69: $66
    inc [hl]                                      ; $7e6a: $34
    ld [bc], a                                    ; $7e6b: $02
    ld b, b                                       ; $7e6c: $40
    add c                                         ; $7e6d: $81
    nop                                           ; $7e6e: $00
    add b                                         ; $7e6f: $80
    add d                                         ; $7e70: $82
    rlca                                          ; $7e71: $07
    add hl, de                                    ; $7e72: $19
    inc a                                         ; $7e73: $3c
    inc [hl]                                      ; $7e74: $34
    ld h, [hl]                                    ; $7e75: $66
    inc [hl]                                      ; $7e76: $34
    ld [bc], a                                    ; $7e77: $02
    ld b, b                                       ; $7e78: $40
    inc bc                                        ; $7e79: $03
    nop                                           ; $7e7a: $00
    add b                                         ; $7e7b: $80
    add c                                         ; $7e7c: $81
    ld b, $19                                     ; $7e7d: $06 $19
    inc a                                         ; $7e7f: $3c
    inc [hl]                                      ; $7e80: $34
    ld h, [hl]                                    ; $7e81: $66
    inc [hl]                                      ; $7e82: $34
    ld [bc], a                                    ; $7e83: $02
    nop                                           ; $7e84: $00
    inc bc                                        ; $7e85: $03

jr_007_7e86:
    rst RST_38                                    ; $7e86: $ff
    adc l                                         ; $7e87: $8d
    cp c                                          ; $7e88: $b9
    rst RST_28                                    ; $7e89: $ef
    rst RST_28                                    ; $7e8a: $ef
    inc h                                         ; $7e8b: $24
    inc h                                         ; $7e8c: $24
    ld b, d                                       ; $7e8d: $42
    ld b, d                                       ; $7e8e: $42
    db $db                                        ; $7e8f: $db
    ld b, d                                       ; $7e90: $42
    db $db                                        ; $7e91: $db
    ld b, d                                       ; $7e92: $42
    inc a                                         ; $7e93: $3c
    rst RST_20                                    ; $7e94: $e7
    inc bc                                        ; $7e95: $03
    rst RST_38                                    ; $7e96: $ff
    adc l                                         ; $7e97: $8d
    sbc l                                         ; $7e98: $9d
    rst RST_30                                    ; $7e99: $f7
    rst RST_30                                    ; $7e9a: $f7
    inc h                                         ; $7e9b: $24
    inc h                                         ; $7e9c: $24
    ld b, d                                       ; $7e9d: $42
    ld b, d                                       ; $7e9e: $42
    db $db                                        ; $7e9f: $db
    ld b, d                                       ; $7ea0: $42
    db $db                                        ; $7ea1: $db
    ld b, d                                       ; $7ea2: $42
    inc a                                         ; $7ea3: $3c
    rst RST_20                                    ; $7ea4: $e7
    inc bc                                        ; $7ea5: $03
    rst RST_38                                    ; $7ea6: $ff
    adc l                                         ; $7ea7: $8d
    add a                                         ; $7ea8: $87
    ei                                            ; $7ea9: $fb
    ei                                            ; $7eaa: $fb
    ld [de], a                                    ; $7eab: $12
    ld [de], a                                    ; $7eac: $12
    ld hl, $ed21                                  ; $7ead: $21 $21 $ed
    ld b, c                                       ; $7eb0: $41
    ei                                            ; $7eb1: $fb
    ld b, c                                       ; $7eb2: $41
    ld a, [hl-]                                   ; $7eb3: $3a
    rst RST_20                                    ; $7eb4: $e7
    nop                                           ; $7eb5: $00
    or b                                          ; $7eb6: $b0
    nop                                           ; $7eb7: $00
    nop                                           ; $7eb8: $00
    ld a, a                                       ; $7eb9: $7f
    ld a, a                                       ; $7eba: $7f
    jr z, jr_007_7ee5                             ; $7ebb: $28 $28

    inc h                                         ; $7ebd: $24
    rst RST_20                                    ; $7ebe: $e7
    ld b, d                                       ; $7ebf: $42
    jp $c35a                                      ; $7ec0: $c3 $5a $c3


    db $db                                        ; $7ec3: $db
    jp $257f                                      ; $7ec4: $c3 $7f $25


    nop                                           ; $7ec7: $00
    nop                                           ; $7ec8: $00
    ld a, a                                       ; $7ec9: $7f
    ld a, a                                       ; $7eca: $7f
    inc d                                         ; $7ecb: $14
    inc d                                         ; $7ecc: $14
    inc h                                         ; $7ecd: $24
    rst RST_20                                    ; $7ece: $e7
    ld b, d                                       ; $7ecf: $42
    jp $c35a                                      ; $7ed0: $c3 $5a $c3


    db $db                                        ; $7ed3: $db
    jp $257f                                      ; $7ed4: $c3 $7f $25


    nop                                           ; $7ed7: $00
    nop                                           ; $7ed8: $00
    ld a, a                                       ; $7ed9: $7f
    ld a, a                                       ; $7eda: $7f
    ld a, [bc]                                    ; $7edb: $0a
    ld a, [de]                                    ; $7edc: $1a
    ld [de], a                                    ; $7edd: $12
    di                                            ; $7ede: $f3
    ld hl, $6de1                                  ; $7edf: $21 $e1 $6d
    pop bc                                        ; $7ee2: $c1
    ei                                            ; $7ee3: $fb
    pop bc                                        ; $7ee4: $c1

jr_007_7ee5:
    ld a, e                                       ; $7ee5: $7b
    daa                                           ; $7ee6: $27
    nop                                           ; $7ee7: $00
    or b                                          ; $7ee8: $b0
    rst RST_38                                    ; $7ee9: $ff
    rst RST_38                                    ; $7eea: $ff
    ld a, a                                       ; $7eeb: $7f
    rst RST_38                                    ; $7eec: $ff
    xor a                                         ; $7eed: $af
    ld l, a                                       ; $7eee: $6f
    and a                                         ; $7eef: $a7
    ld h, a                                       ; $7ef0: $67
    ld b, e                                       ; $7ef1: $43
    jp $c35b                                      ; $7ef2: $c3 $5b $c3


    ld e, e                                       ; $7ef5: $5b
    jp $e73e                                      ; $7ef6: $c3 $3e $e7


    rst RST_38                                    ; $7ef9: $ff
    rst RST_38                                    ; $7efa: $ff
    ld a, a                                       ; $7efb: $7f
    rst RST_38                                    ; $7efc: $ff
    or a                                          ; $7efd: $b7
    ld [hl], a                                    ; $7efe: $77
    and a                                         ; $7eff: $a7
    ld h, a                                       ; $7f00: $67
    ld b, e                                       ; $7f01: $43
    jp $c35b                                      ; $7f02: $c3 $5b $c3


    ld e, e                                       ; $7f05: $5b
    jp $e73e                                      ; $7f06: $c3 $3e $e7


    rst RST_38                                    ; $7f09: $ff
    rst RST_38                                    ; $7f0a: $ff
    ld a, a                                       ; $7f0b: $7f
    rst RST_38                                    ; $7f0c: $ff
    xor e                                         ; $7f0d: $ab
    ld a, e                                       ; $7f0e: $7b
    or e                                          ; $7f0f: $b3
    ld [hl], e                                    ; $7f10: $73
    ld hl, $6de1                                  ; $7f11: $21 $e1 $6d
    pop bc                                        ; $7f14: $c1
    ld a, e                                       ; $7f15: $7b
    pop bc                                        ; $7f16: $c1
    ld a, [hl-]                                   ; $7f17: $3a
    rst RST_20                                    ; $7f18: $e7
    nop                                           ; $7f19: $00
    or b                                          ; $7f1a: $b0
    ei                                            ; $7f1b: $fb
    rst RST_38                                    ; $7f1c: $ff
    ld [hl], h                                    ; $7f1d: $74
    cp a                                          ; $7f1e: $bf
    xor l                                         ; $7f1f: $ad
    ld l, $a5                                     ; $7f20: $2e $a5
    ld h, $43                                     ; $7f22: $26 $43
    jp nz, $c3da                                  ; $7f24: $c2 $da $c3

    ld e, e                                       ; $7f27: $5b
    jp $e77d                                      ; $7f28: $c3 $7d $e7


    ei                                            ; $7f2b: $fb
    rst RST_38                                    ; $7f2c: $ff
    ld l, h                                       ; $7f2d: $6c
    sbc a                                         ; $7f2e: $9f
    sub l                                         ; $7f2f: $95
    ld d, $a5                                     ; $7f30: $16 $a5
    ld h, $43                                     ; $7f32: $26 $43

jr_007_7f34:
    jp nz, $c3da                                  ; $7f34: $c2 $da $c3

    ld e, e                                       ; $7f37: $5b
    jp $e77d                                      ; $7f38: $c3 $7d $e7


    ei                                            ; $7f3b: $fb
    rst RST_38                                    ; $7f3c: $ff
    ld h, [hl]                                    ; $7f3d: $66
    sbc a                                         ; $7f3e: $9f
    sbc e                                         ; $7f3f: $9b
    ld a, [bc]                                    ; $7f40: $0a
    sub e                                         ; $7f41: $93
    ld [de], a                                    ; $7f42: $12
    ld h, c                                       ; $7f43: $61
    and c                                         ; $7f44: $a1
    db $ed                                        ; $7f45: $ed
    pop bc                                        ; $7f46: $c1
    ld a, e                                       ; $7f47: $7b
    pop bc                                        ; $7f48: $c1
    ld a, a                                       ; $7f49: $7f
    db $e3                                        ; $7f4a: $e3
    nop                                           ; $7f4b: $00
    add [hl]                                      ; $7f4c: $86
    rrca                                          ; $7f4d: $0f
    ld a, [bc]                                    ; $7f4e: $0a
    rrca                                          ; $7f4f: $0f
    ld a, [bc]                                    ; $7f50: $0a
    rrca                                          ; $7f51: $0f
    ld [$1f03], sp                                ; $7f52: $08 $03 $1f
    sub a                                         ; $7f55: $97
    ld d, $0f                                     ; $7f56: $16 $0f
    inc c                                         ; $7f58: $0c
    dec e                                         ; $7f59: $1d
    inc de                                        ; $7f5a: $13
    rra                                           ; $7f5b: $1f
    rra                                           ; $7f5c: $1f
    rrca                                          ; $7f5d: $0f
    ld a, [bc]                                    ; $7f5e: $0a
    rrca                                          ; $7f5f: $0f
    ld a, [bc]                                    ; $7f60: $0a
    rrca                                          ; $7f61: $0f
    ld [$0f1f], sp                                ; $7f62: $08 $1f $0f
    rra                                           ; $7f65: $1f
    ld e, $1f                                     ; $7f66: $1e $1f
    db $10                                        ; $7f68: $10
    rrca                                          ; $7f69: $0f
    rrca                                          ; $7f6a: $0f
    inc b                                         ; $7f6b: $04
    rlca                                          ; $7f6c: $07
    and b                                         ; $7f6d: $a0
    pop af                                        ; $7f6e: $f1
    ld d, b                                       ; $7f6f: $50
    pop af                                        ; $7f70: $f1
    ld d, b                                       ; $7f71: $50
    pop af                                        ; $7f72: $f1
    db $10                                        ; $7f73: $10
    ld sp, hl                                     ; $7f74: $f9
    ld hl, sp-$07                                 ; $7f75: $f8 $f9
    ld l, b                                       ; $7f77: $68
    pop af                                        ; $7f78: $f1
    jr nc, jr_007_7f34                            ; $7f79: $30 $b9

    ret z                                         ; $7f7b: $c8

    ld sp, hl                                     ; $7f7c: $f9
    ld hl, sp-$0f                                 ; $7f7d: $f8 $f1
    ld d, b                                       ; $7f7f: $50
    pop af                                        ; $7f80: $f1
    ld d, b                                       ; $7f81: $50
    pop af                                        ; $7f82: $f1
    db $10                                        ; $7f83: $10
    ld sp, hl                                     ; $7f84: $f9
    ldh a, [$fff9]                                ; $7f85: $f0 $f9
    ld a, b                                       ; $7f87: $78
    ld sp, hl                                     ; $7f88: $f9
    ld [$f0f1], sp                                ; $7f89: $08 $f1 $f0
    ld hl, $00e0                                  ; $7f8c: $21 $e0 $00
    nop                                           ; $7f8f: $00
    ret c                                         ; $7f90: $d8

    ret nz                                        ; $7f91: $c0

    rst RST_38                                    ; $7f92: $ff
    rst RST_38                                    ; $7f93: $ff
    rst RST_00                                    ; $7f94: $c7
    rst RST_28                                    ; $7f95: $ef
    rst RST_38                                    ; $7f96: $ff
    rst RST_38                                    ; $7f97: $ff
    db $d3                                        ; $7f98: $d3
    ei                                            ; $7f99: $fb
    dec a                                         ; $7f9a: $3d
    cp a                                          ; $7f9b: $bf
    rst RST_38                                    ; $7f9c: $ff
    rst RST_38                                    ; $7f9d: $ff
    db $e3                                        ; $7f9e: $e3
    rst RST_30                                    ; $7f9f: $f7
    ld a, $7f                                     ; $7fa0: $3e $7f
    rst RST_38                                    ; $7fa2: $ff
    rst RST_38                                    ; $7fa3: $ff
    pop af                                        ; $7fa4: $f1
    ei                                            ; $7fa5: $fb
    rst RST_38                                    ; $7fa6: $ff
    rst RST_38                                    ; $7fa7: $ff
    set 3, a                                      ; $7fa8: $cb $df
    cp h                                          ; $7faa: $bc
    db $fd                                        ; $7fab: $fd
    rst RST_38                                    ; $7fac: $ff
    rst RST_38                                    ; $7fad: $ff
    db $d3                                        ; $7fae: $d3
    ei                                            ; $7faf: $fb
    dec a                                         ; $7fb0: $3d
    cp a                                          ; $7fb1: $bf
    rst RST_38                                    ; $7fb2: $ff
    rst RST_38                                    ; $7fb3: $ff
    ld a, h                                       ; $7fb4: $7c
    cp $ff                                        ; $7fb5: $fe $ff
    rst RST_38                                    ; $7fb7: $ff
    rst RST_00                                    ; $7fb8: $c7
    rst RST_28                                    ; $7fb9: $ef
    ld a, h                                       ; $7fba: $7c
    cp $ff                                        ; $7fbb: $fe $ff
    rst RST_38                                    ; $7fbd: $ff
    set 3, a                                      ; $7fbe: $cb $df
    cp h                                          ; $7fc0: $bc
    db $fd                                        ; $7fc1: $fd
    rst RST_38                                    ; $7fc2: $ff
    rst RST_38                                    ; $7fc3: $ff
    rra                                           ; $7fc4: $1f
    cp a                                          ; $7fc5: $bf
    rst RST_38                                    ; $7fc6: $ff
    rst RST_38                                    ; $7fc7: $ff
    db $e3                                        ; $7fc8: $e3
    rst RST_30                                    ; $7fc9: $f7
    ld a, $7f                                     ; $7fca: $3e $7f
    rst RST_38                                    ; $7fcc: $ff
    rst RST_38                                    ; $7fcd: $ff
    rst RST_00                                    ; $7fce: $c7
    rst RST_28                                    ; $7fcf: $ef
    ld a, h                                       ; $7fd0: $7c
    cp $00                                        ; $7fd1: $fe $00
    rst RST_38                                    ; $7fd3: $ff
    rst RST_38                                    ; $7fd4: $ff
    rst RST_38                                    ; $7fd5: $ff
    rst RST_38                                    ; $7fd6: $ff
    rst RST_38                                    ; $7fd7: $ff
    rst RST_38                                    ; $7fd8: $ff
    rst RST_38                                    ; $7fd9: $ff
    rst RST_38                                    ; $7fda: $ff
    rst RST_38                                    ; $7fdb: $ff
    rst RST_38                                    ; $7fdc: $ff
    rst RST_38                                    ; $7fdd: $ff
    rst RST_38                                    ; $7fde: $ff
    rst RST_38                                    ; $7fdf: $ff
    rst RST_38                                    ; $7fe0: $ff
    rst RST_38                                    ; $7fe1: $ff
    rst RST_38                                    ; $7fe2: $ff
    rst RST_38                                    ; $7fe3: $ff
    rst RST_38                                    ; $7fe4: $ff
    rst RST_38                                    ; $7fe5: $ff
    rst RST_38                                    ; $7fe6: $ff
    rst RST_38                                    ; $7fe7: $ff
    rst RST_38                                    ; $7fe8: $ff
    rst RST_38                                    ; $7fe9: $ff
    rst RST_38                                    ; $7fea: $ff
    rst RST_38                                    ; $7feb: $ff
    rst RST_38                                    ; $7fec: $ff
    rst RST_38                                    ; $7fed: $ff
    rst RST_38                                    ; $7fee: $ff
    rst RST_38                                    ; $7fef: $ff
    rst RST_38                                    ; $7ff0: $ff
    rst RST_38                                    ; $7ff1: $ff
    rst RST_38                                    ; $7ff2: $ff
    rst RST_38                                    ; $7ff3: $ff
    rst RST_38                                    ; $7ff4: $ff
    rst RST_38                                    ; $7ff5: $ff
    rst RST_38                                    ; $7ff6: $ff
    rst RST_38                                    ; $7ff7: $ff
    rst RST_38                                    ; $7ff8: $ff
    rst RST_38                                    ; $7ff9: $ff
    rst RST_38                                    ; $7ffa: $ff
    rst RST_38                                    ; $7ffb: $ff
    rst RST_38                                    ; $7ffc: $ff
    rst RST_38                                    ; $7ffd: $ff
    rst RST_38                                    ; $7ffe: $ff
    rst RST_38                                    ; $7fff: $ff
