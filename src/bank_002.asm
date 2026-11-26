; Disassembly of "Cave Noire (Japan).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    db $e3                                        ; $4000: $e3
    ret                                           ; $4001: $c9


    ld a, [hl+]                                   ; $4002: $2a
    cpl                                           ; $4003: $2f
    dec l                                         ; $4004: $2d
    ld [hl+], a                                   ; $4005: $22
    nop                                           ; $4006: $00
    dec l                                         ; $4007: $2d
    ld l, $1b                                     ; $4008: $2e $1b
    inc l                                         ; $400a: $2c
    ld l, $00                                     ; $400b: $2e $00
    dec h                                         ; $400d: $25
    rra                                           ; $400e: $1f
    inc sp                                        ; $400f: $33
    rst RST_38                                    ; $4010: $ff
    add sp, -$68                                  ; $4011: $e8 $98
    ld a, [hl-]                                   ; $4013: $3a
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    dec sp                                        ; $4016: $3b
    rst RST_38                                    ; $4017: $ff
    ld h, h                                       ; $4018: $64
    ret                                           ; $4019: $c9


    add hl, sp                                    ; $401a: $39
    dec h                                         ; $401b: $25
    add hl, hl                                    ; $401c: $29
    jr z, jr_002_403a                             ; $401d: $28 $1b

    daa                                           ; $401f: $27
    inc hl                                        ; $4020: $23
    nop                                           ; $4021: $00
    scf                                           ; $4022: $37
    jr c, jr_002_405d                             ; $4023: $38 $38

    scf                                           ; $4025: $37
    rst RST_38                                    ; $4026: $ff
    nop                                           ; $4027: $00
    sbc d                                         ; $4028: $9a
    add l                                         ; $4029: $85
    add [hl]                                      ; $402a: $86
    nop                                           ; $402b: $00
    nop                                           ; $402c: $00
    add a                                         ; $402d: $87
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    adc b                                         ; $4039: $88

jr_002_403a:
    nop                                           ; $403a: $00
    nop                                           ; $403b: $00
    adc d                                         ; $403c: $8a
    cp $20                                        ; $403d: $fe $20
    sbc d                                         ; $403f: $9a
    add b                                         ; $4040: $80
    add c                                         ; $4041: $81
    add d                                         ; $4042: $82
    add e                                         ; $4043: $83
    add h                                         ; $4044: $84
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    add a                                         ; $4047: $87
    nop                                           ; $4048: $00
    nop                                           ; $4049: $00
    nop                                           ; $404a: $00
    nop                                           ; $404b: $00
    nop                                           ; $404c: $00
    nop                                           ; $404d: $00
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    adc c                                         ; $4050: $89
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    adc e                                         ; $4053: $8b
    rst RST_38                                    ; $4054: $ff
    ld bc, $405b                                  ; $4055: $01 $5b $40
    nop                                           ; $4058: $00
    ld bc, $1400                                  ; $4059: $01 $00 $14
    nop                                           ; $405c: $00

jr_002_405d:
    add b                                         ; $405d: $80
    add e                                         ; $405e: $83
    inc b                                         ; $405f: $04
    ld a, a                                       ; $4060: $7f
    ld b, b                                       ; $4061: $40
    ld b, b                                       ; $4062: $40
    ld c, a                                       ; $4063: $4f
    add h                                         ; $4064: $84
    ld c, b                                       ; $4065: $48
    ld c, c                                       ; $4066: $49
    ld c, b                                       ; $4067: $48
    ld c, d                                       ; $4068: $4a
    inc b                                         ; $4069: $04
    nop                                           ; $406a: $00
    add d                                         ; $406b: $82
    rst RST_38                                    ; $406c: $ff
    rst RST_38                                    ; $406d: $ff
    inc b                                         ; $406e: $04
    nop                                           ; $406f: $00
    add [hl]                                      ; $4070: $86
    rst RST_38                                    ; $4071: $ff
    rst RST_38                                    ; $4072: $ff
    nop                                           ; $4073: $00
    ld [$0101], sp                                ; $4074: $08 $01 $01
    inc b                                         ; $4077: $04
    nop                                           ; $4078: $00
    add d                                         ; $4079: $82
    rst RST_38                                    ; $407a: $ff
    rst RST_38                                    ; $407b: $ff
    inc b                                         ; $407c: $04
    nop                                           ; $407d: $00
    add [hl]                                      ; $407e: $86
    rst RST_38                                    ; $407f: $ff
    rst RST_38                                    ; $4080: $ff
    nop                                           ; $4081: $00
    inc b                                         ; $4082: $04
    nop                                           ; $4083: $00
    ld [$0004], sp                                ; $4084: $08 $04 $00
    add d                                         ; $4087: $82
    rst RST_38                                    ; $4088: $ff
    rst RST_38                                    ; $4089: $ff
    inc b                                         ; $408a: $04
    nop                                           ; $408b: $00
    add d                                         ; $408c: $82
    rst RST_38                                    ; $408d: $ff
    rst RST_38                                    ; $408e: $ff
    ld [$8200], sp                                ; $408f: $08 $00 $82
    rst RST_38                                    ; $4092: $ff
    rst RST_38                                    ; $4093: $ff
    inc b                                         ; $4094: $04
    nop                                           ; $4095: $00
    add [hl]                                      ; $4096: $86
    rst RST_38                                    ; $4097: $ff
    rst RST_38                                    ; $4098: $ff
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00
    jr z, jr_002_40c5                             ; $409b: $28 $28

    inc b                                         ; $409d: $04
    nop                                           ; $409e: $00
    add b                                         ; $409f: $80
    add e                                         ; $40a0: $83
    inc b                                         ; $40a1: $04
    cp $02                                        ; $40a2: $fe $02
    ld [bc], a                                    ; $40a4: $02
    ldh a, [c]                                    ; $40a5: $f2
    add h                                         ; $40a6: $84
    ld [de], a                                    ; $40a7: $12
    sub d                                         ; $40a8: $92
    ld [de], a                                    ; $40a9: $12
    jp nc, Jump_000_0004                          ; $40aa: $d2 $04 $00

    add d                                         ; $40ad: $82
    rst RST_38                                    ; $40ae: $ff
    rst RST_38                                    ; $40af: $ff
    inc b                                         ; $40b0: $04
    add b                                         ; $40b1: $80
    inc bc                                        ; $40b2: $03
    sbc a                                         ; $40b3: $9f
    add e                                         ; $40b4: $83
    sub b                                         ; $40b5: $90
    sbc a                                         ; $40b6: $9f
    sbc a                                         ; $40b7: $9f
    inc b                                         ; $40b8: $04
    nop                                           ; $40b9: $00
    add d                                         ; $40ba: $82
    rst RST_38                                    ; $40bb: $ff
    rst RST_38                                    ; $40bc: $ff
    inc b                                         ; $40bd: $04
    nop                                           ; $40be: $00
    inc bc                                        ; $40bf: $03
    rst RST_38                                    ; $40c0: $ff
    adc c                                         ; $40c1: $89
    nop                                           ; $40c2: $00
    rst RST_38                                    ; $40c3: $ff
    rst RST_38                                    ; $40c4: $ff

jr_002_40c5:
    ld c, b                                       ; $40c5: $48
    ld c, h                                       ; $40c6: $4c
    ld c, b                                       ; $40c7: $48
    ld c, b                                       ; $40c8: $48
    ret z                                         ; $40c9: $c8

    ret z                                         ; $40ca: $c8

    inc bc                                        ; $40cb: $03
    ld [$0a87], sp                                ; $40cc: $08 $87 $0a
    ld hl, sp-$04                                 ; $40cf: $f8 $fc
    ld hl, sp+$08                                 ; $40d1: $f8 $08
    rst RST_38                                    ; $40d3: $ff

Call_002_40d4:
    rst RST_38                                    ; $40d4: $ff
    add b                                         ; $40d5: $80
    add e                                         ; $40d6: $83
    dec b                                         ; $40d7: $05
    rrca                                          ; $40d8: $0f
    ld [bc], a                                    ; $40d9: $02
    inc b                                         ; $40da: $04
    ld [$0333], sp                                ; $40db: $08 $33 $03
    nop                                           ; $40de: $00
    add c                                         ; $40df: $81
    ld b, b                                       ; $40e0: $40
    add b                                         ; $40e1: $80
    add e                                         ; $40e2: $83
    dec b                                         ; $40e3: $05
    adc a                                         ; $40e4: $8f
    ret nz                                        ; $40e5: $c0

    ld b, b                                       ; $40e6: $40
    adc a                                         ; $40e7: $8f
    add b                                         ; $40e8: $80
    ld b, $00                                     ; $40e9: $06 $00
    adc h                                         ; $40eb: $8c
    pop bc                                        ; $40ec: $c1
    nop                                           ; $40ed: $00
    rlca                                          ; $40ee: $07
    rlca                                          ; $40ef: $07
    nop                                           ; $40f0: $00
    nop                                           ; $40f1: $00
    ret nz                                        ; $40f2: $c0

    ret nz                                        ; $40f3: $c0

    inc bc                                        ; $40f4: $03
    inc bc                                        ; $40f5: $03
    inc c                                         ; $40f6: $0c
    inc c                                         ; $40f7: $0c
    inc b                                         ; $40f8: $04
    nop                                           ; $40f9: $00
    adc h                                         ; $40fa: $8c
    rst RST_38                                    ; $40fb: $ff
    rst RST_38                                    ; $40fc: $ff
    call nc, Call_002_40d4                        ; $40fd: $d4 $d4 $40
    ld b, b                                       ; $4100: $40
    add b                                         ; $4101: $80
    add b                                         ; $4102: $80
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    inc bc                                        ; $4105: $03
    inc bc                                        ; $4106: $03
    inc b                                         ; $4107: $04
    nop                                           ; $4108: $00
    add d                                         ; $4109: $82
    cp $ff                                        ; $410a: $fe $ff
    add b                                         ; $410c: $80
    add e                                         ; $410d: $83
    dec b                                         ; $410e: $05
    ld [$2010], sp                                ; $410f: $08 $10 $20
    ret nz                                        ; $4112: $c0

    ld bc, $0088                                  ; $4113: $01 $88 $00
    nop                                           ; $4116: $00
    rrca                                          ; $4117: $0f

jr_002_4118:
    rrca                                          ; $4118: $0f
    add h                                         ; $4119: $84
    inc b                                         ; $411a: $04
    db $fc                                        ; $411b: $fc
    db $fd                                        ; $411c: $fd
    add b                                         ; $411d: $80
    add e                                         ; $411e: $83
    inc b                                         ; $411f: $04
    inc h                                         ; $4120: $24
    jr c, jr_002_4163                             ; $4121: $38 $40

    add b                                         ; $4123: $80
    adc h                                         ; $4124: $8c
    nop                                           ; $4125: $00
    inc c                                         ; $4126: $0c
    add b                                         ; $4127: $80
    sub b                                         ; $4128: $90
    ld [hl], b                                    ; $4129: $70
    ld [hl], c                                    ; $412a: $71
    ld [de], a                                    ; $412b: $12
    ld [hl-], a                                   ; $412c: $32
    ld [de], a                                    ; $412d: $12
    ld [de], a                                    ; $412e: $12
    inc de                                        ; $412f: $13
    inc de                                        ; $4130: $13
    inc bc                                        ; $4131: $03
    db $10                                        ; $4132: $10
    add a                                         ; $4133: $87
    jr nc, jr_002_4155                            ; $4134: $30 $1f

    ld e, a                                       ; $4136: $5f
    rra                                           ; $4137: $1f
    or b                                          ; $4138: $b0
    rst RST_38                                    ; $4139: $ff
    rst RST_38                                    ; $413a: $ff
    inc b                                         ; $413b: $04
    nop                                           ; $413c: $00
    add d                                         ; $413d: $82
    rst RST_38                                    ; $413e: $ff
    rst RST_38                                    ; $413f: $ff
    inc b                                         ; $4140: $04
    ld bc, $f903                                  ; $4141: $01 $03 $f9
    add l                                         ; $4144: $85
    add hl, bc                                    ; $4145: $09
    ld sp, hl                                     ; $4146: $f9
    ld sp, hl                                     ; $4147: $f9
    add a                                         ; $4148: $87
    add h                                         ; $4149: $84
    add b                                         ; $414a: $80
    add e                                         ; $414b: $83
    rlca                                          ; $414c: $07
    rst RST_20                                    ; $414d: $e7
    ld hl, $3821                                  ; $414e: $21 $21 $38
    ld [$020e], sp                                ; $4151: $08 $0e $02
    add d                                         ; $4154: $82

jr_002_4155:
    rst RST_38                                    ; $4155: $ff
    nop                                           ; $4156: $00
    inc bc                                        ; $4157: $03
    rst RST_38                                    ; $4158: $ff
    add a                                         ; $4159: $87
    nop                                           ; $415a: $00
    rst RST_38                                    ; $415b: $ff
    rst RST_38                                    ; $415c: $ff
    ld a, a                                       ; $415d: $7f
    ld b, d                                       ; $415e: $42
    ld a, a                                       ; $415f: $7f
    ld b, d                                       ; $4160: $42
    add b                                         ; $4161: $80
    inc b                                         ; $4162: $04

jr_002_4163:
    ld b, c                                       ; $4163: $41
    and [hl]                                      ; $4164: $a6
    ld hl, sp+$08                                 ; $4165: $f8 $08
    ldh a, [$fff0]                                ; $4167: $f0 $f0
    db $e3                                        ; $4169: $e3
    inc hl                                        ; $416a: $23
    rst RST_20                                    ; $416b: $e7
    rst RST_20                                    ; $416c: $e7
    rst RST_00                                    ; $416d: $c7
    ld b, [hl]                                    ; $416e: $46
    adc $4c                                       ; $416f: $ce $4c
    call z, $8c4c                                 ; $4171: $cc $4c $8c
    adc h                                         ; $4174: $8c
    ld a, a                                       ; $4175: $7f
    ld b, a                                       ; $4176: $47
    add hl, sp                                    ; $4177: $39
    jr c, jr_002_4192                             ; $4178: $38 $18

    jr jr_002_4118                                ; $417a: $18 $9c

    sbc h                                         ; $417c: $9c
    adc b                                         ; $417d: $88
    adc c                                         ; $417e: $89
    ld b, e                                       ; $417f: $43
    ld b, e                                       ; $4180: $43
    ld c, a                                       ; $4181: $4f
    ld b, a                                       ; $4182: $47
    sbc [hl]                                      ; $4183: $9e
    sbc h                                         ; $4184: $9c
    ldh [$ffc0], a                                ; $4185: $e0 $c0
    pop af                                        ; $4187: $f1
    ldh [$fff1], a                                ; $4188: $e0 $f1
    pop de                                        ; $418a: $d1
    add b                                         ; $418b: $80
    add e                                         ; $418c: $83
    dec b                                         ; $418d: $05
    pop af                                        ; $418e: $f1
    ldh [$ffa4], a                                ; $418f: $e0 $a4
    inc h                                         ; $4191: $24

jr_002_4192:
    ld b, h                                       ; $4192: $44
    add [hl]                                      ; $4193: $86
    ld bc, $e100                                  ; $4194: $01 $00 $e1
    db $e3                                        ; $4197: $e3
    di                                            ; $4198: $f3
    sub e                                         ; $4199: $93
    add b                                         ; $419a: $80
    add e                                         ; $419b: $83
    dec b                                         ; $419c: $05
    di                                            ; $419d: $f3
    db $d3                                        ; $419e: $d3
    pop de                                        ; $419f: $d1
    ret                                           ; $41a0: $c9


    ld l, c                                       ; $41a1: $69
    sub d                                         ; $41a2: $92
    cp b                                          ; $41a3: $b8
    sub b                                         ; $41a4: $90
    ldh [$fff0], a                                ; $41a5: $e0 $f0
    xor $2c                                       ; $41a7: $ee $2c
    cp $fe                                        ; $41a9: $fe $fe
    ld a, [de]                                    ; $41ab: $1a
    ld a, [de]                                    ; $41ac: $1a
    add h                                         ; $41ad: $84
    add h                                         ; $41ae: $84
    add l                                         ; $41af: $85
    add h                                         ; $41b0: $84
    add l                                         ; $41b1: $85
    add l                                         ; $41b2: $85
    ld a, [hl]                                    ; $41b3: $7e
    rst RST_38                                    ; $41b4: $ff
    inc b                                         ; $41b5: $04
    nop                                           ; $41b6: $00
    add d                                         ; $41b7: $82
    sbc a                                         ; $41b8: $9f
    rrca                                          ; $41b9: $0f
    add b                                         ; $41ba: $80
    add e                                         ; $41bb: $83
    inc b                                         ; $41bc: $04
    sbc a                                         ; $41bd: $9f
    sbc b                                         ; $41be: $98
    sbc b                                         ; $41bf: $98
    sbc b                                         ; $41c0: $98
    add e                                         ; $41c1: $83
    sbc b                                         ; $41c2: $98
    db $10                                        ; $41c3: $10
    ld [$0c03], sp                                ; $41c4: $08 $03 $0c
    adc l                                         ; $41c7: $8d
    call z, $dc8c                                 ; $41c8: $cc $8c $dc
    call c, Call_002_5474                         ; $41cb: $dc $74 $54
    ld [hl], h                                    ; $41ce: $74
    ld [hl], h                                    ; $41cf: $74
    inc h                                         ; $41d0: $24
    inc h                                         ; $41d1: $24
    ld [hl], c                                    ; $41d2: $71
    jr nc, jr_002_4235                            ; $41d3: $30 $60

    inc bc                                        ; $41d5: $03
    ldh [$ff03], a                                ; $41d6: $e0 $03
    and $8d                                       ; $41d8: $e6 $8d
    ld h, [hl]                                    ; $41da: $66
    ld [hl], d                                    ; $41db: $72
    ld h, d                                       ; $41dc: $62
    ld d, d                                       ; $41dd: $52
    ld d, d                                       ; $41de: $52
    ld c, [hl]                                    ; $41df: $4e
    ld l, $f2                                     ; $41e0: $2e $f2
    ldh a, [c]                                    ; $41e2: $f2
    inc a                                         ; $41e3: $3c
    inc e                                         ; $41e4: $1c
    inc a                                         ; $41e5: $3c
    ld h, h                                       ; $41e6: $64
    add b                                         ; $41e7: $80
    add e                                         ; $41e8: $83
    dec b                                         ; $41e9: $05
    ld a, b                                       ; $41ea: $78
    ld l, c                                       ; $41eb: $69
    ld l, c                                       ; $41ec: $69
    ld [hl], c                                    ; $41ed: $71
    ld [hl], e                                    ; $41ee: $73
    adc c                                         ; $41ef: $89
    ld [$070a], sp                                ; $41f0: $08 $0a $07
    rlca                                          ; $41f3: $07
    rst RST_20                                    ; $41f4: $e7
    ld b, [hl]                                    ; $41f5: $46
    di                                            ; $41f6: $f3
    db $e3                                        ; $41f7: $e3
    di                                            ; $41f8: $f3
    inc bc                                        ; $41f9: $03
    sub e                                         ; $41fa: $93
    add [hl]                                      ; $41fb: $86
    sbc c                                         ; $41fc: $99
    sub c                                         ; $41fd: $91
    adc c                                         ; $41fe: $89
    add hl, bc                                    ; $41ff: $09
    add b                                         ; $4200: $80
    add b                                         ; $4201: $80
    inc bc                                        ; $4202: $03
    rst RST_08                                    ; $4203: $cf
    add a                                         ; $4204: $87

jr_002_4205:
    ld c, l                                       ; $4205: $4d
    rst RST_08                                    ; $4206: $cf
    rst RST_08                                    ; $4207: $cf
    ld c, l                                       ; $4208: $4d
    ld c, l                                       ; $4209: $4d
    call Call_000_044d                            ; $420a: $cd $4d $04
    call $0181                                    ; $420d: $cd $81 $01
    inc bc                                        ; $4210: $03
    nop                                           ; $4211: $00
    add b                                         ; $4212: $80
    add e                                         ; $4213: $83
    ld b, $3c                                     ; $4214: $06 $3c
    ld a, $32                                     ; $4216: $3e $32
    ld [hl-], a                                   ; $4218: $32
    inc [hl]                                      ; $4219: $34
    inc [hl]                                      ; $421a: $34
    adc b                                         ; $421b: $88
    pop bc                                        ; $421c: $c1
    cp $e0                                        ; $421d: $fe $e0
    ld b, b                                       ; $421f: $40
    ld h, b                                       ; $4220: $60
    ld [hl], b                                    ; $4221: $70
    ld [hl], e                                    ; $4222: $73
    ld [hl], c                                    ; $4223: $71
    ld b, $73                                     ; $4224: $06 $73
    and h                                         ; $4226: $a4
    db $d3                                        ; $4227: $d3
    di                                            ; $4228: $f3
    add l                                         ; $4229: $85
    ld b, $03                                     ; $422a: $06 $03
    inc bc                                        ; $422c: $03
    ld bc, $f901                                  ; $422d: $01 $01 $f9
    pop af                                        ; $4230: $f1
    ei                                            ; $4231: $fb
    ei                                            ; $4232: $fb
    rrca                                          ; $4233: $0f
    dec bc                                        ; $4234: $0b

jr_002_4235:
    rrca                                          ; $4235: $0f
    ld c, $02                                     ; $4236: $0e $02
    ld b, $ff                                     ; $4238: $06 $ff
    nop                                           ; $423a: $00
    rst RST_38                                    ; $423b: $ff
    rst RST_38                                    ; $423c: $ff
    ld a, a                                       ; $423d: $7f
    add b                                         ; $423e: $80
    rst RST_38                                    ; $423f: $ff
    rst RST_38                                    ; $4240: $ff
    cp $92                                        ; $4241: $fe $92
    cp $22                                        ; $4243: $fe $22
    ld e, $22                                     ; $4245: $1e $22
    ld e, $22                                     ; $4247: $1e $22
    pop hl                                        ; $4249: $e1
    ld hl, $8380                                  ; $424a: $21 $80 $83
    rrca                                          ; $424d: $0f
    rst RST_20                                    ; $424e: $e7
    add h                                         ; $424f: $84
    add h                                         ; $4250: $84
    inc e                                         ; $4251: $1c
    db $10                                        ; $4252: $10
    ld [hl], b                                    ; $4253: $70
    ld b, b                                       ; $4254: $40
    ld [bc], a                                    ; $4255: $02
    ld [bc], a                                    ; $4256: $02
    ld [bc], a                                    ; $4257: $02
    ld [bc], a                                    ; $4258: $02
    ld [bc], a                                    ; $4259: $02
    ld [bc], a                                    ; $425a: $02
    ld [bc], a                                    ; $425b: $02
    ld [bc], a                                    ; $425c: $02
    sub b                                         ; $425d: $90
    ld b, e                                       ; $425e: $43
    ld b, h                                       ; $425f: $44
    ld b, e                                       ; $4260: $43
    ld b, [hl]                                    ; $4261: $46
    ld b, e                                       ; $4262: $43
    ld l, c                                       ; $4263: $69
    ld b, e                                       ; $4264: $43
    ld d, h                                       ; $4265: $54
    ld b, e                                       ; $4266: $43
    ld b, h                                       ; $4267: $44
    ld b, e                                       ; $4268: $43
    ld b, h                                       ; $4269: $44
    ld b, e                                       ; $426a: $43
    ld b, d                                       ; $426b: $42
    ld b, e                                       ; $426c: $43
    ld b, d                                       ; $426d: $42
    add b                                         ; $426e: $80
    add e                                         ; $426f: $83
    add hl, bc                                    ; $4270: $09
    sbc c                                         ; $4271: $99
    sbc d                                         ; $4272: $9a
    sbc d                                         ; $4273: $9a
    sbc c                                         ; $4274: $99
    sbc c                                         ; $4275: $99
    sbc b                                         ; $4276: $98
    sbc b                                         ; $4277: $98
    adc b                                         ; $4278: $88
    jr c, jr_002_4205                             ; $4279: $38 $8a

    jr nz, jr_002_42ad                            ; $427b: $20 $30

    ld h, b                                       ; $427d: $60
    ld h, b                                       ; $427e: $60
    ldh [$ffe0], a                                ; $427f: $e0 $e0
    call c, Call_000_27d8                         ; $4281: $dc $d8 $27
    dec h                                         ; $4284: $25
    add b                                         ; $4285: $80
    add e                                         ; $4286: $83
    dec b                                         ; $4287: $05
    ld b, a                                       ; $4288: $47
    daa                                           ; $4289: $27
    ld c, [hl]                                    ; $428a: $4e
    ld c, [hl]                                    ; $428b: $4e
    adc [hl]                                      ; $428c: $8e
    add c                                         ; $428d: $81
    sbc l                                         ; $428e: $9d
    inc bc                                        ; $428f: $03
    sbc c                                         ; $4290: $99
    add b                                         ; $4291: $80
    add e                                         ; $4292: $83
    dec c                                         ; $4293: $0d
    ld a, [bc]                                    ; $4294: $0a
    inc b                                         ; $4295: $04
    jr nz, jr_002_4301                            ; $4296: $20 $69

    ld h, h                                       ; $4298: $64
    inc [hl]                                      ; $4299: $34
    inc [hl]                                      ; $429a: $34
    inc [hl]                                      ; $429b: $34
    ld a, [de]                                    ; $429c: $1a
    ld a, [de]                                    ; $429d: $1a
    sbc d                                         ; $429e: $9a
    adc c                                         ; $429f: $89
    ret                                           ; $42a0: $c9


    add d                                         ; $42a1: $82
    set 1, c                                      ; $42a2: $cb $c9
    inc b                                         ; $42a4: $04
    db $d3                                        ; $42a5: $d3
    adc d                                         ; $42a6: $8a
    ld [hl], a                                    ; $42a7: $77
    ld [hl], d                                    ; $42a8: $72
    halt                                          ; $42a9: $76
    halt                                          ; $42aa: $76
    ld h, [hl]                                    ; $42ab: $66
    ld h, [hl]                                    ; $42ac: $66

jr_002_42ad:
    sbc b                                         ; $42ad: $98
    sbc b                                         ; $42ae: $98
    sbc a                                         ; $42af: $9f
    adc a                                         ; $42b0: $8f
    inc b                                         ; $42b1: $04
    add b                                         ; $42b2: $80
    add d                                         ; $42b3: $82
    sbc a                                         ; $42b4: $9f
    adc a                                         ; $42b5: $8f
    add b                                         ; $42b6: $80
    add e                                         ; $42b7: $83
    dec bc                                        ; $42b8: $0b
    sbc a                                         ; $42b9: $9f
    sbc b                                         ; $42ba: $98
    sbc b                                         ; $42bb: $98
    call nz, Call_002_6464                        ; $42bc: $c4 $64 $64
    ld h, h                                       ; $42bf: $64
    ld h, h                                       ; $42c0: $64
    db $e4                                        ; $42c1: $e4
    db $e4                                        ; $42c2: $e4
    ld h, h                                       ; $42c3: $64
    sub b                                         ; $42c4: $90
    ld h, $32                                     ; $42c5: $26 $32
    ld [hl-], a                                   ; $42c7: $32
    ld [de], a                                    ; $42c8: $12
    ld [de], a                                    ; $42c9: $12
    ld a, [de]                                    ; $42ca: $1a
    adc d                                         ; $42cb: $8a
    adc [hl]                                      ; $42cc: $8e
    adc $c6                                       ; $42cd: $ce $c6
    and $c6                                       ; $42cf: $e6 $c6
    ldh [c], a                                    ; $42d1: $e2
    ldh [c], a                                    ; $42d2: $e2
    ldh a, [$ffd0]                                ; $42d3: $f0 $d0
    ld c, $73                                     ; $42d5: $0e $73
    add b                                         ; $42d7: $80
    add e                                         ; $42d8: $83
    ld [$0971], sp                                ; $42d9: $08 $71 $09
    add hl, bc                                    ; $42dc: $09
    add hl, bc                                    ; $42dd: $09
    add hl, bc                                    ; $42de: $09
    add hl, bc                                    ; $42df: $09
    add hl, bc                                    ; $42e0: $09
    add hl, bc                                    ; $42e1: $09

jr_002_42e2:
    add d                                         ; $42e2: $82
    add hl, de                                    ; $42e3: $19
    ld de, $cd10                                  ; $42e4: $11 $10 $cd
    sbc d                                         ; $42e7: $9a
    jr c, @+$3a                                   ; $42e8: $38 $38

    ld sp, $2331                                  ; $42ea: $31 $31 $23
    inc hl                                        ; $42ed: $23
    ld bc, $0c00                                  ; $42ee: $01 $00 $0c
    inc c                                         ; $42f1: $0c
    inc e                                         ; $42f2: $1c
    inc e                                         ; $42f3: $1c
    inc [hl]                                      ; $42f4: $34
    inc a                                         ; $42f5: $3c
    inc [hl]                                      ; $42f6: $34
    inc [hl]                                      ; $42f7: $34
    di                                            ; $42f8: $f3
    db $d3                                        ; $42f9: $d3
    db $d3                                        ; $42fa: $d3
    pop de                                        ; $42fb: $d1
    ret nc                                        ; $42fc: $d0

    sub b                                         ; $42fd: $90
    sub b                                         ; $42fe: $90
    ret nc                                        ; $42ff: $d0

    db $d3                                        ; $4300: $d3

jr_002_4301:
    pop de                                        ; $4301: $d1
    ld b, $d3                                     ; $4302: $06 $d3
    and b                                         ; $4304: $a0
    ld a, [de]                                    ; $4305: $1a
    ld a, [de]                                    ; $4306: $1a
    xor $ea                                       ; $4307: $ee $ea
    ld c, $0f                                     ; $4309: $0e $0f
    ld c, $0e                                     ; $430b: $0e $0e
    xor $ee                                       ; $430d: $ee $ee
    cp $ff                                        ; $430f: $fe $ff
    ld e, $1e                                     ; $4311: $1e $1e
    ld c, $0e                                     ; $4313: $0e $0e
    ld e, $52                                     ; $4315: $1e $52
    ld e, $8a                                     ; $4317: $1e $8a
    ld e, $06                                     ; $4319: $1e $06
    ld e, $02                                     ; $431b: $1e $02
    ld e, $02                                     ; $431d: $1e $02
    ld e, $02                                     ; $431f: $1e $02
    ld e, $86                                     ; $4321: $1e $86
    ld e, $6a                                     ; $4323: $1e $6a
    db $10                                        ; $4325: $10
    ld b, b                                       ; $4326: $40
    add b                                         ; $4327: $80
    add e                                         ; $4328: $83
    rlca                                          ; $4329: $07
    ld [bc], a                                    ; $432a: $02
    ld c, $08                                     ; $432b: $0e $08
    jr c, jr_002_4350                             ; $432d: $38 $21

    ld hl, $84e7                                  ; $432f: $21 $e7 $84
    add a                                         ; $4332: $87
    add h                                         ; $4333: $84
    ld b, e                                       ; $4334: $43
    ld b, d                                       ; $4335: $42
    inc bc                                        ; $4336: $03
    ld b, e                                       ; $4337: $43
    add e                                         ; $4338: $83
    ld h, h                                       ; $4339: $64
    ld b, e                                       ; $433a: $43
    ld d, l                                       ; $433b: $55
    inc bc                                        ; $433c: $03
    rst RST_38                                    ; $433d: $ff
    add c                                         ; $433e: $81
    nop                                           ; $433f: $00
    inc bc                                        ; $4340: $03
    rst RST_38                                    ; $4341: $ff
    sub c                                         ; $4342: $91
    nop                                           ; $4343: $00
    ret z                                         ; $4344: $c8

    ld c, h                                       ; $4345: $4c
    call z, $c64c                                 ; $4346: $cc $4c $c6
    call nz, $26e7                                ; $4349: $c4 $e7 $26
    db $e3                                        ; $434c: $e3
    db $e3                                        ; $434d: $e3
    ldh a, [rNR10]                                ; $434e: $f0 $10

jr_002_4350:
    ei                                            ; $4350: $fb
    db $fc                                        ; $4351: $fc
    rst RST_38                                    ; $4352: $ff
    rlca                                          ; $4353: $07
    add b                                         ; $4354: $80
    add e                                         ; $4355: $83
    ld b, $27                                     ; $4356: $06 $27
    ld c, [hl]                                    ; $4358: $4e
    ld c, [hl]                                    ; $4359: $4e
    adc [hl]                                      ; $435a: $8e
    inc e                                         ; $435b: $1c
    jr c, jr_002_42e2                             ; $435c: $38 $84

    ld a, a                                       ; $435e: $7f
    rst RST_38                                    ; $435f: $ff
    rst RST_38                                    ; $4360: $ff
    jp $8380                                      ; $4361: $c3 $80 $83


    dec b                                         ; $4364: $05
    ld sp, $672b                                  ; $4365: $31 $2b $67
    ld h, d                                       ; $4368: $62
    ld a, a                                       ; $4369: $7f
    add d                                         ; $436a: $82
    ccf                                           ; $436b: $3f
    jr nc, @+$05                                  ; $436c: $30 $03

    rst RST_38                                    ; $436e: $ff
    add c                                         ; $436f: $81
    ldh a, [$ff80]                                ; $4370: $f0 $80
    add e                                         ; $4372: $83
    ld b, $99                                     ; $4373: $06 $99
    adc l                                         ; $4375: $8d
    ld c, l                                       ; $4376: $4d
    ld c, h                                       ; $4377: $4c
    rst RST_00                                    ; $4378: $c7
    add e                                         ; $4379: $83
    inc bc                                        ; $437a: $03
    rst RST_38                                    ; $437b: $ff
    add h                                         ; $437c: $84
    rra                                           ; $437d: $1f
    ld l, $24                                     ; $437e: $2e $24
    inc l                                         ; $4380: $2c
    inc bc                                        ; $4381: $03
    inc c                                         ; $4382: $0c
    add [hl]                                      ; $4383: $86
    sbc h                                         ; $4384: $9c
    adc b                                         ; $4385: $88
    sbc a                                         ; $4386: $9f
    sbc a                                         ; $4387: $9f
    rst RST_38                                    ; $4388: $ff
    ld a, c                                       ; $4389: $79
    inc bc                                        ; $438a: $03
    rst RST_38                                    ; $438b: $ff
    add c                                         ; $438c: $81
    jr nc, jr_002_4395                            ; $438d: $30 $06

    sbc b                                         ; $438f: $98
    add [hl]                                      ; $4390: $86
    sbc a                                         ; $4391: $9f
    adc a                                         ; $4392: $8f
    add b                                         ; $4393: $80
    add b                                         ; $4394: $80

jr_002_4395:
    nop                                           ; $4395: $00
    nop                                           ; $4396: $00
    inc bc                                        ; $4397: $03
    rst RST_38                                    ; $4398: $ff
    sbc c                                         ; $4399: $99
    ccf                                           ; $439a: $3f
    ld [hl], h                                    ; $439b: $74
    ld d, h                                       ; $439c: $54
    ld e, h                                       ; $439d: $5c
    ld d, h                                       ; $439e: $54
    ld c, h                                       ; $439f: $4c
    ld c, h                                       ; $43a0: $4c
    call z, $0c8c                                 ; $43a1: $cc $8c $0c
    inc e                                         ; $43a4: $1c
    inc e                                         ; $43a5: $1c
    ld [$8080], sp                                ; $43a6: $08 $80 $80
    pop bc                                        ; $43a9: $c1
    pop bc                                        ; $43aa: $c1
    ret c                                         ; $43ab: $d8

    ret nc                                        ; $43ac: $d0

    call z, $c4c8                                 ; $43ad: $cc $c8 $c4
    call nz, $c2c2                                ; $43b0: $c4 $c2 $c2
    inc bc                                        ; $43b3: $03
    rst RST_38                                    ; $43b4: $ff
    add c                                         ; $43b5: $81
    ret nz                                        ; $43b6: $c0

    inc bc                                        ; $43b7: $03
    rst RST_38                                    ; $43b8: $ff
    add c                                         ; $43b9: $81
    ret nz                                        ; $43ba: $c0

    inc b                                         ; $43bb: $04
    ld l, c                                       ; $43bc: $69
    sbc a                                         ; $43bd: $9f
    ld l, b                                       ; $43be: $68
    ld l, b                                       ; $43bf: $68
    inc h                                         ; $43c0: $24
    ld h, h                                       ; $43c1: $64
    ld a, h                                       ; $43c2: $7c
    inc a                                         ; $43c3: $3c
    cp [hl]                                       ; $43c4: $be
    and d                                         ; $43c5: $a2
    rst RST_38                                    ; $43c6: $ff
    rst RST_38                                    ; $43c7: $ff
    cp a                                          ; $43c8: $bf
    ld h, b                                       ; $43c9: $60
    sub e                                         ; $43ca: $93
    inc de                                        ; $43cb: $13
    sub e                                         ; $43cc: $93
    sub e                                         ; $43cd: $93
    di                                            ; $43ce: $f3
    db $e3                                        ; $43cf: $e3
    and $47                                       ; $43d0: $e6 $47
    rlca                                          ; $43d2: $07
    rlca                                          ; $43d3: $07
    dec c                                         ; $43d4: $0d
    ld c, $ff                                     ; $43d5: $0e $ff
    rst RST_38                                    ; $43d7: $ff
    rst RST_30                                    ; $43d8: $f7
    ld hl, sp+$4d                                 ; $43d9: $f8 $4d
    call Call_000_05cd                            ; $43db: $cd $cd $05
    ld c, l                                       ; $43de: $4d
    add h                                         ; $43df: $84
    rst RST_08                                    ; $43e0: $cf
    rst RST_08                                    ; $43e1: $cf
    add b                                         ; $43e2: $80
    add b                                         ; $43e3: $80
    inc bc                                        ; $43e4: $03
    rst RST_38                                    ; $43e5: $ff
    add c                                         ; $43e6: $81
    rra                                           ; $43e7: $1f
    inc b                                         ; $43e8: $04
    inc [hl]                                      ; $43e9: $34
    inc b                                         ; $43ea: $04
    ld [hl-], a                                   ; $43eb: $32
    add h                                         ; $43ec: $84
    ld a, $3e                                     ; $43ed: $3e $3e
    rra                                           ; $43ef: $1f
    add hl, de                                    ; $43f0: $19
    inc bc                                        ; $43f1: $03
    rst RST_38                                    ; $43f2: $ff
    add e                                         ; $43f3: $83
    ld sp, hl                                     ; $43f4: $f9
    di                                            ; $43f5: $f3
    db $d3                                        ; $43f6: $d3
    dec b                                         ; $43f7: $05
    ld [hl], e                                    ; $43f8: $73
    adc d                                         ; $43f9: $8a
    ld [hl], c                                    ; $43fa: $71
    jr nc, jr_002_441d                            ; $43fb: $30 $20

    nop                                           ; $43fd: $00
    nop                                           ; $43fe: $00
    rlca                                          ; $43ff: $07
    rlca                                          ; $4400: $07
    add a                                         ; $4401: $87
    rlca                                          ; $4402: $07
    ld c, $03                                     ; $4403: $0e $03
    ld a, [bc]                                    ; $4405: $0a
    adc b                                         ; $4406: $88
    dec bc                                        ; $4407: $0b
    add hl, bc                                    ; $4408: $09
    ld sp, hl                                     ; $4409: $f9
    pop af                                        ; $440a: $f1
    ld bc, $0301                                  ; $440b: $01 $01 $03
    inc bc                                        ; $440e: $03
    inc bc                                        ; $440f: $03
    rst RST_38                                    ; $4410: $ff
    adc c                                         ; $4411: $89
    cp $1e                                        ; $4412: $fe $1e
    ld d, d                                       ; $4414: $52
    ld e, $92                                     ; $4415: $1e $92
    ld e, $0a                                     ; $4417: $1e $0a
    ld e, $0a                                     ; $4419: $1e $0a
    inc bc                                        ; $441b: $03
    rst RST_38                                    ; $441c: $ff

jr_002_441d:
    add c                                         ; $441d: $81
    nop                                           ; $441e: $00
    inc bc                                        ; $441f: $03
    rst RST_38                                    ; $4420: $ff
    add c                                         ; $4421: $81
    nop                                           ; $4422: $00
    add b                                         ; $4423: $80
    add e                                         ; $4424: $83
    rlca                                          ; $4425: $07
    ld b, b                                       ; $4426: $40
    ld [hl], b                                    ; $4427: $70
    db $10                                        ; $4428: $10
    inc e                                         ; $4429: $1c
    add h                                         ; $442a: $84
    add h                                         ; $442b: $84
    rst RST_20                                    ; $442c: $e7
    add d                                         ; $442d: $82
    pop hl                                        ; $442e: $e1
    ld hl, $9f03                                  ; $442f: $21 $03 $9f
    add e                                         ; $4432: $83
    sub b                                         ; $4433: $90
    sbc a                                         ; $4434: $9f
    sbc a                                         ; $4435: $9f
    inc b                                         ; $4436: $04
    add b                                         ; $4437: $80
    add d                                         ; $4438: $82
    rst RST_38                                    ; $4439: $ff
    rst RST_38                                    ; $443a: $ff
    inc b                                         ; $443b: $04
    nop                                           ; $443c: $00
    inc bc                                        ; $443d: $03
    rst RST_38                                    ; $443e: $ff
    add e                                         ; $443f: $83
    nop                                           ; $4440: $00
    rst RST_38                                    ; $4441: $ff
    rst RST_38                                    ; $4442: $ff
    inc b                                         ; $4443: $04
    nop                                           ; $4444: $00
    add d                                         ; $4445: $82
    rst RST_38                                    ; $4446: $ff
    rst RST_38                                    ; $4447: $ff
    inc b                                         ; $4448: $04
    nop                                           ; $4449: $00
    inc bc                                        ; $444a: $03
    rst RST_38                                    ; $444b: $ff
    add l                                         ; $444c: $85
    nop                                           ; $444d: $00
    rst RST_38                                    ; $444e: $ff
    rst RST_38                                    ; $444f: $ff
    inc bc                                        ; $4450: $03
    ld [bc], a                                    ; $4451: $02
    add b                                         ; $4452: $80
    add e                                         ; $4453: $83
    inc b                                         ; $4454: $04
    inc bc                                        ; $4455: $03
    ldh [rNR41], a                                ; $4456: $e0 $20
    ccf                                           ; $4458: $3f
    inc bc                                        ; $4459: $03
    rst RST_38                                    ; $445a: $ff
    add c                                         ; $445b: $81
    nop                                           ; $445c: $00
    inc bc                                        ; $445d: $03
    rst RST_38                                    ; $445e: $ff
    add e                                         ; $445f: $83
    nop                                           ; $4460: $00
    rst RST_38                                    ; $4461: $ff
    rst RST_38                                    ; $4462: $ff
    inc b                                         ; $4463: $04
    nop                                           ; $4464: $00
    dec b                                         ; $4465: $05
    rst RST_38                                    ; $4466: $ff
    add c                                         ; $4467: $81
    rra                                           ; $4468: $1f
    inc bc                                        ; $4469: $03
    rst RST_38                                    ; $446a: $ff
    add e                                         ; $446b: $83
    nop                                           ; $446c: $00
    rst RST_38                                    ; $446d: $ff
    rst RST_38                                    ; $446e: $ff
    inc b                                         ; $446f: $04
    nop                                           ; $4470: $00
    adc d                                         ; $4471: $8a
    rst RST_38                                    ; $4472: $ff
    rst RST_38                                    ; $4473: $ff
    adc a                                         ; $4474: $8f
    adc a                                         ; $4475: $8f
    rst RST_38                                    ; $4476: $ff
    ld a, h                                       ; $4477: $7c
    rst RST_38                                    ; $4478: $ff
    rst RST_38                                    ; $4479: $ff
    ret nz                                        ; $447a: $c0

    ld b, b                                       ; $447b: $40
    add b                                         ; $447c: $80
    add e                                         ; $447d: $83
    dec b                                         ; $447e: $05
    ret nz                                        ; $447f: $c0

    rlca                                          ; $4480: $07
    inc b                                         ; $4481: $04
    db $fc                                        ; $4482: $fc
    ld sp, hl                                     ; $4483: $f9
    add h                                         ; $4484: $84
    ld sp, hl                                     ; $4485: $f9
    add hl, bc                                    ; $4486: $09
    ld sp, hl                                     ; $4487: $f9
    ld sp, hl                                     ; $4488: $f9
    inc b                                         ; $4489: $04
    ld bc, $ff82                                  ; $448a: $01 $82 $ff
    rst RST_38                                    ; $448d: $ff
    inc b                                         ; $448e: $04
    nop                                           ; $448f: $00
    nop                                           ; $4490: $00
    ld bc, $48f5                                  ; $4491: $01 $f5 $48
    add b                                         ; $4494: $80
    nop                                           ; $4495: $00
    ld bc, $4906                                  ; $4496: $01 $06 $49
    add [hl]                                      ; $4499: $86
    nop                                           ; $449a: $00
    ld bc, $48ac                                  ; $449b: $01 $ac $48
    add b                                         ; $449e: $80
    ld bc, $a601                                  ; $449f: $01 $01 $a6
    ld b, h                                       ; $44a2: $44
    nop                                           ; $44a3: $00
    ld bc, $0400                                  ; $44a4: $01 $00 $04
    nop                                           ; $44a7: $00
    inc b                                         ; $44a8: $04
    ld a, a                                       ; $44a9: $7f
    add b                                         ; $44aa: $80
    add e                                         ; $44ab: $83
    ld b, $03                                     ; $44ac: $06 $03
    dec de                                        ; $44ae: $1b
    dec de                                        ; $44af: $1b
    rra                                           ; $44b0: $1f
    ld e, $18                                     ; $44b1: $1e $18
    adc b                                         ; $44b3: $88
    jr c, @+$1a                                   ; $44b4: $38 $18

    jr nc, jr_002_44e8                            ; $44b6: $30 $30

    ld [hl], b                                    ; $44b8: $70
    ld [hl], b                                    ; $44b9: $70
    ld h, b                                       ; $44ba: $60
    ld h, b                                       ; $44bb: $60
    ld [$0400], sp                                ; $44bc: $08 $00 $04
    inc bc                                        ; $44bf: $03
    add [hl]                                      ; $44c0: $86
    rlca                                          ; $44c1: $07
    ld b, $0c                                     ; $44c2: $06 $0c
    ld c, $1c                                     ; $44c4: $0e $1c
    inc e                                         ; $44c6: $1c
    inc bc                                        ; $44c7: $03
    ld a, h                                       ; $44c8: $7c
    add c                                         ; $44c9: $81
    ld l, h                                       ; $44ca: $6c
    ld a, [bc]                                    ; $44cb: $0a
    inc c                                         ; $44cc: $0c
    ld [$8400], sp                                ; $44cd: $08 $00 $84
    inc e                                         ; $44d0: $1c
    ld [$081c], sp                                ; $44d1: $08 $1c $08
    inc b                                         ; $44d4: $04
    ld a, a                                       ; $44d5: $7f
    inc b                                         ; $44d6: $04
    ld h, e                                       ; $44d7: $63
    adc h                                         ; $44d8: $8c
    inc bc                                        ; $44d9: $03
    inc bc                                        ; $44da: $03
    ld b, $03                                     ; $44db: $06 $03
    ld b, $06                                     ; $44dd: $06 $06
    ld c, $0c                                     ; $44df: $0e $0c
    inc a                                         ; $44e1: $3c
    inc a                                         ; $44e2: $3c
    jr c, jr_002_4515                             ; $44e3: $38 $30

    ld [$8400], sp                                ; $44e5: $08 $00 $84

jr_002_44e8:
    ld a, [hl]                                    ; $44e8: $7e
    inc a                                         ; $44e9: $3c
    ld a, [hl]                                    ; $44ea: $7e
    inc a                                         ; $44eb: $3c
    db $10                                        ; $44ec: $10
    jr jr_002_44f3                                ; $44ed: $18 $04

    ld a, [hl]                                    ; $44ef: $7e
    ld [$0400], sp                                ; $44f0: $08 $00 $04

jr_002_44f3:
    ld b, $04                                     ; $44f3: $06 $04
    ld a, a                                       ; $44f5: $7f
    adc h                                         ; $44f6: $8c
    ld c, $0e                                     ; $44f7: $0e $0e
    ld e, $0e                                     ; $44f9: $1e $0e
    ld e, $1e                                     ; $44fb: $1e $1e
    ld a, $1e                                     ; $44fd: $3e $1e
    ld [hl], $36                                  ; $44ff: $36 $36
    halt                                          ; $4501: $76
    ld [hl], $04                                  ; $4502: $36 $04
    ld h, [hl]                                    ; $4504: $66
    ld [$0400], sp                                ; $4505: $08 $00 $04
    jr jr_002_450e                                ; $4508: $18 $04

    ld a, a                                       ; $450a: $7f
    ld b, $1b                                     ; $450b: $06 $1b
    add e                                         ; $450d: $83

jr_002_450e:
    inc sp                                        ; $450e: $33
    dec de                                        ; $450f: $1b
    dec de                                        ; $4510: $1b
    inc bc                                        ; $4511: $03
    inc sp                                        ; $4512: $33
    add h                                         ; $4513: $84
    ld [hl], a                                    ; $4514: $77

jr_002_4515:
    scf                                           ; $4515: $37
    halt                                          ; $4516: $76
    ld h, [hl]                                    ; $4517: $66
    ld [$0400], sp                                ; $4518: $08 $00 $04
    jr @+$06                                      ; $451b: $18 $04

    ld a, a                                       ; $451d: $7f
    add h                                         ; $451e: $84
    inc e                                         ; $451f: $1c
    ld [$081c], sp                                ; $4520: $08 $1c $08
    inc b                                         ; $4523: $04
    ld a, a                                       ; $4524: $7f
    ld [$080c], sp                                ; $4525: $08 $0c $08
    nop                                           ; $4528: $00
    inc b                                         ; $4529: $04
    ccf                                           ; $452a: $3f
    add l                                         ; $452b: $85
    inc sp                                        ; $452c: $33
    inc sp                                        ; $452d: $33
    ld [hl], e                                    ; $452e: $73
    inc sp                                        ; $452f: $33
    ld [hl], e                                    ; $4530: $73
    inc bc                                        ; $4531: $03
    ld h, e                                       ; $4532: $63
    add e                                         ; $4533: $83
    inc bc                                        ; $4534: $03
    inc bc                                        ; $4535: $03
    rlca                                          ; $4536: $07
    inc bc                                        ; $4537: $03
    ld b, $86                                     ; $4538: $06 $86
    ld c, $0c                                     ; $453a: $0e $0c
    inc a                                         ; $453c: $3c
    inc a                                         ; $453d: $3c
    jr c, jr_002_4570                             ; $453e: $38 $30

    ld [$0400], sp                                ; $4540: $08 $00 $04
    jr nc, @+$06                                  ; $4543: $30 $04

    ccf                                           ; $4545: $3f
    add e                                         ; $4546: $83
    halt                                          ; $4547: $76
    ld [hl], $76                                  ; $4548: $36 $76
    inc bc                                        ; $454a: $03
    ld h, [hl]                                    ; $454b: $66
    adc d                                         ; $454c: $8a
    ld b, $06                                     ; $454d: $06 $06
    ld c, $06                                     ; $454f: $0e $06
    inc c                                         ; $4551: $0c
    inc c                                         ; $4552: $0c
    inc e                                         ; $4553: $1c
    inc e                                         ; $4554: $1c
    jr @+$1a                                      ; $4555: $18 $18

    ld a, [bc]                                    ; $4557: $0a
    nop                                           ; $4558: $00
    inc b                                         ; $4559: $04
    ld a, [hl]                                    ; $455a: $7e
    ld c, $06                                     ; $455b: $0e $06
    inc b                                         ; $455d: $04
    ld a, [hl]                                    ; $455e: $7e
    ld [$0400], sp                                ; $455f: $08 $00 $04
    ld [hl], $04                                  ; $4562: $36 $04
    ld a, a                                       ; $4564: $7f
    ld b, $36                                     ; $4565: $06 $36
    add b                                         ; $4567: $80
    add e                                         ; $4568: $83
    dec b                                         ; $4569: $05
    ld b, $0e                                     ; $456a: $06 $0e
    inc c                                         ; $456c: $0c
    inc e                                         ; $456d: $1c
    jr jr_002_4578                                ; $456e: $18 $08

jr_002_4570:
    nop                                           ; $4570: $00
    inc b                                         ; $4571: $04
    ld [hl], e                                    ; $4572: $73
    add b                                         ; $4573: $80
    add e                                         ; $4574: $83
    inc b                                         ; $4575: $04
    inc bc                                        ; $4576: $03
    ld [hl], e                                    ; $4577: $73

jr_002_4578:
    ld [hl], e                                    ; $4578: $73
    inc bc                                        ; $4579: $03
    add c                                         ; $457a: $81
    rlca                                          ; $457b: $07
    inc bc                                        ; $457c: $03
    ld b, $88                                     ; $457d: $06 $88
    ld c, $0c                                     ; $457f: $0e $0c
    inc e                                         ; $4581: $1c
    inc e                                         ; $4582: $1c
    ld a, b                                       ; $4583: $78
    ld a, b                                       ; $4584: $78
    ld [hl], b                                    ; $4585: $70
    ld h, b                                       ; $4586: $60
    ld [$0400], sp                                ; $4587: $08 $00 $04
    ld a, a                                       ; $458a: $7f
    add c                                         ; $458b: $81
    rlca                                          ; $458c: $07
    inc bc                                        ; $458d: $03
    ld b, $81                                     ; $458e: $06 $81
    ld c, $03                                     ; $4590: $0e $03
    inc c                                         ; $4592: $0c
    inc b                                         ; $4593: $04
    inc e                                         ; $4594: $1c
    inc b                                         ; $4595: $04
    ld [hl], $81                                  ; $4596: $36 $81
    ld [hl], e                                    ; $4598: $73
    inc bc                                        ; $4599: $03
    ld h, e                                       ; $459a: $63
    ld [$0400], sp                                ; $459b: $08 $00 $04
    jr nc, @+$06                                  ; $459e: $30 $04

    ld a, a                                       ; $45a0: $7f
    add b                                         ; $45a1: $80
    add e                                         ; $45a2: $83
    ld [$3633], sp                                ; $45a3: $08 $33 $36
    ld [hl], $30                                  ; $45a6: $36 $30
    jr nc, jr_002_45dd                            ; $45a8: $30 $33

    ccf                                           ; $45aa: $3f
    ld e, $08                                     ; $45ab: $1e $08
    nop                                           ; $45ad: $00
    ld [$8163], sp                                ; $45ae: $08 $63 $81
    ld [hl], e                                    ; $45b1: $73
    inc bc                                        ; $45b2: $03
    inc sp                                        ; $45b3: $33
    add c                                         ; $45b4: $81
    rlca                                          ; $45b5: $07
    dec b                                         ; $45b6: $05
    ld b, $86                                     ; $45b7: $06 $86
    ld c, $0c                                     ; $45b9: $0e $0c
    inc e                                         ; $45bb: $1c
    inc e                                         ; $45bc: $1c
    jr @+$1a                                      ; $45bd: $18 $18

    ld [$0400], sp                                ; $45bf: $08 $00 $04
    ccf                                           ; $45c2: $3f
    inc b                                         ; $45c3: $04
    inc sp                                        ; $45c4: $33
    add a                                         ; $45c5: $87
    ld a, e                                       ; $45c6: $7b
    ld a, e                                       ; $45c7: $7b
    ld a, a                                       ; $45c8: $7f
    ld a, a                                       ; $45c9: $7f
    rrca                                          ; $45ca: $0f
    rrca                                          ; $45cb: $0f
    rlca                                          ; $45cc: $07
    inc bc                                        ; $45cd: $03
    ld b, $86                                     ; $45ce: $06 $86
    ld c, $0c                                     ; $45d0: $0e $0c
    inc a                                         ; $45d2: $3c
    inc a                                         ; $45d3: $3c
    jr c, jr_002_4606                             ; $45d4: $38 $30

    ld [$8200], sp                                ; $45d6: $08 $00 $82
    ld c, $06                                     ; $45d9: $0e $06
    add b                                         ; $45db: $80
    add e                                         ; $45dc: $83

jr_002_45dd:
    ld [$3c3e], sp                                ; $45dd: $08 $3e $3c
    inc c                                         ; $45e0: $0c
    ld a, a                                       ; $45e1: $7f
    ld a, a                                       ; $45e2: $7f
    inc c                                         ; $45e3: $0c
    inc c                                         ; $45e4: $0c
    inc c                                         ; $45e5: $0c
    add [hl]                                      ; $45e6: $86
    inc e                                         ; $45e7: $1c
    jr @+$3a                                      ; $45e8: $18 $38

    jr c, jr_002_45ec                             ; $45ea: $38 $00

jr_002_45ec:
    jr nc, jr_002_45f6                            ; $45ec: $30 $08

    nop                                           ; $45ee: $00
    ld [$066c], sp                                ; $45ef: $08 $6c $06
    inc bc                                        ; $45f2: $03
    add c                                         ; $45f3: $81
    rlca                                          ; $45f4: $07
    inc bc                                        ; $45f5: $03

jr_002_45f6:
    ld b, $86                                     ; $45f6: $06 $86
    ld e, $0c                                     ; $45f8: $1e $0c
    inc a                                         ; $45fa: $3c
    jr c, @+$3a                                   ; $45fb: $38 $38

    jr nc, jr_002_4607                            ; $45fd: $30 $08

    nop                                           ; $45ff: $00
    inc b                                         ; $4600: $04
    ld a, $82                                     ; $4601: $3e $82
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    inc b                                         ; $4605: $04

jr_002_4606:
    ld a, a                                       ; $4606: $7f

jr_002_4607:
    ld b, $0c                                     ; $4607: $06 $0c
    adc b                                         ; $4609: $88
    inc e                                         ; $460a: $1c
    inc c                                         ; $460b: $0c
    jr jr_002_4626                                ; $460c: $18 $18

    jr c, jr_002_4648                             ; $460e: $38 $38

    jr nc, jr_002_4642                            ; $4610: $30 $30

    ld [$0a00], sp                                ; $4612: $08 $00 $0a
    ld h, b                                       ; $4615: $60
    add b                                         ; $4616: $80
    add e                                         ; $4617: $83
    rlca                                          ; $4618: $07
    ld a, b                                       ; $4619: $78
    ld a, [hl]                                    ; $461a: $7e
    ld h, [hl]                                    ; $461b: $66
    ld h, b                                       ; $461c: $60
    ld h, b                                       ; $461d: $60
    ld h, b                                       ; $461e: $60
    ld h, b                                       ; $461f: $60
    ld [$0600], sp                                ; $4620: $08 $00 $06
    inc c                                         ; $4623: $0c
    inc b                                         ; $4624: $04
    ld a, a                                       ; $4625: $7f

jr_002_4626:
    ld b, $0c                                     ; $4626: $06 $0c
    adc b                                         ; $4628: $88
    inc e                                         ; $4629: $1c
    inc c                                         ; $462a: $0c
    jr jr_002_4645                                ; $462b: $18 $18

    jr c, @+$3a                                   ; $462d: $38 $38

    jr nc, jr_002_4661                            ; $462f: $30 $30

    ld a, [bc]                                    ; $4631: $0a
    nop                                           ; $4632: $00
    inc b                                         ; $4633: $04
    ld a, $0c                                     ; $4634: $3e $0c
    nop                                           ; $4636: $00
    inc b                                         ; $4637: $04
    ld a, a                                       ; $4638: $7f
    ld a, [bc]                                    ; $4639: $0a
    nop                                           ; $463a: $00
    inc b                                         ; $463b: $04
    ld a, a                                       ; $463c: $7f
    inc b                                         ; $463d: $04
    inc bc                                        ; $463e: $03
    add h                                         ; $463f: $84
    ld a, [hl-]                                   ; $4640: $3a
    dec sp                                        ; $4641: $3b

jr_002_4642:
    ccf                                           ; $4642: $3f

jr_002_4643:
    ld a, $04                                     ; $4643: $3e $04

jr_002_4645:
    ld c, $88                                     ; $4645: $0e $88
    rra                                           ; $4647: $1f

jr_002_4648:
    ld e, $3b                                     ; $4648: $1e $3b
    dec sp                                        ; $464a: $3b
    ld [hl], e                                    ; $464b: $73
    ld [hl], e                                    ; $464c: $73
    ld h, e                                       ; $464d: $63
    ld h, e                                       ; $464e: $63
    ld [$8400], sp                                ; $464f: $08 $00 $84
    inc e                                         ; $4652: $1c
    ld [$081c], sp                                ; $4653: $08 $1c $08
    inc b                                         ; $4656: $04
    ld a, a                                       ; $4657: $7f
    sub b                                         ; $4658: $90
    inc bc                                        ; $4659: $03
    inc bc                                        ; $465a: $03
    rlca                                          ; $465b: $07
    ld b, $0e                                     ; $465c: $06 $0e
    ld c, $1e                                     ; $465e: $0e $1e
    rra                                           ; $4660: $1f

jr_002_4661:
    ld a, e                                       ; $4661: $7b
    ld a, a                                       ; $4662: $7f
    ld l, c                                       ; $4663: $69
    ld l, h                                       ; $4664: $6c
    ld [$080c], sp                                ; $4665: $08 $0c $08
    inc c                                         ; $4668: $0c
    ld [$0800], sp                                ; $4669: $08 $00 $08
    ld b, $81                                     ; $466c: $06 $81
    ld c, $05                                     ; $466e: $0e $05
    inc c                                         ; $4670: $0c
    add c                                         ; $4671: $81
    inc e                                         ; $4672: $1c
    inc bc                                        ; $4673: $03
    jr @-$78                                      ; $4674: $18 $86

    jr c, jr_002_46a8                             ; $4676: $38 $30

    ld [hl], b                                    ; $4678: $70
    ld [hl], b                                    ; $4679: $70
    ld h, b                                       ; $467a: $60
    ld h, b                                       ; $467b: $60
    ld [$8600], sp                                ; $467c: $08 $00 $86
    ld b, $04                                     ; $467f: $06 $04
    ld [hl], $36                                  ; $4681: $36 $36
    scf                                           ; $4683: $37
    ld [hl-], a                                   ; $4684: $32
    ld a, [bc]                                    ; $4685: $0a
    inc sp                                        ; $4686: $33
    add d                                         ; $4687: $82
    ld [hl], e                                    ; $4688: $73
    inc hl                                        ; $4689: $23
    inc b                                         ; $468a: $04
    ld h, e                                       ; $468b: $63
    add d                                         ; $468c: $82
    inc bc                                        ; $468d: $03
    inc bc                                        ; $468e: $03
    ld [$0600], sp                                ; $468f: $08 $00 $06
    ld h, b                                       ; $4692: $60
    add b                                         ; $4693: $80
    add e                                         ; $4694: $83
    ld [$7e66], sp                                ; $4695: $08 $66 $7e
    ld a, b                                       ; $4698: $78
    ld h, b                                       ; $4699: $60
    ld h, b                                       ; $469a: $60
    ld h, b                                       ; $469b: $60
    ld h, e                                       ; $469c: $63
    ld a, a                                       ; $469d: $7f
    add d                                         ; $469e: $82
    ld a, $3c                                     ; $469f: $3e $3c
    ld [$0400], sp                                ; $46a1: $08 $00 $04
    ld a, a                                       ; $46a4: $7f
    ld [$8103], sp                                ; $46a5: $08 $03 $81

jr_002_46a8:
    rlca                                          ; $46a8: $07
    inc bc                                        ; $46a9: $03
    ld b, $88                                     ; $46aa: $06 $88
    ld c, $0c                                     ; $46ac: $0e $0c
    inc e                                         ; $46ae: $1c
    inc e                                         ; $46af: $1c
    jr c, jr_002_46ea                             ; $46b0: $38 $38

    jr nc, @+$32                                  ; $46b2: $30 $30

    ld a, [bc]                                    ; $46b4: $0a
    nop                                           ; $46b5: $00
    inc b                                         ; $46b6: $04
    jr jr_002_4643                                ; $46b7: $18 $8a

    inc e                                         ; $46b9: $1c
    inc e                                         ; $46ba: $1c
    inc a                                         ; $46bb: $3c
    inc e                                         ; $46bc: $1c
    ld a, $3e                                     ; $46bd: $3e $3e
    ld [hl], $36                                  ; $46bf: $36 $36
    halt                                          ; $46c1: $76
    ld [hl], $80                                  ; $46c2: $36 $80
    add e                                         ; $46c4: $83
    inc b                                         ; $46c5: $04
    ld h, a                                       ; $46c6: $67
    ld h, e                                       ; $46c7: $63
    inc bc                                        ; $46c8: $03
    inc bc                                        ; $46c9: $03
    ld [$0400], sp                                ; $46ca: $08 $00 $04
    jr jr_002_46d3                                ; $46cd: $18 $04

    ld a, [hl]                                    ; $46cf: $7e
    inc b                                         ; $46d0: $04
    jr @-$72                                      ; $46d1: $18 $8c

jr_002_46d3:
    ld e, e                                       ; $46d3: $5b
    db $db                                        ; $46d4: $db
    ld e, e                                       ; $46d5: $5b
    db $db                                        ; $46d6: $db
    ld e, e                                       ; $46d7: $5b
    db $db                                        ; $46d8: $db
    ld e, e                                       ; $46d9: $5b
    db $db                                        ; $46da: $db
    ld e, e                                       ; $46db: $5b
    db $db                                        ; $46dc: $db
    jr jr_002_46f7                                ; $46dd: $18 $18

    ld [$0400], sp                                ; $46df: $08 $00 $04
    ld a, a                                       ; $46e2: $7f
    ld b, $03                                     ; $46e3: $06 $03
    add c                                         ; $46e5: $81
    rlca                                          ; $46e6: $07
    inc bc                                        ; $46e7: $03
    ld b, $86                                     ; $46e8: $06 $86

jr_002_46ea:
    ld l, [hl]                                    ; $46ea: $6e
    ld l, h                                       ; $46eb: $6c
    ld a, h                                       ; $46ec: $7c
    ld a, h                                       ; $46ed: $7c
    inc e                                         ; $46ee: $1c
    jr jr_002_46f5                                ; $46ef: $18 $04

    inc c                                         ; $46f1: $0c
    ld [$9800], sp                                ; $46f2: $08 $00 $98

jr_002_46f5:
    ld a, b                                       ; $46f5: $78
    ld [hl], b                                    ; $46f6: $70

jr_002_46f7:
    ld a, h                                       ; $46f7: $7c
    ld a, h                                       ; $46f8: $7c
    ld c, $0e                                     ; $46f9: $0e $0e
    ld b, $06                                     ; $46fb: $06 $06
    ld a, b                                       ; $46fd: $78
    ld [hl], b                                    ; $46fe: $70
    ld a, h                                       ; $46ff: $7c
    ld a, h                                       ; $4700: $7c
    ld c, $0e                                     ; $4701: $0e $0e
    ld b, $06                                     ; $4703: $06 $06
    ld a, b                                       ; $4705: $78
    ld [hl], b                                    ; $4706: $70
    ld a, h                                       ; $4707: $7c
    ld a, h                                       ; $4708: $7c
    ld c, $0e                                     ; $4709: $0e $0e
    ld b, $06                                     ; $470b: $06 $06
    ld b, $00                                     ; $470d: $06 $00
    ld a, [bc]                                    ; $470f: $0a
    jr @-$6e                                      ; $4710: $18 $90

    jr nc, jr_002_4744                            ; $4712: $30 $30

    ld [hl], $36                                  ; $4714: $36 $36
    scf                                           ; $4716: $37
    ld [hl], $33                                  ; $4717: $36 $33
    inc sp                                        ; $4719: $33
    ld l, a                                       ; $471a: $6f
    ld h, a                                       ; $471b: $67
    ld a, a                                       ; $471c: $7f
    ld a, a                                       ; $471d: $7f
    ld a, e                                       ; $471e: $7b
    ld [hl], e                                    ; $471f: $73
    ld h, e                                       ; $4720: $63
    ld h, e                                       ; $4721: $63
    ld [$0800], sp                                ; $4722: $08 $00 $08
    inc bc                                        ; $4725: $03
    sub b                                         ; $4726: $90
    scf                                           ; $4727: $37
    ld [hl], $3e                                  ; $4728: $36 $3e
    ld a, $1e                                     ; $472a: $3e $1e
    ld c, $0f                                     ; $472c: $0e $0f
    rrca                                          ; $472e: $0f
    dec de                                        ; $472f: $1b
    dec de                                        ; $4730: $1b
    jr nc, @+$3a                                  ; $4731: $30 $38

    ld [hl], b                                    ; $4733: $70
    ld [hl], b                                    ; $4734: $70
    ld h, b                                       ; $4735: $60
    ld h, b                                       ; $4736: $60
    ld [$0400], sp                                ; $4737: $08 $00 $04
    ld a, [hl]                                    ; $473a: $7e
    inc b                                         ; $473b: $04
    jr nc, jr_002_4742                            ; $473c: $30 $04

    ld a, [hl]                                    ; $473e: $7e
    ld b, $30                                     ; $473f: $06 $30
    add [hl]                                      ; $4741: $86

jr_002_4742:
    inc sp                                        ; $4742: $33
    inc sp                                        ; $4743: $33

jr_002_4744:
    ccf                                           ; $4744: $3f
    ccf                                           ; $4745: $3f
    ld e, $1c                                     ; $4746: $1e $1c
    ld [$0400], sp                                ; $4748: $08 $00 $04
    jr jr_002_4751                                ; $474b: $18 $04

    ld a, a                                       ; $474d: $7f
    add e                                         ; $474e: $83
    dec de                                        ; $474f: $1b
    dec de                                        ; $4750: $1b

jr_002_4751:
    rra                                           ; $4751: $1f
    inc bc                                        ; $4752: $03
    ld e, $0a                                     ; $4753: $1e $0a
    jr @+$0a                                      ; $4755: $18 $08

    nop                                           ; $4757: $00
    inc b                                         ; $4758: $04
    ld a, $10                                     ; $4759: $3e $10
    ld b, $04                                     ; $475b: $06 $04
    ld a, a                                       ; $475d: $7f
    ld [$0400], sp                                ; $475e: $08 $00 $04
    ld a, a                                       ; $4761: $7f
    ld b, $03                                     ; $4762: $06 $03
    inc b                                         ; $4764: $04
    ccf                                           ; $4765: $3f
    ld b, $03                                     ; $4766: $06 $03
    inc b                                         ; $4768: $04
    ld a, a                                       ; $4769: $7f
    ld [$0400], sp                                ; $476a: $08 $00 $04
    ld a, a                                       ; $476d: $7f
    ld b, $63                                     ; $476e: $06 $63
    add h                                         ; $4770: $84
    inc bc                                        ; $4771: $03
    inc bc                                        ; $4772: $03
    rlca                                          ; $4773: $07
    ld [bc], a                                    ; $4774: $02
    inc b                                         ; $4775: $04
    ld b, $86                                     ; $4776: $06 $86
    ld c, $0c                                     ; $4778: $0e $0c
    inc e                                         ; $477a: $1c
    inc e                                         ; $477b: $1c
    jr jr_002_4796                                ; $477c: $18 $18

    ld [$0400], sp                                ; $477e: $08 $00 $04
    ld a, a                                       ; $4781: $7f
    inc b                                         ; $4782: $04
    inc bc                                        ; $4783: $03
    inc b                                         ; $4784: $04
    ld a, a                                       ; $4785: $7f
    adc h                                         ; $4786: $8c
    inc bc                                        ; $4787: $03
    inc bc                                        ; $4788: $03
    rlca                                          ; $4789: $07
    inc bc                                        ; $478a: $03
    rlca                                          ; $478b: $07
    ld b, $0e                                     ; $478c: $06 $0e
    ld c, $3c                                     ; $478e: $0e $3c
    inc a                                         ; $4790: $3c
    jr c, jr_002_47c3                             ; $4791: $38 $30

    ld [$0400], sp                                ; $4793: $08 $00 $04

jr_002_4796:
    ld a, $82                                     ; $4796: $3e $82
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    inc b                                         ; $479a: $04
    ld a, a                                       ; $479b: $7f
    inc b                                         ; $479c: $04
    inc bc                                        ; $479d: $03
    add c                                         ; $479e: $81
    rlca                                          ; $479f: $07
    inc bc                                        ; $47a0: $03
    ld b, $86                                     ; $47a1: $06 $86
    ld c, $0c                                     ; $47a3: $0e $0c
    inc a                                         ; $47a5: $3c
    inc a                                         ; $47a6: $3c
    jr c, @+$32                                   ; $47a7: $38 $30

    ld [$0c00], sp                                ; $47a9: $08 $00 $0c
    ld h, e                                       ; $47ac: $63
    add e                                         ; $47ad: $83
    inc bc                                        ; $47ae: $03
    inc bc                                        ; $47af: $03
    rlca                                          ; $47b0: $07
    inc bc                                        ; $47b1: $03
    ld b, $86                                     ; $47b2: $06 $86
    ld c, $0c                                     ; $47b4: $0e $0c
    inc e                                         ; $47b6: $1c
    inc e                                         ; $47b7: $1c
    jr jr_002_47d2                                ; $47b8: $18 $18

    ld [$0e00], sp                                ; $47ba: $08 $00 $0e
    ld l, h                                       ; $47bd: $6c
    add b                                         ; $47be: $80
    add e                                         ; $47bf: $83
    dec b                                         ; $47c0: $05
    ld l, l                                       ; $47c1: $6d
    ld l, a                                       ; $47c2: $6f

jr_002_47c3:
    ld l, a                                       ; $47c3: $6f
    ld l, [hl]                                    ; $47c4: $6e
    ld l, h                                       ; $47c5: $6c
    ld [$0800], sp                                ; $47c6: $08 $00 $08
    ld h, b                                       ; $47c9: $60
    ld b, $63                                     ; $47ca: $06 $63
    add c                                         ; $47cc: $81
    ld h, a                                       ; $47cd: $67
    inc bc                                        ; $47ce: $03
    ld h, [hl]                                    ; $47cf: $66
    add [hl]                                      ; $47d0: $86
    ld l, [hl]                                    ; $47d1: $6e

jr_002_47d2:
    ld l, h                                       ; $47d2: $6c
    ld a, h                                       ; $47d3: $7c
    ld a, h                                       ; $47d4: $7c
    ld a, b                                       ; $47d5: $78
    ld [hl], b                                    ; $47d6: $70
    ld [$0400], sp                                ; $47d7: $08 $00 $04
    ld a, a                                       ; $47da: $7f
    db $10                                        ; $47db: $10
    ld h, e                                       ; $47dc: $63
    inc b                                         ; $47dd: $04
    ld a, a                                       ; $47de: $7f
    ld [$0400], sp                                ; $47df: $08 $00 $04
    ld a, b                                       ; $47e2: $78
    add d                                         ; $47e3: $82
    nop                                           ; $47e4: $00
    nop                                           ; $47e5: $00
    ld [$8a03], sp                                ; $47e6: $08 $03 $8a
    rlca                                          ; $47e9: $07
    inc bc                                        ; $47ea: $03
    rlca                                          ; $47eb: $07
    ld b, $1e                                     ; $47ec: $06 $1e
    ld c, $7c                                     ; $47ee: $0e $7c
    ld a, h                                       ; $47f0: $7c
    ld a, b                                       ; $47f1: $78
    ld [hl], b                                    ; $47f2: $70
    stop                                          ; $47f3: $10 $00
    inc b                                         ; $47f5: $04
    ld a, a                                       ; $47f6: $7f
    add b                                         ; $47f7: $80
    add e                                         ; $47f8: $83
    ld b, $1b                                     ; $47f9: $06 $1b
    rra                                           ; $47fb: $1f
    ld e, $18                                     ; $47fc: $1e $18
    jr c, jr_002_4830                             ; $47fe: $38 $30

    stop                                          ; $4800: $10 $00
    add [hl]                                      ; $4802: $86
    ld b, $06                                     ; $4803: $06 $06
    ld c, $0e                                     ; $4805: $0e $0e
    inc a                                         ; $4807: $3c
    inc e                                         ; $4808: $1c
    add b                                         ; $4809: $80
    add e                                         ; $480a: $83
    dec b                                         ; $480b: $05
    ld a, h                                       ; $480c: $7c
    ld l, h                                       ; $480d: $6c
    inc c                                         ; $480e: $0c
    inc c                                         ; $480f: $0c
    inc c                                         ; $4810: $0c
    stop                                          ; $4811: $10 $00
    add d                                         ; $4813: $82
    inc e                                         ; $4814: $1c
    ld [$7f04], sp                                ; $4815: $08 $04 $7f
    inc b                                         ; $4818: $04
    ld h, e                                       ; $4819: $63
    add [hl]                                      ; $481a: $86
    rlca                                          ; $481b: $07
    rlca                                          ; $481c: $07
    ld e, $1e                                     ; $481d: $1e $1e
    inc e                                         ; $481f: $1c
    inc e                                         ; $4820: $1c
    stop                                          ; $4821: $10 $00
    inc b                                         ; $4823: $04
    ld a, [hl]                                    ; $4824: $7e
    ld [$0418], sp                                ; $4825: $08 $18 $04
    ld a, [hl]                                    ; $4828: $7e
    stop                                          ; $4829: $10 $00
    add b                                         ; $482b: $80
    add e                                         ; $482c: $83
    ld [$7f06], sp                                ; $482d: $08 $06 $7f

jr_002_4830:
    ld a, a                                       ; $4830: $7f
    ld c, $1e                                     ; $4831: $0e $1e
    ld a, $76                                     ; $4833: $3e $76
    ld h, [hl]                                    ; $4835: $66
    stop                                          ; $4836: $10 $00
    ld b, $6c                                     ; $4838: $06 $6c
    inc b                                         ; $483a: $04
    inc bc                                        ; $483b: $03
    add [hl]                                      ; $483c: $86
    rlca                                          ; $483d: $07
    rlca                                          ; $483e: $07
    ld a, $3e                                     ; $483f: $3e $3e
    inc a                                         ; $4841: $3c
    inc a                                         ; $4842: $3c
    stop                                          ; $4843: $10 $00
    add b                                         ; $4845: $80
    add e                                         ; $4846: $83
    ld [$7f18], sp                                ; $4847: $08 $18 $7f
    ld a, a                                       ; $484a: $7f
    ld e, $18                                     ; $484b: $1e $18
    jr @+$1a                                      ; $484d: $18 $18

    jr jr_002_4861                                ; $484f: $18 $10

    nop                                           ; $4851: $00
    inc b                                         ; $4852: $04
    ld a, $08                                     ; $4853: $3e $08
    ld b, $04                                     ; $4855: $06 $04
    ld a, a                                       ; $4857: $7f
    stop                                          ; $4858: $10 $00
    inc b                                         ; $485a: $04
    ld a, a                                       ; $485b: $7f
    add b                                         ; $485c: $80
    add e                                         ; $485d: $83
    ld b, $03                                     ; $485e: $06 $03
    ccf                                           ; $4860: $3f

jr_002_4861:
    ccf                                           ; $4861: $3f
    inc bc                                        ; $4862: $03
    ld a, a                                       ; $4863: $7f
    ld a, a                                       ; $4864: $7f
    ld [$0400], sp                                ; $4865: $08 $00 $04
    ld l, h                                       ; $4868: $6c
    ld b, $36                                     ; $4869: $06 $36
    ld d, $00                                     ; $486b: $16 $00
    add b                                         ; $486d: $80
    add e                                         ; $486e: $83
    dec b                                         ; $486f: $05
    jr c, jr_002_48ee                             ; $4870: $38 $7c

    ld l, h                                       ; $4872: $6c
    ld a, h                                       ; $4873: $7c
    jr c, jr_002_4896                             ; $4874: $38 $20

    nop                                           ; $4876: $00
    inc b                                         ; $4877: $04
    ld a, a                                       ; $4878: $7f
    ld [de], a                                    ; $4879: $12
    nop                                           ; $487a: $00
    add d                                         ; $487b: $82
    daa                                           ; $487c: $27
    ld h, $80                                     ; $487d: $26 $80

jr_002_487f:
    add e                                         ; $487f: $83
    dec b                                         ; $4880: $05
    ld [hl], l                                    ; $4881: $75
    ld d, l                                       ; $4882: $55
    ld d, l                                       ; $4883: $55
    ld b, l                                       ; $4884: $45
    ld h, l                                       ; $4885: $65
    add d                                         ; $4886: $82
    scf                                           ; $4887: $37
    ld [hl], $80                                  ; $4888: $36 $80
    add e                                         ; $488a: $83
    dec b                                         ; $488b: $05
    inc d                                         ; $488c: $14
    ld d, h                                       ; $488d: $54
    ld d, h                                       ; $488e: $54
    ld [hl], h                                    ; $488f: $74
    inc h                                         ; $4890: $24
    inc b                                         ; $4891: $04
    nop                                           ; $4892: $00
    add b                                         ; $4893: $80
    add e                                         ; $4894: $83
    dec b                                         ; $4895: $05

jr_002_4896:
    inc b                                         ; $4896: $04
    ld a, $0c                                     ; $4897: $3e $0c
    inc d                                         ; $4899: $14
    inc h                                         ; $489a: $24
    add d                                         ; $489b: $82
    nop                                           ; $489c: $00
    nop                                           ; $489d: $00
    add b                                         ; $489e: $80
    add e                                         ; $489f: $83
    ld a, [bc]                                    ; $48a0: $0a
    ld a, $22                                     ; $48a1: $3e $22
    ld [bc], a                                    ; $48a3: $02
    inc b                                         ; $48a4: $04
    jr jr_002_48c9                                ; $48a5: $18 $22

    ld [hl+], a                                   ; $48a7: $22
    ld [hl+], a                                   ; $48a8: $22
    inc b                                         ; $48a9: $04
    ld [$1800], sp                                ; $48aa: $08 $00 $18
    nop                                           ; $48ad: $00
    add b                                         ; $48ae: $80
    add c                                         ; $48af: $81
    inc b                                         ; $48b0: $04
    rlca                                          ; $48b1: $07
    rrca                                          ; $48b2: $0f
    inc c                                         ; $48b3: $0c
    inc c                                         ; $48b4: $0c
    ld [$8000], sp                                ; $48b5: $08 $00 $80
    add c                                         ; $48b8: $81
    ld [$f0e0], sp                                ; $48b9: $08 $e0 $f0
    jr nc, jr_002_48ee                            ; $48bc: $30 $30

    inc c                                         ; $48be: $0c
    inc c                                         ; $48bf: $0c
    rrca                                          ; $48c0: $0f
    rlca                                          ; $48c1: $07
    ld [$8000], sp                                ; $48c2: $08 $00 $80
    add c                                         ; $48c5: $81
    inc b                                         ; $48c6: $04
    jr nc, jr_002_48f9                            ; $48c7: $30 $30

jr_002_48c9:
    ldh a, [$ffe0]                                ; $48c9: $f0 $e0
    ld [$8000], sp                                ; $48cb: $08 $00 $80
    add c                                         ; $48ce: $81
    db $10                                        ; $48cf: $10
    inc c                                         ; $48d0: $0c
    inc c                                         ; $48d1: $0c
    inc c                                         ; $48d2: $0c
    inc c                                         ; $48d3: $0c
    inc c                                         ; $48d4: $0c
    inc c                                         ; $48d5: $0c
    inc c                                         ; $48d6: $0c
    inc c                                         ; $48d7: $0c
    jr nc, jr_002_490a                            ; $48d8: $30 $30

    jr nc, jr_002_490c                            ; $48da: $30 $30

    jr nc, jr_002_490e                            ; $48dc: $30 $30

    jr nc, jr_002_4910                            ; $48de: $30 $30

    ld [$8300], sp                                ; $48e0: $08 $00 $83
    rst RST_38                                    ; $48e3: $ff
    nop                                           ; $48e4: $00
    rst RST_38                                    ; $48e5: $ff
    add hl, bc                                    ; $48e6: $09
    nop                                           ; $48e7: $00
    add e                                         ; $48e8: $83
    rst RST_38                                    ; $48e9: $ff
    nop                                           ; $48ea: $00
    rst RST_38                                    ; $48eb: $ff
    dec c                                         ; $48ec: $0d
    nop                                           ; $48ed: $00

jr_002_48ee:
    add e                                         ; $48ee: $83
    ld a, [hl]                                    ; $48ef: $7e
    nop                                           ; $48f0: $00
    ld a, [hl]                                    ; $48f1: $7e
    add hl, bc                                    ; $48f2: $09
    nop                                           ; $48f3: $00
    nop                                           ; $48f4: $00
    add d                                         ; $48f5: $82
    rst RST_38                                    ; $48f6: $ff
    rst RST_38                                    ; $48f7: $ff
    inc e                                         ; $48f8: $1c

jr_002_48f9:
    add b                                         ; $48f9: $80
    add d                                         ; $48fa: $82
    rst RST_38                                    ; $48fb: $ff
    rst RST_38                                    ; $48fc: $ff
    jr nz, jr_002_487f                            ; $48fd: $20 $80

    inc b                                         ; $48ff: $04
    nop                                           ; $4900: $00
    inc b                                         ; $4901: $04
    ld a, [hl]                                    ; $4902: $7e
    jr jr_002_4905                                ; $4903: $18 $00

jr_002_4905:
    nop                                           ; $4905: $00
    ld [$9200], sp                                ; $4906: $08 $00 $92
    rrca                                          ; $4909: $0f

jr_002_490a:
    rrca                                          ; $490a: $0f
    db $10                                        ; $490b: $10

jr_002_490c:
    db $10                                        ; $490c: $10
    ld [hl], b                                    ; $490d: $70

jr_002_490e:
    ld [hl], b                                    ; $490e: $70
    ld b, e                                       ; $490f: $43

jr_002_4910:
    ld b, d                                       ; $4910: $42
    ld b, a                                       ; $4911: $47
    ld b, d                                       ; $4912: $42
    ld [hl], l                                    ; $4913: $75
    ld b, a                                       ; $4914: $47
    ld [hl], e                                    ; $4915: $73
    ld [hl], l                                    ; $4916: $75
    rra                                           ; $4917: $1f
    ld de, $0f0f                                  ; $4918: $11 $0f $0f
    ld c, $00                                     ; $491b: $0e $00
    adc d                                         ; $491d: $8a
    db $fc                                        ; $491e: $fc
    db $fc                                        ; $491f: $fc
    jp nz, Jump_002_7e42                          ; $4920: $c2 $42 $7e

    ld b, d                                       ; $4923: $42
    ld a, h                                       ; $4924: $7c
    ld a, h                                       ; $4925: $7c
    ret nz                                        ; $4926: $c0

    ld b, b                                       ; $4927: $40
    inc bc                                        ; $4928: $03
    ret nz                                        ; $4929: $c0

    add l                                         ; $492a: $85
    ld b, b                                       ; $492b: $40
    ret nz                                        ; $492c: $c0

    ld b, b                                       ; $492d: $40
    add b                                         ; $492e: $80
    add b                                         ; $492f: $80
    ld b, $00                                     ; $4930: $06 $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    sbc b                                         ; $4934: $98
    inc h                                         ; $4935: $24
    nop                                           ; $4936: $00
    add h                                         ; $4937: $84
    ld bc, $0707                                  ; $4938: $01 $07 $07
    ld [bc], a                                    ; $493b: $02
    inc b                                         ; $493c: $04
    nop                                           ; $493d: $00
    add h                                         ; $493e: $84
    ld bc, $0707                                  ; $493f: $01 $07 $07
    ld [bc], a                                    ; $4942: $02
    inc d                                         ; $4943: $14
    nop                                           ; $4944: $00
    add h                                         ; $4945: $84
    dec b                                         ; $4946: $05
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    ld b, $04                                     ; $4949: $06 $04
    nop                                           ; $494b: $00
    add h                                         ; $494c: $84
    dec b                                         ; $494d: $05
    nop                                           ; $494e: $00
    nop                                           ; $494f: $00
    ld b, $14                                     ; $4950: $06 $14
    nop                                           ; $4952: $00
    add h                                         ; $4953: $84
    dec b                                         ; $4954: $05
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    ld b, $04                                     ; $4957: $06 $04
    nop                                           ; $4959: $00
    add h                                         ; $495a: $84
    dec b                                         ; $495b: $05
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    ld b, $14                                     ; $495e: $06 $14
    nop                                           ; $4960: $00
    add h                                         ; $4961: $84
    inc bc                                        ; $4962: $03
    ld [$0408], sp                                ; $4963: $08 $08 $04
    inc b                                         ; $4966: $04
    nop                                           ; $4967: $00
    add h                                         ; $4968: $84
    inc bc                                        ; $4969: $03
    ld [$0408], sp                                ; $496a: $08 $08 $04
    ld d, [hl]                                    ; $496d: $56
    nop                                           ; $496e: $00
    ld [$3409], sp                                ; $496f: $08 $09 $34
    nop                                           ; $4972: $00
    sub c                                         ; $4973: $91
    add b                                         ; $4974: $80
    add d                                         ; $4975: $82
    add h                                         ; $4976: $84
    add [hl]                                      ; $4977: $86
    adc b                                         ; $4978: $88
    nop                                           ; $4979: $00
    adc d                                         ; $497a: $8a
    adc h                                         ; $497b: $8c
    adc [hl]                                      ; $497c: $8e
    sub b                                         ; $497d: $90
    sub d                                         ; $497e: $92
    nop                                           ; $497f: $00
    sub h                                         ; $4980: $94
    sub [hl]                                      ; $4981: $96
    sbc b                                         ; $4982: $98
    sbc d                                         ; $4983: $9a
    sbc h                                         ; $4984: $9c
    rrca                                          ; $4985: $0f
    nop                                           ; $4986: $00
    sub c                                         ; $4987: $91
    add c                                         ; $4988: $81
    add e                                         ; $4989: $83
    add l                                         ; $498a: $85
    add a                                         ; $498b: $87
    adc c                                         ; $498c: $89
    nop                                           ; $498d: $00
    adc e                                         ; $498e: $8b
    adc l                                         ; $498f: $8d
    adc a                                         ; $4990: $8f
    sub c                                         ; $4991: $91
    sub e                                         ; $4992: $93
    nop                                           ; $4993: $00
    sub l                                         ; $4994: $95
    sub a                                         ; $4995: $97
    sbc c                                         ; $4996: $99
    sbc e                                         ; $4997: $9b
    sbc l                                         ; $4998: $9d
    rrca                                          ; $4999: $0f
    nop                                           ; $499a: $00
    sub c                                         ; $499b: $91
    sbc [hl]                                      ; $499c: $9e
    and b                                         ; $499d: $a0
    and d                                         ; $499e: $a2
    and h                                         ; $499f: $a4
    and [hl]                                      ; $49a0: $a6
    nop                                           ; $49a1: $00
    xor b                                         ; $49a2: $a8
    xor d                                         ; $49a3: $aa
    xor h                                         ; $49a4: $ac
    xor [hl]                                      ; $49a5: $ae
    or b                                          ; $49a6: $b0
    nop                                           ; $49a7: $00
    or d                                          ; $49a8: $b2
    or h                                          ; $49a9: $b4
    or [hl]                                       ; $49aa: $b6
    cp b                                          ; $49ab: $b8
    cp d                                          ; $49ac: $ba
    rrca                                          ; $49ad: $0f
    nop                                           ; $49ae: $00
    sub c                                         ; $49af: $91
    sbc a                                         ; $49b0: $9f
    and c                                         ; $49b1: $a1
    and e                                         ; $49b2: $a3
    and l                                         ; $49b3: $a5
    and a                                         ; $49b4: $a7
    nop                                           ; $49b5: $00
    xor c                                         ; $49b6: $a9
    xor e                                         ; $49b7: $ab
    xor l                                         ; $49b8: $ad
    xor a                                         ; $49b9: $af
    or c                                          ; $49ba: $b1
    nop                                           ; $49bb: $00
    or e                                          ; $49bc: $b3
    or l                                          ; $49bd: $b5
    or a                                          ; $49be: $b7
    cp c                                          ; $49bf: $b9
    cp e                                          ; $49c0: $bb
    rrca                                          ; $49c1: $0f
    nop                                           ; $49c2: $00
    sub c                                         ; $49c3: $91
    cp h                                          ; $49c4: $bc
    cp [hl]                                       ; $49c5: $be
    ret nz                                        ; $49c6: $c0

    jp nz, $00c4                                  ; $49c7: $c2 $c4 $00

    add $c8                                       ; $49ca: $c6 $c8
    jp z, $cecc                                   ; $49cc: $ca $cc $ce

    nop                                           ; $49cf: $00
    ret nc                                        ; $49d0: $d0

    jp nc, $d6d4                                  ; $49d1: $d2 $d4 $d6

    ret c                                         ; $49d4: $d8

    rrca                                          ; $49d5: $0f
    nop                                           ; $49d6: $00
    sub c                                         ; $49d7: $91
    cp l                                          ; $49d8: $bd
    cp a                                          ; $49d9: $bf
    pop bc                                        ; $49da: $c1
    jp $00c5                                      ; $49db: $c3 $c5 $00


    rst RST_00                                    ; $49de: $c7
    ret                                           ; $49df: $c9


    set 1, l                                      ; $49e0: $cb $cd
    rst RST_08                                    ; $49e2: $cf
    nop                                           ; $49e3: $00
    pop de                                        ; $49e4: $d1
    db $d3                                        ; $49e5: $d3
    push de                                       ; $49e6: $d5
    rst RST_10                                    ; $49e7: $d7
    reti                                          ; $49e8: $d9


    rrca                                          ; $49e9: $0f
    nop                                           ; $49ea: $00
    sub c                                         ; $49eb: $91
    jp c, $dedc                                   ; $49ec: $da $dc $de

    ldh [$ffe2], a                                ; $49ef: $e0 $e2
    nop                                           ; $49f1: $00
    db $e4                                        ; $49f2: $e4
    and $e8                                       ; $49f3: $e6 $e8
    ld [$00ec], a                                 ; $49f5: $ea $ec $00
    xor $f0                                       ; $49f8: $ee $f0
    ldh a, [c]                                    ; $49fa: $f2
    db $f4                                        ; $49fb: $f4
    or $0f                                        ; $49fc: $f6 $0f
    nop                                           ; $49fe: $00
    sub c                                         ; $49ff: $91
    db $db                                        ; $4a00: $db
    db $dd                                        ; $4a01: $dd
    rst RST_18                                    ; $4a02: $df
    pop hl                                        ; $4a03: $e1
    db $e3                                        ; $4a04: $e3
    nop                                           ; $4a05: $00
    push hl                                       ; $4a06: $e5
    rst RST_20                                    ; $4a07: $e7
    jp hl                                         ; $4a08: $e9


    db $eb                                        ; $4a09: $eb
    db $ed                                        ; $4a0a: $ed
    nop                                           ; $4a0b: $00
    rst RST_28                                    ; $4a0c: $ef
    pop af                                        ; $4a0d: $f1
    di                                            ; $4a0e: $f3
    push af                                       ; $4a0f: $f5
    rst RST_30                                    ; $4a10: $f7
    dec l                                         ; $4a11: $2d
    nop                                           ; $4a12: $00
    nop                                           ; $4a13: $00
    ld [$0404], sp                                ; $4a14: $08 $04 $04
    ld [$0408], sp                                ; $4a17: $08 $08 $04
    inc b                                         ; $4a1a: $04
    db $10                                        ; $4a1b: $10
    inc b                                         ; $4a1c: $04
    db $10                                        ; $4a1d: $10
    db $10                                        ; $4a1e: $10
    db $10                                        ; $4a1f: $10
    jr nz, jr_002_4a42                            ; $4a20: $20 $20

    jr nz, jr_002_4a44                            ; $4a22: $20 $20

    ld [$0804], sp                                ; $4a24: $08 $04 $08
    inc b                                         ; $4a27: $04
    inc b                                         ; $4a28: $04
    inc b                                         ; $4a29: $04
    ld [$1008], sp                                ; $4a2a: $08 $08 $10
    jr nz, jr_002_4a91                            ; $4a2d: $20 $62

    ld c, d                                       ; $4a2f: $4a
    ldh [c], a                                    ; $4a30: $e2
    ld c, d                                       ; $4a31: $4a
    ld [hl+], a                                   ; $4a32: $22
    ld c, e                                       ; $4a33: $4b
    ld h, d                                       ; $4a34: $62
    ld c, e                                       ; $4a35: $4b
    ldh [c], a                                    ; $4a36: $e2
    ld c, e                                       ; $4a37: $4b
    ld h, d                                       ; $4a38: $62
    ld c, h                                       ; $4a39: $4c
    and d                                         ; $4a3a: $a2
    ld c, h                                       ; $4a3b: $4c
    ldh [c], a                                    ; $4a3c: $e2
    ld c, h                                       ; $4a3d: $4c
    ldh [c], a                                    ; $4a3e: $e2
    ld c, l                                       ; $4a3f: $4d
    ld [hl+], a                                   ; $4a40: $22
    ld c, [hl]                                    ; $4a41: $4e

jr_002_4a42:
    and d                                         ; $4a42: $a2
    ld d, e                                       ; $4a43: $53

jr_002_4a44:
    ld [hl+], a                                   ; $4a44: $22
    ld c, a                                       ; $4a45: $4f
    and d                                         ; $4a46: $a2
    ld d, h                                       ; $4a47: $54
    and d                                         ; $4a48: $a2
    ld d, [hl]                                    ; $4a49: $56
    and d                                         ; $4a4a: $a2
    ld e, b                                       ; $4a4b: $58
    and d                                         ; $4a4c: $a2
    ld e, d                                       ; $4a4d: $5a
    and d                                         ; $4a4e: $a2
    ld c, a                                       ; $4a4f: $4f
    ld [hl+], a                                   ; $4a50: $22
    ld d, b                                       ; $4a51: $50
    ld h, d                                       ; $4a52: $62
    ld d, b                                       ; $4a53: $50
    ldh [c], a                                    ; $4a54: $e2
    ld d, b                                       ; $4a55: $50
    ld [hl+], a                                   ; $4a56: $22
    ld d, c                                       ; $4a57: $51
    ld h, d                                       ; $4a58: $62
    ld d, c                                       ; $4a59: $51
    and d                                         ; $4a5a: $a2
    ld d, c                                       ; $4a5b: $51
    ld [hl+], a                                   ; $4a5c: $22
    ld d, d                                       ; $4a5d: $52
    and d                                         ; $4a5e: $a2
    ld d, d                                       ; $4a5f: $52
    and d                                         ; $4a60: $a2
    ld e, h                                       ; $4a61: $5c
    rlca                                          ; $4a62: $07
    rlca                                          ; $4a63: $07
    rrca                                          ; $4a64: $0f
    ld [$101f], sp                                ; $4a65: $08 $1f $10
    ld e, $11                                     ; $4a68: $1e $11
    ld e, $55                                     ; $4a6a: $1e $55
    ld e, [hl]                                    ; $4a6c: $5e
    ld d, a                                       ; $4a6d: $57
    ld e, [hl]                                    ; $4a6e: $5e
    ld e, e                                       ; $4a6f: $5b
    ld b, [hl]                                    ; $4a70: $46
    ld b, l                                       ; $4a71: $45
    ld c, a                                       ; $4a72: $4f
    ld c, a                                       ; $4a73: $4f
    xor $e9                                       ; $4a74: $ee $e9
    ld e, a                                       ; $4a76: $5f
    or $6e                                        ; $4a77: $f6 $6e
    ld l, c                                       ; $4a79: $69
    ld b, [hl]                                    ; $4a7a: $46
    ld c, [hl]                                    ; $4a7b: $4e
    inc c                                         ; $4a7c: $0c
    inc c                                         ; $4a7d: $0c
    ld d, h                                       ; $4a7e: $54
    ld a, h                                       ; $4a7f: $7c
    ld d, h                                       ; $4a80: $54
    ld a, h                                       ; $4a81: $7c
    ret nz                                        ; $4a82: $c0

    ret nz                                        ; $4a83: $c0

    ldh [rNR41], a                                ; $4a84: $e0 $20
    db $10                                        ; $4a86: $10
    ldh a, [rNR10]                                ; $4a87: $f0 $10
    ldh a, [$ff50]                                ; $4a89: $f0 $50
    ldh a, [$ffd0]                                ; $4a8b: $f0 $d0
    ldh a, [$ffbf]                                ; $4a8d: $f0 $bf
    rst RST_38                                    ; $4a8f: $ff
    ld a, l                                       ; $4a90: $7d

jr_002_4a91:
    db $d3                                        ; $4a91: $d3
    db $fd                                        ; $4a92: $fd
    rst RST_10                                    ; $4a93: $d7
    dec a                                         ; $4a94: $3d
    rst RST_30                                    ; $4a95: $f7
    db $fd                                        ; $4a96: $fd
    db $d3                                        ; $4a97: $d3
    ld l, $ea                                     ; $4a98: $2e $ea
    call nz, $70e4                                ; $4a9a: $c4 $e4 $70
    ld h, b                                       ; $4a9d: $60
    ld d, h                                       ; $4a9e: $54
    ld a, h                                       ; $4a9f: $7c
    ld d, h                                       ; $4aa0: $54
    ld a, h                                       ; $4aa1: $7c
    rlca                                          ; $4aa2: $07
    rlca                                          ; $4aa3: $07
    rrca                                          ; $4aa4: $0f
    ld [$101f], sp                                ; $4aa5: $08 $1f $10
    ld e, $51                                     ; $4aa8: $1e $51
    ld e, [hl]                                    ; $4aaa: $5e
    ld d, l                                       ; $4aab: $55
    ld e, [hl]                                    ; $4aac: $5e
    ld d, a                                       ; $4aad: $57
    ld e, [hl]                                    ; $4aae: $5e
    ld e, e                                       ; $4aaf: $5b
    ld b, [hl]                                    ; $4ab0: $46
    ld b, l                                       ; $4ab1: $45
    rst RST_28                                    ; $4ab2: $ef
    rst RST_28                                    ; $4ab3: $ef
    ld e, [hl]                                    ; $4ab4: $5e
    ld sp, hl                                     ; $4ab5: $f9
    ld l, a                                       ; $4ab6: $6f
    ld h, [hl]                                    ; $4ab7: $66
    ld c, [hl]                                    ; $4ab8: $4e
    ld c, c                                       ; $4ab9: $49
    ld b, $0e                                     ; $4aba: $06 $0e
    inc c                                         ; $4abc: $0c
    inc c                                         ; $4abd: $0c
    ld d, h                                       ; $4abe: $54
    ld a, h                                       ; $4abf: $7c
    ld d, h                                       ; $4ac0: $54
    ld a, h                                       ; $4ac1: $7c
    ret nz                                        ; $4ac2: $c0

    ret nz                                        ; $4ac3: $c0

    ldh [rNR41], a                                ; $4ac4: $e0 $20
    db $10                                        ; $4ac6: $10
    ldh a, [rNR10]                                ; $4ac7: $f0 $10
    ldh a, [$ff50]                                ; $4ac9: $f0 $50
    ldh a, [$ffd0]                                ; $4acb: $f0 $d0
    ldh a, [$ffb0]                                ; $4acd: $f0 $b0
    ldh a, [$ff7f]                                ; $4acf: $f0 $7f
    rst RST_18                                    ; $4ad1: $df
    db $fd                                        ; $4ad2: $fd
    db $d3                                        ; $4ad3: $d3
    dec a                                         ; $4ad4: $3d
    rst RST_30                                    ; $4ad5: $f7
    db $fd                                        ; $4ad6: $fd
    rst RST_10                                    ; $4ad7: $d7
    dec a                                         ; $4ad8: $3d
    di                                            ; $4ad9: $f3
    adc $ea                                       ; $4ada: $ce $ea
    ld [hl], h                                    ; $4adc: $74
    ld h, h                                       ; $4add: $64
    ld d, h                                       ; $4ade: $54
    ld a, h                                       ; $4adf: $7c
    ld d, h                                       ; $4ae0: $54
    ld a, h                                       ; $4ae1: $7c
    inc bc                                        ; $4ae2: $03
    inc bc                                        ; $4ae3: $03
    ccf                                           ; $4ae4: $3f
    inc a                                         ; $4ae5: $3c
    db $ec                                        ; $4ae6: $ec
    db $eb                                        ; $4ae7: $eb
    cp e                                          ; $4ae8: $bb
    cp a                                          ; $4ae9: $bf
    rst RST_18                                    ; $4aea: $df
    sbc $7e                                       ; $4aeb: $de $7e
    ld a, l                                       ; $4aed: $7d
    rst RST_30                                    ; $4aee: $f7
    rst RST_30                                    ; $4aef: $f7
    rst RST_18                                    ; $4af0: $df
    call c, $c8cf                                 ; $4af1: $dc $cf $c8
    rst RST_08                                    ; $4af4: $cf
    jp z, Jump_002_6f6b                           ; $4af5: $ca $6b $6f

    ld h, h                                       ; $4af8: $64
    ld h, a                                       ; $4af9: $67
    scf                                           ; $4afa: $37
    scf                                           ; $4afb: $37
    inc d                                         ; $4afc: $14
    inc d                                         ; $4afd: $14
    ld [de], a                                    ; $4afe: $12
    ld [de], a                                    ; $4aff: $12
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    call c, $f7dc                                 ; $4b02: $dc $dc $f7
    scf                                           ; $4b05: $37
    scf                                           ; $4b06: $37
    rst RST_10                                    ; $4b07: $d7
    db $dd                                        ; $4b08: $dd
    db $fd                                        ; $4b09: $fd
    ld sp, hl                                     ; $4b0a: $f9
    ld a, c                                       ; $4b0b: $79
    ld a, d                                       ; $4b0c: $7a
    cp d                                          ; $4b0d: $ba
    or $f6                                        ; $4b0e: $f6 $f6
    rst RST_38                                    ; $4b10: $ff
    ccf                                           ; $4b11: $3f
    ei                                            ; $4b12: $fb
    dec de                                        ; $4b13: $1b
    di                                            ; $4b14: $f3
    ld d, e                                       ; $4b15: $53
    db $d3                                        ; $4b16: $d3
    di                                            ; $4b17: $f3
    ld h, $e6                                     ; $4b18: $26 $e6
    and $e6                                       ; $4b1a: $e6 $e6
    inc l                                         ; $4b1c: $2c
    inc l                                         ; $4b1d: $2c
    ld c, b                                       ; $4b1e: $48
    ld c, b                                       ; $4b1f: $48
    ld [$0308], sp                                ; $4b20: $08 $08 $03
    inc bc                                        ; $4b23: $03
    inc c                                         ; $4b24: $0c
    rrca                                          ; $4b25: $0f
    ld [de], a                                    ; $4b26: $12
    dec e                                         ; $4b27: $1d
    inc hl                                        ; $4b28: $23
    inc a                                         ; $4b29: $3c
    ld b, a                                       ; $4b2a: $47
    ld a, b                                       ; $4b2b: $78
    ld c, a                                       ; $4b2c: $4f
    ld [hl], b                                    ; $4b2d: $70
    adc a                                         ; $4b2e: $8f
    ldh a, [$ffbb]                                ; $4b2f: $f0 $bb
    db $e4                                        ; $4b31: $e4
    cp a                                          ; $4b32: $bf
    call c, $cebf                                 ; $4b33: $dc $bf $ce

jr_002_4b36:
    jp c, Jump_002_4e67                           ; $4b36: $da $67 $4e

    ld [hl], e                                    ; $4b39: $73
    ld e, b                                       ; $4b3a: $58
    ld [hl], a                                    ; $4b3b: $77
    ld [hl], h                                    ; $4b3c: $74
    ld a, a                                       ; $4b3d: $7f
    ld a, $3f                                     ; $4b3e: $3e $3f
    rra                                           ; $4b40: $1f
    rrca                                          ; $4b41: $0f
    ret nz                                        ; $4b42: $c0

    ret nz                                        ; $4b43: $c0

    jr nc, jr_002_4b36                            ; $4b44: $30 $f0

    ld c, b                                       ; $4b46: $48
    cp b                                          ; $4b47: $b8
    and $1c                                       ; $4b48: $e6 $1c
    db $e3                                        ; $4b4a: $e3
    ld e, $f7                                     ; $4b4b: $1e $f7
    rrca                                          ; $4b4d: $0f
    or e                                          ; $4b4e: $b3
    ld c, a                                       ; $4b4f: $4f
    reti                                          ; $4b50: $d9


    cpl                                           ; $4b51: $2f
    ld sp, hl                                     ; $4b52: $f9
    ld [hl], a                                    ; $4b53: $77
    ld sp, hl                                     ; $4b54: $f9
    rst RST_20                                    ; $4b55: $e7
    sbc a                                         ; $4b56: $9f
    rst RST_20                                    ; $4b57: $e7
    sbc e                                         ; $4b58: $9b
    rst RST_20                                    ; $4b59: $e7
    inc sp                                        ; $4b5a: $33
    adc $26                                       ; $4b5b: $ce $26
    cp $7c                                        ; $4b5d: $fe $7c
    db $fc                                        ; $4b5f: $fc
    ld hl, sp-$10                                 ; $4b60: $f8 $f0
    ld bc, $0301                                  ; $4b62: $01 $01 $03
    ld [bc], a                                    ; $4b65: $02
    rst RST_00                                    ; $4b66: $c7
    call nz, $a4e7                                ; $4b67: $c4 $e7 $a4
    rst RST_30                                    ; $4b6a: $f7

jr_002_4b6b:
    push de                                       ; $4b6b: $d5
    rst RST_38                                    ; $4b6c: $ff
    cp [hl]                                       ; $4b6d: $be
    db $fd                                        ; $4b6e: $fd
    sub a                                         ; $4b6f: $97
    rst RST_38                                    ; $4b70: $ff
    sbc e                                         ; $4b71: $9b
    rst RST_30                                    ; $4b72: $f7
    sbc l                                         ; $4b73: $9d
    ld a, e                                       ; $4b74: $7b
    ld e, [hl]                                    ; $4b75: $5e
    ld a, l                                       ; $4b76: $7d
    ld c, a                                       ; $4b77: $4f
    dec sp                                        ; $4b78: $3b
    dec hl                                        ; $4b79: $2b
    dec e                                         ; $4b7a: $1d
    dec d                                         ; $4b7b: $15
    rrca                                          ; $4b7c: $0f
    rrca                                          ; $4b7d: $0f
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    ldh a, [$fff0]                                ; $4b82: $f0 $f0
    ret z                                         ; $4b84: $c8

    jr c, jr_002_4b6b                             ; $4b85: $38 $e4

    inc e                                         ; $4b87: $1c
    db $e4                                        ; $4b88: $e4
    inc e                                         ; $4b89: $1c
    db $f4                                        ; $4b8a: $f4
    cp h                                          ; $4b8b: $bc
    db $ec                                        ; $4b8c: $ec
    cp h                                          ; $4b8d: $bc
    jp nc, Jump_000_113e                          ; $4b8e: $d2 $3e $11

    rst RST_38                                    ; $4b91: $ff
    db $fd                                        ; $4b92: $fd
    ei                                            ; $4b93: $fb
    ld sp, hl                                     ; $4b94: $f9
    rst RST_30                                    ; $4b95: $f7
    sub $bf                                       ; $4b96: $d6 $bf
    sbc h                                         ; $4b98: $9c
    ld a, l                                       ; $4b99: $7d
    ldh a, [$fff4]                                ; $4b9a: $f0 $f4
    sub b                                         ; $4b9c: $90
    ldh a, [rSVBK]                                ; $4b9d: $f0 $70
    ld [hl], b                                    ; $4b9f: $70
    ld a, h                                       ; $4ba0: $7c
    inc a                                         ; $4ba1: $3c
    ld bc, $0301                                  ; $4ba2: $01 $01 $03
    ld [bc], a                                    ; $4ba5: $02
    rlca                                          ; $4ba6: $07
    inc b                                         ; $4ba7: $04
    rlca                                          ; $4ba8: $07
    inc b                                         ; $4ba9: $04
    rst RST_00                                    ; $4baa: $c7

jr_002_4bab:
    push bc                                       ; $4bab: $c5
    rst RST_20                                    ; $4bac: $e7
    and [hl]                                      ; $4bad: $a6
    db $fd                                        ; $4bae: $fd
    db $db                                        ; $4baf: $db
    db $fd                                        ; $4bb0: $fd
    cp e                                          ; $4bb1: $bb
    db $fc                                        ; $4bb2: $fc
    sub a                                         ; $4bb3: $97
    rst RST_38                                    ; $4bb4: $ff
    sbc d                                         ; $4bb5: $9a
    rst RST_30                                    ; $4bb6: $f7
    sbc l                                         ; $4bb7: $9d
    ld a, e                                       ; $4bb8: $7b
    ld e, [hl]                                    ; $4bb9: $5e
    ld a, a                                       ; $4bba: $7f
    ld c, a                                       ; $4bbb: $4f
    add hl, sp                                    ; $4bbc: $39
    add hl, hl                                    ; $4bbd: $29
    inc e                                         ; $4bbe: $1c
    inc d                                         ; $4bbf: $14
    ld c, $0e                                     ; $4bc0: $0e $0e
    ldh a, [$fff0]                                ; $4bc2: $f0 $f0
    ret z                                         ; $4bc4: $c8

    jr c, jr_002_4bab                             ; $4bc5: $38 $e4

    inc e                                         ; $4bc7: $1c
    db $e4                                        ; $4bc8: $e4
    inc e                                         ; $4bc9: $1c
    db $f4                                        ; $4bca: $f4
    cp h                                          ; $4bcb: $bc
    db $ec                                        ; $4bcc: $ec
    cp h                                          ; $4bcd: $bc
    jp nc, Jump_000_113e                          ; $4bce: $d2 $3e $11

    rst RST_38                                    ; $4bd1: $ff
    db $ed                                        ; $4bd2: $ed
    ei                                            ; $4bd3: $fb
    ld sp, hl                                     ; $4bd4: $f9
    rla                                           ; $4bd5: $17
    sbc d                                         ; $4bd6: $9a
    ld [hl], a                                    ; $4bd7: $77
    db $f4                                        ; $4bd8: $f4
    db $ed                                        ; $4bd9: $ed
    call c, $90bc                                 ; $4bda: $dc $bc $90
    ld [hl], h                                    ; $4bdd: $74
    ldh a, [$fff0]                                ; $4bde: $f0 $f0
    ld a, h                                       ; $4be0: $7c
    inc a                                         ; $4be1: $3c
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    inc b                                         ; $4be4: $04
    inc b                                         ; $4be5: $04
    ld c, $0a                                     ; $4be6: $0e $0a
    ld a, [bc]                                    ; $4be8: $0a
    ld c, $fc                                     ; $4be9: $0e $fc
    ld l, h                                       ; $4beb: $6c
    sbc a                                         ; $4bec: $9f
    sbc [hl]                                      ; $4bed: $9e
    ld l, e                                       ; $4bee: $6b
    ld l, l                                       ; $4bef: $6d
    di                                            ; $4bf0: $f3
    db $fc                                        ; $4bf1: $fc
    ldh a, [$ffbf]                                ; $4bf2: $f0 $bf
    sub c                                         ; $4bf4: $91
    sbc a                                         ; $4bf5: $9f
    sbc e                                         ; $4bf6: $9b
    adc [hl]                                      ; $4bf7: $8e
    ld b, a                                       ; $4bf8: $47
    ld b, a                                       ; $4bf9: $47
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    ccf                                           ; $4bfc: $3f
    ccf                                           ; $4bfd: $3f
    rla                                           ; $4bfe: $17
    jr jr_002_4c10                                ; $4bff: $18 $0f

    rrca                                          ; $4c01: $0f
    nop                                           ; $4c02: $00
    nop                                           ; $4c03: $00
    jr nz, jr_002_4c26                            ; $4c04: $20 $20

    ld [hl], b                                    ; $4c06: $70
    ld d, b                                       ; $4c07: $50
    ld d, b                                       ; $4c08: $50
    ld [hl], b                                    ; $4c09: $70
    ccf                                           ; $4c0a: $3f
    ld [hl], $f9                                  ; $4c0b: $36 $f9
    ld a, c                                       ; $4c0d: $79
    sub $b6                                       ; $4c0e: $d6 $b6

jr_002_4c10:
    rst RST_08                                    ; $4c10: $cf
    ccf                                           ; $4c11: $3f
    rrca                                          ; $4c12: $0f
    db $fd                                        ; $4c13: $fd
    db $fd                                        ; $4c14: $fd
    db $fd                                        ; $4c15: $fd
    ei                                            ; $4c16: $fb
    daa                                           ; $4c17: $27
    ld a, [$72e6]                                 ; $4c18: $fa $e6 $72
    ld c, [hl]                                    ; $4c1b: $4e
    db $e4                                        ; $4c1c: $e4
    sbc h                                         ; $4c1d: $9c
    sbc b                                         ; $4c1e: $98
    ld a, b                                       ; $4c1f: $78
    ldh a, [$ffe0]                                ; $4c20: $f0 $e0
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    inc b                                         ; $4c24: $04
    inc b                                         ; $4c25: $04

jr_002_4c26:
    ld c, $0a                                     ; $4c26: $0e $0a
    ld a, [bc]                                    ; $4c28: $0a
    ld c, $fc                                     ; $4c29: $0e $fc
    ld l, h                                       ; $4c2b: $6c
    sbc a                                         ; $4c2c: $9f
    sbc [hl]                                      ; $4c2d: $9e
    ld l, e                                       ; $4c2e: $6b
    ld l, l                                       ; $4c2f: $6d
    di                                            ; $4c30: $f3
    db $fc                                        ; $4c31: $fc
    ldh a, [$ffbf]                                ; $4c32: $f0 $bf
    sbc c                                         ; $4c34: $99
    sbc a                                         ; $4c35: $9f
    sbc a                                         ; $4c36: $9f
    sub a                                         ; $4c37: $97
    ld c, a                                       ; $4c38: $4f
    ld c, b                                       ; $4c39: $48
    rlca                                          ; $4c3a: $07
    ld b, $03                                     ; $4c3b: $06 $03
    ld bc, $0000                                  ; $4c3d: $01 $00 $00
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    nop                                           ; $4c43: $00
    jr nz, jr_002_4c66                            ; $4c44: $20 $20

    ld [hl], b                                    ; $4c46: $70
    ld d, b                                       ; $4c47: $50
    ld d, b                                       ; $4c48: $50
    ld [hl], b                                    ; $4c49: $70
    ccf                                           ; $4c4a: $3f
    ld [hl], $f9                                  ; $4c4b: $36 $f9
    ld a, c                                       ; $4c4d: $79
    sub $b6                                       ; $4c4e: $d6 $b6
    rst RST_08                                    ; $4c50: $cf
    ccf                                           ; $4c51: $3f
    rrca                                          ; $4c52: $0f
    db $fd                                        ; $4c53: $fd
    db $fd                                        ; $4c54: $fd
    db $fd                                        ; $4c55: $fd
    rst RST_18                                    ; $4c56: $df
    inc sp                                        ; $4c57: $33
    jp c, $f2e6                                   ; $4c58: $da $e6 $f2

    ld c, $c6                                     ; $4c5b: $0e $c6
    cp h                                          ; $4c5d: $bc
    db $fc                                        ; $4c5e: $fc
    ld a, b                                       ; $4c5f: $78
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    add hl, sp                                    ; $4c62: $39
    add hl, sp                                    ; $4c63: $39
    ld b, [hl]                                    ; $4c64: $46
    ld b, a                                       ; $4c65: $47

jr_002_4c66:
    dec sp                                        ; $4c66: $3b
    dec sp                                        ; $4c67: $3b
    ld b, [hl]                                    ; $4c68: $46
    ld b, a                                       ; $4c69: $47
    dec sp                                        ; $4c6a: $3b
    dec sp                                        ; $4c6b: $3b
    ld b, l                                       ; $4c6c: $45
    ld b, [hl]                                    ; $4c6d: $46
    ld [hl], a                                    ; $4c6e: $77
    ld [hl], a                                    ; $4c6f: $77
    adc d                                         ; $4c70: $8a
    adc l                                         ; $4c71: $8d
    ld a, e                                       ; $4c72: $7b
    ld a, a                                       ; $4c73: $7f
    adc l                                         ; $4c74: $8d
    adc [hl]                                      ; $4c75: $8e
    dec a                                         ; $4c76: $3d
    ccf                                           ; $4c77: $3f
    ld b, [hl]                                    ; $4c78: $46
    ld b, a                                       ; $4c79: $47
    dec sp                                        ; $4c7a: $3b
    dec sp                                        ; $4c7b: $3b
    ld b, [hl]                                    ; $4c7c: $46
    ld b, a                                       ; $4c7d: $47
    inc bc                                        ; $4c7e: $03
    inc bc                                        ; $4c7f: $03
    ld bc, $ce01                                  ; $4c80: $01 $01 $ce
    adc $b1                                       ; $4c83: $ce $b1
    ld [hl], c                                    ; $4c85: $71
    xor $ee                                       ; $4c86: $ee $ee
    or c                                          ; $4c88: $b1
    ld [hl], c                                    ; $4c89: $71
    xor [hl]                                      ; $4c8a: $ae
    xor $71                                       ; $4c8b: $ee $71
    pop af                                        ; $4c8d: $f1
    ld e, h                                       ; $4c8e: $5c
    call c, $e2e2                                 ; $4c8f: $dc $e2 $e2
    sbc h                                         ; $4c92: $9c
    sbc h                                         ; $4c93: $9c
    ld h, d                                       ; $4c94: $62
    ldh [c], a                                    ; $4c95: $e2
    adc $ce                                       ; $4c96: $ce $ce
    or c                                          ; $4c98: $b1
    ld [hl], c                                    ; $4c99: $71
    xor $ee                                       ; $4c9a: $ee $ee
    or c                                          ; $4c9c: $b1
    ld [hl], c                                    ; $4c9d: $71
    ld h, b                                       ; $4c9e: $60
    ldh [$ffc0], a                                ; $4c9f: $e0 $c0
    ret nz                                        ; $4ca1: $c0

    rra                                           ; $4ca2: $1f
    rra                                           ; $4ca3: $1f
    ccf                                           ; $4ca4: $3f
    cpl                                           ; $4ca5: $2f
    rra                                           ; $4ca6: $1f
    rra                                           ; $4ca7: $1f
    ccf                                           ; $4ca8: $3f
    ccf                                           ; $4ca9: $3f
    add hl, hl                                    ; $4caa: $29
    cpl                                           ; $4cab: $2f
    rra                                           ; $4cac: $1f
    dec de                                        ; $4cad: $1b
    cpl                                           ; $4cae: $2f
    jr c, jr_002_4cf0                             ; $4caf: $38 $3f

    dec h                                         ; $4cb1: $25
    ld a, $2b                                     ; $4cb2: $3e $2b
    ccf                                           ; $4cb4: $3f
    ld a, [hl+]                                   ; $4cb5: $2a
    ccf                                           ; $4cb6: $3f
    dec h                                         ; $4cb7: $25
    rra                                           ; $4cb8: $1f
    ld [de], a                                    ; $4cb9: $12
    dec c                                         ; $4cba: $0d
    rrca                                          ; $4cbb: $0f
    dec bc                                        ; $4cbc: $0b
    dec c                                         ; $4cbd: $0d
    rrca                                          ; $4cbe: $0f
    rrca                                          ; $4cbf: $0f
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    db $fc                                        ; $4cc2: $fc
    ld a, h                                       ; $4cc3: $7c
    cp $fa                                        ; $4cc4: $fe $fa
    db $fc                                        ; $4cc6: $fc
    db $fc                                        ; $4cc7: $fc
    cp $fe                                        ; $4cc8: $fe $fe
    ld c, d                                       ; $4cca: $4a
    ld a, [$6cfc]                                 ; $4ccb: $fa $fc $6c
    ld a, [$fe0e]                                 ; $4cce: $fa $0e $fe
    jp nc, $eabe                                  ; $4cd1: $d2 $be $ea

    cp $2a                                        ; $4cd4: $fe $2a
    cp $d2                                        ; $4cd6: $fe $d2
    db $fc                                        ; $4cd8: $fc
    inc h                                         ; $4cd9: $24
    ld hl, sp-$48                                 ; $4cda: $f8 $b8
    ld d, b                                       ; $4cdc: $50
    ld [hl], b                                    ; $4cdd: $70
    ld l, b                                       ; $4cde: $68
    ld e, b                                       ; $4cdf: $58
    jr c, jr_002_4d1a                             ; $4ce0: $38 $38

    rlca                                          ; $4ce2: $07
    rlca                                          ; $4ce3: $07
    rra                                           ; $4ce4: $1f
    rra                                           ; $4ce5: $1f
    dec a                                         ; $4ce6: $3d
    inc hl                                        ; $4ce7: $23
    ld a, [hl]                                    ; $4ce8: $7e
    ld e, l                                       ; $4ce9: $5d
    ld a, e                                       ; $4cea: $7b
    ld h, [hl]                                    ; $4ceb: $66
    db $fd                                        ; $4cec: $fd
    jp $ddfe                                      ; $4ced: $c3 $fe $dd


jr_002_4cf0:
    rst RST_38                                    ; $4cf0: $ff
    sbc a                                         ; $4cf1: $9f
    rst RST_38                                    ; $4cf2: $ff
    and e                                         ; $4cf3: $a3
    rst RST_38                                    ; $4cf4: $ff
    and c                                         ; $4cf5: $a1
    rst RST_20                                    ; $4cf6: $e7
    db $fc                                        ; $4cf7: $fc
    db $db                                        ; $4cf8: $db
    sbc $c7                                       ; $4cf9: $de $c7
    rst RST_00                                    ; $4cfb: $c7
    ret nz                                        ; $4cfc: $c0

    ret nz                                        ; $4cfd: $c0

    ld b, b                                       ; $4cfe: $40
    ld b, b                                       ; $4cff: $40
    ld b, b                                       ; $4d00: $40
    ld b, b                                       ; $4d01: $40
    inc c                                         ; $4d02: $0c
    inc c                                         ; $4d03: $0c
    sbc [hl]                                      ; $4d04: $9e
    sub d                                         ; $4d05: $92
    rst RST_18                                    ; $4d06: $df
    ld d, c                                       ; $4d07: $51
    rst RST_30                                    ; $4d08: $f7
    cp c                                          ; $4d09: $b9
    ld a, c                                       ; $4d0a: $79
    rst RST_08                                    ; $4d0b: $cf
    cp a                                          ; $4d0c: $bf
    rst RST_08                                    ; $4d0d: $cf
    ld sp, hl                                     ; $4d0e: $f9
    adc a                                         ; $4d0f: $8f
    ld a, a                                       ; $4d10: $7f
    add [hl]                                      ; $4d11: $86
    ccf                                           ; $4d12: $3f
    ret nz                                        ; $4d13: $c0

    inc bc                                        ; $4d14: $03
    rst RST_38                                    ; $4d15: $ff
    adc a                                         ; $4d16: $8f
    db $fc                                        ; $4d17: $fc
    ld a, h                                       ; $4d18: $7c
    di                                            ; $4d19: $f3

jr_002_4d1a:
    di                                            ; $4d1a: $f3
    ld c, a                                       ; $4d1b: $4f
    rst RST_18                                    ; $4d1c: $df
    cp a                                          ; $4d1d: $bf
    rst RST_20                                    ; $4d1e: $e7
    db $e4                                        ; $4d1f: $e4
    inc bc                                        ; $4d20: $03
    inc bc                                        ; $4d21: $03
    jr jr_002_4d3c                                ; $4d22: $18 $18

    inc a                                         ; $4d24: $3c
    inc h                                         ; $4d25: $24
    ld a, l                                       ; $4d26: $7d
    ld b, l                                       ; $4d27: $45
    rst RST_30                                    ; $4d28: $f7
    adc $49                                       ; $4d29: $ce $49
    rst RST_38                                    ; $4d2b: $ff
    ld hl, sp+$7f                                 ; $4d2c: $f8 $7f
    ret z                                         ; $4d2e: $c8

    ld a, a                                       ; $4d2f: $7f
    rst RST_38                                    ; $4d30: $ff
    ccf                                           ; $4d31: $3f
    ld [hl], b                                    ; $4d32: $70
    rst RST_38                                    ; $4d33: $ff
    rst RST_38                                    ; $4d34: $ff
    add b                                         ; $4d35: $80
    rst RST_38                                    ; $4d36: $ff
    nop                                           ; $4d37: $00
    rlca                                          ; $4d38: $07
    ld hl, sp-$05                                 ; $4d39: $f8 $fb
    db $fc                                        ; $4d3b: $fc

jr_002_4d3c:
    db $fc                                        ; $4d3c: $fc
    rst RST_20                                    ; $4d3d: $e7
    ldh [c], a                                    ; $4d3e: $e2
    rra                                           ; $4d3f: $1f
    rst RST_38                                    ; $4d40: $ff
    rst RST_38                                    ; $4d41: $ff
    ld [hl], b                                    ; $4d42: $70
    ld [hl], b                                    ; $4d43: $70
    ld hl, sp-$08                                 ; $4d44: $f8 $f8
    db $f4                                        ; $4d46: $f4
    ld c, h                                       ; $4d47: $4c
    ld a, [$f69e]                                 ; $4d48: $fa $9e $f6
    ld l, $fa                                     ; $4d4b: $2e $fa
    add $ff                                       ; $4d4d: $c6 $ff
    sbc e                                         ; $4d4f: $9b
    db $ed                                        ; $4d50: $ed
    db $eb                                        ; $4d51: $eb
    ld h, l                                       ; $4d52: $65
    rst RST_20                                    ; $4d53: $e7
    dec d                                         ; $4d54: $15
    rst RST_30                                    ; $4d55: $f7
    srl e                                         ; $4d56: $cb $3b
    srl e                                         ; $4d58: $cb $3b
    adc e                                         ; $4d5a: $8b
    ld a, e                                       ; $4d5b: $7b
    dec bc                                        ; $4d5c: $0b
    ei                                            ; $4d5d: $fb
    ld [de], a                                    ; $4d5e: $12
    ldh a, [c]                                    ; $4d5f: $f2
    ldh [c], a                                    ; $4d60: $e2
    ldh [c], a                                    ; $4d61: $e2
    rlca                                          ; $4d62: $07
    rlca                                          ; $4d63: $07
    rra                                           ; $4d64: $1f
    rra                                           ; $4d65: $1f
    dec a                                         ; $4d66: $3d
    inc hl                                        ; $4d67: $23
    ld a, [hl]                                    ; $4d68: $7e
    ld e, l                                       ; $4d69: $5d
    ld a, e                                       ; $4d6a: $7b
    ld h, [hl]                                    ; $4d6b: $66
    db $fd                                        ; $4d6c: $fd
    jp $ddfe                                      ; $4d6d: $c3 $fe $dd


    rst RST_38                                    ; $4d70: $ff
    sbc a                                         ; $4d71: $9f
    rst RST_38                                    ; $4d72: $ff
    and e                                         ; $4d73: $a3
    rst RST_38                                    ; $4d74: $ff
    and c                                         ; $4d75: $a1
    rst RST_20                                    ; $4d76: $e7
    db $fc                                        ; $4d77: $fc
    db $db                                        ; $4d78: $db
    sbc $c7                                       ; $4d79: $de $c7
    rst RST_00                                    ; $4d7b: $c7
    ret nz                                        ; $4d7c: $c0

    ret nz                                        ; $4d7d: $c0

    ld b, b                                       ; $4d7e: $40
    ld b, b                                       ; $4d7f: $40
    ld b, b                                       ; $4d80: $40
    ld b, b                                       ; $4d81: $40
    inc c                                         ; $4d82: $0c
    inc c                                         ; $4d83: $0c
    sbc [hl]                                      ; $4d84: $9e
    sub d                                         ; $4d85: $92
    rst RST_18                                    ; $4d86: $df
    ld d, c                                       ; $4d87: $51
    rst RST_30                                    ; $4d88: $f7
    cp c                                          ; $4d89: $b9
    ld a, c                                       ; $4d8a: $79
    rst RST_08                                    ; $4d8b: $cf
    cp a                                          ; $4d8c: $bf
    rst RST_08                                    ; $4d8d: $cf
    rst RST_38                                    ; $4d8e: $ff
    adc a                                         ; $4d8f: $8f
    ld a, [hl]                                    ; $4d90: $7e
    cp a                                          ; $4d91: $bf
    rst RST_38                                    ; $4d92: $ff
    ret nz                                        ; $4d93: $c0

    rst RST_38                                    ; $4d94: $ff
    ccf                                           ; $4d95: $3f
    ret nz                                        ; $4d96: $c0

    rst RST_38                                    ; $4d97: $ff
    ld e, h                                       ; $4d98: $5c
    db $e3                                        ; $4d99: $e3
    rst RST_38                                    ; $4d9a: $ff
    ld a, a                                       ; $4d9b: $7f
    add a                                         ; $4d9c: $87
    add a                                         ; $4d9d: $87
    rlca                                          ; $4d9e: $07
    inc b                                         ; $4d9f: $04
    inc bc                                        ; $4da0: $03
    inc bc                                        ; $4da1: $03
    jr jr_002_4dbc                                ; $4da2: $18 $18

    inc a                                         ; $4da4: $3c
    inc h                                         ; $4da5: $24
    ld a, l                                       ; $4da6: $7d
    ld b, l                                       ; $4da7: $45
    rst RST_30                                    ; $4da8: $f7
    adc $49                                       ; $4da9: $ce $49
    rst RST_38                                    ; $4dab: $ff
    ld hl, sp+$7f                                 ; $4dac: $f8 $7f
    cp $ff                                        ; $4dae: $fe $ff
    ld bc, $fcff                                  ; $4db0: $01 $ff $fc
    inc bc                                        ; $4db3: $03
    rst RST_38                                    ; $4db4: $ff
    add b                                         ; $4db5: $80
    ld a, a                                       ; $4db6: $7f
    ldh a, [$ff0b]                                ; $4db7: $f0 $0b
    db $fc                                        ; $4db9: $fc
    rst RST_38                                    ; $4dba: $ff
    db $fc                                        ; $4dbb: $fc

jr_002_4dbc:
    db $fd                                        ; $4dbc: $fd
    and $e2                                       ; $4dbd: $e6 $e2
    rra                                           ; $4dbf: $1f
    rst RST_38                                    ; $4dc0: $ff
    rst RST_38                                    ; $4dc1: $ff
    ld [hl], b                                    ; $4dc2: $70
    ld [hl], b                                    ; $4dc3: $70
    ld hl, sp-$08                                 ; $4dc4: $f8 $f8
    db $f4                                        ; $4dc6: $f4
    ld c, h                                       ; $4dc7: $4c
    ld a, [$f69e]                                 ; $4dc8: $fa $9e $f6
    ld l, $fa                                     ; $4dcb: $2e $fa
    add $ff                                       ; $4dcd: $c6 $ff
    sbc e                                         ; $4dcf: $9b
    db $ed                                        ; $4dd0: $ed
    db $eb                                        ; $4dd1: $eb
    ld h, l                                       ; $4dd2: $65
    rst RST_20                                    ; $4dd3: $e7
    dec d                                         ; $4dd4: $15
    rst RST_30                                    ; $4dd5: $f7
    sub e                                         ; $4dd6: $93
    ld [hl], e                                    ; $4dd7: $73
    srl e                                         ; $4dd8: $cb $3b
    srl e                                         ; $4dda: $cb $3b
    adc e                                         ; $4ddc: $8b
    ld a, e                                       ; $4ddd: $7b
    ld [de], a                                    ; $4dde: $12
    ldh a, [c]                                    ; $4ddf: $f2
    ldh [c], a                                    ; $4de0: $e2
    ldh [c], a                                    ; $4de1: $e2
    rlca                                          ; $4de2: $07
    rlca                                          ; $4de3: $07
    add hl, de                                    ; $4de4: $19
    ld e, $0f                                     ; $4de5: $1e $0f
    jr z, jr_002_4e08                             ; $4de7: $28 $1f

    inc d                                         ; $4de9: $14
    dec sp                                        ; $4dea: $3b
    daa                                           ; $4deb: $27
    ccf                                           ; $4dec: $3f
    ld d, e                                       ; $4ded: $53
    rra                                           ; $4dee: $1f
    inc d                                         ; $4def: $14
    cpl                                           ; $4df0: $2f
    inc sp                                        ; $4df1: $33
    ld e, a                                       ; $4df2: $5f
    ld h, c                                       ; $4df3: $61
    ld a, a                                       ; $4df4: $7f
    ld c, b                                       ; $4df5: $48
    ld [hl], a                                    ; $4df6: $77
    ld e, b                                       ; $4df7: $58
    ld a, d                                       ; $4df8: $7a
    ld e, l                                       ; $4df9: $5d
    ld a, [hl-]                                   ; $4dfa: $3a
    dec a                                         ; $4dfb: $3d
    inc d                                         ; $4dfc: $14
    rla                                           ; $4dfd: $17
    inc bc                                        ; $4dfe: $03
    inc bc                                        ; $4dff: $03
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    ldh a, [$fff0]                                ; $4e02: $f0 $f0
    call z, $f83c                                 ; $4e04: $cc $3c $f8
    ld a, [bc]                                    ; $4e07: $0a

jr_002_4e08:
    db $fc                                        ; $4e08: $fc
    inc d                                         ; $4e09: $14
    xor $72                                       ; $4e0a: $ee $72
    cp $65                                        ; $4e0c: $fe $65
    db $fc                                        ; $4e0e: $fc
    inc d                                         ; $4e0f: $14
    ld a, [$fde6]                                 ; $4e10: $fa $e6 $fd
    jp $19ef                                      ; $4e13: $c3 $ef $19


    rst RST_30                                    ; $4e16: $f7
    dec c                                         ; $4e17: $0d
    rst RST_10                                    ; $4e18: $d7
    dec l                                         ; $4e19: $2d
    sub $2e                                       ; $4e1a: $d6 $2e
    ld b, h                                       ; $4e1c: $44
    cp h                                          ; $4e1d: $bc
    ld [$fef8], sp                                ; $4e1e: $08 $f8 $fe
    cp $7f                                        ; $4e21: $fe $7f
    ld a, a                                       ; $4e23: $7f
    cp $81                                        ; $4e24: $fe $81
    jp hl                                         ; $4e26: $e9


    sbc $d5                                       ; $4e27: $de $d5
    xor e                                         ; $4e29: $ab
    ld a, a                                       ; $4e2a: $7f
    ld a, a                                       ; $4e2b: $7f
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    nop                                           ; $4e2e: $00
    nop                                           ; $4e2f: $00
    rlca                                          ; $4e30: $07
    rlca                                          ; $4e31: $07
    ld [$300f], sp                                ; $4e32: $08 $0f $30
    ccf                                           ; $4e35: $3f
    ld h, a                                       ; $4e36: $67
    ld a, b                                       ; $4e37: $78
    rst RST_28                                    ; $4e38: $ef
    ld [hl], b                                    ; $4e39: $70
    rst RST_28                                    ; $4e3a: $ef
    or b                                          ; $4e3b: $b0
    rst RST_28                                    ; $4e3c: $ef
    or e                                          ; $4e3d: $b3
    rst RST_38                                    ; $4e3e: $ff
    sub h                                         ; $4e3f: $94
    db $fd                                        ; $4e40: $fd
    sub a                                         ; $4e41: $97
    sbc b                                         ; $4e42: $98
    sbc b                                         ; $4e43: $98
    cp $e6                                        ; $4e44: $fe $e6
    ld [hl], l                                    ; $4e46: $75
    rst RST_08                                    ; $4e47: $cf
    ld b, [hl]                                    ; $4e48: $46
    cp $bc                                        ; $4e49: $fe $bc
    cp h                                          ; $4e4b: $bc
    ld [de], a                                    ; $4e4c: $12
    ld e, $1a                                     ; $4e4d: $1e $1a
    ld d, $ca                                     ; $4e4f: $16 $ca
    adc $2d                                       ; $4e51: $ce $2d
    db $eb                                        ; $4e53: $eb
    dec e                                         ; $4e54: $1d
    ei                                            ; $4e55: $fb
    adc l                                         ; $4e56: $8d
    ld a, e                                       ; $4e57: $7b
    call $cd3b                                    ; $4e58: $cd $3b $cd
    dec sp                                        ; $4e5b: $3b
    call $d5bb                                    ; $4e5c: $cd $bb $d5
    ld a, e                                       ; $4e5f: $7b
    ld e, c                                       ; $4e60: $59
    rst RST_30                                    ; $4e61: $f7
    rst RST_28                                    ; $4e62: $ef
    sbc e                                         ; $4e63: $9b
    rst RST_18                                    ; $4e64: $df
    cp h                                          ; $4e65: $bc
    db $d3                                        ; $4e66: $d3

Jump_002_4e67:
    cp a                                          ; $4e67: $bf
    ret c                                         ; $4e68: $d8

    cp a                                          ; $4e69: $bf
    and $9f                                       ; $4e6a: $e6 $9f
    db $fd                                        ; $4e6c: $fd
    ld b, e                                       ; $4e6d: $43
    ld [hl], a                                    ; $4e6e: $77
    ld c, a                                       ; $4e6f: $4f
    ld a, [hl]                                    ; $4e70: $7e
    ld c, [hl]                                    ; $4e71: $4e
    ld a, [hl-]                                   ; $4e72: $3a
    ld h, $7e                                     ; $4e73: $26 $7e
    ld e, [hl]                                    ; $4e75: $5e
    ld [hl], h                                    ; $4e76: $74
    ld c, h                                       ; $4e77: $4c
    ld l, b                                       ; $4e78: $68
    ld e, b                                       ; $4e79: $58
    jr nc, jr_002_4eac                            ; $4e7a: $30 $30

    nop                                           ; $4e7c: $00
    nop                                           ; $4e7d: $00
    nop                                           ; $4e7e: $00
    nop                                           ; $4e7f: $00
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    xor d                                         ; $4e82: $aa
    or $42                                        ; $4e83: $f6 $42
    cp $94                                        ; $4e85: $fe $94
    db $ec                                        ; $4e87: $ec
    inc [hl]                                      ; $4e88: $34
    call z, Call_000_18ec                         ; $4e89: $cc $ec $18
    ld c, b                                       ; $4e8c: $48
    cp b                                          ; $4e8d: $b8
    ld h, h                                       ; $4e8e: $64
    sbc h                                         ; $4e8f: $9c
    db $f4                                        ; $4e90: $f4
    adc h                                         ; $4e91: $8c
    db $f4                                        ; $4e92: $f4
    adc h                                         ; $4e93: $8c
    db $f4                                        ; $4e94: $f4
    adc h                                         ; $4e95: $8c
    and h                                         ; $4e96: $a4
    call c, Call_002_7c4c                         ; $4e97: $dc $4c $7c
    ldh a, [c]                                    ; $4e9a: $f2
    cp [hl]                                       ; $4e9b: $be
    ldh a, [c]                                    ; $4e9c: $f2
    adc [hl]                                      ; $4e9d: $8e
    ldh a, [c]                                    ; $4e9e: $f2
    adc [hl]                                      ; $4e9f: $8e
    ld a, h                                       ; $4ea0: $7c
    ld a, h                                       ; $4ea1: $7c
    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    nop                                           ; $4ea4: $00
    nop                                           ; $4ea5: $00
    nop                                           ; $4ea6: $00
    nop                                           ; $4ea7: $00
    nop                                           ; $4ea8: $00
    nop                                           ; $4ea9: $00
    nop                                           ; $4eaa: $00
    nop                                           ; $4eab: $00

jr_002_4eac:
    nop                                           ; $4eac: $00
    nop                                           ; $4ead: $00
    nop                                           ; $4eae: $00
    nop                                           ; $4eaf: $00
    rlca                                          ; $4eb0: $07
    rlca                                          ; $4eb1: $07
    ld [$300f], sp                                ; $4eb2: $08 $0f $30
    ccf                                           ; $4eb5: $3f
    ld h, a                                       ; $4eb6: $67
    ld a, b                                       ; $4eb7: $78
    rst RST_28                                    ; $4eb8: $ef
    ld [hl], b                                    ; $4eb9: $70
    rst RST_28                                    ; $4eba: $ef
    or b                                          ; $4ebb: $b0
    rst RST_28                                    ; $4ebc: $ef
    or e                                          ; $4ebd: $b3
    rst RST_38                                    ; $4ebe: $ff
    sub h                                         ; $4ebf: $94
    db $fd                                        ; $4ec0: $fd
    sub a                                         ; $4ec1: $97
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00

jr_002_4ece:
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    ret nz                                        ; $4ed0: $c0

    ret nz                                        ; $4ed1: $c0

    jr nz, @-$1e                                  ; $4ed2: $20 $e0

    jr jr_002_4ece                                ; $4ed4: $18 $f8

    adc h                                         ; $4ed6: $8c
    ld a, h                                       ; $4ed7: $7c
    adc $3a                                       ; $4ed8: $ce $3a
    call $cd3b                                    ; $4eda: $cd $3b $cd
    cp e                                          ; $4edd: $bb
    push de                                       ; $4ede: $d5
    ld a, e                                       ; $4edf: $7b
    ld e, c                                       ; $4ee0: $59
    rst RST_30                                    ; $4ee1: $f7
    rst RST_28                                    ; $4ee2: $ef
    sbc e                                         ; $4ee3: $9b
    rst RST_18                                    ; $4ee4: $df
    cp h                                          ; $4ee5: $bc
    db $d3                                        ; $4ee6: $d3
    cp a                                          ; $4ee7: $bf
    ret c                                         ; $4ee8: $d8

    cp a                                          ; $4ee9: $bf
    and $9f                                       ; $4eea: $e6 $9f
    db $fd                                        ; $4eec: $fd
    ld b, e                                       ; $4eed: $43
    ld [hl], a                                    ; $4eee: $77
    ld c, a                                       ; $4eef: $4f
    ld a, a                                       ; $4ef0: $7f
    ld c, [hl]                                    ; $4ef1: $4e
    ccf                                           ; $4ef2: $3f
    jr z, jr_002_4f73                             ; $4ef3: $28 $7e

    ld d, e                                       ; $4ef5: $53
    ld a, [hl]                                    ; $4ef6: $7e
    ld h, l                                       ; $4ef7: $65
    ld a, l                                       ; $4ef8: $7d
    ld b, e                                       ; $4ef9: $43
    ld a, [$f496]                                 ; $4efa: $fa $96 $f4
    adc h                                         ; $4efd: $8c
    xor b                                         ; $4efe: $a8
    ret c                                         ; $4eff: $d8

    ld [hl], b                                    ; $4f00: $70
    ld [hl], b                                    ; $4f01: $70
    cp c                                          ; $4f02: $b9
    rst RST_30                                    ; $4f03: $f7
    ld a, e                                       ; $4f04: $7b
    rst RST_30                                    ; $4f05: $f7
    di                                            ; $4f06: $f3
    rst RST_28                                    ; $4f07: $ef
    or $ee                                        ; $4f08: $f6 $ee
    cp $8e                                        ; $4f0a: $fe $8e
    db $ec                                        ; $4f0c: $ec
    inc e                                         ; $4f0d: $1c
    call z, $dcbc                                 ; $4f0e: $cc $bc $dc
    ld a, h                                       ; $4f11: $7c
    ld [hl], h                                    ; $4f12: $74

jr_002_4f13:
    db $ec                                        ; $4f13: $ec
    db $f4                                        ; $4f14: $f4
    adc h                                         ; $4f15: $8c
    and h                                         ; $4f16: $a4
    call c, Call_002_7c4c                         ; $4f17: $dc $4c $7c
    ldh a, [c]                                    ; $4f1a: $f2
    cp [hl]                                       ; $4f1b: $be
    ldh a, [c]                                    ; $4f1c: $f2
    adc [hl]                                      ; $4f1d: $8e
    ldh a, [c]                                    ; $4f1e: $f2
    adc [hl]                                      ; $4f1f: $8e
    ld a, h                                       ; $4f20: $7c
    ld a, h                                       ; $4f21: $7c
    ld h, [hl]                                    ; $4f22: $66
    ld h, [hl]                                    ; $4f23: $66
    ld [hl], l                                    ; $4f24: $75
    ld d, a                                       ; $4f25: $57
    dec hl                                        ; $4f26: $2b
    inc a                                         ; $4f27: $3c
    rla                                           ; $4f28: $17
    jr jr_002_4f42                                ; $4f29: $18 $17

    jr jr_002_4f44                                ; $4f2b: $18 $17

    jr jr_002_4f86                                ; $4f2d: $18 $57

    ld e, [hl]                                    ; $4f2f: $5e
    ld [hl], a                                    ; $4f30: $77
    ld a, l                                       ; $4f31: $7d
    ccf                                           ; $4f32: $3f
    dec hl                                        ; $4f33: $2b
    rra                                           ; $4f34: $1f
    dec d                                         ; $4f35: $15
    rrca                                          ; $4f36: $0f
    ld a, [bc]                                    ; $4f37: $0a
    rrca                                          ; $4f38: $0f
    ld c, $0d                                     ; $4f39: $0e $0d
    rrca                                          ; $4f3b: $0f
    ld a, [bc]                                    ; $4f3c: $0a
    rrca                                          ; $4f3d: $0f
    ld de, $101f                                  ; $4f3e: $11 $1f $10
    rra                                           ; $4f41: $1f

jr_002_4f42:
    inc sp                                        ; $4f42: $33
    inc sp                                        ; $4f43: $33

jr_002_4f44:
    rst RST_10                                    ; $4f44: $d7
    push af                                       ; $4f45: $f5
    ld l, d                                       ; $4f46: $6a
    sbc [hl]                                      ; $4f47: $9e
    db $f4                                        ; $4f48: $f4
    inc c                                         ; $4f49: $0c
    ld [hl], h                                    ; $4f4a: $74
    adc h                                         ; $4f4b: $8c
    ld [hl], h                                    ; $4f4c: $74
    adc h                                         ; $4f4d: $8c
    ld [hl], l                                    ; $4f4e: $75
    cp l                                          ; $4f4f: $bd
    rst RST_30                                    ; $4f50: $f7
    ld e, a                                       ; $4f51: $5f
    cp $6a                                        ; $4f52: $fe $6a
    db $fc                                        ; $4f54: $fc
    ld d, h                                       ; $4f55: $54
    ld hl, sp+$28                                 ; $4f56: $f8 $28
    ld a, b                                       ; $4f58: $78
    cp b                                          ; $4f59: $b8
    ret c                                         ; $4f5a: $d8

    ld hl, sp+$38                                 ; $4f5b: $f8 $38
    ld hl, sp-$28                                 ; $4f5d: $f8 $d8
    ld hl, sp+$10                                 ; $4f5f: $f8 $10
    ldh a, [rNR22]                                ; $4f61: $f0 $17
    jr jr_002_4f84                                ; $4f63: $18 $1f

    jr jr_002_4f8f                                ; $4f65: $18 $28

    scf                                           ; $4f67: $37
    cpl                                           ; $4f68: $2f
    jr nc, jr_002_4faa                            ; $4f69: $30 $3f

    jr nc, jr_002_4f8d                            ; $4f6b: $30 $20

    ccf                                           ; $4f6d: $3f
    cpl                                           ; $4f6e: $2f
    jr nc, jr_002_4fb0                            ; $4f6f: $30 $3f

    jr nc, jr_002_4f13                            ; $4f71: $30 $a0

jr_002_4f73:
    cp a                                          ; $4f73: $bf
    xor a                                         ; $4f74: $af
    or b                                          ; $4f75: $b0
    rla                                           ; $4f76: $17
    jr jr_002_4f89                                ; $4f77: $18 $10

    rra                                           ; $4f79: $1f
    sub a                                         ; $4f7a: $97
    sbc b                                         ; $4f7b: $98
    sbc e                                         ; $4f7c: $9b
    adc h                                         ; $4f7d: $8c
    ld c, h                                       ; $4f7e: $4c
    ld b, a                                       ; $4f7f: $47
    scf                                           ; $4f80: $37
    inc sp                                        ; $4f81: $33
    or b                                          ; $4f82: $b0
    ld [hl], b                                    ; $4f83: $70

jr_002_4f84:
    or b                                          ; $4f84: $b0
    ld [hl], b                                    ; $4f85: $70

jr_002_4f86:
    ld [hl], b                                    ; $4f86: $70
    ldh a, [$ffa0]                                ; $4f87: $f0 $a0

jr_002_4f89:
    ld h, b                                       ; $4f89: $60
    and b                                         ; $4f8a: $a0
    ld h, b                                       ; $4f8b: $60
    ld h, b                                       ; $4f8c: $60

jr_002_4f8d:
    ldh [$ffb2], a                                ; $4f8d: $e0 $b2

jr_002_4f8f:
    ld [hl], d                                    ; $4f8f: $72
    xor c                                         ; $4f90: $a9
    ld l, c                                       ; $4f91: $69
    ld h, c                                       ; $4f92: $61
    pop hl                                        ; $4f93: $e1
    or c                                          ; $4f94: $b1
    ld [hl], c                                    ; $4f95: $71
    or c                                          ; $4f96: $b1
    ld [hl], c                                    ; $4f97: $71
    ld [hl], h                                    ; $4f98: $74
    db $f4                                        ; $4f99: $f4
    or l                                          ; $4f9a: $b5
    ld [hl], l                                    ; $4f9b: $75
    or h                                          ; $4f9c: $b4
    ld h, h                                       ; $4f9d: $64
    ld l, b                                       ; $4f9e: $68
    ret z                                         ; $4f9f: $c8

    ldh a, [$ffb0]                                ; $4fa0: $f0 $b0
    ld c, $0e                                     ; $4fa2: $0e $0e
    dec bc                                        ; $4fa4: $0b
    dec c                                         ; $4fa5: $0d
    rlca                                          ; $4fa6: $07
    inc b                                         ; $4fa7: $04
    rrca                                          ; $4fa8: $0f
    dec bc                                        ; $4fa9: $0b

jr_002_4faa:
    rrca                                          ; $4faa: $0f
    ld a, [bc]                                    ; $4fab: $0a
    ccf                                           ; $4fac: $3f
    add hl, sp                                    ; $4fad: $39
    ld b, a                                       ; $4fae: $47
    ld a, b                                       ; $4faf: $78

jr_002_4fb0:
    ld hl, sp-$39                                 ; $4fb0: $f8 $c7
    rst RST_08                                    ; $4fb2: $cf
    or b                                          ; $4fb3: $b0
    or $b9                                        ; $4fb4: $f6 $b9
    pop af                                        ; $4fb6: $f1
    cp a                                          ; $4fb7: $bf
    sub $da                                       ; $4fb8: $d6 $da
    inc h                                         ; $4fba: $24
    inc a                                         ; $4fbb: $3c
    ld e, h                                       ; $4fbc: $5c
    ld h, h                                       ; $4fbd: $64
    cp h                                          ; $4fbe: $bc
    call c, $e0e0                                 ; $4fbf: $dc $e0 $e0
    ld c, $0e                                     ; $4fc2: $0e $0e
    ld a, [$fcf6]                                 ; $4fc4: $fa $f6 $fc
    inc b                                         ; $4fc7: $04
    cp $1a                                        ; $4fc8: $fe $1a
    cp [hl]                                       ; $4fca: $be
    ld [$f3bd], a                                 ; $4fcb: $ea $bd $f3
    cp $01                                        ; $4fce: $fe $01
    inc bc                                        ; $4fd0: $03
    db $fc                                        ; $4fd1: $fc
    db $fc                                        ; $4fd2: $fc
    inc bc                                        ; $4fd3: $03
    rrca                                          ; $4fd4: $0f
    ldh a, [$fff8]                                ; $4fd5: $f0 $f8
    rst RST_38                                    ; $4fd7: $ff
    rlca                                          ; $4fd8: $07
    inc b                                         ; $4fd9: $04
    inc b                                         ; $4fda: $04
    rlca                                          ; $4fdb: $07
    dec bc                                        ; $4fdc: $0b
    dec c                                         ; $4fdd: $0d
    ld c, $0e                                     ; $4fde: $0e $0e
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    ld [hl], b                                    ; $4fe2: $70
    ld [hl], b                                    ; $4fe3: $70
    ld e, a                                       ; $4fe4: $5f
    ld l, a                                       ; $4fe5: $6f
    ccf                                           ; $4fe6: $3f
    jr nz, jr_002_5068                            ; $4fe7: $20 $7f

    ld e, b                                       ; $4fe9: $58
    ld a, l                                       ; $4fea: $7d
    ld d, a                                       ; $4feb: $57
    cp l                                          ; $4fec: $bd
    rst RST_08                                    ; $4fed: $cf
    ld a, a                                       ; $4fee: $7f
    add b                                         ; $4fef: $80
    ret nz                                        ; $4ff0: $c0

    ccf                                           ; $4ff1: $3f
    ccf                                           ; $4ff2: $3f
    ret nz                                        ; $4ff3: $c0

    ldh a, [rIF]                                  ; $4ff4: $f0 $0f
    rrca                                          ; $4ff6: $0f
    rst RST_38                                    ; $4ff7: $ff
    ret nc                                        ; $4ff8: $d0

    jr nc, jr_002_501b                            ; $4ff9: $30 $20

    ldh [$ffa0], a                                ; $4ffb: $e0 $a0
    ld h, b                                       ; $4ffd: $60
    ret nc                                        ; $4ffe: $d0

    or b                                          ; $4fff: $b0
    ld [hl], b                                    ; $5000: $70
    ld [hl], b                                    ; $5001: $70
    ld [hl], b                                    ; $5002: $70
    ld [hl], b                                    ; $5003: $70
    db $d3                                        ; $5004: $d3
    or e                                          ; $5005: $b3
    rst RST_20                                    ; $5006: $e7
    dec h                                         ; $5007: $25
    rst RST_30                                    ; $5008: $f7
    push de                                       ; $5009: $d5
    rst RST_30                                    ; $500a: $f7
    ld d, l                                       ; $500b: $55
    db $fd                                        ; $500c: $fd
    sbc e                                         ; $500d: $9b
    ldh [c], a                                    ; $500e: $e2
    ld e, $1a                                     ; $500f: $1e $1a
    and $f4                                       ; $5011: $e6 $f4
    inc c                                         ; $5013: $0c
    ld l, b                                       ; $5014: $68
    sbc b                                         ; $5015: $98
    ret z                                         ; $5016: $c8

    ld hl, sp+$24                                 ; $5017: $f8 $24
    inc a                                         ; $5019: $3c
    ld a, [hl-]                                   ; $501a: $3a

jr_002_501b:
    ld h, $3d                                     ; $501b: $26 $3d
    dec sp                                        ; $501d: $3b
    rlca                                          ; $501e: $07
    rlca                                          ; $501f: $07
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    rrca                                          ; $5022: $0f
    rrca                                          ; $5023: $0f
    scf                                           ; $5024: $37
    jr c, jr_002_5086                             ; $5025: $38 $5f

    ld h, b                                       ; $5027: $60
    ld e, l                                       ; $5028: $5d
    ld h, [hl]                                    ; $5029: $66
    ld e, a                                       ; $502a: $5f
    ld l, b                                       ; $502b: $68
    ccf                                           ; $502c: $3f
    ld a, [hl+]                                   ; $502d: $2a
    ccf                                           ; $502e: $3f
    dec hl                                        ; $502f: $2b
    ld a, a                                       ; $5030: $7f
    ld e, l                                       ; $5031: $5d
    ld a, e                                       ; $5032: $7b
    halt                                          ; $5033: $76
    ld a, a                                       ; $5034: $7f
    ld e, d                                       ; $5035: $5a
    ld a, e                                       ; $5036: $7b
    ld e, l                                       ; $5037: $5d
    ld l, [hl]                                    ; $5038: $6e
    ld l, l                                       ; $5039: $6d
    rrca                                          ; $503a: $0f
    ld a, [bc]                                    ; $503b: $0a
    dec d                                         ; $503c: $15
    dec de                                        ; $503d: $1b
    ld e, $1e                                     ; $503e: $1e $1e
    nop                                           ; $5040: $00
    nop                                           ; $5041: $00
    ld hl, sp-$08                                 ; $5042: $f8 $f8
    or $0e                                        ; $5044: $f6 $0e
    db $fd                                        ; $5046: $fd
    inc bc                                        ; $5047: $03
    db $dd                                        ; $5048: $dd
    inc sp                                        ; $5049: $33
    db $fd                                        ; $504a: $fd
    dec bc                                        ; $504b: $0b
    cp $2a                                        ; $504c: $fe $2a
    cp $6a                                        ; $504e: $fe $6a
    rst RST_38                                    ; $5050: $ff
    ld e, l                                       ; $5051: $5d
    rst RST_28                                    ; $5052: $ef
    scf                                           ; $5053: $37
    cp $2a                                        ; $5054: $fe $2a
    rst RST_28                                    ; $5056: $ef
    db $dd                                        ; $5057: $dd
    ccf                                           ; $5058: $3f
    db $dd                                        ; $5059: $dd
    db $eb                                        ; $505a: $eb
    dec sp                                        ; $505b: $3b
    ld hl, sp-$38                                 ; $505c: $f8 $c8
    ld d, h                                       ; $505e: $54
    ld l, h                                       ; $505f: $6c
    inc a                                         ; $5060: $3c
    inc a                                         ; $5061: $3c
    jr nz, jr_002_5084                            ; $5062: $20 $20

    inc hl                                        ; $5064: $23
    inc hl                                        ; $5065: $23
    ld [hl], l                                    ; $5066: $75
    ld d, a                                       ; $5067: $57

jr_002_5068:
    ld [hl], a                                    ; $5068: $77
    ld d, l                                       ; $5069: $55
    ld [hl], a                                    ; $506a: $77
    ld d, l                                       ; $506b: $55
    ld a, a                                       ; $506c: $7f
    ld e, h                                       ; $506d: $5c
    ld a, a                                       ; $506e: $7f
    ld d, [hl]                                    ; $506f: $56
    ld [hl], a                                    ; $5070: $77
    ld e, l                                       ; $5071: $5d
    ld a, a                                       ; $5072: $7f
    ld e, [hl]                                    ; $5073: $5e
    dec [hl]                                      ; $5074: $35
    ccf                                           ; $5075: $3f
    ld a, d                                       ; $5076: $7a
    ld e, e                                       ; $5077: $5b
    ld [hl], a                                    ; $5078: $77
    ld d, a                                       ; $5079: $57
    ld h, $25                                     ; $507a: $26 $25
    rlca                                          ; $507c: $07
    dec b                                         ; $507d: $05
    dec c                                         ; $507e: $0d
    dec bc                                        ; $507f: $0b
    ld c, $0e                                     ; $5080: $0e $0e
    ld hl, sp-$08                                 ; $5082: $f8 $f8

jr_002_5084:
    rst RST_38                                    ; $5084: $ff
    ld a, a                                       ; $5085: $7f

jr_002_5086:
    sbc $7e                                       ; $5086: $de $7e
    ld d, b                                       ; $5088: $50
    ldh a, [rRP]                                  ; $5089: $f0 $56
    or $dd                                        ; $508b: $f6 $dd
    cp e                                          ; $508d: $bb
    cp l                                          ; $508e: $bd
    ld [hl], e                                    ; $508f: $73
    jp nc, $befe                                  ; $5090: $d2 $fe $be

    ld a, [hl]                                    ; $5093: $7e
    jp c, $27fe                                   ; $5094: $da $fe $27

    push hl                                       ; $5097: $e5
    rst RST_30                                    ; $5098: $f7
    push af                                       ; $5099: $f5
    ldh a, [c]                                    ; $509a: $f2
    jp nc, Jump_002_7070                          ; $509b: $d2 $70 $70

    nop                                           ; $509e: $00
    nop                                           ; $509f: $00
    nop                                           ; $50a0: $00
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    nop                                           ; $50a3: $00
    inc bc                                        ; $50a4: $03
    inc bc                                        ; $50a5: $03
    dec h                                         ; $50a6: $25
    daa                                           ; $50a7: $27
    daa                                           ; $50a8: $27
    dec h                                         ; $50a9: $25
    ld [hl], a                                    ; $50aa: $77
    ld d, l                                       ; $50ab: $55
    ld [hl], a                                    ; $50ac: $77
    ld d, h                                       ; $50ad: $54
    ld a, a                                       ; $50ae: $7f
    ld e, [hl]                                    ; $50af: $5e
    ld a, a                                       ; $50b0: $7f
    ld d, l                                       ; $50b1: $55
    ld [hl], a                                    ; $50b2: $77
    ld e, [hl]                                    ; $50b3: $5e
    ld a, l                                       ; $50b4: $7d
    ld e, a                                       ; $50b5: $5f
    halt                                          ; $50b6: $76
    ld e, a                                       ; $50b7: $5f
    ccf                                           ; $50b8: $3f
    ccf                                           ; $50b9: $3f
    halt                                          ; $50ba: $76
    ld d, l                                       ; $50bb: $55
    ld [hl], a                                    ; $50bc: $77
    ld d, l                                       ; $50bd: $55
    dec l                                         ; $50be: $2d
    dec hl                                        ; $50bf: $2b
    ld c, $0e                                     ; $50c0: $0e $0e
    ld hl, sp-$08                                 ; $50c2: $f8 $f8
    rst RST_38                                    ; $50c4: $ff
    ld a, a                                       ; $50c5: $7f
    sbc $7e                                       ; $50c6: $de $7e
    ld d, b                                       ; $50c8: $50
    ldh a, [rRP]                                  ; $50c9: $f0 $56
    or $dd                                        ; $50cb: $f6 $dd
    cp e                                          ; $50cd: $bb
    cp l                                          ; $50ce: $bd
    ld [hl], e                                    ; $50cf: $73
    jp nc, $bcfe                                  ; $50d0: $d2 $fe $bc

    ld a, h                                       ; $50d3: $7c
    jp c, Jump_000_26fe                           ; $50d4: $da $fe $26

    and $f0                                       ; $50d7: $e6 $f0
    ldh a, [$fff0]                                ; $50d9: $f0 $f0
    ret nc                                        ; $50db: $d0

    ld [hl], b                                    ; $50dc: $70
    ld [hl], b                                    ; $50dd: $70
    nop                                           ; $50de: $00
    nop                                           ; $50df: $00
    nop                                           ; $50e0: $00
    nop                                           ; $50e1: $00
    rlca                                          ; $50e2: $07
    rlca                                          ; $50e3: $07
    rra                                           ; $50e4: $1f
    jr jr_002_5126                                ; $50e5: $18 $3f

    daa                                           ; $50e7: $27
    ccf                                           ; $50e8: $3f
    jr z, jr_002_512a                             ; $50e9: $28 $3f

    daa                                           ; $50eb: $27
    cp $f9                                        ; $50ec: $fe $f9
    rst RST_30                                    ; $50ee: $f7
    xor a                                         ; $50ef: $af
    ld [hl], a                                    ; $50f0: $77
    ld l, b                                       ; $50f1: $68
    ccf                                           ; $50f2: $3f
    inc l                                         ; $50f3: $2c
    rst RST_38                                    ; $50f4: $ff
    ld [$a6df], a                                 ; $50f5: $ea $df $a6
    ld [hl], a                                    ; $50f8: $77
    ld l, b                                       ; $50f9: $68
    ld h, e                                       ; $50fa: $63
    ld e, [hl]                                    ; $50fb: $5e
    rst RST_38                                    ; $50fc: $ff
    cp [hl]                                       ; $50fd: $be
    jp $01c2                                      ; $50fe: $c3 $c2 $01


    ld bc, $e0e0                                  ; $5101: $01 $e0 $e0
    ld hl, sp+$58                                 ; $5104: $f8 $58
    db $f4                                        ; $5106: $f4
    db $ec                                        ; $5107: $ec
    ld d, h                                       ; $5108: $54
    cp h                                          ; $5109: $bc
    rst RST_20                                    ; $510a: $e7
    rst RST_38                                    ; $510b: $ff
    cp c                                          ; $510c: $b9
    ld e, a                                       ; $510d: $5f
    ldh [c], a                                    ; $510e: $e2
    cp $44                                        ; $510f: $fe $44
    cp h                                          ; $5111: $bc
    db $e4                                        ; $5112: $e4
    ld a, h                                       ; $5113: $7c
    db $e4                                        ; $5114: $e4
    cp h                                          ; $5115: $bc
    jp nz, $39fe                                  ; $5116: $c2 $fe $39

    rst RST_08                                    ; $5119: $cf
    sbc a                                         ; $511a: $9f
    rst RST_28                                    ; $511b: $ef
    db $f4                                        ; $511c: $f4
    db $ec                                        ; $511d: $ec
    sbc d                                         ; $511e: $9a
    sub [hl]                                      ; $511f: $96
    ld c, $0e                                     ; $5120: $0e $0e
    inc b                                         ; $5122: $04
    nop                                           ; $5123: $00
    ld [bc], a                                    ; $5124: $02
    nop                                           ; $5125: $00

jr_002_5126:
    inc bc                                        ; $5126: $03
    nop                                           ; $5127: $00
    dec h                                         ; $5128: $25
    ld [bc], a                                    ; $5129: $02

jr_002_512a:
    dec e                                         ; $512a: $1d
    ld [bc], a                                    ; $512b: $02
    jr jr_002_5135                                ; $512c: $18 $07

    ld a, [hl-]                                   ; $512e: $3a
    rlca                                          ; $512f: $07
    or e                                          ; $5130: $b3
    rrca                                          ; $5131: $0f
    ld h, a                                       ; $5132: $67
    rra                                           ; $5133: $1f
    ld [hl], a                                    ; $5134: $77

jr_002_5135:
    dec c                                         ; $5135: $0d
    scf                                           ; $5136: $37
    inc c                                         ; $5137: $0c
    scf                                           ; $5138: $37
    ld c, $3b                                     ; $5139: $0e $3b
    rlca                                          ; $513b: $07
    inc e                                         ; $513c: $1c
    inc bc                                        ; $513d: $03
    rra                                           ; $513e: $1f
    nop                                           ; $513f: $00
    rlca                                          ; $5140: $07
    nop                                           ; $5141: $00
    add b                                         ; $5142: $80
    nop                                           ; $5143: $00
    adc b                                         ; $5144: $88
    nop                                           ; $5145: $00
    ld d, b                                       ; $5146: $50
    add b                                         ; $5147: $80
    ld [hl], b                                    ; $5148: $70
    add b                                         ; $5149: $80
    ld d, c                                       ; $514a: $51
    and b                                         ; $514b: $a0
    ld a, [bc]                                    ; $514c: $0a
    ldh a, [$ffae]                                ; $514d: $f0 $ae
    ldh a, [$ffa6]                                ; $514f: $f0 $a6
    ld hl, sp-$09                                 ; $5151: $f8 $f7
    ld hl, sp-$0a                                 ; $5153: $f8 $f6
    ret c                                         ; $5155: $d8

    or $98                                        ; $5156: $f6 $98
    ldh a, [c]                                    ; $5158: $f2
    cp h                                          ; $5159: $bc
    xor $f0                                       ; $515a: $ee $f0
    inc e                                         ; $515c: $1c
    ldh [$fffc], a                                ; $515d: $e0 $fc
    nop                                           ; $515f: $00
    ldh a, [rP1]                                  ; $5160: $f0 $00
    nop                                           ; $5162: $00
    rrca                                          ; $5163: $0f
    rrca                                          ; $5164: $0f
    db $10                                        ; $5165: $10
    dec e                                         ; $5166: $1d
    ld [hl+], a                                   ; $5167: $22
    rra                                           ; $5168: $1f
    jr nz, jr_002_518a                            ; $5169: $20 $1f

    ld h, b                                       ; $516b: $60
    cp a                                          ; $516c: $bf
    ld h, b                                       ; $516d: $60
    ld l, a                                       ; $516e: $6f
    ret nc                                        ; $516f: $d0

    ccf                                           ; $5170: $3f
    ret nz                                        ; $5171: $c0

    ld e, l                                       ; $5172: $5d
    and [hl]                                      ; $5173: $a6
    ld e, e                                       ; $5174: $5b
    and [hl]                                      ; $5175: $a6
    ld l, a                                       ; $5176: $6f
    sub b                                         ; $5177: $90
    cp a                                          ; $5178: $bf
    ld b, b                                       ; $5179: $40
    dec e                                         ; $517a: $1d
    ld h, d                                       ; $517b: $62
    ld c, $39                                     ; $517c: $0e $39
    inc bc                                        ; $517e: $03
    inc c                                         ; $517f: $0c
    nop                                           ; $5180: $00
    rlca                                          ; $5181: $07
    nop                                           ; $5182: $00
    ret nz                                        ; $5183: $c0

    ret nz                                        ; $5184: $c0

    jr nz, @+$22                                  ; $5185: $20 $20

    call c, $d23c                                 ; $5187: $dc $3c $d2

jr_002_518a:
    xor [hl]                                      ; $518a: $ae
    ld d, c                                       ; $518b: $51
    ld a, d                                       ; $518c: $7a
    add l                                         ; $518d: $85
    ld a, [$f605]                                 ; $518e: $fa $05 $f6
    add hl, bc                                    ; $5191: $09
    cp h                                          ; $5192: $bc
    ld h, e                                       ; $5193: $63
    ret c                                         ; $5194: $d8

    ld h, a                                       ; $5195: $67
    db $f4                                        ; $5196: $f4
    ld c, $f8                                     ; $5197: $0e $f8
    ld b, $ac                                     ; $5199: $06 $ac
    ld d, d                                       ; $519b: $52
    ld a, b                                       ; $519c: $78
    sub [hl]                                      ; $519d: $96
    ldh a, [$ff3c]                                ; $519e: $f0 $3c
    nop                                           ; $51a0: $00
    ld hl, sp+$00                                 ; $51a1: $f8 $00
    nop                                           ; $51a3: $00
    nop                                           ; $51a4: $00
    nop                                           ; $51a5: $00
    jr jr_002_51c0                                ; $51a6: $18 $18

    inc h                                         ; $51a8: $24
    inc a                                         ; $51a9: $3c
    ld e, d                                       ; $51aa: $5a
    ld h, [hl]                                    ; $51ab: $66
    ld e, e                                       ; $51ac: $5b
    ld h, a                                       ; $51ad: $67
    cp a                                          ; $51ae: $bf
    ret nz                                        ; $51af: $c0

    cp a                                          ; $51b0: $bf
    ret nz                                        ; $51b1: $c0

    cp h                                          ; $51b2: $bc
    jp $e798                                      ; $51b3: $c3 $98 $e7


    ld b, e                                       ; $51b6: $43
    ld a, a                                       ; $51b7: $7f
    ld b, d                                       ; $51b8: $42
    ld a, [hl]                                    ; $51b9: $7e
    inc h                                         ; $51ba: $24
    inc a                                         ; $51bb: $3c
    jr @+$1a                                      ; $51bc: $18 $18

    nop                                           ; $51be: $00
    nop                                           ; $51bf: $00

jr_002_51c0:
    nop                                           ; $51c0: $00
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
    inc a                                         ; $51c4: $3c
    inc a                                         ; $51c5: $3c
    ld b, d                                       ; $51c6: $42
    ld a, [hl]                                    ; $51c7: $7e
    cp l                                          ; $51c8: $bd
    jp $c3bd                                      ; $51c9: $c3 $bd $c3


    cp l                                          ; $51cc: $bd
    jp Jump_000_03fd                              ; $51cd: $c3 $fd $03


    db $fd                                        ; $51d0: $fd
    inc bc                                        ; $51d1: $03
    ld a, l                                       ; $51d2: $7d
    add e                                         ; $51d3: $83
    dec a                                         ; $51d4: $3d
    jp $ff81                                      ; $51d5: $c3 $81 $ff


    add c                                         ; $51d8: $81
    rst RST_38                                    ; $51d9: $ff
    add c                                         ; $51da: $81
    rst RST_38                                    ; $51db: $ff
    ld b, d                                       ; $51dc: $42
    ld a, [hl]                                    ; $51dd: $7e
    inc a                                         ; $51de: $3c
    inc a                                         ; $51df: $3c
    nop                                           ; $51e0: $00
    nop                                           ; $51e1: $00
    nop                                           ; $51e2: $00
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00
    inc c                                         ; $51e6: $0c
    inc c                                         ; $51e7: $0c
    ld [de], a                                    ; $51e8: $12
    ld e, $2d                                     ; $51e9: $1e $2d
    inc sp                                        ; $51eb: $33
    dec l                                         ; $51ec: $2d
    inc sp                                        ; $51ed: $33
    ld e, a                                       ; $51ee: $5f
    ld h, b                                       ; $51ef: $60
    ld e, a                                       ; $51f0: $5f
    ld h, b                                       ; $51f1: $60
    ld e, [hl]                                    ; $51f2: $5e
    ld h, c                                       ; $51f3: $61
    ld c, h                                       ; $51f4: $4c
    ld [hl], e                                    ; $51f5: $73
    ld hl, $213f                                  ; $51f6: $21 $3f $21
    ccf                                           ; $51f9: $3f
    ld [de], a                                    ; $51fa: $12
    ld e, $0c                                     ; $51fb: $1e $0c
    inc c                                         ; $51fd: $0c
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    inc a                                         ; $5202: $3c
    inc a                                         ; $5203: $3c
    ld b, d                                       ; $5204: $42
    ld a, [hl]                                    ; $5205: $7e
    cp l                                          ; $5206: $bd
    jp $c3bd                                      ; $5207: $c3 $bd $c3


    ld a, l                                       ; $520a: $7d
    ld b, e                                       ; $520b: $43
    db $fd                                        ; $520c: $fd
    jp Jump_000_03fd                              ; $520d: $c3 $fd $03


    db $fd                                        ; $5210: $fd
    inc bc                                        ; $5211: $03
    ld a, l                                       ; $5212: $7d
    add e                                         ; $5213: $83
    dec a                                         ; $5214: $3d
    jp $c3fd                                      ; $5215: $c3 $fd $c3


    ld b, c                                       ; $5218: $41
    ld a, a                                       ; $5219: $7f
    add c                                         ; $521a: $81

jr_002_521b:
    rst RST_38                                    ; $521b: $ff
    add c                                         ; $521c: $81
    rst RST_38                                    ; $521d: $ff
    ld b, d                                       ; $521e: $42
    ld a, [hl]                                    ; $521f: $7e
    inc a                                         ; $5220: $3c
    inc a                                         ; $5221: $3c
    inc bc                                        ; $5222: $03
    rlca                                          ; $5223: $07
    dec c                                         ; $5224: $0d
    ld c, $15                                     ; $5225: $0e $15
    ld a, [de]                                    ; $5227: $1a
    dec d                                         ; $5228: $15
    ld a, [hl-]                                   ; $5229: $3a
    daa                                           ; $522a: $27
    dec sp                                        ; $522b: $3b
    inc l                                         ; $522c: $2c
    ccf                                           ; $522d: $3f
    inc sp                                        ; $522e: $33
    ccf                                           ; $522f: $3f
    inc sp                                        ; $5230: $33
    ccf                                           ; $5231: $3f
    ld hl, $3f3f                                  ; $5232: $21 $3f $3f
    ccf                                           ; $5235: $3f
    dec hl                                        ; $5236: $2b
    dec a                                         ; $5237: $3d
    ld h, $3d                                     ; $5238: $26 $3d
    inc hl                                        ; $523a: $23
    ccf                                           ; $523b: $3f
    rra                                           ; $523c: $1f
    rra                                           ; $523d: $1f
    ld c, $0b                                     ; $523e: $0e $0b
    inc e                                         ; $5240: $1c
    ld e, $e0                                     ; $5241: $1e $e0
    ldh a, [$ffd8]                                ; $5243: $f0 $d8
    jr c, jr_002_521b                             ; $5245: $38 $d4

    inc l                                         ; $5247: $2c
    call nc, $f22e                                ; $5248: $d4 $2e $f2
    xor $1a                                       ; $524b: $ee $1a
    cp $66                                        ; $524d: $fe $66
    cp $66                                        ; $524f: $fe $66
    cp $42                                        ; $5251: $fe $42
    cp $fe                                        ; $5253: $fe $fe
    cp $ea                                        ; $5255: $fe $ea
    ld e, [hl]                                    ; $5257: $5e
    or d                                          ; $5258: $b2
    ld e, [hl]                                    ; $5259: $5e
    ldh [c], a                                    ; $525a: $e2
    cp $fc                                        ; $525b: $fe $fc
    db $fc                                        ; $525d: $fc
    inc e                                         ; $525e: $1c
    inc a                                         ; $525f: $3c
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    inc bc                                        ; $5264: $03
    inc bc                                        ; $5265: $03
    rrca                                          ; $5266: $0f
    inc c                                         ; $5267: $0c
    ccf                                           ; $5268: $3f
    jr nc, @+$81                                  ; $5269: $30 $7f

    ld b, b                                       ; $526b: $40
    adc h                                         ; $526c: $8c
    di                                            ; $526d: $f3
    add h                                         ; $526e: $84
    ei                                            ; $526f: $fb
    call nz, $e0ff                                ; $5270: $c4 $ff $e0
    cp a                                          ; $5273: $bf
    ldh a, [c]                                    ; $5274: $f2
    sbc a                                         ; $5275: $9f
    sbc e                                         ; $5276: $9b
    rst RST_28                                    ; $5277: $ef
    ld c, [hl]                                    ; $5278: $4e
    rst RST_30                                    ; $5279: $f7
    inc h                                         ; $527a: $24
    ld a, e                                       ; $527b: $7b
    db $10                                        ; $527c: $10
    ccf                                           ; $527d: $3f
    add hl, bc                                    ; $527e: $09
    rra                                           ; $527f: $1f
    ld b, $0f                                     ; $5280: $06 $0f
    ld hl, sp-$08                                 ; $5282: $f8 $f8
    db $f4                                        ; $5284: $f4
    inc c                                         ; $5285: $0c
    ld a, [$c206]                                 ; $5286: $fa $06 $c2
    ld a, $01                                     ; $5289: $3e $01
    rst RST_38                                    ; $528b: $ff
    ld bc, $01ff                                  ; $528c: $01 $ff $01
    rst RST_38                                    ; $528f: $ff
    rlca                                          ; $5290: $07
    rst RST_38                                    ; $5291: $ff
    add hl, de                                    ; $5292: $19
    rst RST_38                                    ; $5293: $ff
    ld a, c                                       ; $5294: $79
    rst RST_28                                    ; $5295: $ef
    jp hl                                         ; $5296: $e9


    rst RST_18                                    ; $5297: $df

jr_002_5298:
    ld [hl], $ff                                  ; $5298: $36 $ff
    jr jr_002_5298                                ; $529a: $18 $fc

    ld h, b                                       ; $529c: $60
    ldh a, [$ff80]                                ; $529d: $f0 $80
    ret nz                                        ; $529f: $c0

    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    rst RST_38                                    ; $52a2: $ff
    rst RST_38                                    ; $52a3: $ff
    rst RST_38                                    ; $52a4: $ff
    add b                                         ; $52a5: $80
    ld a, [hl]                                    ; $52a6: $7e
    ld b, c                                       ; $52a7: $41
    ccf                                           ; $52a8: $3f
    ld [hl+], a                                   ; $52a9: $22
    dec a                                         ; $52aa: $3d
    ld h, $3b                                     ; $52ab: $26 $3b
    inc l                                         ; $52ad: $2c
    inc hl                                        ; $52ae: $23
    inc a                                         ; $52af: $3c
    rla                                           ; $52b0: $17
    jr jr_002_52c2                                ; $52b1: $18 $0f

    add hl, bc                                    ; $52b3: $09
    rlca                                          ; $52b4: $07
    dec b                                         ; $52b5: $05
    ld b, $05                                     ; $52b6: $06 $05
    inc b                                         ; $52b8: $04
    rlca                                          ; $52b9: $07
    rlca                                          ; $52ba: $07
    rlca                                          ; $52bb: $07
    nop                                           ; $52bc: $00
    nop                                           ; $52bd: $00
    nop                                           ; $52be: $00
    nop                                           ; $52bf: $00
    nop                                           ; $52c0: $00
    nop                                           ; $52c1: $00

jr_002_52c2:
    db $10                                        ; $52c2: $10
    db $10                                        ; $52c3: $10
    sub b                                         ; $52c4: $90
    sub b                                         ; $52c5: $90
    ld hl, sp+$68                                 ; $52c6: $f8 $68
    ld hl, sp+$28                                 ; $52c8: $f8 $28
    cp a                                          ; $52ca: $bf
    ld h, a                                       ; $52cb: $67
    cp a                                          ; $52cc: $bf
    ld h, b                                       ; $52cd: $60
    cp a                                          ; $52ce: $bf
    ldh [$ff9f], a                                ; $52cf: $e0 $9f
    db $f4                                        ; $52d1: $f4
    dec sp                                        ; $52d2: $3b
    sub $3f                                       ; $52d3: $d6 $3f

jr_002_52d5:
    jp nc, $986f                                  ; $52d5: $d2 $6f $98

    ld a, a                                       ; $52d8: $7f
    adc a                                         ; $52d9: $8f
    db $f4                                        ; $52da: $f4
    adc a                                         ; $52db: $8f
    ld a, l                                       ; $52dc: $7d
    ld d, e                                       ; $52dd: $53
    ld l, $2a                                     ; $52de: $2e $2a
    ld b, $06                                     ; $52e0: $06 $06
    ld de, $1311                                  ; $52e2: $11 $11 $13
    ld [de], a                                    ; $52e5: $12

jr_002_52e6:
    ld a, $2d                                     ; $52e6: $3e $2d
    ccf                                           ; $52e8: $3f
    jr z, jr_002_52e6                             ; $52e9: $28 $fb

    call z, Call_000_0cfb                         ; $52eb: $cc $fb $0c
    ei                                            ; $52ee: $fb
    ld c, $f3                                     ; $52ef: $0e $f3
    ld e, [hl]                                    ; $52f1: $5e
    cp c                                          ; $52f2: $b9

jr_002_52f3:
    rst RST_10                                    ; $52f3: $d7
    ld sp, hl                                     ; $52f4: $f9
    sub a                                         ; $52f5: $97
    db $ec                                        ; $52f6: $ec
    inc sp                                        ; $52f7: $33
    db $fc                                        ; $52f8: $fc
    db $e3                                        ; $52f9: $e3
    ld e, a                                       ; $52fa: $5f
    db $e3                                        ; $52fb: $e3
    inc a                                         ; $52fc: $3c
    call nc, $a8e8                                ; $52fd: $d4 $e8 $a8
    ret nz                                        ; $5300: $c0

    ret nz                                        ; $5301: $c0

    cp $fe                                        ; $5302: $fe $fe
    cp $02                                        ; $5304: $fe $02
    db $e4                                        ; $5306: $e4
    inc e                                         ; $5307: $1c
    ld hl, sp-$78                                 ; $5308: $f8 $88

jr_002_530a:
    ld a, b                                       ; $530a: $78
    ret z                                         ; $530b: $c8

    cp b                                          ; $530c: $b8
    ld l, b                                       ; $530d: $68
    adc b                                         ; $530e: $88
    ld a, b                                       ; $530f: $78
    ret nc                                        ; $5310: $d0

    jr nc, jr_002_52f3                            ; $5311: $30 $e0

    jr nz, jr_002_52d5                            ; $5313: $20 $c0

    ld b, b                                       ; $5315: $40
    ret nz                                        ; $5316: $c0

    ld b, b                                       ; $5317: $40
    ld b, b                                       ; $5318: $40
    ret nz                                        ; $5319: $c0

    ret nz                                        ; $531a: $c0

    ret nz                                        ; $531b: $c0

    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    ld bc, $0301                                  ; $5324: $01 $01 $03
    ld [bc], a                                    ; $5327: $02
    ld b, $05                                     ; $5328: $06 $05
    inc c                                         ; $532a: $0c
    dec bc                                        ; $532b: $0b
    add hl, de                                    ; $532c: $19
    ld d, $31                                     ; $532d: $16 $31
    ld l, $79                                     ; $532f: $2e $79
    ld e, [hl]                                    ; $5331: $5e
    ld l, e                                       ; $5332: $6b
    ld l, h                                       ; $5333: $6c
    dec bc                                        ; $5334: $0b
    inc c                                         ; $5335: $0c
    ld c, $0f                                     ; $5336: $0e $0f
    ld [bc], a                                    ; $5338: $02
    inc bc                                        ; $5339: $03
    inc bc                                        ; $533a: $03
    inc bc                                        ; $533b: $03
    nop                                           ; $533c: $00
    nop                                           ; $533d: $00
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    db $10                                        ; $5342: $10
    db $10                                        ; $5343: $10
    sub b                                         ; $5344: $90
    sub b                                         ; $5345: $90
    ld a, b                                       ; $5346: $78
    add sp, -$08                                  ; $5347: $e8 $f8
    jr z, jr_002_530a                             ; $5349: $28 $bf

    ld h, a                                       ; $534b: $67
    cp a                                          ; $534c: $bf
    ld h, b                                       ; $534d: $60
    cp a                                          ; $534e: $bf
    ldh [$ff9f], a                                ; $534f: $e0 $9f
    db $f4                                        ; $5351: $f4
    cp e                                          ; $5352: $bb
    sub $bf                                       ; $5353: $d6 $bf
    jp nc, $986f                                  ; $5355: $d2 $6f $98

jr_002_5358:
    ld a, a                                       ; $5358: $7f
    adc a                                         ; $5359: $8f
    db $f4                                        ; $535a: $f4
    adc a                                         ; $535b: $8f
    ld a, l                                       ; $535c: $7d
    ld d, e                                       ; $535d: $53

jr_002_535e:
    ld l, $2a                                     ; $535e: $2e $2a
    ld b, $06                                     ; $5360: $06 $06
    db $10                                        ; $5362: $10
    db $10                                        ; $5363: $10
    inc de                                        ; $5364: $13
    inc de                                        ; $5365: $13
    dec a                                         ; $5366: $3d
    ld l, $3e                                     ; $5367: $2e $3e
    add hl, hl                                    ; $5369: $29
    ld a, [$fbcd]                                 ; $536a: $fa $cd $fb
    inc c                                         ; $536d: $0c
    ei                                            ; $536e: $fb
    ld c, $f3                                     ; $536f: $0e $f3
    ld e, [hl]                                    ; $5371: $5e
    cp e                                          ; $5372: $bb
    sub $fb                                       ; $5373: $d6 $fb
    sub [hl]                                      ; $5375: $96
    db $ec                                        ; $5376: $ec
    inc sp                                        ; $5377: $33
    db $fc                                        ; $5378: $fc
    db $e3                                        ; $5379: $e3
    ld e, a                                       ; $537a: $5f
    db $e3                                        ; $537b: $e3
    inc a                                         ; $537c: $3c
    call nc, $a8e8                                ; $537d: $d4 $e8 $a8
    ret nz                                        ; $5380: $c0

    ret nz                                        ; $5381: $c0

    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    add b                                         ; $5386: $80
    add b                                         ; $5387: $80
    ret nz                                        ; $5388: $c0

    ld b, b                                       ; $5389: $40
    ld h, b                                       ; $538a: $60
    and b                                         ; $538b: $a0
    jr nc, jr_002_535e                            ; $538c: $30 $d0

    jr c, jr_002_5358                             ; $538e: $38 $c8

    inc a                                         ; $5390: $3c
    db $f4                                        ; $5391: $f4
    xor h                                         ; $5392: $ac
    ld l, h                                       ; $5393: $6c
    and b                                         ; $5394: $a0
    ld h, b                                       ; $5395: $60
    ldh [$ffe0], a                                ; $5396: $e0 $e0
    add b                                         ; $5398: $80
    add b                                         ; $5399: $80
    add b                                         ; $539a: $80
    add b                                         ; $539b: $80
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    nop                                           ; $539e: $00
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    inc bc                                        ; $53a2: $03
    inc bc                                        ; $53a3: $03
    rrca                                          ; $53a4: $0f
    inc c                                         ; $53a5: $0c
    rra                                           ; $53a6: $1f
    db $10                                        ; $53a7: $10
    ccf                                           ; $53a8: $3f
    jr nz, jr_002_53e4                            ; $53a9: $20 $39

    daa                                           ; $53ab: $27
    ld [hl], b                                    ; $53ac: $70
    ld c, a                                       ; $53ad: $4f
    ld h, e                                       ; $53ae: $63
    ld e, a                                       ; $53af: $5f
    ld h, h                                       ; $53b0: $64
    ld e, a                                       ; $53b1: $5f
    ret nz                                        ; $53b2: $c0

    cp a                                          ; $53b3: $bf
    rst RST_00                                    ; $53b4: $c7
    cp a                                          ; $53b5: $bf
    ret c                                         ; $53b6: $d8

    cp b                                          ; $53b7: $b8
    ldh [$ffa0], a                                ; $53b8: $e0 $a0
    ldh [$ffa0], a                                ; $53ba: $e0 $a0
    pop bc                                        ; $53bc: $c1
    pop bc                                        ; $53bd: $c1
    pop bc                                        ; $53be: $c1
    pop bc                                        ; $53bf: $c1
    pop bc                                        ; $53c0: $c1
    pop bc                                        ; $53c1: $c1
    sbc b                                         ; $53c2: $98
    sub b                                         ; $53c3: $90
    ld c, h                                       ; $53c4: $4c
    call z, Call_002_6aae                         ; $53c5: $cc $ae $6a
    and l                                         ; $53c8: $a5
    ld h, a                                       ; $53c9: $67
    rst RST_10                                    ; $53ca: $d7
    dec [hl]                                      ; $53cb: $35
    sub $b5                                       ; $53cc: $d6 $b5
    db $d3                                        ; $53ce: $d3
    or d                                          ; $53cf: $b2
    db $eb                                        ; $53d0: $eb
    sbc d                                         ; $53d1: $9a
    ld l, a                                       ; $53d2: $6f
    sbc $cf                                       ; $53d3: $de $cf
    ld a, [$737c]                                 ; $53d5: $fa $7c $73
    ei                                            ; $53d8: $fb
    call nc, $b4db                                ; $53d9: $d4 $db $b4
    rst RST_18                                    ; $53dc: $df
    ld sp, $73bd                                  ; $53dd: $31 $bd $73
    cp a                                          ; $53e0: $bf
    ld h, d                                       ; $53e1: $62
    jr nz, jr_002_5404                            ; $53e2: $20 $20

jr_002_53e4:
    jr nz, jr_002_5406                            ; $53e4: $20 $20

    jr nc, @+$32                                  ; $53e6: $30 $30

    jr nc, jr_002_541a                            ; $53e8: $30 $30

    or c                                          ; $53ea: $b1
    ld sp, $a9b9                                  ; $53eb: $31 $b9 $a9
    ld a, c                                       ; $53ee: $79
    jp hl                                         ; $53ef: $e9


    ld a, e                                       ; $53f0: $7b
    ld [$fa5b], a                                 ; $53f1: $ea $5b $fa
    ld c, d                                       ; $53f4: $4a
    cp e                                          ; $53f5: $bb
    rst RST_20                                    ; $53f6: $e7
    rra                                           ; $53f7: $1f
    rst RST_00                                    ; $53f8: $c7
    ccf                                           ; $53f9: $3f
    ld l, $ff                                     ; $53fa: $2e $ff
    and $df                                       ; $53fc: $e6 $df
    db $ec                                        ; $53fe: $ec
    sbc a                                         ; $53ff: $9f
    sbc c                                         ; $5400: $99
    ld a, [hl]                                    ; $5401: $7e
    jr c, @+$3a                                   ; $5402: $38 $38

jr_002_5404:
    ld a, h                                       ; $5404: $7c
    ld b, h                                       ; $5405: $44

jr_002_5406:
    db $fc                                        ; $5406: $fc
    add h                                         ; $5407: $84
    xor $92                                       ; $5408: $ee $92
    sub $3a                                       ; $540a: $d6 $3a
    and [hl]                                      ; $540c: $a6
    ld a, d                                       ; $540d: $7a
    or [hl]                                       ; $540e: $b6
    ld a, d                                       ; $540f: $7a
    xor e                                         ; $5410: $ab
    ld a, l                                       ; $5411: $7d
    ld b, e                                       ; $5412: $43
    db $fd                                        ; $5413: $fd
    ld [hl], e                                    ; $5414: $73
    db $fd                                        ; $5415: $fd
    ld c, e                                       ; $5416: $4b
    call $c5c7                                    ; $5417: $cd $c7 $c5

jr_002_541a:
    daa                                           ; $541a: $27
    push hl                                       ; $541b: $e5
    rst RST_10                                    ; $541c: $d7
    dec [hl]                                      ; $541d: $35
    db $d3                                        ; $541e: $d3
    inc sp                                        ; $541f: $33
    adc e                                         ; $5420: $8b
    ld a, e                                       ; $5421: $7b
    add e                                         ; $5422: $83
    add e                                         ; $5423: $83
    add a                                         ; $5424: $87
    add h                                         ; $5425: $84
    sbc h                                         ; $5426: $9c
    sbc a                                         ; $5427: $9f
    inc a                                         ; $5428: $3c
    inc sp                                        ; $5429: $33
    ld a, d                                       ; $542a: $7a
    ld e, a                                       ; $542b: $5f
    ld a, a                                       ; $542c: $7f
    ld h, l                                       ; $542d: $65
    scf                                           ; $542e: $37
    dec l                                         ; $542f: $2d
    dec l                                         ; $5430: $2d
    ccf                                           ; $5431: $3f
    inc sp                                        ; $5432: $33
    ld [hl-], a                                   ; $5433: $32
    inc bc                                        ; $5434: $03
    inc bc                                        ; $5435: $03
    inc bc                                        ; $5436: $03
    ld [bc], a                                    ; $5437: $02
    rlca                                          ; $5438: $07
    dec b                                         ; $5439: $05
    rrca                                          ; $543a: $0f
    ld c, $1b                                     ; $543b: $0e $1b
    ld d, $1e                                     ; $543d: $16 $1e
    rla                                           ; $543f: $17
    add hl, de                                    ; $5440: $19
    add hl, de                                    ; $5441: $19
    db $fc                                        ; $5442: $fc
    ld b, e                                       ; $5443: $43
    di                                            ; $5444: $f3
    adc a                                         ; $5445: $8f
    and $9f                                       ; $5446: $e6 $9f
    ld a, e                                       ; $5448: $7b
    rst RST_38                                    ; $5449: $ff
    ldh a, [$ffcf]                                ; $544a: $f0 $cf
    pop hl                                        ; $544c: $e1

jr_002_544d:
    sbc $f0                                       ; $544d: $de $f0
    ld c, a                                       ; $544f: $4f
    rst RST_18                                    ; $5450: $df
    ld h, b                                       ; $5451: $60
    or e                                          ; $5452: $b3
    ld l, h                                       ; $5453: $6c
    jr z, jr_002_544d                             ; $5454: $28 $f7

jr_002_5456:
    ld [hl], a                                    ; $5456: $77
    ld hl, sp+$7c                                 ; $5457: $f8 $7c
    rst RST_38                                    ; $5459: $ff
    ei                                            ; $545a: $fb
    ei                                            ; $545b: $fb
    or b                                          ; $545c: $b0
    ret nc                                        ; $545d: $d0

    ret nc                                        ; $545e: $d0

    ldh a, [$ff30]                                ; $545f: $f0 $30
    jr nc, jr_002_5456                            ; $5461: $30 $f3

    cp $61                                        ; $5463: $fe $61
    rst RST_38                                    ; $5465: $ff
    adc e                                         ; $5466: $8b
    or $17                                        ; $5467: $f6 $17
    rst RST_28                                    ; $5469: $ef
    ld l, [hl]                                    ; $546a: $6e
    sbc c                                         ; $546b: $99
    sbc [hl]                                      ; $546c: $9e
    ld a, e                                       ; $546d: $7b
    scf                                           ; $546e: $37
    db $ed                                        ; $546f: $ed
    rst RST_38                                    ; $5470: $ff
    dec l                                         ; $5471: $2d
    or l                                          ; $5472: $b5
    ld a, a                                       ; $5473: $7f

Call_002_5474:
    ld [de], a                                    ; $5474: $12
    rst RST_28                                    ; $5475: $ef
    push hl                                       ; $5476: $e5
    ld e, $1f                                     ; $5477: $1e $1f
    db $fc                                        ; $5479: $fc
    rst RST_20                                    ; $547a: $e7
    rst RST_20                                    ; $547b: $e7
    ld b, $05                                     ; $547c: $06 $05
    rlca                                          ; $547e: $07
    dec b                                         ; $547f: $05
    ld b, $06                                     ; $5480: $06 $06
    db $eb                                        ; $5482: $eb
    dec de                                        ; $5483: $1b
    jp hl                                         ; $5484: $e9


    sbc c                                         ; $5485: $99
    jp hl                                         ; $5486: $e9


    add hl, de                                    ; $5487: $19
    ld d, c                                       ; $5488: $51
    or c                                          ; $5489: $b1
    sub b                                         ; $548a: $90
    ldh a, [$ffe7]                                ; $548b: $f0 $e7
    rst RST_20                                    ; $548d: $e7
    ld a, e                                       ; $548e: $7b
    cp l                                          ; $548f: $bd
    xor [hl]                                      ; $5490: $ae
    or $e8                                        ; $5491: $f6 $e8
    ld hl, sp+$30                                 ; $5493: $f8 $30
    ldh a, [$ffb0]                                ; $5495: $f0 $b0
    ld [hl], b                                    ; $5497: $70
    ret c                                         ; $5498: $d8

    ld a, b                                       ; $5499: $78
    ld hl, sp-$48                                 ; $549a: $f8 $b8
    db $ec                                        ; $549c: $ec
    or h                                          ; $549d: $b4
    or h                                          ; $549e: $b4
    db $fc                                        ; $549f: $fc
    ld c, h                                       ; $54a0: $4c
    ld c, h                                       ; $54a1: $4c
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00

jr_002_54a8:
    rrca                                          ; $54a8: $0f
    rrca                                          ; $54a9: $0f
    ld [hl], $39                                  ; $54aa: $36 $39
    ld e, a                                       ; $54ac: $5f
    ld h, b                                       ; $54ad: $60
    ld a, a                                       ; $54ae: $7f
    ld b, b                                       ; $54af: $40
    cp a                                          ; $54b0: $bf
    ret nz                                        ; $54b1: $c0

    rst RST_38                                    ; $54b2: $ff
    add b                                         ; $54b3: $80
    rst RST_38                                    ; $54b4: $ff
    add b                                         ; $54b5: $80
    rst RST_28                                    ; $54b6: $ef
    sub b                                         ; $54b7: $90
    xor a                                         ; $54b8: $af
    ret nc                                        ; $54b9: $d0

    ld [hl], e                                    ; $54ba: $73
    ld c, h                                       ; $54bb: $4c
    jr c, jr_002_54e5                             ; $54bc: $38 $27

    ld e, $11                                     ; $54be: $1e $11
    ld a, [de]                                    ; $54c0: $1a
    dec d                                         ; $54c1: $15
    rlca                                          ; $54c2: $07
    rlca                                          ; $54c3: $07
    jr jr_002_54e5                                ; $54c4: $18 $1f

    cpl                                           ; $54c6: $2f
    jr nc, jr_002_54a8                            ; $54c7: $30 $df

    ldh [$ff7f], a                                ; $54c9: $e0 $7f
    ret nz                                        ; $54cb: $c0

    ld a, a                                       ; $54cc: $7f
    ret nz                                        ; $54cd: $c0

    ld a, a                                       ; $54ce: $7f
    ret nz                                        ; $54cf: $c0

    ccf                                           ; $54d0: $3f
    ldh [$ffbf], a                                ; $54d1: $e0 $bf
    ld h, b                                       ; $54d3: $60
    sbc a                                         ; $54d4: $9f
    ld [hl], b                                    ; $54d5: $70
    sbc $31                                       ; $54d6: $de $31
    rst RST_18                                    ; $54d8: $df
    ld [hl], $df                                  ; $54d9: $36 $df
    scf                                           ; $54db: $37
    ld l, a                                       ; $54dc: $6f
    sbc e                                         ; $54dd: $9b
    ld h, a                                       ; $54de: $67
    sbc h                                         ; $54df: $9c
    ld [hl], e                                    ; $54e0: $73
    rst RST_08                                    ; $54e1: $cf
    ldh a, [$fff0]                                ; $54e2: $f0 $f0
    inc c                                         ; $54e4: $0c

jr_002_54e5:
    db $fc                                        ; $54e5: $fc
    jp nz, $e13e                                  ; $54e6: $c2 $3e $e1

    rra                                           ; $54e9: $1f
    pop af                                        ; $54ea: $f1
    rrca                                          ; $54eb: $0f
    pop af                                        ; $54ec: $f1
    rrca                                          ; $54ed: $0f
    pop af                                        ; $54ee: $f1
    rrca                                          ; $54ef: $0f
    db $e3                                        ; $54f0: $e3
    rra                                           ; $54f1: $1f
    db $e3                                        ; $54f2: $e3
    rra                                           ; $54f3: $1f
    rst RST_00                                    ; $54f4: $c7
    ccf                                           ; $54f5: $3f
    ld b, $ff                                     ; $54f6: $06 $ff
    ld [hl], $ff                                  ; $54f8: $36 $ff
    push af                                       ; $54fa: $f5
    ld a, [hl]                                    ; $54fb: $7e
    db $ec                                        ; $54fc: $ec
    ld a, a                                       ; $54fd: $7f
    dec d                                         ; $54fe: $15
    rst RST_38                                    ; $54ff: $ff
    db $eb                                        ; $5500: $eb
    rst RST_38                                    ; $5501: $ff
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    ldh a, [$fff0]                                ; $5508: $f0 $f0
    adc h                                         ; $550a: $8c
    db $fc                                        ; $550b: $fc
    ldh [c], a                                    ; $550c: $e2
    cp $82                                        ; $550d: $fe $82
    cp $b1                                        ; $550f: $fe $b1
    rst RST_08                                    ; $5511: $cf
    ld a, c                                       ; $5512: $79
    add a                                         ; $5513: $87
    ld a, c                                       ; $5514: $79
    add a                                         ; $5515: $87
    ld a, c                                       ; $5516: $79
    add a                                         ; $5517: $87
    ldh a, [c]                                    ; $5518: $f2
    ld c, $e4                                     ; $5519: $0e $e4
    inc e                                         ; $551b: $1c
    ld c, b                                       ; $551c: $48
    cp b                                          ; $551d: $b8
    ld l, b                                       ; $551e: $68
    sbc b                                         ; $551f: $98
    db $e4                                        ; $5520: $e4
    inc e                                         ; $5521: $1c
    inc a                                         ; $5522: $3c
    inc hl                                        ; $5523: $23
    inc a                                         ; $5524: $3c
    inc hl                                        ; $5525: $23
    inc a                                         ; $5526: $3c
    inc hl                                        ; $5527: $23
    dec l                                         ; $5528: $2d
    inc sp                                        ; $5529: $33
    add hl, de                                    ; $552a: $19
    rla                                           ; $552b: $17
    inc e                                         ; $552c: $1c
    inc de                                        ; $552d: $13
    cpl                                           ; $552e: $2f
    jr nc, jr_002_556d                            ; $552f: $30 $3c

    inc hl                                        ; $5531: $23
    ld e, c                                       ; $5532: $59
    ld h, a                                       ; $5533: $67
    ld a, c                                       ; $5534: $79
    ld b, a                                       ; $5535: $47
    ld a, c                                       ; $5536: $79
    ld b, a                                       ; $5537: $47
    ld a, b                                       ; $5538: $78
    ld c, a                                       ; $5539: $4f
    ld [hl], a                                    ; $553a: $77
    ld e, a                                       ; $553b: $5f
    dec hl                                        ; $553c: $2b
    ccf                                           ; $553d: $3f
    inc e                                         ; $553e: $1c
    inc e                                         ; $553f: $1c
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    ld a, [$dfe7]                                 ; $5542: $fa $e7 $df
    pop af                                        ; $5545: $f1
    rst RST_08                                    ; $5546: $cf
    db $fc                                        ; $5547: $fc
    ld h, e                                       ; $5548: $63
    ld e, a                                       ; $5549: $5f
    ld a, b                                       ; $554a: $78
    ld b, a                                       ; $554b: $47
    db $fd                                        ; $554c: $fd
    jp $e33d                                      ; $554d: $c3 $3d $e3


    jp c, $fa36                                   ; $5550: $da $36 $fa

    sub $72                                       ; $5553: $d6 $72
    ld e, [hl]                                    ; $5555: $5e
    ld h, h                                       ; $5556: $64
    ld a, h                                       ; $5557: $7c
    jp nz, $dafe                                  ; $5558: $c2 $fe $da

    and $7a                                       ; $555b: $e6 $7a

jr_002_555d:
    ld b, [hl]                                    ; $555d: $46
    ld [hl], h                                    ; $555e: $74

jr_002_555f:
    ld c, h                                       ; $555f: $4c
    jr c, @+$3a                                   ; $5560: $38 $38

    ccf                                           ; $5562: $3f
    rst RST_28                                    ; $5563: $ef
    rst RST_38                                    ; $5564: $ff
    rst RST_18                                    ; $5565: $df
    rst RST_38                                    ; $5566: $ff
    ccf                                           ; $5567: $3f
    rst RST_30                                    ; $5568: $f7
    rst RST_38                                    ; $5569: $ff
    rst RST_08                                    ; $556a: $cf
    ld hl, sp-$42                                 ; $556b: $f8 $be

jr_002_556d:
    or a                                          ; $556d: $b7
    ld a, $2f                                     ; $556e: $3e $2f
    dec [hl]                                      ; $5570: $35
    ld a, $17                                     ; $5571: $3e $17
    inc e                                         ; $5573: $1c
    dec de                                        ; $5574: $1b
    dec e                                         ; $5575: $1d
    rrca                                          ; $5576: $0f
    add hl, bc                                    ; $5577: $09
    ld c, $0b                                     ; $5578: $0e $0b
    rlca                                          ; $557a: $07

jr_002_557b:
    rlca                                          ; $557b: $07
    nop                                           ; $557c: $00
    nop                                           ; $557d: $00
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    db $f4                                        ; $5582: $f4
    inc c                                         ; $5583: $0c
    db $f4                                        ; $5584: $f4
    inc c                                         ; $5585: $0c
    db $f4                                        ; $5586: $f4
    adc h                                         ; $5587: $8c
    db $f4                                        ; $5588: $f4
    adc h                                         ; $5589: $8c
    ret z                                         ; $558a: $c8

    jr c, jr_002_555d                             ; $558b: $38 $d0

    jr nc, jr_002_555f                            ; $558d: $30 $d0

    jr nc, @-$16                                  ; $558f: $30 $e8

    jr jr_002_557b                                ; $5591: $18 $e8

    jr jr_002_559d                                ; $5593: $18 $08

    ld hl, sp+$78                                 ; $5595: $f8 $78
    ld hl, sp-$50                                 ; $5597: $f8 $b0
    ldh a, [$ffe0]                                ; $5599: $f0 $e0
    ldh [rP1], a                                  ; $559b: $e0 $00

jr_002_559d:
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    nop                                           ; $559f: $00
    nop                                           ; $55a0: $00
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    nop                                           ; $55a3: $00
    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00
    rrca                                          ; $55a6: $0f
    rrca                                          ; $55a7: $0f
    inc [hl]                                      ; $55a8: $34
    dec sp                                        ; $55a9: $3b
    ld e, [hl]                                    ; $55aa: $5e
    ld h, c                                       ; $55ab: $61
    ld a, a                                       ; $55ac: $7f
    ld b, b                                       ; $55ad: $40
    cp a                                          ; $55ae: $bf
    ret nz                                        ; $55af: $c0

    rst RST_38                                    ; $55b0: $ff
    add b                                         ; $55b1: $80
    rst RST_38                                    ; $55b2: $ff
    add b                                         ; $55b3: $80
    rst RST_28                                    ; $55b4: $ef

jr_002_55b5:
    sub b                                         ; $55b5: $90
    xor a                                         ; $55b6: $af
    ret nc                                        ; $55b7: $d0

    ld [hl], e                                    ; $55b8: $73
    ld c, h                                       ; $55b9: $4c
    jr c, @+$29                                   ; $55ba: $38 $27

    ld e, $11                                     ; $55bc: $1e $11
    ld a, [de]                                    ; $55be: $1a
    dec d                                         ; $55bf: $15
    inc a                                         ; $55c0: $3c
    inc hl                                        ; $55c1: $23
    rlca                                          ; $55c2: $07
    rlca                                          ; $55c3: $07
    jr jr_002_55e5                                ; $55c4: $18 $1f

    ld l, a                                       ; $55c6: $6f
    ld [hl], b                                    ; $55c7: $70
    rst RST_18                                    ; $55c8: $df
    ldh [$ff7f], a                                ; $55c9: $e0 $7f
    ret nz                                        ; $55cb: $c0

    ld a, a                                       ; $55cc: $7f
    ret nz                                        ; $55cd: $c0

    ld a, a                                       ; $55ce: $7f
    ret nz                                        ; $55cf: $c0

    cp a                                          ; $55d0: $bf
    ld h, b                                       ; $55d1: $60
    cp a                                          ; $55d2: $bf
    ld h, b                                       ; $55d3: $60
    rst RST_18                                    ; $55d4: $df
    jr nc, jr_002_55b5                            ; $55d5: $30 $de

    ld sp, $36df                                  ; $55d7: $31 $df $36
    ld a, a                                       ; $55da: $7f
    sub a                                         ; $55db: $97
    ld l, a                                       ; $55dc: $6f
    sbc e                                         ; $55dd: $9b
    ld [hl], a                                    ; $55de: $77
    call z, $eff3                                 ; $55df: $cc $f3 $ef
    ldh a, [$fff0]                                ; $55e2: $f0 $f0
    inc c                                         ; $55e4: $0c

jr_002_55e5:
    db $fc                                        ; $55e5: $fc
    jp nz, $e13e                                  ; $55e6: $c2 $3e $e1

    rra                                           ; $55e9: $1f
    pop af                                        ; $55ea: $f1
    rrca                                          ; $55eb: $0f
    pop af                                        ; $55ec: $f1
    rrca                                          ; $55ed: $0f
    pop af                                        ; $55ee: $f1
    rrca                                          ; $55ef: $0f
    db $e3                                        ; $55f0: $e3
    rra                                           ; $55f1: $1f
    db $e3                                        ; $55f2: $e3
    rra                                           ; $55f3: $1f
    rst RST_00                                    ; $55f4: $c7
    ccf                                           ; $55f5: $3f
    ld b, $ff                                     ; $55f6: $06 $ff
    ld [hl], $ff                                  ; $55f8: $36 $ff
    db $f4                                        ; $55fa: $f4
    ld a, a                                       ; $55fb: $7f
    db $ed                                        ; $55fc: $ed
    ld a, [hl]                                    ; $55fd: $7e
    inc d                                         ; $55fe: $14
    rst RST_38                                    ; $55ff: $ff
    jp hl                                         ; $5600: $e9


    rst RST_38                                    ; $5601: $ff
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    add b                                         ; $5608: $80

Jump_002_5609:
    add b                                         ; $5609: $80
    ld [hl], b                                    ; $560a: $70
    ldh a, [$ff8c]                                ; $560b: $f0 $8c
    db $fc                                        ; $560d: $fc
    ldh [c], a                                    ; $560e: $e2
    cp $82                                        ; $560f: $fe $82
    cp $31                                        ; $5611: $fe $31
    rst RST_08                                    ; $5613: $cf
    ld a, c                                       ; $5614: $79
    add a                                         ; $5615: $87
    ld a, c                                       ; $5616: $79
    add a                                         ; $5617: $87
    ld a, c                                       ; $5618: $79
    add a                                         ; $5619: $87
    ldh a, [c]                                    ; $561a: $f2
    ld c, $e4                                     ; $561b: $0e $e4
    inc e                                         ; $561d: $1c
    ld c, b                                       ; $561e: $48
    cp b                                          ; $561f: $b8
    ld l, b                                       ; $5620: $68
    sbc b                                         ; $5621: $98
    inc a                                         ; $5622: $3c
    inc hl                                        ; $5623: $23
    inc a                                         ; $5624: $3c
    inc hl                                        ; $5625: $23
    dec l                                         ; $5626: $2d
    inc sp                                        ; $5627: $33
    add hl, de                                    ; $5628: $19
    rla                                           ; $5629: $17
    inc e                                         ; $562a: $1c
    inc de                                        ; $562b: $13
    cpl                                           ; $562c: $2f
    jr nc, jr_002_566b                            ; $562d: $30 $3c

    inc hl                                        ; $562f: $23
    ld e, c                                       ; $5630: $59
    ld h, a                                       ; $5631: $67
    ld a, c                                       ; $5632: $79
    ld b, a                                       ; $5633: $47
    ld a, c                                       ; $5634: $79
    ld b, a                                       ; $5635: $47
    ld a, b                                       ; $5636: $78
    ld c, a                                       ; $5637: $4f
    ld [hl], a                                    ; $5638: $77
    ld e, a                                       ; $5639: $5f
    dec hl                                        ; $563a: $2b
    ccf                                           ; $563b: $3f
    inc e                                         ; $563c: $1c
    inc e                                         ; $563d: $1c
    nop                                           ; $563e: $00
    nop                                           ; $563f: $00
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    jp c, $cff7                                   ; $5642: $da $f7 $cf

    ld sp, hl                                     ; $5645: $f9
    ld b, a                                       ; $5646: $47
    ld a, [hl]                                    ; $5647: $7e
    ld h, e                                       ; $5648: $63
    ld e, a                                       ; $5649: $5f
    ld hl, sp-$39                                 ; $564a: $f8 $c7
    dec a                                         ; $564c: $3d
    db $e3                                        ; $564d: $e3
    db $dd                                        ; $564e: $dd
    inc sp                                        ; $564f: $33
    ld a, [$7ad6]                                 ; $5650: $fa $d6 $7a
    ld d, [hl]                                    ; $5653: $56
    ld [hl], d                                    ; $5654: $72
    ld l, [hl]                                    ; $5655: $6e
    db $e4                                        ; $5656: $e4
    cp h                                          ; $5657: $bc
    jp nz, Jump_002_5afe                          ; $5658: $c2 $fe $5a

    ld h, [hl]                                    ; $565b: $66
    ld a, d                                       ; $565c: $7a
    ld b, [hl]                                    ; $565d: $46
    ld [hl], h                                    ; $565e: $74

jr_002_565f:
    ld c, h                                       ; $565f: $4c
    jr c, @+$3a                                   ; $5660: $38 $38

    inc sp                                        ; $5662: $33
    rst RST_28                                    ; $5663: $ef
    rst RST_28                                    ; $5664: $ef
    rst RST_18                                    ; $5665: $df
    rst RST_38                                    ; $5666: $ff
    ccf                                           ; $5667: $3f
    di                                            ; $5668: $f3
    rst RST_38                                    ; $5669: $ff
    rst RST_00                                    ; $566a: $c7

jr_002_566b:
    rst RST_38                                    ; $566b: $ff
    xor a                                         ; $566c: $af
    cp b                                          ; $566d: $b8
    ld a, $37                                     ; $566e: $3e $37
    ld a, [hl-]                                   ; $5670: $3a
    cpl                                           ; $5671: $2f
    dec d                                         ; $5672: $15
    ld e, $17                                     ; $5673: $1e $17
    inc e                                         ; $5675: $1c
    dec bc                                        ; $5676: $0b
    dec c                                         ; $5677: $0d
    rrca                                          ; $5678: $0f
    add hl, bc                                    ; $5679: $09
    ld c, $0b                                     ; $567a: $0e $0b
    rlca                                          ; $567c: $07

jr_002_567d:
    rlca                                          ; $567d: $07
    nop                                           ; $567e: $00
    nop                                           ; $567f: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    db $e4                                        ; $5682: $e4
    inc e                                         ; $5683: $1c
    db $f4                                        ; $5684: $f4
    inc c                                         ; $5685: $0c
    db $f4                                        ; $5686: $f4
    inc c                                         ; $5687: $0c
    db $f4                                        ; $5688: $f4
    adc h                                         ; $5689: $8c
    db $f4                                        ; $568a: $f4
    adc h                                         ; $568b: $8c
    ret z                                         ; $568c: $c8

    jr c, jr_002_565f                             ; $568d: $38 $d0

    jr nc, @-$2e                                  ; $568f: $30 $d0

    jr nc, @-$16                                  ; $5691: $30 $e8

    jr jr_002_567d                                ; $5693: $18 $e8

    jr jr_002_569f                                ; $5695: $18 $08

    ld hl, sp+$78                                 ; $5697: $f8 $78
    ld hl, sp-$50                                 ; $5699: $f8 $b0
    ldh a, [$ffe0]                                ; $569b: $f0 $e0
    ldh [rP1], a                                  ; $569d: $e0 $00

jr_002_569f:
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00
    rrca                                          ; $56a2: $0f
    rrca                                          ; $56a3: $0f
    jr nc, jr_002_56e5                            ; $56a4: $30 $3f

    ld c, a                                       ; $56a6: $4f
    ld a, a                                       ; $56a7: $7f
    or c                                          ; $56a8: $b1
    pop af                                        ; $56a9: $f1
    jp $84c2                                      ; $56aa: $c3 $c2 $84


    add a                                         ; $56ad: $87
    dec c                                         ; $56ae: $0d
    dec bc                                        ; $56af: $0b
    dec de                                        ; $56b0: $1b
    rla                                           ; $56b1: $17
    inc sp                                        ; $56b2: $33
    cpl                                           ; $56b3: $2f
    ld [hl], l                                    ; $56b4: $75
    ld l, a                                       ; $56b5: $6f
    ld h, l                                       ; $56b6: $65
    ld e, a                                       ; $56b7: $5f
    ld h, a                                       ; $56b8: $67
    ld e, l                                       ; $56b9: $5d
    ld [hl], e                                    ; $56ba: $73
    ld l, l                                       ; $56bb: $6d
    ccf                                           ; $56bc: $3f
    ld sp, $3f3f                                  ; $56bd: $31 $3f $3f
    daa                                           ; $56c0: $27
    ccf                                           ; $56c1: $3f
    rst RST_38                                    ; $56c2: $ff
    rst RST_38                                    ; $56c3: $ff
    ld l, e                                       ; $56c4: $6b
    rst RST_38                                    ; $56c5: $ff
    db $dd                                        ; $56c6: $dd
    cp $36                                        ; $56c7: $fe $36
    rst RST_30                                    ; $56c9: $f7
    ld h, c                                       ; $56ca: $61
    pop hl                                        ; $56cb: $e1
    pop bc                                        ; $56cc: $c1
    pop bc                                        ; $56cd: $c1
    sbc a                                         ; $56ce: $9f
    sbc a                                         ; $56cf: $9f
    db $fd                                        ; $56d0: $fd
    ldh [c], a                                    ; $56d1: $e2
    ld sp, hl                                     ; $56d2: $f9
    sbc a                                         ; $56d3: $9f
    and b                                         ; $56d4: $a0
    ld a, a                                       ; $56d5: $7f
    set 7, [hl]                                   ; $56d6: $cb $fe
    ld [hl], a                                    ; $56d8: $77
    ld hl, sp-$3b                                 ; $56d9: $f8 $c5
    ld a, a                                       ; $56db: $7f
    rst RST_20                                    ; $56dc: $e7
    ld e, h                                       ; $56dd: $5c
    rst RST_30                                    ; $56de: $f7
    rst RST_38                                    ; $56df: $ff
    rst RST_38                                    ; $56e0: $ff
    cp $83                                        ; $56e1: $fe $83
    add e                                         ; $56e3: $83
    pop hl                                        ; $56e4: $e1

jr_002_56e5:
    pop hl                                        ; $56e5: $e1
    ld [hl], c                                    ; $56e6: $71
    pop af                                        ; $56e7: $f1
    sbc b                                         ; $56e8: $98
    ld hl, sp+$7c                                 ; $56e9: $f8 $7c
    cp h                                          ; $56eb: $bc
    call z, $febc                                 ; $56ec: $cc $bc $fe
    cp $03                                        ; $56ef: $fe $03
    rst RST_38                                    ; $56f1: $ff
    dec l                                         ; $56f2: $2d
    rst RST_38                                    ; $56f3: $ff
    ld [bc], a                                    ; $56f4: $02
    rst RST_38                                    ; $56f5: $ff
    dec e                                         ; $56f6: $1d
    rst RST_38                                    ; $56f7: $ff
    ld c, [hl]                                    ; $56f8: $4e
    rst RST_38                                    ; $56f9: $ff
    add l                                         ; $56fa: $85
    ld a, [hl]                                    ; $56fb: $7e
    ld d, l                                       ; $56fc: $55
    cp $07                                        ; $56fd: $fe $07
    rst RST_38                                    ; $56ff: $ff
    rra                                           ; $5700: $1f
    rst RST_38                                    ; $5701: $ff
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    ret nz                                        ; $5704: $c0

    ret nz                                        ; $5705: $c0

    ld h, b                                       ; $5706: $60
    ldh [$ffb0], a                                ; $5707: $e0 $b0
    ldh a, [$ffb0]                                ; $5709: $f0 $b0
    ldh a, [$ff98]                                ; $570b: $f0 $98
    ld hl, sp-$28                                 ; $570d: $f8 $d8
    ld hl, sp-$34                                 ; $570f: $f8 $cc
    db $fc                                        ; $5711: $fc
    db $ec                                        ; $5712: $ec
    db $fc                                        ; $5713: $fc
    xor h                                         ; $5714: $ac
    db $fc                                        ; $5715: $fc
    and [hl]                                      ; $5716: $a6
    cp $a6                                        ; $5717: $fe $a6
    cp $c6                                        ; $5719: $fe $c6
    cp [hl]                                       ; $571b: $be
    ld c, [hl]                                    ; $571c: $4e
    cp [hl]                                       ; $571d: $be
    db $fc                                        ; $571e: $fc
    db $fc                                        ; $571f: $fc
    cp $fe                                        ; $5720: $fe $fe
    inc a                                         ; $5722: $3c
    ccf                                           ; $5723: $3f
    inc b                                         ; $5724: $04
    rlca                                          ; $5725: $07
    ld b, $05                                     ; $5726: $06 $05
    ld [bc], a                                    ; $5728: $02
    inc bc                                        ; $5729: $03
    inc bc                                        ; $572a: $03
    ld [bc], a                                    ; $572b: $02
    rra                                           ; $572c: $1f
    ld e, $3c                                     ; $572d: $1e $3c
    inc sp                                        ; $572f: $33
    ld h, c                                       ; $5730: $61
    ld e, a                                       ; $5731: $5f
    ld [hl], e                                    ; $5732: $73
    ld a, a                                       ; $5733: $7f
    ld a, $3e                                     ; $5734: $3e $3e
    jr c, jr_002_5770                             ; $5736: $38 $38

    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    ld bc, $0301                                  ; $573a: $01 $01 $03
    ld [bc], a                                    ; $573d: $02
    ld [bc], a                                    ; $573e: $02
    inc bc                                        ; $573f: $03
    ld bc, $0601                                  ; $5740: $01 $01 $06
    rst RST_38                                    ; $5743: $ff
    rst RST_10                                    ; $5744: $d7
    db $fd                                        ; $5745: $fd
    rst RST_08                                    ; $5746: $cf
    db $fd                                        ; $5747: $fd
    rst RST_08                                    ; $5748: $cf
    db $fd                                        ; $5749: $fd
    halt                                          ; $574a: $76
    db $fd                                        ; $574b: $fd
    ld a, h                                       ; $574c: $7c
    db $eb                                        ; $574d: $eb
    ldh a, [$ffcf]                                ; $574e: $f0 $cf
    db $e3                                        ; $5750: $e3
    call c, $dbe4                                 ; $5751: $dc $e4 $db
    ld c, a                                       ; $5754: $4f
    ld [hl], a                                    ; $5755: $77
    add $ff                                       ; $5756: $c6 $ff
    ret                                           ; $5758: $c9


    cp a                                          ; $5759: $bf
    add a                                         ; $575a: $87
    ld a, a                                       ; $575b: $7f
    ld e, a                                       ; $575c: $5f
    rst RST_38                                    ; $575d: $ff
    ld a, $fe                                     ; $575e: $3e $fe
    db $ec                                        ; $5760: $ec
    db $ec                                        ; $5761: $ec
    cp a                                          ; $5762: $bf
    rst RST_38                                    ; $5763: $ff
    jr @+$01                                      ; $5764: $18 $ff

    ld a, c                                       ; $5766: $79
    rst RST_38                                    ; $5767: $ff
    ld a, [hl-]                                   ; $5768: $3a
    rst RST_38                                    ; $5769: $ff
    add hl, de                                    ; $576a: $19
    cp $d9                                        ; $576b: $fe $d9
    rst RST_38                                    ; $576d: $ff
    ld a, a                                       ; $576e: $7f
    db $fc                                        ; $576f: $fc

jr_002_5770:
    scf                                           ; $5770: $37
    or $b1                                        ; $5771: $f6 $b1
    pop af                                        ; $5773: $f1
    ld sp, $71f1                                  ; $5774: $31 $f1 $71
    pop af                                        ; $5777: $f1
    pop hl                                        ; $5778: $e1
    pop hl                                        ; $5779: $e1
    pop bc                                        ; $577a: $c1
    pop bc                                        ; $577b: $c1
    inc bc                                        ; $577c: $03
    ld [bc], a                                    ; $577d: $02
    ld [bc], a                                    ; $577e: $02
    inc bc                                        ; $577f: $03
    inc bc                                        ; $5780: $03
    inc bc                                        ; $5781: $03
    push af                                       ; $5782: $f5
    rst RST_38                                    ; $5783: $ff
    ld [hl], l                                    ; $5784: $75
    rst RST_38                                    ; $5785: $ff

jr_002_5786:
    rst RST_38                                    ; $5786: $ff
    rst RST_38                                    ; $5787: $ff

jr_002_5788:
    inc a                                         ; $5788: $3c
    db $fc                                        ; $5789: $fc
    ld hl, sp-$08                                 ; $578a: $f8 $f8
    jr jr_002_5786                                ; $578c: $18 $f8

    jr c, jr_002_5788                             ; $578e: $38 $f8

    ldh a, [$fff0]                                ; $5790: $f0 $f0
    ldh a, [$ff30]                                ; $5792: $f0 $30
    or b                                          ; $5794: $b0
    ld [hl], b                                    ; $5795: $70
    ld hl, sp+$78                                 ; $5796: $f8 $78
    ret c                                         ; $5798: $d8

    jr c, jr_002_57c7                             ; $5799: $38 $2c

    db $fc                                        ; $579b: $fc
    sub $fe                                       ; $579c: $d6 $fe
    sbc $fe                                       ; $579e: $de $fe
    ld l, [hl]                                    ; $57a0: $6e
    ld l, [hl]                                    ; $57a1: $6e
    rrca                                          ; $57a2: $0f
    rrca                                          ; $57a3: $0f
    ld sp, $4f3f                                  ; $57a4: $31 $3f $4f
    ld a, a                                       ; $57a7: $7f
    or [hl]                                       ; $57a8: $b6
    rst RST_30                                    ; $57a9: $f7
    call $93cb                                    ; $57aa: $cd $cb $93
    sbc a                                         ; $57ad: $9f
    scf                                           ; $57ae: $37
    cpl                                           ; $57af: $2f
    halt                                          ; $57b0: $76
    ld c, [hl]                                    ; $57b1: $4e
    ld l, a                                       ; $57b2: $6f
    ld e, a                                       ; $57b3: $5f
    db $eb                                        ; $57b4: $eb
    sbc a                                         ; $57b5: $9f
    res 7, a                                      ; $57b6: $cb $bf
    adc $bb                                       ; $57b8: $ce $bb
    and $db                                       ; $57ba: $e6 $db
    ld a, [hl]                                    ; $57bc: $7e
    ld h, e                                       ; $57bd: $63
    ccf                                           ; $57be: $3f
    ccf                                           ; $57bf: $3f
    daa                                           ; $57c0: $27
    ccf                                           ; $57c1: $3f
    rst RST_38                                    ; $57c2: $ff
    rst RST_38                                    ; $57c3: $ff
    or e                                          ; $57c4: $b3
    rst RST_38                                    ; $57c5: $ff
    ld a, l                                       ; $57c6: $7d

jr_002_57c7:
    cp $c6                                        ; $57c7: $fe $c6
    rst RST_00                                    ; $57c9: $c7
    add c                                         ; $57ca: $81
    add c                                         ; $57cb: $81
    ld bc, $1f01                                  ; $57cc: $01 $01 $1f
    rra                                           ; $57cf: $1f
    ld a, l                                       ; $57d0: $7d
    ld h, d                                       ; $57d1: $62
    ld sp, hl                                     ; $57d2: $f9
    sbc a                                         ; $57d3: $9f
    and b                                         ; $57d4: $a0
    ld a, a                                       ; $57d5: $7f
    set 7, [hl]                                   ; $57d6: $cb $fe
    ld [hl], a                                    ; $57d8: $77
    ld hl, sp-$37                                 ; $57d9: $f8 $c9
    ld a, a                                       ; $57db: $7f
    rst RST_28                                    ; $57dc: $ef
    ld e, b                                       ; $57dd: $58
    rst RST_38                                    ; $57de: $ff
    rst RST_38                                    ; $57df: $ff
    rst RST_38                                    ; $57e0: $ff
    db $fc                                        ; $57e1: $fc
    add b                                         ; $57e2: $80
    add b                                         ; $57e3: $80
    ldh [$ffe0], a                                ; $57e4: $e0 $e0
    ld [hl], b                                    ; $57e6: $70
    ldh a, [$ff98]                                ; $57e7: $f0 $98
    ld hl, sp+$7c                                 ; $57e9: $f8 $7c
    cp h                                          ; $57eb: $bc
    call z, $febc                                 ; $57ec: $cc $bc $fe
    cp $03                                        ; $57ef: $fe $03
    rst RST_38                                    ; $57f1: $ff
    dec l                                         ; $57f2: $2d
    rst RST_38                                    ; $57f3: $ff
    ld [bc], a                                    ; $57f4: $02
    rst RST_38                                    ; $57f5: $ff
    dec e                                         ; $57f6: $1d
    rst RST_38                                    ; $57f7: $ff
    ld c, a                                       ; $57f8: $4f
    rst RST_38                                    ; $57f9: $ff
    add h                                         ; $57fa: $84
    ld a, a                                       ; $57fb: $7f
    ld d, h                                       ; $57fc: $54
    rst RST_38                                    ; $57fd: $ff
    rlca                                          ; $57fe: $07
    rst RST_38                                    ; $57ff: $ff
    rra                                           ; $5800: $1f
    rst RST_38                                    ; $5801: $ff
    ldh [$ffe0], a                                ; $5802: $e0 $e0
    ld [hl], b                                    ; $5804: $70
    ld [hl], b                                    ; $5805: $70
    ld e, b                                       ; $5806: $58
    ld a, b                                       ; $5807: $78
    ld e, h                                       ; $5808: $5c
    ld a, h                                       ; $5809: $7c
    inc l                                         ; $580a: $2c
    inc a                                         ; $580b: $3c
    ld l, $3e                                     ; $580c: $2e $3e
    ld h, $3e                                     ; $580e: $26 $3e
    or $fe                                        ; $5810: $f6 $fe
    rst RST_30                                    ; $5812: $f7
    rst RST_38                                    ; $5813: $ff
    db $d3                                        ; $5814: $d3
    rst RST_38                                    ; $5815: $ff
    db $d3                                        ; $5816: $d3
    rst RST_38                                    ; $5817: $ff
    ld d, e                                       ; $5818: $53
    rst RST_38                                    ; $5819: $ff
    db $e3                                        ; $581a: $e3
    ld e, a                                       ; $581b: $5f
    and a                                         ; $581c: $a7
    ld e, a                                       ; $581d: $5f
    cp $fe                                        ; $581e: $fe $fe
    cp $fe                                        ; $5820: $fe $fe
    inc a                                         ; $5822: $3c
    ccf                                           ; $5823: $3f
    inc b                                         ; $5824: $04
    rlca                                          ; $5825: $07
    ld b, $05                                     ; $5826: $06 $05
    ld [bc], a                                    ; $5828: $02
    inc bc                                        ; $5829: $03
    inc bc                                        ; $582a: $03
    ld [bc], a                                    ; $582b: $02
    rra                                           ; $582c: $1f
    ld e, $3c                                     ; $582d: $1e $3c
    inc sp                                        ; $582f: $33
    ld h, b                                       ; $5830: $60
    ld e, a                                       ; $5831: $5f
    ld [hl], e                                    ; $5832: $73
    ld a, a                                       ; $5833: $7f
    ld a, $3d                                     ; $5834: $3e $3d
    inc a                                         ; $5836: $3c
    ccf                                           ; $5837: $3f
    inc b                                         ; $5838: $04
    rlca                                          ; $5839: $07
    inc bc                                        ; $583a: $03
    inc bc                                        ; $583b: $03
    nop                                           ; $583c: $00
    nop                                           ; $583d: $00
    nop                                           ; $583e: $00
    nop                                           ; $583f: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    inc c                                         ; $5842: $0c
    rst RST_38                                    ; $5843: $ff
    sbc $fb                                       ; $5844: $de $fb
    adc $fb                                       ; $5846: $ce $fb
    adc $fb                                       ; $5848: $ce $fb
    ld h, [hl]                                    ; $584a: $66
    ld sp, hl                                     ; $584b: $f9
    ld e, d                                       ; $584c: $5a
    rst RST_20                                    ; $584d: $e7
    db $ec                                        ; $584e: $ec
    rst RST_18                                    ; $584f: $df
    db $db                                        ; $5850: $db
    cp h                                          ; $5851: $bc
    add h                                         ; $5852: $84
    ld a, e                                       ; $5853: $7b
    rrca                                          ; $5854: $0f
    rst RST_38                                    ; $5855: $ff
    ld a, $ff                                     ; $5856: $3e $ff
    call $1bcf                                    ; $5858: $cd $cf $1b
    rra                                           ; $585b: $1f
    ld [hl], $3e                                  ; $585c: $36 $3e
    jr c, jr_002_5898                             ; $585e: $38 $38

    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    cp a                                          ; $5862: $bf
    rst RST_38                                    ; $5863: $ff
    jr @+$01                                      ; $5864: $18 $ff

    ld a, c                                       ; $5866: $79
    rst RST_38                                    ; $5867: $ff
    ld a, [hl-]                                   ; $5868: $3a
    rst RST_38                                    ; $5869: $ff
    add hl, de                                    ; $586a: $19
    cp $59                                        ; $586b: $fe $59
    rst RST_38                                    ; $586d: $ff
    ld a, a                                       ; $586e: $7f
    db $fc                                        ; $586f: $fc
    ld [hl], a                                    ; $5870: $77
    or $b1                                        ; $5871: $f6 $b1
    pop af                                        ; $5873: $f1
    ld hl, $61e1                                  ; $5874: $21 $e1 $61
    pop hl                                        ; $5877: $e1
    pop bc                                        ; $5878: $c1
    pop bc                                        ; $5879: $c1
    ld bc, $0301                                  ; $587a: $01 $01 $03
    ld [bc], a                                    ; $587d: $02
    ld [bc], a                                    ; $587e: $02
    inc bc                                        ; $587f: $03
    inc bc                                        ; $5880: $03
    inc bc                                        ; $5881: $03
    push af                                       ; $5882: $f5
    rst RST_38                                    ; $5883: $ff
    ld [hl], l                                    ; $5884: $75
    rst RST_38                                    ; $5885: $ff

jr_002_5886:
    rst RST_38                                    ; $5886: $ff
    rst RST_38                                    ; $5887: $ff

jr_002_5888:
    inc a                                         ; $5888: $3c
    db $fc                                        ; $5889: $fc
    ld hl, sp-$08                                 ; $588a: $f8 $f8
    jr jr_002_5886                                ; $588c: $18 $f8

    jr c, jr_002_5888                             ; $588e: $38 $f8

    ldh a, [$fff0]                                ; $5890: $f0 $f0
    ldh a, [$ff30]                                ; $5892: $f0 $30
    or b                                          ; $5894: $b0
    ld [hl], b                                    ; $5895: $70
    ld hl, sp+$78                                 ; $5896: $f8 $78

jr_002_5898:
    ret c                                         ; $5898: $d8

    jr c, jr_002_58c7                             ; $5899: $38 $2c

    db $fc                                        ; $589b: $fc
    sub $fe                                       ; $589c: $d6 $fe
    sbc $fe                                       ; $589e: $de $fe
    ld l, [hl]                                    ; $58a0: $6e
    ld l, [hl]                                    ; $58a1: $6e
    inc a                                         ; $58a2: $3c
    inc a                                         ; $58a3: $3c
    ld a, a                                       ; $58a4: $7f
    ld b, e                                       ; $58a5: $43
    di                                            ; $58a6: $f3
    adc h                                         ; $58a7: $8c
    pop hl                                        ; $58a8: $e1
    sbc a                                         ; $58a9: $9f
    ldh [c], a                                    ; $58aa: $e2
    sbc [hl]                                      ; $58ab: $9e
    ldh a, [c]                                    ; $58ac: $f2
    adc [hl]                                      ; $58ad: $8e
    ld [hl], c                                    ; $58ae: $71
    ld c, a                                       ; $58af: $4f
    jr c, jr_002_58d9                             ; $58b0: $38 $27

    inc l                                         ; $58b2: $2c
    inc sp                                        ; $58b3: $33
    ld d, $19                                     ; $58b4: $16 $19
    dec bc                                        ; $58b6: $0b
    inc c                                         ; $58b7: $0c
    dec b                                         ; $58b8: $05
    ld b, $06                                     ; $58b9: $06 $06
    rlca                                          ; $58bb: $07
    dec bc                                        ; $58bc: $0b
    dec c                                         ; $58bd: $0d
    inc c                                         ; $58be: $0c
    dec bc                                        ; $58bf: $0b
    ld [hl], a                                    ; $58c0: $77
    ld a, e                                       ; $58c1: $7b
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    inc bc                                        ; $58c4: $03
    inc bc                                        ; $58c5: $03
    rst RST_08                                    ; $58c6: $cf

jr_002_58c7:
    call z, Call_000_131c                         ; $58c7: $cc $1c $13
    ld l, $31                                     ; $58ca: $2e $31
    ld [hl], b                                    ; $58cc: $70
    ld l, a                                       ; $58cd: $6f
    cp a                                          ; $58ce: $bf
    di                                            ; $58cf: $f3
    ld c, l                                       ; $58d0: $4d
    ldh a, [c]                                    ; $58d1: $f2
    ld e, e                                       ; $58d2: $5b
    db $e4                                        ; $58d3: $e4
    ld e, [hl]                                    ; $58d4: $5e
    pop hl                                        ; $58d5: $e1
    cpl                                           ; $58d6: $2f
    ld hl, sp+$17                                 ; $58d7: $f8 $17

jr_002_58d9:
    ld hl, sp-$7f                                 ; $58d9: $f8 $81
    ld a, [hl]                                    ; $58db: $7e
    ld c, e                                       ; $58dc: $4b
    cp h                                          ; $58dd: $bc
    db $eb                                        ; $58de: $eb
    call c, Call_002_7fac                         ; $58df: $dc $ac $7f
    ld a, a                                       ; $58e2: $7f
    ld a, a                                       ; $58e3: $7f
    xor $9e                                       ; $58e4: $ee $9e
    or b                                          ; $58e6: $b0
    ld [hl], b                                    ; $58e7: $70
    ld b, c                                       ; $58e8: $41
    pop bc                                        ; $58e9: $c1
    add b                                         ; $58ea: $80
    add b                                         ; $58eb: $80
    add b                                         ; $58ec: $80
    add b                                         ; $58ed: $80
    ld a, [$07fa]                                 ; $58ee: $fa $fa $07
    rst RST_38                                    ; $58f1: $ff
    ldh [c], a                                    ; $58f2: $e2
    rra                                           ; $58f3: $1f
    add d                                         ; $58f4: $82
    ld a, a                                       ; $58f5: $7f
    push de                                       ; $58f6: $d5
    ld a, $6b                                     ; $58f7: $3e $6b
    sbc h                                         ; $58f9: $9c
    rst RST_00                                    ; $58fa: $c7
    jr c, @-$1a                                   ; $58fb: $38 $e4

    rra                                           ; $58fd: $1f
    rlca                                          ; $58fe: $07
    rst RST_38                                    ; $58ff: $ff
    call z, $c03f                                 ; $5900: $cc $3f $c0
    ret nz                                        ; $5903: $c0

    inc e                                         ; $5904: $1c
    inc e                                         ; $5905: $1c
    ld l, d                                       ; $5906: $6a
    halt                                          ; $5907: $76
    cp l                                          ; $5908: $bd
    jp $734d                                      ; $5909: $c3 $4d $73


jr_002_590c:
    dec h                                         ; $590c: $25
    dec sp                                        ; $590d: $3b
    add hl, hl                                    ; $590e: $29
    scf                                           ; $590f: $37
    ld a, [hl+]                                   ; $5910: $2a
    ld [hl], $ca                                  ; $5911: $36 $ca
    or $24                                        ; $5913: $f6 $24
    call c, $9868                                 ; $5915: $dc $68 $98
    ld d, b                                       ; $5918: $50
    or b                                          ; $5919: $b0
    jr nc, jr_002_590c                            ; $591a: $30 $f0

    ret nc                                        ; $591c: $d0

    ldh a, [$ff58]                                ; $591d: $f0 $58
    ld hl, sp+$24                                 ; $591f: $f8 $24
    db $fc                                        ; $5921: $fc
    rst RST_38                                    ; $5922: $ff
    call nc, $a9fe                                ; $5923: $d4 $fe $a9
    rst RST_38                                    ; $5926: $ff

jr_002_5927:
    add sp, $3c                                   ; $5927: $e8 $3c
    inc sp                                        ; $5929: $33
    dec de                                        ; $592a: $1b
    inc d                                         ; $592b: $14
    ccf                                           ; $592c: $3f
    jr nc, jr_002_5927                            ; $592d: $30 $f8

    rst RST_00                                    ; $592f: $c7
    ld [hl], $39                                  ; $5930: $36 $39
    ld c, $09                                     ; $5932: $0e $09
    ld [$1e0f], sp                                ; $5934: $08 $0f $1e
    ld de, $1f19                                  ; $5937: $11 $19 $1f
    scf                                           ; $593a: $37
    ld l, $37                                     ; $593b: $2e $37
    ld l, $2a                                     ; $593d: $2e $2a
    dec sp                                        ; $593f: $3b
    ld sp, $ed31                                  ; $5940: $31 $31 $ed
    ld a, $0e                                     ; $5943: $3e $0e
    ei                                            ; $5945: $fb
    adc [hl]                                      ; $5946: $8e
    ld a, e                                       ; $5947: $7b
    rla                                           ; $5948: $17
    db $fd                                        ; $5949: $fd
    rla                                           ; $594a: $17
    db $fc                                        ; $594b: $fc
    dec de                                        ; $594c: $1b
    or $37                                        ; $594d: $f6 $37
    ld hl, sp+$4b                                 ; $594f: $f8 $4b
    call z, $8d8b                                 ; $5951: $cc $8b $8d
    cp e                                          ; $5954: $bb
    cp h                                          ; $5955: $bc
    sub a                                         ; $5956: $97
    sbc b                                         ; $5957: $98
    adc [hl]                                      ; $5958: $8e
    adc a                                         ; $5959: $8f
    ld b, c                                       ; $595a: $41
    pop bc                                        ; $595b: $c1
    ld b, b                                       ; $595c: $40
    ret nz                                        ; $595d: $c0

    ld b, b                                       ; $595e: $40
    ret nz                                        ; $595f: $c0

    add b                                         ; $5960: $80
    add b                                         ; $5961: $80
    call z, $1c3f                                 ; $5962: $cc $3f $1c
    rst RST_30                                    ; $5965: $f7

jr_002_5966:
    sbc $37                                       ; $5966: $de $37
    ld a, [hl]                                    ; $5968: $7e
    or a                                          ; $5969: $b7
    ld e, h                                       ; $596a: $5c
    and a                                         ; $596b: $a7
    db $f4                                        ; $596c: $f4
    rrca                                          ; $596d: $0f
    and d                                         ; $596e: $a2
    ld e, a                                       ; $596f: $5f
    ld a, [$fb07]                                 ; $5970: $fa $07 $fb
    rlca                                          ; $5973: $07
    ldh [c], a                                    ; $5974: $e2
    cp $e3                                        ; $5975: $fe $e3
    ld a, a                                       ; $5977: $7f
    db $fd                                        ; $5978: $fd
    inc de                                        ; $5979: $13
    sbc $e1                                       ; $597a: $de $e1
    cp d                                          ; $597c: $ba
    db $fd                                        ; $597d: $fd
    ld l, [hl]                                    ; $597e: $6e
    ld a, a                                       ; $597f: $7f
    add hl, de                                    ; $5980: $19
    add hl, de                                    ; $5981: $19
    inc a                                         ; $5982: $3c
    db $fc                                        ; $5983: $fc
    jr nz, jr_002_5966                            ; $5984: $20 $e0

    sub b                                         ; $5986: $90
    ld [hl], b                                    ; $5987: $70
    cp b                                          ; $5988: $b8
    ld a, b                                       ; $5989: $78
    ld b, b                                       ; $598a: $40
    ret nz                                        ; $598b: $c0

    ld a, b                                       ; $598c: $78
    ld hl, sp-$14                                 ; $598d: $f8 $ec
    inc e                                         ; $598f: $1c
    ld [hl-], a                                   ; $5990: $32
    cp $ee                                        ; $5991: $fe $ee
    sbc $64                                       ; $5993: $de $64
    ld a, h                                       ; $5995: $7c
    inc e                                         ; $5996: $1c
    inc e                                         ; $5997: $1c
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    add b                                         ; $599a: $80
    add b                                         ; $599b: $80
    add b                                         ; $599c: $80
    add b                                         ; $599d: $80
    add b                                         ; $599e: $80
    add b                                         ; $599f: $80
    add b                                         ; $59a0: $80
    add b                                         ; $59a1: $80
    inc a                                         ; $59a2: $3c
    inc a                                         ; $59a3: $3c
    ld a, a                                       ; $59a4: $7f
    ld b, e                                       ; $59a5: $43
    di                                            ; $59a6: $f3
    adc h                                         ; $59a7: $8c
    pop hl                                        ; $59a8: $e1
    sbc a                                         ; $59a9: $9f
    ldh [c], a                                    ; $59aa: $e2
    sbc [hl]                                      ; $59ab: $9e
    ldh a, [c]                                    ; $59ac: $f2
    adc [hl]                                      ; $59ad: $8e
    ld [hl], c                                    ; $59ae: $71
    ld c, a                                       ; $59af: $4f
    jr c, jr_002_59d9                             ; $59b0: $38 $27

    inc l                                         ; $59b2: $2c
    inc sp                                        ; $59b3: $33
    ld d, $19                                     ; $59b4: $16 $19
    dec bc                                        ; $59b6: $0b
    inc c                                         ; $59b7: $0c
    dec b                                         ; $59b8: $05
    ld b, $06                                     ; $59b9: $06 $06
    rlca                                          ; $59bb: $07
    dec bc                                        ; $59bc: $0b
    dec c                                         ; $59bd: $0d
    ld c, $0b                                     ; $59be: $0e $0b
    halt                                          ; $59c0: $76
    ld a, l                                       ; $59c1: $7d
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    ld bc, $c701                                  ; $59c4: $01 $01 $c7
    add $1c                                       ; $59c7: $c6 $1c
    dec de                                        ; $59c9: $1b
    ld l, $31                                     ; $59ca: $2e $31
    ld [hl], b                                    ; $59cc: $70
    ld l, a                                       ; $59cd: $6f
    cp a                                          ; $59ce: $bf
    di                                            ; $59cf: $f3
    ld c, l                                       ; $59d0: $4d
    ldh a, [c]                                    ; $59d1: $f2
    ld e, e                                       ; $59d2: $5b
    db $e4                                        ; $59d3: $e4
    ld e, [hl]                                    ; $59d4: $5e
    pop hl                                        ; $59d5: $e1
    cpl                                           ; $59d6: $2f
    ld hl, sp+$17                                 ; $59d7: $f8 $17

jr_002_59d9:
    ld hl, sp-$77                                 ; $59d9: $f8 $89
    ld a, [hl]                                    ; $59db: $7e
    ld c, e                                       ; $59dc: $4b
    cp h                                          ; $59dd: $bc
    rst RST_28                                    ; $59de: $ef
    call c, $ff2c                                 ; $59df: $dc $2c $ff
    nop                                           ; $59e2: $00
    nop                                           ; $59e3: $00
    rst RST_38                                    ; $59e4: $ff
    rst RST_38                                    ; $59e5: $ff
    rst RST_08                                    ; $59e6: $cf
    ccf                                           ; $59e7: $3f
    ld sp, $c0f1                                  ; $59e8: $31 $f1 $c0
    ret nz                                        ; $59eb: $c0

    add b                                         ; $59ec: $80
    add b                                         ; $59ed: $80
    ld a, [$07fa]                                 ; $59ee: $fa $fa $07
    rst RST_38                                    ; $59f1: $ff
    ldh [c], a                                    ; $59f2: $e2
    rra                                           ; $59f3: $1f
    add d                                         ; $59f4: $82
    ld a, a                                       ; $59f5: $7f
    push de                                       ; $59f6: $d5
    ld a, $6b                                     ; $59f7: $3e $6b
    sbc h                                         ; $59f9: $9c
    rst RST_00                                    ; $59fa: $c7
    inc a                                         ; $59fb: $3c
    db $e4                                        ; $59fc: $e4
    rra                                           ; $59fd: $1f
    rrca                                          ; $59fe: $0f
    rst RST_38                                    ; $59ff: $ff
    call z, Call_000_003f                         ; $5a00: $cc $3f $00
    nop                                           ; $5a03: $00
    inc e                                         ; $5a04: $1c
    inc e                                         ; $5a05: $1c
    ld [$bdf6], a                                 ; $5a06: $ea $f6 $bd
    jp $734d                                      ; $5a09: $c3 $4d $73


jr_002_5a0c:
    dec h                                         ; $5a0c: $25
    dec sp                                        ; $5a0d: $3b
    add hl, hl                                    ; $5a0e: $29
    scf                                           ; $5a0f: $37
    ld a, [hl+]                                   ; $5a10: $2a
    ld [hl], $ca                                  ; $5a11: $36 $ca
    or $24                                        ; $5a13: $f6 $24
    call c, $9868                                 ; $5a15: $dc $68 $98
    ld d, b                                       ; $5a18: $50
    or b                                          ; $5a19: $b0
    jr nc, jr_002_5a0c                            ; $5a1a: $30 $f0

    ret nc                                        ; $5a1c: $d0

    ldh a, [$ff98]                                ; $5a1d: $f0 $98
    ld hl, sp+$44                                 ; $5a1f: $f8 $44
    db $fc                                        ; $5a21: $fc
    rst RST_38                                    ; $5a22: $ff

jr_002_5a23:
    ret c                                         ; $5a23: $d8

    db $fc                                        ; $5a24: $fc
    xor e                                         ; $5a25: $ab
    ei                                            ; $5a26: $fb
    db $ec                                        ; $5a27: $ec
    ccf                                           ; $5a28: $3f
    jr nc, jr_002_5a23                            ; $5a29: $30 $f8

    rst RST_00                                    ; $5a2b: $c7
    scf                                           ; $5a2c: $37
    jr c, @+$10                                   ; $5a2d: $38 $0e

    add hl, bc                                    ; $5a2f: $09
    ld [$1e0f], sp                                ; $5a30: $08 $0f $1e
    ld de, $1f19                                  ; $5a33: $11 $19 $1f
    scf                                           ; $5a36: $37
    ld l, $37                                     ; $5a37: $2e $37
    ld l, $2a                                     ; $5a39: $2e $2a
    dec sp                                        ; $5a3b: $3b
    ld sp, $0031                                  ; $5a3c: $31 $31 $00
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    xor a                                         ; $5a42: $af
    ld a, d                                       ; $5a43: $7a
    ld c, $fb                                     ; $5a44: $0e $fb
    sub a                                         ; $5a46: $97
    ld a, l                                       ; $5a47: $7d
    sub a                                         ; $5a48: $97
    ld a, h                                       ; $5a49: $7c
    dec sp                                        ; $5a4a: $3b
    or $5f                                        ; $5a4b: $f6 $5f
    ret nc                                        ; $5a4d: $d0

    sub a                                         ; $5a4e: $97
    sbc b                                         ; $5a4f: $98
    adc e                                         ; $5a50: $8b
    adc l                                         ; $5a51: $8d
    adc e                                         ; $5a52: $8b
    adc h                                         ; $5a53: $8c
    cp e                                          ; $5a54: $bb
    cp h                                          ; $5a55: $bc
    ld d, a                                       ; $5a56: $57
    ret c                                         ; $5a57: $d8

    ld c, a                                       ; $5a58: $4f
    rst RST_08                                    ; $5a59: $cf
    ld b, c                                       ; $5a5a: $41
    pop bc                                        ; $5a5b: $c1
    add b                                         ; $5a5c: $80
    add b                                         ; $5a5d: $80
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    nop                                           ; $5a61: $00
    call c, Call_000_1c37                         ; $5a62: $dc $37 $1c
    rst RST_30                                    ; $5a65: $f7
    ld a, [hl]                                    ; $5a66: $7e
    or a                                          ; $5a67: $b7
    ld e, a                                       ; $5a68: $5f
    and a                                         ; $5a69: $a7
    or $0f                                        ; $5a6a: $f6 $0f
    and [hl]                                      ; $5a6c: $a6
    ld e, a                                       ; $5a6d: $5f

jr_002_5a6e:
    ld a, [$fa07]                                 ; $5a6e: $fa $07 $fa
    rlca                                          ; $5a71: $07
    ei                                            ; $5a72: $fb
    rst RST_20                                    ; $5a73: $e7
    ldh [c], a                                    ; $5a74: $e2
    ld a, [hl]                                    ; $5a75: $7e
    ld sp, hl                                     ; $5a76: $f9
    rla                                           ; $5a77: $17
    sbc $e1                                       ; $5a78: $de $e1
    ld a, [hl-]                                   ; $5a7a: $3a
    db $fd                                        ; $5a7b: $fd
    sbc [hl]                                      ; $5a7c: $9e
    rst RST_38                                    ; $5a7d: $ff
    ld l, c                                       ; $5a7e: $69
    ld a, c                                       ; $5a7f: $79
    jr jr_002_5a9a                                ; $5a80: $18 $18

    inc a                                         ; $5a82: $3c
    db $fc                                        ; $5a83: $fc
    db $10                                        ; $5a84: $10
    ldh a, [rNR10]                                ; $5a85: $f0 $10
    ldh a, [rOBP0]                                ; $5a87: $f0 $48
    cp b                                          ; $5a89: $b8
    ld e, h                                       ; $5a8a: $5c
    cp h                                          ; $5a8b: $bc
    jr nz, jr_002_5a6e                            ; $5a8c: $20 $e0

    inc a                                         ; $5a8e: $3c
    db $fc                                        ; $5a8f: $fc
    halt                                          ; $5a90: $76
    adc [hl]                                      ; $5a91: $8e
    add hl, de                                    ; $5a92: $19
    rst RST_38                                    ; $5a93: $ff
    rst RST_30                                    ; $5a94: $f7
    rst RST_28                                    ; $5a95: $ef
    ld [hl-], a                                   ; $5a96: $32
    ld a, $8e                                     ; $5a97: $3e $8e
    adc [hl]                                      ; $5a99: $8e

jr_002_5a9a:
    add b                                         ; $5a9a: $80
    add b                                         ; $5a9b: $80
    add b                                         ; $5a9c: $80
    add b                                         ; $5a9d: $80
    add b                                         ; $5a9e: $80
    add b                                         ; $5a9f: $80
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    ret nz                                        ; $5aa4: $c0

    ret nz                                        ; $5aa5: $c0

    ldh [$ffa0], a                                ; $5aa6: $e0 $a0
    ld a, c                                       ; $5aa8: $79
    ld e, c                                       ; $5aa9: $59
    ld l, $37                                     ; $5aaa: $2e $37
    rra                                           ; $5aac: $1f
    rra                                           ; $5aad: $1f
    rra                                           ; $5aae: $1f
    db $10                                        ; $5aaf: $10
    jr c, jr_002_5ad9                             ; $5ab0: $38 $27

    ld [hl], c                                    ; $5ab2: $71
    ld c, a                                       ; $5ab3: $4f
    ld [hl], d                                    ; $5ab4: $72
    ld c, a                                       ; $5ab5: $4f
    ld a, d                                       ; $5ab6: $7a
    ld b, a                                       ; $5ab7: $47
    dec sp                                        ; $5ab8: $3b
    daa                                           ; $5ab9: $27
    ld a, a                                       ; $5aba: $7f
    ld d, h                                       ; $5abb: $54
    halt                                          ; $5abc: $76
    ld e, l                                       ; $5abd: $5d
    rst RST_28                                    ; $5abe: $ef
    sbc b                                         ; $5abf: $98
    rst RST_28                                    ; $5ac0: $ef
    cp b                                          ; $5ac1: $b8
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    rra                                           ; $5ac4: $1f
    rra                                           ; $5ac5: $1f
    ld h, b                                       ; $5ac6: $60
    ld a, a                                       ; $5ac7: $7f
    cp a                                          ; $5ac8: $bf
    ret nz                                        ; $5ac9: $c0

    ld a, a                                       ; $5aca: $7f
    sbc h                                         ; $5acb: $9c
    cp e                                          ; $5acc: $bb
    rst RST_28                                    ; $5acd: $ef
    ld a, h                                       ; $5ace: $7c
    di                                            ; $5acf: $f3
    ld a, $e1                                     ; $5ad0: $3e $e1
    ld a, [hl]                                    ; $5ad2: $7e
    add c                                         ; $5ad3: $81
    rst RST_38                                    ; $5ad4: $ff
    ld [bc], a                                    ; $5ad5: $02
    ld a, [$fcff]                                 ; $5ad6: $fa $ff $fc

jr_002_5ad9:
    rlca                                          ; $5ad9: $07
    rst RST_00                                    ; $5ada: $c7
    dec sp                                        ; $5adb: $3b
    inc bc                                        ; $5adc: $03
    db $fc                                        ; $5add: $fc
    sub e                                         ; $5ade: $93
    ld a, h                                       ; $5adf: $7c
    inc hl                                        ; $5ae0: $23
    cp $07                                        ; $5ae1: $fe $07
    rlca                                          ; $5ae3: $07
    sbc [hl]                                      ; $5ae4: $9e
    sbc c                                         ; $5ae5: $99
    ld h, c                                       ; $5ae6: $61
    rst RST_38                                    ; $5ae7: $ff
    ld d, $fe                                     ; $5ae8: $16 $fe
    ret                                           ; $5aea: $c9


    add hl, sp                                    ; $5aeb: $39
    ld [$e41b], a                                 ; $5aec: $ea $1b $e4
    sbc a                                         ; $5aef: $9f
    db $f4                                        ; $5af0: $f4
    adc a                                         ; $5af1: $8f
    ld a, b                                       ; $5af2: $78
    add a                                         ; $5af3: $87
    xor $11                                       ; $5af4: $ee $11
    or $19                                        ; $5af6: $f6 $19
    ldh a, [rIE]                                  ; $5af8: $f0 $ff
    sbc a                                         ; $5afa: $9f
    ld a, a                                       ; $5afb: $7f
    ret z                                         ; $5afc: $c8

    ccf                                           ; $5afd: $3f

Jump_002_5afe:
    dec bc                                        ; $5afe: $0b
    db $fc                                        ; $5aff: $fc
    ret                                           ; $5b00: $c9


    ld a, $f0                                     ; $5b01: $3e $f0
    ldh a, [$ff8c]                                ; $5b03: $f0 $8c
    ld a, h                                       ; $5b05: $7c
    ldh a, [c]                                    ; $5b06: $f2
    cp $0d                                        ; $5b07: $fe $0d
    rrca                                          ; $5b09: $0f
    di                                            ; $5b0a: $f3
    di                                            ; $5b0b: $f3
    ld [$e4f8], sp                                ; $5b0c: $08 $f8 $e4
    inc e                                         ; $5b0f: $1c
    ldh a, [c]                                    ; $5b10: $f2
    ld c, $b2                                     ; $5b11: $0e $b2
    adc $52                                       ; $5b13: $ce $52
    xor $54                                       ; $5b15: $ee $54
    db $ec                                        ; $5b17: $ec
    ld e, d                                       ; $5b18: $5a
    xor $da                                       ; $5b19: $ee $da
    xor $69                                       ; $5b1b: $ee $69
    rst RST_30                                    ; $5b1d: $f7
    dec d                                         ; $5b1e: $15
    ei                                            ; $5b1f: $fb
    adc e                                         ; $5b20: $8b
    ld a, a                                       ; $5b21: $7f
    db $fc                                        ; $5b22: $fc
    ei                                            ; $5b23: $fb
    sbc a                                         ; $5b24: $9f
    sbc b                                         ; $5b25: $98
    ccf                                           ; $5b26: $3f
    jr nc, jr_002_5b68                            ; $5b27: $30 $3f

    inc [hl]                                      ; $5b29: $34
    ccf                                           ; $5b2a: $3f
    ld [hl], $6f                                  ; $5b2b: $36 $6f
    ld e, d                                       ; $5b2d: $5a
    ld l, a                                       ; $5b2e: $6f
    ld e, b                                       ; $5b2f: $58
    ld [hl], a                                    ; $5b30: $77
    ld c, h                                       ; $5b31: $4c
    ei                                            ; $5b32: $fb
    add a                                         ; $5b33: $87
    cp $a3                                        ; $5b34: $fe $a3
    cp $b7                                        ; $5b36: $fe $b7
    ld a, l                                       ; $5b38: $7d
    ld d, a                                       ; $5b39: $57
    ld e, c                                       ; $5b3a: $59
    ld h, a                                       ; $5b3b: $67
    ld [hl+], a                                   ; $5b3c: $22
    ld a, $1c                                     ; $5b3d: $3e $1c
    inc e                                         ; $5b3f: $1c
    nop                                           ; $5b40: $00
    nop                                           ; $5b41: $00
    daa                                           ; $5b42: $27
    db $fc                                        ; $5b43: $fc
    ld h, $fd                                     ; $5b44: $26 $fd
    sbc a                                         ; $5b46: $9f
    ld a, b                                       ; $5b47: $78
    rst RST_18                                    ; $5b48: $df
    ld a, b                                       ; $5b49: $78
    call c, $bffb                                 ; $5b4a: $dc $fb $bf
    ldh a, [$ffbe]                                ; $5b4d: $f0 $be
    ld [hl], c                                    ; $5b4f: $71
    ld e, b                                       ; $5b50: $58
    rst RST_10                                    ; $5b51: $d7
    sbc [hl]                                      ; $5b52: $9e
    sub c                                         ; $5b53: $91
    cp a                                          ; $5b54: $bf
    and b                                         ; $5b55: $a0
    cp a                                          ; $5b56: $bf
    xor b                                         ; $5b57: $a8
    ccf                                           ; $5b58: $3f
    dec l                                         ; $5b59: $2d
    rra                                           ; $5b5a: $1f
    dec d                                         ; $5b5b: $15
    rra                                           ; $5b5c: $1f
    db $10                                        ; $5b5d: $10
    ld c, $09                                     ; $5b5e: $0e $09
    rlca                                          ; $5b60: $07
    rlca                                          ; $5b61: $07
    adc c                                         ; $5b62: $89
    ld a, [hl]                                    ; $5b63: $7e
    ld [de], a                                    ; $5b64: $12
    rst RST_38                                    ; $5b65: $ff
    sub c                                         ; $5b66: $91
    ld a, a                                       ; $5b67: $7f

jr_002_5b68:
    ld hl, $2dff                                  ; $5b68: $21 $ff $2d
    di                                            ; $5b6b: $f3
    ld hl, $69ff                                  ; $5b6c: $21 $ff $69
    rst RST_30                                    ; $5b6f: $f7
    ld c, h                                       ; $5b70: $4c
    di                                            ; $5b71: $f3
    ld l, a                                       ; $5b72: $6f
    di                                            ; $5b73: $f3
    ccf                                           ; $5b74: $3f
    rst RST_30                                    ; $5b75: $f7
    cp l                                          ; $5b76: $bd
    rst RST_30                                    ; $5b77: $f7
    xor l                                         ; $5b78: $ad
    di                                            ; $5b79: $f3
    ld h, d                                       ; $5b7a: $62
    cp $5c                                        ; $5b7b: $fe $5c
    call c, $8080                                 ; $5b7d: $dc $80 $80
    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    ld h, l                                       ; $5b82: $65
    sbc l                                         ; $5b83: $9d
    db $f4                                        ; $5b84: $f4
    inc c                                         ; $5b85: $0c
    ld b, d                                       ; $5b86: $42
    cp [hl]                                       ; $5b87: $be
    ld [hl+], a                                   ; $5b88: $22
    sbc $f2                                       ; $5b89: $de $f2
    adc [hl]                                      ; $5b8b: $8e
    ldh a, [c]                                    ; $5b8c: $f2
    adc [hl]                                      ; $5b8d: $8e
    jp nz, $f2be                                  ; $5b8e: $c2 $be $f2

    adc [hl]                                      ; $5b91: $8e
    ld sp, hl                                     ; $5b92: $f9
    rlca                                          ; $5b93: $07
    db $fd                                        ; $5b94: $fd
    ld b, a                                       ; $5b95: $47
    db $fd                                        ; $5b96: $fd
    ld l, a                                       ; $5b97: $6f
    ld a, [$faae]                                 ; $5b98: $fa $ae $fa
    add [hl]                                      ; $5b9b: $86
    ld [hl], h                                    ; $5b9c: $74
    ld c, h                                       ; $5b9d: $4c
    jr c, @+$3a                                   ; $5b9e: $38 $38

    nop                                           ; $5ba0: $00
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    ret nz                                        ; $5ba4: $c0

    ret nz                                        ; $5ba5: $c0

    ldh [$ffa0], a                                ; $5ba6: $e0 $a0
    ld a, c                                       ; $5ba8: $79
    ld e, c                                       ; $5ba9: $59
    ld l, $37                                     ; $5baa: $2e $37
    rra                                           ; $5bac: $1f
    jr jr_002_5bbe                                ; $5bad: $18 $0f

    rrca                                          ; $5baf: $0f
    rra                                           ; $5bb0: $1f
    db $10                                        ; $5bb1: $10
    add hl, sp                                    ; $5bb2: $39
    daa                                           ; $5bb3: $27
    ld [hl], d                                    ; $5bb4: $72
    ld c, a                                       ; $5bb5: $4f
    ld [hl], d                                    ; $5bb6: $72
    ld c, a                                       ; $5bb7: $4f
    ld a, e                                       ; $5bb8: $7b
    ld b, a                                       ; $5bb9: $47
    ccf                                           ; $5bba: $3f
    inc h                                         ; $5bbb: $24
    ld a, [hl]                                    ; $5bbc: $7e
    ld e, c                                       ; $5bbd: $59

jr_002_5bbe:
    ld a, a                                       ; $5bbe: $7f
    ld d, b                                       ; $5bbf: $50
    rst RST_38                                    ; $5bc0: $ff
    sub b                                         ; $5bc1: $90
    nop                                           ; $5bc2: $00
    nop                                           ; $5bc3: $00
    rra                                           ; $5bc4: $1f
    rra                                           ; $5bc5: $1f
    ld h, b                                       ; $5bc6: $60
    ld a, a                                       ; $5bc7: $7f
    cp a                                          ; $5bc8: $bf
    ret nz                                        ; $5bc9: $c0

    ld a, a                                       ; $5bca: $7f
    sbc h                                         ; $5bcb: $9c
    cp e                                          ; $5bcc: $bb
    ld l, a                                       ; $5bcd: $6f
    db $fc                                        ; $5bce: $fc
    di                                            ; $5bcf: $f3
    ld a, [hl]                                    ; $5bd0: $7e
    pop hl                                        ; $5bd1: $e1
    ld a, [hl]                                    ; $5bd2: $7e
    add c                                         ; $5bd3: $81
    rst RST_38                                    ; $5bd4: $ff
    ld [bc], a                                    ; $5bd5: $02
    ld a, [$e4ff]                                 ; $5bd6: $fa $ff $e4
    rra                                           ; $5bd9: $1f
    jp $033f                                      ; $5bda: $c3 $3f $03


    db $fc                                        ; $5bdd: $fc
    sub a                                         ; $5bde: $97
    ld a, b                                       ; $5bdf: $78
    cpl                                           ; $5be0: $2f
    ldh a, [rTAC]                                 ; $5be1: $f0 $07
    rlca                                          ; $5be3: $07
    sbc [hl]                                      ; $5be4: $9e
    sbc c                                         ; $5be5: $99
    ld h, c                                       ; $5be6: $61
    rst RST_38                                    ; $5be7: $ff
    rla                                           ; $5be8: $17
    rst RST_38                                    ; $5be9: $ff
    jp z, $ec3b                                   ; $5bea: $ca $3b $ec

    rra                                           ; $5bed: $1f
    db $e4                                        ; $5bee: $e4
    sbc a                                         ; $5bef: $9f
    db $f4                                        ; $5bf0: $f4
    adc a                                         ; $5bf1: $8f
    ld a, b                                       ; $5bf2: $78
    add a                                         ; $5bf3: $87
    xor $11                                       ; $5bf4: $ee $11
    or $19                                        ; $5bf6: $f6 $19
    ldh a, [rIE]                                  ; $5bf8: $f0 $ff
    sbc a                                         ; $5bfa: $9f
    ld a, a                                       ; $5bfb: $7f
    ret nz                                        ; $5bfc: $c0

    ccf                                           ; $5bfd: $3f
    inc bc                                        ; $5bfe: $03
    db $fc                                        ; $5bff: $fc
    rlca                                          ; $5c00: $07
    db $fc                                        ; $5c01: $fc
    ldh a, [$fff0]                                ; $5c02: $f0 $f0
    adc h                                         ; $5c04: $8c
    ld a, h                                       ; $5c05: $7c
    ldh a, [c]                                    ; $5c06: $f2
    cp $fd                                        ; $5c07: $fe $fd
    rst RST_38                                    ; $5c09: $ff
    dec bc                                        ; $5c0a: $0b
    ei                                            ; $5c0b: $fb
    inc b                                         ; $5c0c: $04
    db $fc                                        ; $5c0d: $fc
    ldh [c], a                                    ; $5c0e: $e2
    ld e, $f2                                     ; $5c0f: $1e $f2
    ld c, $b2                                     ; $5c11: $0e $b2
    adc $54                                       ; $5c13: $ce $54
    db $ec                                        ; $5c15: $ec
    ld e, d                                       ; $5c16: $5a
    xor $5a                                       ; $5c17: $ee $5a
    xor $e9                                       ; $5c19: $ee $e9
    rst RST_30                                    ; $5c1b: $f7
    db $fd                                        ; $5c1c: $fd
    ei                                            ; $5c1d: $fb
    ccf                                           ; $5c1e: $3f
    rst RST_38                                    ; $5c1f: $ff
    sub c                                         ; $5c20: $91
    ld [hl], c                                    ; $5c21: $71
    ld hl, sp-$59                                 ; $5c22: $f8 $a7
    rst RST_38                                    ; $5c24: $ff
    ldh [$fffe], a                                ; $5c25: $e0 $fe
    pop bc                                        ; $5c27: $c1
    ld [hl], b                                    ; $5c28: $70
    ld c, a                                       ; $5c29: $4f
    ld a, l                                       ; $5c2a: $7d
    ld b, e                                       ; $5c2b: $43
    ld a, l                                       ; $5c2c: $7d
    ld b, e                                       ; $5c2d: $43
    ld a, c                                       ; $5c2e: $79
    ld b, a                                       ; $5c2f: $47
    ld h, c                                       ; $5c30: $61
    ld e, a                                       ; $5c31: $5f
    db $fc                                        ; $5c32: $fc
    add e                                         ; $5c33: $83
    db $fc                                        ; $5c34: $fc
    add e                                         ; $5c35: $83
    cp $a3                                        ; $5c36: $fe $a3
    rst RST_38                                    ; $5c38: $ff
    rst RST_30                                    ; $5c39: $f7
    ld a, l                                       ; $5c3a: $7d
    ld d, a                                       ; $5c3b: $57
    ld e, c                                       ; $5c3c: $59
    ld h, a                                       ; $5c3d: $67
    ld [hl+], a                                   ; $5c3e: $22
    ld a, $1c                                     ; $5c3f: $3e $1c
    inc e                                         ; $5c41: $1c
    ld d, a                                       ; $5c42: $57
    ld hl, sp+$4c                                 ; $5c43: $f8 $4c
    ei                                            ; $5c45: $fb
    adc a                                         ; $5c46: $8f
    ld hl, sp-$79                                 ; $5c47: $f8 $87
    db $fc                                        ; $5c49: $fc
    or [hl]                                       ; $5c4a: $b6
    call $fc87                                    ; $5c4b: $cd $87 $fc
    and a                                         ; $5c4e: $a7
    sbc $33                                       ; $5c4f: $de $33
    adc $f7                                       ; $5c51: $ce $f7
    adc $ff                                       ; $5c53: $ce $ff
    db $ec                                        ; $5c55: $ec
    cp a                                          ; $5c56: $bf
    db $ed                                        ; $5c57: $ed
    or a                                          ; $5c58: $b7

jr_002_5c59:
    call Call_002_7e47                            ; $5c59: $cd $47 $7e
    dec sp                                        ; $5c5c: $3b
    ld a, [hl-]                                   ; $5c5d: $3a
    ld bc, $0001                                  ; $5c5e: $01 $01 $00

jr_002_5c61:
    nop                                           ; $5c61: $00
    ld h, $fd                                     ; $5c62: $26 $fd
    daa                                           ; $5c64: $27
    db $fc                                        ; $5c65: $fc
    rra                                           ; $5c66: $1f
    ld hl, sp-$61                                 ; $5c67: $f8 $9f
    ld a, d                                       ; $5c69: $7a
    rra                                           ; $5c6a: $1f
    ei                                            ; $5c6b: $fb
    adc a                                         ; $5c6c: $8f
    ld a, l                                       ; $5c6d: $7d
    rst RST_08                                    ; $5c6e: $cf
    inc a                                         ; $5c6f: $3c
    dec bc                                        ; $5c70: $0b
    ld a, [$39c9]                                 ; $5c71: $fa $c9 $39
    push bc                                       ; $5c74: $c5

jr_002_5c75:
    dec a                                         ; $5c75: $3d
    push de                                       ; $5c76: $d5
    dec a                                         ; $5c77: $3d
    push af                                       ; $5c78: $f5
    cp l                                          ; $5c79: $bd
    add sp, -$48                                  ; $5c7a: $e8 $b8
    add sp, $18                                   ; $5c7c: $e8 $18
    ret nc                                        ; $5c7e: $d0

    jr nc, jr_002_5c61                            ; $5c7f: $30 $e0

    ldh [rNR10], a                                ; $5c81: $e0 $10
    ldh a, [$ff98]                                ; $5c83: $f0 $98
    ld a, b                                       ; $5c85: $78
    ret z                                         ; $5c86: $c8

    jr c, jr_002_5c75                             ; $5c87: $38 $ec

    inc a                                         ; $5c89: $3c
    db $ec                                        ; $5c8a: $ec
    ld a, h                                       ; $5c8b: $7c
    jp nc, $d27e                                  ; $5c8c: $d2 $7e $d2

    ld a, $aa                                     ; $5c8f: $3e $aa
    halt                                          ; $5c91: $76
    reti                                          ; $5c92: $d9


    rst RST_20                                    ; $5c93: $e7
    add hl, sp                                    ; $5c94: $39
    rst RST_00                                    ; $5c95: $c7

jr_002_5c96:
    db $fd                                        ; $5c96: $fd
    ld b, a                                       ; $5c97: $47
    rst RST_38                                    ; $5c98: $ff
    ld l, a                                       ; $5c99: $6f
    ld a, [$f6ae]                                 ; $5c9a: $fa $ae $f6
    adc [hl]                                      ; $5c9d: $8e
    ld [hl], h                                    ; $5c9e: $74
    ld c, h                                       ; $5c9f: $4c
    jr c, jr_002_5cda                             ; $5ca0: $38 $38

    ret nz                                        ; $5ca2: $c0

    ret nz                                        ; $5ca3: $c0

    ldh a, [$ffb0]                                ; $5ca4: $f0 $b0
    cp $8e                                        ; $5ca6: $fe $8e
    ld e, a                                       ; $5ca8: $5f
    ld h, c                                       ; $5ca9: $61
    ld b, e                                       ; $5caa: $43
    ld a, h                                       ; $5cab: $7c
    jr nz, jr_002_5ced                            ; $5cac: $20 $3f

    jr nz, jr_002_5cef                            ; $5cae: $20 $3f

    inc de                                        ; $5cb0: $13
    inc e                                         ; $5cb1: $1c
    ld e, $11                                     ; $5cb2: $1e $11
    inc e                                         ; $5cb4: $1c
    dec de                                        ; $5cb5: $1b
    inc b                                         ; $5cb6: $04
    rlca                                          ; $5cb7: $07
    inc b                                         ; $5cb8: $04
    rlca                                          ; $5cb9: $07
    rlca                                          ; $5cba: $07
    inc b                                         ; $5cbb: $04
    rlca                                          ; $5cbc: $07
    rlca                                          ; $5cbd: $07
    nop                                           ; $5cbe: $00
    nop                                           ; $5cbf: $00
    nop                                           ; $5cc0: $00
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    nop                                           ; $5cc3: $00
    nop                                           ; $5cc4: $00
    nop                                           ; $5cc5: $00
    inc c                                         ; $5cc6: $0c
    inc c                                         ; $5cc7: $0c
    db $f4                                        ; $5cc8: $f4
    db $fc                                        ; $5cc9: $fc
    ld hl, sp+$18                                 ; $5cca: $f8 $18
    jr c, jr_002_5c96                             ; $5ccc: $38 $c8

    ret c                                         ; $5cce: $d8

    jr z, jr_002_5c59                             ; $5ccf: $28 $88

    ld a, b                                       ; $5cd1: $78
    ld [$14f8], sp                                ; $5cd2: $08 $f8 $14
    db $ec                                        ; $5cd5: $ec
    inc h                                         ; $5cd6: $24
    call c, Call_000_1fe7                         ; $5cd7: $dc $e7 $1f

jr_002_5cda:
    push hl                                       ; $5cda: $e5
    ld a, $a3                                     ; $5cdb: $3e $a3
    db $fc                                        ; $5cdd: $fc
    ld h, e                                       ; $5cde: $63
    ld a, a                                       ; $5cdf: $7f
    ld [hl], l                                    ; $5ce0: $75
    ld e, [hl]                                    ; $5ce1: $5e
    nop                                           ; $5ce2: $00
    nop                                           ; $5ce3: $00
    nop                                           ; $5ce4: $00
    nop                                           ; $5ce5: $00
    jr nc, jr_002_5d18                            ; $5ce6: $30 $30

    cpl                                           ; $5ce8: $2f
    ccf                                           ; $5ce9: $3f
    rra                                           ; $5cea: $1f
    jr @+$1e                                      ; $5ceb: $18 $1c

jr_002_5ced:
    inc de                                        ; $5ced: $13

jr_002_5cee:
    dec de                                        ; $5cee: $1b

jr_002_5cef:
    inc d                                         ; $5cef: $14
    ld de, $101e                                  ; $5cf0: $11 $1e $10
    rra                                           ; $5cf3: $1f
    jr z, jr_002_5d2d                             ; $5cf4: $28 $37

    inc h                                         ; $5cf6: $24
    dec sp                                        ; $5cf7: $3b

jr_002_5cf8:
    rst RST_20                                    ; $5cf8: $e7
    ld hl, sp-$1d                                 ; $5cf9: $f8 $e3
    inc a                                         ; $5cfb: $3c
    pop bc                                        ; $5cfc: $c1
    ccf                                           ; $5cfd: $3f
    and [hl]                                      ; $5cfe: $a6
    sbc $89                                       ; $5cff: $de $89
    ld a, a                                       ; $5d01: $7f
    inc bc                                        ; $5d02: $03
    inc bc                                        ; $5d03: $03
    rrca                                          ; $5d04: $0f
    dec c                                         ; $5d05: $0d
    ld a, a                                       ; $5d06: $7f
    ld [hl], c                                    ; $5d07: $71
    ld a, [$c286]                                 ; $5d08: $fa $86 $c2
    ld a, $04                                     ; $5d0b: $3e $04
    db $fc                                        ; $5d0d: $fc
    inc b                                         ; $5d0e: $04
    db $fc                                        ; $5d0f: $fc
    ret z                                         ; $5d10: $c8

    jr c, @+$7a                                   ; $5d11: $38 $78

    adc b                                         ; $5d13: $88
    jr c, jr_002_5cee                             ; $5d14: $38 $d8

    jr nz, jr_002_5cf8                            ; $5d16: $20 $e0

jr_002_5d18:
    jr nz, @-$1e                                  ; $5d18: $20 $e0

    ldh [rNR41], a                                ; $5d1a: $e0 $20
    ldh [$ffe0], a                                ; $5d1c: $e0 $e0
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    nop                                           ; $5d20: $00
    nop                                           ; $5d21: $00
    nop                                           ; $5d22: $00
    nop                                           ; $5d23: $00
    nop                                           ; $5d24: $00
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    ld bc, $0301                                  ; $5d28: $01 $01 $03
    ld [bc], a                                    ; $5d2b: $02
    rlca                                          ; $5d2c: $07

jr_002_5d2d:
    dec b                                         ; $5d2d: $05
    rlca                                          ; $5d2e: $07
    dec b                                         ; $5d2f: $05
    ld c, $09                                     ; $5d30: $0e $09
    add hl, de                                    ; $5d32: $19
    rla                                           ; $5d33: $17
    scf                                           ; $5d34: $37
    cpl                                           ; $5d35: $2f
    ld a, h                                       ; $5d36: $7c
    ld e, l                                       ; $5d37: $5d
    ld [hl], b                                    ; $5d38: $70
    ld [hl], h                                    ; $5d39: $74
    nop                                           ; $5d3a: $00
    db $10                                        ; $5d3b: $10
    ld bc, $0101                                  ; $5d3c: $01 $01 $01
    ld bc, $0000                                  ; $5d3f: $01 $00 $00
    ld a, e                                       ; $5d42: $7b
    ld e, h                                       ; $5d43: $5c
    rst RST_30                                    ; $5d44: $f7
    ret c                                         ; $5d45: $d8

    xor $b9                                       ; $5d46: $ee $b9
    rst RST_20                                    ; $5d48: $e7
    rra                                           ; $5d49: $1f
    rst RST_30                                    ; $5d4a: $f7
    adc l                                         ; $5d4b: $8d
    halt                                          ; $5d4c: $76
    adc e                                         ; $5d4d: $8b
    adc a                                         ; $5d4e: $8f
    ld [hl], a                                    ; $5d4f: $77
    ld h, a                                       ; $5d50: $67
    ld sp, hl                                     ; $5d51: $f9
    and [hl]                                      ; $5d52: $a6
    cp [hl]                                       ; $5d53: $be
    ld l, h                                       ; $5d54: $6c
    ld e, h                                       ; $5d55: $5c
    ld d, l                                       ; $5d56: $55
    ld [hl], l                                    ; $5d57: $75
    pop hl                                        ; $5d58: $e1
    and c                                         ; $5d59: $a1

jr_002_5d5a:
    and c                                         ; $5d5a: $a1
    pop hl                                        ; $5d5b: $e1
    pop bc                                        ; $5d5c: $c1
    ld b, c                                       ; $5d5d: $41
    add b                                         ; $5d5e: $80
    add b                                         ; $5d5f: $80
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    pop bc                                        ; $5d62: $c1
    ccf                                           ; $5d63: $3f
    ld hl, $81df                                  ; $5d64: $21 $df $81
    ld a, a                                       ; $5d67: $7f
    ld sp, $41ff                                  ; $5d68: $31 $ff $41
    rst RST_38                                    ; $5d6b: $ff

jr_002_5d6c:
    add d                                         ; $5d6c: $82
    cp $04                                        ; $5d6d: $fe $04
    db $fc                                        ; $5d6f: $fc
    db $f4                                        ; $5d70: $f4
    db $fc                                        ; $5d71: $fc
    inc d                                         ; $5d72: $14
    inc e                                         ; $5d73: $1c
    jr @+$1a                                      ; $5d74: $18 $18

jr_002_5d76:
    ldh a, [$fff0]                                ; $5d76: $f0 $f0
    jr nz, jr_002_5d5a                            ; $5d78: $20 $e0

    jr nc, jr_002_5d6c                            ; $5d7a: $30 $f0

    rst RST_18                                    ; $5d7c: $df
    rst RST_28                                    ; $5d7d: $ef
    jr nc, jr_002_5dbf                            ; $5d7e: $30 $3f

    rrca                                          ; $5d80: $0f
    rrca                                          ; $5d81: $0f
    ret nz                                        ; $5d82: $c0

    ret nz                                        ; $5d83: $c0

    jr nc, jr_002_5d76                            ; $5d84: $30 $f0

    ld l, b                                       ; $5d86: $68
    sbc b                                         ; $5d87: $98
    inc [hl]                                      ; $5d88: $34
    call z, $e4dc                                 ; $5d89: $cc $dc $e4
    ld a, [hl+]                                   ; $5d8c: $2a
    ld [hl], $1a                                  ; $5d8d: $36 $1a
    ld d, $1a                                     ; $5d8f: $16 $1a
    ld d, $1a                                     ; $5d91: $16 $1a
    ld d, $1a                                     ; $5d93: $16 $1a
    ld d, $34                                     ; $5d95: $16 $34
    inc l                                         ; $5d97: $2c
    inc [hl]                                      ; $5d98: $34
    inc l                                         ; $5d99: $2c
    add sp, -$28                                  ; $5d9a: $e8 $d8
    ret nc                                        ; $5d9c: $d0

    jr nc, jr_002_5dff                            ; $5d9d: $30 $60

    ldh [$ff80], a                                ; $5d9f: $e0 $80
    add b                                         ; $5da1: $80
    nop                                           ; $5da2: $00
    nop                                           ; $5da3: $00
    nop                                           ; $5da4: $00
    nop                                           ; $5da5: $00
    nop                                           ; $5da6: $00
    nop                                           ; $5da7: $00
    nop                                           ; $5da8: $00
    nop                                           ; $5da9: $00
    nop                                           ; $5daa: $00
    nop                                           ; $5dab: $00
    inc bc                                        ; $5dac: $03
    inc bc                                        ; $5dad: $03
    rrca                                          ; $5dae: $0f
    inc c                                         ; $5daf: $0c
    ld a, $31                                     ; $5db0: $3e $31
    ld hl, sp-$39                                 ; $5db2: $f8 $c7
    ld hl, sp-$61                                 ; $5db4: $f8 $9f
    ld h, [hl]                                    ; $5db6: $66
    ld h, a                                       ; $5db7: $67
    inc bc                                        ; $5db8: $03
    ld [bc], a                                    ; $5db9: $02
    inc bc                                        ; $5dba: $03
    ld [bc], a                                    ; $5dbb: $02
    inc bc                                        ; $5dbc: $03
    inc bc                                        ; $5dbd: $03
    nop                                           ; $5dbe: $00

jr_002_5dbf:
    nop                                           ; $5dbf: $00
    nop                                           ; $5dc0: $00
    nop                                           ; $5dc1: $00
    nop                                           ; $5dc2: $00
    nop                                           ; $5dc3: $00
    nop                                           ; $5dc4: $00
    nop                                           ; $5dc5: $00
    inc c                                         ; $5dc6: $0c
    inc c                                         ; $5dc7: $0c
    inc [hl]                                      ; $5dc8: $34
    inc a                                         ; $5dc9: $3c
    ld hl, sp-$28                                 ; $5dca: $f8 $d8
    ld hl, sp+$08                                 ; $5dcc: $f8 $08
    sbc b                                         ; $5dce: $98
    ld l, b                                       ; $5dcf: $68
    ld [$28f8], sp                                ; $5dd0: $08 $f8 $28
    ret c                                         ; $5dd3: $d8

    ld b, h                                       ; $5dd4: $44
    cp h                                          ; $5dd5: $bc
    call nz, $973c                                ; $5dd6: $c4 $3c $97
    ld l, a                                       ; $5dd9: $6f
    or l                                          ; $5dda: $b5
    ld l, [hl]                                    ; $5ddb: $6e
    and e                                         ; $5ddc: $a3
    db $fc                                        ; $5ddd: $fc
    ld h, e                                       ; $5dde: $63
    ld a, a                                       ; $5ddf: $7f
    ld [hl], l                                    ; $5de0: $75
    ld e, [hl]                                    ; $5de1: $5e
    nop                                           ; $5de2: $00
    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    nop                                           ; $5de5: $00
    jr nc, @+$32                                  ; $5de6: $30 $30

    inc l                                         ; $5de8: $2c
    inc a                                         ; $5de9: $3c
    rra                                           ; $5dea: $1f
    dec de                                        ; $5deb: $1b
    rra                                           ; $5dec: $1f
    db $10                                        ; $5ded: $10
    add hl, de                                    ; $5dee: $19
    ld d, $10                                     ; $5def: $16 $10
    rra                                           ; $5df1: $1f
    inc d                                         ; $5df2: $14
    dec de                                        ; $5df3: $1b
    ld [hl+], a                                   ; $5df4: $22
    dec a                                         ; $5df5: $3d
    inc hl                                        ; $5df6: $23
    inc a                                         ; $5df7: $3c
    jp hl                                         ; $5df8: $e9


    or $e9                                        ; $5df9: $f6 $e9
    ld [hl], $c5                                  ; $5dfb: $36 $c5
    dec sp                                        ; $5dfd: $3b
    and [hl]                                      ; $5dfe: $a6

jr_002_5dff:
    sbc $89                                       ; $5dff: $de $89
    ld a, a                                       ; $5e01: $7f
    nop                                           ; $5e02: $00
    nop                                           ; $5e03: $00
    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    nop                                           ; $5e08: $00
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    nop                                           ; $5e0b: $00
    ret nz                                        ; $5e0c: $c0

    ret nz                                        ; $5e0d: $c0

    ldh a, [$ff30]                                ; $5e0e: $f0 $30
    ld a, h                                       ; $5e10: $7c
    adc h                                         ; $5e11: $8c
    rra                                           ; $5e12: $1f
    db $e3                                        ; $5e13: $e3
    rra                                           ; $5e14: $1f
    ld sp, hl                                     ; $5e15: $f9
    ld h, [hl]                                    ; $5e16: $66
    and $c0                                       ; $5e17: $e6 $c0
    ld b, b                                       ; $5e19: $40
    ret nz                                        ; $5e1a: $c0

    ld b, b                                       ; $5e1b: $40
    ret nz                                        ; $5e1c: $c0

    ret nz                                        ; $5e1d: $c0

    nop                                           ; $5e1e: $00
    nop                                           ; $5e1f: $00
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    nop                                           ; $5e22: $00
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00
    nop                                           ; $5e27: $00
    ld bc, $0301                                  ; $5e28: $01 $01 $03
    ld [bc], a                                    ; $5e2b: $02
    rlca                                          ; $5e2c: $07
    dec b                                         ; $5e2d: $05
    rlca                                          ; $5e2e: $07
    dec b                                         ; $5e2f: $05
    ld c, $09                                     ; $5e30: $0e $09
    add hl, de                                    ; $5e32: $19
    rla                                           ; $5e33: $17
    ld [hl], $2f                                  ; $5e34: $36 $2f
    ld a, e                                       ; $5e36: $7b
    ld e, a                                       ; $5e37: $5f
    ld l, h                                       ; $5e38: $6c
    ld l, h                                       ; $5e39: $6c
    nop                                           ; $5e3a: $00
    nop                                           ; $5e3b: $00
    nop                                           ; $5e3c: $00
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    nop                                           ; $5e41: $00
    ld a, e                                       ; $5e42: $7b
    ld e, h                                       ; $5e43: $5c
    rst RST_30                                    ; $5e44: $f7
    ret c                                         ; $5e45: $d8

    xor $b9                                       ; $5e46: $ee $b9
    rst RST_20                                    ; $5e48: $e7
    rra                                           ; $5e49: $1f
    rst RST_30                                    ; $5e4a: $f7
    adc l                                         ; $5e4b: $8d
    halt                                          ; $5e4c: $76
    adc e                                         ; $5e4d: $8b
    xor a                                         ; $5e4e: $af
    ld [hl], a                                    ; $5e4f: $77
    ld h, a                                       ; $5e50: $67
    ld sp, hl                                     ; $5e51: $f9
    add [hl]                                      ; $5e52: $86
    cp $3c                                        ; $5e53: $fe $3c
    db $fc                                        ; $5e55: $fc
    call nz, Call_000_01c4                        ; $5e56: $c4 $c4 $01
    ld bc, $0101                                  ; $5e59: $01 $01 $01

jr_002_5e5c:
    ld bc, $0101                                  ; $5e5c: $01 $01 $01
    ld bc, $0000                                  ; $5e5f: $01 $00 $00
    pop bc                                        ; $5e62: $c1
    ccf                                           ; $5e63: $3f
    ld hl, $81df                                  ; $5e64: $21 $df $81
    ld a, a                                       ; $5e67: $7f
    ld sp, $41ff                                  ; $5e68: $31 $ff $41
    rst RST_38                                    ; $5e6b: $ff
    add d                                         ; $5e6c: $82
    cp $04                                        ; $5e6d: $fe $04
    db $fc                                        ; $5e6f: $fc
    db $f4                                        ; $5e70: $f4
    db $fc                                        ; $5e71: $fc
    inc d                                         ; $5e72: $14
    inc e                                         ; $5e73: $1c
    jr @+$1a                                      ; $5e74: $18 $18

jr_002_5e76:
    db $10                                        ; $5e76: $10
    db $10                                        ; $5e77: $10
    ldh [$ffe0], a                                ; $5e78: $e0 $e0
    jr nz, jr_002_5e5c                            ; $5e7a: $20 $e0

    ccf                                           ; $5e7c: $3f
    rst RST_38                                    ; $5e7d: $ff
    ret nz                                        ; $5e7e: $c0

    rst RST_38                                    ; $5e7f: $ff
    ccf                                           ; $5e80: $3f
    ccf                                           ; $5e81: $3f
    ret nz                                        ; $5e82: $c0

    ret nz                                        ; $5e83: $c0

    jr nc, jr_002_5e76                            ; $5e84: $30 $f0

    ld l, b                                       ; $5e86: $68
    sbc b                                         ; $5e87: $98
    inc [hl]                                      ; $5e88: $34
    call z, $e4dc                                 ; $5e89: $cc $dc $e4
    ld a, [hl+]                                   ; $5e8c: $2a
    ld [hl], $1a                                  ; $5e8d: $36 $1a
    ld d, $1a                                     ; $5e8f: $16 $1a
    ld d, $1a                                     ; $5e91: $16 $1a
    ld d, $1a                                     ; $5e93: $16 $1a
    ld d, $34                                     ; $5e95: $16 $34
    inc l                                         ; $5e97: $2c
    inc [hl]                                      ; $5e98: $34
    inc l                                         ; $5e99: $2c
    add sp, -$28                                  ; $5e9a: $e8 $d8
    ret nc                                        ; $5e9c: $d0

    jr nc, @+$62                                  ; $5e9d: $30 $60

    ldh [$ff80], a                                ; $5e9f: $e0 $80
    add b                                         ; $5ea1: $80
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    nop                                           ; $5ea4: $00
    ld [$0200], sp                                ; $5ea5: $08 $00 $02
    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    nop                                           ; $5eaa: $00
    ld [$0200], sp                                ; $5eab: $08 $00 $02
    nop                                           ; $5eae: $00
    ld [bc], a                                    ; $5eaf: $02
    add hl, bc                                    ; $5eb0: $09
    dec b                                         ; $5eb1: $05
    ld b, $04                                     ; $5eb2: $06 $04
    nop                                           ; $5eb4: $00
    ld bc, $0406                                  ; $5eb5: $01 $06 $04
    inc b                                         ; $5eb8: $04
    inc bc                                        ; $5eb9: $03
    nop                                           ; $5eba: $00
    ld bc, $0405                                  ; $5ebb: $01 $05 $04
    ld [bc], a                                    ; $5ebe: $02
    inc bc                                        ; $5ebf: $03
    nop                                           ; $5ec0: $00
    ld [bc], a                                    ; $5ec1: $02
    ld [$0205], sp                                ; $5ec2: $08 $05 $02
    inc b                                         ; $5ec5: $04
    nop                                           ; $5ec6: $00
    ld [bc], a                                    ; $5ec7: $02
    dec b                                         ; $5ec8: $05
    inc b                                         ; $5ec9: $04
    ld [bc], a                                    ; $5eca: $02
    dec b                                         ; $5ecb: $05
    nop                                           ; $5ecc: $00
    ld bc, $0406                                  ; $5ecd: $01 $06 $04
    inc b                                         ; $5ed0: $04
    inc bc                                        ; $5ed1: $03
    nop                                           ; $5ed2: $00
    ld bc, $0304                                  ; $5ed3: $01 $04 $03
    ld [bc], a                                    ; $5ed6: $02
    inc bc                                        ; $5ed7: $03
    db $10                                        ; $5ed8: $10
    ld [bc], a                                    ; $5ed9: $02
    ld [de], a                                    ; $5eda: $12
    ld b, $06                                     ; $5edb: $06 $06
    ld b, $00                                     ; $5edd: $06 $00
    ld bc, $0405                                  ; $5edf: $01 $05 $04
    ld [bc], a                                    ; $5ee2: $02
    inc bc                                        ; $5ee3: $03
    ld [$1202], sp                                ; $5ee4: $08 $02 $12
    ld b, $06                                     ; $5ee7: $06 $06
    ld b, $18                                     ; $5ee9: $06 $18
    ld bc, $0920                                  ; $5eeb: $01 $20 $09
    dec b                                         ; $5eee: $05
    db $10                                        ; $5eef: $10
    ld [$1301], sp                                ; $5ef0: $08 $01 $13
    rlca                                          ; $5ef3: $07
    dec b                                         ; $5ef4: $05
    rlca                                          ; $5ef5: $07
    jr jr_002_5efa                                ; $5ef6: $18 $02

    rla                                           ; $5ef8: $17
    rlca                                          ; $5ef9: $07

jr_002_5efa:
    ld b, $07                                     ; $5efa: $06 $07
    jr jr_002_5f00                                ; $5efc: $18 $02

    jr nz, @+$12                                  ; $5efe: $20 $10

jr_002_5f00:
    dec b                                         ; $5f00: $05
    db $10                                        ; $5f01: $10
    inc e                                         ; $5f02: $1c
    ld [bc], a                                    ; $5f03: $02
    jr nz, @+$12                                  ; $5f04: $20 $10

    dec b                                         ; $5f06: $05
    db $10                                        ; $5f07: $10
    inc e                                         ; $5f08: $1c
    ld [bc], a                                    ; $5f09: $02
    rla                                           ; $5f0a: $17
    ld [$0706], sp                                ; $5f0b: $08 $06 $07
    db $10                                        ; $5f0e: $10
    ld bc, $0608                                  ; $5f0f: $01 $08 $06
    ld [bc], a                                    ; $5f12: $02
    dec b                                         ; $5f13: $05
    nop                                           ; $5f14: $00
    ld bc, $0407                                  ; $5f15: $01 $07 $04
    ld [bc], a                                    ; $5f18: $02
    inc bc                                        ; $5f19: $03
    nop                                           ; $5f1a: $00
    ld [bc], a                                    ; $5f1b: $02
    inc d                                         ; $5f1c: $14
    rlca                                          ; $5f1d: $07
    ld b, $07                                     ; $5f1e: $06 $07
    nop                                           ; $5f20: $00
    ld bc, $0305                                  ; $5f21: $01 $05 $03
    ld [bc], a                                    ; $5f24: $02
    ld [bc], a                                    ; $5f25: $02
    nop                                           ; $5f26: $00
    ld bc, $0304                                  ; $5f27: $01 $04 $03
    ld [bc], a                                    ; $5f2a: $02
    ld bc, $0100                                  ; $5f2b: $01 $00 $01
    ld bc, $0100                                  ; $5f2e: $01 $00 $01
    sbc c                                         ; $5f31: $99
    dec b                                         ; $5f32: $05
    ld [bc], a                                    ; $5f33: $02
    ld bc, $0105                                  ; $5f34: $01 $05 $01
    sbc c                                         ; $5f37: $99
    ld b, $00                                     ; $5f38: $06 $00
    rlca                                          ; $5f3a: $07
    inc b                                         ; $5f3b: $04
    ld [bc], a                                    ; $5f3c: $02
    inc b                                         ; $5f3d: $04
    db $10                                        ; $5f3e: $10
    ld [bc], a                                    ; $5f3f: $02
    ld [de], a                                    ; $5f40: $12
    dec b                                         ; $5f41: $05
    ld b, $04                                     ; $5f42: $06 $04
    jr jr_002_5f48                                ; $5f44: $18 $02

    jr jr_002_5f50                                ; $5f46: $18 $08

jr_002_5f48:
    ld b, $08                                     ; $5f48: $06 $08
    jr jr_002_5f4e                                ; $5f4a: $18 $02

    dec b                                         ; $5f4c: $05
    inc c                                         ; $5f4d: $0c

jr_002_5f4e:
    add hl, bc                                    ; $5f4e: $09
    ld [bc], a                                    ; $5f4f: $02

jr_002_5f50:
    nop                                           ; $5f50: $00
    dec e                                         ; $5f51: $1d
    ld a, [bc]                                    ; $5f52: $0a
    ld [$0011], sp                                ; $5f53: $08 $11 $00
    ld [$1111], sp                                ; $5f56: $08 $11 $11
    ld [de], a                                    ; $5f59: $12
    ld b, $05                                     ; $5f5a: $06 $05
    add hl, de                                    ; $5f5c: $19
    db $10                                        ; $5f5d: $10
    dec c                                         ; $5f5e: $0d
    nop                                           ; $5f5f: $00
    nop                                           ; $5f60: $00
    stop                                          ; $5f61: $10 $00
    nop                                           ; $5f63: $00
    nop                                           ; $5f64: $00
    nop                                           ; $5f65: $00
    nop                                           ; $5f66: $00
    nop                                           ; $5f67: $00
    nop                                           ; $5f68: $00
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    ld bc, $0200                                  ; $5f6b: $01 $00 $02
    inc bc                                        ; $5f6e: $03
    ld [bc], a                                    ; $5f6f: $02
    nop                                           ; $5f70: $00
    inc bc                                        ; $5f71: $03
    inc bc                                        ; $5f72: $03
    nop                                           ; $5f73: $00
    ld bc, $0000                                  ; $5f74: $01 $00 $00
    nop                                           ; $5f77: $00
    nop                                           ; $5f78: $00
    nop                                           ; $5f79: $00
    nop                                           ; $5f7a: $00
    nop                                           ; $5f7b: $00
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    nop                                           ; $5f7f: $00
    nop                                           ; $5f80: $00
    ld bc, $0000                                  ; $5f81: $01 $00 $00
    nop                                           ; $5f84: $00
    nop                                           ; $5f85: $00
    ld bc, $0000                                  ; $5f86: $01 $00 $00
    ld bc, $0000                                  ; $5f89: $01 $00 $00
    nop                                           ; $5f8c: $00
    nop                                           ; $5f8d: $00
    nop                                           ; $5f8e: $00
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    ld bc, $0000                                  ; $5f92: $01 $00 $00
    nop                                           ; $5f95: $00
    ld bc, $0001                                  ; $5f96: $01 $01 $00
    nop                                           ; $5f99: $00
    nop                                           ; $5f9a: $00
    nop                                           ; $5f9b: $00
    nop                                           ; $5f9c: $00
    nop                                           ; $5f9d: $00
    ld [bc], a                                    ; $5f9e: $02
    nop                                           ; $5f9f: $00
    nop                                           ; $5fa0: $00
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    nop                                           ; $5fa4: $00
    ld [bc], a                                    ; $5fa5: $02
    ld bc, $0000                                  ; $5fa6: $01 $00 $00
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    ld bc, $0000                                  ; $5fac: $01 $00 $00
    nop                                           ; $5faf: $00
    nop                                           ; $5fb0: $00
    nop                                           ; $5fb1: $00
    ldh a, [c]                                    ; $5fb2: $f2
    ld e, a                                       ; $5fb3: $5f
    rst RST_30                                    ; $5fb4: $f7
    ld e, a                                       ; $5fb5: $5f
    db $fc                                        ; $5fb6: $fc
    ld e, a                                       ; $5fb7: $5f
    ld bc, $0660                                  ; $5fb8: $01 $60 $06
    ld h, b                                       ; $5fbb: $60
    dec bc                                        ; $5fbc: $0b
    ld h, b                                       ; $5fbd: $60
    db $10                                        ; $5fbe: $10
    ld h, b                                       ; $5fbf: $60
    dec d                                         ; $5fc0: $15
    ld h, b                                       ; $5fc1: $60
    ld a, [de]                                    ; $5fc2: $1a
    ld h, b                                       ; $5fc3: $60
    inc h                                         ; $5fc4: $24
    ld h, b                                       ; $5fc5: $60
    ld l, $60                                     ; $5fc6: $2e $60
    jr c, jr_002_602a                             ; $5fc8: $38 $60

    ld b, d                                       ; $5fca: $42
    ld h, b                                       ; $5fcb: $60
    ld c, h                                       ; $5fcc: $4c
    ld h, b                                       ; $5fcd: $60
    ld d, [hl]                                    ; $5fce: $56
    ld h, b                                       ; $5fcf: $60
    ld h, b                                       ; $5fd0: $60
    ld h, b                                       ; $5fd1: $60
    ld l, d                                       ; $5fd2: $6a
    ld h, b                                       ; $5fd3: $60
    ld [hl], h                                    ; $5fd4: $74
    ld h, b                                       ; $5fd5: $60
    ld a, [hl]                                    ; $5fd6: $7e
    ld h, b                                       ; $5fd7: $60
    adc b                                         ; $5fd8: $88
    ld h, b                                       ; $5fd9: $60
    sub d                                         ; $5fda: $92
    ld h, b                                       ; $5fdb: $60
    sbc h                                         ; $5fdc: $9c
    ld h, b                                       ; $5fdd: $60
    and [hl]                                      ; $5fde: $a6
    ld h, b                                       ; $5fdf: $60
    or b                                          ; $5fe0: $b0
    ld h, b                                       ; $5fe1: $60
    cp d                                          ; $5fe2: $ba
    ld h, b                                       ; $5fe3: $60
    adc $60                                       ; $5fe4: $ce $60
    ldh [c], a                                    ; $5fe6: $e2
    ld h, b                                       ; $5fe7: $60
    or $60                                        ; $5fe8: $f6 $60
    ld a, [bc]                                    ; $5fea: $0a
    ld h, c                                       ; $5feb: $61
    ld e, $61                                     ; $5fec: $1e $61
    ld [hl-], a                                   ; $5fee: $32
    ld h, c                                       ; $5fef: $61
    ld b, [hl]                                    ; $5ff0: $46
    ld h, c                                       ; $5ff1: $61
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    nop                                           ; $5ff4: $00
    ld [bc], a                                    ; $5ff5: $02
    nop                                           ; $5ff6: $00
    nop                                           ; $5ff7: $00
    nop                                           ; $5ff8: $00
    ld [bc], a                                    ; $5ff9: $02
    nop                                           ; $5ffa: $00
    jr nz, jr_002_5ffd                            ; $5ffb: $20 $00

jr_002_5ffd:
    nop                                           ; $5ffd: $00
    inc b                                         ; $5ffe: $04
    ld b, $00                                     ; $5fff: $06 $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00

Call_002_6003:
    ld b, $04                                     ; $6003: $06 $04
    jr nz, jr_002_6007                            ; $6005: $20 $00

jr_002_6007:
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    ld [bc], a                                    ; $6009: $02
    stop                                          ; $600a: $10 $00
    nop                                           ; $600c: $00
    ld [bc], a                                    ; $600d: $02
    nop                                           ; $600e: $00
    jr nc, jr_002_6011                            ; $600f: $30 $00

jr_002_6011:
    nop                                           ; $6011: $00
    inc b                                         ; $6012: $04
    ld b, $10                                     ; $6013: $06 $10
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    ld b, $04                                     ; $6017: $06 $04
    jr nc, jr_002_601b                            ; $6019: $30 $00

jr_002_601b:
    nop                                           ; $601b: $00
    nop                                           ; $601c: $00
    ld [bc], a                                    ; $601d: $02
    nop                                           ; $601e: $00
    ld bc, $0400                                  ; $601f: $01 $00 $04
    ld b, $00                                     ; $6022: $06 $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    ld [bc], a                                    ; $6026: $02
    nop                                           ; $6027: $00
    jr nz, jr_002_602b                            ; $6028: $20 $01

jr_002_602a:
    nop                                           ; $602a: $00

jr_002_602b:
    ld b, $04                                     ; $602b: $06 $04
    jr nz, jr_002_602f                            ; $602d: $20 $00

jr_002_602f:
    nop                                           ; $602f: $00
    ld [$000a], sp                                ; $6030: $08 $0a $00
    ld bc, $0c00                                  ; $6033: $01 $00 $0c
    ld c, $00                                     ; $6036: $0e $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    ld a, [bc]                                    ; $603a: $0a
    ld [$0120], sp                                ; $603b: $08 $20 $01
    nop                                           ; $603e: $00
    ld c, $0c                                     ; $603f: $0e $0c
    jr nz, jr_002_6043                            ; $6041: $20 $00

jr_002_6043:
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    ld [bc], a                                    ; $6045: $02
    db $10                                        ; $6046: $10
    ld bc, $0400                                  ; $6047: $01 $00 $04
    ld b, $10                                     ; $604a: $06 $10
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    ld [bc], a                                    ; $604e: $02
    nop                                           ; $604f: $00
    jr nc, jr_002_6053                            ; $6050: $30 $01

    nop                                           ; $6052: $00

jr_002_6053:
    ld b, $04                                     ; $6053: $06 $04
    jr nc, jr_002_6057                            ; $6055: $30 $00

jr_002_6057:
    nop                                           ; $6057: $00
    ld [$100a], sp                                ; $6058: $08 $0a $10
    ld bc, $0c00                                  ; $605b: $01 $00 $0c
    ld c, $10                                     ; $605e: $0e $10
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    ld a, [bc]                                    ; $6062: $0a
    ld [$0130], sp                                ; $6063: $08 $30 $01
    nop                                           ; $6066: $00
    ld c, $0c                                     ; $6067: $0e $0c
    jr nc, jr_002_606b                            ; $6069: $30 $00

jr_002_606b:
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    ld [bc], a                                    ; $606d: $02
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    ld bc, $0604                                  ; $6070: $01 $04 $06
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    ld b, $04                                     ; $6076: $06 $04
    jr nz, jr_002_607a                            ; $6078: $20 $00

jr_002_607a:
    ld bc, $0002                                  ; $607a: $01 $02 $00
    jr nz, jr_002_607f                            ; $607d: $20 $00

jr_002_607f:
    nop                                           ; $607f: $00
    ld [$000a], sp                                ; $6080: $08 $0a $00
    nop                                           ; $6083: $00
    ld bc, $0e0c                                  ; $6084: $01 $0c $0e
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    ld c, $0c                                     ; $608a: $0e $0c
    jr nz, jr_002_608e                            ; $608c: $20 $00

jr_002_608e:
    ld bc, $0a08                                  ; $608e: $01 $08 $0a
    jr nz, jr_002_6093                            ; $6091: $20 $00

jr_002_6093:
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    ld [bc], a                                    ; $6095: $02
    stop                                          ; $6096: $10 $00
    ld bc, $0604                                  ; $6098: $01 $04 $06
    stop                                          ; $609b: $10 $00
    nop                                           ; $609d: $00
    ld b, $04                                     ; $609e: $06 $04
    jr nc, jr_002_60a2                            ; $60a0: $30 $00

jr_002_60a2:
    ld bc, $0002                                  ; $60a2: $01 $02 $00
    jr nc, jr_002_60a7                            ; $60a5: $30 $00

jr_002_60a7:
    nop                                           ; $60a7: $00
    ld [$100a], sp                                ; $60a8: $08 $0a $10
    nop                                           ; $60ab: $00
    ld bc, $0e0c                                  ; $60ac: $01 $0c $0e
    stop                                          ; $60af: $10 $00
    nop                                           ; $60b1: $00
    ld c, $0c                                     ; $60b2: $0e $0c
    jr nc, jr_002_60b6                            ; $60b4: $30 $00

jr_002_60b6:
    ld bc, $080a                                  ; $60b6: $01 $0a $08
    jr nc, jr_002_60bb                            ; $60b9: $30 $00

jr_002_60bb:
    nop                                           ; $60bb: $00
    nop                                           ; $60bc: $00
    ld [bc], a                                    ; $60bd: $02
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    ld bc, $0604                                  ; $60c0: $01 $04 $06
    nop                                           ; $60c3: $00
    ld bc, $0800                                  ; $60c4: $01 $00 $08
    ld a, [bc]                                    ; $60c7: $0a
    nop                                           ; $60c8: $00
    ld bc, $0c01                                  ; $60c9: $01 $01 $0c
    ld c, $00                                     ; $60cc: $0e $00
    nop                                           ; $60ce: $00
    nop                                           ; $60cf: $00
    ld b, $04                                     ; $60d0: $06 $04
    jr nz, jr_002_60d4                            ; $60d2: $20 $00

jr_002_60d4:
    ld bc, $0002                                  ; $60d4: $01 $02 $00
    jr nz, jr_002_60da                            ; $60d7: $20 $01

    nop                                           ; $60d9: $00

jr_002_60da:
    ld c, $0c                                     ; $60da: $0e $0c
    jr nz, @+$03                                  ; $60dc: $20 $01

    ld bc, $080a                                  ; $60de: $01 $0a $08
    jr nz, jr_002_60e3                            ; $60e1: $20 $00

jr_002_60e3:
    nop                                           ; $60e3: $00
    db $10                                        ; $60e4: $10
    ld [de], a                                    ; $60e5: $12
    nop                                           ; $60e6: $00
    nop                                           ; $60e7: $00
    ld bc, $1614                                  ; $60e8: $01 $14 $16
    nop                                           ; $60eb: $00
    ld bc, $1800                                  ; $60ec: $01 $00 $18
    ld a, [de]                                    ; $60ef: $1a
    nop                                           ; $60f0: $00
    ld bc, $1c01                                  ; $60f1: $01 $01 $1c
    ld e, $00                                     ; $60f4: $1e $00
    nop                                           ; $60f6: $00
    nop                                           ; $60f7: $00
    ld d, $14                                     ; $60f8: $16 $14
    jr nz, jr_002_60fc                            ; $60fa: $20 $00

jr_002_60fc:
    ld bc, $1012                                  ; $60fc: $01 $12 $10
    jr nz, jr_002_6102                            ; $60ff: $20 $01

    nop                                           ; $6101: $00

jr_002_6102:
    ld e, $1c                                     ; $6102: $1e $1c
    jr nz, @+$03                                  ; $6104: $20 $01

    ld bc, $181a                                  ; $6106: $01 $1a $18
    jr nz, jr_002_610b                            ; $6109: $20 $00

jr_002_610b:
    nop                                           ; $610b: $00
    nop                                           ; $610c: $00
    ld [bc], a                                    ; $610d: $02
    stop                                          ; $610e: $10 $00
    ld bc, $0604                                  ; $6110: $01 $04 $06
    db $10                                        ; $6113: $10
    ld bc, $0800                                  ; $6114: $01 $00 $08
    ld a, [bc]                                    ; $6117: $0a
    db $10                                        ; $6118: $10
    ld bc, $0c01                                  ; $6119: $01 $01 $0c
    ld c, $10                                     ; $611c: $0e $10
    nop                                           ; $611e: $00
    nop                                           ; $611f: $00
    ld b, $04                                     ; $6120: $06 $04
    jr nc, jr_002_6124                            ; $6122: $30 $00

jr_002_6124:
    ld bc, $0002                                  ; $6124: $01 $02 $00
    jr nc, jr_002_612a                            ; $6127: $30 $01

    nop                                           ; $6129: $00

jr_002_612a:
    ld c, $0c                                     ; $612a: $0e $0c
    jr nc, @+$03                                  ; $612c: $30 $01

    ld bc, $080a                                  ; $612e: $01 $0a $08
    jr nc, jr_002_6133                            ; $6131: $30 $00

jr_002_6133:
    nop                                           ; $6133: $00
    db $10                                        ; $6134: $10
    ld [de], a                                    ; $6135: $12
    stop                                          ; $6136: $10 $00
    ld bc, $1614                                  ; $6138: $01 $14 $16
    db $10                                        ; $613b: $10
    ld bc, $1800                                  ; $613c: $01 $00 $18
    ld a, [de]                                    ; $613f: $1a
    db $10                                        ; $6140: $10
    ld bc, $1c01                                  ; $6141: $01 $01 $1c
    ld e, $10                                     ; $6144: $1e $10
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    ld d, $14                                     ; $6148: $16 $14
    jr nc, jr_002_614c                            ; $614a: $30 $00

jr_002_614c:
    ld bc, $1012                                  ; $614c: $01 $12 $10
    jr nc, jr_002_6152                            ; $614f: $30 $01

    nop                                           ; $6151: $00

jr_002_6152:
    ld e, $1c                                     ; $6152: $1e $1c
    jr nc, @+$03                                  ; $6154: $30 $01

    ld bc, $181a                                  ; $6156: $01 $1a $18
    jr nc, @+$6a                                  ; $6159: $30 $68

    ld h, c                                       ; $615b: $61
    ld a, b                                       ; $615c: $78
    ld h, c                                       ; $615d: $61
    adc b                                         ; $615e: $88
    ld h, c                                       ; $615f: $61
    sbc b                                         ; $6160: $98
    ld h, c                                       ; $6161: $61
    xor b                                         ; $6162: $a8
    ld h, c                                       ; $6163: $61
    cp b                                          ; $6164: $b8
    ld h, c                                       ; $6165: $61
    ret z                                         ; $6166: $c8

    ld h, c                                       ; $6167: $61
    ccf                                           ; $6168: $3f
    ccf                                           ; $6169: $3f
    ld a, $3d                                     ; $616a: $3e $3d
    inc a                                         ; $616c: $3c
    dec sp                                        ; $616d: $3b
    ld a, [hl-]                                   ; $616e: $3a
    jr c, @+$39                                   ; $616f: $38 $37

    ld [hl], $35                                  ; $6171: $36 $35
    inc [hl]                                      ; $6173: $34
    inc sp                                        ; $6174: $33
    ld [hl-], a                                   ; $6175: $32
    ld sp, $3f30                                  ; $6176: $31 $30 $3f
    ccf                                           ; $6179: $3f
    ccf                                           ; $617a: $3f
    ccf                                           ; $617b: $3f
    ccf                                           ; $617c: $3f
    ld a, $3e                                     ; $617d: $3e $3e
    inc a                                         ; $617f: $3c
    ld a, [hl-]                                   ; $6180: $3a
    ld [hl], $35                                  ; $6181: $36 $35
    inc [hl]                                      ; $6183: $34
    inc [hl]                                      ; $6184: $34
    inc [hl]                                      ; $6185: $34
    inc [hl]                                      ; $6186: $34
    inc [hl]                                      ; $6187: $34
    ccf                                           ; $6188: $3f
    jr c, @+$3a                                   ; $6189: $38 $38

    jr c, @+$3a                                   ; $618b: $38 $38

    jr nc, jr_002_61bf                            ; $618d: $30 $30

    jr nc, @+$32                                  ; $618f: $30 $30

    jr nc, jr_002_61d4                            ; $6191: $30 $41

    ld b, c                                       ; $6193: $41
    jr nz, @+$22                                  ; $6194: $20 $20

    jr nz, @+$22                                  ; $6196: $20 $20

    scf                                           ; $6198: $37
    inc [hl]                                      ; $6199: $34
    ld [hl-], a                                   ; $619a: $32
    ld sp, $2c30                                  ; $619b: $31 $30 $2c
    ld a, [hl+]                                   ; $619e: $2a
    jr z, jr_002_61cb                             ; $619f: $28 $2a

    jr z, jr_002_61c9                             ; $61a1: $28 $26

    inc h                                         ; $61a3: $24
    ld [hl+], a                                   ; $61a4: $22
    jr nz, @+$22                                  ; $61a5: $20 $20

    jr nz, jr_002_6228                            ; $61a7: $20 $7f

    ld a, a                                       ; $61a9: $7f
    ld a, a                                       ; $61aa: $7f
    ld a, a                                       ; $61ab: $7f
    ld a, a                                       ; $61ac: $7f
    ld [hl-], a                                   ; $61ad: $32
    ld [hl-], a                                   ; $61ae: $32
    ld [hl-], a                                   ; $61af: $32
    ld l, $2e                                     ; $61b0: $2e $2e
    ld l, $41                                     ; $61b2: $2e $41
    ld b, c                                       ; $61b4: $41
    jr nz, @+$22                                  ; $61b5: $20 $20

    jr nz, jr_002_6238                            ; $61b7: $20 $7f

    ld a, a                                       ; $61b9: $7f
    ld a, a                                       ; $61ba: $7f
    ld a, a                                       ; $61bb: $7f
    ld a, a                                       ; $61bc: $7f
    ccf                                           ; $61bd: $3f
    ccf                                           ; $61be: $3f

jr_002_61bf:
    ccf                                           ; $61bf: $3f
    jr nc, jr_002_61f2                            ; $61c0: $30 $30

    jr nc, jr_002_61f4                            ; $61c2: $30 $30

    jr nc, jr_002_61e6                            ; $61c4: $30 $20

    jr nz, jr_002_61e8                            ; $61c6: $20 $20

    ccf                                           ; $61c8: $3f

jr_002_61c9:
    ccf                                           ; $61c9: $3f
    ccf                                           ; $61ca: $3f

jr_002_61cb:
    jr c, @+$3a                                   ; $61cb: $38 $38

    jr c, jr_002_61ff                             ; $61cd: $38 $30

    jr nc, jr_002_6201                            ; $61cf: $30 $30

    ld b, d                                       ; $61d1: $42
    ld b, d                                       ; $61d2: $42
    ld b, d                                       ; $61d3: $42

jr_002_61d4:
    jr nz, jr_002_61f6                            ; $61d4: $20 $20

    jr nz, jr_002_61f8                            ; $61d6: $20 $20

    nop                                           ; $61d8: $00
    inc b                                         ; $61d9: $04
    ld [bc], a                                    ; $61da: $02
    ld b, $01                                     ; $61db: $06 $01
    dec b                                         ; $61dd: $05
    inc bc                                        ; $61de: $03
    rlca                                          ; $61df: $07
    ld [$0a0c], sp                                ; $61e0: $08 $0c $0a
    ld c, $09                                     ; $61e3: $0e $09
    dec c                                         ; $61e5: $0d

jr_002_61e6:
    dec bc                                        ; $61e6: $0b
    rrca                                          ; $61e7: $0f

jr_002_61e8:
    nop                                           ; $61e8: $00
    ld bc, $0908                                  ; $61e9: $01 $08 $09
    inc b                                         ; $61ec: $04
    dec b                                         ; $61ed: $05
    inc c                                         ; $61ee: $0c
    dec c                                         ; $61ef: $0d
    ld [bc], a                                    ; $61f0: $02
    inc bc                                        ; $61f1: $03

jr_002_61f2:
    ld a, [bc]                                    ; $61f2: $0a
    dec bc                                        ; $61f3: $0b

jr_002_61f4:
    ld b, $07                                     ; $61f4: $06 $07

jr_002_61f6:
    ld c, $0f                                     ; $61f6: $0e $0f

jr_002_61f8:
    nop                                           ; $61f8: $00
    ld [$0901], sp                                ; $61f9: $08 $01 $09
    ld [bc], a                                    ; $61fc: $02
    ld a, [bc]                                    ; $61fd: $0a
    inc bc                                        ; $61fe: $03

jr_002_61ff:
    dec bc                                        ; $61ff: $0b
    inc b                                         ; $6200: $04

jr_002_6201:
    inc c                                         ; $6201: $0c
    dec b                                         ; $6202: $05
    dec c                                         ; $6203: $0d
    ld b, $0e                                     ; $6204: $06 $0e
    rlca                                          ; $6206: $07
    rrca                                          ; $6207: $0f
    add b                                         ; $6208: $80
    add b                                         ; $6209: $80
    add b                                         ; $620a: $80
    add b                                         ; $620b: $80
    add b                                         ; $620c: $80
    add b                                         ; $620d: $80
    add b                                         ; $620e: $80
    add b                                         ; $620f: $80
    add b                                         ; $6210: $80
    add b                                         ; $6211: $80
    add b                                         ; $6212: $80
    add b                                         ; $6213: $80
    add b                                         ; $6214: $80
    add b                                         ; $6215: $80
    ld c, $80                                     ; $6216: $0e $80
    add b                                         ; $6218: $80
    add b                                         ; $6219: $80
    add b                                         ; $621a: $80
    add b                                         ; $621b: $80
    add b                                         ; $621c: $80
    add b                                         ; $621d: $80
    add b                                         ; $621e: $80
    add b                                         ; $621f: $80
    add b                                         ; $6220: $80
    dec de                                        ; $6221: $1b
    dec de                                        ; $6222: $1b
    dec de                                        ; $6223: $1b
    add b                                         ; $6224: $80
    dec e                                         ; $6225: $1d
    ld c, $80                                     ; $6226: $0e $80

jr_002_6228:
    add b                                         ; $6228: $80
    add b                                         ; $6229: $80
    add b                                         ; $622a: $80
    dec e                                         ; $622b: $1d
    add b                                         ; $622c: $80
    add b                                         ; $622d: $80
    add b                                         ; $622e: $80
    add b                                         ; $622f: $80
    add b                                         ; $6230: $80
    add b                                         ; $6231: $80
    nop                                           ; $6232: $00
    inc bc                                        ; $6233: $03
    inc b                                         ; $6234: $04
    ld bc, $0702                                  ; $6235: $01 $02 $07

jr_002_6238:
    ld b, $05                                     ; $6238: $06 $05
    ld [$0b09], sp                                ; $623a: $08 $09 $0b
    ld a, [bc]                                    ; $623d: $0a
    dec c                                         ; $623e: $0d
    inc c                                         ; $623f: $0c
    ld c, $0f                                     ; $6240: $0e $0f
    db $10                                        ; $6242: $10
    ld de, $1314                                  ; $6243: $11 $14 $13
    ld [de], a                                    ; $6246: $12
    dec d                                         ; $6247: $15
    ld d, $17                                     ; $6248: $16 $17
    ld a, [hl+]                                   ; $624a: $2a
    add hl, de                                    ; $624b: $19
    ld a, [de]                                    ; $624c: $1a
    dec de                                        ; $624d: $1b
    inc e                                         ; $624e: $1c
    dec e                                         ; $624f: $1d
    ld e, $1f                                     ; $6250: $1e $1f
    jr nz, jr_002_6275                            ; $6252: $20 $21

    ld [hl+], a                                   ; $6254: $22
    inc hl                                        ; $6255: $23
    inc h                                         ; $6256: $24
    dec h                                         ; $6257: $25
    ld h, $27                                     ; $6258: $26 $27
    jr z, jr_002_6285                             ; $625a: $28 $29

    jr jr_002_625e                                ; $625c: $18 $00

jr_002_625e:
    ld [bc], a                                    ; $625e: $02
    ld bc, $0304                                  ; $625f: $01 $04 $03
    dec b                                         ; $6262: $05
    ld [$0607], sp                                ; $6263: $08 $07 $06
    add hl, bc                                    ; $6266: $09
    inc c                                         ; $6267: $0c
    dec c                                         ; $6268: $0d
    ld a, [bc]                                    ; $6269: $0a
    dec bc                                        ; $626a: $0b
    ld c, $0f                                     ; $626b: $0e $0f
    db $10                                        ; $626d: $10
    ld de, $1312                                  ; $626e: $11 $12 $13
    inc d                                         ; $6271: $14
    dec d                                         ; $6272: $15
    ld d, $17                                     ; $6273: $16 $17

jr_002_6275:
    jr jr_002_6290                                ; $6275: $18 $19

    ld a, [de]                                    ; $6277: $1a
    dec de                                        ; $6278: $1b
    inc e                                         ; $6279: $1c
    dec e                                         ; $627a: $1d
    ld e, $1f                                     ; $627b: $1e $1f
    jr nz, jr_002_62a0                            ; $627d: $20 $21

    ld [hl+], a                                   ; $627f: $22
    inc hl                                        ; $6280: $23
    inc h                                         ; $6281: $24
    dec h                                         ; $6282: $25
    ld h, $27                                     ; $6283: $26 $27

jr_002_6285:
    jr z, jr_002_62b0                             ; $6285: $28 $29

    ld a, [hl+]                                   ; $6287: $2a
    dec b                                         ; $6288: $05
    ld bc, $0305                                  ; $6289: $01 $05 $03
    inc c                                         ; $628c: $0c
    dec b                                         ; $628d: $05
    add hl, bc                                    ; $628e: $09
    add hl, bc                                    ; $628f: $09

jr_002_6290:
    inc c                                         ; $6290: $0c
    add hl, bc                                    ; $6291: $09
    add hl, bc                                    ; $6292: $09
    add hl, bc                                    ; $6293: $09
    inc c                                         ; $6294: $0c
    add hl, bc                                    ; $6295: $09
    add hl, bc                                    ; $6296: $09
    add hl, bc                                    ; $6297: $09
    db $10                                        ; $6298: $10
    ld de, $0909                                  ; $6299: $11 $09 $09
    add hl, bc                                    ; $629c: $09
    add hl, bc                                    ; $629d: $09
    add hl, bc                                    ; $629e: $09
    add hl, bc                                    ; $629f: $09

jr_002_62a0:
    dec b                                         ; $62a0: $05
    add hl, bc                                    ; $62a1: $09
    add hl, bc                                    ; $62a2: $09
    add hl, bc                                    ; $62a3: $09
    add hl, bc                                    ; $62a4: $09
    add hl, bc                                    ; $62a5: $09
    add hl, bc                                    ; $62a6: $09
    add hl, bc                                    ; $62a7: $09
    add hl, bc                                    ; $62a8: $09
    add hl, bc                                    ; $62a9: $09
    add hl, bc                                    ; $62aa: $09
    add hl, bc                                    ; $62ab: $09
    add hl, bc                                    ; $62ac: $09
    add hl, bc                                    ; $62ad: $09
    add hl, bc                                    ; $62ae: $09
    add hl, bc                                    ; $62af: $09

jr_002_62b0:
    add hl, bc                                    ; $62b0: $09
    add hl, bc                                    ; $62b1: $09
    add hl, bc                                    ; $62b2: $09
    rlca                                          ; $62b3: $07
    ld bc, $030d                                  ; $62b4: $01 $0d $03
    rlca                                          ; $62b7: $07
    add hl, bc                                    ; $62b8: $09
    add hl, bc                                    ; $62b9: $09
    rlca                                          ; $62ba: $07
    dec c                                         ; $62bb: $0d
    add hl, bc                                    ; $62bc: $09
    add hl, bc                                    ; $62bd: $09
    add hl, bc                                    ; $62be: $09
    add hl, bc                                    ; $62bf: $09
    dec c                                         ; $62c0: $0d
    add hl, bc                                    ; $62c1: $09
    add hl, bc                                    ; $62c2: $09
    db $10                                        ; $62c3: $10
    ld de, $0909                                  ; $62c4: $11 $09 $09
    add hl, bc                                    ; $62c7: $09
    add hl, bc                                    ; $62c8: $09
    add hl, bc                                    ; $62c9: $09
    add hl, bc                                    ; $62ca: $09
    add hl, bc                                    ; $62cb: $09
    add hl, bc                                    ; $62cc: $09
    add hl, bc                                    ; $62cd: $09
    add hl, bc                                    ; $62ce: $09
    add hl, bc                                    ; $62cf: $09
    add hl, bc                                    ; $62d0: $09
    add hl, bc                                    ; $62d1: $09
    add hl, bc                                    ; $62d2: $09
    add hl, bc                                    ; $62d3: $09
    add hl, bc                                    ; $62d4: $09
    add hl, bc                                    ; $62d5: $09
    add hl, bc                                    ; $62d6: $09
    add hl, bc                                    ; $62d7: $09
    add hl, bc                                    ; $62d8: $09
    add hl, bc                                    ; $62d9: $09
    add hl, bc                                    ; $62da: $09
    add hl, bc                                    ; $62db: $09
    add hl, bc                                    ; $62dc: $09
    rlca                                          ; $62dd: $07
    dec b                                         ; $62de: $05
    dec b                                         ; $62df: $05
    ld [bc], a                                    ; $62e0: $02
    ld a, [bc]                                    ; $62e1: $0a
    inc b                                         ; $62e2: $04
    dec b                                         ; $62e3: $05
    ld a, [bc]                                    ; $62e4: $0a
    add hl, bc                                    ; $62e5: $09
    add hl, bc                                    ; $62e6: $09
    add hl, bc                                    ; $62e7: $09
    ld a, [bc]                                    ; $62e8: $0a
    add hl, bc                                    ; $62e9: $09
    add hl, bc                                    ; $62ea: $09
    add hl, bc                                    ; $62eb: $09
    add hl, bc                                    ; $62ec: $09
    add hl, bc                                    ; $62ed: $09
    db $10                                        ; $62ee: $10
    ld de, $0909                                  ; $62ef: $11 $09 $09
    add hl, bc                                    ; $62f2: $09
    add hl, bc                                    ; $62f3: $09
    add hl, bc                                    ; $62f4: $09
    add hl, bc                                    ; $62f5: $09
    dec b                                         ; $62f6: $05
    add hl, bc                                    ; $62f7: $09
    add hl, bc                                    ; $62f8: $09
    add hl, bc                                    ; $62f9: $09
    add hl, bc                                    ; $62fa: $09
    add hl, bc                                    ; $62fb: $09
    add hl, bc                                    ; $62fc: $09
    add hl, bc                                    ; $62fd: $09
    add hl, bc                                    ; $62fe: $09
    add hl, bc                                    ; $62ff: $09
    add hl, bc                                    ; $6300: $09
    add hl, bc                                    ; $6301: $09
    add hl, bc                                    ; $6302: $09
    add hl, bc                                    ; $6303: $09
    add hl, bc                                    ; $6304: $09
    add hl, bc                                    ; $6305: $09
    add hl, bc                                    ; $6306: $09
    add hl, bc                                    ; $6307: $09
    add hl, bc                                    ; $6308: $09
    rlca                                          ; $6309: $07
    dec bc                                        ; $630a: $0b
    ld [bc], a                                    ; $630b: $02
    rlca                                          ; $630c: $07
    inc b                                         ; $630d: $04
    add hl, bc                                    ; $630e: $09
    dec bc                                        ; $630f: $0b
    rlca                                          ; $6310: $07
    add hl, bc                                    ; $6311: $09
    add hl, bc                                    ; $6312: $09
    add hl, bc                                    ; $6313: $09
    dec bc                                        ; $6314: $0b
    add hl, bc                                    ; $6315: $09
    add hl, bc                                    ; $6316: $09
    add hl, bc                                    ; $6317: $09
    add hl, bc                                    ; $6318: $09
    db $10                                        ; $6319: $10
    ld de, $0909                                  ; $631a: $11 $09 $09
    add hl, bc                                    ; $631d: $09
    add hl, bc                                    ; $631e: $09
    add hl, bc                                    ; $631f: $09
    add hl, bc                                    ; $6320: $09
    add hl, bc                                    ; $6321: $09
    add hl, bc                                    ; $6322: $09
    add hl, bc                                    ; $6323: $09
    add hl, bc                                    ; $6324: $09
    add hl, bc                                    ; $6325: $09
    add hl, bc                                    ; $6326: $09
    add hl, bc                                    ; $6327: $09
    add hl, bc                                    ; $6328: $09
    add hl, bc                                    ; $6329: $09
    add hl, bc                                    ; $632a: $09
    add hl, bc                                    ; $632b: $09
    add hl, bc                                    ; $632c: $09
    add hl, bc                                    ; $632d: $09
    add hl, bc                                    ; $632e: $09
    add hl, bc                                    ; $632f: $09
    add hl, bc                                    ; $6330: $09
    add hl, bc                                    ; $6331: $09
    add hl, bc                                    ; $6332: $09
    rlca                                          ; $6333: $07
    ld [$0201], sp                                ; $6334: $08 $01 $02
    dec c                                         ; $6337: $0d
    ld [$0909], sp                                ; $6338: $08 $09 $09
    dec c                                         ; $633b: $0d
    ld [$0909], sp                                ; $633c: $08 $09 $09
    add hl, bc                                    ; $633f: $09
    add hl, bc                                    ; $6340: $09
    dec c                                         ; $6341: $0d
    add hl, bc                                    ; $6342: $09
    add hl, bc                                    ; $6343: $09
    db $10                                        ; $6344: $10
    ld de, $0909                                  ; $6345: $11 $09 $09
    add hl, bc                                    ; $6348: $09
    add hl, bc                                    ; $6349: $09
    add hl, bc                                    ; $634a: $09
    add hl, bc                                    ; $634b: $09
    add hl, bc                                    ; $634c: $09
    add hl, bc                                    ; $634d: $09
    add hl, bc                                    ; $634e: $09
    add hl, bc                                    ; $634f: $09
    add hl, bc                                    ; $6350: $09
    add hl, bc                                    ; $6351: $09
    add hl, bc                                    ; $6352: $09
    add hl, bc                                    ; $6353: $09
    add hl, bc                                    ; $6354: $09
    add hl, bc                                    ; $6355: $09
    add hl, bc                                    ; $6356: $09
    add hl, bc                                    ; $6357: $09
    add hl, bc                                    ; $6358: $09
    add hl, bc                                    ; $6359: $09
    add hl, bc                                    ; $635a: $09
    add hl, bc                                    ; $635b: $09
    add hl, bc                                    ; $635c: $09
    add hl, bc                                    ; $635d: $09
    dec c                                         ; $635e: $0d
    ld b, $01                                     ; $635f: $06 $01
    ld [bc], a                                    ; $6361: $02
    ld b, $0b                                     ; $6362: $06 $0b
    add hl, bc                                    ; $6364: $09
    ld b, $0b                                     ; $6365: $06 $0b
    add hl, bc                                    ; $6367: $09
    add hl, bc                                    ; $6368: $09
    add hl, bc                                    ; $6369: $09
    dec bc                                        ; $636a: $0b
    add hl, bc                                    ; $636b: $09
    add hl, bc                                    ; $636c: $09
    add hl, bc                                    ; $636d: $09
    add hl, bc                                    ; $636e: $09
    db $10                                        ; $636f: $10
    ld de, $0909                                  ; $6370: $11 $09 $09
    add hl, bc                                    ; $6373: $09
    add hl, bc                                    ; $6374: $09
    add hl, bc                                    ; $6375: $09
    add hl, bc                                    ; $6376: $09
    add hl, bc                                    ; $6377: $09
    add hl, bc                                    ; $6378: $09
    add hl, bc                                    ; $6379: $09
    add hl, bc                                    ; $637a: $09
    add hl, bc                                    ; $637b: $09
    add hl, bc                                    ; $637c: $09
    add hl, bc                                    ; $637d: $09
    add hl, bc                                    ; $637e: $09
    add hl, bc                                    ; $637f: $09
    add hl, bc                                    ; $6380: $09
    add hl, bc                                    ; $6381: $09
    add hl, bc                                    ; $6382: $09
    add hl, bc                                    ; $6383: $09
    add hl, bc                                    ; $6384: $09
    add hl, bc                                    ; $6385: $09
    add hl, bc                                    ; $6386: $09
    add hl, bc                                    ; $6387: $09
    add hl, bc                                    ; $6388: $09
    dec bc                                        ; $6389: $0b
    ld [$080c], sp                                ; $638a: $08 $0c $08
    inc bc                                        ; $638d: $03
    inc b                                         ; $638e: $04
    inc c                                         ; $638f: $0c
    add hl, bc                                    ; $6390: $09
    add hl, bc                                    ; $6391: $09
    ld [$0909], sp                                ; $6392: $08 $09 $09
    add hl, bc                                    ; $6395: $09
    inc c                                         ; $6396: $0c
    add hl, bc                                    ; $6397: $09
    add hl, bc                                    ; $6398: $09
    add hl, bc                                    ; $6399: $09
    db $10                                        ; $639a: $10
    ld de, $0909                                  ; $639b: $11 $09 $09
    add hl, bc                                    ; $639e: $09
    add hl, bc                                    ; $639f: $09
    add hl, bc                                    ; $63a0: $09
    add hl, bc                                    ; $63a1: $09
    inc c                                         ; $63a2: $0c
    add hl, bc                                    ; $63a3: $09
    add hl, bc                                    ; $63a4: $09
    add hl, bc                                    ; $63a5: $09
    add hl, bc                                    ; $63a6: $09
    add hl, bc                                    ; $63a7: $09
    add hl, bc                                    ; $63a8: $09
    add hl, bc                                    ; $63a9: $09
    add hl, bc                                    ; $63aa: $09
    add hl, bc                                    ; $63ab: $09
    add hl, bc                                    ; $63ac: $09
    add hl, bc                                    ; $63ad: $09
    add hl, bc                                    ; $63ae: $09
    add hl, bc                                    ; $63af: $09
    add hl, bc                                    ; $63b0: $09
    add hl, bc                                    ; $63b1: $09
    add hl, bc                                    ; $63b2: $09
    add hl, bc                                    ; $63b3: $09
    add hl, bc                                    ; $63b4: $09
    ld b, $06                                     ; $63b5: $06 $06
    ld a, [bc]                                    ; $63b7: $0a
    inc bc                                        ; $63b8: $03
    inc b                                         ; $63b9: $04
    ld a, [bc]                                    ; $63ba: $0a
    ld b, $09                                     ; $63bb: $06 $09
    add hl, bc                                    ; $63bd: $09
    add hl, bc                                    ; $63be: $09
    ld a, [bc]                                    ; $63bf: $0a
    add hl, bc                                    ; $63c0: $09
    add hl, bc                                    ; $63c1: $09
    add hl, bc                                    ; $63c2: $09
    add hl, bc                                    ; $63c3: $09
    add hl, bc                                    ; $63c4: $09
    db $10                                        ; $63c5: $10
    ld de, $0909                                  ; $63c6: $11 $09 $09
    add hl, bc                                    ; $63c9: $09
    add hl, bc                                    ; $63ca: $09
    add hl, bc                                    ; $63cb: $09
    add hl, bc                                    ; $63cc: $09
    ld a, [bc]                                    ; $63cd: $0a
    add hl, bc                                    ; $63ce: $09
    add hl, bc                                    ; $63cf: $09
    add hl, bc                                    ; $63d0: $09
    add hl, bc                                    ; $63d1: $09
    add hl, bc                                    ; $63d2: $09
    add hl, bc                                    ; $63d3: $09
    add hl, bc                                    ; $63d4: $09
    add hl, bc                                    ; $63d5: $09
    add hl, bc                                    ; $63d6: $09
    add hl, bc                                    ; $63d7: $09
    add hl, bc                                    ; $63d8: $09
    add hl, bc                                    ; $63d9: $09
    add hl, bc                                    ; $63da: $09
    add hl, bc                                    ; $63db: $09
    add hl, bc                                    ; $63dc: $09
    add hl, bc                                    ; $63dd: $09
    add hl, bc                                    ; $63de: $09
    add hl, bc                                    ; $63df: $09
    add sp, $63                                   ; $63e0: $e8 $63
    sub b                                         ; $63e2: $90
    ld h, h                                       ; $63e3: $64
    jr c, jr_002_644b                             ; $63e4: $38 $65

    ldh [$ff65], a                                ; $63e6: $e0 $65
    inc hl                                        ; $63e8: $23
    inc hl                                        ; $63e9: $23
    inc hl                                        ; $63ea: $23
    inc hl                                        ; $63eb: $23
    ld bc, $0203                                  ; $63ec: $01 $03 $02
    inc b                                         ; $63ef: $04
    rlca                                          ; $63f0: $07
    add hl, bc                                    ; $63f1: $09
    ld [$0f0a], sp                                ; $63f2: $08 $0a $0f
    ld de, $1210                                  ; $63f5: $11 $10 $12
    inc de                                        ; $63f8: $13
    ld a, [bc]                                    ; $63f9: $0a
    ld [de], a                                    ; $63fa: $12
    inc d                                         ; $63fb: $14
    inc bc                                        ; $63fc: $03
    ld b, $05                                     ; $63fd: $06 $05
    dec b                                         ; $63ff: $05
    ld [bc], a                                    ; $6400: $02
    inc c                                         ; $6401: $0c
    dec bc                                        ; $6402: $0b
    inc c                                         ; $6403: $0c
    dec d                                         ; $6404: $15
    dec d                                         ; $6405: $15
    ld d, $12                                     ; $6406: $16 $12
    dec c                                         ; $6408: $0d
    ld a, [bc]                                    ; $6409: $0a
    dec c                                         ; $640a: $0d
    ld c, $1f                                     ; $640b: $0e $1f
    ld hl, $2220                                  ; $640d: $21 $20 $22
    add hl, de                                    ; $6410: $19
    inc c                                         ; $6411: $0c
    dec b                                         ; $6412: $05
    ld a, [de]                                    ; $6413: $1a
    dec d                                         ; $6414: $15
    jr jr_002_642e                                ; $6415: $18 $17

    inc c                                         ; $6417: $0c
    dec c                                         ; $6418: $0d
    inc e                                         ; $6419: $1c
    dec de                                        ; $641a: $1b
    dec b                                         ; $641b: $05
    dec e                                         ; $641c: $1d
    dec d                                         ; $641d: $15
    dec c                                         ; $641e: $0d
    ld e, $46                                     ; $641f: $1e $46
    ld b, a                                       ; $6421: $47
    inc h                                         ; $6422: $24
    inc h                                         ; $6423: $24
    ld b, d                                       ; $6424: $42
    ld b, h                                       ; $6425: $44
    ld b, e                                       ; $6426: $43
    ld b, l                                       ; $6427: $45
    dec h                                         ; $6428: $25
    daa                                           ; $6429: $27
    ld h, $28                                     ; $642a: $26 $28
    add hl, hl                                    ; $642c: $29
    dec hl                                        ; $642d: $2b

jr_002_642e:
    ld a, [hl+]                                   ; $642e: $2a
    inc l                                         ; $642f: $2c
    inc bc                                        ; $6430: $03
    ld b, $2d                                     ; $6431: $06 $2d
    ld l, $31                                     ; $6433: $2e $31
    ld [hl-], a                                   ; $6435: $32
    ld sp, $2f32                                  ; $6436: $31 $32 $2f
    jr nc, jr_002_6451                            ; $6439: $30 $16

    ld [de], a                                    ; $643b: $12
    scf                                           ; $643c: $37
    add hl, sp                                    ; $643d: $39
    jr c, jr_002_647a                             ; $643e: $38 $3a

    inc sp                                        ; $6440: $33
    dec [hl]                                      ; $6441: $35
    inc [hl]                                      ; $6442: $34
    ld [hl], $3b                                  ; $6443: $36 $3b
    dec a                                         ; $6445: $3d
    inc a                                         ; $6446: $3c
    ld a, $48                                     ; $6447: $3e $48
    ld b, $49                                     ; $6449: $06 $49

jr_002_644b:
    dec b                                         ; $644b: $05
    ld b, b                                       ; $644c: $40
    ld b, c                                       ; $644d: $41
    ld b, c                                       ; $644e: $41
    ld b, b                                       ; $644f: $40
    ld b, b                                       ; $6450: $40

jr_002_6451:
    ld b, c                                       ; $6451: $41
    ld b, c                                       ; $6452: $41
    ld b, b                                       ; $6453: $40
    ccf                                           ; $6454: $3f
    ccf                                           ; $6455: $3f
    ld b, c                                       ; $6456: $41
    ld b, b                                       ; $6457: $40
    ld c, d                                       ; $6458: $4a
    ld c, h                                       ; $6459: $4c
    ld c, e                                       ; $645a: $4b
    ld c, l                                       ; $645b: $4d
    ld b, [hl]                                    ; $645c: $46
    ld b, a                                       ; $645d: $47
    inc h                                         ; $645e: $24
    inc h                                         ; $645f: $24
    inc h                                         ; $6460: $24
    inc h                                         ; $6461: $24
    inc h                                         ; $6462: $24
    inc h                                         ; $6463: $24

Call_002_6464:
    rra                                           ; $6464: $1f
    ld hl, $2220                                  ; $6465: $21 $20 $22
    ld c, [hl]                                    ; $6468: $4e
    ld d, b                                       ; $6469: $50
    ld c, a                                       ; $646a: $4f
    ld d, c                                       ; $646b: $51
    ld e, a                                       ; $646c: $5f
    ld e, a                                       ; $646d: $5f
    ld e, a                                       ; $646e: $5f
    ld e, a                                       ; $646f: $5f
    ld b, h                                       ; $6470: $44
    ld b, [hl]                                    ; $6471: $46
    ld b, l                                       ; $6472: $45
    ld b, a                                       ; $6473: $47
    inc h                                         ; $6474: $24
    inc h                                         ; $6475: $24
    inc h                                         ; $6476: $24
    inc h                                         ; $6477: $24
    ld d, [hl]                                    ; $6478: $56
    ld e, b                                       ; $6479: $58

jr_002_647a:
    ld d, a                                       ; $647a: $57
    ld e, c                                       ; $647b: $59
    ld d, d                                       ; $647c: $52
    ld d, h                                       ; $647d: $54
    ld d, e                                       ; $647e: $53
    ld d, l                                       ; $647f: $55
    rra                                           ; $6480: $1f
    ld e, b                                       ; $6481: $58
    jr nz, jr_002_64dd                            ; $6482: $20 $59

    ld d, [hl]                                    ; $6484: $56
    ld hl, $2257                                  ; $6485: $21 $57 $22
    ld d, d                                       ; $6488: $52
    ld d, h                                       ; $6489: $54
    jr nz, jr_002_64ae                            ; $648a: $20 $22

    rra                                           ; $648c: $1f
    ld hl, $5553                                  ; $648d: $21 $53 $55
    dec e                                         ; $6490: $1d
    dec e                                         ; $6491: $1d
    dec e                                         ; $6492: $1d
    dec e                                         ; $6493: $1d
    ld bc, $0203                                  ; $6494: $01 $03 $02
    inc b                                         ; $6497: $04
    inc bc                                        ; $6498: $03
    ld [$0907], sp                                ; $6499: $08 $07 $09
    ld [bc], a                                    ; $649c: $02
    dec bc                                        ; $649d: $0b
    ld a, [bc]                                    ; $649e: $0a
    inc c                                         ; $649f: $0c
    dec c                                         ; $64a0: $0d
    add hl, bc                                    ; $64a1: $09
    inc c                                         ; $64a2: $0c
    ld c, $03                                     ; $64a3: $0e $03
    inc bc                                        ; $64a5: $03
    dec b                                         ; $64a6: $05
    dec b                                         ; $64a7: $05
    ld [bc], a                                    ; $64a8: $02
    ld b, $02                                     ; $64a9: $06 $02
    ld b, $0f                                     ; $64ab: $06 $0f
    rrca                                          ; $64ad: $0f

jr_002_64ae:
    inc c                                         ; $64ae: $0c
    inc c                                         ; $64af: $0c
    db $10                                        ; $64b0: $10
    add hl, bc                                    ; $64b1: $09
    db $10                                        ; $64b2: $10
    add hl, bc                                    ; $64b3: $09
    add hl, de                                    ; $64b4: $19
    dec de                                        ; $64b5: $1b
    ld a, [de]                                    ; $64b6: $1a
    inc e                                         ; $64b7: $1c
    inc de                                        ; $64b8: $13
    ld b, $05                                     ; $64b9: $06 $05
    inc d                                         ; $64bb: $14
    rrca                                          ; $64bc: $0f
    ld de, $0612                                  ; $64bd: $11 $12 $06
    db $10                                        ; $64c0: $10
    jr jr_002_64da                                ; $64c1: $18 $17

    dec b                                         ; $64c3: $05
    dec d                                         ; $64c4: $15
    rrca                                          ; $64c5: $0f
    db $10                                        ; $64c6: $10
    ld d, $33                                     ; $64c7: $16 $33
    inc [hl]                                      ; $64c9: $34
    ld e, $1e                                     ; $64ca: $1e $1e
    dec [hl]                                      ; $64cc: $35
    scf                                           ; $64cd: $37
    ld [hl], $38                                  ; $64ce: $36 $38
    rra                                           ; $64d0: $1f
    ld hl, $2220                                  ; $64d1: $21 $20 $22
    inc hl                                        ; $64d4: $23
    dec h                                         ; $64d5: $25
    inc h                                         ; $64d6: $24
    ld h, $03                                     ; $64d7: $26 $03
    inc bc                                        ; $64d9: $03

jr_002_64da:
    daa                                           ; $64da: $27
    jr z, jr_002_6506                             ; $64db: $28 $29

jr_002_64dd:
    ld a, [hl+]                                   ; $64dd: $2a
    add hl, hl                                    ; $64de: $29
    ld a, [hl+]                                   ; $64df: $2a
    dec hl                                        ; $64e0: $2b
    inc l                                         ; $64e1: $2c
    inc c                                         ; $64e2: $0c
    inc c                                         ; $64e3: $0c
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    dec l                                         ; $64e8: $2d
    cpl                                           ; $64e9: $2f
    ld l, $30                                     ; $64ea: $2e $30
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    ld sp, $3203                                  ; $64f0: $31 $03 $32
    dec b                                         ; $64f3: $05
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    nop                                           ; $64fb: $00
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    add hl, sp                                    ; $6500: $39
    dec sp                                        ; $6501: $3b
    ld a, [hl-]                                   ; $6502: $3a
    inc a                                         ; $6503: $3c
    inc sp                                        ; $6504: $33
    inc [hl]                                      ; $6505: $34

jr_002_6506:
    ld e, $1e                                     ; $6506: $1e $1e
    ld e, $1e                                     ; $6508: $1e $1e
    ld e, $1e                                     ; $650a: $1e $1e
    add hl, de                                    ; $650c: $19
    dec de                                        ; $650d: $1b
    ld a, [de]                                    ; $650e: $1a
    inc e                                         ; $650f: $1c
    dec a                                         ; $6510: $3d
    ccf                                           ; $6511: $3f
    ld a, $40                                     ; $6512: $3e $40
    ld e, a                                       ; $6514: $5f
    ld e, a                                       ; $6515: $5f
    ld e, a                                       ; $6516: $5f
    ld e, a                                       ; $6517: $5f
    ld b, h                                       ; $6518: $44
    ld b, [hl]                                    ; $6519: $46
    ld b, l                                       ; $651a: $45
    ld b, a                                       ; $651b: $47
    ld e, $1e                                     ; $651c: $1e $1e
    ld e, $1e                                     ; $651e: $1e $1e
    ld b, l                                       ; $6520: $45
    ld b, a                                       ; $6521: $47
    ld b, [hl]                                    ; $6522: $46
    ld c, b                                       ; $6523: $48
    ld b, c                                       ; $6524: $41
    ld b, e                                       ; $6525: $43
    ld b, d                                       ; $6526: $42
    ld b, h                                       ; $6527: $44
    add hl, de                                    ; $6528: $19
    ld b, a                                       ; $6529: $47
    ld a, [de]                                    ; $652a: $1a
    ld c, b                                       ; $652b: $48
    ld b, l                                       ; $652c: $45
    dec de                                        ; $652d: $1b
    ld b, [hl]                                    ; $652e: $46
    inc e                                         ; $652f: $1c
    ld b, c                                       ; $6530: $41
    ld b, e                                       ; $6531: $43
    ld a, [de]                                    ; $6532: $1a
    inc e                                         ; $6533: $1c
    add hl, de                                    ; $6534: $19
    dec de                                        ; $6535: $1b
    ld b, d                                       ; $6536: $42
    ld b, h                                       ; $6537: $44
    ld [hl], $36                                  ; $6538: $36 $36
    ld [hl], $36                                  ; $653a: $36 $36
    ld bc, $0203                                  ; $653c: $01 $03 $02
    inc b                                         ; $653f: $04
    add hl, bc                                    ; $6540: $09
    dec bc                                        ; $6541: $0b
    ld a, [bc]                                    ; $6542: $0a
    inc c                                         ; $6543: $0c
    dec d                                         ; $6544: $15
    rla                                           ; $6545: $17
    ld d, $18                                     ; $6546: $16 $18
    dec e                                         ; $6548: $1d
    rra                                           ; $6549: $1f
    ld e, $20                                     ; $654a: $1e $20
    dec b                                         ; $654c: $05
    rlca                                          ; $654d: $07
    ld b, $08                                     ; $654e: $06 $08
    dec c                                         ; $6550: $0d
    rrca                                          ; $6551: $0f
    ld c, $10                                     ; $6552: $0e $10
    add hl, de                                    ; $6554: $19
    dec de                                        ; $6555: $1b
    ld a, [de]                                    ; $6556: $1a
    inc e                                         ; $6557: $1c
    ld de, $1213                                  ; $6558: $11 $13 $12
    inc d                                         ; $655b: $14
    ld sp, $3233                                  ; $655c: $31 $33 $32
    inc [hl]                                      ; $655f: $34
    ld hl, $2223                                  ; $6560: $21 $23 $22
    inc h                                         ; $6563: $24
    add hl, hl                                    ; $6564: $29
    dec hl                                        ; $6565: $2b
    ld a, [hl+]                                   ; $6566: $2a
    inc l                                         ; $6567: $2c
    dec h                                         ; $6568: $25
    daa                                           ; $6569: $27
    ld h, $28                                     ; $656a: $26 $28
    dec l                                         ; $656c: $2d
    cpl                                           ; $656d: $2f
    ld l, $30                                     ; $656e: $2e $30
    ld b, b                                       ; $6570: $40
    ld b, c                                       ; $6571: $41
    ld [hl], $36                                  ; $6572: $36 $36
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    scf                                           ; $6578: $37
    add hl, sp                                    ; $6579: $39
    jr c, jr_002_65b6                             ; $657a: $38 $3a

    dec sp                                        ; $657c: $3b
    dec a                                         ; $657d: $3d
    inc a                                         ; $657e: $3c
    ld a, $00                                     ; $657f: $3e $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    ld b, e                                       ; $658c: $43
    ld b, l                                       ; $658d: $45
    ld b, h                                       ; $658e: $44
    ld b, [hl]                                    ; $658f: $46
    ld b, e                                       ; $6590: $43
    ld b, l                                       ; $6591: $45
    ld b, h                                       ; $6592: $44
    ld b, [hl]                                    ; $6593: $46
    ld b, e                                       ; $6594: $43
    ld b, l                                       ; $6595: $45
    ld b, h                                       ; $6596: $44
    ld b, [hl]                                    ; $6597: $46
    ld c, a                                       ; $6598: $4f
    rlca                                          ; $6599: $07
    ld d, b                                       ; $659a: $50
    ld [$3f3f], sp                                ; $659b: $08 $3f $3f
    ccf                                           ; $659e: $3f
    ccf                                           ; $659f: $3f
    ccf                                           ; $65a0: $3f
    ccf                                           ; $65a1: $3f
    ccf                                           ; $65a2: $3f
    ccf                                           ; $65a3: $3f
    ld d, c                                       ; $65a4: $51
    ld b, d                                       ; $65a5: $42
    ccf                                           ; $65a6: $3f
    ccf                                           ; $65a7: $3f
    ld d, d                                       ; $65a8: $52
    ld d, h                                       ; $65a9: $54
    ld d, e                                       ; $65aa: $53
    ld d, l                                       ; $65ab: $55
    ld b, b                                       ; $65ac: $40
    ld b, c                                       ; $65ad: $41
    ld [hl], $36                                  ; $65ae: $36 $36
    ld [hl], $36                                  ; $65b0: $36 $36
    ld [hl], $36                                  ; $65b2: $36 $36
    nop                                           ; $65b4: $00
    nop                                           ; $65b5: $00

jr_002_65b6:
    nop                                           ; $65b6: $00
    nop                                           ; $65b7: $00
    ld d, [hl]                                    ; $65b8: $56
    ld e, b                                       ; $65b9: $58
    ld d, a                                       ; $65ba: $57
    ld e, c                                       ; $65bb: $59
    ld e, a                                       ; $65bc: $5f
    ld e, a                                       ; $65bd: $5f
    ld e, a                                       ; $65be: $5f
    ld e, a                                       ; $65bf: $5f
    ld b, h                                       ; $65c0: $44
    ld b, [hl]                                    ; $65c1: $46
    ld b, l                                       ; $65c2: $45
    ld b, a                                       ; $65c3: $47
    ld [hl], $36                                  ; $65c4: $36 $36
    ld [hl], $36                                  ; $65c6: $36 $36
    ld c, e                                       ; $65c8: $4b
    ld c, l                                       ; $65c9: $4d
    ld c, h                                       ; $65ca: $4c
    ld c, [hl]                                    ; $65cb: $4e
    ld b, a                                       ; $65cc: $47
    ld c, c                                       ; $65cd: $49
    ld c, b                                       ; $65ce: $48
    ld c, d                                       ; $65cf: $4a
    ld sp, $324d                                  ; $65d0: $31 $4d $32
    ld c, [hl]                                    ; $65d3: $4e
    ld c, e                                       ; $65d4: $4b
    inc sp                                        ; $65d5: $33
    ld c, h                                       ; $65d6: $4c
    inc [hl]                                      ; $65d7: $34
    ld b, a                                       ; $65d8: $47
    ld c, c                                       ; $65d9: $49
    ld [hl-], a                                   ; $65da: $32
    inc [hl]                                      ; $65db: $34
    ld sp, $4833                                  ; $65dc: $31 $33 $48
    ld c, d                                       ; $65df: $4a
    dec [hl]                                      ; $65e0: $35
    dec [hl]                                      ; $65e1: $35
    dec [hl]                                      ; $65e2: $35
    dec [hl]                                      ; $65e3: $35
    ld bc, $0203                                  ; $65e4: $01 $03 $02
    inc b                                         ; $65e7: $04
    add hl, bc                                    ; $65e8: $09
    dec bc                                        ; $65e9: $0b
    ld a, [bc]                                    ; $65ea: $0a
    inc c                                         ; $65eb: $0c
    dec d                                         ; $65ec: $15
    rla                                           ; $65ed: $17
    ld d, $18                                     ; $65ee: $16 $18
    dec e                                         ; $65f0: $1d
    rra                                           ; $65f1: $1f
    ld e, $20                                     ; $65f2: $1e $20
    dec b                                         ; $65f4: $05
    rlca                                          ; $65f5: $07
    ld b, $28                                     ; $65f6: $06 $28
    dec c                                         ; $65f8: $0d
    rrca                                          ; $65f9: $0f
    ld c, $10                                     ; $65fa: $0e $10
    add hl, de                                    ; $65fc: $19
    dec de                                        ; $65fd: $1b
    ld a, [de]                                    ; $65fe: $1a
    inc e                                         ; $65ff: $1c
    ld de, $1213                                  ; $6600: $11 $13 $12
    inc d                                         ; $6603: $14
    ld sp, $3233                                  ; $6604: $31 $33 $32
    inc [hl]                                      ; $6607: $34
    ld hl, $2223                                  ; $6608: $21 $23 $22
    inc h                                         ; $660b: $24
    add hl, hl                                    ; $660c: $29
    dec hl                                        ; $660d: $2b
    ld a, [hl+]                                   ; $660e: $2a
    inc l                                         ; $660f: $2c
    dec h                                         ; $6610: $25
    daa                                           ; $6611: $27
    ld h, $28                                     ; $6612: $26 $28
    dec l                                         ; $6614: $2d
    cpl                                           ; $6615: $2f
    ld l, $30                                     ; $6616: $2e $30
    ld d, d                                       ; $6618: $52
    ld d, e                                       ; $6619: $53
    ld [hl], $36                                  ; $661a: $36 $36
    nop                                           ; $661c: $00
    nop                                           ; $661d: $00
    nop                                           ; $661e: $00
    nop                                           ; $661f: $00
    scf                                           ; $6620: $37
    add hl, sp                                    ; $6621: $39
    jr c, jr_002_665e                             ; $6622: $38 $3a

    dec sp                                        ; $6624: $3b
    dec a                                         ; $6625: $3d
    inc a                                         ; $6626: $3c
    ld a, $00                                     ; $6627: $3e $00
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    nop                                           ; $662b: $00
    nop                                           ; $662c: $00
    nop                                           ; $662d: $00
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    ld b, h                                       ; $6634: $44
    ld b, [hl]                                    ; $6635: $46
    ld b, l                                       ; $6636: $45
    ld b, a                                       ; $6637: $47
    ld b, h                                       ; $6638: $44
    ld b, [hl]                                    ; $6639: $46
    ld b, l                                       ; $663a: $45
    ld b, a                                       ; $663b: $47
    ld b, h                                       ; $663c: $44
    ld b, [hl]                                    ; $663d: $46
    ld b, l                                       ; $663e: $45
    ld b, a                                       ; $663f: $47
    ld d, b                                       ; $6640: $50
    rlca                                          ; $6641: $07
    ld d, c                                       ; $6642: $51
    jr z, jr_002_6684                             ; $6643: $28 $3f

    ld b, b                                       ; $6645: $40
    ld b, b                                       ; $6646: $40
    ccf                                           ; $6647: $3f
    ld b, b                                       ; $6648: $40
    ld b, b                                       ; $6649: $40
    ld b, b                                       ; $664a: $40
    ccf                                           ; $664b: $3f
    ld b, c                                       ; $664c: $41
    ld b, d                                       ; $664d: $42
    ccf                                           ; $664e: $3f
    ld b, b                                       ; $664f: $40
    ld d, h                                       ; $6650: $54
    ld d, [hl]                                    ; $6651: $56
    ld d, l                                       ; $6652: $55
    ld d, a                                       ; $6653: $57
    ld d, d                                       ; $6654: $52
    ld d, e                                       ; $6655: $53
    ld [hl], $36                                  ; $6656: $36 $36
    ld [hl], $36                                  ; $6658: $36 $36
    ld [hl], $36                                  ; $665a: $36 $36
    nop                                           ; $665c: $00
    nop                                           ; $665d: $00

jr_002_665e:
    nop                                           ; $665e: $00
    nop                                           ; $665f: $00
    ld e, b                                       ; $6660: $58
    ld e, d                                       ; $6661: $5a
    ld e, c                                       ; $6662: $59
    ld e, e                                       ; $6663: $5b
    ld e, a                                       ; $6664: $5f
    ld e, a                                       ; $6665: $5f
    ld e, a                                       ; $6666: $5f
    ld e, a                                       ; $6667: $5f
    ld c, b                                       ; $6668: $48
    ld c, d                                       ; $6669: $4a
    ld c, c                                       ; $666a: $49
    ld c, e                                       ; $666b: $4b
    ld [hl], $36                                  ; $666c: $36 $36
    ld [hl], $36                                  ; $666e: $36 $36
    ld sp, $5c5d                                  ; $6670: $31 $5d $5c
    inc [hl]                                      ; $6673: $34
    ld sp, $5c5d                                  ; $6674: $31 $5d $5c
    inc [hl]                                      ; $6677: $34
    ld sp, $5c5d                                  ; $6678: $31 $5d $5c
    inc [hl]                                      ; $667b: $34
    ld sp, $5c5d                                  ; $667c: $31 $5d $5c
    inc [hl]                                      ; $667f: $34
    ld sp, $5c5d                                  ; $6680: $31 $5d $5c
    inc [hl]                                      ; $6683: $34

jr_002_6684:
    ld sp, $5c5d                                  ; $6684: $31 $5d $5c
    inc [hl]                                      ; $6687: $34
    ld h, b                                       ; $6688: $60
    ld h, d                                       ; $6689: $62
    ld h, c                                       ; $668a: $61
    ld h, e                                       ; $668b: $63
    ld h, h                                       ; $668c: $64
    ld h, [hl]                                    ; $668d: $66
    ld h, l                                       ; $668e: $65
    ld h, a                                       ; $668f: $67
    ld l, b                                       ; $6690: $68
    ld l, d                                       ; $6691: $6a
    ld l, c                                       ; $6692: $69
    ld l, e                                       ; $6693: $6b
    ld l, h                                       ; $6694: $6c
    ld l, [hl]                                    ; $6695: $6e
    ld l, l                                       ; $6696: $6d
    ld l, a                                       ; $6697: $6f
    ld [hl], b                                    ; $6698: $70
    ld [hl], d                                    ; $6699: $72
    ld [hl], c                                    ; $669a: $71
    ld [hl], e                                    ; $669b: $73
    ld [hl], h                                    ; $669c: $74
    halt                                          ; $669d: $76
    ld [hl], l                                    ; $669e: $75
    ld [hl], a                                    ; $669f: $77
    ld a, b                                       ; $66a0: $78
    ld a, d                                       ; $66a1: $7a
    ld a, c                                       ; $66a2: $79
    ld a, e                                       ; $66a3: $7b
    ld c, h                                       ; $66a4: $4c
    ld c, [hl]                                    ; $66a5: $4e
    ld c, l                                       ; $66a6: $4d
    ld c, a                                       ; $66a7: $4f
    ld a, h                                       ; $66a8: $7c
    ld a, [hl]                                    ; $66a9: $7e
    ld a, l                                       ; $66aa: $7d
    ld a, a                                       ; $66ab: $7f
    nop                                           ; $66ac: $00
    jr jr_002_66b0                                ; $66ad: $18 $01

    rla                                           ; $66af: $17

jr_002_66b0:
    ld [bc], a                                    ; $66b0: $02
    rla                                           ; $66b1: $17
    inc bc                                        ; $66b2: $03
    rla                                           ; $66b3: $17
    inc b                                         ; $66b4: $04
    rla                                           ; $66b5: $17
    ld b, $17                                     ; $66b6: $06 $17
    rlca                                          ; $66b8: $07
    ld d, $08                                     ; $66b9: $16 $08
    ld d, $09                                     ; $66bb: $16 $09
    dec d                                         ; $66bd: $15
    ld a, [bc]                                    ; $66be: $0a
    dec d                                         ; $66bf: $15
    inc c                                         ; $66c0: $0c
    inc d                                         ; $66c1: $14
    dec c                                         ; $66c2: $0d
    inc d                                         ; $66c3: $14
    ld c, $13                                     ; $66c4: $0e $13
    rrca                                          ; $66c6: $0f
    ld [de], a                                    ; $66c7: $12
    db $10                                        ; $66c8: $10
    ld de, $1010                                  ; $66c9: $11 $10 $10
    ld de, $1210                                  ; $66cc: $11 $10 $12
    rrca                                          ; $66cf: $0f
    inc de                                        ; $66d0: $13
    ld c, $14                                     ; $66d1: $0e $14
    dec c                                         ; $66d3: $0d
    inc d                                         ; $66d4: $14
    inc c                                         ; $66d5: $0c
    dec d                                         ; $66d6: $15
    ld a, [bc]                                    ; $66d7: $0a
    dec d                                         ; $66d8: $15
    add hl, bc                                    ; $66d9: $09
    ld d, $08                                     ; $66da: $16 $08
    ld d, $07                                     ; $66dc: $16 $07
    rla                                           ; $66de: $17
    ld b, $17                                     ; $66df: $06 $17
    inc b                                         ; $66e1: $04
    rla                                           ; $66e2: $17
    inc bc                                        ; $66e3: $03
    rla                                           ; $66e4: $17
    ld [bc], a                                    ; $66e5: $02
    rla                                           ; $66e6: $17
    ld bc, $1000                                  ; $66e7: $01 $00 $10
    ld de, $0201                                  ; $66ea: $11 $01 $02
    ld hl, $2012                                  ; $66ed: $21 $12 $20
    jr nc, jr_002_6723                            ; $66f0: $30 $31

    ld [hl+], a                                   ; $66f2: $22
    inc de                                        ; $66f3: $13
    inc bc                                        ; $66f4: $03
    ld b, b                                       ; $66f5: $40
    ld b, c                                       ; $66f6: $41
    ld [hl-], a                                   ; $66f7: $32
    inc hl                                        ; $66f8: $23
    ld b, d                                       ; $66f9: $42
    inc sp                                        ; $66fa: $33
    inc h                                         ; $66fb: $24
    inc d                                         ; $66fc: $14
    inc b                                         ; $66fd: $04
    ld d, b                                       ; $66fe: $50
    ld d, c                                       ; $66ff: $51
    ld d, d                                       ; $6700: $52
    ld b, e                                       ; $6701: $43
    inc [hl]                                      ; $6702: $34
    dec h                                         ; $6703: $25
    dec d                                         ; $6704: $15
    dec b                                         ; $6705: $05
    ld h, b                                       ; $6706: $60
    ld h, c                                       ; $6707: $61
    ld h, d                                       ; $6708: $62
    ld d, e                                       ; $6709: $53
    ld d, h                                       ; $670a: $54
    ld b, h                                       ; $670b: $44
    ld b, l                                       ; $670c: $45
    dec [hl]                                      ; $670d: $35
    ld h, $16                                     ; $670e: $26 $16
    ld b, $70                                     ; $6710: $06 $70
    ld [hl], c                                    ; $6712: $71
    ld [hl], d                                    ; $6713: $72
    ld h, e                                       ; $6714: $63
    ld h, h                                       ; $6715: $64
    ld d, l                                       ; $6716: $55
    ld b, [hl]                                    ; $6717: $46
    ld [hl], $27                                  ; $6718: $36 $27
    rla                                           ; $671a: $17
    rlca                                          ; $671b: $07
    add b                                         ; $671c: $80
    add c                                         ; $671d: $81
    add d                                         ; $671e: $82
    ld [hl], e                                    ; $671f: $73
    ld [hl], h                                    ; $6720: $74
    ld h, l                                       ; $6721: $65
    ld h, [hl]                                    ; $6722: $66

jr_002_6723:
    ld d, [hl]                                    ; $6723: $56
    ld b, a                                       ; $6724: $47
    scf                                           ; $6725: $37
    jr z, jr_002_6740                             ; $6726: $28 $18

    ld [$9190], sp                                ; $6728: $08 $90 $91
    sub d                                         ; $672b: $92
    sub e                                         ; $672c: $93
    add e                                         ; $672d: $83
    add h                                         ; $672e: $84
    add l                                         ; $672f: $85
    ld [hl], l                                    ; $6730: $75
    halt                                          ; $6731: $76
    ld h, a                                       ; $6732: $67
    ld d, a                                       ; $6733: $57
    ld e, b                                       ; $6734: $58
    ld c, b                                       ; $6735: $48
    jr c, jr_002_6761                             ; $6736: $38 $29

    add hl, de                                    ; $6738: $19
    add hl, bc                                    ; $6739: $09
    and b                                         ; $673a: $a0
    and c                                         ; $673b: $a1
    and d                                         ; $673c: $a2
    and e                                         ; $673d: $a3
    sub h                                         ; $673e: $94
    sub l                                         ; $673f: $95

jr_002_6740:
    add [hl]                                      ; $6740: $86
    ld [hl], a                                    ; $6741: $77
    ld l, b                                       ; $6742: $68
    ld e, c                                       ; $6743: $59
    ld c, c                                       ; $6744: $49
    add hl, sp                                    ; $6745: $39
    ld a, [hl-]                                   ; $6746: $3a
    ld a, [hl+]                                   ; $6747: $2a
    ld a, [de]                                    ; $6748: $1a
    ld a, [bc]                                    ; $6749: $0a
    sub [hl]                                      ; $674a: $96
    add a                                         ; $674b: $87
    ld a, b                                       ; $674c: $78
    sub a                                         ; $674d: $97
    adc b                                         ; $674e: $88
    sbc b                                         ; $674f: $98
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    ld bc, $0001                                  ; $6752: $01 $01 $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    ld bc, $0000                                  ; $675a: $01 $00 $00
    ld bc, $0000                                  ; $675d: $01 $00 $00
    nop                                           ; $6760: $00

jr_002_6761:
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    nop                                           ; $676d: $00
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00
    ld [bc], a                                    ; $6771: $02
    ld [bc], a                                    ; $6772: $02
    ld bc, $0000                                  ; $6773: $01 $00 $00
    ld bc, $0100                                  ; $6776: $01 $00 $01
    nop                                           ; $6779: $00
    nop                                           ; $677a: $00
    nop                                           ; $677b: $00
    nop                                           ; $677c: $00
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    ld bc, $0100                                  ; $6780: $01 $00 $01
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678a: $00
    nop                                           ; $678b: $00
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    nop                                           ; $678e: $00
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    ld [bc], a                                    ; $6791: $02
    ld [bc], a                                    ; $6792: $02
    ld bc, $0000                                  ; $6793: $01 $00 $00
    ld bc, $0100                                  ; $6796: $01 $00 $01
    ld bc, $0001                                  ; $6799: $01 $01 $00
    nop                                           ; $679c: $00
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    ld bc, $0100                                  ; $67a0: $01 $00 $01
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    nop                                           ; $67a5: $00
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    nop                                           ; $67a8: $00
    nop                                           ; $67a9: $00
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    nop                                           ; $67b0: $00
    ld [bc], a                                    ; $67b1: $02
    ld [bc], a                                    ; $67b2: $02
    ld bc, $0000                                  ; $67b3: $01 $00 $00
    ld bc, $0100                                  ; $67b6: $01 $00 $01
    ld bc, $0001                                  ; $67b9: $01 $01 $00
    nop                                           ; $67bc: $00
    ld bc, $0000                                  ; $67bd: $01 $00 $00
    ld bc, $0100                                  ; $67c0: $01 $00 $01
    nop                                           ; $67c3: $00
    nop                                           ; $67c4: $00
    nop                                           ; $67c5: $00
    nop                                           ; $67c6: $00
    nop                                           ; $67c7: $00
    nop                                           ; $67c8: $00
    nop                                           ; $67c9: $00
    nop                                           ; $67ca: $00
    nop                                           ; $67cb: $00
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    ld [bc], a                                    ; $67d1: $02
    ld [bc], a                                    ; $67d2: $02
    ld [bc], a                                    ; $67d3: $02
    nop                                           ; $67d4: $00
    ld bc, $0001                                  ; $67d5: $01 $01 $00
    ld [bc], a                                    ; $67d8: $02
    ld [bc], a                                    ; $67d9: $02
    ld bc, $0100                                  ; $67da: $01 $00 $01
    ld [bc], a                                    ; $67dd: $02
    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    ld bc, $0100                                  ; $67e0: $01 $00 $01
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    nop                                           ; $67ed: $00
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    ld [bc], a                                    ; $67f1: $02
    ld [bc], a                                    ; $67f2: $02
    ld bc, $0200                                  ; $67f3: $01 $00 $02
    ld bc, $0200                                  ; $67f6: $01 $00 $02
    ld [bc], a                                    ; $67f9: $02
    ld bc, $0200                                  ; $67fa: $01 $00 $02
    ld [bc], a                                    ; $67fd: $02
    ld bc, $0100                                  ; $67fe: $01 $00 $01
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680a: $00
    nop                                           ; $680b: $00
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    ld [bc], a                                    ; $6811: $02
    ld [bc], a                                    ; $6812: $02
    ld bc, $0202                                  ; $6813: $01 $02 $02
    ld bc, $0200                                  ; $6816: $01 $00 $02
    ld [bc], a                                    ; $6819: $02
    ld [bc], a                                    ; $681a: $02
    nop                                           ; $681b: $00
    ld [bc], a                                    ; $681c: $02
    ld [bc], a                                    ; $681d: $02
    ld bc, $0200                                  ; $681e: $01 $00 $02
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682a: $00
    nop                                           ; $682b: $00
    nop                                           ; $682c: $00
    nop                                           ; $682d: $00
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    ld [bc], a                                    ; $6831: $02
    ld [bc], a                                    ; $6832: $02
    ld bc, $0202                                  ; $6833: $01 $02 $02
    ld bc, $0100                                  ; $6836: $01 $00 $01
    ld [bc], a                                    ; $6839: $02
    ld [bc], a                                    ; $683a: $02
    nop                                           ; $683b: $00
    ld [bc], a                                    ; $683c: $02
    ld [bc], a                                    ; $683d: $02
    ld bc, $0200                                  ; $683e: $01 $00 $02
    ld bc, $0000                                  ; $6841: $01 $00 $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    nop                                           ; $684c: $00
    nop                                           ; $684d: $00
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    nop                                           ; $6850: $00
    ld [bc], a                                    ; $6851: $02
    ld [bc], a                                    ; $6852: $02
    ld bc, $0202                                  ; $6853: $01 $02 $02
    ld bc, $0100                                  ; $6856: $01 $00 $01
    ld [bc], a                                    ; $6859: $02
    ld [bc], a                                    ; $685a: $02
    nop                                           ; $685b: $00
    ld [bc], a                                    ; $685c: $02
    ld [bc], a                                    ; $685d: $02
    ld bc, $0300                                  ; $685e: $01 $00 $03
    ld bc, $0100                                  ; $6861: $01 $00 $01
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    nop                                           ; $686f: $00
    nop                                           ; $6870: $00
    ld [bc], a                                    ; $6871: $02
    ld [bc], a                                    ; $6872: $02
    ld bc, $0100                                  ; $6873: $01 $00 $01
    ld bc, $0000                                  ; $6876: $01 $00 $00
    nop                                           ; $6879: $00
    ld [bc], a                                    ; $687a: $02
    nop                                           ; $687b: $00
    ld [bc], a                                    ; $687c: $02
    nop                                           ; $687d: $00
    nop                                           ; $687e: $00
    nop                                           ; $687f: $00
    ld bc, $0100                                  ; $6880: $01 $00 $01
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    nop                                           ; $688d: $00
    nop                                           ; $688e: $00
    nop                                           ; $688f: $00
    nop                                           ; $6890: $00
    ld [bc], a                                    ; $6891: $02
    ld [bc], a                                    ; $6892: $02
    ld bc, $0100                                  ; $6893: $01 $00 $01
    ld bc, $0000                                  ; $6896: $01 $00 $00
    nop                                           ; $6899: $00
    ld [bc], a                                    ; $689a: $02
    nop                                           ; $689b: $00
    ld [bc], a                                    ; $689c: $02
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    ld bc, $0100                                  ; $68a0: $01 $00 $01
    nop                                           ; $68a3: $00
    nop                                           ; $68a4: $00
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    ld [bc], a                                    ; $68b1: $02
    ld [bc], a                                    ; $68b2: $02
    ld [bc], a                                    ; $68b3: $02
    nop                                           ; $68b4: $00
    ld [bc], a                                    ; $68b5: $02
    ld bc, $0100                                  ; $68b6: $01 $00 $01
    ld bc, $0002                                  ; $68b9: $01 $02 $00
    ld [bc], a                                    ; $68bc: $02
    ld bc, $0000                                  ; $68bd: $01 $00 $00
    ld [bc], a                                    ; $68c0: $02
    nop                                           ; $68c1: $00
    ld bc, $0000                                  ; $68c2: $01 $00 $00
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    nop                                           ; $68cc: $00
    nop                                           ; $68cd: $00
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    nop                                           ; $68d0: $00
    ld [bc], a                                    ; $68d1: $02
    ld [bc], a                                    ; $68d2: $02
    ld [bc], a                                    ; $68d3: $02
    ld bc, $0103                                  ; $68d4: $01 $03 $01
    nop                                           ; $68d7: $00
    ld bc, $0201                                  ; $68d8: $01 $01 $02
    ld bc, $0203                                  ; $68db: $01 $03 $02
    nop                                           ; $68de: $00
    nop                                           ; $68df: $00
    ld [bc], a                                    ; $68e0: $02
    nop                                           ; $68e1: $00
    ld bc, $0000                                  ; $68e2: $01 $00 $00
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    nop                                           ; $68ec: $00
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    ld [bc], a                                    ; $68f1: $02
    ld [bc], a                                    ; $68f2: $02
    ld bc, $0301                                  ; $68f3: $01 $01 $03
    ld bc, $0100                                  ; $68f6: $01 $00 $01
    ld bc, $0102                                  ; $68f9: $01 $02 $01
    inc bc                                        ; $68fc: $03
    ld [bc], a                                    ; $68fd: $02
    ld bc, $0200                                  ; $68fe: $01 $00 $02
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    nop                                           ; $690e: $00
    nop                                           ; $690f: $00
    nop                                           ; $6910: $00
    ld [bc], a                                    ; $6911: $02
    ld [bc], a                                    ; $6912: $02
    ld bc, $0302                                  ; $6913: $01 $02 $03
    ld bc, $0100                                  ; $6916: $01 $00 $01
    ld bc, $0103                                  ; $6919: $01 $03 $01
    inc bc                                        ; $691c: $03
    ld [bc], a                                    ; $691d: $02
    ld bc, $0200                                  ; $691e: $01 $00 $02
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    ld [bc], a                                    ; $6931: $02
    ld [bc], a                                    ; $6932: $02
    ld bc, $0302                                  ; $6933: $01 $02 $03
    ld bc, $0100                                  ; $6936: $01 $00 $01
    ld bc, $0103                                  ; $6939: $01 $03 $01
    inc bc                                        ; $693c: $03
    ld [bc], a                                    ; $693d: $02
    ld bc, $0200                                  ; $693e: $01 $00 $02
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    ld [bc], a                                    ; $6951: $02
    ld [bc], a                                    ; $6952: $02
    ld [bc], a                                    ; $6953: $02
    ld [bc], a                                    ; $6954: $02
    inc bc                                        ; $6955: $03
    ld bc, $0100                                  ; $6956: $01 $00 $01
    ld [bc], a                                    ; $6959: $02
    inc bc                                        ; $695a: $03
    ld bc, $0203                                  ; $695b: $01 $03 $02
    ld bc, $0200                                  ; $695e: $01 $00 $02
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    ld bc, $0000                                  ; $6963: $01 $00 $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    ld bc, $0001                                  ; $6971: $01 $01 $00
    ld bc, $0100                                  ; $6974: $01 $00 $01
    nop                                           ; $6977: $00
    ld bc, $0100                                  ; $6978: $01 $00 $01
    ld bc, $0001                                  ; $697b: $01 $01 $00
    nop                                           ; $697e: $00
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    ld bc, $0000                                  ; $6982: $01 $00 $00
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    nop                                           ; $698d: $00
    nop                                           ; $698e: $00
    nop                                           ; $698f: $00
    nop                                           ; $6990: $00
    ld [bc], a                                    ; $6991: $02
    ld [bc], a                                    ; $6992: $02
    ld bc, $0002                                  ; $6993: $01 $02 $00
    ld bc, $0100                                  ; $6996: $01 $00 $01
    nop                                           ; $6999: $00
    ld bc, $0201                                  ; $699a: $01 $01 $02
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    nop                                           ; $699f: $00
    nop                                           ; $69a0: $00
    nop                                           ; $69a1: $00
    ld bc, $0000                                  ; $69a2: $01 $00 $00
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    nop                                           ; $69a8: $00
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    nop                                           ; $69ac: $00
    nop                                           ; $69ad: $00
    nop                                           ; $69ae: $00
    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    ld [bc], a                                    ; $69b1: $02
    ld [bc], a                                    ; $69b2: $02
    ld [bc], a                                    ; $69b3: $02
    ld [bc], a                                    ; $69b4: $02
    nop                                           ; $69b5: $00
    ld bc, $0100                                  ; $69b6: $01 $00 $01
    nop                                           ; $69b9: $00
    ld [bc], a                                    ; $69ba: $02
    ld bc, $0102                                  ; $69bb: $01 $02 $01
    nop                                           ; $69be: $00
    nop                                           ; $69bf: $00
    nop                                           ; $69c0: $00
    nop                                           ; $69c1: $00
    ld bc, $0000                                  ; $69c2: $01 $00 $00
    nop                                           ; $69c5: $00
    nop                                           ; $69c6: $00
    nop                                           ; $69c7: $00
    nop                                           ; $69c8: $00
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    nop                                           ; $69cc: $00
    nop                                           ; $69cd: $00
    nop                                           ; $69ce: $00
    nop                                           ; $69cf: $00
    nop                                           ; $69d0: $00
    ld [bc], a                                    ; $69d1: $02
    ld [bc], a                                    ; $69d2: $02
    ld [bc], a                                    ; $69d3: $02
    ld [bc], a                                    ; $69d4: $02
    ld [bc], a                                    ; $69d5: $02
    ld bc, $0100                                  ; $69d6: $01 $00 $01
    nop                                           ; $69d9: $00
    ld [bc], a                                    ; $69da: $02
    ld bc, $0102                                  ; $69db: $01 $02 $01
    ld bc, $0100                                  ; $69de: $01 $00 $01
    nop                                           ; $69e1: $00
    ld bc, $0001                                  ; $69e2: $01 $01 $00
    nop                                           ; $69e5: $00
    nop                                           ; $69e6: $00
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    nop                                           ; $69ec: $00
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    ld [bc], a                                    ; $69f1: $02
    ld [bc], a                                    ; $69f2: $02
    ld [bc], a                                    ; $69f3: $02
    ld [bc], a                                    ; $69f4: $02
    ld [bc], a                                    ; $69f5: $02
    ld bc, $0100                                  ; $69f6: $01 $00 $01
    nop                                           ; $69f9: $00
    ld [bc], a                                    ; $69fa: $02
    ld bc, $0202                                  ; $69fb: $01 $02 $02
    ld bc, $0100                                  ; $69fe: $01 $00 $01
    nop                                           ; $6a01: $00
    ld bc, $0001                                  ; $6a02: $01 $01 $00
    nop                                           ; $6a05: $00
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    nop                                           ; $6a08: $00
    nop                                           ; $6a09: $00
    nop                                           ; $6a0a: $00
    nop                                           ; $6a0b: $00
    nop                                           ; $6a0c: $00
    nop                                           ; $6a0d: $00
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    ld [bc], a                                    ; $6a11: $02
    ld [bc], a                                    ; $6a12: $02
    ld [bc], a                                    ; $6a13: $02
    ld [bc], a                                    ; $6a14: $02
    ld [bc], a                                    ; $6a15: $02
    ld bc, $0100                                  ; $6a16: $01 $00 $01
    nop                                           ; $6a19: $00
    ld [bc], a                                    ; $6a1a: $02
    nop                                           ; $6a1b: $00
    ld [bc], a                                    ; $6a1c: $02
    ld [bc], a                                    ; $6a1d: $02
    ld bc, $0200                                  ; $6a1e: $01 $00 $02
    nop                                           ; $6a21: $00
    nop                                           ; $6a22: $00
    ld bc, $0000                                  ; $6a23: $01 $00 $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    nop                                           ; $6a2d: $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    nop                                           ; $6a30: $00
    ld [bc], a                                    ; $6a31: $02
    ld [bc], a                                    ; $6a32: $02
    ld [bc], a                                    ; $6a33: $02
    ld [bc], a                                    ; $6a34: $02
    ld [bc], a                                    ; $6a35: $02
    ld bc, $0100                                  ; $6a36: $01 $00 $01
    nop                                           ; $6a39: $00
    ld [bc], a                                    ; $6a3a: $02
    nop                                           ; $6a3b: $00
    ld [bc], a                                    ; $6a3c: $02
    ld [bc], a                                    ; $6a3d: $02
    ld bc, $0300                                  ; $6a3e: $01 $00 $03
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    ld [bc], a                                    ; $6a43: $02
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    nop                                           ; $6a4c: $00
    nop                                           ; $6a4d: $00
    nop                                           ; $6a4e: $00
    nop                                           ; $6a4f: $00
    nop                                           ; $6a50: $00
    ld [bc], a                                    ; $6a51: $02
    ld [bc], a                                    ; $6a52: $02
    ld [bc], a                                    ; $6a53: $02
    ld [bc], a                                    ; $6a54: $02
    ld [bc], a                                    ; $6a55: $02
    ld bc, $0100                                  ; $6a56: $01 $00 $01
    nop                                           ; $6a59: $00
    ld [bc], a                                    ; $6a5a: $02
    nop                                           ; $6a5b: $00
    ld [bc], a                                    ; $6a5c: $02
    ld [bc], a                                    ; $6a5d: $02
    ld bc, $0300                                  ; $6a5e: $01 $00 $03
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    ld [bc], a                                    ; $6a63: $02
    nop                                           ; $6a64: $00
    nop                                           ; $6a65: $00
    nop                                           ; $6a66: $00
    nop                                           ; $6a67: $00
    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    nop                                           ; $6a70: $00
    ld [bc], a                                    ; $6a71: $02
    ld [bc], a                                    ; $6a72: $02
    ld bc, $0001                                  ; $6a73: $01 $01 $00
    ld bc, $0100                                  ; $6a76: $01 $00 $01
    nop                                           ; $6a79: $00
    ld [bc], a                                    ; $6a7a: $02
    ld bc, $0002                                  ; $6a7b: $01 $02 $00
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    ld bc, $0100                                  ; $6a80: $01 $00 $01
    nop                                           ; $6a83: $00
    nop                                           ; $6a84: $00
    nop                                           ; $6a85: $00
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    nop                                           ; $6a90: $00
    ld [bc], a                                    ; $6a91: $02
    ld [bc], a                                    ; $6a92: $02
    ld bc, $0001                                  ; $6a93: $01 $01 $00
    ld bc, $0100                                  ; $6a96: $01 $00 $01
    nop                                           ; $6a99: $00
    ld [bc], a                                    ; $6a9a: $02
    ld bc, $0102                                  ; $6a9b: $01 $02 $01
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    ld bc, $0100                                  ; $6aa0: $01 $00 $01
    nop                                           ; $6aa3: $00
    nop                                           ; $6aa4: $00
    nop                                           ; $6aa5: $00
    nop                                           ; $6aa6: $00
    nop                                           ; $6aa7: $00
    nop                                           ; $6aa8: $00
    nop                                           ; $6aa9: $00
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    nop                                           ; $6aac: $00
    nop                                           ; $6aad: $00

Call_002_6aae:
    nop                                           ; $6aae: $00
    nop                                           ; $6aaf: $00
    nop                                           ; $6ab0: $00
    ld [bc], a                                    ; $6ab1: $02
    ld [bc], a                                    ; $6ab2: $02
    ld bc, $0201                                  ; $6ab3: $01 $01 $02
    ld bc, $0100                                  ; $6ab6: $01 $00 $01
    nop                                           ; $6ab9: $00
    ld [bc], a                                    ; $6aba: $02
    ld bc, $0202                                  ; $6abb: $01 $02 $02
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    ld bc, $0100                                  ; $6ac0: $01 $00 $01
    ld bc, $0000                                  ; $6ac3: $01 $00 $00
    nop                                           ; $6ac6: $00
    nop                                           ; $6ac7: $00
    nop                                           ; $6ac8: $00
    nop                                           ; $6ac9: $00
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    nop                                           ; $6acc: $00
    nop                                           ; $6acd: $00
    nop                                           ; $6ace: $00
    nop                                           ; $6acf: $00
    nop                                           ; $6ad0: $00
    ld [bc], a                                    ; $6ad1: $02
    ld [bc], a                                    ; $6ad2: $02
    ld bc, $0201                                  ; $6ad3: $01 $01 $02
    ld bc, $0000                                  ; $6ad6: $01 $00 $00
    ld bc, $0102                                  ; $6ad9: $01 $02 $01
    ld [bc], a                                    ; $6adc: $02
    ld [bc], a                                    ; $6add: $02
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    ld bc, $0100                                  ; $6ae0: $01 $00 $01
    ld bc, $0000                                  ; $6ae3: $01 $00 $00
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    nop                                           ; $6af0: $00
    ld [bc], a                                    ; $6af1: $02
    ld [bc], a                                    ; $6af2: $02
    ld bc, $0201                                  ; $6af3: $01 $01 $02
    ld bc, $0000                                  ; $6af6: $01 $00 $00
    ld bc, $0103                                  ; $6af9: $01 $03 $01
    ld [bc], a                                    ; $6afc: $02
    ld [bc], a                                    ; $6afd: $02
    ld bc, $0100                                  ; $6afe: $01 $00 $01
    nop                                           ; $6b01: $00
    ld bc, $0001                                  ; $6b02: $01 $01 $00
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    nop                                           ; $6b08: $00
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    nop                                           ; $6b0b: $00
    nop                                           ; $6b0c: $00
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    nop                                           ; $6b0f: $00
    nop                                           ; $6b10: $00
    ld [bc], a                                    ; $6b11: $02
    ld [bc], a                                    ; $6b12: $02
    ld bc, $0201                                  ; $6b13: $01 $01 $02
    ld bc, $0000                                  ; $6b16: $01 $00 $00
    ld bc, $0003                                  ; $6b19: $01 $03 $00
    ld [bc], a                                    ; $6b1c: $02
    ld [bc], a                                    ; $6b1d: $02
    ld bc, $0100                                  ; $6b1e: $01 $00 $01
    nop                                           ; $6b21: $00
    nop                                           ; $6b22: $00
    ld bc, $0000                                  ; $6b23: $01 $00 $00
    nop                                           ; $6b26: $00
    nop                                           ; $6b27: $00
    nop                                           ; $6b28: $00
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00
    nop                                           ; $6b2d: $00
    nop                                           ; $6b2e: $00
    nop                                           ; $6b2f: $00
    nop                                           ; $6b30: $00
    ld [bc], a                                    ; $6b31: $02
    ld [bc], a                                    ; $6b32: $02
    ld bc, $0201                                  ; $6b33: $01 $01 $02
    ld bc, $0000                                  ; $6b36: $01 $00 $00
    ld bc, $0103                                  ; $6b39: $01 $03 $01
    inc bc                                        ; $6b3c: $03
    ld [bc], a                                    ; $6b3d: $02
    ld bc, $0200                                  ; $6b3e: $01 $00 $02
    nop                                           ; $6b41: $00
    nop                                           ; $6b42: $00
    ld bc, $0000                                  ; $6b43: $01 $00 $00
    nop                                           ; $6b46: $00
    nop                                           ; $6b47: $00
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    nop                                           ; $6b4c: $00
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    nop                                           ; $6b50: $00
    ld [bc], a                                    ; $6b51: $02
    ld [bc], a                                    ; $6b52: $02
    ld bc, $0201                                  ; $6b53: $01 $01 $02
    ld bc, $0000                                  ; $6b56: $01 $00 $00
    ld bc, $0103                                  ; $6b59: $01 $03 $01
    inc bc                                        ; $6b5c: $03
    ld [bc], a                                    ; $6b5d: $02
    ld bc, $0300                                  ; $6b5e: $01 $00 $03
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    ld bc, $0000                                  ; $6b63: $01 $00 $00
    nop                                           ; $6b66: $00
    nop                                           ; $6b67: $00
    nop                                           ; $6b68: $00
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    nop                                           ; $6b6b: $00
    nop                                           ; $6b6c: $00
    nop                                           ; $6b6d: $00
    nop                                           ; $6b6e: $00
    nop                                           ; $6b6f: $00
    nop                                           ; $6b70: $00
    ld [de], a                                    ; $6b71: $12
    ld b, $03                                     ; $6b72: $06 $03
    ld [hl], b                                    ; $6b74: $70
    ld b, b                                       ; $6b75: $40
    ld [$0000], sp                                ; $6b76: $08 $00 $00
    ld d, b                                       ; $6b79: $50
    add hl, bc                                    ; $6b7a: $09
    nop                                           ; $6b7b: $00
    nop                                           ; $6b7c: $00
    ld c, b                                       ; $6b7d: $48
    nop                                           ; $6b7e: $00
    ld c, b                                       ; $6b7f: $48
    nop                                           ; $6b80: $00
    ld c, b                                       ; $6b81: $48
    nop                                           ; $6b82: $00
    ld c, b                                       ; $6b83: $48
    nop                                           ; $6b84: $00
    ld [de], a                                    ; $6b85: $12
    ld b, $00                                     ; $6b86: $06 $00
    jr nc, @+$72                                  ; $6b88: $30 $70

    ld b, b                                       ; $6b8a: $40
    add b                                         ; $6b8b: $80
    nop                                           ; $6b8c: $00
    ld d, b                                       ; $6b8d: $50
    add hl, bc                                    ; $6b8e: $09
    nop                                           ; $6b8f: $00
    nop                                           ; $6b90: $00
    ld c, b                                       ; $6b91: $48
    nop                                           ; $6b92: $00
    ld c, b                                       ; $6b93: $48
    nop                                           ; $6b94: $00
    ld c, b                                       ; $6b95: $48
    nop                                           ; $6b96: $00
    ld c, b                                       ; $6b97: $48
    nop                                           ; $6b98: $00
    ld [de], a                                    ; $6b99: $12
    ld b, $00                                     ; $6b9a: $06 $00
    jr nc, jr_002_6ba5                            ; $6b9c: $30 $07

    nop                                           ; $6b9e: $00
    inc b                                         ; $6b9f: $04
    nop                                           ; $6ba0: $00
    add b                                         ; $6ba1: $80
    nop                                           ; $6ba2: $00
    ld d, b                                       ; $6ba3: $50
    add hl, bc                                    ; $6ba4: $09

jr_002_6ba5:
    ld c, b                                       ; $6ba5: $48
    nop                                           ; $6ba6: $00
    ld c, b                                       ; $6ba7: $48
    nop                                           ; $6ba8: $00
    ld c, b                                       ; $6ba9: $48
    nop                                           ; $6baa: $00
    ld c, b                                       ; $6bab: $48
    nop                                           ; $6bac: $00
    db $10                                        ; $6bad: $10
    ld h, $00                                     ; $6bae: $26 $00
    scf                                           ; $6bb0: $37
    nop                                           ; $6bb1: $00
    inc b                                         ; $6bb2: $04
    ld [$5000], sp                                ; $6bb3: $08 $00 $50
    add hl, bc                                    ; $6bb6: $09
    nop                                           ; $6bb7: $00
    nop                                           ; $6bb8: $00
    ld c, b                                       ; $6bb9: $48
    nop                                           ; $6bba: $00
    ld c, b                                       ; $6bbb: $48
    nop                                           ; $6bbc: $00
    ld c, b                                       ; $6bbd: $48
    nop                                           ; $6bbe: $00
    ld c, b                                       ; $6bbf: $48
    nop                                           ; $6bc0: $00
    ld h, c                                       ; $6bc1: $61
    ld [de], a                                    ; $6bc2: $12
    ld de, $3710                                  ; $6bc3: $11 $10 $37
    ld de, $4811                                  ; $6bc6: $11 $11 $48
    ld de, $1111                                  ; $6bc9: $11 $11 $11
    ld e, c                                       ; $6bcc: $59
    ld de, $1111                                  ; $6bcd: $11 $11 $11
    ld de, $1111                                  ; $6bd0: $11 $11 $11
    ld de, $1600                                  ; $6bd3: $11 $00 $16
    ld [de], a                                    ; $6bd6: $12
    ld de, $3710                                  ; $6bd7: $11 $10 $37
    ld de, $4811                                  ; $6bda: $11 $11 $48
    ld de, $1111                                  ; $6bdd: $11 $11 $11
    ld e, c                                       ; $6be0: $59
    ld de, $1111                                  ; $6be1: $11 $11 $11
    ld de, $1111                                  ; $6be4: $11 $11 $11
    ld de, $1600                                  ; $6be7: $11 $00 $16
    ld de, $1012                                  ; $6bea: $11 $12 $10
    ld sp, $1171                                  ; $6bed: $31 $71 $11
    ld c, b                                       ; $6bf0: $48
    ld de, $1111                                  ; $6bf1: $11 $11 $11
    ld e, c                                       ; $6bf4: $59
    ld de, $1111                                  ; $6bf5: $11 $11 $11
    ld de, $1111                                  ; $6bf8: $11 $11 $11
    ld de, $1100                                  ; $6bfb: $11 $00 $11
    ld hl, $1061                                  ; $6bfe: $21 $61 $10
    inc de                                        ; $6c01: $13
    rla                                           ; $6c02: $17
    ld de, $1148                                  ; $6c03: $11 $48 $11
    ld de, $5911                                  ; $6c06: $11 $11 $59
    ld de, $1111                                  ; $6c09: $11 $11 $11
    ld de, $1111                                  ; $6c0c: $11 $11 $11
    ld de, $1100                                  ; $6c0f: $11 $00 $11
    ld hl, $1016                                  ; $6c12: $21 $16 $10
    inc de                                        ; $6c15: $13
    rla                                           ; $6c16: $17
    ld de, $1148                                  ; $6c17: $11 $48 $11
    ld de, $5911                                  ; $6c1a: $11 $11 $59
    ld de, $1111                                  ; $6c1d: $11 $11 $11
    ld de, $1111                                  ; $6c20: $11 $11 $11
    ld de, $1100                                  ; $6c23: $11 $00 $11
    ld hl, $1061                                  ; $6c26: $21 $61 $10
    inc de                                        ; $6c29: $13
    rla                                           ; $6c2a: $17
    ld de, $1148                                  ; $6c2b: $11 $48 $11
    ld de, $5911                                  ; $6c2e: $11 $11 $59
    ld de, $1111                                  ; $6c31: $11 $11 $11
    ld de, $1111                                  ; $6c34: $11 $11 $11
    ld de, $1100                                  ; $6c37: $11 $00 $11
    ld hl, $1061                                  ; $6c3a: $21 $61 $10
    inc de                                        ; $6c3d: $13
    rla                                           ; $6c3e: $17
    ld de, $8141                                  ; $6c3f: $11 $41 $81
    ld de, $5911                                  ; $6c42: $11 $11 $59
    ld de, $1111                                  ; $6c45: $11 $11 $11
    ld de, $1111                                  ; $6c48: $11 $11 $11
    ld de, $1100                                  ; $6c4b: $11 $00 $11
    ld hl, $1061                                  ; $6c4e: $21 $61 $10
    inc de                                        ; $6c51: $13
    ld [hl], c                                    ; $6c52: $71
    ld de, $8141                                  ; $6c53: $11 $41 $81
    ld de, $5911                                  ; $6c56: $11 $11 $59
    ld de, $1111                                  ; $6c59: $11 $11 $11
    ld de, $1111                                  ; $6c5c: $11 $11 $11
    ld de, $1100                                  ; $6c5f: $11 $00 $11
    ld hl, $1061                                  ; $6c62: $21 $61 $10
    inc de                                        ; $6c65: $13
    rla                                           ; $6c66: $17
    ld bc, $1841                                  ; $6c67: $01 $41 $18
    ld de, $5911                                  ; $6c6a: $11 $11 $59
    ld de, $1111                                  ; $6c6d: $11 $11 $11
    ld de, $1111                                  ; $6c70: $11 $11 $11
    ld de, $1100                                  ; $6c73: $11 $00 $11
    ld hl, $1061                                  ; $6c76: $21 $61 $10
    inc de                                        ; $6c79: $13
    rla                                           ; $6c7a: $17
    ld bc, $1814                                  ; $6c7b: $01 $14 $18
    ld de, $5911                                  ; $6c7e: $11 $11 $59
    ld de, $1111                                  ; $6c81: $11 $11 $11
    ld de, $1111                                  ; $6c84: $11 $11 $11
    ld de, $0a00                                  ; $6c87: $11 $00 $0a
    xor d                                         ; $6c8a: $aa
    xor d                                         ; $6c8b: $aa
    xor d                                         ; $6c8c: $aa
    xor d                                         ; $6c8d: $aa
    xor d                                         ; $6c8e: $aa
    xor d                                         ; $6c8f: $aa
    xor d                                         ; $6c90: $aa
    xor d                                         ; $6c91: $aa
    xor d                                         ; $6c92: $aa
    xor d                                         ; $6c93: $aa
    xor d                                         ; $6c94: $aa
    xor d                                         ; $6c95: $aa
    xor d                                         ; $6c96: $aa
    xor d                                         ; $6c97: $aa
    xor d                                         ; $6c98: $aa
    xor d                                         ; $6c99: $aa
    xor d                                         ; $6c9a: $aa
    xor d                                         ; $6c9b: $aa
    nop                                           ; $6c9c: $00
    and b                                         ; $6c9d: $a0
    xor d                                         ; $6c9e: $aa
    xor d                                         ; $6c9f: $aa
    xor d                                         ; $6ca0: $aa
    xor d                                         ; $6ca1: $aa
    xor d                                         ; $6ca2: $aa
    xor d                                         ; $6ca3: $aa
    xor d                                         ; $6ca4: $aa
    xor d                                         ; $6ca5: $aa
    xor d                                         ; $6ca6: $aa
    xor d                                         ; $6ca7: $aa
    xor d                                         ; $6ca8: $aa
    xor d                                         ; $6ca9: $aa
    xor d                                         ; $6caa: $aa
    xor d                                         ; $6cab: $aa
    xor d                                         ; $6cac: $aa
    xor d                                         ; $6cad: $aa
    xor d                                         ; $6cae: $aa
    xor d                                         ; $6caf: $aa
    nop                                           ; $6cb0: $00
    xor d                                         ; $6cb1: $aa
    ld a, [bc]                                    ; $6cb2: $0a
    xor d                                         ; $6cb3: $aa
    xor d                                         ; $6cb4: $aa
    xor d                                         ; $6cb5: $aa
    xor d                                         ; $6cb6: $aa
    xor d                                         ; $6cb7: $aa
    xor d                                         ; $6cb8: $aa
    xor d                                         ; $6cb9: $aa
    xor d                                         ; $6cba: $aa
    xor d                                         ; $6cbb: $aa
    xor d                                         ; $6cbc: $aa
    xor d                                         ; $6cbd: $aa
    xor d                                         ; $6cbe: $aa
    xor d                                         ; $6cbf: $aa
    xor d                                         ; $6cc0: $aa
    xor d                                         ; $6cc1: $aa
    xor d                                         ; $6cc2: $aa
    xor d                                         ; $6cc3: $aa
    nop                                           ; $6cc4: $00
    xor d                                         ; $6cc5: $aa
    ld a, [bc]                                    ; $6cc6: $0a
    xor d                                         ; $6cc7: $aa
    ld a, [bc]                                    ; $6cc8: $0a
    xor d                                         ; $6cc9: $aa
    xor d                                         ; $6cca: $aa
    xor d                                         ; $6ccb: $aa
    xor d                                         ; $6ccc: $aa
    xor d                                         ; $6ccd: $aa
    xor d                                         ; $6cce: $aa
    xor d                                         ; $6ccf: $aa
    xor d                                         ; $6cd0: $aa
    xor d                                         ; $6cd1: $aa
    xor d                                         ; $6cd2: $aa
    xor d                                         ; $6cd3: $aa
    xor d                                         ; $6cd4: $aa
    xor d                                         ; $6cd5: $aa
    xor d                                         ; $6cd6: $aa
    xor d                                         ; $6cd7: $aa
    nop                                           ; $6cd8: $00
    xor d                                         ; $6cd9: $aa
    xor d                                         ; $6cda: $aa
    ld a, [bc]                                    ; $6cdb: $0a
    xor d                                         ; $6cdc: $aa
    ld a, [bc]                                    ; $6cdd: $0a
    xor d                                         ; $6cde: $aa
    xor d                                         ; $6cdf: $aa
    xor d                                         ; $6ce0: $aa
    xor d                                         ; $6ce1: $aa
    xor d                                         ; $6ce2: $aa
    xor d                                         ; $6ce3: $aa
    xor d                                         ; $6ce4: $aa
    xor d                                         ; $6ce5: $aa
    xor d                                         ; $6ce6: $aa
    xor d                                         ; $6ce7: $aa
    xor d                                         ; $6ce8: $aa
    xor d                                         ; $6ce9: $aa
    xor d                                         ; $6cea: $aa
    xor d                                         ; $6ceb: $aa
    nop                                           ; $6cec: $00
    xor d                                         ; $6ced: $aa
    and b                                         ; $6cee: $a0
    xor d                                         ; $6cef: $aa
    xor d                                         ; $6cf0: $aa
    ld a, [bc]                                    ; $6cf1: $0a
    and b                                         ; $6cf2: $a0
    and b                                         ; $6cf3: $a0
    xor d                                         ; $6cf4: $aa
    xor d                                         ; $6cf5: $aa
    xor d                                         ; $6cf6: $aa
    xor d                                         ; $6cf7: $aa
    xor d                                         ; $6cf8: $aa
    xor d                                         ; $6cf9: $aa
    xor d                                         ; $6cfa: $aa
    xor d                                         ; $6cfb: $aa
    xor d                                         ; $6cfc: $aa
    xor d                                         ; $6cfd: $aa
    xor d                                         ; $6cfe: $aa
    xor d                                         ; $6cff: $aa
    nop                                           ; $6d00: $00
    xor d                                         ; $6d01: $aa
    and b                                         ; $6d02: $a0
    xor d                                         ; $6d03: $aa
    and b                                         ; $6d04: $a0
    xor d                                         ; $6d05: $aa
    ld a, [bc]                                    ; $6d06: $0a
    and b                                         ; $6d07: $a0
    ld a, [bc]                                    ; $6d08: $0a
    and b                                         ; $6d09: $a0
    xor d                                         ; $6d0a: $aa
    xor d                                         ; $6d0b: $aa
    xor d                                         ; $6d0c: $aa
    xor d                                         ; $6d0d: $aa
    xor d                                         ; $6d0e: $aa
    xor d                                         ; $6d0f: $aa
    xor d                                         ; $6d10: $aa
    xor d                                         ; $6d11: $aa
    xor d                                         ; $6d12: $aa
    xor d                                         ; $6d13: $aa
    nop                                           ; $6d14: $00
    xor d                                         ; $6d15: $aa
    xor d                                         ; $6d16: $aa
    ld a, [bc]                                    ; $6d17: $0a
    xor d                                         ; $6d18: $aa
    ld a, [bc]                                    ; $6d19: $0a
    and b                                         ; $6d1a: $a0
    and b                                         ; $6d1b: $a0
    and b                                         ; $6d1c: $a0
    and b                                         ; $6d1d: $a0
    xor d                                         ; $6d1e: $aa
    xor d                                         ; $6d1f: $aa
    xor d                                         ; $6d20: $aa
    xor d                                         ; $6d21: $aa
    xor d                                         ; $6d22: $aa
    xor d                                         ; $6d23: $aa
    xor d                                         ; $6d24: $aa
    xor d                                         ; $6d25: $aa
    xor d                                         ; $6d26: $aa
    xor d                                         ; $6d27: $aa
    nop                                           ; $6d28: $00
    xor d                                         ; $6d29: $aa
    and b                                         ; $6d2a: $a0
    xor d                                         ; $6d2b: $aa
    and b                                         ; $6d2c: $a0
    xor d                                         ; $6d2d: $aa
    ld a, [bc]                                    ; $6d2e: $0a
    and b                                         ; $6d2f: $a0
    ld a, [bc]                                    ; $6d30: $0a
    ld a, [bc]                                    ; $6d31: $0a
    ld a, [bc]                                    ; $6d32: $0a
    ld a, [bc]                                    ; $6d33: $0a
    ld a, [bc]                                    ; $6d34: $0a
    xor d                                         ; $6d35: $aa
    xor d                                         ; $6d36: $aa
    xor d                                         ; $6d37: $aa
    xor d                                         ; $6d38: $aa
    xor d                                         ; $6d39: $aa
    xor d                                         ; $6d3a: $aa
    xor d                                         ; $6d3b: $aa
    nop                                           ; $6d3c: $00
    xor d                                         ; $6d3d: $aa
    ld a, [bc]                                    ; $6d3e: $0a
    xor d                                         ; $6d3f: $aa
    ld a, [bc]                                    ; $6d40: $0a
    xor d                                         ; $6d41: $aa
    ld a, [bc]                                    ; $6d42: $0a
    ld a, [bc]                                    ; $6d43: $0a
    ld a, [bc]                                    ; $6d44: $0a
    ld a, [bc]                                    ; $6d45: $0a
    ld a, [bc]                                    ; $6d46: $0a
    ld a, [bc]                                    ; $6d47: $0a
    ld a, [bc]                                    ; $6d48: $0a
    xor d                                         ; $6d49: $aa
    xor d                                         ; $6d4a: $aa
    xor d                                         ; $6d4b: $aa
    xor d                                         ; $6d4c: $aa
    xor d                                         ; $6d4d: $aa
    xor d                                         ; $6d4e: $aa
    xor d                                         ; $6d4f: $aa
    ld e, b                                       ; $6d50: $58
    ld l, l                                       ; $6d51: $6d
    ld l, h                                       ; $6d52: $6c
    ld l, l                                       ; $6d53: $6d
    add b                                         ; $6d54: $80
    ld l, l                                       ; $6d55: $6d
    sub h                                         ; $6d56: $94
    ld l, l                                       ; $6d57: $6d
    ld [hl], b                                    ; $6d58: $70
    ld h, a                                       ; $6d59: $67
    sub b                                         ; $6d5a: $90
    ld h, a                                       ; $6d5b: $67
    or b                                          ; $6d5c: $b0
    ld h, a                                       ; $6d5d: $67
    ret nc                                        ; $6d5e: $d0

    ld h, a                                       ; $6d5f: $67
    ldh a, [$ff67]                                ; $6d60: $f0 $67
    db $10                                        ; $6d62: $10
    ld l, b                                       ; $6d63: $68
    jr nc, jr_002_6dce                            ; $6d64: $30 $68

    ld d, b                                       ; $6d66: $50
    ld l, b                                       ; $6d67: $68
    ld d, b                                       ; $6d68: $50
    ld l, b                                       ; $6d69: $68
    ld d, b                                       ; $6d6a: $50
    ld l, b                                       ; $6d6b: $68
    ld [hl], b                                    ; $6d6c: $70
    ld l, b                                       ; $6d6d: $68
    sub b                                         ; $6d6e: $90
    ld l, b                                       ; $6d6f: $68
    or b                                          ; $6d70: $b0
    ld l, b                                       ; $6d71: $68
    ret nc                                        ; $6d72: $d0

    ld l, b                                       ; $6d73: $68
    ldh a, [rBCPS]                                ; $6d74: $f0 $68
    db $10                                        ; $6d76: $10
    ld l, c                                       ; $6d77: $69
    jr nc, jr_002_6de3                            ; $6d78: $30 $69

    ld d, b                                       ; $6d7a: $50
    ld l, c                                       ; $6d7b: $69
    ld d, b                                       ; $6d7c: $50
    ld l, c                                       ; $6d7d: $69
    ld d, b                                       ; $6d7e: $50
    ld l, c                                       ; $6d7f: $69
    ld [hl], b                                    ; $6d80: $70
    ld l, c                                       ; $6d81: $69
    sub b                                         ; $6d82: $90
    ld l, c                                       ; $6d83: $69
    or b                                          ; $6d84: $b0
    ld l, c                                       ; $6d85: $69
    ret nc                                        ; $6d86: $d0

    ld l, c                                       ; $6d87: $69
    ldh a, [rBCPD]                                ; $6d88: $f0 $69
    db $10                                        ; $6d8a: $10
    ld l, d                                       ; $6d8b: $6a
    jr nc, jr_002_6df8                            ; $6d8c: $30 $6a

    ld d, b                                       ; $6d8e: $50
    ld l, d                                       ; $6d8f: $6a
    ld d, b                                       ; $6d90: $50
    ld l, d                                       ; $6d91: $6a
    ld d, b                                       ; $6d92: $50
    ld l, d                                       ; $6d93: $6a
    ld [hl], b                                    ; $6d94: $70
    ld l, d                                       ; $6d95: $6a
    sub b                                         ; $6d96: $90
    ld l, d                                       ; $6d97: $6a
    or b                                          ; $6d98: $b0
    ld l, d                                       ; $6d99: $6a
    ret nc                                        ; $6d9a: $d0

    ld l, d                                       ; $6d9b: $6a
    ldh a, [rOCPS]                                ; $6d9c: $f0 $6a
    db $10                                        ; $6d9e: $10
    ld l, e                                       ; $6d9f: $6b
    jr nc, jr_002_6e0d                            ; $6da0: $30 $6b

    ld d, b                                       ; $6da2: $50
    ld l, e                                       ; $6da3: $6b
    ld d, b                                       ; $6da4: $50
    ld l, e                                       ; $6da5: $6b
    ld d, b                                       ; $6da6: $50
    ld l, e                                       ; $6da7: $6b
    or b                                          ; $6da8: $b0
    ld l, l                                       ; $6da9: $6d
    call nz, $d86d                                ; $6daa: $c4 $6d $d8
    ld l, l                                       ; $6dad: $6d
    db $ec                                        ; $6dae: $ec
    ld l, l                                       ; $6daf: $6d
    ld [hl], b                                    ; $6db0: $70
    ld l, e                                       ; $6db1: $6b
    ld [hl], b                                    ; $6db2: $70
    ld l, e                                       ; $6db3: $6b
    ld [hl], b                                    ; $6db4: $70
    ld l, e                                       ; $6db5: $6b
    add h                                         ; $6db6: $84
    ld l, e                                       ; $6db7: $6b
    add h                                         ; $6db8: $84
    ld l, e                                       ; $6db9: $6b
    add h                                         ; $6dba: $84
    ld l, e                                       ; $6dbb: $6b
    sbc b                                         ; $6dbc: $98
    ld l, e                                       ; $6dbd: $6b
    sbc b                                         ; $6dbe: $98
    ld l, e                                       ; $6dbf: $6b
    sbc b                                         ; $6dc0: $98
    ld l, e                                       ; $6dc1: $6b
    sbc b                                         ; $6dc2: $98
    ld l, e                                       ; $6dc3: $6b
    xor h                                         ; $6dc4: $ac
    ld l, e                                       ; $6dc5: $6b
    xor h                                         ; $6dc6: $ac
    ld l, e                                       ; $6dc7: $6b
    xor h                                         ; $6dc8: $ac
    ld l, e                                       ; $6dc9: $6b
    xor h                                         ; $6dca: $ac
    ld l, e                                       ; $6dcb: $6b
    xor h                                         ; $6dcc: $ac
    ld l, e                                       ; $6dcd: $6b

jr_002_6dce:
    xor h                                         ; $6dce: $ac
    ld l, e                                       ; $6dcf: $6b
    xor h                                         ; $6dd0: $ac
    ld l, e                                       ; $6dd1: $6b
    xor h                                         ; $6dd2: $ac
    ld l, e                                       ; $6dd3: $6b
    xor h                                         ; $6dd4: $ac
    ld l, e                                       ; $6dd5: $6b
    xor h                                         ; $6dd6: $ac
    ld l, e                                       ; $6dd7: $6b
    ret nz                                        ; $6dd8: $c0

    ld l, e                                       ; $6dd9: $6b
    call nc, $e86b                                ; $6dda: $d4 $6b $e8
    ld l, e                                       ; $6ddd: $6b
    db $fc                                        ; $6dde: $fc
    ld l, e                                       ; $6ddf: $6b
    db $10                                        ; $6de0: $10
    ld l, h                                       ; $6de1: $6c
    inc h                                         ; $6de2: $24

jr_002_6de3:
    ld l, h                                       ; $6de3: $6c
    jr c, jr_002_6e52                             ; $6de4: $38 $6c

    ld c, h                                       ; $6de6: $4c
    ld l, h                                       ; $6de7: $6c
    ld h, b                                       ; $6de8: $60
    ld l, h                                       ; $6de9: $6c
    ld [hl], h                                    ; $6dea: $74
    ld l, h                                       ; $6deb: $6c
    adc b                                         ; $6dec: $88
    ld l, h                                       ; $6ded: $6c
    sbc h                                         ; $6dee: $9c
    ld l, h                                       ; $6def: $6c
    or b                                          ; $6df0: $b0
    ld l, h                                       ; $6df1: $6c
    call nz, $d86c                                ; $6df2: $c4 $6c $d8
    ld l, h                                       ; $6df5: $6c
    db $ec                                        ; $6df6: $ec
    ld l, h                                       ; $6df7: $6c

jr_002_6df8:
    nop                                           ; $6df8: $00
    ld l, l                                       ; $6df9: $6d
    inc d                                         ; $6dfa: $14
    ld l, l                                       ; $6dfb: $6d
    jr z, jr_002_6e6b                             ; $6dfc: $28 $6d

    inc a                                         ; $6dfe: $3c
    ld l, l                                       ; $6dff: $6d
    ld l, e                                       ; $6e00: $6b
    pop bc                                        ; $6e01: $c1
    rrca                                          ; $6e02: $0f
    ld l, [hl]                                    ; $6e03: $6e
    ld l, [hl]                                    ; $6e04: $6e
    pop bc                                        ; $6e05: $c1
    add hl, de                                    ; $6e06: $19
    ld l, [hl]                                    ; $6e07: $6e
    ld l, l                                       ; $6e08: $6d
    pop bc                                        ; $6e09: $c1
    inc hl                                        ; $6e0a: $23
    ld l, [hl]                                    ; $6e0b: $6e
    ld [hl], b                                    ; $6e0c: $70

jr_002_6e0d:
    pop bc                                        ; $6e0d: $c1
    dec l                                         ; $6e0e: $2d
    ld l, [hl]                                    ; $6e0f: $6e
    inc bc                                        ; $6e10: $03
    inc b                                         ; $6e11: $04
    dec b                                         ; $6e12: $05
    rlca                                          ; $6e13: $07
    db $10                                        ; $6e14: $10
    ld [de], a                                    ; $6e15: $12
    dec d                                         ; $6e16: $15
    jr jr_002_6e39                                ; $6e17: $18 $20

    dec h                                         ; $6e19: $25
    ld [bc], a                                    ; $6e1a: $02
    inc b                                         ; $6e1b: $04
    ld b, $09                                     ; $6e1c: $06 $09
    dec d                                         ; $6e1e: $15
    dec h                                         ; $6e1f: $25
    jr c, @+$57                                   ; $6e20: $38 $55

    ld a, c                                       ; $6e22: $79
    sbc c                                         ; $6e23: $99
    ld bc, $0302                                  ; $6e24: $01 $02 $03
    inc b                                         ; $6e27: $04
    dec b                                         ; $6e28: $05
    ld b, $06                                     ; $6e29: $06 $06
    ld b, $07                                     ; $6e2b: $06 $07
    ld [$0201], sp                                ; $6e2d: $08 $01 $02
    inc bc                                        ; $6e30: $03
    inc b                                         ; $6e31: $04
    dec b                                         ; $6e32: $05
    ld b, $07                                     ; $6e33: $06 $07
    ld [$0909], sp                                ; $6e35: $08 $09 $09
    nop                                           ; $6e38: $00

jr_002_6e39:
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    ld [hl], c                                    ; $6e3c: $71
    ld [hl], a                                    ; $6e3d: $77
    ld [hl], a                                    ; $6e3e: $77
    ld [hl], a                                    ; $6e3f: $77
    ld [hl], a                                    ; $6e40: $77
    ld [hl], a                                    ; $6e41: $77
    ld [hl], a                                    ; $6e42: $77
    ld [hl], a                                    ; $6e43: $77
    ld [hl], a                                    ; $6e44: $77
    ld [hl], a                                    ; $6e45: $77
    ld [hl], a                                    ; $6e46: $77
    ld [hl], a                                    ; $6e47: $77
    ld [hl], a                                    ; $6e48: $77
    ld [hl], a                                    ; $6e49: $77
    ld [hl], a                                    ; $6e4a: $77
    ld [hl], a                                    ; $6e4b: $77
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00
    nop                                           ; $6e4e: $00
    ld de, $1111                                  ; $6e4f: $11 $11 $11

jr_002_6e52:
    ld [hl], a                                    ; $6e52: $77
    ld [hl], a                                    ; $6e53: $77
    ld [hl], a                                    ; $6e54: $77
    ld [hl], a                                    ; $6e55: $77
    ld [hl], a                                    ; $6e56: $77
    ld [hl], a                                    ; $6e57: $77
    ld [hl], a                                    ; $6e58: $77
    ld [hl], a                                    ; $6e59: $77
    ld [hl], a                                    ; $6e5a: $77
    ld [hl], a                                    ; $6e5b: $77
    ld [hl], a                                    ; $6e5c: $77
    ld [hl], a                                    ; $6e5d: $77
    ld [hl], a                                    ; $6e5e: $77
    ld [hl], a                                    ; $6e5f: $77
    nop                                           ; $6e60: $00
    nop                                           ; $6e61: $00
    ld de, $1111                                  ; $6e62: $11 $11 $11
    ld [hl+], a                                   ; $6e65: $22
    ld h, d                                       ; $6e66: $62
    ld h, d                                       ; $6e67: $62
    ld [hl], a                                    ; $6e68: $77
    ld [hl], a                                    ; $6e69: $77
    ld [hl], a                                    ; $6e6a: $77

jr_002_6e6b:
    ld [hl], a                                    ; $6e6b: $77
    ld [hl], a                                    ; $6e6c: $77
    ld [hl], a                                    ; $6e6d: $77
    ld [hl], a                                    ; $6e6e: $77
    ld [hl], a                                    ; $6e6f: $77
    ld [hl], a                                    ; $6e70: $77
    ld [hl], a                                    ; $6e71: $77
    ld [hl], a                                    ; $6e72: $77
    ld [hl], a                                    ; $6e73: $77
    nop                                           ; $6e74: $00
    ld de, $0211                                  ; $6e75: $11 $11 $02
    ld b, d                                       ; $6e78: $42
    ld b, d                                       ; $6e79: $42
    ld h, h                                       ; $6e7a: $64
    ld h, h                                       ; $6e7b: $64
    ld [hl], a                                    ; $6e7c: $77
    ld [hl], a                                    ; $6e7d: $77
    ld [hl], a                                    ; $6e7e: $77
    ld [hl], a                                    ; $6e7f: $77
    ld [hl], a                                    ; $6e80: $77
    ld [hl], a                                    ; $6e81: $77
    ld [hl], a                                    ; $6e82: $77
    ld [hl], a                                    ; $6e83: $77
    ld [hl], a                                    ; $6e84: $77
    ld [hl], a                                    ; $6e85: $77
    ld [hl], a                                    ; $6e86: $77
    ld [hl], a                                    ; $6e87: $77
    nop                                           ; $6e88: $00
    ld [hl+], a                                   ; $6e89: $22
    jr nz, jr_002_6ebf                            ; $6e8a: $20 $33

    ld h, c                                       ; $6e8c: $61
    inc hl                                        ; $6e8d: $23
    ld [hl], $33                                  ; $6e8e: $36 $33
    ld h, e                                       ; $6e90: $63
    ld [hl], a                                    ; $6e91: $77
    ld [hl], a                                    ; $6e92: $77
    ld [hl], a                                    ; $6e93: $77
    ld [hl], a                                    ; $6e94: $77
    ld [hl], a                                    ; $6e95: $77
    ld [hl], a                                    ; $6e96: $77
    ld [hl], a                                    ; $6e97: $77
    ld [hl], a                                    ; $6e98: $77
    ld [hl], a                                    ; $6e99: $77
    ld [hl], a                                    ; $6e9a: $77
    ld [hl], a                                    ; $6e9b: $77
    nop                                           ; $6e9c: $00
    ld [hl+], a                                   ; $6e9d: $22
    ld b, b                                       ; $6e9e: $40
    ld h, e                                       ; $6e9f: $63
    ld hl, $3643                                  ; $6ea0: $21 $43 $36
    inc sp                                        ; $6ea3: $33
    ld h, e                                       ; $6ea4: $63
    ld [hl], a                                    ; $6ea5: $77
    ld [hl], a                                    ; $6ea6: $77
    ld [hl], a                                    ; $6ea7: $77
    ld [hl], a                                    ; $6ea8: $77
    ld [hl], a                                    ; $6ea9: $77
    ld [hl], a                                    ; $6eaa: $77
    ld [hl], a                                    ; $6eab: $77
    ld [hl], a                                    ; $6eac: $77
    ld [hl], a                                    ; $6ead: $77
    ld [hl], a                                    ; $6eae: $77
    ld [hl], a                                    ; $6eaf: $77
    nop                                           ; $6eb0: $00
    ld b, h                                       ; $6eb1: $44
    ld b, b                                       ; $6eb2: $40
    ld h, e                                       ; $6eb3: $63
    ld b, c                                       ; $6eb4: $41
    ld h, e                                       ; $6eb5: $63
    inc de                                        ; $6eb6: $13
    inc sp                                        ; $6eb7: $33
    ld h, e                                       ; $6eb8: $63
    ld b, e                                       ; $6eb9: $43
    inc sp                                        ; $6eba: $33
    ld h, e                                       ; $6ebb: $63
    ld [hl], a                                    ; $6ebc: $77
    ld [hl], a                                    ; $6ebd: $77
    ld [hl], a                                    ; $6ebe: $77

jr_002_6ebf:
    ld [hl], a                                    ; $6ebf: $77
    ld [hl], a                                    ; $6ec0: $77
    ld [hl], a                                    ; $6ec1: $77
    ld [hl], a                                    ; $6ec2: $77
    ld [hl], a                                    ; $6ec3: $77
    ld [bc], a                                    ; $6ec4: $02
    ld b, e                                       ; $6ec5: $43
    ld b, b                                       ; $6ec6: $40
    ld h, e                                       ; $6ec7: $63
    ld sp, $6343                                  ; $6ec8: $31 $43 $63
    ld sp, $3633                                  ; $6ecb: $31 $33 $36
    inc sp                                        ; $6ece: $33
    ld h, e                                       ; $6ecf: $63
    ld [de], a                                    ; $6ed0: $12
    ld h, e                                       ; $6ed1: $63
    ld b, a                                       ; $6ed2: $47
    ld [hl], a                                    ; $6ed3: $77
    ld [hl], a                                    ; $6ed4: $77
    ld [hl], a                                    ; $6ed5: $77
    ld [hl], a                                    ; $6ed6: $77
    ld [hl], a                                    ; $6ed7: $77
    ld [bc], a                                    ; $6ed8: $02
    ld b, e                                       ; $6ed9: $43
    jr nc, jr_002_6f1f                            ; $6eda: $30 $43

    ld h, c                                       ; $6edc: $61
    inc sp                                        ; $6edd: $33
    ld h, e                                       ; $6ede: $63
    ld [hl], $31                                  ; $6edf: $36 $31
    ld [hl], $33                                  ; $6ee1: $36 $33
    ld h, e                                       ; $6ee3: $63
    ld [de], a                                    ; $6ee4: $12
    ld h, e                                       ; $6ee5: $63
    ld b, h                                       ; $6ee6: $44
    inc sp                                        ; $6ee7: $33
    ld [de], a                                    ; $6ee8: $12
    ld h, a                                       ; $6ee9: $67
    ld [hl], a                                    ; $6eea: $77
    ld [hl], a                                    ; $6eeb: $77
    ld [bc], a                                    ; $6eec: $02
    ld b, e                                       ; $6eed: $43
    ld b, b                                       ; $6eee: $40
    halt                                          ; $6eef: $76
    ld b, c                                       ; $6ef0: $41
    inc sp                                        ; $6ef1: $33
    ld h, c                                       ; $6ef2: $61
    ld [hl], $33                                  ; $6ef3: $36 $33
    ld [hl], $33                                  ; $6ef5: $36 $33
    ld h, e                                       ; $6ef7: $63
    ld b, d                                       ; $6ef8: $42
    inc de                                        ; $6ef9: $13
    ld b, a                                       ; $6efa: $47
    inc [hl]                                      ; $6efb: $34
    ld h, h                                       ; $6efc: $64
    inc de                                        ; $6efd: $13
    ld [hl], $45                                  ; $6efe: $36 $45
    nop                                           ; $6f00: $00
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    ld [hl], b                                    ; $6f04: $70
    ld [hl], a                                    ; $6f05: $77
    ld [hl], a                                    ; $6f06: $77
    ld [hl], a                                    ; $6f07: $77
    ld [hl], a                                    ; $6f08: $77
    ld [hl], a                                    ; $6f09: $77
    ld [hl], a                                    ; $6f0a: $77
    ld [hl], a                                    ; $6f0b: $77
    ld [hl], a                                    ; $6f0c: $77
    ld [hl], a                                    ; $6f0d: $77
    ld [hl], a                                    ; $6f0e: $77
    ld [hl], a                                    ; $6f0f: $77
    ld [hl], a                                    ; $6f10: $77
    ld [hl], a                                    ; $6f11: $77
    ld [hl], a                                    ; $6f12: $77
    ld [hl], a                                    ; $6f13: $77
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    ld bc, $2011                                  ; $6f16: $01 $11 $20
    ld [hl+], a                                   ; $6f19: $22
    ld [hl], a                                    ; $6f1a: $77
    ld [hl], a                                    ; $6f1b: $77
    ld [hl], a                                    ; $6f1c: $77
    ld [hl], a                                    ; $6f1d: $77
    ld [hl], a                                    ; $6f1e: $77

jr_002_6f1f:
    ld [hl], a                                    ; $6f1f: $77
    ld [hl], a                                    ; $6f20: $77
    ld [hl], a                                    ; $6f21: $77
    ld [hl], a                                    ; $6f22: $77
    ld [hl], a                                    ; $6f23: $77
    ld [hl], a                                    ; $6f24: $77
    ld [hl], a                                    ; $6f25: $77
    ld [hl], a                                    ; $6f26: $77
    ld [hl], a                                    ; $6f27: $77
    nop                                           ; $6f28: $00
    ld de, $2210                                  ; $6f29: $11 $10 $22
    ld b, b                                       ; $6f2c: $40
    inc sp                                        ; $6f2d: $33
    ld h, e                                       ; $6f2e: $63
    ld h, e                                       ; $6f2f: $63
    ld [hl], a                                    ; $6f30: $77
    ld [hl], a                                    ; $6f31: $77
    ld [hl], a                                    ; $6f32: $77
    ld [hl], a                                    ; $6f33: $77
    ld [hl], a                                    ; $6f34: $77
    ld [hl], a                                    ; $6f35: $77
    ld [hl], a                                    ; $6f36: $77
    ld [hl], a                                    ; $6f37: $77
    ld [hl], a                                    ; $6f38: $77
    ld [hl], a                                    ; $6f39: $77
    ld [hl], a                                    ; $6f3a: $77
    ld [hl], a                                    ; $6f3b: $77
    nop                                           ; $6f3c: $00
    ld [hl+], a                                   ; $6f3d: $22
    jr nz, jr_002_6f73                            ; $6f3e: $20 $33

    ld h, b                                       ; $6f40: $60
    inc hl                                        ; $6f41: $23
    ld [hl], $33                                  ; $6f42: $36 $33
    ld [hl], a                                    ; $6f44: $77
    ld [hl], a                                    ; $6f45: $77
    ld [hl], a                                    ; $6f46: $77
    ld [hl], a                                    ; $6f47: $77
    ld [hl], a                                    ; $6f48: $77
    ld [hl], a                                    ; $6f49: $77
    ld [hl], a                                    ; $6f4a: $77
    ld [hl], a                                    ; $6f4b: $77
    ld [hl], a                                    ; $6f4c: $77
    ld [hl], a                                    ; $6f4d: $77
    ld [hl], a                                    ; $6f4e: $77
    ld [hl], a                                    ; $6f4f: $77
    nop                                           ; $6f50: $00
    ld [hl+], a                                   ; $6f51: $22
    jr nc, jr_002_6fb7                            ; $6f52: $30 $63

    db $10                                        ; $6f54: $10
    ld h, e                                       ; $6f55: $63
    inc de                                        ; $6f56: $13
    inc sp                                        ; $6f57: $33
    ld [hl], a                                    ; $6f58: $77
    ld [hl], a                                    ; $6f59: $77
    ld [hl], a                                    ; $6f5a: $77
    ld [hl], a                                    ; $6f5b: $77
    ld [hl], a                                    ; $6f5c: $77
    ld [hl], a                                    ; $6f5d: $77
    ld [hl], a                                    ; $6f5e: $77
    ld [hl], a                                    ; $6f5f: $77
    ld [hl], a                                    ; $6f60: $77
    ld [hl], a                                    ; $6f61: $77
    ld [hl], a                                    ; $6f62: $77
    ld [hl], a                                    ; $6f63: $77
    ld [bc], a                                    ; $6f64: $02
    ld b, h                                       ; $6f65: $44
    jr nc, jr_002_6fcc                            ; $6f66: $30 $64

    ld b, b                                       ; $6f68: $40
    ld b, e                                       ; $6f69: $43
    ld h, e                                       ; $6f6a: $63

Jump_002_6f6b:
    ld sp, $7777                                  ; $6f6b: $31 $77 $77
    ld [hl], a                                    ; $6f6e: $77
    ld [hl], a                                    ; $6f6f: $77
    ld [hl], a                                    ; $6f70: $77
    ld [hl], a                                    ; $6f71: $77
    ld [hl], a                                    ; $6f72: $77

jr_002_6f73:
    ld [hl], a                                    ; $6f73: $77
    ld [hl], a                                    ; $6f74: $77
    ld [hl], a                                    ; $6f75: $77
    ld [hl], a                                    ; $6f76: $77
    ld [hl], a                                    ; $6f77: $77
    ld [bc], a                                    ; $6f78: $02
    ld b, e                                       ; $6f79: $43
    ld b, b                                       ; $6f7a: $40
    inc [hl]                                      ; $6f7b: $34
    ld h, b                                       ; $6f7c: $60
    inc sp                                        ; $6f7d: $33
    ld h, e                                       ; $6f7e: $63
    ld [hl], $31                                  ; $6f7f: $36 $31
    ld [hl], $77                                  ; $6f81: $36 $77
    ld [hl], a                                    ; $6f83: $77
    ld [hl], a                                    ; $6f84: $77
    ld [hl], a                                    ; $6f85: $77
    ld [hl], a                                    ; $6f86: $77
    ld [hl], a                                    ; $6f87: $77
    ld [hl], a                                    ; $6f88: $77
    ld [hl], a                                    ; $6f89: $77
    ld [hl], a                                    ; $6f8a: $77
    ld [hl], a                                    ; $6f8b: $77
    ld [bc], a                                    ; $6f8c: $02
    ld b, e                                       ; $6f8d: $43
    ld b, b                                       ; $6f8e: $40
    ld [hl], $40                                  ; $6f8f: $36 $40
    inc sp                                        ; $6f91: $33
    ld h, c                                       ; $6f92: $61
    ld [hl], $33                                  ; $6f93: $36 $33
    ld [hl], $77                                  ; $6f95: $36 $77
    ld [hl], a                                    ; $6f97: $77
    ld [hl], a                                    ; $6f98: $77
    ld [hl], a                                    ; $6f99: $77
    ld [hl], a                                    ; $6f9a: $77
    ld [hl], a                                    ; $6f9b: $77
    ld [hl], a                                    ; $6f9c: $77
    ld [hl], a                                    ; $6f9d: $77
    ld [hl], a                                    ; $6f9e: $77
    ld [hl], a                                    ; $6f9f: $77
    ld [bc], a                                    ; $6fa0: $02
    ld b, e                                       ; $6fa1: $43
    ld b, b                                       ; $6fa2: $40
    inc [hl]                                      ; $6fa3: $34
    ld h, b                                       ; $6fa4: $60
    inc [hl]                                      ; $6fa5: $34
    ld h, e                                       ; $6fa6: $63
    ld [hl], $33                                  ; $6fa7: $36 $33
    ld [hl], $77                                  ; $6fa9: $36 $77
    ld [hl], a                                    ; $6fab: $77
    ld [hl], a                                    ; $6fac: $77
    ld [hl], a                                    ; $6fad: $77
    ld [hl], a                                    ; $6fae: $77
    ld [hl], a                                    ; $6faf: $77
    ld [hl], a                                    ; $6fb0: $77
    ld [hl], a                                    ; $6fb1: $77
    ld [hl], a                                    ; $6fb2: $77
    ld [hl], a                                    ; $6fb3: $77
    inc bc                                        ; $6fb4: $03
    ld b, e                                       ; $6fb5: $43
    ld b, b                                       ; $6fb6: $40

jr_002_6fb7:
    halt                                          ; $6fb7: $76
    ld b, b                                       ; $6fb8: $40
    inc [hl]                                      ; $6fb9: $34
    ld h, h                                       ; $6fba: $64
    inc [hl]                                      ; $6fbb: $34
    ld b, e                                       ; $6fbc: $43
    ld b, [hl]                                    ; $6fbd: $46
    ld [hl], a                                    ; $6fbe: $77
    ld [hl], a                                    ; $6fbf: $77
    ld [hl], a                                    ; $6fc0: $77
    ld [hl], a                                    ; $6fc1: $77
    ld [hl], a                                    ; $6fc2: $77
    ld [hl], a                                    ; $6fc3: $77
    ld [hl], a                                    ; $6fc4: $77
    ld [hl], a                                    ; $6fc5: $77
    ld [hl], a                                    ; $6fc6: $77
    ld [hl], a                                    ; $6fc7: $77
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    nop                                           ; $6fcb: $00

jr_002_6fcc:
    ld [hl], a                                    ; $6fcc: $77
    ld [hl], a                                    ; $6fcd: $77
    ld [hl], a                                    ; $6fce: $77
    ld [hl], a                                    ; $6fcf: $77
    ld [hl], a                                    ; $6fd0: $77
    ld [hl], a                                    ; $6fd1: $77
    ld [hl], a                                    ; $6fd2: $77
    ld [hl], a                                    ; $6fd3: $77
    ld [hl], a                                    ; $6fd4: $77
    ld [hl], a                                    ; $6fd5: $77
    ld [hl], a                                    ; $6fd6: $77
    ld [hl], a                                    ; $6fd7: $77
    ld [hl], a                                    ; $6fd8: $77
    ld [hl], a                                    ; $6fd9: $77
    ld [hl], a                                    ; $6fda: $77
    ld [hl], a                                    ; $6fdb: $77
    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    nop                                           ; $6fde: $00
    ld de, $1111                                  ; $6fdf: $11 $11 $11
    ld [hl], a                                    ; $6fe2: $77
    ld [hl], a                                    ; $6fe3: $77
    ld [hl], a                                    ; $6fe4: $77
    ld [hl], a                                    ; $6fe5: $77
    ld [hl], a                                    ; $6fe6: $77
    ld [hl], a                                    ; $6fe7: $77
    ld [hl], a                                    ; $6fe8: $77
    ld [hl], a                                    ; $6fe9: $77
    ld [hl], a                                    ; $6fea: $77
    ld [hl], a                                    ; $6feb: $77
    ld [hl], a                                    ; $6fec: $77
    ld [hl], a                                    ; $6fed: $77
    ld [hl], a                                    ; $6fee: $77
    ld [hl], a                                    ; $6fef: $77
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    ld de, $1111                                  ; $6ff2: $11 $11 $11
    ld [hl+], a                                   ; $6ff5: $22
    ld [hl+], a                                   ; $6ff6: $22
    ld [hl+], a                                   ; $6ff7: $22
    ld [hl], a                                    ; $6ff8: $77
    ld [hl], a                                    ; $6ff9: $77
    ld [hl], a                                    ; $6ffa: $77
    ld [hl], a                                    ; $6ffb: $77
    ld [hl], a                                    ; $6ffc: $77
    ld [hl], a                                    ; $6ffd: $77
    ld [hl], a                                    ; $6ffe: $77
    ld [hl], a                                    ; $6fff: $77
    ld [hl], a                                    ; $7000: $77
    ld [hl], a                                    ; $7001: $77
    ld [hl], a                                    ; $7002: $77
    ld [hl], a                                    ; $7003: $77
    nop                                           ; $7004: $00
    ld de, $2211                                  ; $7005: $11 $11 $22
    ld h, d                                       ; $7008: $62
    ld [hl+], a                                   ; $7009: $22
    ld h, $23                                     ; $700a: $26 $23
    ld h, e                                       ; $700c: $63
    ld [hl], a                                    ; $700d: $77
    ld [hl], a                                    ; $700e: $77
    ld [hl], a                                    ; $700f: $77
    ld [hl], a                                    ; $7010: $77
    ld [hl], a                                    ; $7011: $77
    ld [hl], a                                    ; $7012: $77
    ld [hl], a                                    ; $7013: $77
    ld [hl], a                                    ; $7014: $77
    ld [hl], a                                    ; $7015: $77
    ld [hl], a                                    ; $7016: $77
    ld [hl], a                                    ; $7017: $77
    ld bc, $2611                                  ; $7018: $01 $11 $26
    ld [de], a                                    ; $701b: $12
    ld b, d                                       ; $701c: $42
    ld h, d                                       ; $701d: $62
    ld [de], a                                    ; $701e: $12
    inc hl                                        ; $701f: $23
    ld h, e                                       ; $7020: $63
    ld b, e                                       ; $7021: $43
    inc sp                                        ; $7022: $33
    ld h, e                                       ; $7023: $63
    ld [hl], a                                    ; $7024: $77
    ld [hl], a                                    ; $7025: $77
    ld [hl], a                                    ; $7026: $77
    ld [hl], a                                    ; $7027: $77
    ld [hl], a                                    ; $7028: $77
    ld [hl], a                                    ; $7029: $77
    ld [hl], a                                    ; $702a: $77
    ld [hl], a                                    ; $702b: $77
    ld [bc], a                                    ; $702c: $02
    ld hl, $3226                                  ; $702d: $21 $26 $32
    ld b, d                                       ; $7030: $42
    ld h, e                                       ; $7031: $63
    inc d                                         ; $7032: $14
    inc h                                         ; $7033: $24
    inc sp                                        ; $7034: $33
    ld [hl], $33                                  ; $7035: $36 $33
    ld h, e                                       ; $7037: $63
    ld [de], a                                    ; $7038: $12
    ld h, e                                       ; $7039: $63
    ld b, a                                       ; $703a: $47
    ld [hl], a                                    ; $703b: $77
    ld [hl], a                                    ; $703c: $77
    ld [hl], a                                    ; $703d: $77
    ld [hl], a                                    ; $703e: $77
    ld [hl], a                                    ; $703f: $77
    ld [bc], a                                    ; $7040: $02
    ld [hl-], a                                   ; $7041: $32
    ld [hl], $42                                  ; $7042: $36 $42
    ld b, d                                       ; $7044: $42
    ld b, e                                       ; $7045: $43
    ld h, d                                       ; $7046: $62
    ld h, $31                                     ; $7047: $26 $31
    ld [hl], $33                                  ; $7049: $36 $33
    ld h, e                                       ; $704b: $63
    ld [de], a                                    ; $704c: $12
    ld h, e                                       ; $704d: $63
    ld b, h                                       ; $704e: $44
    inc sp                                        ; $704f: $33
    ld [de], a                                    ; $7050: $12
    ld h, a                                       ; $7051: $67
    ld [hl], a                                    ; $7052: $77
    ld [hl], a                                    ; $7053: $77
    ld [bc], a                                    ; $7054: $02
    ld b, e                                       ; $7055: $43
    ld [hl], $44                                  ; $7056: $36 $44
    ld h, e                                       ; $7058: $63
    ld b, h                                       ; $7059: $44
    ld h, c                                       ; $705a: $61
    ld b, [hl]                                    ; $705b: $46
    inc [hl]                                      ; $705c: $34
    ld b, [hl]                                    ; $705d: $46
    inc sp                                        ; $705e: $33
    ld h, e                                       ; $705f: $63
    ld b, d                                       ; $7060: $42
    inc de                                        ; $7061: $13
    ld b, a                                       ; $7062: $47
    inc [hl]                                      ; $7063: $34
    ld h, h                                       ; $7064: $64
    inc de                                        ; $7065: $13
    ld [hl], $45                                  ; $7066: $36 $45
    inc bc                                        ; $7068: $03
    inc [hl]                                      ; $7069: $34
    ld b, [hl]                                    ; $706a: $46
    ld b, h                                       ; $706b: $44
    ld h, h                                       ; $706c: $64
    ld b, c                                       ; $706d: $41
    ld h, h                                       ; $706e: $64
    ld b, [hl]                                    ; $706f: $46

Jump_002_7070:
    ld b, e                                       ; $7070: $43
    ld [hl], $33                                  ; $7071: $36 $33
    inc de                                        ; $7073: $13
    ld b, d                                       ; $7074: $42
    ld h, e                                       ; $7075: $63
    ld b, a                                       ; $7076: $47
    inc [hl]                                      ; $7077: $34
    ld h, h                                       ; $7078: $64
    inc sp                                        ; $7079: $33
    dec [hl]                                      ; $707a: $35
    ld hl, $3403                                  ; $707b: $21 $03 $34
    ld b, [hl]                                    ; $707e: $46
    ld [hl], h                                    ; $707f: $74
    ld b, h                                       ; $7080: $44
    inc [hl]                                      ; $7081: $34
    ld h, d                                       ; $7082: $62
    ld b, c                                       ; $7083: $41
    inc h                                         ; $7084: $24
    ld b, [hl]                                    ; $7085: $46
    inc sp                                        ; $7086: $33
    ld h, e                                       ; $7087: $63
    ld b, c                                       ; $7088: $41
    ld h, e                                       ; $7089: $63
    ld b, a                                       ; $708a: $47
    rla                                           ; $708b: $17
    ld [hl], h                                    ; $708c: $74
    ld [hl], e                                    ; $708d: $73
    ld [hl], h                                    ; $708e: $74
    ld [hl], c                                    ; $708f: $71
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    ld [hl], a                                    ; $7094: $77
    ld [hl], a                                    ; $7095: $77
    ld [hl], a                                    ; $7096: $77
    ld [hl], a                                    ; $7097: $77
    ld [hl], a                                    ; $7098: $77
    ld [hl], a                                    ; $7099: $77
    ld [hl], a                                    ; $709a: $77
    ld [hl], a                                    ; $709b: $77
    ld [hl], a                                    ; $709c: $77
    ld [hl], a                                    ; $709d: $77
    ld [hl], a                                    ; $709e: $77
    ld [hl], a                                    ; $709f: $77
    ld [hl], a                                    ; $70a0: $77
    ld [hl], a                                    ; $70a1: $77
    ld [hl], a                                    ; $70a2: $77
    ld [hl], a                                    ; $70a3: $77
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    ld de, $1111                                  ; $70a6: $11 $11 $11
    ld de, $7777                                  ; $70a9: $11 $77 $77
    ld [hl], a                                    ; $70ac: $77
    ld [hl], a                                    ; $70ad: $77
    ld [hl], a                                    ; $70ae: $77
    ld [hl], a                                    ; $70af: $77
    ld [hl], a                                    ; $70b0: $77
    ld [hl], a                                    ; $70b1: $77
    ld [hl], a                                    ; $70b2: $77
    ld [hl], a                                    ; $70b3: $77
    ld [hl], a                                    ; $70b4: $77
    ld [hl], a                                    ; $70b5: $77
    ld [hl], a                                    ; $70b6: $77
    ld [hl], a                                    ; $70b7: $77
    nop                                           ; $70b8: $00
    nop                                           ; $70b9: $00
    ld de, $2261                                  ; $70ba: $11 $61 $22
    ld [hl+], a                                   ; $70bd: $22
    ld [hl], a                                    ; $70be: $77
    ld [hl], a                                    ; $70bf: $77
    ld [hl], a                                    ; $70c0: $77
    ld [hl], a                                    ; $70c1: $77
    ld [hl], a                                    ; $70c2: $77
    ld [hl], a                                    ; $70c3: $77
    ld [hl], a                                    ; $70c4: $77
    ld [hl], a                                    ; $70c5: $77
    ld [hl], a                                    ; $70c6: $77
    ld [hl], a                                    ; $70c7: $77
    ld [hl], a                                    ; $70c8: $77
    ld [hl], a                                    ; $70c9: $77
    ld [hl], a                                    ; $70ca: $77
    ld [hl], a                                    ; $70cb: $77
    ld de, $2611                                  ; $70cc: $11 $11 $26
    ld de, $1226                                  ; $70cf: $11 $26 $12
    ld h, e                                       ; $70d2: $63
    ld h, e                                       ; $70d3: $63
    ld [hl], a                                    ; $70d4: $77
    ld [hl], a                                    ; $70d5: $77
    ld [hl], a                                    ; $70d6: $77
    ld [hl], a                                    ; $70d7: $77
    ld [hl], a                                    ; $70d8: $77
    ld [hl], a                                    ; $70d9: $77
    ld [hl], a                                    ; $70da: $77
    ld [hl], a                                    ; $70db: $77
    ld [hl], a                                    ; $70dc: $77
    ld [hl], a                                    ; $70dd: $77
    ld [hl], a                                    ; $70de: $77
    ld [hl], a                                    ; $70df: $77
    ld de, $2612                                  ; $70e0: $11 $12 $26
    ld sp, $4262                                  ; $70e3: $31 $62 $42
    ld [hl], $33                                  ; $70e6: $36 $33
    ld h, e                                       ; $70e8: $63
    ld [hl], a                                    ; $70e9: $77
    ld [hl], a                                    ; $70ea: $77
    ld [hl], a                                    ; $70eb: $77
    ld [hl], a                                    ; $70ec: $77
    ld [hl], a                                    ; $70ed: $77
    ld [hl], a                                    ; $70ee: $77
    ld [hl], a                                    ; $70ef: $77
    ld [hl], a                                    ; $70f0: $77
    ld [hl], a                                    ; $70f1: $77
    ld [hl], a                                    ; $70f2: $77
    ld [hl], a                                    ; $70f3: $77
    ld bc, $3622                                  ; $70f4: $01 $22 $36
    ld b, c                                       ; $70f7: $41
    ld h, e                                       ; $70f8: $63
    ld b, e                                       ; $70f9: $43
    ld [hl], $33                                  ; $70fa: $36 $33
    ld h, e                                       ; $70fc: $63
    ld [hl], a                                    ; $70fd: $77
    ld [hl], a                                    ; $70fe: $77
    ld [hl], a                                    ; $70ff: $77
    ld [hl], a                                    ; $7100: $77
    ld [hl], a                                    ; $7101: $77
    ld [hl], a                                    ; $7102: $77
    ld [hl], a                                    ; $7103: $77
    ld [hl], a                                    ; $7104: $77
    ld [hl], a                                    ; $7105: $77
    ld [hl], a                                    ; $7106: $77
    ld [hl], a                                    ; $7107: $77
    ld [bc], a                                    ; $7108: $02
    inc hl                                        ; $7109: $23
    ld b, [hl]                                    ; $710a: $46
    ld b, h                                       ; $710b: $44
    inc [hl]                                      ; $710c: $34
    ld h, h                                       ; $710d: $64
    ld [de], a                                    ; $710e: $12
    inc hl                                        ; $710f: $23
    ld h, e                                       ; $7110: $63
    ld b, e                                       ; $7111: $43
    inc sp                                        ; $7112: $33
    ld h, e                                       ; $7113: $63
    ld [hl], a                                    ; $7114: $77
    ld [hl], a                                    ; $7115: $77
    ld [hl], a                                    ; $7116: $77
    ld [hl], a                                    ; $7117: $77
    ld [hl], a                                    ; $7118: $77
    ld [hl], a                                    ; $7119: $77
    ld [hl], a                                    ; $711a: $77
    ld [hl], a                                    ; $711b: $77
    ld [bc], a                                    ; $711c: $02
    inc hl                                        ; $711d: $23
    ld [hl], $34                                  ; $711e: $36 $34
    ld [hl-], a                                   ; $7120: $32
    ld b, e                                       ; $7121: $43
    ld h, h                                       ; $7122: $64
    ld hl, $3633                                  ; $7123: $21 $33 $36
    inc sp                                        ; $7126: $33
    ld h, e                                       ; $7127: $63
    ld [de], a                                    ; $7128: $12
    ld h, e                                       ; $7129: $63
    ld b, a                                       ; $712a: $47
    ld [hl], a                                    ; $712b: $77
    ld [hl], a                                    ; $712c: $77
    ld [hl], a                                    ; $712d: $77
    ld [hl], a                                    ; $712e: $77
    ld [hl], a                                    ; $712f: $77
    ld [bc], a                                    ; $7130: $02
    ld [hl-], a                                   ; $7131: $32
    ld [hl], $43                                  ; $7132: $36 $43
    ld b, e                                       ; $7134: $43
    ld b, e                                       ; $7135: $43
    ld h, d                                       ; $7136: $62
    ld h, $31                                     ; $7137: $26 $31
    ld [hl], $33                                  ; $7139: $36 $33
    ld h, e                                       ; $713b: $63
    ld [de], a                                    ; $713c: $12
    ld h, e                                       ; $713d: $63
    ld b, h                                       ; $713e: $44
    inc sp                                        ; $713f: $33
    ld [de], a                                    ; $7140: $12
    ld h, a                                       ; $7141: $67
    ld [hl], a                                    ; $7142: $77
    ld [hl], a                                    ; $7143: $77
    ld [bc], a                                    ; $7144: $02
    ld b, e                                       ; $7145: $43
    ld [hl], $74                                  ; $7146: $36 $74
    ld h, e                                       ; $7148: $63
    ld b, h                                       ; $7149: $44
    ld h, c                                       ; $714a: $61
    ld b, [hl]                                    ; $714b: $46
    inc [hl]                                      ; $714c: $34
    ld b, [hl]                                    ; $714d: $46
    inc sp                                        ; $714e: $33
    ld h, e                                       ; $714f: $63
    ld b, d                                       ; $7150: $42
    inc de                                        ; $7151: $13
    ld b, a                                       ; $7152: $47
    inc [hl]                                      ; $7153: $34
    ld h, h                                       ; $7154: $64
    inc de                                        ; $7155: $13
    ld [hl], $45                                  ; $7156: $36 $45
    ld bc, $3222                                  ; $7158: $01 $22 $32
    inc [hl]                                      ; $715b: $34
    add c                                         ; $715c: $81
    inc [hl]                                      ; $715d: $34
    ld b, l                                       ; $715e: $45
    ld b, l                                       ; $715f: $45
    ld b, l                                       ; $7160: $45
    ld d, [hl]                                    ; $7161: $56
    ld d, [hl]                                    ; $7162: $56
    ld d, [hl]                                    ; $7163: $56
    ld h, a                                       ; $7164: $67
    ld h, a                                       ; $7165: $67
    ld h, a                                       ; $7166: $67
    ld h, a                                       ; $7167: $67
    ld h, a                                       ; $7168: $67
    ld h, a                                       ; $7169: $67
    ld h, a                                       ; $716a: $67
    ld h, a                                       ; $716b: $67
    ld [bc], a                                    ; $716c: $02
    inc hl                                        ; $716d: $23
    ld [hl-], a                                   ; $716e: $32
    inc [hl]                                      ; $716f: $34
    ld hl, $4545                                  ; $7170: $21 $45 $45
    ld d, [hl]                                    ; $7173: $56
    ld d, [hl]                                    ; $7174: $56
    ld h, a                                       ; $7175: $67
    ld h, a                                       ; $7176: $67
    ld h, a                                       ; $7177: $67
    ld h, a                                       ; $7178: $67
    ld h, a                                       ; $7179: $67
    ld h, a                                       ; $717a: $67
    ld h, a                                       ; $717b: $67
    ld h, a                                       ; $717c: $67
    ld h, a                                       ; $717d: $67
    ld h, a                                       ; $717e: $67
    ld h, a                                       ; $717f: $67
    ld [bc], a                                    ; $7180: $02
    ld b, c                                       ; $7181: $41
    ld b, d                                       ; $7182: $42
    ld [hl-], a                                   ; $7183: $32
    ld hl, $4356                                  ; $7184: $21 $56 $43
    ld hl, $7867                                  ; $7187: $21 $67 $78
    ld a, b                                       ; $718a: $78
    ld a, b                                       ; $718b: $78
    ld a, b                                       ; $718c: $78
    adc c                                         ; $718d: $89
    adc c                                         ; $718e: $89
    adc c                                         ; $718f: $89
    adc c                                         ; $7190: $89
    adc c                                         ; $7191: $89
    adc c                                         ; $7192: $89
    adc c                                         ; $7193: $89
    ld [bc], a                                    ; $7194: $02
    ld b, d                                       ; $7195: $42
    ld h, d                                       ; $7196: $62
    inc sp                                        ; $7197: $33
    ld hl, $5667                                  ; $7198: $21 $67 $56
    ld b, e                                       ; $719b: $43
    inc hl                                        ; $719c: $23
    ld a, b                                       ; $719d: $78
    ld a, b                                       ; $719e: $78
    ld a, b                                       ; $719f: $78
    ld a, b                                       ; $71a0: $78
    adc c                                         ; $71a1: $89
    adc c                                         ; $71a2: $89
    adc c                                         ; $71a3: $89
    adc c                                         ; $71a4: $89
    adc c                                         ; $71a5: $89
    adc c                                         ; $71a6: $89
    adc c                                         ; $71a7: $89
    ld [bc], a                                    ; $71a8: $02
    dec [hl]                                      ; $71a9: $35
    ld [de], a                                    ; $71aa: $12
    ld b, l                                       ; $71ab: $45
    ld hl, $4378                                  ; $71ac: $21 $78 $43
    inc [hl]                                      ; $71af: $34
    ld d, [hl]                                    ; $71b0: $56
    sbc c                                         ; $71b1: $99
    ld a, b                                       ; $71b2: $78
    ld a, b                                       ; $71b3: $78
    ld a, b                                       ; $71b4: $78
    adc c                                         ; $71b5: $89
    adc c                                         ; $71b6: $89
    adc c                                         ; $71b7: $89
    adc c                                         ; $71b8: $89
    adc c                                         ; $71b9: $89
    adc c                                         ; $71ba: $89
    adc c                                         ; $71bb: $89
    ld [bc], a                                    ; $71bc: $02
    dec [hl]                                      ; $71bd: $35
    ld [hl+], a                                   ; $71be: $22
    ld h, a                                       ; $71bf: $67
    ld hl, $5389                                  ; $71c0: $21 $89 $53
    ld [hl], $33                                  ; $71c3: $36 $33
    ld a, b                                       ; $71c5: $78
    ld a, b                                       ; $71c6: $78
    sbc b                                         ; $71c7: $98
    sbc b                                         ; $71c8: $98
    ld e, b                                       ; $71c9: $58
    adc c                                         ; $71ca: $89
    ld e, c                                       ; $71cb: $59
    add [hl]                                      ; $71cc: $86
    adc b                                         ; $71cd: $88
    ld e, c                                       ; $71ce: $59
    adc c                                         ; $71cf: $89
    ld [bc], a                                    ; $71d0: $02
    ld b, l                                       ; $71d1: $45
    ld [de], a                                    ; $71d2: $12
    ld [hl], h                                    ; $71d3: $74
    ld hl, $7498                                  ; $71d4: $21 $98 $74
    ld b, d                                       ; $71d7: $42
    ld b, e                                       ; $71d8: $43
    ld l, b                                       ; $71d9: $68
    ld l, b                                       ; $71da: $68
    ld [hl], a                                    ; $71db: $77
    ld l, c                                       ; $71dc: $69
    sbc b                                         ; $71dd: $98
    sbc b                                         ; $71de: $98
    ld l, b                                       ; $71df: $68
    ld a, b                                       ; $71e0: $78
    adc b                                         ; $71e1: $88
    ld a, c                                       ; $71e2: $79
    ld a, c                                       ; $71e3: $79
    ld [bc], a                                    ; $71e4: $02
    ld d, d                                       ; $71e5: $52
    sub d                                         ; $71e6: $92
    add e                                         ; $71e7: $83
    ld hl, $8375                                  ; $71e8: $21 $75 $83
    ld [hl], h                                    ; $71eb: $74
    ld h, h                                       ; $71ec: $64
    halt                                          ; $71ed: $76
    sub a                                         ; $71ee: $97
    add [hl]                                      ; $71ef: $86
    adc c                                         ; $71f0: $89
    add a                                         ; $71f1: $87
    sbc c                                         ; $71f2: $99
    adc c                                         ; $71f3: $89
    halt                                          ; $71f4: $76
    ld e, c                                       ; $71f5: $59
    halt                                          ; $71f6: $76
    add a                                         ; $71f7: $87
    ld [bc], a                                    ; $71f8: $02
    ld h, d                                       ; $71f9: $62
    sub d                                         ; $71fa: $92
    sub e                                         ; $71fb: $93
    ld hl, $5736                                  ; $71fc: $21 $36 $57
    add hl, sp                                    ; $71ff: $39
    ld h, l                                       ; $7200: $65
    add [hl]                                      ; $7201: $86
    add a                                         ; $7202: $87
    daa                                           ; $7203: $27
    ld l, b                                       ; $7204: $68
    ld l, b                                       ; $7205: $68
    sbc b                                         ; $7206: $98
    ld h, a                                       ; $7207: $67
    sub a                                         ; $7208: $97
    ld [hl], l                                    ; $7209: $75
    sbc b                                         ; $720a: $98
    ld a, b                                       ; $720b: $78
    ld [bc], a                                    ; $720c: $02
    ld d, c                                       ; $720d: $51
    sub d                                         ; $720e: $92
    inc d                                         ; $720f: $14
    ld [hl], c                                    ; $7210: $71
    inc [hl]                                      ; $7211: $34
    add c                                         ; $7212: $81
    sub l                                         ; $7213: $95
    ld l, b                                       ; $7214: $68
    sub a                                         ; $7215: $97
    sbc b                                         ; $7216: $98
    ld l, b                                       ; $7217: $68
    ld a, c                                       ; $7218: $79
    sub a                                         ; $7219: $97
    add [hl]                                      ; $721a: $86
    sbc b                                         ; $721b: $98
    ld a, c                                       ; $721c: $79
    ld b, e                                       ; $721d: $43
    ld h, $47                                     ; $721e: $26 $47
    ld [$1512], sp                                ; $7220: $08 $12 $15
    jr jr_002_7249                                ; $7223: $18 $24

    add hl, hl                                    ; $7225: $29
    dec [hl]                                      ; $7226: $35
    add hl, sp                                    ; $7227: $39
    add hl, sp                                    ; $7228: $39
    add hl, sp                                    ; $7229: $39
    ld [$1512], sp                                ; $722a: $08 $12 $15
    jr @+$26                                      ; $722d: $18 $24

    add hl, hl                                    ; $722f: $29
    dec [hl]                                      ; $7230: $35
    add hl, sp                                    ; $7231: $39
    add hl, sp                                    ; $7232: $39
    add hl, sp                                    ; $7233: $39
    ld [$1512], sp                                ; $7234: $08 $12 $15
    jr jr_002_725d                                ; $7237: $18 $24

    add hl, hl                                    ; $7239: $29
    dec [hl]                                      ; $723a: $35
    add hl, sp                                    ; $723b: $39
    add hl, sp                                    ; $723c: $39
    add hl, sp                                    ; $723d: $39
    ld [$1512], sp                                ; $723e: $08 $12 $15
    jr jr_002_7267                                ; $7241: $18 $24

    add hl, hl                                    ; $7243: $29
    dec [hl]                                      ; $7244: $35
    add hl, sp                                    ; $7245: $39
    add hl, sp                                    ; $7246: $39
    add hl, sp                                    ; $7247: $39
    add hl, bc                                    ; $7248: $09

jr_002_7249:
    ld b, h                                       ; $7249: $44
    ld sp, $b6cd                                  ; $724a: $31 $cd $b6
    ld a, [bc]                                    ; $724d: $0a
    or l                                          ; $724e: $b5
    dec de                                        ; $724f: $1b
    ld h, a                                       ; $7250: $67
    jp z, Jump_002_5609                           ; $7251: $ca $09 $56

    ret                                           ; $7254: $c9


    ld e, l                                       ; $7255: $5d
    xor h                                         ; $7256: $ac
    add hl, bc                                    ; $7257: $09
    ld c, d                                       ; $7258: $4a
    ld sp, $0045                                  ; $7259: $31 $45 $00
    ld c, b                                       ; $725c: $48

jr_002_725d:
    ld [hl], d                                    ; $725d: $72
    ld c, l                                       ; $725e: $4d
    ld [hl], d                                    ; $725f: $72
    ld d, d                                       ; $7260: $52
    ld [hl], d                                    ; $7261: $72
    ld d, a                                       ; $7262: $57
    ld [hl], d                                    ; $7263: $72
    ld e, b                                       ; $7264: $58
    ld [hl], c                                    ; $7265: $71
    ld l, h                                       ; $7266: $6c

jr_002_7267:
    ld [hl], c                                    ; $7267: $71
    add b                                         ; $7268: $80
    ld [hl], c                                    ; $7269: $71
    sub h                                         ; $726a: $94
    ld [hl], c                                    ; $726b: $71
    xor b                                         ; $726c: $a8
    ld [hl], c                                    ; $726d: $71
    cp h                                          ; $726e: $bc
    ld [hl], c                                    ; $726f: $71
    ret nc                                        ; $7270: $d0

    ld [hl], c                                    ; $7271: $71
    db $e4                                        ; $7272: $e4
    ld [hl], c                                    ; $7273: $71
    ld hl, sp+$71                                 ; $7274: $f8 $71
    inc c                                         ; $7276: $0c
    ld [hl], d                                    ; $7277: $72
    add b                                         ; $7278: $80
    ld [hl], d                                    ; $7279: $72
    sub h                                         ; $727a: $94
    ld [hl], d                                    ; $727b: $72
    xor b                                         ; $727c: $a8
    ld [hl], d                                    ; $727d: $72
    cp h                                          ; $727e: $bc
    ld [hl], d                                    ; $727f: $72
    jr c, jr_002_72f0                             ; $7280: $38 $6e

    ld c, h                                       ; $7282: $4c
    ld l, [hl]                                    ; $7283: $6e
    ld h, b                                       ; $7284: $60
    ld l, [hl]                                    ; $7285: $6e
    ld [hl], h                                    ; $7286: $74
    ld l, [hl]                                    ; $7287: $6e
    adc b                                         ; $7288: $88
    ld l, [hl]                                    ; $7289: $6e
    sbc h                                         ; $728a: $9c
    ld l, [hl]                                    ; $728b: $6e
    or b                                          ; $728c: $b0
    ld l, [hl]                                    ; $728d: $6e
    call nz, $d86e                                ; $728e: $c4 $6e $d8
    ld l, [hl]                                    ; $7291: $6e
    db $ec                                        ; $7292: $ec
    ld l, [hl]                                    ; $7293: $6e
    nop                                           ; $7294: $00
    ld l, a                                       ; $7295: $6f
    inc d                                         ; $7296: $14
    ld l, a                                       ; $7297: $6f
    jr z, @+$71                                   ; $7298: $28 $6f

    inc a                                         ; $729a: $3c
    ld l, a                                       ; $729b: $6f
    ld d, b                                       ; $729c: $50
    ld l, a                                       ; $729d: $6f
    ld h, h                                       ; $729e: $64
    ld l, a                                       ; $729f: $6f
    ld a, b                                       ; $72a0: $78
    ld l, a                                       ; $72a1: $6f
    adc h                                         ; $72a2: $8c
    ld l, a                                       ; $72a3: $6f
    and b                                         ; $72a4: $a0
    ld l, a                                       ; $72a5: $6f
    or h                                          ; $72a6: $b4
    ld l, a                                       ; $72a7: $6f
    ret z                                         ; $72a8: $c8

    ld l, a                                       ; $72a9: $6f
    call c, $f06f                                 ; $72aa: $dc $6f $f0
    ld l, a                                       ; $72ad: $6f
    inc b                                         ; $72ae: $04
    ld [hl], b                                    ; $72af: $70
    jr jr_002_7322                                ; $72b0: $18 $70

    inc l                                         ; $72b2: $2c
    ld [hl], b                                    ; $72b3: $70
    ld b, b                                       ; $72b4: $40
    ld [hl], b                                    ; $72b5: $70
    ld d, h                                       ; $72b6: $54
    ld [hl], b                                    ; $72b7: $70
    ld l, b                                       ; $72b8: $68
    ld [hl], b                                    ; $72b9: $70
    ld a, h                                       ; $72ba: $7c
    ld [hl], b                                    ; $72bb: $70
    sub b                                         ; $72bc: $90
    ld [hl], b                                    ; $72bd: $70
    and h                                         ; $72be: $a4
    ld [hl], b                                    ; $72bf: $70
    cp b                                          ; $72c0: $b8
    ld [hl], b                                    ; $72c1: $70
    call z, $e070                                 ; $72c2: $cc $70 $e0
    ld [hl], b                                    ; $72c5: $70
    db $f4                                        ; $72c6: $f4
    ld [hl], b                                    ; $72c7: $70
    ld [$1c71], sp                                ; $72c8: $08 $71 $1c
    ld [hl], c                                    ; $72cb: $71
    jr nc, jr_002_733f                            ; $72cc: $30 $71

    ld b, h                                       ; $72ce: $44
    ld [hl], c                                    ; $72cf: $71
    ld bc, $72db                                  ; $72d0: $01 $db $72
    add b                                         ; $72d3: $80
    ld bc, $1601                                  ; $72d4: $01 $01 $16
    ld [hl], l                                    ; $72d7: $75
    sub b                                         ; $72d8: $90
    nop                                           ; $72d9: $00
    nop                                           ; $72da: $00
    ld e, $00                                     ; $72db: $1e $00
    or d                                          ; $72dd: $b2
    rst RST_38                                    ; $72de: $ff
    rst RST_38                                    ; $72df: $ff
    rlca                                          ; $72e0: $07
    ld b, $0c                                     ; $72e1: $06 $0c
    rlca                                          ; $72e3: $07
    adc h                                         ; $72e4: $8c
    ld [$0f0f], sp                                ; $72e5: $08 $0f $0f
    dec c                                         ; $72e8: $0d
    ld [$0c0f], sp                                ; $72e9: $08 $0f $0c
    inc c                                         ; $72ec: $0c
    add hl, bc                                    ; $72ed: $09
    ccf                                           ; $72ee: $3f
    rst RST_38                                    ; $72ef: $ff

jr_002_72f0:
    add hl, sp                                    ; $72f0: $39
    inc bc                                        ; $72f1: $03
    db $fd                                        ; $72f2: $fd
    inc a                                         ; $72f3: $3c
    xor $00                                       ; $72f4: $ee $00
    or e                                          ; $72f6: $b3
    add e                                         ; $72f7: $83
    db $fc                                        ; $72f8: $fc
    dec a                                         ; $72f9: $3d
    rst RST_38                                    ; $72fa: $ff
    db $fc                                        ; $72fb: $fc
    dec a                                         ; $72fc: $3d
    cp a                                          ; $72fd: $bf
    rst RST_38                                    ; $72fe: $ff
    rst RST_38                                    ; $72ff: $ff
    ldh [$ff60], a                                ; $7300: $e0 $60
    ld [hl], b                                    ; $7302: $70
    jr nz, jr_002_7336                            ; $7303: $20 $31

    db $10                                        ; $7305: $10

jr_002_7306:
    ldh a, [$fff0]                                ; $7306: $f0 $f0
    jr nc, jr_002_735a                            ; $7308: $30 $50

    ret nc                                        ; $730a: $d0

    ld [hl], b                                    ; $730b: $70
    or b                                          ; $730c: $b0
    sub b                                         ; $730d: $90
    db $fc                                        ; $730e: $fc
    rst RST_38                                    ; $730f: $ff
    ld c, $00                                     ; $7310: $0e $00
    add c                                         ; $7312: $81
    db $db                                        ; $7313: $db
    rrca                                          ; $7314: $0f
    nop                                           ; $7315: $00
    add c                                         ; $7316: $81
    jp Jump_000_0005                              ; $7317: $c3 $05 $00


jr_002_731a:
    add c                                         ; $731a: $81
    jr jr_002_7326                                ; $731b: $18 $09

    nop                                           ; $731d: $00

jr_002_731e:
    add c                                         ; $731e: $81
    db $db                                        ; $731f: $db

jr_002_7320:
    add hl, bc                                    ; $7320: $09
    nop                                           ; $7321: $00

jr_002_7322:
    adc b                                         ; $7322: $88

jr_002_7323:
    inc bc                                        ; $7323: $03
    inc bc                                        ; $7324: $03
    inc b                                         ; $7325: $04

jr_002_7326:
    inc b                                         ; $7326: $04
    add hl, bc                                    ; $7327: $09
    ld [$0809], sp                                ; $7328: $08 $09 $08
    ld [$a800], sp                                ; $732b: $08 $00 $a8
    ret nz                                        ; $732e: $c0

    ret nz                                        ; $732f: $c0

    ld h, b                                       ; $7330: $60
    jr nz, jr_002_7323                            ; $7331: $20 $f0

    db $10                                        ; $7333: $10
    jr nc, jr_002_7306                            ; $7334: $30 $d0

jr_002_7336:
    add hl, bc                                    ; $7336: $09
    ld [$0809], sp                                ; $7337: $08 $09 $08

jr_002_733a:
    add hl, bc                                    ; $733a: $09
    ld [$0809], sp                                ; $733b: $08 $09 $08
    add hl, bc                                    ; $733e: $09

jr_002_733f:
    ld [$1011], sp                                ; $733f: $08 $11 $10
    inc de                                        ; $7342: $13
    db $10                                        ; $7343: $10
    inc de                                        ; $7344: $13
    db $10                                        ; $7345: $10
    jr nc, @-$2e                                  ; $7346: $30 $d0

    jr nc, jr_002_731a                            ; $7348: $30 $d0

    jr nc, @-$2e                                  ; $734a: $30 $d0

    jr nc, jr_002_731e                            ; $734c: $30 $d0

    jr nc, jr_002_7320                            ; $734e: $30 $d0

    jr jr_002_733a                                ; $7350: $18 $e8

    sbc b                                         ; $7352: $98
    ld l, b                                       ; $7353: $68
    sbc b                                         ; $7354: $98
    ld l, b                                       ; $7355: $68
    ld c, $00                                     ; $7356: $0e $00
    add c                                         ; $7358: $81
    inc bc                                        ; $7359: $03

jr_002_735a:
    inc bc                                        ; $735a: $03
    nop                                           ; $735b: $00
    add a                                         ; $735c: $87
    daa                                           ; $735d: $27
    jr nz, jr_002_73af                            ; $735e: $20 $4f

    ld b, b                                       ; $7360: $40
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    cp a                                          ; $7363: $bf
    dec b                                         ; $7364: $05
    nop                                           ; $7365: $00
    add c                                         ; $7366: $81
    rst RST_38                                    ; $7367: $ff
    inc bc                                        ; $7368: $03
    nop                                           ; $7369: $00
    adc b                                         ; $736a: $88
    call z, $c634                                 ; $736b: $cc $34 $c6
    ld a, [hl-]                                   ; $736e: $3a
    nop                                           ; $736f: $00
    nop                                           ; $7370: $00
    pop af                                        ; $7371: $f1
    ld c, $04                                     ; $7372: $0e $04
    nop                                           ; $7374: $00
    add c                                         ; $7375: $81
    rst RST_38                                    ; $7376: $ff
    rrca                                          ; $7377: $0f
    nop                                           ; $7378: $00
    add d                                         ; $7379: $82
    ret nz                                        ; $737a: $c0

    nop                                           ; $737b: $00
    add b                                         ; $737c: $80
    add [hl]                                      ; $737d: $86
    ld [$55aa], sp                                ; $737e: $08 $aa $55
    xor d                                         ; $7381: $aa
    ld d, l                                       ; $7382: $55
    xor d                                         ; $7383: $aa
    ld d, l                                       ; $7384: $55
    xor d                                         ; $7385: $aa
    ld d, l                                       ; $7386: $55
    inc b                                         ; $7387: $04
    nop                                           ; $7388: $00
    add c                                         ; $7389: $81
    rst RST_20                                    ; $738a: $e7
    add hl, bc                                    ; $738b: $09
    nop                                           ; $738c: $00
    sub c                                         ; $738d: $91
    jp $ff3c                                      ; $738e: $c3 $3c $ff


    nop                                           ; $7391: $00
    rst RST_38                                    ; $7392: $ff
    nop                                           ; $7393: $00
    rst RST_38                                    ; $7394: $ff
    nop                                           ; $7395: $00
    rst RST_38                                    ; $7396: $ff
    nop                                           ; $7397: $00
    rst RST_38                                    ; $7398: $ff
    nop                                           ; $7399: $00
    rst RST_38                                    ; $739a: $ff
    nop                                           ; $739b: $00
    rst RST_38                                    ; $739c: $ff
    nop                                           ; $739d: $00
    rst RST_38                                    ; $739e: $ff
    inc bc                                        ; $739f: $03
    nop                                           ; $73a0: $00
    rst RST_38                                    ; $73a1: $ff
    inc e                                         ; $73a2: $1c
    inc e                                         ; $73a3: $1c
    ld [hl+], a                                   ; $73a4: $22
    ld a, $49                                     ; $73a5: $3e $49
    ld a, a                                       ; $73a7: $7f
    ld d, l                                       ; $73a8: $55
    ld [hl], a                                    ; $73a9: $77
    ld d, l                                       ; $73aa: $55
    ld [hl], a                                    ; $73ab: $77
    ld [hl], a                                    ; $73ac: $77
    ld d, l                                       ; $73ad: $55
    ld [hl], a                                    ; $73ae: $77

jr_002_73af:
    ld d, l                                       ; $73af: $55
    nop                                           ; $73b0: $00
    nop                                           ; $73b1: $00
    ld a, a                                       ; $73b2: $7f
    ld a, a                                       ; $73b3: $7f
    ld b, c                                       ; $73b4: $41
    ld a, a                                       ; $73b5: $7f
    ld [hl], a                                    ; $73b6: $77
    ld a, a                                       ; $73b7: $7f
    inc d                                         ; $73b8: $14
    inc e                                         ; $73b9: $1c
    inc d                                         ; $73ba: $14
    inc e                                         ; $73bb: $1c
    inc e                                         ; $73bc: $1c
    inc d                                         ; $73bd: $14
    inc e                                         ; $73be: $1c
    inc d                                         ; $73bf: $14
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    ld [hl], a                                    ; $73c2: $77
    ld [hl], a                                    ; $73c3: $77
    ld d, l                                       ; $73c4: $55
    ld [hl], a                                    ; $73c5: $77
    ld d, l                                       ; $73c6: $55
    ld [hl], a                                    ; $73c7: $77
    ld d, l                                       ; $73c8: $55
    ld [hl], a                                    ; $73c9: $77
    ld d, l                                       ; $73ca: $55
    ld [hl], a                                    ; $73cb: $77
    ld a, a                                       ; $73cc: $7f
    ld c, l                                       ; $73cd: $4d
    ld a, a                                       ; $73ce: $7f
    ld c, l                                       ; $73cf: $4d
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    ld a, a                                       ; $73d2: $7f
    ld a, a                                       ; $73d3: $7f
    ld b, c                                       ; $73d4: $41
    ld a, a                                       ; $73d5: $7f
    ld e, a                                       ; $73d6: $5f
    ld a, a                                       ; $73d7: $7f
    ld d, b                                       ; $73d8: $50
    ld [hl], b                                    ; $73d9: $70
    ld d, b                                       ; $73da: $50
    ld [hl], b                                    ; $73db: $70
    ld [hl], b                                    ; $73dc: $70
    ld d, b                                       ; $73dd: $50
    ld [hl], b                                    ; $73de: $70
    ld d, b                                       ; $73df: $50
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    ld [hl], a                                    ; $73e2: $77
    ld [hl], a                                    ; $73e3: $77
    ld d, l                                       ; $73e4: $55
    ld [hl], a                                    ; $73e5: $77
    ld d, l                                       ; $73e6: $55
    ld [hl], a                                    ; $73e7: $77
    ld d, l                                       ; $73e8: $55
    ld [hl], a                                    ; $73e9: $77
    ld c, c                                       ; $73ea: $49
    ld a, a                                       ; $73eb: $7f
    ld a, $2a                                     ; $73ec: $3e $2a
    ld a, $2a                                     ; $73ee: $3e $2a
    nop                                           ; $73f0: $00
    nop                                           ; $73f1: $00
    ld [hl], b                                    ; $73f2: $70
    ld [hl], b                                    ; $73f3: $70
    ld d, b                                       ; $73f4: $50
    ld [hl], b                                    ; $73f5: $70
    ld d, b                                       ; $73f6: $50
    ld [hl], b                                    ; $73f7: $70
    ld d, b                                       ; $73f8: $50
    ld [hl], b                                    ; $73f9: $70
    ld d, b                                       ; $73fa: $50
    ld [hl], b                                    ; $73fb: $70
    ld [hl], b                                    ; $73fc: $70
    ld d, b                                       ; $73fd: $50
    ld [hl], b                                    ; $73fe: $70
    ld d, b                                       ; $73ff: $50
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    ld [hl], a                                    ; $7402: $77
    ld [hl], a                                    ; $7403: $77
    ld d, l                                       ; $7404: $55
    ld [hl], a                                    ; $7405: $77
    ld d, l                                       ; $7406: $55
    ld [hl], a                                    ; $7407: $77
    ld d, l                                       ; $7408: $55
    ld [hl], a                                    ; $7409: $77
    ld d, l                                       ; $740a: $55
    ld [hl], a                                    ; $740b: $77
    ld [hl], a                                    ; $740c: $77
    ld d, l                                       ; $740d: $55
    ld [hl], a                                    ; $740e: $77
    ld d, l                                       ; $740f: $55
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    inc e                                         ; $7412: $1c
    inc e                                         ; $7413: $1c
    inc d                                         ; $7414: $14
    inc e                                         ; $7415: $1c
    inc d                                         ; $7416: $14
    inc e                                         ; $7417: $1c
    inc d                                         ; $7418: $14
    inc e                                         ; $7419: $1c
    inc d                                         ; $741a: $14
    inc e                                         ; $741b: $1c
    inc e                                         ; $741c: $1c
    inc d                                         ; $741d: $14
    inc e                                         ; $741e: $1c
    inc d                                         ; $741f: $14
    ld [hl], a                                    ; $7420: $77
    add e                                         ; $7421: $83
    ld d, l                                       ; $7422: $55
    ld [hl], a                                    ; $7423: $77
    ld d, a                                       ; $7424: $57
    inc b                                         ; $7425: $04
    ld d, b                                       ; $7426: $50
    adc e                                         ; $7427: $8b
    ld e, a                                       ; $7428: $5f
    ld e, a                                       ; $7429: $5f
    ld e, c                                       ; $742a: $59
    ld e, c                                       ; $742b: $59
    ld a, a                                       ; $742c: $7f
    ld e, l                                       ; $742d: $5d
    ld [hl], a                                    ; $742e: $77
    ld d, l                                       ; $742f: $55
    ld [hl], a                                    ; $7430: $77
    ld d, l                                       ; $7431: $55
    ld [hl], a                                    ; $7432: $77
    add hl, bc                                    ; $7433: $09
    ld d, l                                       ; $7434: $55
    add a                                         ; $7435: $87
    ld [hl], a                                    ; $7436: $77
    ld d, l                                       ; $7437: $55
    ld [hl], a                                    ; $7438: $77
    ld d, l                                       ; $7439: $55
    inc e                                         ; $743a: $1c
    inc d                                         ; $743b: $14
    inc e                                         ; $743c: $1c
    add hl, bc                                    ; $743d: $09
    inc d                                         ; $743e: $14
    adc b                                         ; $743f: $88
    inc e                                         ; $7440: $1c
    inc d                                         ; $7441: $14
    inc e                                         ; $7442: $1c
    inc d                                         ; $7443: $14
    ld a, a                                       ; $7444: $7f
    ld c, l                                       ; $7445: $4d
    ld a, a                                       ; $7446: $7f
    ld c, l                                       ; $7447: $4d
    add b                                         ; $7448: $80
    add e                                         ; $7449: $83
    inc b                                         ; $744a: $04
    ld b, l                                       ; $744b: $45
    ld d, l                                       ; $744c: $55
    ld d, l                                       ; $744d: $55
    ld d, c                                       ; $744e: $51
    adc b                                         ; $744f: $88
    ld a, a                                       ; $7450: $7f
    ld e, c                                       ; $7451: $59
    ld a, a                                       ; $7452: $7f
    ld e, c                                       ; $7453: $59
    ld [hl], b                                    ; $7454: $70
    ld d, b                                       ; $7455: $50
    ld [hl], b                                    ; $7456: $70
    ld d, b                                       ; $7457: $50
    add b                                         ; $7458: $80
    add e                                         ; $7459: $83
    inc b                                         ; $745a: $04
    ld e, [hl]                                    ; $745b: $5e
    ld b, d                                       ; $745c: $42
    ld e, [hl]                                    ; $745d: $5e
    ld d, b                                       ; $745e: $50
    adc b                                         ; $745f: $88
    ld [hl], b                                    ; $7460: $70
    ld d, b                                       ; $7461: $50
    ld [hl], b                                    ; $7462: $70
    ld d, b                                       ; $7463: $50
    ld a, $2a                                     ; $7464: $3e $2a
    ld a, $22                                     ; $7466: $3e $22
    ld [$8714], sp                                ; $7468: $08 $14 $87
    ld a, $22                                     ; $746b: $3e $22
    ld a, $2a                                     ; $746d: $3e $2a
    ld [hl], b                                    ; $746f: $70
    ld d, b                                       ; $7470: $50
    ld [hl], b                                    ; $7471: $70
    add hl, bc                                    ; $7472: $09
    ld d, b                                       ; $7473: $50
    adc b                                         ; $7474: $88
    ld [hl], b                                    ; $7475: $70
    ld d, b                                       ; $7476: $50
    ld [hl], b                                    ; $7477: $70
    ld d, b                                       ; $7478: $50
    ld [hl], a                                    ; $7479: $77
    ld d, l                                       ; $747a: $55
    ld [hl], a                                    ; $747b: $77
    ld d, l                                       ; $747c: $55
    add b                                         ; $747d: $80
    add e                                         ; $747e: $83
    inc b                                         ; $747f: $04
    ld c, c                                       ; $7480: $49
    ld a, [hl+]                                   ; $7481: $2a
    ld a, [hl+]                                   ; $7482: $2a
    ld a, [hl+]                                   ; $7483: $2a
    xor a                                         ; $7484: $af
    ld a, $2a                                     ; $7485: $3e $2a
    ld a, $2a                                     ; $7487: $3e $2a
    ld [hl], a                                    ; $7489: $77
    ld d, l                                       ; $748a: $55
    ld [hl], a                                    ; $748b: $77
    ld d, l                                       ; $748c: $55
    ld d, l                                       ; $748d: $55
    ld [hl], a                                    ; $748e: $77
    ld d, l                                       ; $748f: $55
    ld [hl], a                                    ; $7490: $77
    ld c, l                                       ; $7491: $4d
    ld a, a                                       ; $7492: $7f
    ld hl, $1f3f                                  ; $7493: $21 $3f $1f
    rra                                           ; $7496: $1f
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    ld [hl], a                                    ; $7499: $77
    ld d, l                                       ; $749a: $55
    ld [hl], a                                    ; $749b: $77
    ld d, l                                       ; $749c: $55
    ld d, l                                       ; $749d: $55
    ld [hl], a                                    ; $749e: $77
    ld d, l                                       ; $749f: $55
    ld [hl], a                                    ; $74a0: $77
    ld c, c                                       ; $74a1: $49
    ld a, a                                       ; $74a2: $7f
    ld [hl+], a                                   ; $74a3: $22
    ld a, $1c                                     ; $74a4: $3e $1c
    inc e                                         ; $74a6: $1c
    nop                                           ; $74a7: $00
    nop                                           ; $74a8: $00
    inc e                                         ; $74a9: $1c
    inc d                                         ; $74aa: $14
    inc e                                         ; $74ab: $1c
    inc d                                         ; $74ac: $14
    inc d                                         ; $74ad: $14
    inc e                                         ; $74ae: $1c
    inc d                                         ; $74af: $14
    inc e                                         ; $74b0: $1c
    inc d                                         ; $74b1: $14
    inc e                                         ; $74b2: $1c
    inc d                                         ; $74b3: $14
    inc bc                                        ; $74b4: $03
    inc e                                         ; $74b5: $1c
    adc l                                         ; $74b6: $8d
    nop                                           ; $74b7: $00
    nop                                           ; $74b8: $00
    ld a, a                                       ; $74b9: $7f
    ld e, c                                       ; $74ba: $59
    ld a, a                                       ; $74bb: $7f
    ld e, c                                       ; $74bc: $59
    ld d, l                                       ; $74bd: $55
    ld [hl], a                                    ; $74be: $77
    ld d, l                                       ; $74bf: $55
    ld [hl], a                                    ; $74c0: $77
    ld d, l                                       ; $74c1: $55
    ld [hl], a                                    ; $74c2: $77
    ld d, l                                       ; $74c3: $55
    inc bc                                        ; $74c4: $03
    ld [hl], a                                    ; $74c5: $77
    adc l                                         ; $74c6: $8d
    nop                                           ; $74c7: $00
    nop                                           ; $74c8: $00
    ld [hl], b                                    ; $74c9: $70
    ld d, b                                       ; $74ca: $50
    ld [hl], b                                    ; $74cb: $70
    ld d, b                                       ; $74cc: $50
    ld d, b                                       ; $74cd: $50
    ld [hl], b                                    ; $74ce: $70
    ld d, b                                       ; $74cf: $50
    ld [hl], b                                    ; $74d0: $70
    ld e, a                                       ; $74d1: $5f
    ld a, a                                       ; $74d2: $7f
    ld b, c                                       ; $74d3: $41
    inc bc                                        ; $74d4: $03
    ld a, a                                       ; $74d5: $7f
    adc l                                         ; $74d6: $8d
    nop                                           ; $74d7: $00
    nop                                           ; $74d8: $00
    ld a, $2a                                     ; $74d9: $3e $2a
    ld a, $2a                                     ; $74db: $3e $2a
    ld c, c                                       ; $74dd: $49
    ld a, a                                       ; $74de: $7f
    ld d, l                                       ; $74df: $55
    ld [hl], a                                    ; $74e0: $77
    ld d, l                                       ; $74e1: $55
    ld [hl], a                                    ; $74e2: $77
    ld d, l                                       ; $74e3: $55
    inc bc                                        ; $74e4: $03
    ld [hl], a                                    ; $74e5: $77
    adc l                                         ; $74e6: $8d
    nop                                           ; $74e7: $00
    nop                                           ; $74e8: $00
    ld a, $22                                     ; $74e9: $3e $22
    inc e                                         ; $74eb: $1c
    inc d                                         ; $74ec: $14
    inc d                                         ; $74ed: $14
    inc e                                         ; $74ee: $1c
    inc d                                         ; $74ef: $14
    inc e                                         ; $74f0: $1c
    inc d                                         ; $74f1: $14
    inc e                                         ; $74f2: $1c
    inc d                                         ; $74f3: $14
    inc bc                                        ; $74f4: $03
    inc e                                         ; $74f5: $1c
    adc l                                         ; $74f6: $8d
    nop                                           ; $74f7: $00
    nop                                           ; $74f8: $00
    inc e                                         ; $74f9: $1c
    inc d                                         ; $74fa: $14
    inc e                                         ; $74fb: $1c
    inc d                                         ; $74fc: $14
    inc e                                         ; $74fd: $1c
    inc e                                         ; $74fe: $1c
    nop                                           ; $74ff: $00
    nop                                           ; $7500: $00
    inc e                                         ; $7501: $1c
    inc e                                         ; $7502: $1c
    inc d                                         ; $7503: $14
    inc bc                                        ; $7504: $03
    inc e                                         ; $7505: $1c
    add c                                         ; $7506: $81
    nop                                           ; $7507: $00
    add b                                         ; $7508: $80
    add d                                         ; $7509: $82
    ld [$55aa], sp                                ; $750a: $08 $aa $55
    xor d                                         ; $750d: $aa
    ld d, l                                       ; $750e: $55
    xor d                                         ; $750f: $aa
    ld d, l                                       ; $7510: $55
    xor d                                         ; $7511: $aa
    ld d, l                                       ; $7512: $55
    add c                                         ; $7513: $81
    nop                                           ; $7514: $00
    nop                                           ; $7515: $00
    ld b, $03                                     ; $7516: $06 $03
    add l                                         ; $7518: $85
    rra                                           ; $7519: $1f
    inc e                                         ; $751a: $1c
    rra                                           ; $751b: $1f
    inc e                                         ; $751c: $1c
    rra                                           ; $751d: $1f
    rlca                                          ; $751e: $07
    inc e                                         ; $751f: $1c
    adc [hl]                                      ; $7520: $8e
    rra                                           ; $7521: $1f
    inc e                                         ; $7522: $1c
    rra                                           ; $7523: $1f
    inc e                                         ; $7524: $1c
    rra                                           ; $7525: $1f
    inc e                                         ; $7526: $1c
    rra                                           ; $7527: $1f
    inc e                                         ; $7528: $1c
    rra                                           ; $7529: $1f
    inc e                                         ; $752a: $1c
    rra                                           ; $752b: $1f
    inc e                                         ; $752c: $1c
    inc bc                                        ; $752d: $03
    inc bc                                        ; $752e: $03
    ld b, $ff                                     ; $752f: $06 $ff
    adc e                                         ; $7531: $8b
    adc a                                         ; $7532: $8f
    nop                                           ; $7533: $00
    adc a                                         ; $7534: $8f
    nop                                           ; $7535: $00
    adc a                                         ; $7536: $8f
    nop                                           ; $7537: $00
    ld [hl], c                                    ; $7538: $71
    rrca                                          ; $7539: $0f
    ld [hl], c                                    ; $753a: $71
    rrca                                          ; $753b: $0f
    ld [hl], c                                    ; $753c: $71
    add b                                         ; $753d: $80
    add l                                         ; $753e: $85
    ld b, $0f                                     ; $753f: $06 $0f
    ld a, a                                       ; $7541: $7f
    ld a, a                                       ; $7542: $7f
    ld a, a                                       ; $7543: $7f
    ld a, a                                       ; $7544: $7f
    ld a, a                                       ; $7545: $7f
    add d                                         ; $7546: $82
    ld a, a                                       ; $7547: $7f
    adc a                                         ; $7548: $8f
    rlca                                          ; $7549: $07
    rst RST_38                                    ; $754a: $ff
    add [hl]                                      ; $754b: $86
    ld hl, sp+$07                                 ; $754c: $f8 $07
    ld hl, sp+$07                                 ; $754e: $f8 $07
    ld hl, sp+$07                                 ; $7550: $f8 $07
    ld a, [de]                                    ; $7552: $1a
    rst RST_38                                    ; $7553: $ff
    ld b, $fc                                     ; $7554: $06 $fc
    ld b, $ff                                     ; $7556: $06 $ff
    inc c                                         ; $7558: $0c
    db $fc                                        ; $7559: $fc
    add b                                         ; $755a: $80
    add e                                         ; $755b: $83
    inc b                                         ; $755c: $04
    ldh [$fff0], a                                ; $755d: $e0 $f0
    ldh a, [$fff0]                                ; $755f: $f0 $f0
    ld b, $00                                     ; $7561: $06 $00
    ld b, $f0                                     ; $7563: $06 $f0
    ld c, $00                                     ; $7565: $0e $00
    inc b                                         ; $7567: $04
    inc bc                                        ; $7568: $03
    ld b, $1f                                     ; $7569: $06 $1f
    add [hl]                                      ; $756b: $86
    db $fc                                        ; $756c: $fc
    ldh [$fffc], a                                ; $756d: $e0 $fc
    ldh [$fffc], a                                ; $756f: $e0 $fc
    ldh [rTMA], a                                 ; $7571: $e0 $06
    db $e3                                        ; $7573: $e3
    add b                                         ; $7574: $80
    add h                                         ; $7575: $84
    dec b                                         ; $7576: $05
    db $e3                                        ; $7577: $e3
    db $e3                                        ; $7578: $e3
    db $e3                                        ; $7579: $e3
    rra                                           ; $757a: $1f
    rra                                           ; $757b: $1f
    add e                                         ; $757c: $83
    adc a                                         ; $757d: $8f
    rst RST_38                                    ; $757e: $ff
    adc a                                         ; $757f: $8f
    rlca                                          ; $7580: $07
    rst RST_38                                    ; $7581: $ff
    sub d                                         ; $7582: $92
    ld bc, $0100                                  ; $7583: $01 $00 $01
    nop                                           ; $7586: $00
    ld bc, $8f00                                  ; $7587: $01 $00 $8f
    add b                                         ; $758a: $80
    adc a                                         ; $758b: $8f
    add b                                         ; $758c: $80
    adc a                                         ; $758d: $8f
    add b                                         ; $758e: $80
    adc a                                         ; $758f: $8f
    add b                                         ; $7590: $80
    adc a                                         ; $7591: $8f
    add b                                         ; $7592: $80
    adc a                                         ; $7593: $8f
    add b                                         ; $7594: $80
    ld c, $ff                                     ; $7595: $0e $ff
    add [hl]                                      ; $7597: $86
    rst RST_00                                    ; $7598: $c7
    nop                                           ; $7599: $00
    rst RST_00                                    ; $759a: $c7
    nop                                           ; $759b: $00
    rst RST_00                                    ; $759c: $c7
    nop                                           ; $759d: $00
    add b                                         ; $759e: $80
    add [hl]                                      ; $759f: $86
    ld b, $07                                     ; $75a0: $06 $07
    rlca                                          ; $75a2: $07
    rlca                                          ; $75a3: $07
    rlca                                          ; $75a4: $07
    rlca                                          ; $75a5: $07
    rlca                                          ; $75a6: $07
    inc b                                         ; $75a7: $04
    rst RST_38                                    ; $75a8: $ff
    inc b                                         ; $75a9: $04
    ldh [rTMA], a                                 ; $75aa: $e0 $06
    db $fc                                        ; $75ac: $fc
    add [hl]                                      ; $75ad: $86
    db $e3                                        ; $75ae: $e3
    rra                                           ; $75af: $1f
    db $e3                                        ; $75b0: $e3
    rra                                           ; $75b1: $1f
    db $e3                                        ; $75b2: $e3
    rra                                           ; $75b3: $1f
    add b                                         ; $75b4: $80
    add l                                         ; $75b5: $85
    ld b, $e3                                     ; $75b6: $06 $e3
    db $e3                                        ; $75b8: $e3
    db $e3                                        ; $75b9: $e3
    db $e3                                        ; $75ba: $e3
    db $e3                                        ; $75bb: $e3
    db $e3                                        ; $75bc: $e3
    add h                                         ; $75bd: $84
    rst RST_38                                    ; $75be: $ff
    db $fc                                        ; $75bf: $fc
    rst RST_38                                    ; $75c0: $ff
    db $fc                                        ; $75c1: $fc
    ld a, [bc]                                    ; $75c2: $0a
    nop                                           ; $75c3: $00
    inc de                                        ; $75c4: $13
    add b                                         ; $75c5: $80
    add l                                         ; $75c6: $85
    nop                                           ; $75c7: $00
    add b                                         ; $75c8: $80
    nop                                           ; $75c9: $00
    rst RST_38                                    ; $75ca: $ff
    rra                                           ; $75cb: $1f
    inc c                                         ; $75cc: $0c
    inc bc                                        ; $75cd: $03
    ld [de], a                                    ; $75ce: $12
    nop                                           ; $75cf: $00
    adc b                                         ; $75d0: $88
    rst RST_38                                    ; $75d1: $ff
    rst RST_38                                    ; $75d2: $ff
    pop af                                        ; $75d3: $f1
    adc a                                         ; $75d4: $8f
    pop af                                        ; $75d5: $f1
    adc a                                         ; $75d6: $8f
    pop af                                        ; $75d7: $f1
    adc a                                         ; $75d8: $8f
    ld b, $ff                                     ; $75d9: $06 $ff
    adc h                                         ; $75db: $8c
    ld [hl], c                                    ; $75dc: $71
    ld a, a                                       ; $75dd: $7f
    ld [hl], c                                    ; $75de: $71
    ld a, a                                       ; $75df: $7f
    ld [hl], c                                    ; $75e0: $71
    ld a, a                                       ; $75e1: $7f
    ld a, a                                       ; $75e2: $7f
    ld [hl], c                                    ; $75e3: $71
    ld a, a                                       ; $75e4: $7f
    ld [hl], c                                    ; $75e5: $71
    ld a, a                                       ; $75e6: $7f
    ld [hl], c                                    ; $75e7: $71
    inc b                                         ; $75e8: $04
    ld a, a                                       ; $75e9: $7f
    inc b                                         ; $75ea: $04
    rst RST_38                                    ; $75eb: $ff
    add [hl]                                      ; $75ec: $86
    ld hl, sp-$39                                 ; $75ed: $f8 $c7
    ld hl, sp-$39                                 ; $75ef: $f8 $c7
    ld hl, sp-$39                                 ; $75f1: $f8 $c7
    ld b, $ff                                     ; $75f3: $06 $ff
    adc h                                         ; $75f5: $8c
    rst RST_00                                    ; $75f6: $c7
    rst RST_38                                    ; $75f7: $ff
    rst RST_00                                    ; $75f8: $c7
    rst RST_38                                    ; $75f9: $ff
    rst RST_00                                    ; $75fa: $c7
    rst RST_38                                    ; $75fb: $ff
    rst RST_38                                    ; $75fc: $ff
    rst RST_00                                    ; $75fd: $c7
    rst RST_38                                    ; $75fe: $ff
    rst RST_00                                    ; $75ff: $c7
    rst RST_38                                    ; $7600: $ff
    rst RST_00                                    ; $7601: $c7
    rlca                                          ; $7602: $07
    rst RST_38                                    ; $7603: $ff
    rlca                                          ; $7604: $07
    db $fc                                        ; $7605: $fc
    adc e                                         ; $7606: $8b
    db $e3                                        ; $7607: $e3
    rst RST_38                                    ; $7608: $ff
    db $e3                                        ; $7609: $e3
    rst RST_38                                    ; $760a: $ff
    db $e3                                        ; $760b: $e3
    rst RST_38                                    ; $760c: $ff
    add e                                         ; $760d: $83
    add b                                         ; $760e: $80
    add e                                         ; $760f: $83
    add b                                         ; $7610: $80
    add e                                         ; $7611: $83
    dec bc                                        ; $7612: $0b
    add b                                         ; $7613: $80
    add e                                         ; $7614: $83
    rst RST_38                                    ; $7615: $ff
    rst RST_38                                    ; $7616: $ff
    add b                                         ; $7617: $80
    rlca                                          ; $7618: $07
    nop                                           ; $7619: $00
    ld b, $80                                     ; $761a: $06 $80
    add [hl]                                      ; $761c: $86
    ldh a, [rSVBK]                                ; $761d: $f0 $70
    ldh a, [rSVBK]                                ; $761f: $f0 $70
    ldh a, [rSVBK]                                ; $7621: $f0 $70
    ld a, [bc]                                    ; $7623: $0a
    nop                                           ; $7624: $00
    add d                                         ; $7625: $82
    ld hl, sp-$01                                 ; $7626: $f8 $ff
    ld [de], a                                    ; $7628: $12
    nop                                           ; $7629: $00
    add [hl]                                      ; $762a: $86
    inc bc                                        ; $762b: $03
    nop                                           ; $762c: $00
    inc bc                                        ; $762d: $03
    nop                                           ; $762e: $00
    inc bc                                        ; $762f: $03
    nop                                           ; $7630: $00
    ld b, $1f                                     ; $7631: $06 $1f
    add d                                         ; $7633: $82
    rst RST_38                                    ; $7634: $ff
    rra                                           ; $7635: $1f
    ld b, $01                                     ; $7636: $06 $01
    sub c                                         ; $7638: $91
    rrca                                          ; $7639: $0f
    ld c, $0f                                     ; $763a: $0e $0f
    ld c, $0f                                     ; $763c: $0e $0f
    ld c, $0e                                     ; $763e: $0e $0e
    rrca                                          ; $7640: $0f
    ld c, $0f                                     ; $7641: $0e $0f
    ld c, $0f                                     ; $7643: $0e $0f
    pop af                                        ; $7645: $f1
    ld [hl], c                                    ; $7646: $71
    pop af                                        ; $7647: $f1
    ld [hl], c                                    ; $7648: $71
    pop af                                        ; $7649: $f1
    add b                                         ; $764a: $80
    add l                                         ; $764b: $85
    inc b                                         ; $764c: $04
    ld [hl], c                                    ; $764d: $71
    pop af                                        ; $764e: $f1
    pop af                                        ; $764f: $f1
    pop af                                        ; $7650: $f1
    ld [$8aff], sp                                ; $7651: $08 $ff $8a
    rlca                                          ; $7654: $07
    rst RST_38                                    ; $7655: $ff
    rlca                                          ; $7656: $07
    rst RST_38                                    ; $7657: $ff
    rlca                                          ; $7658: $07
    ccf                                           ; $7659: $3f
    rst RST_38                                    ; $765a: $ff
    ccf                                           ; $765b: $3f
    rst RST_38                                    ; $765c: $ff
    ccf                                           ; $765d: $3f
    dec d                                         ; $765e: $15
    rst RST_38                                    ; $765f: $ff
    add l                                         ; $7660: $85
    rra                                           ; $7661: $1f
    rst RST_38                                    ; $7662: $ff
    rra                                           ; $7663: $1f
    rst RST_38                                    ; $7664: $ff
    rra                                           ; $7665: $1f
    dec d                                         ; $7666: $15
    rst RST_38                                    ; $7667: $ff
    adc h                                         ; $7668: $8c
    ldh a, [$ff80]                                ; $7669: $f0 $80
    ldh a, [$ff80]                                ; $766b: $f0 $80
    ldh a, [$ff80]                                ; $766d: $f0 $80
    cp $f0                                        ; $766f: $fe $f0
    cp $f0                                        ; $7671: $fe $f0
    cp $f0                                        ; $7673: $fe $f0
    inc de                                        ; $7675: $13
    cp $85                                        ; $7676: $fe $85
    ldh a, [rIE]                                  ; $7678: $f0 $ff
    rra                                           ; $767a: $1f
    rst RST_38                                    ; $767b: $ff
    rra                                           ; $767c: $1f
    dec c                                         ; $767d: $0d
    rst RST_38                                    ; $767e: $ff
    adc d                                         ; $767f: $8a
    db $fc                                        ; $7680: $fc
    rst RST_38                                    ; $7681: $ff
    db $fc                                        ; $7682: $fc
    rst RST_38                                    ; $7683: $ff
    db $fc                                        ; $7684: $fc
    db $fc                                        ; $7685: $fc
    inc e                                         ; $7686: $1c
    db $fc                                        ; $7687: $fc
    inc e                                         ; $7688: $1c
    db $fc                                        ; $7689: $fc
    dec b                                         ; $768a: $05
    inc e                                         ; $768b: $1c
    inc b                                         ; $768c: $04
    rst RST_38                                    ; $768d: $ff
    add [hl]                                      ; $768e: $86
    pop af                                        ; $768f: $f1
    add c                                         ; $7690: $81
    pop af                                        ; $7691: $f1
    add c                                         ; $7692: $81
    pop af                                        ; $7693: $f1
    add c                                         ; $7694: $81
    ld b, $8f                                     ; $7695: $06 $8f
    add [hl]                                      ; $7697: $86
    cp $70                                        ; $7698: $fe $70
    cp $70                                        ; $769a: $fe $70
    cp $70                                        ; $769c: $fe $70
    ld b, $71                                     ; $769e: $06 $71
    add h                                         ; $76a0: $84
    ld a, a                                       ; $76a1: $7f
    ld [hl], c                                    ; $76a2: $71
    ld a, a                                       ; $76a3: $7f
    ld [hl], c                                    ; $76a4: $71
    ld a, [bc]                                    ; $76a5: $0a
    rst RST_38                                    ; $76a6: $ff
    ld b, $c0                                     ; $76a7: $06 $c0
    adc h                                         ; $76a9: $8c
    ccf                                           ; $76aa: $3f
    nop                                           ; $76ab: $00
    ccf                                           ; $76ac: $3f
    nop                                           ; $76ad: $00
    ccf                                           ; $76ae: $3f
    nop                                           ; $76af: $00
    rst RST_00                                    ; $76b0: $c7
    ret nz                                        ; $76b1: $c0

    rst RST_00                                    ; $76b2: $c7
    ret nz                                        ; $76b3: $c0

    rst RST_00                                    ; $76b4: $c7
    ret nz                                        ; $76b5: $c0

    ld c, $ff                                     ; $76b6: $0e $ff
    sub d                                         ; $76b8: $92
    db $fc                                        ; $76b9: $fc
    inc bc                                        ; $76ba: $03
    db $fc                                        ; $76bb: $fc
    inc bc                                        ; $76bc: $03
    db $fc                                        ; $76bd: $fc
    inc bc                                        ; $76be: $03
    rst RST_38                                    ; $76bf: $ff
    nop                                           ; $76c0: $00
    rst RST_38                                    ; $76c1: $ff
    nop                                           ; $76c2: $00
    rst RST_38                                    ; $76c3: $ff
    nop                                           ; $76c4: $00
    db $fc                                        ; $76c5: $fc
    inc bc                                        ; $76c6: $03
    db $fc                                        ; $76c7: $fc
    inc bc                                        ; $76c8: $03
    db $fc                                        ; $76c9: $fc
    inc bc                                        ; $76ca: $03
    inc b                                         ; $76cb: $04
    rst RST_38                                    ; $76cc: $ff
    and b                                         ; $76cd: $a0
    cp $f0                                        ; $76ce: $fe $f0
    cp $f0                                        ; $76d0: $fe $f0
    ldh a, [$ff80]                                ; $76d2: $f0 $80
    ldh a, [$ff80]                                ; $76d4: $f0 $80
    ldh a, [$ff80]                                ; $76d6: $f0 $80
    ld a, [hl]                                    ; $76d8: $7e
    cp $7e                                        ; $76d9: $fe $7e
    cp $7e                                        ; $76db: $fe $7e
    cp $81                                        ; $76dd: $fe $81
    ld a, a                                       ; $76df: $7f
    add c                                         ; $76e0: $81
    ld a, a                                       ; $76e1: $7f
    add c                                         ; $76e2: $81
    ld a, a                                       ; $76e3: $7f
    ld [hl], c                                    ; $76e4: $71
    rst RST_38                                    ; $76e5: $ff
    ld [hl], c                                    ; $76e6: $71
    rst RST_38                                    ; $76e7: $ff
    ld [hl], c                                    ; $76e8: $71
    rst RST_38                                    ; $76e9: $ff
    rst RST_38                                    ; $76ea: $ff
    pop af                                        ; $76eb: $f1
    rst RST_38                                    ; $76ec: $ff
    pop af                                        ; $76ed: $f1
    stop                                          ; $76ee: $10 $00
    db $10                                        ; $76f0: $10
    ret nz                                        ; $76f1: $c0

    add d                                         ; $76f2: $82
    ld a, a                                       ; $76f3: $7f
    ld [hl], c                                    ; $76f4: $71
    ld b, $0f                                     ; $76f5: $06 $0f
    ld b, $01                                     ; $76f7: $06 $01
    ld [de], a                                    ; $76f9: $12
    nop                                           ; $76fa: $00
    adc b                                         ; $76fb: $88
    rst RST_38                                    ; $76fc: $ff
    rst RST_38                                    ; $76fd: $ff
    rst RST_00                                    ; $76fe: $c7
    ret nz                                        ; $76ff: $c0

    rst RST_00                                    ; $7700: $c7
    ret nz                                        ; $7701: $c0

    rst RST_00                                    ; $7702: $c7
    ret nz                                        ; $7703: $c0

    ld b, $ff                                     ; $7704: $06 $ff
    adc h                                         ; $7706: $8c
    jr c, jr_002_7748                             ; $7707: $38 $3f

    jr c, jr_002_774a                             ; $7709: $38 $3f

    jr c, jr_002_774c                             ; $770b: $38 $3f

    ccf                                           ; $770d: $3f
    jr c, jr_002_774f                             ; $770e: $38 $3f

    jr c, jr_002_7751                             ; $7710: $38 $3f

    jr c, jr_002_7718                             ; $7712: $38 $04

    ccf                                           ; $7714: $3f
    inc b                                         ; $7715: $04
    rst RST_38                                    ; $7716: $ff
    add [hl]                                      ; $7717: $86

jr_002_7718:
    db $e3                                        ; $7718: $e3
    ldh [$ffe3], a                                ; $7719: $e0 $e3
    ldh [$ffe3], a                                ; $771b: $e0 $e3
    ldh [rTMA], a                                 ; $771d: $e0 $06
    rst RST_38                                    ; $771f: $ff
    adc h                                         ; $7720: $8c
    db $e3                                        ; $7721: $e3
    rst RST_38                                    ; $7722: $ff
    db $e3                                        ; $7723: $e3
    rst RST_38                                    ; $7724: $ff

jr_002_7725:
    db $e3                                        ; $7725: $e3
    rst RST_38                                    ; $7726: $ff
    rst RST_38                                    ; $7727: $ff
    db $e3                                        ; $7728: $e3
    rst RST_38                                    ; $7729: $ff
    db $e3                                        ; $772a: $e3
    rst RST_38                                    ; $772b: $ff
    db $e3                                        ; $772c: $e3
    rlca                                          ; $772d: $07
    rst RST_38                                    ; $772e: $ff
    add a                                         ; $772f: $87
    pop af                                        ; $7730: $f1
    cp $7e                                        ; $7731: $fe $7e
    cp $7e                                        ; $7733: $fe $7e
    cp $7e                                        ; $7735: $fe $7e
    ld b, $fe                                     ; $7737: $06 $fe
    ld b, $c1                                     ; $7739: $06 $c1
    ld a, [bc]                                    ; $773b: $0a
    ret nz                                        ; $773c: $c0

    add h                                         ; $773d: $84
    rst RST_38                                    ; $773e: $ff
    rst RST_38                                    ; $773f: $ff
    ret nz                                        ; $7740: $c0

    ret nz                                        ; $7741: $c0

    inc c                                         ; $7742: $0c
    nop                                           ; $7743: $00
    ld b, $c0                                     ; $7744: $06 $c0
    ld a, [bc]                                    ; $7746: $0a
    nop                                           ; $7747: $00

jr_002_7748:
    sbc a                                         ; $7748: $9f
    pop af                                        ; $7749: $f1

jr_002_774a:
    cp $00                                        ; $774a: $fe $00

jr_002_774c:
    nop                                           ; $774c: $00
    rst RST_38                                    ; $774d: $ff
    rst RST_38                                    ; $774e: $ff

jr_002_774f:
    ld a, a                                       ; $774f: $7f
    ld b, b                                       ; $7750: $40

jr_002_7751:
    daa                                           ; $7751: $27
    jr c, jr_002_7767                             ; $7752: $38 $13

    inc e                                         ; $7754: $1c
    add hl, bc                                    ; $7755: $09
    ld c, $17                                     ; $7756: $0e $17
    jr jr_002_7775                                ; $7758: $18 $1b

    inc e                                         ; $775a: $1c
    rrca                                          ; $775b: $0f
    rrca                                          ; $775c: $0f
    rlca                                          ; $775d: $07
    rlca                                          ; $775e: $07
    inc bc                                        ; $775f: $03
    inc bc                                        ; $7760: $03
    ld [bc], a                                    ; $7761: $02
    inc bc                                        ; $7762: $03
    rlca                                          ; $7763: $07

jr_002_7764:
    inc b                                         ; $7764: $04
    rlca                                          ; $7765: $07
    inc b                                         ; $7766: $04

jr_002_7767:
    rlca                                          ; $7767: $07
    add b                                         ; $7768: $80
    inc bc                                        ; $7769: $03
    inc b                                         ; $776a: $04
    ldh a, [rIE]                                  ; $776b: $f0 $ff
    rst RST_38                                    ; $776d: $ff
    inc hl                                        ; $776e: $23
    db $fc                                        ; $776f: $fc
    rst RST_18                                    ; $7770: $df
    ld h, b                                       ; $7771: $60
    cp a                                          ; $7772: $bf
    ld b, b                                       ; $7773: $40
    rst RST_38                                    ; $7774: $ff

jr_002_7775:
    nop                                           ; $7775: $00
    rst RST_38                                    ; $7776: $ff
    nop                                           ; $7777: $00
    rst RST_38                                    ; $7778: $ff
    nop                                           ; $7779: $00
    cp $01                                        ; $777a: $fe $01
    add b                                         ; $777c: $80
    rst RST_38                                    ; $777d: $ff
    ld a, a                                       ; $777e: $7f
    rst RST_38                                    ; $777f: $ff
    db $eb                                        ; $7780: $eb
    inc e                                         ; $7781: $1c
    rst RST_38                                    ; $7782: $ff
    jr jr_002_7764                                ; $7783: $18 $df

    jr nc, jr_002_7725                            ; $7785: $30 $9e

    ld [hl], c                                    ; $7787: $71
    cp [hl]                                       ; $7788: $be
    ld h, c                                       ; $7789: $61
    cp [hl]                                       ; $778a: $be
    ld h, c                                       ; $778b: $61
    rst RST_38                                    ; $778c: $ff
    rst RST_38                                    ; $778d: $ff
    adc $31                                       ; $778e: $ce $31
    rst RST_38                                    ; $7790: $ff
    nop                                           ; $7791: $00
    rst RST_38                                    ; $7792: $ff
    nop                                           ; $7793: $00
    rst RST_38                                    ; $7794: $ff
    nop                                           ; $7795: $00
    rst RST_28                                    ; $7796: $ef
    db $10                                        ; $7797: $10
    rst RST_08                                    ; $7798: $cf
    jr nc, jr_002_77b2                            ; $7799: $30 $17

    ld hl, sp+$7f                                 ; $779b: $f8 $7f
    ldh a, [rIE]                                  ; $779d: $f0 $ff
    ldh a, [$ff2f]                                ; $779f: $f0 $2f
    ldh a, [$ffef]                                ; $77a1: $f0 $ef
    ld [hl], b                                    ; $77a3: $70
    ld c, [hl]                                    ; $77a4: $4e
    ld sp, hl                                     ; $77a5: $f9
    halt                                          ; $77a6: $76
    rst RST_08                                    ; $77a7: $cf
    ldh a, [c]                                    ; $77a8: $f2
    adc a                                         ; $77a9: $8f
    ldh a, [c]                                    ; $77aa: $f2
    adc a                                         ; $77ab: $8f
    add b                                         ; $77ac: $80
    add b                                         ; $77ad: $80
    ld a, [hl]                                    ; $77ae: $7e
    cp $88                                        ; $77af: $fe $88
    ld a, b                                       ; $77b1: $78

jr_002_77b2:
    or b                                          ; $77b2: $b0
    ld [hl], b                                    ; $77b3: $70
    ldh a, [$ff30]                                ; $77b4: $f0 $30
    ld [hl], b                                    ; $77b6: $70
    ldh a, [$ff8c]                                ; $77b7: $f0 $8c
    ld a, h                                       ; $77b9: $7c
    ldh [c], a                                    ; $77ba: $e2
    ld e, $f2                                     ; $77bb: $1e $f2
    ld c, $f2                                     ; $77bd: $0e $f2
    ld c, $f2                                     ; $77bf: $0e $f2
    ld c, $f2                                     ; $77c1: $0e $f2
    ld c, $f2                                     ; $77c3: $0e $f2
    ld c, $f2                                     ; $77c5: $0e $f2
    ld c, $e6                                     ; $77c7: $0e $e6
    ld e, $04                                     ; $77c9: $1e $04
    db $fc                                        ; $77cb: $fc
    dec e                                         ; $77cc: $1d
    ld e, $3b                                     ; $77cd: $1e $3b
    ld h, $7a                                     ; $77cf: $26 $7a
    ld b, a                                       ; $77d1: $47
    ld a, l                                       ; $77d2: $7d
    ld b, e                                       ; $77d3: $43
    ld e, [hl]                                    ; $77d4: $5e
    ld h, c                                       ; $77d5: $61
    db $fc                                        ; $77d6: $fc
    db $e3                                        ; $77d7: $e3
    jr @+$21                                      ; $77d8: $18 $1f

    rlca                                          ; $77da: $07
    rlca                                          ; $77db: $07
    stop                                          ; $77dc: $10 $00
    adc c                                         ; $77de: $89
    rst RST_38                                    ; $77df: $ff
    nop                                           ; $77e0: $00
    rst RST_38                                    ; $77e1: $ff
    nop                                           ; $77e2: $00
    rst RST_38                                    ; $77e3: $ff
    nop                                           ; $77e4: $00
    ld a, a                                       ; $77e5: $7f
    add b                                         ; $77e6: $80
    ret nz                                        ; $77e7: $c0

    inc bc                                        ; $77e8: $03
    rst RST_38                                    ; $77e9: $ff
    add h                                         ; $77ea: $84
    ld a, b                                       ; $77eb: $78
    ld hl, sp-$80                                 ; $77ec: $f8 $80
    add b                                         ; $77ee: $80
    stop                                          ; $77ef: $10 $00
    sub b                                         ; $77f1: $90
    ldh a, [c]                                    ; $77f2: $f2
    rrca                                          ; $77f3: $0f
    ldh a, [c]                                    ; $77f4: $f2
    rrca                                          ; $77f5: $0f
    db $e4                                        ; $77f6: $e4
    rra                                           ; $77f7: $1f
    srl h                                         ; $77f8: $cb $3c
    rra                                           ; $77fa: $1f
    ldh [rIE], a                                  ; $77fb: $e0 $ff
    ret nz                                        ; $77fd: $c0

    ld a, $21                                     ; $77fe: $3e $21
    rra                                           ; $7800: $1f
    rra                                           ; $7801: $1f
    stop                                          ; $7802: $10 $00
    sub b                                         ; $7804: $90
    inc c                                         ; $7805: $0c
    db $fc                                        ; $7806: $fc
    ld hl, sp-$08                                 ; $7807: $f8 $f8

jr_002_7809:
    ld h, b                                       ; $7809: $60
    ldh [$ff60], a                                ; $780a: $e0 $60
    ldh [$ff3f], a                                ; $780c: $e0 $3f
    rst RST_38                                    ; $780e: $ff
    jr jr_002_7809                                ; $780f: $18 $f8

    ld h, b                                       ; $7811: $60
    ldh [$ff80], a                                ; $7812: $e0 $80
    add b                                         ; $7814: $80
    stop                                          ; $7815: $10 $00
    or c                                          ; $7817: $b1
    inc bc                                        ; $7818: $03
    inc bc                                        ; $7819: $03
    inc c                                         ; $781a: $0c
    rrca                                          ; $781b: $0f
    rla                                           ; $781c: $17
    add hl, de                                    ; $781d: $19
    ld e, $11                                     ; $781e: $1e $11
    ccf                                           ; $7820: $3f
    jr nz, jr_002_7862                            ; $7821: $20 $3f

    jr nz, @+$61                                  ; $7823: $20 $5f

    ld h, b                                       ; $7825: $60
    ld c, a                                       ; $7826: $4f
    ld [hl], b                                    ; $7827: $70
    ld b, d                                       ; $7828: $42
    ld a, a                                       ; $7829: $7f
    ld b, l                                       ; $782a: $45
    ld a, a                                       ; $782b: $7f
    ld e, a                                       ; $782c: $5f
    ld a, h                                       ; $782d: $7c
    ld a, e                                       ; $782e: $7b
    ld a, h                                       ; $782f: $7c
    ld a, a                                       ; $7830: $7f
    ld [hl], b                                    ; $7831: $70
    ld a, $31                                     ; $7832: $3e $31
    ld e, $11                                     ; $7834: $1e $11
    ld d, $19                                     ; $7836: $16 $19
    rst RST_38                                    ; $7838: $ff
    rst RST_38                                    ; $7839: $ff
    adc a                                         ; $783a: $8f
    ldh a, [$ff7f]                                ; $783b: $f0 $7f
    add b                                         ; $783d: $80
    rst RST_38                                    ; $783e: $ff
    nop                                           ; $783f: $00
    rst RST_38                                    ; $7840: $ff

jr_002_7841:
    nop                                           ; $7841: $00
    rst RST_38                                    ; $7842: $ff
    nop                                           ; $7843: $00
    rst RST_38                                    ; $7844: $ff
    nop                                           ; $7845: $00
    ld hl, sp+$07                                 ; $7846: $f8 $07
    ld bc, $ff03                                  ; $7848: $01 $03 $ff
    or $ac                                        ; $784b: $f6 $ac
    ld [hl], e                                    ; $784d: $73
    rst RST_38                                    ; $784e: $ff
    ld h, c                                       ; $784f: $61
    ld a, l                                       ; $7850: $7d
    jp $c779                                      ; $7851: $c3 $79 $c7


    ei                                            ; $7854: $fb
    add [hl]                                      ; $7855: $86
    ei                                            ; $7856: $fb
    add [hl]                                      ; $7857: $86
    cp $fe                                        ; $7858: $fe $fe
    add hl, sp                                    ; $785a: $39
    rst RST_00                                    ; $785b: $c7

jr_002_785c:
    cp $01                                        ; $785c: $fe $01

jr_002_785e:
    cp $01                                        ; $785e: $fe $01
    rst RST_38                                    ; $7860: $ff
    nop                                           ; $7861: $00

jr_002_7862:
    cp l                                          ; $7862: $bd
    ld b, e                                       ; $7863: $43
    ld a, $c1                                     ; $7864: $3e $c1
    ld e, a                                       ; $7866: $5f
    ldh [rIE], a                                  ; $7867: $e0 $ff
    ret nz                                        ; $7869: $c0

    rst RST_38                                    ; $786a: $ff

jr_002_786b:
    ret nz                                        ; $786b: $c0

    cp a                                          ; $786c: $bf

jr_002_786d:
    ret nz                                        ; $786d: $c0

    cp a                                          ; $786e: $bf

jr_002_786f:
    ret nz                                        ; $786f: $c0

    dec sp                                        ; $7870: $3b
    db $e4                                        ; $7871: $e4
    db $db                                        ; $7872: $db
    inc a                                         ; $7873: $3c
    srl h                                         ; $7874: $cb $3c
    ret z                                         ; $7876: $c8

    ccf                                           ; $7877: $3f
    ld e, $1e                                     ; $7878: $1e $1e
    pop af                                        ; $787a: $f1
    rst RST_38                                    ; $787b: $ff
    ld a, $e1                                     ; $787c: $3e $e1
    rst RST_18                                    ; $787e: $df
    ldh [$ffdf], a                                ; $787f: $e0 $df
    ldh [$ffcf], a                                ; $7881: $e0 $cf
    ldh a, [$ff37]                                ; $7883: $f0 $37
    ld hl, sp-$71                                 ; $7885: $f8 $8f
    ld a, b                                       ; $7887: $78
    rst RST_08                                    ; $7888: $cf
    jr c, @-$30                                   ; $7889: $38 $ce

    add hl, sp                                    ; $788b: $39
    rst RST_08                                    ; $788c: $cf
    jr c, jr_002_785e                             ; $788d: $38 $cf

    jr c, jr_002_785c                             ; $788f: $38 $cb

    inc a                                         ; $7891: $3c
    ret                                           ; $7892: $c9


    ld a, $98                                     ; $7893: $3e $98
    ld a, a                                       ; $7895: $7f
    rla                                           ; $7896: $17
    rst RST_30                                    ; $7897: $f7
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    ret nz                                        ; $789a: $c0

    ret nz                                        ; $789b: $c0

    ccf                                           ; $789c: $3f
    rst RST_38                                    ; $789d: $ff
    add h                                         ; $789e: $84
    ld a, h                                       ; $789f: $7c

jr_002_78a0:
    ret z                                         ; $78a0: $c8

    jr c, jr_002_786b                             ; $78a1: $38 $c8

    jr c, jr_002_786d                             ; $78a3: $38 $c8

    jr c, jr_002_786f                             ; $78a5: $38 $c8

    jr c, jr_002_7841                             ; $78a7: $38 $98

    ld a, b                                       ; $78a9: $78
    inc b                                         ; $78aa: $04
    db $fc                                        ; $78ab: $fc
    ei                                            ; $78ac: $fb
    rlca                                          ; $78ad: $07
    db $fd                                        ; $78ae: $fd
    inc bc                                        ; $78af: $03
    db $fd                                        ; $78b0: $fd
    inc bc                                        ; $78b1: $03
    ld sp, hl                                     ; $78b2: $f9
    rlca                                          ; $78b3: $07
    ld a, [hl-]                                   ; $78b4: $3a
    add $92                                       ; $78b5: $c6 $92
    xor $17                                       ; $78b7: $ee $17
    jr @+$21                                      ; $78b9: $18 $1f

    jr jr_002_78a0                                ; $78bb: $18 $e3

    db $fc                                        ; $78bd: $fc
    dec e                                         ; $78be: $1d
    ld e, $03                                     ; $78bf: $1e $03
    inc bc                                        ; $78c1: $03
    ld d, $00                                     ; $78c2: $16 $00
    adc c                                         ; $78c4: $89
    rst RST_38                                    ; $78c5: $ff
    nop                                           ; $78c6: $00
    rst RST_38                                    ; $78c7: $ff
    nop                                           ; $78c8: $00
    cp $01                                        ; $78c9: $fe $01
    ld hl, sp+$07                                 ; $78cb: $f8 $07
    nop                                           ; $78cd: $00
    inc bc                                        ; $78ce: $03
    rst RST_38                                    ; $78cf: $ff
    inc d                                         ; $78d0: $14
    nop                                           ; $78d1: $00
    sub b                                         ; $78d2: $90
    sbc b                                         ; $78d3: $98
    ld a, a                                       ; $78d4: $7f
    dec sp                                        ; $78d5: $3b
    rst RST_20                                    ; $78d6: $e7
    ld a, l                                       ; $78d7: $7d

jr_002_78d8:
    jp $837d                                      ; $78d8: $c3 $7d $83


    ld a, h                                       ; $78db: $7c
    add e                                         ; $78dc: $83
    db $fc                                        ; $78dd: $fc
    inc bc                                        ; $78de: $03
    ld sp, hl                                     ; $78df: $f9
    add a                                         ; $78e0: $87
    ld a, [hl]                                    ; $78e1: $7e
    ld a, [hl]                                    ; $78e2: $7e
    stop                                          ; $78e3: $10 $00
    add d                                         ; $78e5: $82
    jr nc, jr_002_78d8                            ; $78e6: $30 $f0

    add b                                         ; $78e8: $80
    add e                                         ; $78e9: $83
    inc b                                         ; $78ea: $04
    ldh [$ff80], a                                ; $78eb: $e0 $80
    add b                                         ; $78ed: $80
    db $fc                                        ; $78ee: $fc
    add h                                         ; $78ef: $84
    ld h, b                                       ; $78f0: $60
    ldh [$ff80], a                                ; $78f1: $e0 $80
    add b                                         ; $78f3: $80
    ld [de], a                                    ; $78f4: $12
    nop                                           ; $78f5: $00
    add [hl]                                      ; $78f6: $86
    ld b, h                                       ; $78f7: $44
    ld a, h                                       ; $78f8: $7c
    daa                                           ; $78f9: $27
    ccf                                           ; $78fa: $3f
    inc e                                         ; $78fb: $1c
    inc e                                         ; $78fc: $1c
    inc h                                         ; $78fd: $24
    nop                                           ; $78fe: $00
    add d                                         ; $78ff: $82
    inc bc                                        ; $7900: $03
    inc bc                                        ; $7901: $03
    add b                                         ; $7902: $80
    inc bc                                        ; $7903: $03
    dec b                                         ; $7904: $05
    adc l                                         ; $7905: $8d
    inc b                                         ; $7906: $04
    rlca                                          ; $7907: $07
    inc b                                         ; $7908: $04
    rrca                                          ; $7909: $0f
    ld [$080f], sp                                ; $790a: $08 $0f $08
    ei                                            ; $790d: $fb
    db $fc                                        ; $790e: $fc
    dec c                                         ; $790f: $0d
    rra                                           ; $7910: $1f
    inc bc                                        ; $7911: $03
    rlca                                          ; $7912: $07
    ld c, $00                                     ; $7913: $0e $00
    sub d                                         ; $7915: $92
    ldh a, [$fff0]                                ; $7916: $f0 $f0
    add sp, $18                                   ; $7918: $e8 $18
    xor $1e                                       ; $791a: $ee $1e
    rst RST_08                                    ; $791c: $cf
    ccf                                           ; $791d: $3f
    dec e                                         ; $791e: $1d
    ei                                            ; $791f: $fb
    ld sp, hl                                     ; $7920: $f9
    rlca                                          ; $7921: $07
    adc $3e                                       ; $7922: $ce $3e
    sbc h                                         ; $7924: $9c
    db $fc                                        ; $7925: $fc
    ld hl, sp-$04                                 ; $7926: $f8 $fc
    inc b                                         ; $7928: $04
    nop                                           ; $7929: $00
    nop                                           ; $792a: $00
    ld c, $26                                     ; $792b: $0e $26
    ld a, $8f                                     ; $792d: $3e $8f
    ldh [c], a                                    ; $792f: $e2
    dec c                                         ; $7930: $0d
    ld a, $ff                                     ; $7931: $3e $ff
    ldh [c], a                                    ; $7933: $e2
    dec c                                         ; $7934: $0d
    ld a, $77                                     ; $7935: $3e $77
    ldh [c], a                                    ; $7937: $e2
    ld c, $1a                                     ; $7938: $0e $1a
    ld a, $00                                     ; $793a: $3e $00
    ldh [c], a                                    ; $793c: $e2
    ld hl, $798d                                  ; $793d: $21 $8d $79
    ld b, $10                                     ; $7940: $06 $10
    ld c, $30                                     ; $7942: $0e $30

jr_002_7944:
    ld a, [hl+]                                   ; $7944: $2a
    ldh [c], a                                    ; $7945: $e2
    inc c                                         ; $7946: $0c
    dec b                                         ; $7947: $05
    jr nz, jr_002_7944                            ; $7948: $20 $fa

    ld c, $1a                                     ; $794a: $0e $1a
    ld a, $80                                     ; $794c: $3e $80
    ldh [c], a                                    ; $794e: $e2
    inc c                                         ; $794f: $0c
    ld a, $00                                     ; $7950: $3e $00
    ldh [c], a                                    ; $7952: $e2
    inc c                                         ; $7953: $0c
    ld a, $20                                     ; $7954: $3e $20
    ldh [c], a                                    ; $7956: $e2
    inc c                                         ; $7957: $0c
    ld a, $00                                     ; $7958: $3e $00
    ldh [c], a                                    ; $795a: $e2
    inc c                                         ; $795b: $0c
    ld a, $80                                     ; $795c: $3e $80
    ldh [c], a                                    ; $795e: $e2
    ld hl, $799d                                  ; $795f: $21 $9d $79
    ld b, $08                                     ; $7962: $06 $08
    ld c, $1c                                     ; $7964: $0e $1c
    ld e, $33                                     ; $7966: $1e $33
    ld a, [hl+]                                   ; $7968: $2a
    ld d, a                                       ; $7969: $57
    di                                            ; $796a: $f3

jr_002_796b:
    xor a                                         ; $796b: $af
    rl d                                          ; $796c: $cb $12
    rra                                           ; $796e: $1f
    rra                                           ; $796f: $1f
    rra                                           ; $7970: $1f
    ldh [c], a                                    ; $7971: $e2
    dec b                                         ; $7972: $05
    jr z, jr_002_7982                             ; $7973: $28 $0d

    xor a                                         ; $7975: $af

jr_002_7976:
    inc a                                         ; $7976: $3c
    cp $03                                        ; $7977: $fe $03
    jr nz, jr_002_7976                            ; $7979: $20 $fb

    nop                                           ; $797b: $00
    nop                                           ; $797c: $00
    nop                                           ; $797d: $00
    nop                                           ; $797e: $00
    nop                                           ; $797f: $00
    jr jr_002_796b                                ; $7980: $18 $e9

jr_002_7982:
    ld a, [hl+]                                   ; $7982: $2a
    ld d, a                                       ; $7983: $57
    cp e                                          ; $7984: $bb
    jr z, jr_002_798b                             ; $7985: $28 $04

    ld b, $08                                     ; $7987: $06 $08
    jr jr_002_796b                                ; $7989: $18 $e0

jr_002_798b:
    ei                                            ; $798b: $fb
    ret                                           ; $798c: $c9


    rst RST_38                                    ; $798d: $ff
    rst RST_38                                    ; $798e: $ff
    rst RST_38                                    ; $798f: $ff
    rst RST_38                                    ; $7990: $ff
    rst RST_38                                    ; $7991: $ff
    rst RST_38                                    ; $7992: $ff
    rst RST_38                                    ; $7993: $ff
    rst RST_38                                    ; $7994: $ff
    rst RST_38                                    ; $7995: $ff
    rst RST_38                                    ; $7996: $ff
    rst RST_38                                    ; $7997: $ff
    rst RST_38                                    ; $7998: $ff
    rst RST_38                                    ; $7999: $ff
    rst RST_38                                    ; $799a: $ff
    rst RST_38                                    ; $799b: $ff
    rst RST_38                                    ; $799c: $ff
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    ldh [rTAC], a                                 ; $799f: $e0 $07
    db $f4                                        ; $79a1: $f4
    rst RST_38                                    ; $79a2: $ff
    rst RST_38                                    ; $79a3: $ff
    nop                                           ; $79a4: $00
    nop                                           ; $79a5: $00
    nop                                           ; $79a6: $00
    ld [hl], b                                    ; $79a7: $70
    rst RST_38                                    ; $79a8: $ff
    rst RST_38                                    ; $79a9: $ff
    rst RST_38                                    ; $79aa: $ff
    rst RST_38                                    ; $79ab: $ff
    ld bc, $0000                                  ; $79ac: $01 $00 $00
    rst RST_38                                    ; $79af: $ff
    rst RST_08                                    ; $79b0: $cf
    rst RST_38                                    ; $79b1: $ff
    rst RST_38                                    ; $79b2: $ff
    rra                                           ; $79b3: $1f
    nop                                           ; $79b4: $00
    ldh a, [$ff1f]                                ; $79b5: $f0 $1f
    add b                                         ; $79b7: $80
    rst RST_38                                    ; $79b8: $ff
    rst RST_38                                    ; $79b9: $ff
    rst RST_38                                    ; $79ba: $ff
    nop                                           ; $79bb: $00
    add b                                         ; $79bc: $80
    rst RST_38                                    ; $79bd: $ff
    ld bc, $fffe                                  ; $79be: $01 $fe $ff
    rst RST_38                                    ; $79c1: $ff
    ld bc, $7ff8                                  ; $79c2: $01 $f8 $7f
    nop                                           ; $79c5: $00
    cp $1f                                        ; $79c6: $fe $1f
    rst RST_38                                    ; $79c8: $ff
    rlca                                          ; $79c9: $07
    ret nz                                        ; $79ca: $c0

    rst RST_38                                    ; $79cb: $ff
    inc bc                                        ; $79cc: $03
    ld hl, sp-$01                                 ; $79cd: $f8 $ff
    ld hl, sp+$1f                                 ; $79cf: $f8 $1f
    add b                                         ; $79d1: $80
    rst RST_38                                    ; $79d2: $ff
    rlca                                          ; $79d3: $07
    ldh a, [rIE]                                  ; $79d4: $f0 $ff
    ldh a, [$ff7f]                                ; $79d6: $f0 $7f
    nop                                           ; $79d8: $00
    cp $0f                                        ; $79d9: $fe $0f
    ret nz                                        ; $79db: $c0

    rst RST_38                                    ; $79dc: $ff
    ret nz                                        ; $79dd: $c0

    rst RST_38                                    ; $79de: $ff
    ld bc, $3ff8                                  ; $79df: $01 $f8 $3f
    add b                                         ; $79e2: $80
    rst RST_38                                    ; $79e3: $ff
    inc bc                                        ; $79e4: $03
    rst RST_38                                    ; $79e5: $ff
    rlca                                          ; $79e6: $07
    ldh [$ff7f], a                                ; $79e7: $e0 $7f
    nop                                           ; $79e9: $00
    cp $07                                        ; $79ea: $fe $07
    db $fc                                        ; $79ec: $fc
    rra                                           ; $79ed: $1f
    add b                                         ; $79ee: $80
    rst RST_38                                    ; $79ef: $ff
    ld bc, $1ff8                                  ; $79f0: $01 $f8 $1f
    ldh a, [$ff7f]                                ; $79f3: $f0 $7f
    nop                                           ; $79f5: $00
    cp $07                                        ; $79f6: $fe $07
    ldh [$ff3f], a                                ; $79f8: $e0 $3f
    ret nz                                        ; $79fa: $c0

    rst RST_38                                    ; $79fb: $ff
    ld bc, $0ffc                                  ; $79fc: $01 $fc $0f
    ret nz                                        ; $79ff: $c0

    rst RST_38                                    ; $7a00: $ff
    add b                                         ; $7a01: $80
    rst RST_38                                    ; $7a02: $ff
    rlca                                          ; $7a03: $07
    ldh a, [$ff3f]                                ; $7a04: $f0 $3f
    nop                                           ; $7a06: $00
    rst RST_38                                    ; $7a07: $ff
    ld bc, $0ffe                                  ; $7a08: $01 $fe $0f
    ret nz                                        ; $7a0b: $c0

    rst RST_38                                    ; $7a0c: $ff
    nop                                           ; $7a0d: $00
    db $fc                                        ; $7a0e: $fc
    rlca                                          ; $7a0f: $07
    db $fc                                        ; $7a10: $fc
    ccf                                           ; $7a11: $3f
    add b                                         ; $7a12: $80
    rst RST_38                                    ; $7a13: $ff
    ld bc, $0ff8                                  ; $7a14: $01 $f8 $0f
    ld hl, sp+$7f                                 ; $7a17: $f8 $7f
    nop                                           ; $7a19: $00
    cp $03                                        ; $7a1a: $fe $03
    ldh [$ff1f], a                                ; $7a1c: $e0 $1f
    ldh [rIE], a                                  ; $7a1e: $e0 $ff
    ld bc, $07fc                                  ; $7a20: $01 $fc $07
    ret nz                                        ; $7a23: $c0

    ld a, a                                       ; $7a24: $7f
    ret nz                                        ; $7a25: $c0

    rst RST_38                                    ; $7a26: $ff
    inc bc                                        ; $7a27: $03
    ld hl, sp+$0f                                 ; $7a28: $f8 $0f
    add b                                         ; $7a2a: $80
    rst RST_38                                    ; $7a2b: $ff
    add b                                         ; $7a2c: $80
    rst RST_38                                    ; $7a2d: $ff
    rlca                                          ; $7a2e: $07
    ldh a, [$ff1f]                                ; $7a2f: $f0 $1f
    nop                                           ; $7a31: $00
    rst RST_38                                    ; $7a32: $ff
    nop                                           ; $7a33: $00
    rst RST_38                                    ; $7a34: $ff
    rrca                                          ; $7a35: $0f
    ldh [$ff3f], a                                ; $7a36: $e0 $3f
    nop                                           ; $7a38: $00
    rst RST_38                                    ; $7a39: $ff
    ld bc, $1fff                                  ; $7a3a: $01 $ff $1f
    ret nz                                        ; $7a3d: $c0

    ld a, a                                       ; $7a3e: $7f
    nop                                           ; $7a3f: $00
    cp $03                                        ; $7a40: $fe $03
    cp $1f                                        ; $7a42: $fe $1f
    add b                                         ; $7a44: $80
    rst RST_38                                    ; $7a45: $ff
    nop                                           ; $7a46: $00
    db $fc                                        ; $7a47: $fc
    rlca                                          ; $7a48: $07
    cp $1f                                        ; $7a49: $fe $1f
    add b                                         ; $7a4b: $80
    rst RST_38                                    ; $7a4c: $ff
    nop                                           ; $7a4d: $00
    db $fc                                        ; $7a4e: $fc
    rlca                                          ; $7a4f: $07
    db $fc                                        ; $7a50: $fc
    ccf                                           ; $7a51: $3f
    nop                                           ; $7a52: $00
    rst RST_38                                    ; $7a53: $ff
    nop                                           ; $7a54: $00
    ld hl, sp+$07                                 ; $7a55: $f8 $07
    db $fc                                        ; $7a57: $fc
    ccf                                           ; $7a58: $3f
    nop                                           ; $7a59: $00
    rst RST_38                                    ; $7a5a: $ff
    ld bc, $0ff8                                  ; $7a5b: $01 $f8 $0f
    db $fc                                        ; $7a5e: $fc
    ld a, a                                       ; $7a5f: $7f
    nop                                           ; $7a60: $00
    cp $03                                        ; $7a61: $fe $03
    ldh a, [$ff1f]                                ; $7a63: $f0 $1f
    ld hl, sp+$7f                                 ; $7a65: $f8 $7f
    nop                                           ; $7a67: $00
    cp $03                                        ; $7a68: $fe $03
    ldh a, [$ff1f]                                ; $7a6a: $f0 $1f
    ld hl, sp-$01                                 ; $7a6c: $f8 $ff
    nop                                           ; $7a6e: $00
    db $fc                                        ; $7a6f: $fc
    inc bc                                        ; $7a70: $03
    ldh a, [$ff1f]                                ; $7a71: $f0 $1f
    ldh a, [rIE]                                  ; $7a73: $f0 $ff
    nop                                           ; $7a75: $00
    db $fc                                        ; $7a76: $fc
    rlca                                          ; $7a77: $07
    ldh [$ff3f], a                                ; $7a78: $e0 $3f
    ldh a, [rIE]                                  ; $7a7a: $f0 $ff
    nop                                           ; $7a7c: $00
    ld hl, sp+$0f                                 ; $7a7d: $f8 $0f
    ldh [$ff7f], a                                ; $7a7f: $e0 $7f
    ldh [rIE], a                                  ; $7a81: $e0 $ff
    ld bc, $1ff0                                  ; $7a83: $01 $f0 $1f
    ret nz                                        ; $7a86: $c0

    rst RST_38                                    ; $7a87: $ff
    ldh [rIE], a                                  ; $7a88: $e0 $ff
    inc bc                                        ; $7a8a: $03
    ldh [$ff3f], a                                ; $7a8b: $e0 $3f
    add b                                         ; $7a8d: $80
    rst RST_38                                    ; $7a8e: $ff
    pop hl                                        ; $7a8f: $e1
    rst RST_38                                    ; $7a90: $ff
    inc bc                                        ; $7a91: $03
    ldh [$ff7f], a                                ; $7a92: $e0 $7f
    nop                                           ; $7a94: $00
    rst RST_38                                    ; $7a95: $ff
    rst RST_20                                    ; $7a96: $e7
    rst RST_38                                    ; $7a97: $ff
    rlca                                          ; $7a98: $07
    ret nz                                        ; $7a99: $c0

    rst RST_38                                    ; $7a9a: $ff
    nop                                           ; $7a9b: $00
    rst RST_38                                    ; $7a9c: $ff
    rst RST_38                                    ; $7a9d: $ff
    rst RST_38                                    ; $7a9e: $ff
    rlca                                          ; $7a9f: $07
    nop                                           ; $7aa0: $00
    rst RST_38                                    ; $7aa1: $ff
    ld bc, $fffe                                  ; $7aa2: $01 $fe $ff
    rst RST_38                                    ; $7aa5: $ff
    rlca                                          ; $7aa6: $07
    nop                                           ; $7aa7: $00
    db $fc                                        ; $7aa8: $fc
    inc bc                                        ; $7aa9: $03
    db $fc                                        ; $7aaa: $fc
    rst RST_38                                    ; $7aab: $ff
    rst RST_38                                    ; $7aac: $ff
    rra                                           ; $7aad: $1f
    nop                                           ; $7aae: $00
    db $fc                                        ; $7aaf: $fc
    rlca                                          ; $7ab0: $07
    ld hl, sp-$01                                 ; $7ab1: $f8 $ff
    rst RST_38                                    ; $7ab3: $ff
    ccf                                           ; $7ab4: $3f
    nop                                           ; $7ab5: $00
    ldh [$ff1f], a                                ; $7ab6: $e0 $1f
    ldh a, [rIE]                                  ; $7ab8: $f0 $ff
    rst RST_38                                    ; $7aba: $ff
    rst RST_38                                    ; $7abb: $ff
    nop                                           ; $7abc: $00
    nop                                           ; $7abd: $00
    rst RST_38                                    ; $7abe: $ff
    pop hl                                        ; $7abf: $e1
    rst RST_38                                    ; $7ac0: $ff
    rst RST_38                                    ; $7ac1: $ff
    rst RST_38                                    ; $7ac2: $ff
    inc bc                                        ; $7ac3: $03
    nop                                           ; $7ac4: $00
    db $fc                                        ; $7ac5: $fc
    ccf                                           ; $7ac6: $3f
    cp $ff                                        ; $7ac7: $fe $ff
    rst RST_38                                    ; $7ac9: $ff
    rlca                                          ; $7aca: $07
    nop                                           ; $7acb: $00
    ldh [rIE], a                                  ; $7acc: $e0 $ff
    db $fd                                        ; $7ace: $fd
    rst RST_38                                    ; $7acf: $ff
    rst RST_38                                    ; $7ad0: $ff
    ccf                                           ; $7ad1: $3f
    nop                                           ; $7ad2: $00
    nop                                           ; $7ad3: $00
    cp $ff                                        ; $7ad4: $fe $ff
    rst RST_38                                    ; $7ad6: $ff
    rst RST_38                                    ; $7ad7: $ff
    rst RST_38                                    ; $7ad8: $ff
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    ld hl, sp-$01                                 ; $7adb: $f8 $ff
    rst RST_38                                    ; $7add: $ff
    rst RST_38                                    ; $7ade: $ff
    rst RST_38                                    ; $7adf: $ff
    rlca                                          ; $7ae0: $07
    nop                                           ; $7ae1: $00
    ldh [$ff9f], a                                ; $7ae2: $e0 $9f
    rst RST_38                                    ; $7ae4: $ff
    rst RST_38                                    ; $7ae5: $ff
    rst RST_38                                    ; $7ae6: $ff
    ld a, a                                       ; $7ae7: $7f
    nop                                           ; $7ae8: $00
    nop                                           ; $7ae9: $00
    ld hl, sp-$01                                 ; $7aea: $f8 $ff
    rst RST_38                                    ; $7aec: $ff
    rst RST_38                                    ; $7aed: $ff
    rst RST_38                                    ; $7aee: $ff
    ld bc, $0000                                  ; $7aef: $01 $00 $00
    ldh a, [rIE]                                  ; $7af2: $f0 $ff
    rst RST_38                                    ; $7af4: $ff
    rst RST_38                                    ; $7af5: $ff
    rra                                           ; $7af6: $1f
    nop                                           ; $7af7: $00
    nop                                           ; $7af8: $00
    ret nz                                        ; $7af9: $c0

    rst RST_38                                    ; $7afa: $ff
    rst RST_38                                    ; $7afb: $ff
    rst RST_38                                    ; $7afc: $ff
    ccf                                           ; $7afd: $3f
    nop                                           ; $7afe: $00
    nop                                           ; $7aff: $00
    nop                                           ; $7b00: $00
    db $fc                                        ; $7b01: $fc
    rst RST_38                                    ; $7b02: $ff
    rst RST_38                                    ; $7b03: $ff
    rst RST_38                                    ; $7b04: $ff
    adc a                                         ; $7b05: $8f
    ccf                                           ; $7b06: $3f
    nop                                           ; $7b07: $00
    nop                                           ; $7b08: $00
    add b                                         ; $7b09: $80
    rst RST_38                                    ; $7b0a: $ff
    rst RST_38                                    ; $7b0b: $ff
    rst RST_38                                    ; $7b0c: $ff
    rst RST_30                                    ; $7b0d: $f7
    ld [bc], a                                    ; $7b0e: $02
    nop                                           ; $7b0f: $00
    nop                                           ; $7b10: $00
    nop                                           ; $7b11: $00
    db $10                                        ; $7b12: $10
    xor $de                                       ; $7b13: $ee $de
    rst RST_28                                    ; $7b15: $ef
    sub [hl]                                      ; $7b16: $96
    nop                                           ; $7b17: $00
    ld bc, $0008                                  ; $7b18: $01 $08 $00
    ldh a, [c]                                    ; $7b1b: $f2
    ret                                           ; $7b1c: $c9


    cp a                                          ; $7b1d: $bf
    ld sp, $04e6                                  ; $7b1e: $31 $e6 $04
    nop                                           ; $7b21: $00
    ld h, $80                                     ; $7b22: $26 $80
    cp b                                          ; $7b24: $b8
    ld bc, $37fd                                  ; $7b25: $01 $fd $37
    jr nz, jr_002_7b2a                            ; $7b28: $20 $00

jr_002_7b2a:
    nop                                           ; $7b2a: $00
    db $fc                                        ; $7b2b: $fc
    ld de, $dfb4                                  ; $7b2c: $11 $b4 $df
    nop                                           ; $7b2f: $00
    inc d                                         ; $7b30: $14
    add b                                         ; $7b31: $80
    db $fc                                        ; $7b32: $fc
    nop                                           ; $7b33: $00
    ld a, b                                       ; $7b34: $78
    ld a, a                                       ; $7b35: $7f
    ld bc, $0042                                  ; $7b36: $01 $42 $00
    db $f4                                        ; $7b39: $f4
    rlca                                          ; $7b3a: $07
    ret nz                                        ; $7b3b: $c0

    ld a, [$2c02]                                 ; $7b3c: $fa $02 $2c
    ld bc, $09e0                                  ; $7b3f: $01 $e0 $09
    nop                                           ; $7b42: $00
    sbc e                                         ; $7b43: $9b
    add b                                         ; $7b44: $80
    ld e, c                                       ; $7b45: $59
    nop                                           ; $7b46: $00
    ldh [$ff2e], a                                ; $7b47: $e0 $2e
    nop                                           ; $7b49: $00
    scf                                           ; $7b4a: $37
    db $10                                        ; $7b4b: $10
    call z, Call_002_6003                         ; $7b4c: $cc $03 $60
    ld b, $00                                     ; $7b4f: $06 $00
    adc c                                         ; $7b51: $89
    ld [de], a                                    ; $7b52: $12
    add b                                         ; $7b53: $80
    ld [$9940], sp                                ; $7b54: $08 $40 $99
    add b                                         ; $7b57: $80
    ld e, c                                       ; $7b58: $59
    adc [hl]                                      ; $7b59: $8e
    add b                                         ; $7b5a: $80
    ld de, $2900                                  ; $7b5b: $11 $00 $29
    nop                                           ; $7b5e: $00
    inc [hl]                                      ; $7b5f: $34
    ld b, l                                       ; $7b60: $45
    or e                                          ; $7b61: $b3
    ld [$5220], sp                                ; $7b62: $08 $20 $52
    ld bc, $d700                                  ; $7b65: $01 $00 $d7
    ld c, $02                                     ; $7b68: $0e $02
    inc b                                         ; $7b6a: $04
    ld [$4100], sp                                ; $7b6b: $08 $00 $41
    add b                                         ; $7b6e: $80
    sbc [hl]                                      ; $7b6f: $9e
    ld bc, $a300                                  ; $7b70: $01 $00 $a3
    nop                                           ; $7b73: $00
    nop                                           ; $7b74: $00
    nop                                           ; $7b75: $00
    sub d                                         ; $7b76: $92
    dec b                                         ; $7b77: $05
    nop                                           ; $7b78: $00
    ld hl, $0481                                  ; $7b79: $21 $81 $04
    ld bc, $04e2                                  ; $7b7c: $01 $e2 $04
    nop                                           ; $7b7f: $00
    ld l, a                                       ; $7b80: $6f
    nop                                           ; $7b81: $00
    ld bc, $da00                                  ; $7b82: $01 $00 $da
    ld [bc], a                                    ; $7b85: $02
    nop                                           ; $7b86: $00
    nop                                           ; $7b87: $00
    add b                                         ; $7b88: $80
    ld h, h                                       ; $7b89: $64
    nop                                           ; $7b8a: $00
    ld h, b                                       ; $7b8b: $60
    stop                                          ; $7b8c: $10 $00
    nop                                           ; $7b8e: $00
    add b                                         ; $7b8f: $80
    ret nc                                        ; $7b90: $d0

    ld [bc], a                                    ; $7b91: $02
    add b                                         ; $7b92: $80
    stop                                          ; $7b93: $10 $00
    nop                                           ; $7b95: $00
    nop                                           ; $7b96: $00
    ld de, $2001                                  ; $7b97: $11 $01 $20
    ld h, $00                                     ; $7b9a: $26 $00
    nop                                           ; $7b9c: $00
    nop                                           ; $7b9d: $00
    nop                                           ; $7b9e: $00
    add b                                         ; $7b9f: $80
    add b                                         ; $7ba0: $80
    sbc d                                         ; $7ba1: $9a
    nop                                           ; $7ba2: $00
    nop                                           ; $7ba3: $00
    nop                                           ; $7ba4: $00
    stop                                          ; $7ba5: $10 $00
    ld b, b                                       ; $7ba7: $40
    add hl, hl                                    ; $7ba8: $29
    nop                                           ; $7ba9: $00
    ld bc, $0400                                  ; $7baa: $01 $00 $04
    nop                                           ; $7bad: $00
    nop                                           ; $7bae: $00
    add l                                         ; $7baf: $85
    nop                                           ; $7bb0: $00
    nop                                           ; $7bb1: $00
    nop                                           ; $7bb2: $00
    nop                                           ; $7bb3: $00
    nop                                           ; $7bb4: $00
    ld b, b                                       ; $7bb5: $40
    inc d                                         ; $7bb6: $14
    nop                                           ; $7bb7: $00
    ld [$1200], sp                                ; $7bb8: $08 $00 $12
    ld [bc], a                                    ; $7bbb: $02
    ld b, h                                       ; $7bbc: $44
    ld a, [bc]                                    ; $7bbd: $0a
    nop                                           ; $7bbe: $00
    ld bc, $4000                                  ; $7bbf: $01 $00 $40
    nop                                           ; $7bc2: $00
    nop                                           ; $7bc3: $00
    ld [bc], a                                    ; $7bc4: $02
    jr nz, jr_002_7bc7                            ; $7bc5: $20 $00

jr_002_7bc7:
    nop                                           ; $7bc7: $00
    nop                                           ; $7bc8: $00
    nop                                           ; $7bc9: $00
    adc b                                         ; $7bca: $88
    ld b, b                                       ; $7bcb: $40
    ld bc, $0080                                  ; $7bcc: $01 $80 $00
    nop                                           ; $7bcf: $00
    ld bc, $a020                                  ; $7bd0: $01 $20 $a0
    adc b                                         ; $7bd3: $88
    ld a, [hl+]                                   ; $7bd4: $2a
    nop                                           ; $7bd5: $00
    inc b                                         ; $7bd6: $04
    nop                                           ; $7bd7: $00
    inc b                                         ; $7bd8: $04
    add hl, bc                                    ; $7bd9: $09
    db $10                                        ; $7bda: $10
    inc h                                         ; $7bdb: $24
    nop                                           ; $7bdc: $00
    ld [de], a                                    ; $7bdd: $12
    inc b                                         ; $7bde: $04
    add d                                         ; $7bdf: $82
    jr nz, jr_002_7be2                            ; $7be0: $20 $00

jr_002_7be2:
    nop                                           ; $7be2: $00
    nop                                           ; $7be3: $00
    stop                                          ; $7be4: $10 $00
    ld b, c                                       ; $7be6: $41
    ld [hl+], a                                   ; $7be7: $22
    ld b, b                                       ; $7be8: $40
    nop                                           ; $7be9: $00
    ld [$0002], sp                                ; $7bea: $08 $02 $00
    ld d, b                                       ; $7bed: $50
    inc b                                         ; $7bee: $04
    nop                                           ; $7bef: $00
    add b                                         ; $7bf0: $80
    nop                                           ; $7bf1: $00
    ld de, $0200                                  ; $7bf2: $11 $00 $02
    adc d                                         ; $7bf5: $8a
    ld [$2800], sp                                ; $7bf6: $08 $00 $28
    add d                                         ; $7bf9: $82
    jr nz, jr_002_7bfc                            ; $7bfa: $20 $00

jr_002_7bfc:
    ld de, $8802                                  ; $7bfc: $11 $02 $88
    nop                                           ; $7bff: $00
    inc h                                         ; $7c00: $24
    add c                                         ; $7c01: $81
    inc b                                         ; $7c02: $04
    inc b                                         ; $7c03: $04
    pop de                                        ; $7c04: $d1
    ld [bc], a                                    ; $7c05: $02
    dec h                                         ; $7c06: $25
    jr nz, jr_002_7c09                            ; $7c07: $20 $00

jr_002_7c09:
    nop                                           ; $7c09: $00
    ld b, b                                       ; $7c0a: $40
    sub h                                         ; $7c0b: $94
    inc b                                         ; $7c0c: $04
    jr nz, jr_002_7c50                            ; $7c0d: $20 $41

    nop                                           ; $7c0f: $00
    nop                                           ; $7c10: $00
    and b                                         ; $7c11: $a0
    ld l, b                                       ; $7c12: $68
    ld bc, $0002                                  ; $7c13: $01 $02 $00
    inc b                                         ; $7c16: $04
    nop                                           ; $7c17: $00
    and h                                         ; $7c18: $a4
    adc b                                         ; $7c19: $88
    ld [de], a                                    ; $7c1a: $12
    dec b                                         ; $7c1b: $05
    jr z, jr_002_7c1e                             ; $7c1c: $28 $00

jr_002_7c1e:
    nop                                           ; $7c1e: $00

jr_002_7c1f:
    ld b, b                                       ; $7c1f: $40
    ld d, [hl]                                    ; $7c20: $56
    ld de, $8020                                  ; $7c21: $11 $20 $80
    nop                                           ; $7c24: $00
    nop                                           ; $7c25: $00
    ld b, d                                       ; $7c26: $42
    sub h                                         ; $7c27: $94
    add d                                         ; $7c28: $82
    add h                                         ; $7c29: $84
    nop                                           ; $7c2a: $00
    ld bc, $0002                                  ; $7c2b: $01 $02 $00
    ld hl, $8200                                  ; $7c2e: $21 $00 $82
    ld [hl+], a                                   ; $7c31: $22
    inc d                                         ; $7c32: $14
    ld b, b                                       ; $7c33: $40
    ld d, c                                       ; $7c34: $51
    inc bc                                        ; $7c35: $03
    nop                                           ; $7c36: $00
    inc b                                         ; $7c37: $04
    nop                                           ; $7c38: $00
    nop                                           ; $7c39: $00
    ld [$0100], sp                                ; $7c3a: $08 $00 $01
    ld [$2082], sp                                ; $7c3d: $08 $82 $20
    inc b                                         ; $7c40: $04
    ret z                                         ; $7c41: $c8

    sub b                                         ; $7c42: $90
    nop                                           ; $7c43: $00
    nop                                           ; $7c44: $00
    ld [$0802], sp                                ; $7c45: $08 $02 $08
    nop                                           ; $7c48: $00
    ld b, $08                                     ; $7c49: $06 $08
    ld c, b                                       ; $7c4b: $48

Call_002_7c4c:
    inc b                                         ; $7c4c: $04
    ld [bc], a                                    ; $7c4d: $02
    add b                                         ; $7c4e: $80
    nop                                           ; $7c4f: $00

jr_002_7c50:
    add c                                         ; $7c50: $81
    ld bc, $4002                                  ; $7c51: $01 $02 $40
    sub h                                         ; $7c54: $94
    ld [hl+], a                                   ; $7c55: $22
    adc b                                         ; $7c56: $88
    ld [bc], a                                    ; $7c57: $02
    ld b, l                                       ; $7c58: $45
    jr nz, jr_002_7c5b                            ; $7c59: $20 $00

jr_002_7c5b:
    ld b, b                                       ; $7c5b: $40
    nop                                           ; $7c5c: $00
    jr nz, jr_002_7ca0                            ; $7c5d: $20 $41

    xor d                                         ; $7c5f: $aa
    inc h                                         ; $7c60: $24
    ld hl, $000a                                  ; $7c61: $21 $0a $00
    dec b                                         ; $7c64: $05
    nop                                           ; $7c65: $00
    ld b, b                                       ; $7c66: $40
    ld de, $4012                                  ; $7c67: $11 $12 $40
    inc b                                         ; $7c6a: $04
    ld [bc], a                                    ; $7c6b: $02
    ld bc, $1400                                  ; $7c6c: $01 $00 $14
    add c                                         ; $7c6f: $81
    nop                                           ; $7c70: $00
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    nop                                           ; $7c73: $00
    ld b, b                                       ; $7c74: $40
    ld b, h                                       ; $7c75: $44
    ld b, h                                       ; $7c76: $44
    db $10                                        ; $7c77: $10
    ld bc, $0000                                  ; $7c78: $01 $00 $00
    inc b                                         ; $7c7b: $04
    nop                                           ; $7c7c: $00
    ld b, b                                       ; $7c7d: $40
    ld [bc], a                                    ; $7c7e: $02
    ld d, b                                       ; $7c7f: $50
    nop                                           ; $7c80: $00
    ld b, b                                       ; $7c81: $40
    ld [$2110], sp                                ; $7c82: $08 $10 $21
    ld [$4400], sp                                ; $7c85: $08 $00 $44
    ld bc, $4000                                  ; $7c88: $01 $00 $40
    ld c, b                                       ; $7c8b: $48
    sub b                                         ; $7c8c: $90
    jr nz, jr_002_7cd7                            ; $7c8d: $20 $48

    ld b, h                                       ; $7c8f: $44
    nop                                           ; $7c90: $00
    ld [bc], a                                    ; $7c91: $02
    add b                                         ; $7c92: $80
    ld [bc], a                                    ; $7c93: $02
    xor b                                         ; $7c94: $a8
    nop                                           ; $7c95: $00
    and d                                         ; $7c96: $a2
    adc b                                         ; $7c97: $88
    nop                                           ; $7c98: $00
    add hl, bc                                    ; $7c99: $09
    ld d, b                                       ; $7c9a: $50
    jr nz, jr_002_7c9d                            ; $7c9b: $20 $00

jr_002_7c9d:
    jr nz, jr_002_7c1f                            ; $7c9d: $20 $80

    nop                                           ; $7c9f: $00

jr_002_7ca0:
    ld [hl+], a                                   ; $7ca0: $22

jr_002_7ca1:
    inc e                                         ; $7ca1: $1c
    jr nz, jr_002_7ca4                            ; $7ca2: $20 $00

jr_002_7ca4:
    jr nz, jr_002_7cb6                            ; $7ca4: $20 $10

    nop                                           ; $7ca6: $00
    ld a, [de]                                    ; $7ca7: $1a
    ld de, $1240                                  ; $7ca8: $11 $40 $12
    jr nz, jr_002_7cad                            ; $7cab: $20 $00

jr_002_7cad:
    stop                                          ; $7cad: $10 $00
    inc b                                         ; $7caf: $04
    ld [bc], a                                    ; $7cb0: $02
    add d                                         ; $7cb1: $82
    xor b                                         ; $7cb2: $a8
    ld b, b                                       ; $7cb3: $40
    add b                                         ; $7cb4: $80
    ld [bc], a                                    ; $7cb5: $02

jr_002_7cb6:
    ld b, h                                       ; $7cb6: $44
    jr nz, jr_002_7cc3                            ; $7cb7: $20 $0a

    ld [bc], a                                    ; $7cb9: $02
    add b                                         ; $7cba: $80
    stop                                          ; $7cbb: $10 $00
    ret nz                                        ; $7cbd: $c0

    inc d                                         ; $7cbe: $14
    dec b                                         ; $7cbf: $05
    add b                                         ; $7cc0: $80
    ld [bc], a                                    ; $7cc1: $02
    db $10                                        ; $7cc2: $10

jr_002_7cc3:
    inc b                                         ; $7cc3: $04
    ld [$0312], sp                                ; $7cc4: $08 $12 $03
    ld a, [bc]                                    ; $7cc7: $0a
    ld [de], a                                    ; $7cc8: $12
    nop                                           ; $7cc9: $00
    db $10                                        ; $7cca: $10
    sub b                                         ; $7ccb: $90
    jr nz, @+$62                                  ; $7ccc: $20 $60

    ld bc, $0002                                  ; $7cce: $01 $02 $00
    add c                                         ; $7cd1: $81
    nop                                           ; $7cd2: $00
    ret nz                                        ; $7cd3: $c0

    add h                                         ; $7cd4: $84
    nop                                           ; $7cd5: $00
    ld d, c                                       ; $7cd6: $51

jr_002_7cd7:
    inc b                                         ; $7cd7: $04
    jr nz, jr_002_7cda                            ; $7cd8: $20 $00

jr_002_7cda:
    ld [hl+], a                                   ; $7cda: $22
    db $10                                        ; $7cdb: $10
    db $10                                        ; $7cdc: $10
    ret nz                                        ; $7cdd: $c0

    ld bc, $0400                                  ; $7cde: $01 $00 $04
    add b                                         ; $7ce1: $80
    ld bc, $1010                                  ; $7ce2: $01 $10 $10
    inc b                                         ; $7ce5: $04
    ld [$4000], sp                                ; $7ce6: $08 $00 $40
    jr nz, jr_002_7ced                            ; $7ce9: $20 $02

    and b                                         ; $7ceb: $a0
    nop                                           ; $7cec: $00

jr_002_7ced:
    ld b, b                                       ; $7ced: $40
    ld d, b                                       ; $7cee: $50
    ld hl, $2450                                  ; $7cef: $21 $50 $24
    add hl, bc                                    ; $7cf2: $09
    stop                                          ; $7cf3: $10 $00
    ld [$2200], sp                                ; $7cf5: $08 $00 $22
    inc h                                         ; $7cf8: $24
    ld bc, $5040                                  ; $7cf9: $01 $40 $50
    inc b                                         ; $7cfc: $04
    ld bc, $0082                                  ; $7cfd: $01 $82 $00
    nop                                           ; $7d00: $00
    nop                                           ; $7d01: $00
    nop                                           ; $7d02: $00
    nop                                           ; $7d03: $00
    ld b, c                                       ; $7d04: $41
    ld b, b                                       ; $7d05: $40
    nop                                           ; $7d06: $00
    add d                                         ; $7d07: $82
    inc b                                         ; $7d08: $04
    ld [$0930], sp                                ; $7d09: $08 $30 $09
    add d                                         ; $7d0c: $82
    jr nz, jr_002_7d11                            ; $7d0d: $20 $02

    ld d, b                                       ; $7d0f: $50
    inc b                                         ; $7d10: $04

jr_002_7d11:
    ld bc, $4228                                  ; $7d11: $01 $28 $42
    jr nz, @+$06                                  ; $7d14: $20 $04

    ld [$0210], sp                                ; $7d16: $08 $10 $02
    ld hl, $4100                                  ; $7d19: $21 $00 $41
    inc d                                         ; $7d1c: $14
    jr z, jr_002_7ca1                             ; $7d1d: $28 $82

    jr nc, jr_002_7ca1                            ; $7d1f: $30 $80

    add b                                         ; $7d21: $80
    add b                                         ; $7d22: $80
    add e                                         ; $7d23: $83
    sub e                                         ; $7d24: $93
    and e                                         ; $7d25: $a3
    ld b, b                                       ; $7d26: $40
    ld [bc], a                                    ; $7d27: $02
    stop                                          ; $7d28: $10 $00
    ld [bc], a                                    ; $7d2a: $02
    db $10                                        ; $7d2b: $10
    adc b                                         ; $7d2c: $88
    ld bc, $5321                                  ; $7d2d: $01 $21 $53
    add e                                         ; $7d30: $83
    ld l, d                                       ; $7d31: $6a
    nop                                           ; $7d32: $00
    nop                                           ; $7d33: $00
    ld b, b                                       ; $7d34: $40
    rst RST_38                                    ; $7d35: $ff
    rst RST_38                                    ; $7d36: $ff
    rst RST_38                                    ; $7d37: $ff
    ld bc, $0000                                  ; $7d38: $01 $00 $00
    add b                                         ; $7d3b: $80
    rst RST_38                                    ; $7d3c: $ff
    rst RST_38                                    ; $7d3d: $ff
    rst RST_38                                    ; $7d3e: $ff
    nop                                           ; $7d3f: $00
    nop                                           ; $7d40: $00
    nop                                           ; $7d41: $00
    ldh a, [rIE]                                  ; $7d42: $f0 $ff
    rst RST_38                                    ; $7d44: $ff
    ccf                                           ; $7d45: $3f
    nop                                           ; $7d46: $00
    nop                                           ; $7d47: $00
    ret nz                                        ; $7d48: $c0

    rst RST_38                                    ; $7d49: $ff
    rst RST_38                                    ; $7d4a: $ff
    rst RST_38                                    ; $7d4b: $ff
    ld bc, $8000                                  ; $7d4c: $01 $00 $80
    rst RST_38                                    ; $7d4f: $ff
    rst RST_38                                    ; $7d50: $ff
    rst RST_38                                    ; $7d51: $ff
    inc bc                                        ; $7d52: $03
    nop                                           ; $7d53: $00
    add b                                         ; $7d54: $80
    rst RST_38                                    ; $7d55: $ff
    rst RST_38                                    ; $7d56: $ff
    rst RST_38                                    ; $7d57: $ff
    rlca                                          ; $7d58: $07
    nop                                           ; $7d59: $00
    add b                                         ; $7d5a: $80
    rst RST_38                                    ; $7d5b: $ff
    rst RST_38                                    ; $7d5c: $ff
    rst RST_38                                    ; $7d5d: $ff
    rrca                                          ; $7d5e: $0f
    nop                                           ; $7d5f: $00
    nop                                           ; $7d60: $00
    rst RST_38                                    ; $7d61: $ff
    rst RST_38                                    ; $7d62: $ff
    rst RST_38                                    ; $7d63: $ff
    rra                                           ; $7d64: $1f
    nop                                           ; $7d65: $00
    nop                                           ; $7d66: $00
    cp $ff                                        ; $7d67: $fe $ff
    rst RST_38                                    ; $7d69: $ff
    ccf                                           ; $7d6a: $3f
    nop                                           ; $7d6b: $00
    nop                                           ; $7d6c: $00
    cp $ff                                        ; $7d6d: $fe $ff
    rst RST_38                                    ; $7d6f: $ff
    ld a, a                                       ; $7d70: $7f
    nop                                           ; $7d71: $00
    nop                                           ; $7d72: $00
    db $fc                                        ; $7d73: $fc
    ld a, [hl]                                    ; $7d74: $7e
    db $fc                                        ; $7d75: $fc
    rst RST_38                                    ; $7d76: $ff
    ld bc, $f000                                  ; $7d77: $01 $00 $f0
    di                                            ; $7d7a: $f3
    ldh a, [rIE]                                  ; $7d7b: $f0 $ff
    rlca                                          ; $7d7d: $07
    nop                                           ; $7d7e: $00
    ldh [$ffdf], a                                ; $7d7f: $e0 $df
    jp Jump_000_3fff                              ; $7d81: $c3 $ff $3f


    nop                                           ; $7d84: $00
    add b                                         ; $7d85: $80
    rst RST_38                                    ; $7d86: $ff
    rrca                                          ; $7d87: $0f
    cp $ff                                        ; $7d88: $fe $ff
    ld bc, $fc00                                  ; $7d8a: $01 $00 $fc
    rst RST_38                                    ; $7d8d: $ff
    ldh a, [rIE]                                  ; $7d8e: $f0 $ff
    rra                                           ; $7d90: $1f
    nop                                           ; $7d91: $00
    ret nz                                        ; $7d92: $c0

    cp a                                          ; $7d93: $bf
    rlca                                          ; $7d94: $07
    rst RST_38                                    ; $7d95: $ff
    rst RST_38                                    ; $7d96: $ff
    nop                                           ; $7d97: $00
    nop                                           ; $7d98: $00
    cp $3b                                        ; $7d99: $fe $3b
    ldh a, [rIE]                                  ; $7d9b: $f0 $ff
    rra                                           ; $7d9d: $1f
    nop                                           ; $7d9e: $00
    ldh [rIE], a                                  ; $7d9f: $e0 $ff
    inc bc                                        ; $7da1: $03
    rst RST_38                                    ; $7da2: $ff
    rst RST_38                                    ; $7da3: $ff
    ld bc, $fe00                                  ; $7da4: $01 $00 $fe
    ccf                                           ; $7da7: $3f
    or b                                          ; $7da8: $b0
    rst RST_38                                    ; $7da9: $ff
    rra                                           ; $7daa: $1f
    nop                                           ; $7dab: $00
    ldh [rIE], a                                  ; $7dac: $e0 $ff
    inc bc                                        ; $7dae: $03
    ei                                            ; $7daf: $fb
    rst RST_38                                    ; $7db0: $ff
    ld bc, $fe00                                  ; $7db1: $01 $00 $fe
    ccf                                           ; $7db4: $3f
    add b                                         ; $7db5: $80
    rst RST_38                                    ; $7db6: $ff
    rra                                           ; $7db7: $1f
    inc bc                                        ; $7db8: $03
    ldh [rIE], a                                  ; $7db9: $e0 $ff
    inc bc                                        ; $7dbb: $03
    ld hl, sp-$01                                 ; $7dbc: $f8 $ff
    stop                                          ; $7dbe: $10 $00
    cp $3f                                        ; $7dc0: $fe $3f
    sbc b                                         ; $7dc2: $98
    rst RST_38                                    ; $7dc3: $ff
    adc a                                         ; $7dc4: $8f
    ld bc, $ffe0                                  ; $7dc5: $01 $e0 $ff
    pop bc                                        ; $7dc8: $c1
    db $fc                                        ; $7dc9: $fc
    ld a, a                                       ; $7dca: $7f
    ld [$ff00], sp                                ; $7dcb: $08 $00 $ff
    rra                                           ; $7dce: $1f
    cp $ff                                        ; $7dcf: $fe $ff
    ld b, e                                       ; $7dd1: $43
    nop                                           ; $7dd2: $00
    ldh a, [rIE]                                  ; $7dd3: $f0 $ff
    ld hl, sp-$01                                 ; $7dd5: $f8 $ff
    rra                                           ; $7dd7: $1f
    inc bc                                        ; $7dd8: $03
    add b                                         ; $7dd9: $80
    rst RST_38                                    ; $7dda: $ff
    jp Jump_002_7fff                              ; $7ddb: $c3 $ff $7f


    ld [$fe00], sp                                ; $7dde: $08 $00 $fe
    rra                                           ; $7de1: $1f
    cp $ff                                        ; $7de2: $fe $ff
    ld b, e                                       ; $7de4: $43
    nop                                           ; $7de5: $00
    ldh a, [rIE]                                  ; $7de6: $f0 $ff
    ld hl, sp-$01                                 ; $7de8: $f8 $ff
    rra                                           ; $7dea: $1f
    inc bc                                        ; $7deb: $03
    add b                                         ; $7dec: $80
    rst RST_38                                    ; $7ded: $ff
    db $e3                                        ; $7dee: $e3
    rst RST_38                                    ; $7def: $ff
    ld a, a                                       ; $7df0: $7f
    inc c                                         ; $7df1: $0c
    nop                                           ; $7df2: $00
    cp $8f                                        ; $7df3: $fe $8f
    rst RST_38                                    ; $7df5: $ff
    rst RST_38                                    ; $7df6: $ff
    ld hl, $f800                                  ; $7df7: $21 $00 $f8
    ld a, a                                       ; $7dfa: $7f
    cp $ff                                        ; $7dfb: $fe $ff
    add a                                         ; $7dfd: $87
    nop                                           ; $7dfe: $00
    ldh [rIE], a                                  ; $7dff: $e0 $ff
    pop af                                        ; $7e01: $f1
    rst RST_38                                    ; $7e02: $ff
    ccf                                           ; $7e03: $3f
    ld b, $00                                     ; $7e04: $06 $00
    rst RST_38                                    ; $7e06: $ff
    rst RST_00                                    ; $7e07: $c7
    rst RST_38                                    ; $7e08: $ff
    rst RST_38                                    ; $7e09: $ff
    jr jr_002_7e0c                                ; $7e0a: $18 $00

jr_002_7e0c:
    db $fc                                        ; $7e0c: $fc
    sbc a                                         ; $7e0d: $9f
    rst RST_38                                    ; $7e0e: $ff
    rst RST_38                                    ; $7e0f: $ff
    ld b, e                                       ; $7e10: $43
    nop                                           ; $7e11: $00
    ldh a, [$ff7f]                                ; $7e12: $f0 $7f
    db $fc                                        ; $7e14: $fc
    rst RST_38                                    ; $7e15: $ff
    rrca                                          ; $7e16: $0f
    ld bc, $ffc0                                  ; $7e17: $01 $c0 $ff
    di                                            ; $7e1a: $f3
    rst RST_38                                    ; $7e1b: $ff
    ccf                                           ; $7e1c: $3f
    inc c                                         ; $7e1d: $0c
    nop                                           ; $7e1e: $00
    cp $cf                                        ; $7e1f: $fe $cf
    rst RST_38                                    ; $7e21: $ff
    rst RST_38                                    ; $7e22: $ff
    stop                                          ; $7e23: $10 $00
    db $fc                                        ; $7e25: $fc
    ld a, $ff                                     ; $7e26: $3e $ff
    rst RST_38                                    ; $7e28: $ff
    ld b, e                                       ; $7e29: $43
    nop                                           ; $7e2a: $00
    ldh a, [rIE]                                  ; $7e2b: $f0 $ff
    db $fc                                        ; $7e2d: $fc
    rst RST_38                                    ; $7e2e: $ff
    adc a                                         ; $7e2f: $8f
    ld bc, $ef80                                  ; $7e30: $01 $80 $ef
    di                                            ; $7e33: $f3
    rst RST_38                                    ; $7e34: $ff
    ccf                                           ; $7e35: $3f
    ld b, $00                                     ; $7e36: $06 $00
    sbc $ef                                       ; $7e38: $de $ef
    rst RST_38                                    ; $7e3a: $ff
    rst RST_38                                    ; $7e3b: $ff
    jr jr_002_7e3e                                ; $7e3c: $18 $00

jr_002_7e3e:
    ld a, b                                       ; $7e3e: $78
    cp [hl]                                       ; $7e3f: $be
    rst RST_38                                    ; $7e40: $ff
    rst RST_38                                    ; $7e41: $ff

Jump_002_7e42:
    ld h, e                                       ; $7e42: $63
    nop                                           ; $7e43: $00
    ldh [$fffd], a                                ; $7e44: $e0 $fd
    rst RST_38                                    ; $7e46: $ff

Call_002_7e47:
    rst RST_38                                    ; $7e47: $ff
    add a                                         ; $7e48: $87
    ld bc, $e780                                  ; $7e49: $01 $80 $e7
    rst RST_38                                    ; $7e4c: $ff
    rst RST_38                                    ; $7e4d: $ff
    rra                                           ; $7e4e: $1f
    ld [bc], a                                    ; $7e4f: $02
    nop                                           ; $7e50: $00
    adc $ff                                       ; $7e51: $ce $ff
    rst RST_38                                    ; $7e53: $ff
    ld a, a                                       ; $7e54: $7f
    inc c                                         ; $7e55: $0c
    nop                                           ; $7e56: $00
    inc a                                         ; $7e57: $3c
    rst RST_38                                    ; $7e58: $ff
    rst RST_38                                    ; $7e59: $ff
    rst RST_38                                    ; $7e5a: $ff
    stop                                          ; $7e5b: $10 $00
    ld [hl], b                                    ; $7e5d: $70
    cp $ff                                        ; $7e5e: $fe $ff
    rst RST_38                                    ; $7e60: $ff
    ld h, c                                       ; $7e61: $61
    nop                                           ; $7e62: $00
    ret nz                                        ; $7e63: $c0

    db $fd                                        ; $7e64: $fd
    rst RST_38                                    ; $7e65: $ff
    rst RST_38                                    ; $7e66: $ff
    rst RST_00                                    ; $7e67: $c7
    nop                                           ; $7e68: $00
    add b                                         ; $7e69: $80
    ld sp, hl                                     ; $7e6a: $f9
    rst RST_38                                    ; $7e6b: $ff
    rst RST_38                                    ; $7e6c: $ff
    adc a                                         ; $7e6d: $8f
    ld bc, $e300                                  ; $7e6e: $01 $00 $e3
    rst RST_38                                    ; $7e71: $ff
    rst RST_38                                    ; $7e72: $ff
    ccf                                           ; $7e73: $3f
    ld b, $00                                     ; $7e74: $06 $00
    call nz, $ffff                                ; $7e76: $c4 $ff $ff
    ld a, a                                       ; $7e79: $7f
    inc c                                         ; $7e7a: $0c
    nop                                           ; $7e7b: $00
    adc b                                         ; $7e7c: $88
    rst RST_38                                    ; $7e7d: $ff
    rst RST_38                                    ; $7e7e: $ff
    rst RST_38                                    ; $7e7f: $ff
    jr jr_002_7e82                                ; $7e80: $18 $00

jr_002_7e82:
    nop                                           ; $7e82: $00
    cp $ff                                        ; $7e83: $fe $ff
    rst RST_38                                    ; $7e85: $ff
    ld sp, $0000                                  ; $7e86: $31 $00 $00
    db $fc                                        ; $7e89: $fc
    rst RST_38                                    ; $7e8a: $ff
    rst RST_38                                    ; $7e8b: $ff
    rst RST_00                                    ; $7e8c: $c7
    nop                                           ; $7e8d: $00
    nop                                           ; $7e8e: $00
    ld hl, sp-$01                                 ; $7e8f: $f8 $ff
    rst RST_38                                    ; $7e91: $ff
    adc a                                         ; $7e92: $8f
    ld bc, $f000                                  ; $7e93: $01 $00 $f0
    rst RST_38                                    ; $7e96: $ff
    rst RST_38                                    ; $7e97: $ff
    rra                                           ; $7e98: $1f
    inc bc                                        ; $7e99: $03
    nop                                           ; $7e9a: $00
    ret nz                                        ; $7e9b: $c0

    rst RST_38                                    ; $7e9c: $ff
    rst RST_38                                    ; $7e9d: $ff
    ld a, a                                       ; $7e9e: $7f
    inc c                                         ; $7e9f: $0c
    nop                                           ; $7ea0: $00
    nop                                           ; $7ea1: $00
    rst RST_38                                    ; $7ea2: $ff
    rst RST_38                                    ; $7ea3: $ff
    rst RST_38                                    ; $7ea4: $ff
    ld sp, $0000                                  ; $7ea5: $31 $00 $00
    cp $ff                                        ; $7ea8: $fe $ff
    rst RST_38                                    ; $7eaa: $ff
    rst RST_20                                    ; $7eab: $e7
    nop                                           ; $7eac: $00
    nop                                           ; $7ead: $00
    ld hl, sp-$01                                 ; $7eae: $f8 $ff
    rst RST_38                                    ; $7eb0: $ff
    sbc a                                         ; $7eb1: $9f
    inc bc                                        ; $7eb2: $03
    nop                                           ; $7eb3: $00
    ldh [rIE], a                                  ; $7eb4: $e0 $ff
    rst RST_38                                    ; $7eb6: $ff
    ld a, a                                       ; $7eb7: $7f
    inc c                                         ; $7eb8: $0c
    nop                                           ; $7eb9: $00
    nop                                           ; $7eba: $00
    rst RST_38                                    ; $7ebb: $ff
    rst RST_38                                    ; $7ebc: $ff
    rst RST_38                                    ; $7ebd: $ff
    ld sp, $0000                                  ; $7ebe: $31 $00 $00
    ldh a, [rIE]                                  ; $7ec1: $f0 $ff
    rst RST_38                                    ; $7ec3: $ff
    rst RST_08                                    ; $7ec4: $cf
    ld bc, $0000                                  ; $7ec5: $01 $00 $00
    rst RST_38                                    ; $7ec8: $ff
    rst RST_38                                    ; $7ec9: $ff
    ccf                                           ; $7eca: $3f
    ld b, $00                                     ; $7ecb: $06 $00
    nop                                           ; $7ecd: $00
    ld hl, sp-$01                                 ; $7ece: $f8 $ff
    rst RST_38                                    ; $7ed0: $ff
    add hl, sp                                    ; $7ed1: $39
    nop                                           ; $7ed2: $00
    nop                                           ; $7ed3: $00
    ret nz                                        ; $7ed4: $c0

    rst RST_38                                    ; $7ed5: $ff
    rst RST_38                                    ; $7ed6: $ff
    rst RST_08                                    ; $7ed7: $cf
    ld bc, $0000                                  ; $7ed8: $01 $00 $00
    cp $ff                                        ; $7edb: $fe $ff
    rst RST_38                                    ; $7edd: $ff
    inc c                                         ; $7ede: $0c
    nop                                           ; $7edf: $00
    nop                                           ; $7ee0: $00
    ldh [rIE], a                                  ; $7ee1: $e0 $ff
    rst RST_38                                    ; $7ee3: $ff
    rst RST_20                                    ; $7ee4: $e7
    nop                                           ; $7ee5: $00
    nop                                           ; $7ee6: $00
    nop                                           ; $7ee7: $00
    rst RST_38                                    ; $7ee8: $ff
    rst RST_38                                    ; $7ee9: $ff
    ld a, a                                       ; $7eea: $7f
    ld c, $00                                     ; $7eeb: $0e $00
    nop                                           ; $7eed: $00
    ldh [rIE], a                                  ; $7eee: $e0 $ff
    rst RST_38                                    ; $7ef0: $ff
    rst RST_20                                    ; $7ef1: $e7
    nop                                           ; $7ef2: $00
    nop                                           ; $7ef3: $00
    nop                                           ; $7ef4: $00
    cp $ff                                        ; $7ef5: $fe $ff
    rst RST_38                                    ; $7ef7: $ff
    rrca                                          ; $7ef8: $0f
    nop                                           ; $7ef9: $00
    nop                                           ; $7efa: $00
    ldh [rIE], a                                  ; $7efb: $e0 $ff
    rst RST_38                                    ; $7efd: $ff
    rst RST_18                                    ; $7efe: $df
    ld bc, $0000                                  ; $7eff: $01 $00 $00
    ld hl, sp-$01                                 ; $7f02: $f8 $ff
    rst RST_38                                    ; $7f04: $ff
    ld a, a                                       ; $7f05: $7f
    nop                                           ; $7f06: $00
    nop                                           ; $7f07: $00
    nop                                           ; $7f08: $00
    rst RST_30                                    ; $7f09: $f7
    rst RST_38                                    ; $7f0a: $ff
    rst RST_38                                    ; $7f0b: $ff
    dec e                                         ; $7f0c: $1d
    nop                                           ; $7f0d: $00
    nop                                           ; $7f0e: $00
    ret nz                                        ; $7f0f: $c0

    rst RST_38                                    ; $7f10: $ff
    rst RST_38                                    ; $7f11: $ff
    ld a, a                                       ; $7f12: $7f
    ld b, $00                                     ; $7f13: $06 $00
    nop                                           ; $7f15: $00
    ld hl, sp-$01                                 ; $7f16: $f8 $ff
    rst RST_38                                    ; $7f18: $ff
    ccf                                           ; $7f19: $3f
    inc bc                                        ; $7f1a: $03
    nop                                           ; $7f1b: $00
    nop                                           ; $7f1c: $00
    db $fc                                        ; $7f1d: $fc
    rst RST_38                                    ; $7f1e: $ff
    rst RST_38                                    ; $7f1f: $ff
    rra                                           ; $7f20: $1f
    ld bc, $0000                                  ; $7f21: $01 $00 $00
    db $fc                                        ; $7f24: $fc
    rst RST_38                                    ; $7f25: $ff
    rst RST_38                                    ; $7f26: $ff
    rra                                           ; $7f27: $1f
    ld bc, $0000                                  ; $7f28: $01 $00 $00
    cp $ff                                        ; $7f2b: $fe $ff
    rst RST_38                                    ; $7f2d: $ff
    rra                                           ; $7f2e: $1f
    inc bc                                        ; $7f2f: $03
    nop                                           ; $7f30: $00
    nop                                           ; $7f31: $00
    ldh [rIE], a                                  ; $7f32: $e0 $ff
    rst RST_38                                    ; $7f34: $ff
    ld a, a                                       ; $7f35: $7f
    inc c                                         ; $7f36: $0c
    nop                                           ; $7f37: $00
    nop                                           ; $7f38: $00
    nop                                           ; $7f39: $00
    rst RST_38                                    ; $7f3a: $ff
    rst RST_38                                    ; $7f3b: $ff
    rst RST_38                                    ; $7f3c: $ff
    rst RST_00                                    ; $7f3d: $c7
    nop                                           ; $7f3e: $00
    nop                                           ; $7f3f: $00
    nop                                           ; $7f40: $00
    pop af                                        ; $7f41: $f1
    rst RST_38                                    ; $7f42: $ff
    rst RST_38                                    ; $7f43: $ff
    rst RST_38                                    ; $7f44: $ff
    nop                                           ; $7f45: $00
    nop                                           ; $7f46: $00
    nop                                           ; $7f47: $00
    ld b, b                                       ; $7f48: $40
    cp $ff                                        ; $7f49: $fe $ff
    rst RST_38                                    ; $7f4b: $ff
    inc bc                                        ; $7f4c: $03
    nop                                           ; $7f4d: $00
    nop                                           ; $7f4e: $00
    nop                                           ; $7f4f: $00
    cp b                                          ; $7f50: $b8
    rst RST_38                                    ; $7f51: $ff
    rst RST_38                                    ; $7f52: $ff
    rst RST_20                                    ; $7f53: $e7
    ld h, e                                       ; $7f54: $63
    inc b                                         ; $7f55: $04
    add b                                         ; $7f56: $80
    nop                                           ; $7f57: $00
    nop                                           ; $7f58: $00
    nop                                           ; $7f59: $00
    rst RST_38                                    ; $7f5a: $ff
    rst RST_38                                    ; $7f5b: $ff
    rst RST_38                                    ; $7f5c: $ff
    inc e                                         ; $7f5d: $1c
    nop                                           ; $7f5e: $00
    nop                                           ; $7f5f: $00
    nop                                           ; $7f60: $00
    ld [hl], b                                    ; $7f61: $70
    rst RST_38                                    ; $7f62: $ff
    rst RST_38                                    ; $7f63: $ff
    rst RST_38                                    ; $7f64: $ff
    nop                                           ; $7f65: $00
    nop                                           ; $7f66: $00
    nop                                           ; $7f67: $00
    nop                                           ; $7f68: $00
    rst RST_38                                    ; $7f69: $ff
    rst RST_38                                    ; $7f6a: $ff
    rst RST_38                                    ; $7f6b: $ff
    dec c                                         ; $7f6c: $0d
    nop                                           ; $7f6d: $00
    nop                                           ; $7f6e: $00
    nop                                           ; $7f6f: $00
    db $fc                                        ; $7f70: $fc
    rst RST_38                                    ; $7f71: $ff
    rst RST_38                                    ; $7f72: $ff
    ccf                                           ; $7f73: $3f
    nop                                           ; $7f74: $00
    nop                                           ; $7f75: $00
    nop                                           ; $7f76: $00
    nop                                           ; $7f77: $00
    call nz, $ffff                                ; $7f78: $c4 $ff $ff
    rra                                           ; $7f7b: $1f
    nop                                           ; $7f7c: $00
    nop                                           ; $7f7d: $00
    nop                                           ; $7f7e: $00
    adc h                                         ; $7f7f: $8c
    rst RST_38                                    ; $7f80: $ff
    rst RST_38                                    ; $7f81: $ff
    rlca                                          ; $7f82: $07
    nop                                           ; $7f83: $00
    nop                                           ; $7f84: $00
    nop                                           ; $7f85: $00
    nop                                           ; $7f86: $00
    nop                                           ; $7f87: $00
    db $fc                                        ; $7f88: $fc
    rst RST_38                                    ; $7f89: $ff
    ccf                                           ; $7f8a: $3f
    nop                                           ; $7f8b: $00
    nop                                           ; $7f8c: $00
    nop                                           ; $7f8d: $00
    db $fc                                        ; $7f8e: $fc
    rst RST_38                                    ; $7f8f: $ff
    rst RST_38                                    ; $7f90: $ff
    nop                                           ; $7f91: $00
    nop                                           ; $7f92: $00
    nop                                           ; $7f93: $00
    ldh [rIE], a                                  ; $7f94: $e0 $ff
    rst RST_38                                    ; $7f96: $ff
    inc bc                                        ; $7f97: $03
    nop                                           ; $7f98: $00
    nop                                           ; $7f99: $00
    ldh [rIE], a                                  ; $7f9a: $e0 $ff
    rst RST_38                                    ; $7f9c: $ff
    inc bc                                        ; $7f9d: $03
    nop                                           ; $7f9e: $00
    nop                                           ; $7f9f: $00
    ldh [rIE], a                                  ; $7fa0: $e0 $ff
    rst RST_38                                    ; $7fa2: $ff
    rlca                                          ; $7fa3: $07
    nop                                           ; $7fa4: $00
    nop                                           ; $7fa5: $00
    nop                                           ; $7fa6: $00
    ld hl, sp-$01                                 ; $7fa7: $f8 $ff
    inc bc                                        ; $7fa9: $03
    nop                                           ; $7faa: $00
    nop                                           ; $7fab: $00

Call_002_7fac:
    nop                                           ; $7fac: $00
    nop                                           ; $7fad: $00
    add b                                         ; $7fae: $80
    rst RST_38                                    ; $7faf: $ff
    ld [hl], e                                    ; $7fb0: $73
    inc sp                                        ; $7fb1: $33
    db $10                                        ; $7fb2: $10
    inc [hl]                                      ; $7fb3: $34
    nop                                           ; $7fb4: $00
    ld l, b                                       ; $7fb5: $68
    db $10                                        ; $7fb6: $10
    inc [hl]                                      ; $7fb7: $34
    ld [$106a], sp                                ; $7fb8: $08 $6a $10
    inc [hl]                                      ; $7fbb: $34
    db $10                                        ; $7fbc: $10
    ld l, h                                       ; $7fbd: $6c
    db $10                                        ; $7fbe: $10
    inc [hl]                                      ; $7fbf: $34
    jr @+$70                                      ; $7fc0: $18 $6e

    db $10                                        ; $7fc2: $10
    inc [hl]                                      ; $7fc3: $34
    jr nz, @+$72                                  ; $7fc4: $20 $70

    db $10                                        ; $7fc6: $10
    jr z, @+$42                                   ; $7fc7: $28 $40

    ld [hl], d                                    ; $7fc9: $72
    db $10                                        ; $7fca: $10
    jr z, @+$4a                                   ; $7fcb: $28 $48

    ld [hl], h                                    ; $7fcd: $74
    db $10                                        ; $7fce: $10
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

Jump_002_7fff:
    rst RST_38                                    ; $7fff: $ff
