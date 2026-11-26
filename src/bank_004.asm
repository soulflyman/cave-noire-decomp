; Disassembly of "Cave Noire (Japan).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    ld bc, $4099                                  ; $4000: $01 $99 $40
    add b                                         ; $4003: $80
    ld bc, $0100                                  ; $4004: $01 $00 $01
    ld b, e                                       ; $4007: $43
    ld b, c                                       ; $4008: $41
    add b                                         ; $4009: $80
    ld bc, $0100                                  ; $400a: $01 $00 $01
    db $f4                                        ; $400d: $f4
    ld b, c                                       ; $400e: $41
    sub [hl]                                      ; $400f: $96
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    ld bc, $4353                                  ; $4012: $01 $53 $43
    add b                                         ; $4015: $80
    ld bc, $0100                                  ; $4016: $01 $00 $01
    ld d, e                                       ; $4019: $53
    ld b, e                                       ; $401a: $43
    add b                                         ; $401b: $80
    ld bc, $0100                                  ; $401c: $01 $00 $01
    jr z, jr_004_4069                             ; $401f: $28 $48

    add b                                         ; $4021: $80
    ld bc, $0100                                  ; $4022: $01 $00 $01
    jr z, jr_004_406f                             ; $4025: $28 $48

    add b                                         ; $4027: $80
    ld bc, $0100                                  ; $4028: $01 $00 $01
    push hl                                       ; $402b: $e5
    ld c, h                                       ; $402c: $4c
    add b                                         ; $402d: $80
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    ld bc, $4d66                                  ; $4030: $01 $66 $4d
    add b                                         ; $4033: $80
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    ld bc, $4de9                                  ; $4036: $01 $e9 $4d
    ret nz                                        ; $4039: $c0

    nop                                           ; $403a: $00
    nop                                           ; $403b: $00
    ld bc, $4ee9                                  ; $403c: $01 $e9 $4e
    ret nz                                        ; $403f: $c0

    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    ld bc, $4fec                                  ; $4042: $01 $ec $4f
    ret nc                                        ; $4045: $d0

    nop                                           ; $4046: $00
    ld bc, $4fec                                  ; $4047: $01 $ec $4f
    ldh a, [rSB]                                  ; $404a: $f0 $01
    nop                                           ; $404c: $00
    ld bc, $5097                                  ; $404d: $01 $97 $50
    ret nz                                        ; $4050: $c0

    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    ld bc, $5195                                  ; $4053: $01 $95 $51
    ret nz                                        ; $4056: $c0

    nop                                           ; $4057: $00
    nop                                           ; $4058: $00
    ld bc, $5292                                  ; $4059: $01 $92 $52
    ret nc                                        ; $405c: $d0

    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    ld bc, $532c                                  ; $405f: $01 $2c $53
    ret nz                                        ; $4062: $c0

    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    ld bc, $542f                                  ; $4065: $01 $2f $54
    ret nz                                        ; $4068: $c0

jr_004_4069:
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    ld bc, $55b3                                  ; $406b: $01 $b3 $55
    ret nz                                        ; $406e: $c0

jr_004_406f:
    nop                                           ; $406f: $00
    nop                                           ; $4070: $00
    ld bc, $5774                                  ; $4071: $01 $74 $57
    ret nz                                        ; $4074: $c0

    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    ld bc, $5e72                                  ; $4077: $01 $72 $5e
    add b                                         ; $407a: $80
    ld bc, $3b01                                  ; $407b: $01 $01 $3b
    ld e, h                                       ; $407e: $5c
    and b                                         ; $407f: $a0
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    ld bc, $6346                                  ; $4082: $01 $46 $63
    add b                                         ; $4085: $80
    ld bc, $0100                                  ; $4086: $01 $00 $01
    sub e                                         ; $4089: $93
    ld l, c                                       ; $408a: $69
    add b                                         ; $408b: $80
    ld bc, $0100                                  ; $408c: $01 $00 $01
    add a                                         ; $408f: $87
    ld a, c                                       ; $4090: $79
    add b                                         ; $4091: $80
    ld bc, $3301                                  ; $4092: $01 $01 $33
    ld a, [hl]                                    ; $4095: $7e
    sub b                                         ; $4096: $90
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    stop                                          ; $4099: $10 $00
    db $10                                        ; $409b: $10
    rst RST_38                                    ; $409c: $ff
    add e                                         ; $409d: $83
    ld sp, hl                                     ; $409e: $f9
    rst RST_38                                    ; $409f: $ff
    db $fd                                        ; $40a0: $fd
    dec b                                         ; $40a1: $05
    rst RST_38                                    ; $40a2: $ff
    add c                                         ; $40a3: $81
    xor $07                                       ; $40a4: $ee $07
    rst RST_38                                    ; $40a6: $ff
    adc l                                         ; $40a7: $8d
    sub e                                         ; $40a8: $93
    ldh [c], a                                    ; $40a9: $e2
    jp c, $c6e3                                   ; $40aa: $da $e3 $c6

    ei                                            ; $40ad: $fb
    rst RST_38                                    ; $40ae: $ff
    rst RST_38                                    ; $40af: $ff
    inc [hl]                                      ; $40b0: $34
    ret c                                         ; $40b1: $d8

    or e                                          ; $40b2: $b3
    call c, $0390                                 ; $40b3: $dc $90 $03
    rst RST_38                                    ; $40b6: $ff
    cp l                                          ; $40b7: $bd
    ld [$e809], sp                                ; $40b8: $08 $09 $e8
    add hl, bc                                    ; $40bb: $09
    jr z, @-$35                                   ; $40bc: $28 $c9

    db $fc                                        ; $40be: $fc
    rst RST_38                                    ; $40bf: $ff
    ldh [rSTAT], a                                ; $40c0: $e0 $41
    ld e, b                                       ; $40c2: $58
    pop hl                                        ; $40c3: $e1
    ld c, b                                       ; $40c4: $48
    pop af                                        ; $40c5: $f1
    db $fc                                        ; $40c6: $fc
    rst RST_38                                    ; $40c7: $ff
    sbc c                                         ; $40c8: $99
    ld b, h                                       ; $40c9: $44
    ld [hl+], a                                   ; $40ca: $22

jr_004_40cb:
    db $dd                                        ; $40cb: $dd
    nop                                           ; $40cc: $00
    rst RST_38                                    ; $40cd: $ff
    nop                                           ; $40ce: $00
    rst RST_38                                    ; $40cf: $ff
    ld h, [hl]                                    ; $40d0: $66
    ld de, $7788                                  ; $40d1: $11 $88 $77
    nop                                           ; $40d4: $00
    rst RST_38                                    ; $40d5: $ff
    nop                                           ; $40d6: $00
    rst RST_38                                    ; $40d7: $ff
    db $10                                        ; $40d8: $10
    sub b                                         ; $40d9: $90
    rla                                           ; $40da: $17
    sub b                                         ; $40db: $90
    inc d                                         ; $40dc: $14
    sub e                                         ; $40dd: $93
    ccf                                           ; $40de: $3f
    rst RST_38                                    ; $40df: $ff
    rlca                                          ; $40e0: $07
    add d                                         ; $40e1: $82
    ld a, [de]                                    ; $40e2: $1a
    add a                                         ; $40e3: $87
    ld [de], a                                    ; $40e4: $12
    adc a                                         ; $40e5: $8f
    ccf                                           ; $40e6: $3f
    rst RST_38                                    ; $40e7: $ff
    ret                                           ; $40e8: $c9


    ld b, a                                       ; $40e9: $47
    ld e, e                                       ; $40ea: $5b
    rst RST_00                                    ; $40eb: $c7
    ld h, e                                       ; $40ec: $63
    rst RST_18                                    ; $40ed: $df
    rst RST_38                                    ; $40ee: $ff
    rst RST_38                                    ; $40ef: $ff
    inc l                                         ; $40f0: $2c
    dec de                                        ; $40f1: $1b
    call Call_000_093b                            ; $40f2: $cd $3b $09
    inc bc                                        ; $40f5: $03
    rst RST_38                                    ; $40f6: $ff
    add e                                         ; $40f7: $83
    sbc a                                         ; $40f8: $9f
    rst RST_38                                    ; $40f9: $ff
    cp a                                          ; $40fa: $bf
    dec b                                         ; $40fb: $05
    rst RST_38                                    ; $40fc: $ff
    add c                                         ; $40fd: $81
    ld [hl], a                                    ; $40fe: $77
    rlca                                          ; $40ff: $07
    rst RST_38                                    ; $4100: $ff
    ret nz                                        ; $4101: $c0

jr_004_4102:
    inc c                                         ; $4102: $0c
    ld [$0ceb], sp                                ; $4103: $08 $eb $0c
    add hl, hl                                    ; $4106: $29
    adc $fc                                       ; $4107: $ce $fc
    rst RST_38                                    ; $4109: $ff
    ld h, b                                       ; $410a: $60
    ld b, c                                       ; $410b: $41
    ld e, b                                       ; $410c: $58
    ld h, c                                       ; $410d: $61
    ret z                                         ; $410e: $c8

    ld [hl], c                                    ; $410f: $71
    db $fc                                        ; $4110: $fc
    rst RST_38                                    ; $4111: $ff
    add hl, de                                    ; $4112: $19
    inc h                                         ; $4113: $24
    ld [bc], a                                    ; $4114: $02
    dec a                                         ; $4115: $3d
    nop                                           ; $4116: $00
    ccf                                           ; $4117: $3f
    nop                                           ; $4118: $00
    rst RST_38                                    ; $4119: $ff
    ld h, [hl]                                    ; $411a: $66
    ld de, $7788                                  ; $411b: $11 $88 $77
    nop                                           ; $411e: $00
    rst RST_38                                    ; $411f: $ff
    nop                                           ; $4120: $00
    rst RST_38                                    ; $4121: $ff
    sbc b                                         ; $4122: $98
    ld b, h                                       ; $4123: $44
    jr nz, jr_004_4102                            ; $4124: $20 $dc

    nop                                           ; $4126: $00
    db $fc                                        ; $4127: $fc
    nop                                           ; $4128: $00
    rst RST_38                                    ; $4129: $ff
    ld h, [hl]                                    ; $412a: $66
    ld de, $7788                                  ; $412b: $11 $88 $77
    nop                                           ; $412e: $00
    rst RST_38                                    ; $412f: $ff
    nop                                           ; $4130: $00
    rst RST_38                                    ; $4131: $ff
    jr nc, @+$12                                  ; $4132: $30 $10

    rst RST_10                                    ; $4134: $d7
    jr nc, jr_004_40cb                            ; $4135: $30 $94

    ld [hl], e                                    ; $4137: $73
    ccf                                           ; $4138: $3f
    rst RST_38                                    ; $4139: $ff
    ld b, $82                                     ; $413a: $06 $82
    ld a, [de]                                    ; $413c: $1a
    add [hl]                                      ; $413d: $86
    inc de                                        ; $413e: $13
    adc [hl]                                      ; $413f: $8e
    ccf                                           ; $4140: $3f
    rst RST_38                                    ; $4141: $ff
    nop                                           ; $4142: $00
    stop                                          ; $4143: $10 $00
    db $10                                        ; $4145: $10
    rst RST_38                                    ; $4146: $ff
    add e                                         ; $4147: $83
    cp $ff                                        ; $4148: $fe $ff
    cp $03                                        ; $414a: $fe $03
    rst RST_38                                    ; $414c: $ff
    add c                                         ; $414d: $81
    db $d3                                        ; $414e: $d3
    inc bc                                        ; $414f: $03
    rst RST_38                                    ; $4150: $ff
    add e                                         ; $4151: $83
    pop af                                        ; $4152: $f1
    rst RST_38                                    ; $4153: $ff
    db $fd                                        ; $4154: $fd
    inc bc                                        ; $4155: $03
    rst RST_38                                    ; $4156: $ff
    and b                                         ; $4157: $a0
    db $db                                        ; $4158: $db
    rst RST_38                                    ; $4159: $ff
    sub $ff                                       ; $415a: $d6 $ff
    add hl, de                                    ; $415c: $19
    or $ce                                        ; $415d: $f6 $ce
    rst RST_30                                    ; $415f: $f7
    rst RST_28                                    ; $4160: $ef
    rst RST_38                                    ; $4161: $ff
    ei                                            ; $4162: $fb
    db $ec                                        ; $4163: $ec
    rst RST_10                                    ; $4164: $d7
    rst RST_28                                    ; $4165: $ef
    sbc e                                         ; $4166: $9b
    rst RST_38                                    ; $4167: $ff
    ld l, [hl]                                    ; $4168: $6e
    rst RST_10                                    ; $4169: $d7
    db $e4                                        ; $416a: $e4
    ld d, a                                       ; $416b: $57
    and d                                         ; $416c: $a2
    jp Jump_000_39f1                              ; $416d: $c3 $f1 $39


    dec [hl]                                      ; $4170: $35
    ld sp, hl                                     ; $4171: $f9
    add l                                         ; $4172: $85
    ld sp, hl                                     ; $4173: $f9
    pop af                                        ; $4174: $f1
    dec sp                                        ; $4175: $3b
    jp z, $80b7                                   ; $4176: $ca $b7 $80

    add [hl]                                      ; $4179: $86
    ld [$b7fd], sp                                ; $417a: $08 $fd $b7
    sub l                                         ; $417d: $95
    db $db                                        ; $417e: $db
    db $db                                        ; $417f: $db
    or d                                          ; $4180: $b2
    ld a, [$a3be]                                 ; $4181: $fa $be $a3
    halt                                          ; $4184: $76
    db $eb                                        ; $4185: $eb
    ld h, a                                       ; $4186: $67
    xor d                                         ; $4187: $aa
    ld b, l                                       ; $4188: $45
    jp $9c8f                                      ; $4189: $c3 $8f $9c


    xor h                                         ; $418c: $ac
    sbc a                                         ; $418d: $9f
    and c                                         ; $418e: $a1
    sbc a                                         ; $418f: $9f
    adc a                                         ; $4190: $8f
    call c, $ed53                                 ; $4191: $dc $53 $ed
    db $db                                        ; $4194: $db
    rst RST_38                                    ; $4195: $ff
    ld l, e                                       ; $4196: $6b
    rst RST_38                                    ; $4197: $ff
    sbc b                                         ; $4198: $98
    ld l, a                                       ; $4199: $6f
    ld [hl], e                                    ; $419a: $73
    rst RST_28                                    ; $419b: $ef
    rst RST_30                                    ; $419c: $f7
    rst RST_38                                    ; $419d: $ff
    rst RST_18                                    ; $419e: $df
    scf                                           ; $419f: $37
    db $eb                                        ; $41a0: $eb
    rst RST_30                                    ; $41a1: $f7
    reti                                          ; $41a2: $d9


    rst RST_38                                    ; $41a3: $ff
    ld a, a                                       ; $41a4: $7f
    rst RST_38                                    ; $41a5: $ff
    ld a, a                                       ; $41a6: $7f
    inc bc                                        ; $41a7: $03
    rst RST_38                                    ; $41a8: $ff
    add c                                         ; $41a9: $81
    rlc e                                         ; $41aa: $cb $03
    rst RST_38                                    ; $41ac: $ff
    add e                                         ; $41ad: $83
    adc a                                         ; $41ae: $8f
    rst RST_38                                    ; $41af: $ff
    cp a                                          ; $41b0: $bf
    inc b                                         ; $41b1: $04
    rst RST_38                                    ; $41b2: $ff
    cp a                                          ; $41b3: $bf
    rst RST_18                                    ; $41b4: $df
    call nc, $fea0                                ; $41b5: $d4 $a0 $fe
    db $ec                                        ; $41b8: $ec
    rst RST_18                                    ; $41b9: $df
    xor $9b                                       ; $41ba: $ee $9b
    db $ec                                        ; $41bc: $ec
    db $fd                                        ; $41bd: $fd
    ld e, $e3                                     ; $41be: $1e $e3
    cp h                                          ; $41c0: $bc
    or a                                          ; $41c1: $b7
    db $db                                        ; $41c2: $db
    ld [bc], a                                    ; $41c3: $02
    db $fd                                        ; $41c4: $fd
    ret z                                         ; $41c5: $c8

    or a                                          ; $41c6: $b7
    ld l, d                                       ; $41c7: $6a
    ld d, l                                       ; $41c8: $55
    inc h                                         ; $41c9: $24
    dec sp                                        ; $41ca: $3b
    inc h                                         ; $41cb: $24
    dec sp                                        ; $41cc: $3b
    dec l                                         ; $41cd: $2d
    ld [hl-], a                                   ; $41ce: $32
    ld b, l                                       ; $41cf: $45
    ld a, d                                       ; $41d0: $7a
    pop bc                                        ; $41d1: $c1
    cp [hl]                                       ; $41d2: $be
    ld [bc], a                                    ; $41d3: $02
    db $fd                                        ; $41d4: $fd
    ld c, c                                       ; $41d5: $49
    or a                                          ; $41d6: $b7
    ld l, d                                       ; $41d7: $6a
    sub [hl]                                      ; $41d8: $96
    inc h                                         ; $41d9: $24
    call c, $dc24                                 ; $41da: $dc $24 $dc
    ld c, h                                       ; $41dd: $4c
    or h                                          ; $41de: $b4
    ld b, $fa                                     ; $41df: $06 $fa
    ld b, c                                       ; $41e1: $41
    cp a                                          ; $41e2: $bf
    rst RST_38                                    ; $41e3: $ff
    ei                                            ; $41e4: $fb
    dec hl                                        ; $41e5: $2b
    dec b                                         ; $41e6: $05
    ld a, a                                       ; $41e7: $7f
    scf                                           ; $41e8: $37
    ei                                            ; $41e9: $fb
    ld [hl], a                                    ; $41ea: $77
    reti                                          ; $41eb: $d9


    scf                                           ; $41ec: $37
    cp a                                          ; $41ed: $bf
    ld a, b                                       ; $41ee: $78
    rst RST_00                                    ; $41ef: $c7
    dec a                                         ; $41f0: $3d
    db $ed                                        ; $41f1: $ed
    db $db                                        ; $41f2: $db
    nop                                           ; $41f3: $00
    inc c                                         ; $41f4: $0c
    nop                                           ; $41f5: $00
    add b                                         ; $41f6: $80
    add c                                         ; $41f7: $81
    ld a, [bc]                                    ; $41f8: $0a
    ld bc, $0703                                  ; $41f9: $01 $03 $07
    rrca                                          ; $41fc: $0f
    ld c, $1c                                     ; $41fd: $0e $1c
    inc a                                         ; $41ff: $3c
    add hl, sp                                    ; $4200: $39
    add hl, sp                                    ; $4201: $39
    ld a, b                                       ; $4202: $78
    add c                                         ; $4203: $81
    nop                                           ; $4204: $00
    add b                                         ; $4205: $80
    add d                                         ; $4206: $82
    inc b                                         ; $4207: $04
    inc bc                                        ; $4208: $03
    rrca                                          ; $4209: $0f
    ccf                                           ; $420a: $3f
    ld a, h                                       ; $420b: $7c
    add h                                         ; $420c: $84
    nop                                           ; $420d: $00
    rst RST_38                                    ; $420e: $ff
    nop                                           ; $420f: $00
    rst RST_38                                    ; $4210: $ff
    add b                                         ; $4211: $80
    add d                                         ; $4212: $82
    ld a, [bc]                                    ; $4213: $0a
    rst RST_08                                    ; $4214: $cf
    adc a                                         ; $4215: $8f
    rra                                           ; $4216: $1f
    dec a                                         ; $4217: $3d
    ld a, c                                       ; $4218: $79
    di                                            ; $4219: $f3
    rst RST_20                                    ; $421a: $e7
    rst RST_08                                    ; $421b: $cf
    sbc a                                         ; $421c: $9f
    ld a, a                                       ; $421d: $7f
    add h                                         ; $421e: $84
    nop                                           ; $421f: $00
    rst RST_38                                    ; $4220: $ff
    nop                                           ; $4221: $00
    rst RST_38                                    ; $4222: $ff
    add b                                         ; $4223: $80
    add d                                         ; $4224: $82
    dec b                                         ; $4225: $05
    ld a, c                                       ; $4226: $79
    di                                            ; $4227: $f3
    rst RST_20                                    ; $4228: $e7
    rst RST_08                                    ; $4229: $cf
    sbc a                                         ; $422a: $9f
    add d                                         ; $422b: $82
    nop                                           ; $422c: $00
    rst RST_38                                    ; $422d: $ff
    add b                                         ; $422e: $80
    add d                                         ; $422f: $82
    ld b, $fb                                     ; $4230: $06 $fb
    di                                            ; $4232: $f3
    rst RST_20                                    ; $4233: $e7
    rst RST_08                                    ; $4234: $cf
    sbc [hl]                                      ; $4235: $9e
    ccf                                           ; $4236: $3f
    adc b                                         ; $4237: $88
    nop                                           ; $4238: $00
    rst RST_38                                    ; $4239: $ff
    nop                                           ; $423a: $00
    cp $00                                        ; $423b: $fe $00
    rst RST_38                                    ; $423d: $ff
    nop                                           ; $423e: $00
    rst RST_38                                    ; $423f: $ff
    add b                                         ; $4240: $80
    add d                                         ; $4241: $82
    dec c                                         ; $4242: $0d
    db $e3                                        ; $4243: $e3
    ret nz                                        ; $4244: $c0

    sbc b                                         ; $4245: $98
    inc a                                         ; $4246: $3c
    ld a, b                                       ; $4247: $78
    di                                            ; $4248: $f3
    rst RST_20                                    ; $4249: $e7
    rst RST_08                                    ; $424a: $cf
    sbc [hl]                                      ; $424b: $9e
    inc a                                         ; $424c: $3c
    ld a, c                                       ; $424d: $79
    di                                            ; $424e: $f3
    rst RST_20                                    ; $424f: $e7
    inc bc                                        ; $4250: $03
    nop                                           ; $4251: $00
    add b                                         ; $4252: $80
    add c                                         ; $4253: $81
    rrca                                          ; $4254: $0f
    ret nz                                        ; $4255: $c0

    ld hl, sp-$02                                 ; $4256: $f8 $fe
    ld a, a                                       ; $4258: $7f
    rra                                           ; $4259: $1f
    rra                                           ; $425a: $1f
    rra                                           ; $425b: $1f
    ld e, $9c                                     ; $425c: $1e $9c
    inc a                                         ; $425e: $3c
    ld a, b                                       ; $425f: $78
    ldh a, [$ffe0]                                ; $4260: $f0 $e0
    cp $bf                                        ; $4262: $fe $bf
    ld a, [bc]                                    ; $4264: $0a
    nop                                           ; $4265: $00
    add b                                         ; $4266: $80
    add c                                         ; $4267: $81
    rrca                                          ; $4268: $0f
    add b                                         ; $4269: $80
    ret nz                                        ; $426a: $c0

    ldh [$fff0], a                                ; $426b: $e0 $f0
    ld a, b                                       ; $426d: $78
    jr c, jr_004_42ac                             ; $426e: $38 $3c

    inc e                                         ; $4270: $1c
    inc e                                         ; $4271: $1c
    ld e, $8e                                     ; $4272: $1e $8e
    ld [hl], b                                    ; $4274: $70
    ld [hl], b                                    ; $4275: $70
    db $fc                                        ; $4276: $fc
    cp $83                                        ; $4277: $fe $83
    rst RST_38                                    ; $4279: $ff
    nop                                           ; $427a: $00
    rst RST_38                                    ; $427b: $ff
    add b                                         ; $427c: $80
    add d                                         ; $427d: $82
    ld c, c                                       ; $427e: $49
    di                                            ; $427f: $f3
    db $e3                                        ; $4280: $e3
    rst RST_20                                    ; $4281: $e7
    rst RST_28                                    ; $4282: $ef
    cp $fc                                        ; $4283: $fe $fc
    ld hl, sp-$10                                 ; $4285: $f8 $f0
    ldh a, [rSVBK]                                ; $4287: $f0 $70
    ccf                                           ; $4289: $3f
    ld a, c                                       ; $428a: $79
    ld [hl], e                                    ; $428b: $73
    daa                                           ; $428c: $27
    rrca                                          ; $428d: $0f
    adc [hl]                                      ; $428e: $8e
    call nz, $f1e1                                ; $428f: $c4 $e1 $f1
    ld hl, sp+$7c                                 ; $4292: $f8 $7c
    ccf                                           ; $4294: $3f
    rra                                           ; $4295: $1f
    rrca                                          ; $4296: $0f
    ld c, $0e                                     ; $4297: $0e $0e
    rst RST_30                                    ; $4299: $f7
    rst RST_20                                    ; $429a: $e7
    rst RST_08                                    ; $429b: $cf
    sbc [hl]                                      ; $429c: $9e
    inc a                                         ; $429d: $3c
    ld a, c                                       ; $429e: $79
    di                                            ; $429f: $f3
    rst RST_20                                    ; $42a0: $e7
    rst RST_08                                    ; $42a1: $cf
    sbc [hl]                                      ; $42a2: $9e
    inc a                                         ; $42a3: $3c
    ld hl, sp-$10                                 ; $42a4: $f8 $f0
    ldh [rSB], a                                  ; $42a6: $e0 $01
    inc bc                                        ; $42a8: $03
    rst RST_08                                    ; $42a9: $cf
    cp $fc                                        ; $42aa: $fe $fc

jr_004_42ac:
    ld hl, sp-$10                                 ; $42ac: $f8 $f0
    ldh [$ffe1], a                                ; $42ae: $e0 $e1
    di                                            ; $42b0: $f3
    ld a, a                                       ; $42b1: $7f
    ccf                                           ; $42b2: $3f
    ld e, $3f                                     ; $42b3: $1e $3f
    ld a, a                                       ; $42b5: $7f
    di                                            ; $42b6: $f3
    pop hl                                        ; $42b7: $e1
    ret nz                                        ; $42b8: $c0

    ccf                                           ; $42b9: $3f
    ld bc, $3c18                                  ; $42ba: $01 $18 $3c
    ld a, b                                       ; $42bd: $78
    ldh a, [$ffe6]                                ; $42be: $f0 $e6
    rst RST_08                                    ; $42c0: $cf
    add a                                         ; $42c1: $87
    inc bc                                        ; $42c2: $03
    ld bc, $8001                                  ; $42c3: $01 $01 $80
    ret nz                                        ; $42c6: $c0

    ldh a, [$ff82]                                ; $42c7: $f0 $82
    nop                                           ; $42c9: $00
    rst RST_38                                    ; $42ca: $ff
    add b                                         ; $42cb: $80
    add d                                         ; $42cc: $82
    dec de                                        ; $42cd: $1b
    adc $ef                                       ; $42ce: $ce $ef
    ld h, a                                       ; $42d0: $67
    ld h, a                                       ; $42d1: $67
    rlca                                          ; $42d2: $07
    rlca                                          ; $42d3: $07
    rlca                                          ; $42d4: $07
    rlca                                          ; $42d5: $07
    add a                                         ; $42d6: $87
    add a                                         ; $42d7: $87
    rst RST_00                                    ; $42d8: $c7
    rst RST_00                                    ; $42d9: $c7
    rst RST_00                                    ; $42da: $c7
    rst RST_08                                    ; $42db: $cf
    cp $fe                                        ; $42dc: $fe $fe
    ld [hl], b                                    ; $42de: $70
    ld a, b                                       ; $42df: $78
    jr c, @+$3a                                   ; $42e0: $38 $38

    inc a                                         ; $42e2: $3c
    rra                                           ; $42e3: $1f
    rra                                           ; $42e4: $1f
    rrca                                          ; $42e5: $0f
    rlca                                          ; $42e6: $07
    inc bc                                        ; $42e7: $03
    ld bc, $000b                                  ; $42e8: $01 $0b $00
    add b                                         ; $42eb: $80
    add c                                         ; $42ec: $81
    rrca                                          ; $42ed: $0f
    ld c, $1e                                     ; $42ee: $0e $1e
    inc a                                         ; $42f0: $3c
    ld a, b                                       ; $42f1: $78
    ldh a, [$ffe0]                                ; $42f2: $f0 $e0
    ret nz                                        ; $42f4: $c0

    add b                                         ; $42f5: $80
    add b                                         ; $42f6: $80
    ret nz                                        ; $42f7: $c0

    ldh a, [$fffe]                                ; $42f8: $f0 $fe
    ld a, a                                       ; $42fa: $7f
    rra                                           ; $42fb: $1f
    inc bc                                        ; $42fc: $03
    add c                                         ; $42fd: $81
    nop                                           ; $42fe: $00
    add b                                         ; $42ff: $80
    add d                                         ; $4300: $82
    dec c                                         ; $4301: $0d
    rlca                                          ; $4302: $07
    rrca                                          ; $4303: $0f
    ld e, $3c                                     ; $4304: $1e $3c
    ld a, c                                       ; $4306: $79
    di                                            ; $4307: $f3
    rst RST_30                                    ; $4308: $f7
    ld a, a                                       ; $4309: $7f
    ld a, $1c                                     ; $430a: $3e $1c
    ld e, $0e                                     ; $430c: $1e $0e
    adc $84                                       ; $430e: $ce $84
    nop                                           ; $4310: $00
    rst RST_38                                    ; $4311: $ff
    nop                                           ; $4312: $00
    rst RST_38                                    ; $4313: $ff
    add b                                         ; $4314: $80
    add d                                         ; $4315: $82
    ld c, $7f                                     ; $4316: $0e $7f
    add b                                         ; $4318: $80
    jr nc, jr_004_4393                            ; $4319: $30 $78

    db $fc                                        ; $431b: $fc
    cp $cf                                        ; $431c: $fe $cf
    add a                                         ; $431e: $87
    inc bc                                        ; $431f: $03
    inc bc                                        ; $4320: $03
    inc bc                                        ; $4321: $03
    rlca                                          ; $4322: $07
    rra                                           ; $4323: $1f
    rra                                           ; $4324: $1f
    adc d                                         ; $4325: $8a
    nop                                           ; $4326: $00
    rst RST_38                                    ; $4327: $ff
    nop                                           ; $4328: $00
    rst RST_38                                    ; $4329: $ff
    nop                                           ; $432a: $00
    cp $00                                        ; $432b: $fe $00
    ld a, a                                       ; $432d: $7f
    nop                                           ; $432e: $00
    rra                                           ; $432f: $1f
    dec b                                         ; $4330: $05
    nop                                           ; $4331: $00
    add b                                         ; $4332: $80
    add c                                         ; $4333: $81
    dec bc                                        ; $4334: $0b
    ld bc, $0301                                  ; $4335: $01 $01 $03
    add e                                         ; $4338: $83
    add c                                         ; $4339: $81
    add e                                         ; $433a: $83
    adc a                                         ; $433b: $8f
    ccf                                           ; $433c: $3f
    cp $f8                                        ; $433d: $fe $f8
    ret nz                                        ; $433f: $c0

    add c                                         ; $4340: $81
    nop                                           ; $4341: $00
    add b                                         ; $4342: $80
    add d                                         ; $4343: $82
    dec bc                                        ; $4344: $0b
    cp $ce                                        ; $4345: $fe $ce
    call c, $f8dc                                 ; $4347: $dc $dc $f8
    ld hl, sp-$10                                 ; $434a: $f8 $f0
    ldh a, [$ffe0]                                ; $434c: $f0 $e0
    ret nz                                        ; $434e: $c0

    add b                                         ; $434f: $80
    dec bc                                        ; $4350: $0b
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    ld d, $00                                     ; $4353: $16 $00
    add b                                         ; $4355: $80
    add e                                         ; $4356: $83
    dec b                                         ; $4357: $05
    jr nc, jr_004_4391                            ; $4358: $30 $37

    scf                                           ; $435a: $37
    jr nc, jr_004_438d                            ; $435b: $30 $30

    inc b                                         ; $435d: $04
    nop                                           ; $435e: $00
    inc b                                         ; $435f: $04
    ret nz                                        ; $4360: $c0

    inc b                                         ; $4361: $04
    ldh [rDIV], a                                 ; $4362: $e0 $04
    ret nz                                        ; $4364: $c0

    add b                                         ; $4365: $80
    add e                                         ; $4366: $83
    inc b                                         ; $4367: $04
    jr nc, jr_004_439d                            ; $4368: $30 $33

    scf                                           ; $436a: $37
    ld [hl], $84                                  ; $436b: $36 $84
    ccf                                           ; $436d: $3f
    scf                                           ; $436e: $37
    dec sp                                        ; $436f: $3b
    dec de                                        ; $4370: $1b
    inc b                                         ; $4371: $04
    nop                                           ; $4372: $00
    inc b                                         ; $4373: $04
    ret nz                                        ; $4374: $c0

    adc b                                         ; $4375: $88
    and $c6                                       ; $4376: $e6 $c6
    rst RST_30                                    ; $4378: $f7
    and $f3                                       ; $4379: $e6 $f3
    di                                            ; $437b: $f3
    and e                                         ; $437c: $a3
    add e                                         ; $437d: $83
    ld [$0400], sp                                ; $437e: $08 $00 $04
    ld a, a                                       ; $4381: $7f
    ld [$0403], sp                                ; $4382: $08 $03 $04
    nop                                           ; $4385: $00
    ld [$086c], sp                                ; $4386: $08 $6c $08
    nop                                           ; $4389: $00
    inc c                                         ; $438a: $0c
    ret c                                         ; $438b: $d8

    inc b                                         ; $438c: $04

jr_004_438d:
    nop                                           ; $438d: $00
    ld [$8463], sp                                ; $438e: $08 $63 $84

jr_004_4391:
    ld h, b                                       ; $4391: $60
    ld h, b                                       ; $4392: $60

jr_004_4393:
    ld a, b                                       ; $4393: $78
    ld a, b                                       ; $4394: $78
    inc b                                         ; $4395: $04
    nop                                           ; $4396: $00
    add d                                         ; $4397: $82
    ld h, e                                       ; $4398: $63
    ld h, e                                       ; $4399: $63
    inc b                                         ; $439a: $04
    ld l, a                                       ; $439b: $6f
    add [hl]                                      ; $439c: $86

jr_004_439d:
    ld h, a                                       ; $439d: $67
    ld h, e                                       ; $439e: $63
    ld c, $06                                     ; $439f: $0e $06
    rrca                                          ; $43a1: $0f
    rrca                                          ; $43a2: $0f
    ld b, $00                                     ; $43a3: $06 $00
    adc d                                         ; $43a5: $8a
    ldh [$ffe0], a                                ; $43a6: $e0 $e0
    rst RST_20                                    ; $43a8: $e7
    rst RST_20                                    ; $43a9: $e7
    rlca                                          ; $43aa: $07
    rlca                                          ; $43ab: $07
    ldh [$ff60], a                                ; $43ac: $e0 $60
    pop hl                                        ; $43ae: $e1
    ldh [rDIV], a                                 ; $43af: $e0 $04
    nop                                           ; $43b1: $00
    add d                                         ; $43b2: $82
    ret nz                                        ; $43b3: $c0

    ret nz                                        ; $43b4: $c0

    inc b                                         ; $43b5: $04
    ld hl, sp-$7a                                 ; $43b6: $f8 $86
    pop hl                                        ; $43b8: $e1
    pop bc                                        ; $43b9: $c1
    reti                                          ; $43ba: $d9


    reti                                          ; $43bb: $d9


    ld hl, sp-$08                                 ; $43bc: $f8 $f8
    ld [$8800], sp                                ; $43be: $08 $00 $88
    inc a                                         ; $43c1: $3c
    ld a, b                                       ; $43c2: $78
    cp $fc                                        ; $43c3: $fe $fc
    xor $c6                                       ; $43c5: $ee $c6
    ld b, $06                                     ; $43c7: $06 $06
    inc b                                         ; $43c9: $04
    nop                                           ; $43ca: $00
    add d                                         ; $43cb: $82
    inc c                                         ; $43cc: $0c
    inc c                                         ; $43cd: $0c
    inc b                                         ; $43ce: $04
    ld l, h                                       ; $43cf: $6c
    add [hl]                                      ; $43d0: $86
    ld a, [hl]                                    ; $43d1: $7e
    ld l, h                                       ; $43d2: $6c
    ld a, a                                       ; $43d3: $7f
    ld a, [hl]                                    ; $43d4: $7e
    ld a, a                                       ; $43d5: $7f
    rst RST_38                                    ; $43d6: $ff
    inc b                                         ; $43d7: $04
    nop                                           ; $43d8: $00
    add b                                         ; $43d9: $80
    add e                                         ; $43da: $83
    ld b, $0c                                     ; $43db: $06 $0c
    ld a, a                                       ; $43dd: $7f
    ld a, a                                       ; $43de: $7f
    inc c                                         ; $43df: $0c
    ld a, a                                       ; $43e0: $7f
    ld a, a                                       ; $43e1: $7f
    inc b                                         ; $43e2: $04
    nop                                           ; $43e3: $00
    inc c                                         ; $43e4: $0c
    ld h, b                                       ; $43e5: $60
    inc b                                         ; $43e6: $04
    nop                                           ; $43e7: $00
    inc b                                         ; $43e8: $04
    jr nc, jr_004_43ef                            ; $43e9: $30 $04

    ld a, h                                       ; $43eb: $7c
    add h                                         ; $43ec: $84
    jr nc, jr_004_441f                            ; $43ed: $30 $30

jr_004_43ef:
    scf                                           ; $43ef: $37
    scf                                           ; $43f0: $37
    ld c, $00                                     ; $43f1: $0e $00
    add d                                         ; $43f3: $82
    add b                                         ; $43f4: $80
    nop                                           ; $43f5: $00
    ld [$0403], sp                                ; $43f6: $08 $03 $04
    ld a, a                                       ; $43f9: $7f
    inc b                                         ; $43fa: $04
    nop                                           ; $43fb: $00
    inc b                                         ; $43fc: $04
    ld a, [hl]                                    ; $43fd: $7e
    inc c                                         ; $43fe: $0c

Jump_004_43ff:
    nop                                           ; $43ff: $00
    ld b, $db                                     ; $4400: $06 $db
    add [hl]                                      ; $4402: $86
    rst RST_18                                    ; $4403: $df
    db $db                                        ; $4404: $db
    rst RST_18                                    ; $4405: $df
    sbc $de                                       ; $4406: $de $de
    call c, Call_000_0004                         ; $4408: $dc $04 $00
    add b                                         ; $440b: $80
    add e                                         ; $440c: $83
    ld b, $7e                                     ; $440d: $06 $7e
    ld l, a                                       ; $440f: $6f
    ld h, e                                       ; $4410: $63
    ld h, b                                       ; $4411: $60
    ld h, b                                       ; $4412: $60
    ld h, b                                       ; $4413: $60
    inc b                                         ; $4414: $04
    nop                                           ; $4415: $00
    add b                                         ; $4416: $80
    add e                                         ; $4417: $83
    ld b, $03                                     ; $4418: $06 $03
    rlca                                          ; $441a: $07
    ld c, $0c                                     ; $441b: $0e $0c
    rrca                                          ; $441d: $0f
    rlca                                          ; $441e: $07

jr_004_441f:
    inc b                                         ; $441f: $04
    nop                                           ; $4420: $00
    adc h                                         ; $4421: $8c
    add c                                         ; $4422: $81
    add e                                         ; $4423: $83
    jp $c7c7                                      ; $4424: $c3 $c7 $c7


    add $06                                       ; $4427: $c6 $06
    ld b, $e7                                     ; $4429: $06 $e7
    rst RST_20                                    ; $442b: $e7
    db $e3                                        ; $442c: $e3
    db $e3                                        ; $442d: $e3
    inc b                                         ; $442e: $04
    nop                                           ; $442f: $00
    adc h                                         ; $4430: $8c
    ld hl, sp-$04                                 ; $4431: $f8 $fc
    db $ec                                        ; $4433: $ec
    cp h                                          ; $4434: $bc
    db $ec                                        ; $4435: $ec
    db $ec                                        ; $4436: $ec
    call z, $dcec                                 ; $4437: $cc $ec $dc
    ret c                                         ; $443a: $d8

    sbc b                                         ; $443b: $98
    jr jr_004_4442                                ; $443c: $18 $04

    nop                                           ; $443e: $00
    adc h                                         ; $443f: $8c
    ld b, $06                                     ; $4440: $06 $06

jr_004_4442:
    inc b                                         ; $4442: $04
    ld c, $0e                                     ; $4443: $0e $0e
    inc c                                         ; $4445: $0c
    jr jr_004_4464                                ; $4446: $18 $1c

    ld a, h                                       ; $4448: $7c
    ld a, b                                       ; $4449: $78
    ld [hl], b                                    ; $444a: $70
    ld [hl], b                                    ; $444b: $70
    inc b                                         ; $444c: $04
    nop                                           ; $444d: $00
    adc h                                         ; $444e: $8c
    ei                                            ; $444f: $fb
    ei                                            ; $4450: $fb
    db $db                                        ; $4451: $db
    db $db                                        ; $4452: $db
    di                                            ; $4453: $f3
    db $db                                        ; $4454: $db
    di                                            ; $4455: $f3
    di                                            ; $4456: $f3
    rst RST_20                                    ; $4457: $e7
    halt                                          ; $4458: $76
    ld b, [hl]                                    ; $4459: $46
    ld h, $04                                     ; $445a: $26 $04
    nop                                           ; $445c: $00
    adc h                                         ; $445d: $8c
    inc c                                         ; $445e: $0c
    inc c                                         ; $445f: $0c
    inc a                                         ; $4460: $3c
    inc a                                         ; $4461: $3c
    ld a, [hl]                                    ; $4462: $7e
    ld a, [hl]                                    ; $4463: $7e

jr_004_4464:
    ld l, [hl]                                    ; $4464: $6e
    ld l, a                                       ; $4465: $6f
    ld a, a                                       ; $4466: $7f
    ld a, a                                       ; $4467: $7f
    ld a, [hl-]                                   ; $4468: $3a
    dec sp                                        ; $4469: $3b
    inc b                                         ; $446a: $04
    nop                                           ; $446b: $00
    inc b                                         ; $446c: $04
    ld h, b                                       ; $446d: $60
    adc b                                         ; $446e: $88
    ld h, e                                       ; $446f: $63
    ld h, e                                       ; $4470: $63
    ld [hl], a                                    ; $4471: $77
    ld h, e                                       ; $4472: $63
    ld a, a                                       ; $4473: $7f
    ld a, $3e                                     ; $4474: $3e $3e
    inc e                                         ; $4476: $1c
    inc b                                         ; $4477: $04
    nop                                           ; $4478: $00
    add b                                         ; $4479: $80
    add e                                         ; $447a: $83
    dec b                                         ; $447b: $05
    scf                                           ; $447c: $37
    jr nc, jr_004_44af                            ; $447d: $30 $30

    inc [hl]                                      ; $447f: $34
    scf                                           ; $4480: $37
    add d                                         ; $4481: $82
    scf                                           ; $4482: $37
    inc sp                                        ; $4483: $33
    inc b                                         ; $4484: $04
    nop                                           ; $4485: $00
    add b                                         ; $4486: $80
    add e                                         ; $4487: $83
    ld b, $9e                                     ; $4488: $06 $9e
    cp a                                          ; $448a: $bf
    inc sp                                        ; $448b: $33
    inc sp                                        ; $448c: $33
    cp a                                          ; $448d: $bf
    sbc [hl]                                      ; $448e: $9e
    ld [$0400], sp                                ; $448f: $08 $00 $04
    inc c                                         ; $4492: $0c
    inc b                                         ; $4493: $04
    ccf                                           ; $4494: $3f
    add h                                         ; $4495: $84
    inc c                                         ; $4496: $0c
    inc c                                         ; $4497: $0c
    rrca                                          ; $4498: $0f
    rrca                                          ; $4499: $0f
    inc b                                         ; $449a: $04
    nop                                           ; $449b: $00
    adc b                                         ; $449c: $88
    ret nz                                        ; $449d: $c0

    ret nz                                        ; $449e: $c0

    and $e6                                       ; $449f: $e6 $e6
    ld h, [hl]                                    ; $44a1: $66
    ld h, [hl]                                    ; $44a2: $66
    ld h, a                                       ; $44a3: $67
    ld h, [hl]                                    ; $44a4: $66
    inc bc                                        ; $44a5: $03
    rlca                                          ; $44a6: $07
    add c                                         ; $44a7: $81
    adc a                                         ; $44a8: $8f
    inc b                                         ; $44a9: $04
    nop                                           ; $44aa: $00
    add d                                         ; $44ab: $82
    ret nz                                        ; $44ac: $c0

    ret nz                                        ; $44ad: $c0

    inc b                                         ; $44ae: $04

jr_004_44af:
    rst RST_00                                    ; $44af: $c7
    add [hl]                                      ; $44b0: $86
    ldh [$ffc0], a                                ; $44b1: $e0 $c0
    pop af                                        ; $44b3: $f1
    ldh [$fff1], a                                ; $44b4: $e0 $f1
    pop af                                        ; $44b6: $f1
    inc b                                         ; $44b7: $04
    nop                                           ; $44b8: $00
    add b                                         ; $44b9: $80
    add e                                         ; $44ba: $83
    dec b                                         ; $44bb: $05
    ld b, $f6                                     ; $44bc: $06 $f6
    or $e6                                        ; $44be: $f6 $e6
    ret nz                                        ; $44c0: $c0

    add d                                         ; $44c1: $82
    ret nz                                        ; $44c2: $c0

    add b                                         ; $44c3: $80
    inc b                                         ; $44c4: $04
    nop                                           ; $44c5: $00
    ld [$84d8], sp                                ; $44c6: $08 $d8 $84
    dec de                                        ; $44c9: $1b
    add hl, de                                    ; $44ca: $19
    rra                                           ; $44cb: $1f
    rrca                                          ; $44cc: $0f
    inc b                                         ; $44cd: $04
    nop                                           ; $44ce: $00
    add c                                         ; $44cf: $81
    ld [$0c03], sp                                ; $44d0: $08 $03 $0c
    adc b                                         ; $44d3: $88
    rrca                                          ; $44d4: $0f
    rlca                                          ; $44d5: $07
    rra                                           ; $44d6: $1f
    rra                                           ; $44d7: $1f
    db $db                                        ; $44d8: $db
    reti                                          ; $44d9: $d9


    pop bc                                        ; $44da: $c1
    pop bc                                        ; $44db: $c1
    inc b                                         ; $44dc: $04
    nop                                           ; $44dd: $00
    ld b, $03                                     ; $44de: $06 $03
    ld b, $86                                     ; $44e0: $06 $86
    inc b                                         ; $44e2: $04
    nop                                           ; $44e3: $00
    ld b, $30                                     ; $44e4: $06 $30
    ld b, $60                                     ; $44e6: $06 $60
    add l                                         ; $44e8: $85
    ccf                                           ; $44e9: $3f
    rra                                           ; $44ea: $1f
    ld a, l                                       ; $44eb: $7d
    inc a                                         ; $44ec: $3c
    ld a, h                                       ; $44ed: $7c
    inc bc                                        ; $44ee: $03
    ld l, h                                       ; $44ef: $6c
    add h                                         ; $44f0: $84
    ld a, c                                       ; $44f1: $79
    ld a, l                                       ; $44f2: $7d
    ld sp, $0439                                  ; $44f3: $31 $39 $04
    nop                                           ; $44f6: $00
    adc h                                         ; $44f7: $8c
    adc a                                         ; $44f8: $8f
    rst RST_08                                    ; $44f9: $cf
    call $cfcd                                    ; $44fa: $cd $cd $cf
    call $cfcf                                    ; $44fd: $cd $cf $cf
    adc $c7                                       ; $4500: $ce $c7
    add h                                         ; $4502: $84
    add d                                         ; $4503: $82
    inc b                                         ; $4504: $04
    nop                                           ; $4505: $00
    inc b                                         ; $4506: $04
    or c                                          ; $4507: $b1
    add l                                         ; $4508: $85
    ld sp, $31b1                                  ; $4509: $31 $b1 $31
    jr nc, jr_004_457e                            ; $450c: $30 $70

    inc bc                                        ; $450e: $03
    ld h, b                                       ; $450f: $60
    inc b                                         ; $4510: $04
    nop                                           ; $4511: $00
    inc b                                         ; $4512: $04
    add b                                         ; $4513: $80
    adc b                                         ; $4514: $88
    ret nz                                        ; $4515: $c0

    add b                                         ; $4516: $80
    ret nz                                        ; $4517: $c0

    ret nz                                        ; $4518: $c0

    ldh [$ffe0], a                                ; $4519: $e0 $e0
    ld h, b                                       ; $451b: $60
    ld h, b                                       ; $451c: $60
    inc b                                         ; $451d: $04
    nop                                           ; $451e: $00
    adc h                                         ; $451f: $8c
    rrca                                          ; $4520: $0f
    ld c, $1c                                     ; $4521: $0e $1c
    inc c                                         ; $4523: $0c
    jr jr_004_453e                                ; $4524: $18 $18

    inc e                                         ; $4526: $1c
    jr jr_004_4548                                ; $4527: $18 $1f

    rrca                                          ; $4529: $0f
    rrca                                          ; $452a: $0f
    rlca                                          ; $452b: $07
    inc b                                         ; $452c: $04
    nop                                           ; $452d: $00
    ld b, $01                                     ; $452e: $06 $01
    add [hl]                                      ; $4530: $86
    inc bc                                        ; $4531: $03
    inc bc                                        ; $4532: $03
    rst RST_08                                    ; $4533: $cf
    rst RST_08                                    ; $4534: $cf
    adc $ce                                       ; $4535: $ce $ce
    inc b                                         ; $4537: $04
    nop                                           ; $4538: $00
    inc b                                         ; $4539: $04
    adc h                                         ; $453a: $8c
    add h                                         ; $453b: $84
    inc c                                         ; $453c: $0c
    adc h                                         ; $453d: $8c

jr_004_453e:
    add b                                         ; $453e: $80
    nop                                           ; $453f: $00
    inc b                                         ; $4540: $04
    add hl, de                                    ; $4541: $19
    inc b                                         ; $4542: $04
    nop                                           ; $4543: $00
    ld b, $c0                                     ; $4544: $06 $c0
    add d                                         ; $4546: $82
    nop                                           ; $4547: $00

jr_004_4548:
    nop                                           ; $4548: $00
    inc b                                         ; $4549: $04
    add b                                         ; $454a: $80
    ld [$8600], sp                                ; $454b: $08 $00 $86
    stop                                          ; $454e: $10 $00
    ld d, d                                       ; $4550: $52
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    ld d, d                                       ; $4553: $52
    ld [$8600], sp                                ; $4554: $08 $00 $86
    rra                                           ; $4557: $1f
    rra                                           ; $4558: $1f
    db $10                                        ; $4559: $10
    db $10                                        ; $455a: $10
    cp $ff                                        ; $455b: $fe $ff
    inc b                                         ; $455d: $04
    add e                                         ; $455e: $83
    sbc h                                         ; $455f: $9c
    sbc a                                         ; $4560: $9f
    add e                                         ; $4561: $83
    sbc a                                         ; $4562: $9f
    add e                                         ; $4563: $83
    inc bc                                        ; $4564: $03
    inc bc                                        ; $4565: $03
    cp $fe                                        ; $4566: $fe $fe
    ld [bc], a                                    ; $4568: $02
    ld [bc], a                                    ; $4569: $02
    cp $02                                        ; $456a: $fe $02
    inc bc                                        ; $456c: $03
    rst RST_38                                    ; $456d: $ff
    cp $fe                                        ; $456e: $fe $fe
    cp [hl]                                       ; $4570: $be
    jp nz, $fec3                                  ; $4571: $c2 $c3 $fe

    rst RST_38                                    ; $4574: $ff
    rst RST_38                                    ; $4575: $ff
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    ld a, a                                       ; $4578: $7f
    nop                                           ; $4579: $00
    ld b, b                                       ; $457a: $40
    ccf                                           ; $457b: $3f
    inc bc                                        ; $457c: $03
    rst RST_38                                    ; $457d: $ff

jr_004_457e:
    adc h                                         ; $457e: $8c
    nop                                           ; $457f: $00
    add b                                         ; $4580: $80
    ld a, a                                       ; $4581: $7f
    add b                                         ; $4582: $80
    ld a, a                                       ; $4583: $7f
    ldh [$ffe0], a                                ; $4584: $e0 $e0
    jr nz, jr_004_45a8                            ; $4586: $20 $20

    rst RST_38                                    ; $4588: $ff
    ld a, a                                       ; $4589: $7f
    ld b, c                                       ; $458a: $41
    inc bc                                        ; $458b: $03
    pop bc                                        ; $458c: $c1
    sub a                                         ; $458d: $97
    rst RST_08                                    ; $458e: $cf
    ld b, c                                       ; $458f: $41
    ld c, a                                       ; $4590: $4f
    pop bc                                        ; $4591: $c1
    ld c, c                                       ; $4592: $49
    rst RST_00                                    ; $4593: $c7
    sub e                                         ; $4594: $93
    adc a                                         ; $4595: $8f
    sub e                                         ; $4596: $93
    adc a                                         ; $4597: $8f
    sub e                                         ; $4598: $93
    adc a                                         ; $4599: $8f
    sub e                                         ; $459a: $93
    adc a                                         ; $459b: $8f
    rst RST_38                                    ; $459c: $ff
    rst RST_38                                    ; $459d: $ff
    adc b                                         ; $459e: $88
    adc b                                         ; $459f: $88
    cp c                                          ; $45a0: $b9
    adc b                                         ; $45a1: $88
    xor c                                         ; $45a2: $a9
    sbc b                                         ; $45a3: $98
    db $e3                                        ; $45a4: $e3
    inc bc                                        ; $45a5: $03
    rst RST_38                                    ; $45a6: $ff
    add d                                         ; $45a7: $82

jr_004_45a8:
    sbc e                                         ; $45a8: $9b
    rst RST_20                                    ; $45a9: $e7
    inc b                                         ; $45aa: $04
    rst RST_38                                    ; $45ab: $ff
    adc e                                         ; $45ac: $8b
    nop                                           ; $45ad: $00
    nop                                           ; $45ae: $00
    rst RST_38                                    ; $45af: $ff
    nop                                           ; $45b0: $00
    add b                                         ; $45b1: $80
    ld a, a                                       ; $45b2: $7f
    rst RST_38                                    ; $45b3: $ff
    rst RST_38                                    ; $45b4: $ff
    ld a, $c1                                     ; $45b5: $3e $c1
    nop                                           ; $45b7: $00
    inc bc                                        ; $45b8: $03
    rst RST_38                                    ; $45b9: $ff
    sub l                                         ; $45ba: $95
    add b                                         ; $45bb: $80
    add b                                         ; $45bc: $80
    sbc a                                         ; $45bd: $9f
    add b                                         ; $45be: $80
    sbc b                                         ; $45bf: $98
    add a                                         ; $45c0: $87
    rst RST_38                                    ; $45c1: $ff
    rst RST_38                                    ; $45c2: $ff
    ret                                           ; $45c3: $c9


    rst RST_00                                    ; $45c4: $c7
    ld c, c                                       ; $45c5: $49
    rst RST_00                                    ; $45c6: $c7
    ld c, c                                       ; $45c7: $49
    rst RST_00                                    ; $45c8: $c7
    rst RST_38                                    ; $45c9: $ff
    rst RST_38                                    ; $45ca: $ff
    add hl, bc                                    ; $45cb: $09
    add hl, bc                                    ; $45cc: $09
    rst RST_38                                    ; $45cd: $ff
    add hl, bc                                    ; $45ce: $09
    add hl, bc                                    ; $45cf: $09
    dec b                                         ; $45d0: $05
    rst RST_38                                    ; $45d1: $ff
    adc b                                         ; $45d2: $88
    ld hl, sp+$08                                 ; $45d3: $f8 $08
    ld a, e                                       ; $45d5: $7b
    ld [$093a], sp                                ; $45d6: $08 $3a $09
    ld a, [de]                                    ; $45d9: $1a
    add hl, bc                                    ; $45da: $09
    inc bc                                        ; $45db: $03
    rrca                                          ; $45dc: $0f
    adc h                                         ; $45dd: $8c
    nop                                           ; $45de: $00
    rlca                                          ; $45df: $07
    nop                                           ; $45e0: $00
    rst RST_38                                    ; $45e1: $ff
    rst RST_38                                    ; $45e2: $ff
    nop                                           ; $45e3: $00
    nop                                           ; $45e4: $00
    rst RST_38                                    ; $45e5: $ff
    nop                                           ; $45e6: $00
    nop                                           ; $45e7: $00
    rst RST_38                                    ; $45e8: $ff
    ld a, a                                       ; $45e9: $7f
    inc b                                         ; $45ea: $04
    rst RST_38                                    ; $45eb: $ff
    adc b                                         ; $45ec: $88
    nop                                           ; $45ed: $00
    rst RST_38                                    ; $45ee: $ff
    nop                                           ; $45ef: $00
    add b                                         ; $45f0: $80
    ret nz                                        ; $45f1: $c0

    rst RST_18                                    ; $45f2: $df
    ldh [$ffe0], a                                ; $45f3: $e0 $e0
    ld b, $ff                                     ; $45f5: $06 $ff
    sub d                                         ; $45f7: $92
    add b                                         ; $45f8: $80
    rst RST_38                                    ; $45f9: $ff
    nop                                           ; $45fa: $00
    ldh a, [rP1]                                  ; $45fb: $f0 $00
    rrca                                          ; $45fd: $0f
    ld [$08ff], sp                                ; $45fe: $08 $ff $08
    rrca                                          ; $4601: $0f
    ld hl, sp-$01                                 ; $4602: $f8 $ff
    ld hl, sp-$01                                 ; $4604: $f8 $ff
    ld hl, sp-$01                                 ; $4606: $f8 $ff
    nop                                           ; $4608: $00
    rst RST_38                                    ; $4609: $ff
    inc bc                                        ; $460a: $03
    nop                                           ; $460b: $00
    add b                                         ; $460c: $80
    add c                                         ; $460d: $81
    dec c                                         ; $460e: $0d
    add b                                         ; $460f: $80
    ret nz                                        ; $4610: $c0

    ldh [$ffe0], a                                ; $4611: $e0 $e0
    ldh [$ffe0], a                                ; $4613: $e0 $e0
    ldh [$ffe0], a                                ; $4615: $e0 $e0
    ldh [$ffe0], a                                ; $4617: $e0 $e0
    ldh [$ffe0], a                                ; $4619: $e0 $e0
    ldh [$ff0a], a                                ; $461b: $e0 $0a
    nop                                           ; $461d: $00
    adc h                                         ; $461e: $8c
    ldh [$ffe0], a                                ; $461f: $e0 $e0
    db $ec                                        ; $4621: $ec
    add sp, $6c                                   ; $4622: $e8 $6c
    ld l, h                                       ; $4624: $6c
    ld l, a                                       ; $4625: $6f
    ld l, [hl]                                    ; $4626: $6e
    rst RST_28                                    ; $4627: $ef
    ld c, a                                       ; $4628: $4f
    rst RST_08                                    ; $4629: $cf
    call Call_000_0004                            ; $462a: $cd $04 $00
    add b                                         ; $462d: $80
    add e                                         ; $462e: $83
    ld b, $18                                     ; $462f: $06 $18
    ld a, [hl]                                    ; $4631: $7e
    ld a, [hl]                                    ; $4632: $7e
    inc c                                         ; $4633: $0c
    ld a, a                                       ; $4634: $7f
    ld a, a                                       ; $4635: $7f
    inc b                                         ; $4636: $04
    nop                                           ; $4637: $00
    inc b                                         ; $4638: $04
    ld a, [hl]                                    ; $4639: $7e
    inc b                                         ; $463a: $04
    jr nc, jr_004_4641                            ; $463b: $30 $04

    ld a, [hl]                                    ; $463d: $7e
    inc b                                         ; $463e: $04
    nop                                           ; $463f: $00
    inc b                                         ; $4640: $04

jr_004_4641:
    ld a, b                                       ; $4641: $78
    add d                                         ; $4642: $82
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    ld b, $03                                     ; $4645: $06 $03
    inc b                                         ; $4647: $04
    nop                                           ; $4648: $00
    inc b                                         ; $4649: $04
    ld a, a                                       ; $464a: $7f
    add c                                         ; $464b: $81
    rlca                                          ; $464c: $07
    inc bc                                        ; $464d: $03
    ld b, $81                                     ; $464e: $06 $81
    ld c, $03                                     ; $4650: $0e $03
    inc c                                         ; $4652: $0c
    inc b                                         ; $4653: $04
    nop                                           ; $4654: $00
    inc b                                         ; $4655: $04
    ccf                                           ; $4656: $3f
    inc b                                         ; $4657: $04
    inc sp                                        ; $4658: $33
    add h                                         ; $4659: $84
    ld a, e                                       ; $465a: $7b
    ld a, e                                       ; $465b: $7b
    ld a, a                                       ; $465c: $7f
    ld a, a                                       ; $465d: $7f
    inc b                                         ; $465e: $04
    nop                                           ; $465f: $00
    adc h                                         ; $4660: $8c
    jr nc, @+$32                                  ; $4661: $30 $30

    db $fc                                        ; $4663: $fc
    db $fc                                        ; $4664: $fc
    db $fd                                        ; $4665: $fd
    db $fd                                        ; $4666: $fd
    ld [hl], c                                    ; $4667: $71
    ld sp, $66ec                                  ; $4668: $31 $ec $66
    db $fc                                        ; $466b: $fc
    cp $04                                        ; $466c: $fe $04
    nop                                           ; $466e: $00
    inc b                                         ; $466f: $04
    ret nz                                        ; $4670: $c0

    inc b                                         ; $4671: $04
    ldh a, [$ff84]                                ; $4672: $f0 $84
    ret nz                                        ; $4674: $c0

    ret nz                                        ; $4675: $c0

    sbc $dc                                       ; $4676: $de $dc
    inc b                                         ; $4678: $04
    nop                                           ; $4679: $00
    inc b                                         ; $467a: $04
    dec de                                        ; $467b: $1b
    adc b                                         ; $467c: $88
    rst RST_38                                    ; $467d: $ff
    rst RST_38                                    ; $467e: $ff
    cp $fe                                        ; $467f: $fe $fe
    jr jr_004_469b                                ; $4681: $18 $18

    ld a, $1e                                     ; $4683: $3e $1e
    ld b, $cc                                     ; $4685: $06 $cc
    add [hl]                                      ; $4687: $86
    db $fc                                        ; $4688: $fc
    call z, Call_004_78fc                         ; $4689: $cc $fc $78
    ld a, b                                       ; $468c: $78
    jr nc, @+$06                                  ; $468d: $30 $04

    nop                                           ; $468f: $00
    add b                                         ; $4690: $80
    add e                                         ; $4691: $83
    ld b, $06                                     ; $4692: $06 $06
    ld c, $6e                                     ; $4694: $0e $6e
    ld h, b                                       ; $4696: $60
    ld a, [hl]                                    ; $4697: $7e
    ld a, $04                                     ; $4698: $3e $04
    nop                                           ; $469a: $00

jr_004_469b:
    ld b, $30                                     ; $469b: $06 $30
    add [hl]                                      ; $469d: $86
    inc sp                                        ; $469e: $33
    inc sp                                        ; $469f: $33
    ccf                                           ; $46a0: $3f
    ccf                                           ; $46a1: $3f
    ld e, $1c                                     ; $46a2: $1e $1c
    inc b                                         ; $46a4: $04
    nop                                           ; $46a5: $00
    adc h                                         ; $46a6: $8c
    inc bc                                        ; $46a7: $03
    inc bc                                        ; $46a8: $03
    rlca                                          ; $46a9: $07
    inc bc                                        ; $46aa: $03
    rlca                                          ; $46ab: $07
    ld b, $1e                                     ; $46ac: $06 $1e
    ld c, $7c                                     ; $46ae: $0e $7c
    ld a, h                                       ; $46b0: $7c
    ld a, b                                       ; $46b1: $78
    ld [hl], b                                    ; $46b2: $70
    inc b                                         ; $46b3: $04
    nop                                           ; $46b4: $00
    inc b                                         ; $46b5: $04
    inc e                                         ; $46b6: $1c
    inc b                                         ; $46b7: $04
    ld [hl], $81                                  ; $46b8: $36 $81
    ld [hl], e                                    ; $46ba: $73
    inc bc                                        ; $46bb: $03
    ld h, e                                       ; $46bc: $63
    inc b                                         ; $46bd: $04
    nop                                           ; $46be: $00
    add e                                         ; $46bf: $83
    rrca                                          ; $46c0: $0f
    rrca                                          ; $46c1: $0f
    rlca                                          ; $46c2: $07
    inc bc                                        ; $46c3: $03
    ld b, $86                                     ; $46c4: $06 $86
    ld c, $0c                                     ; $46c6: $0e $0c
    inc a                                         ; $46c8: $3c
    inc a                                         ; $46c9: $3c
    jr c, jr_004_46fc                             ; $46ca: $38 $30

    inc b                                         ; $46cc: $04
    nop                                           ; $46cd: $00
    add b                                         ; $46ce: $80
    add e                                         ; $46cf: $83
    ld b, $38                                     ; $46d0: $06 $38
    ld a, h                                       ; $46d2: $7c
    db $ec                                        ; $46d3: $ec
    ret nz                                        ; $46d4: $c0

    cp $7e                                        ; $46d5: $fe $7e
    inc b                                         ; $46d7: $04
    nop                                           ; $46d8: $00
    add b                                         ; $46d9: $80
    add e                                         ; $46da: $83
    dec b                                         ; $46db: $05
    sbc $c2                                       ; $46dc: $de $c2
    ret nz                                        ; $46de: $c0

    ret nc                                        ; $46df: $d0

    sbc $82                                       ; $46e0: $de $82
    sbc $ce                                       ; $46e2: $de $ce
    inc b                                         ; $46e4: $04
    nop                                           ; $46e5: $00
    adc h                                         ; $46e6: $8c
    ld a, a                                       ; $46e7: $7f
    ld a, a                                       ; $46e8: $7f
    rst RST_38                                    ; $46e9: $ff
    ei                                            ; $46ea: $fb
    db $db                                        ; $46eb: $db
    db $db                                        ; $46ec: $db
    ei                                            ; $46ed: $fb
    db $db                                        ; $46ee: $db
    rst RST_38                                    ; $46ef: $ff
    rst RST_30                                    ; $46f0: $f7
    halt                                          ; $46f1: $76
    ld h, [hl]                                    ; $46f2: $66
    ld b, $00                                     ; $46f3: $06 $00
    add b                                         ; $46f5: $80
    add e                                         ; $46f6: $83
    ld a, [bc]                                    ; $46f7: $0a
    ld bc, $0806                                  ; $46f8: $01 $06 $08
    inc de                                        ; $46fb: $13

jr_004_46fc:
    daa                                           ; $46fc: $27
    daa                                           ; $46fd: $27
    ld b, a                                       ; $46fe: $47
    ccf                                           ; $46ff: $3f
    ret nz                                        ; $4700: $c0

    rra                                           ; $4701: $1f
    sub d                                         ; $4702: $92
    pop hl                                        ; $4703: $e1
    cp $45                                        ; $4704: $fe $45
    ld a, [$fa45]                                 ; $4706: $fa $45 $fa
    ld b, l                                       ; $4709: $45
    ld a, [$fa45]                                 ; $470a: $fa $45 $fa
    db $fc                                        ; $470d: $fc
    db $fc                                        ; $470e: $fc
    inc bc                                        ; $470f: $03
    inc bc                                        ; $4710: $03
    ld hl, sp-$08                                 ; $4711: $f8 $f8
    ld a, a                                       ; $4713: $7f
    add a                                         ; $4714: $87
    add b                                         ; $4715: $80
    add c                                         ; $4716: $81
    inc b                                         ; $4717: $04
    ld a, [$fafa]                                 ; $4718: $fa $fa $fa
    ld a, [$0082]                                 ; $471b: $fa $82 $00
    nop                                           ; $471e: $00
    add b                                         ; $471f: $80
    add e                                         ; $4720: $83
    inc b                                         ; $4721: $04
    add b                                         ; $4722: $80
    ld h, b                                       ; $4723: $60
    db $10                                        ; $4724: $10
    ret z                                         ; $4725: $c8

    pop de                                        ; $4726: $d1
    ld h, h                                       ; $4727: $64
    inc h                                         ; $4728: $24
    ld h, h                                       ; $4729: $64
    inc h                                         ; $472a: $24
    ld h, [hl]                                    ; $472b: $66
    ld [hl+], a                                   ; $472c: $22
    ld b, e                                       ; $472d: $43
    ld b, e                                       ; $472e: $43
    ld b, c                                       ; $472f: $41
    ld b, c                                       ; $4730: $41
    ld b, b                                       ; $4731: $40
    ld b, b                                       ; $4732: $40
    ld c, b                                       ; $4733: $48
    ld b, b                                       ; $4734: $40
    ld c, d                                       ; $4735: $4a
    ld b, b                                       ; $4736: $40
    ld c, e                                       ; $4737: $4b
    ld b, b                                       ; $4738: $40
    dec bc                                        ; $4739: $0b
    ld b, b                                       ; $473a: $40
    ld l, e                                       ; $473b: $6b
    nop                                           ; $473c: $00
    ld b, l                                       ; $473d: $45
    ld a, [$fac5]                                 ; $473e: $fa $c5 $fa
    ld [hl], l                                    ; $4741: $75
    ld a, d                                       ; $4742: $7a
    rrca                                          ; $4743: $0f
    rrca                                          ; $4744: $0f
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
    add h                                         ; $4747: $84
    nop                                           ; $4748: $00
    db $f4                                        ; $4749: $f4
    nop                                           ; $474a: $00
    cp a                                          ; $474b: $bf
    ld b, b                                       ; $474c: $40
    ld a, [$fb00]                                 ; $474d: $fa $00 $fb
    ld bc, $0efe                                  ; $4750: $01 $fe $0e
    ldh a, [$fff0]                                ; $4753: $f0 $f0
    ld bc, $ef00                                  ; $4755: $01 $00 $ef
    nop                                           ; $4758: $00
    xor $01                                       ; $4759: $ee $01
    pop af                                        ; $475b: $f1
    rrca                                          ; $475c: $0f
    ld c, [hl]                                    ; $475d: $4e
    ld b, d                                       ; $475e: $42
    adc [hl]                                      ; $475f: $8e
    add d                                         ; $4760: $82
    ld a, [de]                                    ; $4761: $1a
    ld b, $72                                     ; $4762: $06 $72
    ld c, $eb                                     ; $4764: $0e $eb
    ld e, $9b                                     ; $4766: $1e $9b
    ld l, [hl]                                    ; $4768: $6e
    ld a, e                                       ; $4769: $7b
    xor $7f                                       ; $476a: $ee $7f
    db $e4                                        ; $476c: $e4
    dec hl                                        ; $476d: $2b
    nop                                           ; $476e: $00
    dec bc                                        ; $476f: $0b
    nop                                           ; $4770: $00
    ld [de], a                                    ; $4771: $12
    nop                                           ; $4772: $00
    ld b, $04                                     ; $4773: $06 $04
    inc b                                         ; $4775: $04
    nop                                           ; $4776: $00
    ld bc, $0005                                  ; $4777: $01 $05 $00
    add b                                         ; $477a: $80
    add [hl]                                      ; $477b: $86
    inc b                                         ; $477c: $04
    ld c, e                                       ; $477d: $4b
    ld c, e                                       ; $477e: $4b
    ld c, e                                       ; $477f: $4b
    ld c, d                                       ; $4780: $4a
    and l                                         ; $4781: $a5
    push af                                       ; $4782: $f5
    adc d                                         ; $4783: $8a
    rst RST_38                                    ; $4784: $ff
    inc e                                         ; $4785: $1c
    ld a, a                                       ; $4786: $7f
    nop                                           ; $4787: $00
    rrca                                          ; $4788: $0f
    nop                                           ; $4789: $00
    ld de, $11ff                                  ; $478a: $11 $ff $11
    rst RST_38                                    ; $478d: $ff
    ld de, $15ff                                  ; $478e: $11 $ff $15
    ei                                            ; $4791: $fb
    scf                                           ; $4792: $37
    reti                                          ; $4793: $d9


    rst RST_38                                    ; $4794: $ff
    ret c                                         ; $4795: $d8

    rst RST_38                                    ; $4796: $ff
    nop                                           ; $4797: $00
    cp $00                                        ; $4798: $fe $00
    ld a, a                                       ; $479a: $7f
    and b                                         ; $479b: $a0
    ld a, a                                       ; $479c: $7f
    or b                                          ; $479d: $b0
    ld a, [hl]                                    ; $479e: $7e
    sub b                                         ; $479f: $90
    ld a, [hl]                                    ; $47a0: $7e
    add b                                         ; $47a1: $80
    db $fc                                        ; $47a2: $fc
    add b                                         ; $47a3: $80
    ld hl, sp+$00                                 ; $47a4: $f8 $00
    ldh [$ff09], a                                ; $47a6: $e0 $09
    nop                                           ; $47a8: $00
    add b                                         ; $47a9: $80
    add c                                         ; $47aa: $81
    dec b                                         ; $47ab: $05
    rlca                                          ; $47ac: $07
    rlca                                          ; $47ad: $07
    ld b, $06                                     ; $47ae: $06 $06
    ld b, $06                                     ; $47b0: $06 $06
    nop                                           ; $47b2: $00
    add b                                         ; $47b3: $80
    add c                                         ; $47b4: $81
    ld a, [bc]                                    ; $47b5: $0a
    ldh [$ffe0], a                                ; $47b6: $e0 $e0
    ld h, b                                       ; $47b8: $60
    ld h, b                                       ; $47b9: $60
    ld h, b                                       ; $47ba: $60
    ld b, $06                                     ; $47bb: $06 $06
    ld b, $07                                     ; $47bd: $06 $07
    rlca                                          ; $47bf: $07
    ld b, $00                                     ; $47c0: $06 $00
    add b                                         ; $47c2: $80
    add c                                         ; $47c3: $81
    dec b                                         ; $47c4: $05
    ld h, b                                       ; $47c5: $60
    ld h, b                                       ; $47c6: $60
    ld h, b                                       ; $47c7: $60
    ldh [$ffe0], a                                ; $47c8: $e0 $e0
    inc c                                         ; $47ca: $0c
    nop                                           ; $47cb: $00
    add e                                         ; $47cc: $83
    rst RST_38                                    ; $47cd: $ff
    nop                                           ; $47ce: $00
    rst RST_38                                    ; $47cf: $ff
    rlca                                          ; $47d0: $07
    nop                                           ; $47d1: $00
    add b                                         ; $47d2: $80
    add c                                         ; $47d3: $81
    db $10                                        ; $47d4: $10
    ld b, $06                                     ; $47d5: $06 $06
    ld b, $06                                     ; $47d7: $06 $06
    ld b, $06                                     ; $47d9: $06 $06
    ld b, $06                                     ; $47db: $06 $06
    ld h, b                                       ; $47dd: $60
    ld h, b                                       ; $47de: $60
    ld h, b                                       ; $47df: $60
    ld h, b                                       ; $47e0: $60
    ld h, b                                       ; $47e1: $60
    ld h, b                                       ; $47e2: $60
    ld h, b                                       ; $47e3: $60
    ld h, b                                       ; $47e4: $60
    inc b                                         ; $47e5: $04
    nop                                           ; $47e6: $00
    ld b, $60                                     ; $47e7: $06 $60
    add b                                         ; $47e9: $80
    add e                                         ; $47ea: $83
    add hl, bc                                    ; $47eb: $09
    ld h, e                                       ; $47ec: $63
    ld h, a                                       ; $47ed: $67
    ld l, [hl]                                    ; $47ee: $6e
    ld a, h                                       ; $47ef: $7c
    ld a, b                                       ; $47f0: $78
    ld a, h                                       ; $47f1: $7c
    ld l, [hl]                                    ; $47f2: $6e
    ld h, a                                       ; $47f3: $67
    ld h, e                                       ; $47f4: $63
    inc c                                         ; $47f5: $0c
    nop                                           ; $47f6: $00
    add b                                         ; $47f7: $80
    add e                                         ; $47f8: $83
    inc c                                         ; $47f9: $0c
    ld b, $3e                                     ; $47fa: $06 $3e
    ld a, [hl]                                    ; $47fc: $7e
    ld h, [hl]                                    ; $47fd: $66
    ld h, [hl]                                    ; $47fe: $66
    ld a, [hl]                                    ; $47ff: $7e
    ld a, $06                                     ; $4800: $3e $06
    ld b, $66                                     ; $4802: $06 $66
    ld a, [hl]                                    ; $4804: $7e
    inc a                                         ; $4805: $3c
    ld a, [bc]                                    ; $4806: $0a
    nop                                           ; $4807: $00
    add b                                         ; $4808: $80
    add e                                         ; $4809: $83
    add hl, bc                                    ; $480a: $09
    inc c                                         ; $480b: $0c
    rrca                                          ; $480c: $0f
    rrca                                          ; $480d: $0f
    dec c                                         ; $480e: $0d
    dec c                                         ; $480f: $0d
    dec c                                         ; $4810: $0d
    dec c                                         ; $4811: $0d
    dec c                                         ; $4812: $0d
    dec c                                         ; $4813: $0d
    stop                                          ; $4814: $10 $00
    add b                                         ; $4816: $80
    add e                                         ; $4817: $83
    ld [$f0e0], sp                                ; $4818: $08 $e0 $f0
    or b                                          ; $481b: $b0
    or b                                          ; $481c: $b0
    or b                                          ; $481d: $b0
    or b                                          ; $481e: $b0
    or b                                          ; $481f: $b0
    or b                                          ; $4820: $b0
    inc c                                         ; $4821: $0c
    nop                                           ; $4822: $00
    inc b                                         ; $4823: $04
    ld h, b                                       ; $4824: $60
    inc b                                         ; $4825: $04
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    inc d                                         ; $4828: $14
    nop                                           ; $4829: $00
    inc b                                         ; $482a: $04
    ld b, $04                                     ; $482b: $06 $04
    ld a, a                                       ; $482d: $7f
    add h                                         ; $482e: $84
    ld c, $0e                                     ; $482f: $0e $0e
    ld e, $0e                                     ; $4831: $1e $0e
    inc b                                         ; $4833: $04
    nop                                           ; $4834: $00
    inc b                                         ; $4835: $04
    ld a, a                                       ; $4836: $7f
    ld [$0403], sp                                ; $4837: $08 $03 $04
    nop                                           ; $483a: $00
    inc b                                         ; $483b: $04
    ld l, h                                       ; $483c: $6c
    ld b, $36                                     ; $483d: $06 $36
    ld b, $00                                     ; $483f: $06 $00
    add d                                         ; $4841: $82
    jr jr_004_485c                                ; $4842: $18 $18

    inc b                                         ; $4844: $04
    ld a, a                                       ; $4845: $7f
    add [hl]                                      ; $4846: $86
    jr c, jr_004_4861                             ; $4847: $38 $18

    ld [hl], a                                    ; $4849: $77
    inc sp                                        ; $484a: $33
    ld a, a                                       ; $484b: $7f
    ld a, a                                       ; $484c: $7f
    ld [$8800], sp                                ; $484d: $08 $00 $88
    ld e, $3c                                     ; $4850: $1e $3c
    rst RST_38                                    ; $4852: $ff
    cp $f7                                        ; $4853: $fe $f7
    db $e3                                        ; $4855: $e3
    inc bc                                        ; $4856: $03
    inc bc                                        ; $4857: $03
    inc b                                         ; $4858: $04
    nop                                           ; $4859: $00
    adc h                                         ; $485a: $8c
    inc c                                         ; $485b: $0c

jr_004_485c:
    inc c                                         ; $485c: $0c
    rrca                                          ; $485d: $0f
    rrca                                          ; $485e: $0f
    ld a, a                                       ; $485f: $7f
    ld a, a                                       ; $4860: $7f

jr_004_4861:
    ld a, [hl]                                    ; $4861: $7e
    ld a, h                                       ; $4862: $7c
    dec c                                         ; $4863: $0d
    dec c                                         ; $4864: $0d
    rra                                           ; $4865: $1f
    rrca                                          ; $4866: $0f
    ld b, $00                                     ; $4867: $06 $00
    adc d                                         ; $4869: $8a
    add b                                         ; $486a: $80
    add b                                         ; $486b: $80
    add e                                         ; $486c: $83
    add a                                         ; $486d: $87
    rra                                           ; $486e: $1f
    rra                                           ; $486f: $1f
    sbc [hl]                                      ; $4870: $9e
    sbc h                                         ; $4871: $9c
    add b                                         ; $4872: $80
    add b                                         ; $4873: $80
    ld b, $00                                     ; $4874: $06 $00
    adc d                                         ; $4876: $8a
    ld b, $06                                     ; $4877: $06 $06
    add $86                                       ; $4879: $c6 $86
    rst RST_20                                    ; $487b: $e7
    add $e7                                       ; $487c: $c6 $e7
    ld h, a                                       ; $487e: $67
    ld h, a                                       ; $487f: $67
    ld l, a                                       ; $4880: $6f
    inc b                                         ; $4881: $04
    nop                                           ; $4882: $00
    add d                                         ; $4883: $82
    ret nz                                        ; $4884: $c0

    ret nz                                        ; $4885: $c0

    inc b                                         ; $4886: $04
    rst RST_00                                    ; $4887: $c7
    add [hl]                                      ; $4888: $86
    ldh [$ffc0], a                                ; $4889: $e0 $c0
    rst RST_30                                    ; $488b: $f7
    rst RST_20                                    ; $488c: $e7
    rst RST_30                                    ; $488d: $f7
    rst RST_30                                    ; $488e: $f7
    inc b                                         ; $488f: $04
    nop                                           ; $4890: $00
    add b                                         ; $4891: $80
    add e                                         ; $4892: $83
    ld b, $c6                                     ; $4893: $06 $c6
    or $f6                                        ; $4895: $f6 $f6
    add $f6                                       ; $4897: $c6 $f6
    or $04                                        ; $4899: $f6 $04
    nop                                           ; $489b: $00
    inc b                                         ; $489c: $04
    inc bc                                        ; $489d: $03
    inc b                                         ; $489e: $04
    rlca                                          ; $489f: $07
    inc b                                         ; $48a0: $04
    inc bc                                        ; $48a1: $03
    ld [$0400], sp                                ; $48a2: $08 $00 $04
    ret nz                                        ; $48a5: $c0

    adc h                                         ; $48a6: $8c
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    ld a, b                                       ; $48a9: $78
    ld [hl], b                                    ; $48aa: $70
    ld e, $1e                                     ; $48ab: $1e $1e
    ld a, $1e                                     ; $48ad: $3e $1e
    ld [hl], $36                                  ; $48af: $36 $36
    halt                                          ; $48b1: $76
    ld [hl], $04                                  ; $48b2: $36 $04
    ld h, [hl]                                    ; $48b4: $66
    inc b                                         ; $48b5: $04
    nop                                           ; $48b6: $00
    inc b                                         ; $48b7: $04
    ld a, a                                       ; $48b8: $7f
    inc c                                         ; $48b9: $0c
    nop                                           ; $48ba: $00
    add c                                         ; $48bb: $81
    rlca                                          ; $48bc: $07
    inc bc                                        ; $48bd: $03
    ld b, $88                                     ; $48be: $06 $88
    ld c, $0c                                     ; $48c0: $0e $0c
    inc e                                         ; $48c2: $1c
    inc e                                         ; $48c3: $1c
    jr c, jr_004_48fe                             ; $48c4: $38 $38

    jr nc, jr_004_48f8                            ; $48c6: $30 $30

    inc b                                         ; $48c8: $04
    nop                                           ; $48c9: $00
    add b                                         ; $48ca: $80
    add e                                         ; $48cb: $83
    ld b, $1c                                     ; $48cc: $06 $1c
    ld a, $76                                     ; $48ce: $3e $76
    ld h, b                                       ; $48d0: $60
    ld a, a                                       ; $48d1: $7f
    ccf                                           ; $48d2: $3f
    inc b                                         ; $48d3: $04
    nop                                           ; $48d4: $00
    adc h                                         ; $48d5: $8c
    inc bc                                        ; $48d6: $03
    inc bc                                        ; $48d7: $03
    ld [bc], a                                    ; $48d8: $02
    rlca                                          ; $48d9: $07
    rlca                                          ; $48da: $07
    ld b, $0c                                     ; $48db: $06 $0c
    ld c, $3e                                     ; $48dd: $0e $3e
    inc a                                         ; $48df: $3c
    jr c, jr_004_491a                             ; $48e0: $38 $38

    inc b                                         ; $48e2: $04
    nop                                           ; $48e3: $00
    adc h                                         ; $48e4: $8c
    rra                                           ; $48e5: $1f
    ccf                                           ; $48e6: $3f
    ld a, $7b                                     ; $48e7: $3e $7b
    ld a, [hl]                                    ; $48e9: $7e
    ld l, [hl]                                    ; $48ea: $6e
    ld l, h                                       ; $48eb: $6c
    ld l, [hl]                                    ; $48ec: $6e
    ld a, l                                       ; $48ed: $7d
    ld a, l                                       ; $48ee: $7d
    add hl, sp                                    ; $48ef: $39
    ld sp, $0004                                  ; $48f0: $31 $04 $00
    add c                                         ; $48f3: $81
    add b                                         ; $48f4: $80
    dec b                                         ; $48f5: $05
    ret nz                                        ; $48f6: $c0

    add e                                         ; $48f7: $83

jr_004_48f8:
    pop bc                                        ; $48f8: $c1
    pop bc                                        ; $48f9: $c1
    rst RST_00                                    ; $48fa: $c7
    inc bc                                        ; $48fb: $03
    add a                                         ; $48fc: $87
    inc b                                         ; $48fd: $04

jr_004_48fe:
    nop                                           ; $48fe: $00
    adc h                                         ; $48ff: $8c
    ld l, a                                       ; $4900: $6f
    ld l, a                                       ; $4901: $6f
    ld c, l                                       ; $4902: $4d
    db $ed                                        ; $4903: $ed
    rst RST_28                                    ; $4904: $ef
    call $cf8f                                    ; $4905: $cd $8f $cf
    adc $87                                       ; $4908: $ce $87
    inc b                                         ; $490a: $04
    ld [bc], a                                    ; $490b: $02
    inc b                                         ; $490c: $04
    nop                                           ; $490d: $00
    adc h                                         ; $490e: $8c
    or b                                          ; $490f: $b0
    or b                                          ; $4910: $b0
    or e                                          ; $4911: $b3
    or e                                          ; $4912: $b3
    scf                                           ; $4913: $37
    or a                                          ; $4914: $b7
    ld [hl], $36                                  ; $4915: $36 $36
    ld [hl], a                                    ; $4917: $77
    ld h, a                                       ; $4918: $67
    ld h, e                                       ; $4919: $63

jr_004_491a:
    ld h, e                                       ; $491a: $63
    inc b                                         ; $491b: $04
    nop                                           ; $491c: $00
    inc b                                         ; $491d: $04
    add $88                                       ; $491e: $c6 $88
    and $e6                                       ; $4920: $e6 $e6
    rst RST_20                                    ; $4922: $e7
    or $f7                                        ; $4923: $f6 $f7
    di                                            ; $4925: $f3
    and e                                         ; $4926: $a3
    or c                                          ; $4927: $b1
    inc b                                         ; $4928: $04
    nop                                           ; $4929: $00
    inc b                                         ; $492a: $04
    inc bc                                        ; $492b: $03
    adc b                                         ; $492c: $88
    inc sp                                        ; $492d: $33
    inc sp                                        ; $492e: $33
    ld [hl], e                                    ; $492f: $73
    inc sp                                        ; $4930: $33
    di                                            ; $4931: $f3
    db $e3                                        ; $4932: $e3
    db $e3                                        ; $4933: $e3
    jp Jump_000_0004                              ; $4934: $c3 $04 $00


    add b                                         ; $4937: $80
    add e                                         ; $4938: $83
    dec b                                         ; $4939: $05
    ld a, c                                       ; $493a: $79
    dec bc                                        ; $493b: $0b

jr_004_493c:
    inc bc                                        ; $493c: $03
    ld b, e                                       ; $493d: $43
    ld a, e                                       ; $493e: $7b
    add d                                         ; $493f: $82
    ld a, c                                       ; $4940: $79
    add hl, sp                                    ; $4941: $39
    inc b                                         ; $4942: $04
    nop                                           ; $4943: $00
    add b                                         ; $4944: $80
    add e                                         ; $4945: $83
    ld b, $e0                                     ; $4946: $06 $e0
    ldh a, [$ff30]                                ; $4948: $f0 $30
    jr nc, jr_004_493c                            ; $494a: $30 $f0

    ldh [$ff08], a                                ; $494c: $e0 $08
    nop                                           ; $494e: $00
    inc b                                         ; $494f: $04
    inc c                                         ; $4950: $0c
    inc b                                         ; $4951: $04
    ccf                                           ; $4952: $3f
    add h                                         ; $4953: $84
    inc c                                         ; $4954: $0c
    inc c                                         ; $4955: $0c
    rrca                                          ; $4956: $0f
    rrca                                          ; $4957: $0f
    inc b                                         ; $4958: $04
    nop                                           ; $4959: $00
    adc b                                         ; $495a: $88
    ret nz                                        ; $495b: $c0

    ret nz                                        ; $495c: $c0

    and $e6                                       ; $495d: $e6 $e6
    ld h, [hl]                                    ; $495f: $66
    ld h, [hl]                                    ; $4960: $66
    ld h, a                                       ; $4961: $67
    ld h, [hl]                                    ; $4962: $66
    inc bc                                        ; $4963: $03
    rlca                                          ; $4964: $07
    add c                                         ; $4965: $81
    adc a                                         ; $4966: $8f
    inc b                                         ; $4967: $04
    nop                                           ; $4968: $00
    add d                                         ; $4969: $82
    ret nz                                        ; $496a: $c0

    ret nz                                        ; $496b: $c0

    inc b                                         ; $496c: $04
    rst RST_00                                    ; $496d: $c7
    add [hl]                                      ; $496e: $86
    ldh [$ffc0], a                                ; $496f: $e0 $c0
    pop af                                        ; $4971: $f1
    ldh [$fff1], a                                ; $4972: $e0 $f1
    pop af                                        ; $4974: $f1
    inc b                                         ; $4975: $04
    nop                                           ; $4976: $00
    add b                                         ; $4977: $80
    add e                                         ; $4978: $83
    dec b                                         ; $4979: $05
    ld b, $f6                                     ; $497a: $06 $f6
    or $e6                                        ; $497c: $f6 $e6
    ret nz                                        ; $497e: $c0

    add d                                         ; $497f: $82
    ret nz                                        ; $4980: $c0

    add b                                         ; $4981: $80
    inc b                                         ; $4982: $04
    nop                                           ; $4983: $00
    ld [$84d8], sp                                ; $4984: $08 $d8 $84
    dec de                                        ; $4987: $1b
    add hl, de                                    ; $4988: $19
    rra                                           ; $4989: $1f
    rrca                                          ; $498a: $0f
    inc b                                         ; $498b: $04
    nop                                           ; $498c: $00
    add c                                         ; $498d: $81
    ld [$0c03], sp                                ; $498e: $08 $03 $0c
    adc b                                         ; $4991: $88
    rrca                                          ; $4992: $0f
    rlca                                          ; $4993: $07
    rra                                           ; $4994: $1f
    rra                                           ; $4995: $1f
    db $db                                        ; $4996: $db
    reti                                          ; $4997: $d9


    pop bc                                        ; $4998: $c1
    pop bc                                        ; $4999: $c1
    inc b                                         ; $499a: $04
    nop                                           ; $499b: $00
    ld b, $03                                     ; $499c: $06 $03
    ld b, $86                                     ; $499e: $06 $86
    inc b                                         ; $49a0: $04
    nop                                           ; $49a1: $00
    ld b, $30                                     ; $49a2: $06 $30
    ld b, $60                                     ; $49a4: $06 $60
    add l                                         ; $49a6: $85
    ccf                                           ; $49a7: $3f
    rra                                           ; $49a8: $1f
    ld a, l                                       ; $49a9: $7d
    inc a                                         ; $49aa: $3c
    ld a, h                                       ; $49ab: $7c
    inc bc                                        ; $49ac: $03
    ld l, h                                       ; $49ad: $6c
    add h                                         ; $49ae: $84
    ld a, c                                       ; $49af: $79
    ld a, l                                       ; $49b0: $7d
    ld sp, $0439                                  ; $49b1: $31 $39 $04
    nop                                           ; $49b4: $00
    adc h                                         ; $49b5: $8c
    adc a                                         ; $49b6: $8f
    rst RST_08                                    ; $49b7: $cf
    call $cfcd                                    ; $49b8: $cd $cd $cf
    call $cfcf                                    ; $49bb: $cd $cf $cf
    adc $c7                                       ; $49be: $ce $c7
    add h                                         ; $49c0: $84
    add d                                         ; $49c1: $82
    inc b                                         ; $49c2: $04
    nop                                           ; $49c3: $00
    inc b                                         ; $49c4: $04
    or c                                          ; $49c5: $b1
    add l                                         ; $49c6: $85
    ld sp, $31b1                                  ; $49c7: $31 $b1 $31
    jr nc, @+$72                                  ; $49ca: $30 $70

    inc bc                                        ; $49cc: $03
    ld h, b                                       ; $49cd: $60
    inc b                                         ; $49ce: $04
    nop                                           ; $49cf: $00
    inc b                                         ; $49d0: $04
    add b                                         ; $49d1: $80
    adc b                                         ; $49d2: $88
    ret nz                                        ; $49d3: $c0

    add b                                         ; $49d4: $80
    ret nz                                        ; $49d5: $c0

    ret nz                                        ; $49d6: $c0

    ldh [$ffe0], a                                ; $49d7: $e0 $e0
    ld h, b                                       ; $49d9: $60
    ld h, b                                       ; $49da: $60
    inc b                                         ; $49db: $04
    nop                                           ; $49dc: $00
    adc h                                         ; $49dd: $8c
    rrca                                          ; $49de: $0f
    ld c, $1c                                     ; $49df: $0e $1c
    inc c                                         ; $49e1: $0c
    jr jr_004_49fc                                ; $49e2: $18 $18

    inc e                                         ; $49e4: $1c
    jr jr_004_4a06                                ; $49e5: $18 $1f

    rrca                                          ; $49e7: $0f
    rrca                                          ; $49e8: $0f
    rlca                                          ; $49e9: $07
    inc b                                         ; $49ea: $04
    nop                                           ; $49eb: $00
    ld b, $01                                     ; $49ec: $06 $01
    add [hl]                                      ; $49ee: $86
    inc bc                                        ; $49ef: $03
    inc bc                                        ; $49f0: $03
    rst RST_08                                    ; $49f1: $cf
    rst RST_08                                    ; $49f2: $cf
    adc $ce                                       ; $49f3: $ce $ce
    inc b                                         ; $49f5: $04
    nop                                           ; $49f6: $00
    inc b                                         ; $49f7: $04
    adc h                                         ; $49f8: $8c
    add h                                         ; $49f9: $84
    inc c                                         ; $49fa: $0c
    adc h                                         ; $49fb: $8c

jr_004_49fc:
    add b                                         ; $49fc: $80
    nop                                           ; $49fd: $00
    inc b                                         ; $49fe: $04
    add hl, de                                    ; $49ff: $19
    inc b                                         ; $4a00: $04
    nop                                           ; $4a01: $00
    ld b, $c0                                     ; $4a02: $06 $c0
    add d                                         ; $4a04: $82
    nop                                           ; $4a05: $00

jr_004_4a06:
    nop                                           ; $4a06: $00
    inc b                                         ; $4a07: $04
    add b                                         ; $4a08: $80
    ld a, [bc]                                    ; $4a09: $0a
    nop                                           ; $4a0a: $00
    add b                                         ; $4a0b: $80
    add e                                         ; $4a0c: $83
    dec b                                         ; $4a0d: $05
    jr nc, jr_004_4a47                            ; $4a0e: $30 $37

    scf                                           ; $4a10: $37
    jr nc, @+$32                                  ; $4a11: $30 $30

    inc b                                         ; $4a13: $04
    nop                                           ; $4a14: $00
    inc b                                         ; $4a15: $04
    ret nz                                        ; $4a16: $c0

    inc b                                         ; $4a17: $04
    ldh [rDIV], a                                 ; $4a18: $e0 $04
    ret nz                                        ; $4a1a: $c0

    add b                                         ; $4a1b: $80
    add e                                         ; $4a1c: $83
    inc b                                         ; $4a1d: $04
    jr nc, jr_004_4a53                            ; $4a1e: $30 $33

    scf                                           ; $4a20: $37
    ld [hl], $84                                  ; $4a21: $36 $84
    ccf                                           ; $4a23: $3f
    scf                                           ; $4a24: $37
    dec sp                                        ; $4a25: $3b
    dec de                                        ; $4a26: $1b
    inc b                                         ; $4a27: $04
    nop                                           ; $4a28: $00
    inc b                                         ; $4a29: $04
    ret nz                                        ; $4a2a: $c0

    adc b                                         ; $4a2b: $88
    and $c6                                       ; $4a2c: $e6 $c6
    rst RST_30                                    ; $4a2e: $f7
    and $f3                                       ; $4a2f: $e6 $f3
    di                                            ; $4a31: $f3
    and e                                         ; $4a32: $a3
    add e                                         ; $4a33: $83
    inc c                                         ; $4a34: $0c
    nop                                           ; $4a35: $00
    sub a                                         ; $4a36: $97
    add c                                         ; $4a37: $81
    ld bc, $263e                                  ; $4a38: $01 $3e $26
    jr @+$1a                                      ; $4a3b: $18 $18

    inc bc                                        ; $4a3d: $03
    nop                                           ; $4a3e: $00
    ld e, $1e                                     ; $4a3f: $1e $1e
    daa                                           ; $4a41: $27
    ld hl, $c0c1                                  ; $4a42: $21 $c1 $c0
    rrca                                          ; $4a45: $0f
    nop                                           ; $4a46: $00

jr_004_4a47:
    rst RST_20                                    ; $4a47: $e7
    pop hl                                        ; $4a48: $e1
    ld e, $1e                                     ; $4a49: $1e $1e
    ld a, h                                       ; $4a4b: $7c
    nop                                           ; $4a4c: $00
    rst RST_38                                    ; $4a4d: $ff
    inc bc                                        ; $4a4e: $03
    nop                                           ; $4a4f: $00
    and a                                         ; $4a50: $a7
    add b                                         ; $4a51: $80
    add b                                         ; $4a52: $80

jr_004_4a53:
    pop bc                                        ; $4a53: $c1
    ld bc, $7efe                                  ; $4a54: $01 $fe $7e
    add c                                         ; $4a57: $81
    add c                                         ; $4a58: $81
    inc bc                                        ; $4a59: $03
    nop                                           ; $4a5a: $00
    ld a, b                                       ; $4a5b: $78
    nop                                           ; $4a5c: $00
    rst RST_38                                    ; $4a5d: $ff
    ld bc, $0000                                  ; $4a5e: $01 $00 $00
    ldh a, [$fff0]                                ; $4a61: $f0 $f0
    jr c, jr_004_4a6d                             ; $4a63: $38 $08

    ld a, h                                       ; $4a65: $7c
    nop                                           ; $4a66: $00
    ldh a, [$ff80]                                ; $4a67: $f0 $80
    ld hl, sp+$78                                 ; $4a69: $f8 $78
    add $c6                                       ; $4a6b: $c6 $c6

jr_004_4a6d:
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    jr jr_004_4a89                                ; $4a6f: $18 $18

    ld c, [hl]                                    ; $4a71: $4e
    ld b, h                                       ; $4a72: $44
    rlca                                          ; $4a73: $07
    inc bc                                        ; $4a74: $03
    ld c, c                                       ; $4a75: $49
    ld b, $3c                                     ; $4a76: $06 $3c
    rrca                                          ; $4a78: $0f
    nop                                           ; $4a79: $00
    sbc l                                         ; $4a7a: $9d
    inc e                                         ; $4a7b: $1c
    inc e                                         ; $4a7c: $1c
    ld h, $22                                     ; $4a7d: $26 $22
    rra                                           ; $4a7f: $1f
    nop                                           ; $4a80: $00
    inc c                                         ; $4a81: $0c
    nop                                           ; $4a82: $00
    dec c                                         ; $4a83: $0d
    ld [bc], a                                    ; $4a84: $02
    ccf                                           ; $4a85: $3f
    ld bc, $1f7c                                  ; $4a86: $01 $7c $1f

jr_004_4a89:
    ld h, d                                       ; $4a89: $62
    inc hl                                        ; $4a8a: $23
    call Call_000_1e41                            ; $4a8b: $cd $41 $1e
    ld bc, $0738                                  ; $4a8e: $01 $38 $07
    ld [hl], e                                    ; $4a91: $73
    rrca                                          ; $4a92: $0f
    jr nz, @+$01                                  ; $4a93: $20 $ff

    inc de                                        ; $4a95: $13
    rst RST_38                                    ; $4a96: $ff
    sbc a                                         ; $4a97: $9f
    add hl, bc                                    ; $4a98: $09
    rst RST_38                                    ; $4a99: $ff
    or c                                          ; $4a9a: $b1
    rlca                                          ; $4a9b: $07
    rlca                                          ; $4a9c: $07
    rrca                                          ; $4a9d: $0f
    ldh a, [$ffe3]                                ; $4a9e: $f0 $e3
    db $fc                                        ; $4aa0: $fc
    ld sp, hl                                     ; $4aa1: $f9
    cp $f8                                        ; $4aa2: $fe $f8
    rst RST_38                                    ; $4aa4: $ff
    db $fc                                        ; $4aa5: $fc
    rst RST_38                                    ; $4aa6: $ff
    db $fd                                        ; $4aa7: $fd
    rst RST_38                                    ; $4aa8: $ff
    cp $fe                                        ; $4aa9: $fe $fe
    db $fc                                        ; $4aab: $fc
    db $fc                                        ; $4aac: $fc
    ld c, $00                                     ; $4aad: $0e $00
    add l                                         ; $4aaf: $85
    ld [bc], a                                    ; $4ab0: $02
    rst RST_00                                    ; $4ab1: $c7
    nop                                           ; $4ab2: $00
    push bc                                       ; $4ab3: $c5
    ld [bc], a                                    ; $4ab4: $02
    db $fd                                        ; $4ab5: $fd
    ld [hl], d                                    ; $4ab6: $72
    sbc b                                         ; $4ab7: $98
    adc [hl]                                      ; $4ab8: $8e
    inc d                                         ; $4ab9: $14
    ld c, $33                                     ; $4aba: $0e $33
    rrca                                          ; $4abc: $0f
    ld h, h                                       ; $4abd: $64
    inc e                                         ; $4abe: $1c
    jr z, jr_004_4ad9                             ; $4abf: $28 $18

    ld bc, $0300                                  ; $4ac1: $01 $00 $03
    nop                                           ; $4ac4: $00
    ld a, e                                       ; $4ac5: $7b
    ld a, b                                       ; $4ac6: $78
    sbc l                                         ; $4ac7: $9d
    add h                                         ; $4ac8: $84
    rrca                                          ; $4ac9: $0f
    ld [bc], a                                    ; $4aca: $02
    ld a, $03                                     ; $4acb: $3e $03
    nop                                           ; $4acd: $00
    adc c                                         ; $4ace: $89
    ldh a, [rP1]                                  ; $4acf: $f0 $00
    sbc h                                         ; $4ad1: $9c
    ld h, b                                       ; $4ad2: $60
    rrca                                          ; $4ad3: $0f
    ldh a, [rIE]                                  ; $4ad4: $f0 $ff
    nop                                           ; $4ad6: $00
    sbc b                                         ; $4ad7: $98
    dec b                                         ; $4ad8: $05

jr_004_4ad9:
    nop                                           ; $4ad9: $00
    sbc a                                         ; $4ada: $9f
    ldh a, [$fff0]                                ; $4adb: $f0 $f0
    nop                                           ; $4add: $00
    nop                                           ; $4ade: $00
    rra                                           ; $4adf: $1f
    nop                                           ; $4ae0: $00
    rst RST_38                                    ; $4ae1: $ff
    nop                                           ; $4ae2: $00

jr_004_4ae3:
    rst RST_38                                    ; $4ae3: $ff
    inc bc                                        ; $4ae4: $03
    ld a, l                                       ; $4ae5: $7d
    inc b                                         ; $4ae6: $04
    jr jr_004_4b01                                ; $4ae7: $18 $18

    ld bc, $3600                                  ; $4ae9: $01 $00 $36
    ld [$10ec], sp                                ; $4aec: $08 $ec $10
    ld hl, sp+$00                                 ; $4aef: $f8 $00
    ldh [rP1], a                                  ; $4af1: $e0 $00
    ldh [$ffe0], a                                ; $4af3: $e0 $e0
    ld hl, sp+$18                                 ; $4af5: $f8 $18
    ld c, h                                       ; $4af7: $4c
    jr nc, @-$0e                                  ; $4af8: $30 $f0

    dec b                                         ; $4afa: $05
    nop                                           ; $4afb: $00
    add [hl]                                      ; $4afc: $86
    ld [$4a00], sp                                ; $4afd: $08 $00 $4a
    nop                                           ; $4b00: $00

jr_004_4b01:
    nop                                           ; $4b01: $00
    ld c, d                                       ; $4b02: $4a
    ld a, [bc]                                    ; $4b03: $0a
    nop                                           ; $4b04: $00
    inc b                                         ; $4b05: $04
    ld a, a                                       ; $4b06: $7f
    ld [$8103], sp                                ; $4b07: $08 $03 $81
    rlca                                          ; $4b0a: $07
    inc bc                                        ; $4b0b: $03
    ld b, $88                                     ; $4b0c: $06 $88
    ld c, $0c                                     ; $4b0e: $0e $0c
    inc e                                         ; $4b10: $1c
    inc e                                         ; $4b11: $1c
    jr c, jr_004_4b4c                             ; $4b12: $38 $38

    jr nc, jr_004_4b46                            ; $4b14: $30 $30

    inc b                                         ; $4b16: $04
    nop                                           ; $4b17: $00
    inc b                                         ; $4b18: $04
    ld a, [hl]                                    ; $4b19: $7e
    inc b                                         ; $4b1a: $04
    jr jr_004_4b21                                ; $4b1b: $18 $04

    ld a, [hl]                                    ; $4b1d: $7e
    ld [$0400], sp                                ; $4b1e: $08 $00 $04

jr_004_4b21:
    ld a, a                                       ; $4b21: $7f
    add b                                         ; $4b22: $80
    add e                                         ; $4b23: $83
    ld b, $03                                     ; $4b24: $06 $03
    dec de                                        ; $4b26: $1b
    dec de                                        ; $4b27: $1b
    rra                                           ; $4b28: $1f
    ld e, $18                                     ; $4b29: $1e $18
    adc b                                         ; $4b2b: $88
    jr c, jr_004_4b46                             ; $4b2c: $38 $18

    jr nc, jr_004_4b60                            ; $4b2e: $30 $30

    ld [hl], b                                    ; $4b30: $70
    ld [hl], b                                    ; $4b31: $70
    ld h, b                                       ; $4b32: $60
    ld h, b                                       ; $4b33: $60
    ld [$0c00], sp                                ; $4b34: $08 $00 $0c
    ld h, e                                       ; $4b37: $63
    add e                                         ; $4b38: $83
    inc bc                                        ; $4b39: $03
    inc bc                                        ; $4b3a: $03
    rlca                                          ; $4b3b: $07
    inc bc                                        ; $4b3c: $03
    ld b, $86                                     ; $4b3d: $06 $86
    ld c, $0c                                     ; $4b3f: $0e $0c
    inc e                                         ; $4b41: $1c
    inc e                                         ; $4b42: $1c
    jr jr_004_4b5d                                ; $4b43: $18 $18

    inc b                                         ; $4b45: $04

jr_004_4b46:
    nop                                           ; $4b46: $00
    inc b                                         ; $4b47: $04
    ld a, [hl]                                    ; $4b48: $7e
    stop                                          ; $4b49: $10 $00
    add b                                         ; $4b4b: $80

jr_004_4b4c:
    add e                                         ; $4b4c: $83
    inc b                                         ; $4b4d: $04
    jr jr_004_4bce                                ; $4b4e: $18 $7e

    ld a, [hl]                                    ; $4b50: $7e
    jr nc, jr_004_4ae3                            ; $4b51: $30 $90

    ld [hl], a                                    ; $4b53: $77
    ld h, e                                       ; $4b54: $63
    ld a, a                                       ; $4b55: $7f
    ld a, a                                       ; $4b56: $7f
    inc a                                         ; $4b57: $3c
    jr c, jr_004_4bc8                             ; $4b58: $38 $6e

    ld a, h                                       ; $4b5a: $7c
    ld h, [hl]                                    ; $4b5b: $66
    ld h, [hl]                                    ; $4b5c: $66

jr_004_4b5d:
    ld [hl], b                                    ; $4b5d: $70
    ld h, b                                       ; $4b5e: $60
    ld a, a                                       ; $4b5f: $7f

jr_004_4b60:
    ccf                                           ; $4b60: $3f
    ccf                                           ; $4b61: $3f
    rra                                           ; $4b62: $1f
    ld [$0400], sp                                ; $4b63: $08 $00 $04
    ld a, b                                       ; $4b66: $78
    add h                                         ; $4b67: $84
    jr nc, jr_004_4b9a                            ; $4b68: $30 $30

    ld [hl], a                                    ; $4b6a: $77
    scf                                           ; $4b6b: $37
    add b                                         ; $4b6c: $80
    add e                                         ; $4b6d: $83
    dec b                                         ; $4b6e: $05
    ld h, a                                       ; $4b6f: $67
    ld h, [hl]                                    ; $4b70: $66
    ld h, [hl]                                    ; $4b71: $66
    ld h, [hl]                                    ; $4b72: $66
    ld h, [hl]                                    ; $4b73: $66
    add [hl]                                      ; $4b74: $86
    ld [hl], $66                                  ; $4b75: $36 $66
    ld a, [hl]                                    ; $4b77: $7e
    inc a                                         ; $4b78: $3c
    inc l                                         ; $4b79: $2c
    jr jr_004_4b84                                ; $4b7a: $18 $08

    nop                                           ; $4b7c: $00
    add b                                         ; $4b7d: $80
    add e                                         ; $4b7e: $83
    add hl, bc                                    ; $4b7f: $09
    jr jr_004_4c00                                ; $4b80: $18 $7e

    ld a, [hl]                                    ; $4b82: $7e
    inc c                                         ; $4b83: $0c

jr_004_4b84:
    ccf                                           ; $4b84: $3f
    ccf                                           ; $4b85: $3f
    ld b, $ce                                     ; $4b86: $06 $ce
    adc $86                                       ; $4b88: $ce $86
    ld h, b                                       ; $4b8a: $60
    ret nz                                        ; $4b8b: $c0

    ld a, b                                       ; $4b8c: $78
    ld a, b                                       ; $4b8d: $78
    jr jr_004_4bc8                                ; $4b8e: $18 $38

    ld [$0400], sp                                ; $4b90: $08 $00 $04
    ld h, b                                       ; $4b93: $60
    inc b                                         ; $4b94: $04
    ld hl, sp-$79                                 ; $4b95: $f8 $87
    ld h, b                                       ; $4b97: $60
    ld h, b                                       ; $4b98: $60
    ld l, a                                       ; $4b99: $6f

jr_004_4b9a:
    ld l, [hl]                                    ; $4b9a: $6e
    ld l, a                                       ; $4b9b: $6f
    ld l, a                                       ; $4b9c: $6f
    ld h, c                                       ; $4b9d: $61
    inc bc                                        ; $4b9e: $03
    ld h, b                                       ; $4b9f: $60
    add d                                         ; $4ba0: $82
    ld l, b                                       ; $4ba1: $68
    ld h, b                                       ; $4ba2: $60
    inc bc                                        ; $4ba3: $03
    ld l, a                                       ; $4ba4: $6f
    add c                                         ; $4ba5: $81
    ld h, a                                       ; $4ba6: $67
    ld [$0400], sp                                ; $4ba7: $08 $00 $04
    inc c                                         ; $4baa: $0c
    inc b                                         ; $4bab: $04
    cp $80                                        ; $4bac: $fe $80
    add e                                         ; $4bae: $83
    dec b                                         ; $4baf: $05
    inc a                                         ; $4bb0: $3c
    ld a, h                                       ; $4bb1: $7c
    ld l, h                                       ; $4bb2: $6c
    ld a, h                                       ; $4bb3: $7c
    inc a                                         ; $4bb4: $3c
    add [hl]                                      ; $4bb5: $86
    inc e                                         ; $4bb6: $1c
    inc c                                         ; $4bb7: $0c
    ld a, h                                       ; $4bb8: $7c
    ld a, b                                       ; $4bb9: $78
    ld a, b                                       ; $4bba: $78
    ld [hl], b                                    ; $4bbb: $70
    ld [$0400], sp                                ; $4bbc: $08 $00 $04
    add $04                                       ; $4bbf: $c6 $04
    rst RST_18                                    ; $4bc1: $df
    inc c                                         ; $4bc2: $0c
    add $84                                       ; $4bc3: $c6 $84
    db $ec                                        ; $4bc5: $ec
    ld l, [hl]                                    ; $4bc6: $6e
    ld l, [hl]                                    ; $4bc7: $6e

jr_004_4bc8:
    inc l                                         ; $4bc8: $2c
    ld [$8000], sp                                ; $4bc9: $08 $00 $80
    add e                                         ; $4bcc: $83
    add hl, bc                                    ; $4bcd: $09

jr_004_4bce:
    inc c                                         ; $4bce: $0c
    ld a, a                                       ; $4bcf: $7f
    ld a, a                                       ; $4bd0: $7f
    inc c                                         ; $4bd1: $0c
    ld a, a                                       ; $4bd2: $7f
    ld a, a                                       ; $4bd3: $7f
    inc c                                         ; $4bd4: $0c
    inc a                                         ; $4bd5: $3c
    ld a, [hl]                                    ; $4bd6: $7e
    add [hl]                                      ; $4bd7: $86
    ld l, [hl]                                    ; $4bd8: $6e
    ld l, a                                       ; $4bd9: $6f
    ld a, a                                       ; $4bda: $7f
    ld a, a                                       ; $4bdb: $7f
    ld a, [hl-]                                   ; $4bdc: $3a
    dec sp                                        ; $4bdd: $3b
    ld [$1000], sp                                ; $4bde: $08 $00 $10
    ld h, b                                       ; $4be1: $60
    adc b                                         ; $4be2: $88
    ld h, e                                       ; $4be3: $63
    ld h, e                                       ; $4be4: $63
    ld [hl], a                                    ; $4be5: $77
    ld h, e                                       ; $4be6: $63
    ld a, a                                       ; $4be7: $7f
    ld a, $3e                                     ; $4be8: $3e $3e
    inc e                                         ; $4bea: $1c
    ld [$0400], sp                                ; $4beb: $08 $00 $04
    jr nc, jr_004_4bf4                            ; $4bee: $30 $04

    ld a, h                                       ; $4bf0: $7c
    add b                                         ; $4bf1: $80
    add e                                         ; $4bf2: $83
    rlca                                          ; $4bf3: $07

jr_004_4bf4:
    jr nc, @+$39                                  ; $4bf4: $30 $37

    scf                                           ; $4bf6: $37
    jr nc, jr_004_4c29                            ; $4bf7: $30 $30

    inc [hl]                                      ; $4bf9: $34
    scf                                           ; $4bfa: $37
    add d                                         ; $4bfb: $82
    scf                                           ; $4bfc: $37
    inc sp                                        ; $4bfd: $33
    inc b                                         ; $4bfe: $04
    nop                                           ; $4bff: $00

jr_004_4c00:
    add b                                         ; $4c00: $80
    add e                                         ; $4c01: $83
    ld b, $9e                                     ; $4c02: $06 $9e
    cp a                                          ; $4c04: $bf
    inc sp                                        ; $4c05: $33
    inc sp                                        ; $4c06: $33
    cp a                                          ; $4c07: $bf
    sbc [hl]                                      ; $4c08: $9e
    ld b, $00                                     ; $4c09: $06 $00
    rst RST_38                                    ; $4c0b: $ff
    rrca                                          ; $4c0c: $0f
    rrca                                          ; $4c0d: $0f
    db $10                                        ; $4c0e: $10
    db $10                                        ; $4c0f: $10
    ld hl, $2720                                  ; $4c10: $21 $20 $27
    jr nz, jr_004_4c5c                            ; $4c13: $20 $47

    ld b, b                                       ; $4c15: $40
    ld c, [hl]                                    ; $4c16: $4e
    ld b, c                                       ; $4c17: $41
    ld c, h                                       ; $4c18: $4c
    ld b, e                                       ; $4c19: $43
    ld b, $06                                     ; $4c1a: $06 $06
    adc d                                         ; $4c1c: $8a
    adc d                                         ; $4c1d: $8a
    ld l, [hl]                                    ; $4c1e: $6e
    ld l, [hl]                                    ; $4c1f: $6e
    pop de                                        ; $4c20: $d1
    ld sp, $1aea                                  ; $4c21: $31 $ea $1a
    ld b, $fc                                     ; $4c24: $06 $fc
    dec b                                         ; $4c26: $05
    cp $3e                                        ; $4c27: $fe $3e

jr_004_4c29:
    rst RST_38                                    ; $4c29: $ff
    rlca                                          ; $4c2a: $07
    rlca                                          ; $4c2b: $07
    ld [$1108], sp                                ; $4c2c: $08 $08 $11
    db $10                                        ; $4c2f: $10
    db $d3                                        ; $4c30: $d3
    ret nc                                        ; $4c31: $d0

    ld [hl-], a                                   ; $4c32: $32
    ld sp, $1176                                  ; $4c33: $31 $76 $11
    db $dd                                        ; $4c36: $dd
    inc sp                                        ; $4c37: $33
    ld [de], a                                    ; $4c38: $12
    cp $80                                        ; $4c39: $fe $80
    add b                                         ; $4c3b: $80
    ld b, b                                       ; $4c3c: $40
    ld b, b                                       ; $4c3d: $40
    ldh [rNR41], a                                ; $4c3e: $e0 $20
    ld a, b                                       ; $4c40: $78
    ld hl, sp+$0c                                 ; $4c41: $f8 $0c
    add h                                         ; $4c43: $84
    ld a, [bc]                                    ; $4c44: $0a
    ld b, $0e                                     ; $4c45: $06 $0e
    ld [bc], a                                    ; $4c47: $02
    dec e                                         ; $4c48: $1d
    inc bc                                        ; $4c49: $03
    inc a                                         ; $4c4a: $3c
    inc hl                                        ; $4c4b: $23
    jr nc, jr_004_4c8d                            ; $4c4c: $30 $3f

    ld c, a                                       ; $4c4e: $4f
    ld c, a                                       ; $4c4f: $4f
    sub a                                         ; $4c50: $97
    add a                                         ; $4c51: $87
    cp [hl]                                       ; $4c52: $be
    add a                                         ; $4c53: $87
    and a                                         ; $4c54: $a7
    sbc a                                         ; $4c55: $9f
    rst RST_08                                    ; $4c56: $cf
    cp a                                          ; $4c57: $bf
    ld d, d                                       ; $4c58: $52
    ld [hl], d                                    ; $4c59: $72
    ld h, a                                       ; $4c5a: $67
    rst RST_38                                    ; $4c5b: $ff

jr_004_4c5c:
    rst RST_08                                    ; $4c5c: $cf
    rst RST_38                                    ; $4c5d: $ff
    rst RST_38                                    ; $4c5e: $ff
    cp $9e                                        ; $4c5f: $fe $9e
    db $fd                                        ; $4c61: $fd
    db $fc                                        ; $4c62: $fc
    rst RST_38                                    ; $4c63: $ff
    db $fd                                        ; $4c64: $fd
    rst RST_38                                    ; $4c65: $ff
    db $fd                                        ; $4c66: $fd
    rst RST_38                                    ; $4c67: $ff
    ld a, $3f                                     ; $4c68: $3e $3f
    inc sp                                        ; $4c6a: $33
    cp $ff                                        ; $4c6b: $fe $ff
    cp $b6                                        ; $4c6d: $fe $b6
    ld l, a                                       ; $4c6f: $6f
    ld e, a                                       ; $4c70: $5f
    rst RST_38                                    ; $4c71: $ff
    db $dd                                        ; $4c72: $dd
    di                                            ; $4c73: $f3
    di                                            ; $4c74: $f3
    rst RST_28                                    ; $4c75: $ef
    rst RST_38                                    ; $4c76: $ff
    rst RST_38                                    ; $4c77: $ff
    db $fc                                        ; $4c78: $fc
    db $e3                                        ; $4c79: $e3
    add hl, sp                                    ; $4c7a: $39
    rlca                                          ; $4c7b: $07
    ld sp, hl                                     ; $4c7c: $f9
    rlca                                          ; $4c7d: $07
    pop hl                                        ; $4c7e: $e1
    rra                                           ; $4c7f: $1f
    ld [bc], a                                    ; $4c80: $02
    cp $9c                                        ; $4c81: $fe $9c
    db $fc                                        ; $4c83: $fc
    ldh [c], a                                    ; $4c84: $e2
    ldh [c], a                                    ; $4c85: $e2
    rst RST_00                                    ; $4c86: $c7
    pop bc                                        ; $4c87: $c1
    call Call_000_24c3                            ; $4c88: $cd $c3 $24
    rst RST_00                                    ; $4c8b: $c7
    inc h                                         ; $4c8c: $24

jr_004_4c8d:
    ld c, h                                       ; $4c8d: $4c
    ld b, h                                       ; $4c8e: $44
    ld e, h                                       ; $4c8f: $5c
    ld b, h                                       ; $4c90: $44
    sbc a                                         ; $4c91: $9f
    add h                                         ; $4c92: $84
    or e                                          ; $4c93: $b3
    adc [hl]                                      ; $4c94: $8e
    and d                                         ; $4c95: $a2
    sbc a                                         ; $4c96: $9f
    ld h, l                                       ; $4c97: $65
    ld e, l                                       ; $4c98: $5d
    jr c, jr_004_4cd3                             ; $4c99: $38 $38

    cpl                                           ; $4c9b: $2f
    rra                                           ; $4c9c: $1f
    ld [hl], a                                    ; $4c9d: $77
    rrca                                          ; $4c9e: $0f
    rst RST_20                                    ; $4c9f: $e7
    rra                                           ; $4ca0: $1f
    rst RST_00                                    ; $4ca1: $c7
    ccf                                           ; $4ca2: $3f
    adc l                                         ; $4ca3: $8d
    ld a, c                                       ; $4ca4: $79
    ld a, [bc]                                    ; $4ca5: $0a
    ld sp, hl                                     ; $4ca6: $f9
    inc e                                         ; $4ca7: $1c
    ei                                            ; $4ca8: $fb
    rst RST_20                                    ; $4ca9: $e7
    rst RST_20                                    ; $4caa: $e7
    jp $8380                                      ; $4cab: $c3 $80 $83


    nop                                           ; $4cae: $00
    add a                                         ; $4caf: $87
    nop                                           ; $4cb0: $00
    adc l                                         ; $4cb1: $8d
    ld [bc], a                                    ; $4cb2: $02
    ei                                            ; $4cb3: $fb
    inc b                                         ; $4cb4: $04
    or b                                          ; $4cb5: $b0
    rst RST_08                                    ; $4cb6: $cf
    ldh [rIE], a                                  ; $4cb7: $e0 $ff
    rra                                           ; $4cb9: $1f
    rra                                           ; $4cba: $1f
    add hl, sp                                    ; $4cbb: $39
    rst RST_20                                    ; $4cbc: $e7
    sub c                                         ; $4cbd: $91
    ld a, a                                       ; $4cbe: $7f
    sub d                                         ; $4cbf: $92
    ld a, [hl]                                    ; $4cc0: $7e
    sbc h                                         ; $4cc1: $9c
    ld a, h                                       ; $4cc2: $7c
    db $10                                        ; $4cc3: $10
    ldh a, [rNR52]                                ; $4cc4: $f0 $26
    and $cb                                       ; $4cc6: $e6 $cb
    ret                                           ; $4cc8: $c9


    ld c, $0e                                     ; $4cc9: $0e $0e
    ld e, $1e                                     ; $4ccb: $1e $1e
    daa                                           ; $4ccd: $27
    inc hl                                        ; $4cce: $23
    dec l                                         ; $4ccf: $2d
    inc hl                                        ; $4cd0: $23
    ld e, $1e                                     ; $4cd1: $1e $1e

jr_004_4cd3:
    ld [$8c00], sp                                ; $4cd3: $08 $00 $8c
    jr c, @+$3a                                   ; $4cd6: $38 $38

    ld b, h                                       ; $4cd8: $44
    ld b, h                                       ; $4cd9: $44
    sbc d                                         ; $4cda: $9a
    add [hl]                                      ; $4cdb: $86
    and d                                         ; $4cdc: $a2
    sbc [hl]                                      ; $4cdd: $9e
    and h                                         ; $4cde: $a4
    sbc h                                         ; $4cdf: $9c
    ld a, b                                       ; $4ce0: $78
    ld a, b                                       ; $4ce1: $78
    inc b                                         ; $4ce2: $04
    nop                                           ; $4ce3: $00
    nop                                           ; $4ce4: $00
    and d                                         ; $4ce5: $a2
    nop                                           ; $4ce6: $00
    nop                                           ; $4ce7: $00
    ccf                                           ; $4ce8: $3f
    ccf                                           ; $4ce9: $3f
    dec c                                         ; $4cea: $0d
    dec bc                                        ; $4ceb: $0b
    ccf                                           ; $4cec: $3f
    ccf                                           ; $4ced: $3f
    dec c                                         ; $4cee: $0d
    rrca                                          ; $4cef: $0f
    rrca                                          ; $4cf0: $0f
    dec c                                         ; $4cf1: $0d
    rlca                                          ; $4cf2: $07
    inc b                                         ; $4cf3: $04
    ld c, $0f                                     ; $4cf4: $0e $0f
    rra                                           ; $4cf6: $1f
    dec de                                        ; $4cf7: $1b
    dec sp                                        ; $4cf8: $3b
    inc [hl]                                      ; $4cf9: $34
    dec a                                         ; $4cfa: $3d
    ld l, $37                                     ; $4cfb: $2e $37
    scf                                           ; $4cfd: $37
    ld b, $05                                     ; $4cfe: $06 $05
    rlca                                          ; $4d00: $07
    rlca                                          ; $4d01: $07
    ld [bc], a                                    ; $4d02: $02
    inc bc                                        ; $4d03: $03
    inc bc                                        ; $4d04: $03
    ld [bc], a                                    ; $4d05: $02
    ld bc, $2001                                  ; $4d06: $01 $01 $20
    nop                                           ; $4d09: $00
    add e                                         ; $4d0a: $83
    ldh a, [$fff0]                                ; $4d0b: $f0 $f0
    ld a, b                                       ; $4d0d: $78
    inc bc                                        ; $4d0e: $03
    ld hl, sp-$66                                 ; $4d0f: $f8 $9a

jr_004_4d11:
    ld e, b                                       ; $4d11: $58
    ld hl, sp-$08                                 ; $4d12: $f8 $f8
    ld e, b                                       ; $4d14: $58
    ldh a, [rNR10]                                ; $4d15: $f0 $10
    jr c, jr_004_4d11                             ; $4d17: $38 $f8

    db $fc                                        ; $4d19: $fc
    db $ec                                        ; $4d1a: $ec
    xor $16                                       ; $4d1b: $ee $16
    sbc $3a                                       ; $4d1d: $de $3a
    or $f6                                        ; $4d1f: $f6 $f6
    ret nc                                        ; $4d21: $d0

    or b                                          ; $4d22: $b0
    ldh a, [$fff0]                                ; $4d23: $f0 $f0
    and b                                         ; $4d25: $a0
    ldh [$ffe0], a                                ; $4d26: $e0 $e0
    and b                                         ; $4d28: $a0
    ret nz                                        ; $4d29: $c0

    ret nz                                        ; $4d2a: $c0

    ld e, $00                                     ; $4d2b: $1e $00
    add b                                         ; $4d2d: $80
    add c                                         ; $4d2e: $81
    jr jr_004_4d70                                ; $4d2f: $18 $3f

    ld b, b                                       ; $4d31: $40
    jr nc, jr_004_4d74                            ; $4d32: $30 $40

    jr nc, @+$12                                  ; $4d34: $30 $10

    ld [$2010], sp                                ; $4d36: $08 $10 $20
    ld b, b                                       ; $4d39: $40
    ld b, b                                       ; $4d3a: $40
    ld c, b                                       ; $4d3b: $48
    jr c, jr_004_4d66                             ; $4d3c: $38 $28

    inc l                                         ; $4d3e: $2c
    inc c                                         ; $4d3f: $0c
    ld a, [bc]                                    ; $4d40: $0a
    add hl, bc                                    ; $4d41: $09
    ld bc, $0101                                  ; $4d42: $01 $01 $01
    ld bc, $0101                                  ; $4d45: $01 $01 $01
    stop                                          ; $4d48: $10 $00
    add b                                         ; $4d4a: $80
    add c                                         ; $4d4b: $81
    ld d, $f0                                     ; $4d4c: $16 $f0
    ld [$0404], sp                                ; $4d4e: $08 $04 $04
    inc b                                         ; $4d51: $04
    inc b                                         ; $4d52: $04
    ld [$0204], sp                                ; $4d53: $08 $04 $02
    ld bc, $0901                                  ; $4d56: $01 $01 $09
    ld c, $0a                                     ; $4d59: $0e $0a
    ld a, [de]                                    ; $4d5b: $1a
    jr jr_004_4d86                                ; $4d5c: $18 $28

    add sp, $20                                   ; $4d5e: $e8 $20
    jr nz, jr_004_4d82                            ; $4d60: $20 $20

    jr nz, jr_004_4d78                            ; $4d62: $20 $14

    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00

jr_004_4d66:
    and d                                         ; $4d66: $a2
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    rrca                                          ; $4d69: $0f
    rrca                                          ; $4d6a: $0f
    ld a, [de]                                    ; $4d6b: $1a
    rla                                           ; $4d6c: $17
    rra                                           ; $4d6d: $1f
    rra                                           ; $4d6e: $1f
    ld a, [de]                                    ; $4d6f: $1a

jr_004_4d70:
    rra                                           ; $4d70: $1f
    ld a, a                                       ; $4d71: $7f
    ld a, d                                       ; $4d72: $7a
    ld a, a                                       ; $4d73: $7f

jr_004_4d74:
    ld e, b                                       ; $4d74: $58
    ld a, h                                       ; $4d75: $7c
    ld l, a                                       ; $4d76: $6f
    cpl                                           ; $4d77: $2f

jr_004_4d78:
    scf                                           ; $4d78: $37
    rla                                           ; $4d79: $17
    jr jr_004_4d87                                ; $4d7a: $18 $0b

    inc c                                         ; $4d7c: $0c
    rrca                                          ; $4d7d: $0f
    rrca                                          ; $4d7e: $0f
    dec c                                         ; $4d7f: $0d
    dec bc                                        ; $4d80: $0b
    rrca                                          ; $4d81: $0f

jr_004_4d82:
    rrca                                          ; $4d82: $0f
    rlca                                          ; $4d83: $07
    dec b                                         ; $4d84: $05
    dec b                                         ; $4d85: $05

jr_004_4d86:
    rlca                                          ; $4d86: $07

jr_004_4d87:
    inc bc                                        ; $4d87: $03
    inc bc                                        ; $4d88: $03
    jr nz, jr_004_4d8b                            ; $4d89: $20 $00

jr_004_4d8b:
    add e                                         ; $4d8b: $83
    ret nz                                        ; $4d8c: $c0

    ldh [$ffe0], a                                ; $4d8d: $e0 $e0
    inc bc                                        ; $4d8f: $03
    ldh a, [$ff9a]                                ; $4d90: $f0 $9a
    cp h                                          ; $4d92: $bc
    db $fc                                        ; $4d93: $fc
    cp $ba                                        ; $4d94: $fe $ba
    cp $36                                        ; $4d96: $fe $36
    ld a, [hl]                                    ; $4d98: $7e
    xor $ea                                       ; $4d99: $ee $ea
    jp c, $32d2                                   ; $4d9b: $da $d2 $32

    and d                                         ; $4d9e: $a2
    ld h, b                                       ; $4d9f: $60
    ldh [$ffe0], a                                ; $4da0: $e0 $e0
    and b                                         ; $4da2: $a0
    ld h, b                                       ; $4da3: $60
    ldh [$ffe0], a                                ; $4da4: $e0 $e0
    ret nz                                        ; $4da6: $c0

    ld b, b                                       ; $4da7: $40
    ld b, b                                       ; $4da8: $40
    ret nz                                        ; $4da9: $c0

    add b                                         ; $4daa: $80
    add b                                         ; $4dab: $80
    ld e, $00                                     ; $4dac: $1e $00
    add b                                         ; $4dae: $80
    add c                                         ; $4daf: $81
    jr jr_004_4dc1                                ; $4db0: $18 $0f

    db $10                                        ; $4db2: $10
    jr nz, @+$22                                  ; $4db3: $20 $20

    ld h, b                                       ; $4db5: $60
    add b                                         ; $4db6: $80
    add b                                         ; $4db7: $80
    add b                                         ; $4db8: $80
    ret nz                                        ; $4db9: $c0

    and b                                         ; $4dba: $a0
    sub b                                         ; $4dbb: $90
    sub b                                         ; $4dbc: $90
    sub b                                         ; $4dbd: $90
    sub b                                         ; $4dbe: $90
    jr jr_004_4dd9                                ; $4dbf: $18 $18

jr_004_4dc1:
    inc d                                         ; $4dc1: $14
    inc de                                        ; $4dc2: $13
    ld [bc], a                                    ; $4dc3: $02
    ld [bc], a                                    ; $4dc4: $02
    ld [bc], a                                    ; $4dc5: $02
    ld [bc], a                                    ; $4dc6: $02
    ld [bc], a                                    ; $4dc7: $02
    ld [bc], a                                    ; $4dc8: $02
    stop                                          ; $4dc9: $10 $00
    add b                                         ; $4dcb: $80
    add c                                         ; $4dcc: $81
    ld d, $e0                                     ; $4dcd: $16 $e0
    db $10                                        ; $4dcf: $10
    ld [$020c], sp                                ; $4dd0: $08 $0c $02
    ld bc, $0101                                  ; $4dd3: $01 $01 $01
    dec b                                         ; $4dd6: $05
    dec c                                         ; $4dd7: $0d
    dec d                                         ; $4dd8: $15

jr_004_4dd9:
    ld [de], a                                    ; $4dd9: $12
    ld [de], a                                    ; $4dda: $12
    ld [de], a                                    ; $4ddb: $12
    ld [hl-], a                                   ; $4ddc: $32
    ld [hl-], a                                   ; $4ddd: $32
    ld d, b                                       ; $4dde: $50
    ret nc                                        ; $4ddf: $d0

    ld b, b                                       ; $4de0: $40
    ld b, b                                       ; $4de1: $40
    ld b, b                                       ; $4de2: $40
    ld b, b                                       ; $4de3: $40
    inc d                                         ; $4de4: $14
    nop                                           ; $4de5: $00
    add c                                         ; $4de6: $81
    db $e3                                        ; $4de7: $e3
    nop                                           ; $4de8: $00
    and e                                         ; $4de9: $a3
    ccf                                           ; $4dea: $3f
    ccf                                           ; $4deb: $3f
    dec c                                         ; $4dec: $0d
    dec bc                                        ; $4ded: $0b
    ccf                                           ; $4dee: $3f
    ccf                                           ; $4def: $3f
    dec c                                         ; $4df0: $0d
    rrca                                          ; $4df1: $0f
    rrca                                          ; $4df2: $0f
    dec c                                         ; $4df3: $0d
    rlca                                          ; $4df4: $07
    dec b                                         ; $4df5: $05
    rrca                                          ; $4df6: $0f
    ld c, $1f                                     ; $4df7: $0e $1f
    dec de                                        ; $4df9: $1b
    dec sp                                        ; $4dfa: $3b
    inc [hl]                                      ; $4dfb: $34
    dec a                                         ; $4dfc: $3d
    ld l, $37                                     ; $4dfd: $2e $37
    scf                                           ; $4dff: $37
    ld b, $05                                     ; $4e00: $06 $05
    rlca                                          ; $4e02: $07
    rlca                                          ; $4e03: $07
    ld [bc], a                                    ; $4e04: $02
    inc bc                                        ; $4e05: $03
    inc bc                                        ; $4e06: $03
    ld [bc], a                                    ; $4e07: $02
    ld bc, $f001                                  ; $4e08: $01 $01 $f0
    ldh a, [$ff78]                                ; $4e0b: $f0 $78
    inc bc                                        ; $4e0d: $03
    ld hl, sp-$4a                                 ; $4e0e: $f8 $b6
    ld e, b                                       ; $4e10: $58
    ld hl, sp-$08                                 ; $4e11: $f8 $f8
    ld e, b                                       ; $4e13: $58
    ldh a, [$ff50]                                ; $4e14: $f0 $50
    ld hl, sp+$38                                 ; $4e16: $f8 $38
    db $fc                                        ; $4e18: $fc
    db $ec                                        ; $4e19: $ec
    xor $16                                       ; $4e1a: $ee $16
    sbc $3a                                       ; $4e1c: $de $3a
    or $f6                                        ; $4e1e: $f6 $f6
    ret nc                                        ; $4e20: $d0

    or b                                          ; $4e21: $b0
    ldh a, [$fff0]                                ; $4e22: $f0 $f0
    and b                                         ; $4e24: $a0
    ldh [$ffe0], a                                ; $4e25: $e0 $e0
    and b                                         ; $4e27: $a0
    ret nz                                        ; $4e28: $c0

    ret nz                                        ; $4e29: $c0

    rra                                           ; $4e2a: $1f
    rra                                           ; $4e2b: $1f
    dec c                                         ; $4e2c: $0d
    dec bc                                        ; $4e2d: $0b
    rra                                           ; $4e2e: $1f
    rra                                           ; $4e2f: $1f
    dec b                                         ; $4e30: $05
    rlca                                          ; $4e31: $07
    rlca                                          ; $4e32: $07
    dec b                                         ; $4e33: $05
    rlca                                          ; $4e34: $07
    dec b                                         ; $4e35: $05
    rst RST_38                                    ; $4e36: $ff
    db $fc                                        ; $4e37: $fc
    rst RST_38                                    ; $4e38: $ff
    add a                                         ; $4e39: $87
    ld a, e                                       ; $4e3a: $7b
    ld a, h                                       ; $4e3b: $7c
    dec b                                         ; $4e3c: $05
    ld b, $0f                                     ; $4e3d: $06 $0f
    rrca                                          ; $4e3f: $0f
    dec e                                         ; $4e40: $1d
    dec de                                        ; $4e41: $1b
    ld a, $26                                     ; $4e42: $3e $26
    jr c, jr_004_4e7e                             ; $4e44: $38 $38

    inc b                                         ; $4e46: $04
    nop                                           ; $4e47: $00
    add e                                         ; $4e48: $83
    ldh a, [$fff0]                                ; $4e49: $f0 $f0
    ld a, b                                       ; $4e4b: $78
    inc bc                                        ; $4e4c: $03
    ld hl, sp-$6a                                 ; $4e4d: $f8 $96
    ld a, b                                       ; $4e4f: $78
    ld hl, sp-$08                                 ; $4e50: $f8 $f8
    ld e, b                                       ; $4e52: $58
    ld hl, sp+$18                                 ; $4e53: $f8 $18
    cp b                                          ; $4e55: $b8
    ld [hl], b                                    ; $4e56: $70
    call c, $ece8                                 ; $4e57: $dc $e8 $ec
    inc d                                         ; $4e5a: $14
    call c, $fc34                                 ; $4e5b: $dc $34 $fc
    db $fc                                        ; $4e5e: $fc
    db $ec                                        ; $4e5f: $ec
    call c, $323e                                 ; $4e60: $dc $3e $32
    ld c, $0e                                     ; $4e63: $0e $0e
    inc b                                         ; $4e65: $04
    nop                                           ; $4e66: $00
    sbc [hl]                                      ; $4e67: $9e
    rst RST_38                                    ; $4e68: $ff
    rst RST_38                                    ; $4e69: $ff
    dec [hl]                                      ; $4e6a: $35
    cpl                                           ; $4e6b: $2f
    rst RST_38                                    ; $4e6c: $ff
    rst RST_38                                    ; $4e6d: $ff
    push af                                       ; $4e6e: $f5
    rst RST_38                                    ; $4e6f: $ff
    rst RST_38                                    ; $4e70: $ff
    or l                                          ; $4e71: $b5
    rst RST_38                                    ; $4e72: $ff
    or l                                          ; $4e73: $b5
    ld a, a                                       ; $4e74: $7f
    ld e, b                                       ; $4e75: $58
    ccf                                           ; $4e76: $3f
    cpl                                           ; $4e77: $2f
    cpl                                           ; $4e78: $2f
    jr nc, jr_004_4e92                            ; $4e79: $30 $17

    jr jr_004_4e9c                                ; $4e7b: $18 $1f

    rra                                           ; $4e7d: $1f

jr_004_4e7e:
    dec de                                        ; $4e7e: $1b
    ld d, $1f                                     ; $4e7f: $16 $1f
    ccf                                           ; $4e81: $3f
    ld l, $38                                     ; $4e82: $2e $38
    ld [hl], b                                    ; $4e84: $70
    ld d, b                                       ; $4e85: $50
    add b                                         ; $4e86: $80
    add e                                         ; $4e87: $83
    inc b                                         ; $4e88: $04
    ld h, b                                       ; $4e89: $60
    ret nz                                        ; $4e8a: $c0

    ldh [$ffe0], a                                ; $4e8b: $e0 $e0
    cp l                                          ; $4e8d: $bd
    ld h, b                                       ; $4e8e: $60
    ldh [$ffe0], a                                ; $4e8f: $e0 $e0
    ld h, b                                       ; $4e91: $60

jr_004_4e92:
    ldh [$ff60], a                                ; $4e92: $e0 $60
    ret nz                                        ; $4e94: $c0

    ret nz                                        ; $4e95: $c0

    ldh [$ffa0], a                                ; $4e96: $e0 $a0
    or b                                          ; $4e98: $b0
    ld d, b                                       ; $4e99: $50
    ld [hl], b                                    ; $4e9a: $70
    ret nc                                        ; $4e9b: $d0

jr_004_4e9c:
    ldh a, [$fff0]                                ; $4e9c: $f0 $f0
    ld h, b                                       ; $4e9e: $60
    ldh [$ffd0], a                                ; $4e9f: $e0 $d0
    ldh a, [$ff38]                                ; $4ea1: $f0 $38
    ld l, b                                       ; $4ea3: $68
    jr jr_004_4ebe                                ; $4ea4: $18 $18

    nop                                           ; $4ea6: $00
    nop                                           ; $4ea7: $00
    rra                                           ; $4ea8: $1f
    rra                                           ; $4ea9: $1f
    ld b, $05                                     ; $4eaa: $06 $05
    rra                                           ; $4eac: $1f
    rra                                           ; $4ead: $1f
    ld b, $07                                     ; $4eae: $06 $07
    rlca                                          ; $4eb0: $07
    ld b, $07                                     ; $4eb1: $06 $07
    ld b, $03                                     ; $4eb3: $06 $03
    inc bc                                        ; $4eb5: $03
    rlca                                          ; $4eb6: $07
    dec b                                         ; $4eb7: $05
    dec c                                         ; $4eb8: $0d
    ld a, [bc]                                    ; $4eb9: $0a
    ld c, $0b                                     ; $4eba: $0e $0b
    rrca                                          ; $4ebc: $0f
    rrca                                          ; $4ebd: $0f

jr_004_4ebe:
    rlca                                          ; $4ebe: $07
    ld b, $0b                                     ; $4ebf: $06 $0b
    rrca                                          ; $4ec1: $0f
    inc e                                         ; $4ec2: $1c
    ld d, $18                                     ; $4ec3: $16 $18
    jr jr_004_4ec7                                ; $4ec5: $18 $00

jr_004_4ec7:
    nop                                           ; $4ec7: $00
    ld hl, sp-$08                                 ; $4ec8: $f8 $f8
    cp h                                          ; $4eca: $bc
    inc bc                                        ; $4ecb: $03
    db $fc                                        ; $4ecc: $fc
    sbc d                                         ; $4ecd: $9a
    xor a                                         ; $4ece: $af
    rst RST_38                                    ; $4ecf: $ff
    rst RST_38                                    ; $4ed0: $ff
    xor l                                         ; $4ed1: $ad
    rst RST_38                                    ; $4ed2: $ff
    xor l                                         ; $4ed3: $ad
    cp $1a                                        ; $4ed4: $fe $1a
    db $fc                                        ; $4ed6: $fc
    db $f4                                        ; $4ed7: $f4
    db $f4                                        ; $4ed8: $f4
    inc c                                         ; $4ed9: $0c
    add sp, $18                                   ; $4eda: $e8 $18
    ld hl, sp-$08                                 ; $4edc: $f8 $f8
    ld l, b                                       ; $4ede: $68
    ret c                                         ; $4edf: $d8

    ld hl, sp-$04                                 ; $4ee0: $f8 $fc
    ld [hl], h                                    ; $4ee2: $74
    inc e                                         ; $4ee3: $1c
    ld c, $0a                                     ; $4ee4: $0e $0a
    ld b, $06                                     ; $4ee6: $06 $06
    nop                                           ; $4ee8: $00
    and e                                         ; $4ee9: $a3
    rlca                                          ; $4eea: $07
    rlca                                          ; $4eeb: $07
    dec c                                         ; $4eec: $0d
    dec bc                                        ; $4eed: $0b
    rrca                                          ; $4eee: $0f
    rrca                                          ; $4eef: $0f
    dec c                                         ; $4ef0: $0d
    rrca                                          ; $4ef1: $0f
    rrca                                          ; $4ef2: $0f
    dec c                                         ; $4ef3: $0d
    rlca                                          ; $4ef4: $07
    dec b                                         ; $4ef5: $05
    rrca                                          ; $4ef6: $0f
    ld c, $17                                     ; $4ef7: $0e $17
    dec de                                        ; $4ef9: $1b
    dec sp                                        ; $4efa: $3b
    inc [hl]                                      ; $4efb: $34
    dec a                                         ; $4efc: $3d
    ld l, $37                                     ; $4efd: $2e $37
    scf                                           ; $4eff: $37
    ld b, $05                                     ; $4f00: $06 $05
    rlca                                          ; $4f02: $07
    rlca                                          ; $4f03: $07
    ld [bc], a                                    ; $4f04: $02
    inc bc                                        ; $4f05: $03
    inc bc                                        ; $4f06: $03
    ld [bc], a                                    ; $4f07: $02
    ld bc, $e001                                  ; $4f08: $01 $01 $e0
    ldh a, [rSVBK]                                ; $4f0b: $f0 $70
    inc bc                                        ; $4f0d: $03
    ld hl, sp-$52                                 ; $4f0e: $f8 $ae
    ld e, [hl]                                    ; $4f10: $5e
    cp $ff                                        ; $4f11: $fe $ff
    ld e, a                                       ; $4f13: $5f
    rst RST_30                                    ; $4f14: $f7
    ld d, a                                       ; $4f15: $57
    rst RST_38                                    ; $4f16: $ff
    dec sp                                        ; $4f17: $3b
    push af                                       ; $4f18: $f5
    db $ed                                        ; $4f19: $ed
    rst RST_28                                    ; $4f1a: $ef
    rla                                           ; $4f1b: $17
    rst RST_18                                    ; $4f1c: $df
    ld a, [hl-]                                   ; $4f1d: $3a
    or $f6                                        ; $4f1e: $f6 $f6
    ret nc                                        ; $4f20: $d0

    or b                                          ; $4f21: $b0
    ldh a, [$fff0]                                ; $4f22: $f0 $f0
    and b                                         ; $4f24: $a0
    ldh [$ffe0], a                                ; $4f25: $e0 $e0
    and b                                         ; $4f27: $a0
    ret nz                                        ; $4f28: $c0

    ret nz                                        ; $4f29: $c0

    rrca                                          ; $4f2a: $0f
    rlca                                          ; $4f2b: $07
    rra                                           ; $4f2c: $1f
    rrca                                          ; $4f2d: $0f
    add hl, de                                    ; $4f2e: $19
    rra                                           ; $4f2f: $1f
    inc c                                         ; $4f30: $0c
    dec de                                        ; $4f31: $1b
    rrca                                          ; $4f32: $0f
    ld a, [bc]                                    ; $4f33: $0a
    rrca                                          ; $4f34: $0f
    ld a, [bc]                                    ; $4f35: $0a
    rrca                                          ; $4f36: $0f
    ld [$7f7f], sp                                ; $4f37: $08 $7f $7f
    ld a, e                                       ; $4f3a: $7b
    ld b, [hl]                                    ; $4f3b: $46

jr_004_4f3c:
    ccf                                           ; $4f3c: $3f
    ccf                                           ; $4f3d: $3f
    add b                                         ; $4f3e: $80
    inc bc                                        ; $4f3f: $03
    dec b                                         ; $4f40: $05
    xor e                                         ; $4f41: $ab
    rlca                                          ; $4f42: $07
    dec e                                         ; $4f43: $1d
    dec de                                        ; $4f44: $1b
    ccf                                           ; $4f45: $3f
    ld h, $38                                     ; $4f46: $26 $38
    jr c, jr_004_4f4a                             ; $4f48: $38 $00

jr_004_4f4a:
    nop                                           ; $4f4a: $00
    ldh [$ffc0], a                                ; $4f4b: $e0 $c0
    ldh [$fff0], a                                ; $4f4d: $e0 $f0
    or $fc                                        ; $4f4f: $f6 $fc
    rst RST_30                                    ; $4f51: $f7
    cp $37                                        ; $4f52: $fe $37
    rst RST_30                                    ; $4f54: $f7
    and a                                         ; $4f55: $a7
    ld [hl], e                                    ; $4f56: $73
    ld h, e                                       ; $4f57: $63
    pop hl                                        ; $4f58: $e1
    cp c                                          ; $4f59: $b9
    pop de                                        ; $4f5a: $d1
    ld sp, hl                                     ; $4f5b: $f9
    adc b                                         ; $4f5c: $88
    db $fc                                        ; $4f5d: $fc
    jr z, jr_004_4f3c                             ; $4f5e: $28 $dc

    inc [hl]                                      ; $4f60: $34
    db $fc                                        ; $4f61: $fc
    db $f4                                        ; $4f62: $f4
    db $ec                                        ; $4f63: $ec
    call c, $327e                                 ; $4f64: $dc $7e $32
    ld c, $0e                                     ; $4f67: $0e $0e
    nop                                           ; $4f69: $00
    nop                                           ; $4f6a: $00
    rlca                                          ; $4f6b: $07
    rlca                                          ; $4f6c: $07
    inc b                                         ; $4f6d: $04
    rrca                                          ; $4f6e: $0f
    cp b                                          ; $4f6f: $b8
    dec c                                         ; $4f70: $0d
    rrca                                          ; $4f71: $0f
    rrca                                          ; $4f72: $0f
    dec c                                         ; $4f73: $0d
    rrca                                          ; $4f74: $0f
    dec c                                         ; $4f75: $0d
    rlca                                          ; $4f76: $07
    ld b, $0f                                     ; $4f77: $06 $0f
    dec bc                                        ; $4f79: $0b
    dec de                                        ; $4f7a: $1b
    inc d                                         ; $4f7b: $14
    dec e                                         ; $4f7c: $1d
    ld d, $1f                                     ; $4f7d: $16 $1f
    rra                                           ; $4f7f: $1f
    ld b, $05                                     ; $4f80: $06 $05
    rlca                                          ; $4f82: $07
    rlca                                          ; $4f83: $07
    ld [bc], a                                    ; $4f84: $02
    inc bc                                        ; $4f85: $03
    inc bc                                        ; $4f86: $03
    ld [bc], a                                    ; $4f87: $02
    inc bc                                        ; $4f88: $03
    inc bc                                        ; $4f89: $03
    ldh a, [$ffe0]                                ; $4f8a: $f0 $e0
    ld a, b                                       ; $4f8c: $78
    ldh a, [$fff8]                                ; $4f8d: $f0 $f8
    ld hl, sp+$5c                                 ; $4f8f: $f8 $5c
    db $fc                                        ; $4f91: $fc
    cp $5c                                        ; $4f92: $fe $5c
    cp $56                                        ; $4f94: $fe $56
    or $36                                        ; $4f96: $f6 $36
    ld a, [$eeea]                                 ; $4f98: $fa $ea $ee
    ld d, $de                                     ; $4f9b: $16 $de
    inc [hl]                                      ; $4f9d: $34
    db $fc                                        ; $4f9e: $fc
    db $fc                                        ; $4f9f: $fc
    ret nc                                        ; $4fa0: $d0

    or b                                          ; $4fa1: $b0
    ldh a, [$fff0]                                ; $4fa2: $f0 $f0
    and b                                         ; $4fa4: $a0
    ldh [$ffe0], a                                ; $4fa5: $e0 $e0
    and b                                         ; $4fa7: $a0
    add b                                         ; $4fa8: $80
    add e                                         ; $4fa9: $83
    inc b                                         ; $4faa: $04
    ldh [rTAC], a                                 ; $4fab: $e0 $07
    rrca                                          ; $4fad: $0f
    rrca                                          ; $4fae: $0f
    adc h                                         ; $4faf: $8c
    dec c                                         ; $4fb0: $0d
    rrca                                          ; $4fb1: $0f
    rrca                                          ; $4fb2: $0f
    dec c                                         ; $4fb3: $0d
    ccf                                           ; $4fb4: $3f
    dec a                                         ; $4fb5: $3d
    ld a, a                                       ; $4fb6: $7f
    ld b, [hl]                                    ; $4fb7: $46
    ld [hl], a                                    ; $4fb8: $77
    ld a, e                                       ; $4fb9: $7b
    dec bc                                        ; $4fba: $0b
    inc c                                         ; $4fbb: $0c
    add b                                         ; $4fbc: $80
    inc bc                                        ; $4fbd: $03
    dec b                                         ; $4fbe: $05
    xor e                                         ; $4fbf: $ab
    rlca                                          ; $4fc0: $07
    ld e, $1d                                     ; $4fc1: $1e $1d
    rra                                           ; $4fc3: $1f
    rla                                           ; $4fc4: $17
    dec c                                         ; $4fc5: $0d
    dec bc                                        ; $4fc6: $0b
    ld b, $06                                     ; $4fc7: $06 $06
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    ldh a, [$ffe0]                                ; $4fcb: $f0 $e0
    ld a, b                                       ; $4fcd: $78
    ldh a, [$fff8]                                ; $4fce: $f0 $f8

jr_004_4fd0:
    ld hl, sp+$5c                                 ; $4fd0: $f8 $5c
    db $fc                                        ; $4fd2: $fc
    cp $5c                                        ; $4fd3: $fe $5c
    cp $5e                                        ; $4fd5: $fe $5e
    rst RST_38                                    ; $4fd7: $ff
    ld sp, $e7ff                                  ; $4fd8: $31 $ff $e7
    add sp, $18                                   ; $4fdb: $e8 $18
    ret nc                                        ; $4fdd: $d0

    jr nc, jr_004_4fd0                            ; $4fde: $30 $f0

    ldh a, [$ffd0]                                ; $4fe0: $f0 $d0
    or b                                          ; $4fe2: $b0
    ldh a, [$fff0]                                ; $4fe3: $f0 $f0
    and b                                         ; $4fe5: $a0
    ldh [$ffe0], a                                ; $4fe6: $e0 $e0
    and b                                         ; $4fe8: $a0
    ldh [$ffe0], a                                ; $4fe9: $e0 $e0
    nop                                           ; $4feb: $00
    cp [hl]                                       ; $4fec: $be
    db $10                                        ; $4fed: $10
    inc bc                                        ; $4fee: $03
    ld hl, $4012                                  ; $4fef: $21 $12 $40
    ld hl, $0000                                  ; $4ff2: $21 $00 $00
    and b                                         ; $4ff5: $a0
    ld b, c                                       ; $4ff6: $41
    ld h, c                                       ; $4ff7: $61
    or d                                          ; $4ff8: $b2
    ld h, c                                       ; $4ff9: $61
    or d                                          ; $4ffa: $b2
    or e                                          ; $4ffb: $b3
    ldh [$fff7], a                                ; $4ffc: $e0 $f7
    xor b                                         ; $4ffe: $a8
    or e                                          ; $4fff: $b3
    ldh [$ffb3], a                                ; $5000: $e0 $b3
    ldh [$ff5b], a                                ; $5002: $e0 $5b
    ld [hl], h                                    ; $5004: $74
    ld e, b                                       ; $5005: $58
    ld [hl], a                                    ; $5006: $77
    ld l, $39                                     ; $5007: $2e $39
    rra                                           ; $5009: $1f
    ld e, $07                                     ; $500a: $1e $07
    rlca                                          ; $500c: $07
    and b                                         ; $500d: $a0
    ldh [$fff8], a                                ; $500e: $e0 $f8
    jr jr_004_502e                                ; $5010: $18 $1c

    db $e4                                        ; $5012: $e4
    ld b, $2a                                     ; $5013: $06 $2a
    ld h, [hl]                                    ; $5015: $66
    adc d                                         ; $5016: $8a
    add e                                         ; $5017: $83
    ld bc, $05eb                                  ; $5018: $01 $eb $05
    xor e                                         ; $501b: $ab
    dec b                                         ; $501c: $05
    dec de                                        ; $501d: $1b
    dec b                                         ; $501e: $05
    cp e                                          ; $501f: $bb
    dec b                                         ; $5020: $05
    or e                                          ; $5021: $b3
    dec c                                         ; $5022: $0d
    or $0a                                        ; $5023: $f6 $0a
    add $3a                                       ; $5025: $c6 $3a
    inc e                                         ; $5027: $1c
    db $e4                                        ; $5028: $e4
    ld hl, sp+$18                                 ; $5029: $f8 $18
    add b                                         ; $502b: $80
    add e                                         ; $502c: $83
    dec b                                         ; $502d: $05

jr_004_502e:
    ldh [$ff03], a                                ; $502e: $e0 $03
    ld [bc], a                                    ; $5030: $02
    ld [bc], a                                    ; $5031: $02
    ld [bc], a                                    ; $5032: $02
    add c                                         ; $5033: $81
    inc bc                                        ; $5034: $03
    dec b                                         ; $5035: $05
    ld [bc], a                                    ; $5036: $02
    add c                                         ; $5037: $81
    inc bc                                        ; $5038: $03
    inc bc                                        ; $5039: $03
    ld [bc], a                                    ; $503a: $02
    adc [hl]                                      ; $503b: $8e
    inc bc                                        ; $503c: $03
    ld [bc], a                                    ; $503d: $02
    inc bc                                        ; $503e: $03
    ld [bc], a                                    ; $503f: $02
    inc bc                                        ; $5040: $03
    ld [bc], a                                    ; $5041: $02
    inc bc                                        ; $5042: $03
    ld [bc], a                                    ; $5043: $02
    inc bc                                        ; $5044: $03
    ld [bc], a                                    ; $5045: $02
    inc bc                                        ; $5046: $03
    ld [bc], a                                    ; $5047: $02
    inc bc                                        ; $5048: $03
    inc bc                                        ; $5049: $03
    ld b, $00                                     ; $504a: $06 $00
    sub [hl]                                      ; $504c: $96
    ld c, $06                                     ; $504d: $0e $06
    ld a, [bc]                                    ; $504f: $0a
    ld a, [de]                                    ; $5050: $1a
    inc [hl]                                      ; $5051: $34
    inc d                                         ; $5052: $14
    jr nc, jr_004_5075                            ; $5053: $30 $20

    inc a                                         ; $5055: $3c
    jr z, jr_004_5084                             ; $5056: $28 $2c

    ld a, [hl+]                                   ; $5058: $2a
    inc a                                         ; $5059: $3c
    ld a, [hl+]                                   ; $505a: $2a
    ld a, $28                                     ; $505b: $3e $28
    ccf                                           ; $505d: $3f
    inc d                                         ; $505e: $14
    ld c, $1b                                     ; $505f: $0e $1b
    rrca                                          ; $5061: $0f
    rlca                                          ; $5062: $07
    ld a, [bc]                                    ; $5063: $0a
    nop                                           ; $5064: $00
    sub [hl]                                      ; $5065: $96
    ldh a, [$ffe0]                                ; $5066: $f0 $e0
    ldh a, [rNR23]                                ; $5068: $f0 $18
    inc e                                         ; $506a: $1c

jr_004_506b:
    ld l, b                                       ; $506b: $68
    inc c                                         ; $506c: $0c
    inc d                                         ; $506d: $14
    ld l, h                                       ; $506e: $6c
    inc d                                         ; $506f: $14
    call z, $8c14                                 ; $5070: $cc $14 $8c
    inc b                                         ; $5073: $04
    inc e                                         ; $5074: $1c

jr_004_5075:
    call nz, Call_000_08dc                        ; $5075: $c4 $dc $08
    ret nc                                        ; $5078: $d0

    jr c, jr_004_506b                             ; $5079: $38 $f0

    ldh [$ff0a], a                                ; $507b: $e0 $0a
    nop                                           ; $507d: $00
    add d                                         ; $507e: $82
    inc bc                                        ; $507f: $03
    inc bc                                        ; $5080: $03
    inc b                                         ; $5081: $04
    ld [bc], a                                    ; $5082: $02
    add c                                         ; $5083: $81

jr_004_5084:
    inc bc                                        ; $5084: $03
    inc bc                                        ; $5085: $03
    ld [bc], a                                    ; $5086: $02
    adc h                                         ; $5087: $8c
    inc bc                                        ; $5088: $03
    ld [bc], a                                    ; $5089: $02
    inc bc                                        ; $508a: $03
    ld [bc], a                                    ; $508b: $02
    inc bc                                        ; $508c: $03
    ld [bc], a                                    ; $508d: $02
    inc bc                                        ; $508e: $03
    ld [bc], a                                    ; $508f: $02
    inc bc                                        ; $5090: $03
    ld [bc], a                                    ; $5091: $02
    inc bc                                        ; $5092: $03
    inc bc                                        ; $5093: $03
    inc b                                         ; $5094: $04
    nop                                           ; $5095: $00
    nop                                           ; $5096: $00
    and e                                         ; $5097: $a3
    ccf                                           ; $5098: $3f
    ccf                                           ; $5099: $3f
    dec c                                         ; $509a: $0d
    dec bc                                        ; $509b: $0b
    ccf                                           ; $509c: $3f
    ccf                                           ; $509d: $3f
    dec c                                         ; $509e: $0d
    rrca                                          ; $509f: $0f
    rrca                                          ; $50a0: $0f
    dec c                                         ; $50a1: $0d
    rlca                                          ; $50a2: $07
    dec b                                         ; $50a3: $05
    rrca                                          ; $50a4: $0f
    ld c, $1f                                     ; $50a5: $0e $1f
    dec de                                        ; $50a7: $1b
    dec sp                                        ; $50a8: $3b
    inc [hl]                                      ; $50a9: $34
    dec a                                         ; $50aa: $3d
    ld l, $37                                     ; $50ab: $2e $37
    scf                                           ; $50ad: $37
    ld b, $05                                     ; $50ae: $06 $05
    rlca                                          ; $50b0: $07
    rlca                                          ; $50b1: $07
    ld [bc], a                                    ; $50b2: $02
    inc bc                                        ; $50b3: $03
    inc bc                                        ; $50b4: $03
    ld [bc], a                                    ; $50b5: $02
    ld bc, $f001                                  ; $50b6: $01 $01 $f0
    ldh a, [$ff78]                                ; $50b9: $f0 $78
    inc bc                                        ; $50bb: $03
    ld hl, sp-$4a                                 ; $50bc: $f8 $b6
    ld e, b                                       ; $50be: $58
    ld hl, sp-$08                                 ; $50bf: $f8 $f8
    ld e, b                                       ; $50c1: $58
    ldh a, [$ff50]                                ; $50c2: $f0 $50
    ld hl, sp+$38                                 ; $50c4: $f8 $38
    db $fc                                        ; $50c6: $fc
    db $ec                                        ; $50c7: $ec
    xor $16                                       ; $50c8: $ee $16
    sbc $3a                                       ; $50ca: $de $3a
    or $f6                                        ; $50cc: $f6 $f6
    ret nc                                        ; $50ce: $d0

    or b                                          ; $50cf: $b0
    ldh a, [$fff0]                                ; $50d0: $f0 $f0
    and b                                         ; $50d2: $a0
    ldh [$ffe0], a                                ; $50d3: $e0 $e0
    and b                                         ; $50d5: $a0
    ret nz                                        ; $50d6: $c0

    ret nz                                        ; $50d7: $c0

    ccf                                           ; $50d8: $3f
    ccf                                           ; $50d9: $3f
    dec c                                         ; $50da: $0d
    dec bc                                        ; $50db: $0b
    ccf                                           ; $50dc: $3f
    ccf                                           ; $50dd: $3f
    dec c                                         ; $50de: $0d
    rrca                                          ; $50df: $0f
    ccf                                           ; $50e0: $3f
    dec a                                         ; $50e1: $3d
    ccf                                           ; $50e2: $3f
    dec l                                         ; $50e3: $2d
    ccf                                           ; $50e4: $3f
    ld [hl], $17                                  ; $50e5: $36 $17
    dec de                                        ; $50e7: $1b
    dec bc                                        ; $50e8: $0b
    inc c                                         ; $50e9: $0c
    dec b                                         ; $50ea: $05
    ld b, $0f                                     ; $50eb: $06 $0f
    rrca                                          ; $50ed: $0f
    dec e                                         ; $50ee: $1d
    dec de                                        ; $50ef: $1b
    ld a, $26                                     ; $50f0: $3e $26
    jr c, jr_004_512c                             ; $50f2: $38 $38

    inc b                                         ; $50f4: $04
    nop                                           ; $50f5: $00
    add e                                         ; $50f6: $83
    ldh a, [$fff0]                                ; $50f7: $f0 $f0
    ld a, b                                       ; $50f9: $78
    inc bc                                        ; $50fa: $03
    ld hl, sp-$6a                                 ; $50fb: $f8 $96
    ld e, b                                       ; $50fd: $58
    ld hl, sp-$02                                 ; $50fe: $f8 $fe
    ld e, [hl]                                    ; $5100: $5e
    cp $5a                                        ; $5101: $fe $5a
    cp $36                                        ; $5103: $fe $36
    db $f4                                        ; $5105: $f4
    db $ec                                        ; $5106: $ec
    add sp, $18                                   ; $5107: $e8 $18
    ret nc                                        ; $5109: $d0

    jr nc, @-$06                                  ; $510a: $30 $f8

    ld hl, sp-$14                                 ; $510c: $f8 $ec
    call c, $323e                                 ; $510e: $dc $3e $32
    ld c, $0e                                     ; $5111: $0e $0e
    inc b                                         ; $5113: $04
    nop                                           ; $5114: $00
    sbc b                                         ; $5115: $98
    ld [hl], a                                    ; $5116: $77
    ld h, e                                       ; $5117: $63
    or l                                          ; $5118: $b5
    sub h                                         ; $5119: $94
    cp l                                          ; $511a: $bd
    sub h                                         ; $511b: $94
    db $db                                        ; $511c: $db
    ld c, c                                       ; $511d: $49
    ld e, e                                       ; $511e: $5b
    ld c, c                                       ; $511f: $49
    ld a, a                                       ; $5120: $7f
    ld c, [hl]                                    ; $5121: $4e
    rst RST_10                                    ; $5122: $d7
    sub c                                         ; $5123: $91
    cp a                                          ; $5124: $bf
    sub l                                         ; $5125: $95
    cp e                                          ; $5126: $bb
    sbc l                                         ; $5127: $9d
    ld [hl], a                                    ; $5128: $77
    ld c, c                                       ; $5129: $49
    ld a, a                                       ; $512a: $7f
    ld b, e                                       ; $512b: $43

jr_004_512c:
    ccf                                           ; $512c: $3f
    ld a, $80                                     ; $512d: $3e $80
    add e                                         ; $512f: $83
    dec b                                         ; $5130: $05
    inc bc                                        ; $5131: $03
    ld bc, $0101                                  ; $5132: $01 $01 $01
    ld hl, sp-$7f                                 ; $5135: $f8 $81
    cp h                                          ; $5137: $bc
    inc bc                                        ; $5138: $03
    db $fc                                        ; $5139: $fc
    or d                                          ; $513a: $b2
    xor h                                         ; $513b: $ac
    db $fc                                        ; $513c: $fc
    db $fc                                        ; $513d: $fc
    xor h                                         ; $513e: $ac
    ld hl, sp-$58                                 ; $513f: $f8 $a8
    db $fc                                        ; $5141: $fc
    inc e                                         ; $5142: $1c
    db $fc                                        ; $5143: $fc
    db $f4                                        ; $5144: $f4
    or $0a                                        ; $5145: $f6 $0a
    xor $1a                                       ; $5147: $ee $1a
    cp $fe                                        ; $5149: $fe $fe
    ld l, b                                       ; $514b: $68
    ret c                                         ; $514c: $d8

    ld hl, sp-$08                                 ; $514d: $f8 $f8
    ld d, b                                       ; $514f: $50
    ldh a, [$fff0]                                ; $5150: $f0 $f0
    ld d, b                                       ; $5152: $50
    ldh a, [$fff0]                                ; $5153: $f0 $f0
    rra                                           ; $5155: $1f
    rra                                           ; $5156: $1f
    ld b, $05                                     ; $5157: $06 $05
    rra                                           ; $5159: $1f
    rra                                           ; $515a: $1f
    ld b, $07                                     ; $515b: $06 $07
    rlca                                          ; $515d: $07
    ld b, $17                                     ; $515e: $06 $17
    ld d, $2b                                     ; $5160: $16 $2b
    dec hl                                        ; $5162: $2b
    ccf                                           ; $5163: $3f
    dec hl                                        ; $5164: $2b
    rra                                           ; $5165: $1f
    ld d, $3e                                     ; $5166: $16 $3e
    dec hl                                        ; $5168: $2b
    ccf                                           ; $5169: $3f
    inc hl                                        ; $516a: $23
    rra                                           ; $516b: $1f
    ld e, $80                                     ; $516c: $1e $80
    add e                                         ; $516e: $83
    dec b                                         ; $516f: $05
    inc bc                                        ; $5170: $03
    ld bc, $0101                                  ; $5171: $01 $01 $01
    ld hl, sp-$7f                                 ; $5174: $f8 $81
    cp h                                          ; $5176: $bc
    inc bc                                        ; $5177: $03
    db $fc                                        ; $5178: $fc
    sbc d                                         ; $5179: $9a
    xor h                                         ; $517a: $ac
    db $fc                                        ; $517b: $fc
    db $fc                                        ; $517c: $fc
    xor h                                         ; $517d: $ac
    ld hl, sp-$58                                 ; $517e: $f8 $a8
    db $fc                                        ; $5180: $fc
    inc e                                         ; $5181: $1c
    db $fc                                        ; $5182: $fc
    db $f4                                        ; $5183: $f4
    or $0a                                        ; $5184: $f6 $0a
    xor $1a                                       ; $5186: $ee $1a
    cp $fe                                        ; $5188: $fe $fe
    ld l, b                                       ; $518a: $68
    ret c                                         ; $518b: $d8

    ld hl, sp-$08                                 ; $518c: $f8 $f8
    ld d, b                                       ; $518e: $50
    ldh a, [$fff0]                                ; $518f: $f0 $f0
    ld d, b                                       ; $5191: $50
    ldh a, [$fff0]                                ; $5192: $f0 $f0
    nop                                           ; $5194: $00
    and e                                         ; $5195: $a3
    rlca                                          ; $5196: $07
    rlca                                          ; $5197: $07
    dec c                                         ; $5198: $0d
    dec bc                                        ; $5199: $0b
    rrca                                          ; $519a: $0f
    rrca                                          ; $519b: $0f
    dec c                                         ; $519c: $0d
    rrca                                          ; $519d: $0f
    rrca                                          ; $519e: $0f
    dec c                                         ; $519f: $0d
    rlca                                          ; $51a0: $07
    dec b                                         ; $51a1: $05
    rrca                                          ; $51a2: $0f
    ld c, $17                                     ; $51a3: $0e $17
    dec de                                        ; $51a5: $1b
    dec sp                                        ; $51a6: $3b
    inc [hl]                                      ; $51a7: $34
    dec a                                         ; $51a8: $3d
    ld l, $37                                     ; $51a9: $2e $37
    scf                                           ; $51ab: $37
    ld b, $05                                     ; $51ac: $06 $05
    rlca                                          ; $51ae: $07
    rlca                                          ; $51af: $07
    ld [bc], a                                    ; $51b0: $02
    inc bc                                        ; $51b1: $03
    inc bc                                        ; $51b2: $03
    ld [bc], a                                    ; $51b3: $02
    ld bc, $e001                                  ; $51b4: $01 $01 $e0
    ldh a, [rSVBK]                                ; $51b7: $f0 $70
    inc bc                                        ; $51b9: $03
    ld hl, sp-$4a                                 ; $51ba: $f8 $b6
    ld e, [hl]                                    ; $51bc: $5e
    cp $ff                                        ; $51bd: $fe $ff
    ld e, a                                       ; $51bf: $5f
    rst RST_30                                    ; $51c0: $f7
    ld d, a                                       ; $51c1: $57
    rst RST_38                                    ; $51c2: $ff
    dec sp                                        ; $51c3: $3b
    push af                                       ; $51c4: $f5
    db $ed                                        ; $51c5: $ed
    rst RST_28                                    ; $51c6: $ef
    rla                                           ; $51c7: $17
    rst RST_18                                    ; $51c8: $df
    ld a, [hl-]                                   ; $51c9: $3a
    or $f6                                        ; $51ca: $f6 $f6
    ret nc                                        ; $51cc: $d0

    or b                                          ; $51cd: $b0
    ldh a, [$fff0]                                ; $51ce: $f0 $f0
    and b                                         ; $51d0: $a0
    ldh [$ffe0], a                                ; $51d1: $e0 $e0
    and b                                         ; $51d3: $a0
    ret nz                                        ; $51d4: $c0

    ret nz                                        ; $51d5: $c0

    rlca                                          ; $51d6: $07
    rlca                                          ; $51d7: $07
    dec c                                         ; $51d8: $0d
    dec bc                                        ; $51d9: $0b
    rrca                                          ; $51da: $0f
    rrca                                          ; $51db: $0f
    dec c                                         ; $51dc: $0d
    rrca                                          ; $51dd: $0f
    ccf                                           ; $51de: $3f
    dec a                                         ; $51df: $3d
    ccf                                           ; $51e0: $3f
    dec l                                         ; $51e1: $2d
    ccf                                           ; $51e2: $3f
    ld [hl], $17                                  ; $51e3: $36 $17
    dec de                                        ; $51e5: $1b
    dec bc                                        ; $51e6: $0b
    inc c                                         ; $51e7: $0c
    dec b                                         ; $51e8: $05
    ld b, $0f                                     ; $51e9: $06 $0f
    rrca                                          ; $51eb: $0f
    dec e                                         ; $51ec: $1d
    dec de                                        ; $51ed: $1b
    ld a, $26                                     ; $51ee: $3e $26
    jr c, jr_004_522a                             ; $51f0: $38 $38

    inc b                                         ; $51f2: $04
    nop                                           ; $51f3: $00
    add e                                         ; $51f4: $83
    ldh [$fff0], a                                ; $51f5: $e0 $f0
    ld [hl], b                                    ; $51f7: $70
    inc bc                                        ; $51f8: $03
    ld hl, sp-$6a                                 ; $51f9: $f8 $96
    ld e, [hl]                                    ; $51fb: $5e
    cp $ff                                        ; $51fc: $fe $ff
    ld e, l                                       ; $51fe: $5d
    rst RST_38                                    ; $51ff: $ff
    ld e, e                                       ; $5200: $5b
    rst RST_38                                    ; $5201: $ff

jr_004_5202:
    scf                                           ; $5202: $37
    push af                                       ; $5203: $f5
    db $ed                                        ; $5204: $ed
    jp hl                                         ; $5205: $e9


    add hl, de                                    ; $5206: $19
    pop de                                        ; $5207: $d1
    jr nc, jr_004_5202                            ; $5208: $30 $f8

    ld hl, sp-$14                                 ; $520a: $f8 $ec
    call c, $323e                                 ; $520c: $dc $3e $32
    ld c, $0e                                     ; $520f: $0e $0e
    inc b                                         ; $5211: $04
    nop                                           ; $5212: $00
    jp c, Jump_004_6377                           ; $5213: $da $77 $63

    or l                                          ; $5216: $b5
    sub h                                         ; $5217: $94
    cp l                                          ; $5218: $bd
    sub h                                         ; $5219: $94
    db $db                                        ; $521a: $db
    ld c, c                                       ; $521b: $49
    ld e, e                                       ; $521c: $5b
    ld c, c                                       ; $521d: $49
    ld a, a                                       ; $521e: $7f
    ld c, [hl]                                    ; $521f: $4e
    rst RST_10                                    ; $5220: $d7
    sub c                                         ; $5221: $91
    cp a                                          ; $5222: $bf
    sub l                                         ; $5223: $95
    cp e                                          ; $5224: $bb
    sbc l                                         ; $5225: $9d
    ld [hl], a                                    ; $5226: $77
    ld c, c                                       ; $5227: $49
    ld a, a                                       ; $5228: $7f
    ld b, e                                       ; $5229: $43

jr_004_522a:
    ld a, $3d                                     ; $522a: $3e $3d
    rlca                                          ; $522c: $07
    rlca                                          ; $522d: $07
    ld [bc], a                                    ; $522e: $02
    inc bc                                        ; $522f: $03
    inc bc                                        ; $5230: $03
    ld [bc], a                                    ; $5231: $02
    inc bc                                        ; $5232: $03
    inc bc                                        ; $5233: $03
    ld hl, sp-$10                                 ; $5234: $f8 $f0
    cp h                                          ; $5236: $bc
    ld hl, sp-$04                                 ; $5237: $f8 $fc
    db $fc                                        ; $5239: $fc
    xor [hl]                                      ; $523a: $ae
    cp $ff                                        ; $523b: $fe $ff
    xor [hl]                                      ; $523d: $ae
    rst RST_38                                    ; $523e: $ff
    xor e                                         ; $523f: $ab
    ei                                            ; $5240: $fb
    dec de                                        ; $5241: $1b
    db $fd                                        ; $5242: $fd
    push af                                       ; $5243: $f5
    rst RST_30                                    ; $5244: $f7
    dec bc                                        ; $5245: $0b
    rst RST_28                                    ; $5246: $ef
    ld a, [de]                                    ; $5247: $1a
    cp $fe                                        ; $5248: $fe $fe
    ret nc                                        ; $524a: $d0

    or b                                          ; $524b: $b0
    ldh a, [$fff0]                                ; $524c: $f0 $f0
    and b                                         ; $524e: $a0
    ldh [$ffe0], a                                ; $524f: $e0 $e0
    and b                                         ; $5251: $a0
    ldh [$ffe0], a                                ; $5252: $e0 $e0
    ld [hl], a                                    ; $5254: $77
    ld h, e                                       ; $5255: $63
    or l                                          ; $5256: $b5
    sub h                                         ; $5257: $94
    cp l                                          ; $5258: $bd
    sub h                                         ; $5259: $94
    db $db                                        ; $525a: $db
    ld c, c                                       ; $525b: $49
    ld e, e                                       ; $525c: $5b
    ld c, c                                       ; $525d: $49
    ld a, a                                       ; $525e: $7f
    ld c, [hl]                                    ; $525f: $4e
    rst RST_10                                    ; $5260: $d7
    sub c                                         ; $5261: $91
    cp a                                          ; $5262: $bf
    sub l                                         ; $5263: $95
    cp e                                          ; $5264: $bb
    sbc l                                         ; $5265: $9d
    ld [hl], a                                    ; $5266: $77
    ld c, c                                       ; $5267: $49
    ld a, a                                       ; $5268: $7f
    ld b, e                                       ; $5269: $43
    dec a                                         ; $526a: $3d
    dec a                                         ; $526b: $3d
    ld bc, $0601                                  ; $526c: $01 $01 $06

jr_004_526f:
    nop                                           ; $526f: $00
    and b                                         ; $5270: $a0
    ld hl, sp-$10                                 ; $5271: $f8 $f0
    cp h                                          ; $5273: $bc
    ld hl, sp-$04                                 ; $5274: $f8 $fc
    db $fc                                        ; $5276: $fc
    xor [hl]                                      ; $5277: $ae
    cp $ff                                        ; $5278: $fe $ff
    xor [hl]                                      ; $527a: $ae
    rst RST_38                                    ; $527b: $ff
    xor e                                         ; $527c: $ab
    ei                                            ; $527d: $fb
    dec de                                        ; $527e: $1b
    db $fd                                        ; $527f: $fd
    push af                                       ; $5280: $f5
    rst RST_30                                    ; $5281: $f7
    dec bc                                        ; $5282: $0b
    rst RST_28                                    ; $5283: $ef
    ld a, [de]                                    ; $5284: $1a
    cp $fe                                        ; $5285: $fe $fe
    or h                                          ; $5287: $b4
    ld l, h                                       ; $5288: $6c
    db $fc                                        ; $5289: $fc
    db $fc                                        ; $528a: $fc
    xor b                                         ; $528b: $a8
    ld hl, sp-$08                                 ; $528c: $f8 $f8
    xor b                                         ; $528e: $a8
    ld hl, sp-$08                                 ; $528f: $f8 $f8
    nop                                           ; $5291: $00
    inc c                                         ; $5292: $0c
    nop                                           ; $5293: $00
    adc a                                         ; $5294: $8f
    ld b, $00                                     ; $5295: $06 $00
    ld [$0300], sp                                ; $5297: $08 $00 $03
    nop                                           ; $529a: $00
    inc b                                         ; $529b: $04
    inc bc                                        ; $529c: $03
    inc b                                         ; $529d: $04
    inc bc                                        ; $529e: $03
    ld [bc], a                                    ; $529f: $02
    ld bc, $0009                                  ; $52a0: $01 $09 $00
    inc b                                         ; $52a3: $04
    inc de                                        ; $52a4: $13
    nop                                           ; $52a5: $00
    adc l                                         ; $52a6: $8d
    stop                                          ; $52a7: $10 $00
    ret z                                         ; $52a9: $c8

    nop                                           ; $52aa: $00
    jr z, @-$3e                                   ; $52ab: $28 $c0

    jr nz, jr_004_526f                            ; $52ad: $20 $c0

    ld b, b                                       ; $52af: $40
    add b                                         ; $52b0: $80
    adc b                                         ; $52b1: $88
    nop                                           ; $52b2: $00
    db $10                                        ; $52b3: $10
    add hl, bc                                    ; $52b4: $09
    nop                                           ; $52b5: $00
    sub a                                         ; $52b6: $97
    stop                                          ; $52b7: $10 $00
    inc hl                                        ; $52b9: $23
    nop                                           ; $52ba: $00
    inc h                                         ; $52bb: $24
    inc bc                                        ; $52bc: $03
    add hl, bc                                    ; $52bd: $09
    ld b, $08                                     ; $52be: $06 $08
    inc b                                         ; $52c0: $04
    add hl, de                                    ; $52c1: $19
    inc b                                         ; $52c2: $04
    ld de, $110c                                  ; $52c3: $11 $0c $11
    ld c, $08                                     ; $52c6: $0e $08
    rlca                                          ; $52c8: $07
    ld h, $01                                     ; $52c9: $26 $01
    inc hl                                        ; $52cb: $23
    nop                                           ; $52cc: $00
    db $10                                        ; $52cd: $10
    add hl, bc                                    ; $52ce: $09
    nop                                           ; $52cf: $00
    sub a                                         ; $52d0: $97
    ld [$c400], sp                                ; $52d1: $08 $00 $c4
    nop                                           ; $52d4: $00
    ld h, d                                       ; $52d5: $62
    add b                                         ; $52d6: $80
    ld [hl+], a                                   ; $52d7: $22
    ret nz                                        ; $52d8: $c0

    cp b                                          ; $52d9: $b8
    ld b, b                                       ; $52da: $40
    adc h                                         ; $52db: $8c
    ld [hl], b                                    ; $52dc: $70
    and h                                         ; $52dd: $a4
    jr jr_004_5304                                ; $52de: $18 $24

    jr jr_004_52ee                                ; $52e0: $18 $0c

    ldh a, [rSVBK]                                ; $52e2: $f0 $70
    add b                                         ; $52e4: $80
    jp nz, $0c00                                  ; $52e5: $c2 $00 $0c

    dec b                                         ; $52e8: $05
    nop                                           ; $52e9: $00
    ret nz                                        ; $52ea: $c0

    ld h, e                                       ; $52eb: $63
    nop                                           ; $52ec: $00
    add [hl]                                      ; $52ed: $86

jr_004_52ee:
    ld bc, $033c                                  ; $52ee: $01 $3c $03
    ld h, c                                       ; $52f1: $61
    ld e, $4d                                     ; $52f2: $1e $4d
    ld [hl-], a                                   ; $52f4: $32
    ld c, [hl]                                    ; $52f5: $4e
    jr nc, @+$6c                                  ; $52f6: $30 $6a

    db $10                                        ; $52f8: $10
    ld a, [hl+]                                   ; $52f9: $2a
    db $10                                        ; $52fa: $10
    ld l, e                                       ; $52fb: $6b
    db $10                                        ; $52fc: $10
    ld c, h                                       ; $52fd: $4c
    ld sp, $324d                                  ; $52fe: $31 $4d $32
    ld h, c                                       ; $5301: $61
    ld e, $3c                                     ; $5302: $1e $3c

jr_004_5304:
    inc bc                                        ; $5304: $03
    add [hl]                                      ; $5305: $86
    ld bc, $00e3                                  ; $5306: $01 $e3 $00
    jr c, jr_004_530b                             ; $5309: $38 $00

jr_004_530b:
    add $00                                       ; $530b: $c6 $00
    ld [hl], e                                    ; $530d: $73
    add b                                         ; $530e: $80
    ld de, $d8e0                                  ; $530f: $11 $e0 $d8
    jr nz, @+$50                                  ; $5312: $20 $4e

    jr nc, jr_004_5378                            ; $5314: $30 $62

    inc e                                         ; $5316: $1c
    sbc e                                         ; $5317: $9b
    inc h                                         ; $5318: $24
    xor c                                         ; $5319: $a9
    ld b, $69                                     ; $531a: $06 $69
    ld b, $db                                     ; $531c: $06 $db
    inc b                                         ; $531e: $04
    ld [hl+], a                                   ; $531f: $22
    inc e                                         ; $5320: $1c
    db $ec                                        ; $5321: $ec
    db $10                                        ; $5322: $10
    ret                                           ; $5323: $c9


    jr nc, jr_004_533f                            ; $5324: $30 $19

    ldh [$ffe3], a                                ; $5326: $e0 $e3
    nop                                           ; $5328: $00
    ld c, $00                                     ; $5329: $0e $00
    nop                                           ; $532b: $00
    and e                                         ; $532c: $a3
    ccf                                           ; $532d: $3f
    ccf                                           ; $532e: $3f
    dec c                                         ; $532f: $0d
    dec bc                                        ; $5330: $0b
    ccf                                           ; $5331: $3f
    ccf                                           ; $5332: $3f
    dec c                                         ; $5333: $0d
    rrca                                          ; $5334: $0f
    rrca                                          ; $5335: $0f
    dec c                                         ; $5336: $0d
    rlca                                          ; $5337: $07
    dec b                                         ; $5338: $05
    rrca                                          ; $5339: $0f
    ld c, $1f                                     ; $533a: $0e $1f
    dec de                                        ; $533c: $1b
    dec sp                                        ; $533d: $3b
    inc [hl]                                      ; $533e: $34

jr_004_533f:
    dec a                                         ; $533f: $3d
    ld l, $37                                     ; $5340: $2e $37
    scf                                           ; $5342: $37
    ld b, $05                                     ; $5343: $06 $05
    rlca                                          ; $5345: $07
    rlca                                          ; $5346: $07
    ld [bc], a                                    ; $5347: $02
    inc bc                                        ; $5348: $03
    inc bc                                        ; $5349: $03
    ld [bc], a                                    ; $534a: $02
    ld bc, $f001                                  ; $534b: $01 $01 $f0
    ldh a, [$ff78]                                ; $534e: $f0 $78
    inc bc                                        ; $5350: $03
    ld hl, sp-$54                                 ; $5351: $f8 $ac
    ld e, b                                       ; $5353: $58
    ld hl, sp-$08                                 ; $5354: $f8 $f8
    ld e, b                                       ; $5356: $58
    ldh a, [$ff50]                                ; $5357: $f0 $50
    ld hl, sp+$38                                 ; $5359: $f8 $38
    db $fc                                        ; $535b: $fc
    db $ec                                        ; $535c: $ec
    xor $16                                       ; $535d: $ee $16
    sbc $3a                                       ; $535f: $de $3a
    or $f6                                        ; $5361: $f6 $f6
    ret nc                                        ; $5363: $d0

    or b                                          ; $5364: $b0
    ldh a, [$fff0]                                ; $5365: $f0 $f0
    and b                                         ; $5367: $a0
    ldh [$ffe0], a                                ; $5368: $e0 $e0
    and b                                         ; $536a: $a0
    ret nz                                        ; $536b: $c0

    ret nz                                        ; $536c: $c0

    ccf                                           ; $536d: $3f
    ccf                                           ; $536e: $3f
    dec c                                         ; $536f: $0d
    dec bc                                        ; $5370: $0b
    ccf                                           ; $5371: $3f
    ccf                                           ; $5372: $3f
    dec c                                         ; $5373: $0d
    rrca                                          ; $5374: $0f
    rrca                                          ; $5375: $0f
    dec c                                         ; $5376: $0d
    rlca                                          ; $5377: $07

jr_004_5378:
    dec b                                         ; $5378: $05
    ld a, a                                       ; $5379: $7f
    ld a, [hl]                                    ; $537a: $7e
    ld a, a                                       ; $537b: $7f
    ld b, e                                       ; $537c: $43
    dec sp                                        ; $537d: $3b
    inc a                                         ; $537e: $3c
    add b                                         ; $537f: $80
    inc bc                                        ; $5380: $03
    dec b                                         ; $5381: $05
    adc [hl]                                      ; $5382: $8e
    rlca                                          ; $5383: $07
    ld b, $05                                     ; $5384: $06 $05
    rlca                                          ; $5386: $07
    rlca                                          ; $5387: $07
    ld [bc], a                                    ; $5388: $02
    inc bc                                        ; $5389: $03
    inc bc                                        ; $538a: $03
    ld [bc], a                                    ; $538b: $02
    inc bc                                        ; $538c: $03
    inc bc                                        ; $538d: $03
    ldh a, [$fff0]                                ; $538e: $f0 $f0
    ld a, b                                       ; $5390: $78
    inc bc                                        ; $5391: $03
    ld hl, sp-$54                                 ; $5392: $f8 $ac
    ld e, b                                       ; $5394: $58
    ld hl, sp-$08                                 ; $5395: $f8 $f8
    ld e, b                                       ; $5397: $58
    ldh a, [$ff50]                                ; $5398: $f0 $50
    ld hl, sp+$38                                 ; $539a: $f8 $38
    db $fc                                        ; $539c: $fc
    db $ec                                        ; $539d: $ec
    db $ec                                        ; $539e: $ec
    inc d                                         ; $539f: $14
    call c, $fc34                                 ; $53a0: $dc $34 $fc
    db $fc                                        ; $53a3: $fc
    ret nc                                        ; $53a4: $d0

    or b                                          ; $53a5: $b0
    ldh a, [$fff0]                                ; $53a6: $f0 $f0
    and b                                         ; $53a8: $a0
    ldh [$ffe0], a                                ; $53a9: $e0 $e0
    and b                                         ; $53ab: $a0
    ldh [$ffe0], a                                ; $53ac: $e0 $e0
    ccf                                           ; $53ae: $3f
    ccf                                           ; $53af: $3f
    dec c                                         ; $53b0: $0d
    dec bc                                        ; $53b1: $0b
    ccf                                           ; $53b2: $3f
    ccf                                           ; $53b3: $3f
    dec c                                         ; $53b4: $0d
    rrca                                          ; $53b5: $0f
    ccf                                           ; $53b6: $3f
    dec a                                         ; $53b7: $3d
    ccf                                           ; $53b8: $3f
    dec l                                         ; $53b9: $2d
    rra                                           ; $53ba: $1f
    ld d, $0f                                     ; $53bb: $16 $0f
    dec bc                                        ; $53bd: $0b
    dec bc                                        ; $53be: $0b
    inc c                                         ; $53bf: $0c
    add b                                         ; $53c0: $80
    inc bc                                        ; $53c1: $03
    dec b                                         ; $53c2: $05
    add a                                         ; $53c3: $87
    rlca                                          ; $53c4: $07
    inc bc                                        ; $53c5: $03
    ld [bc], a                                    ; $53c6: $02
    inc bc                                        ; $53c7: $03
    ld [bc], a                                    ; $53c8: $02
    inc bc                                        ; $53c9: $03
    inc bc                                        ; $53ca: $03
    inc b                                         ; $53cb: $04
    nop                                           ; $53cc: $00
    add e                                         ; $53cd: $83
    ldh a, [$fff0]                                ; $53ce: $f0 $f0
    ld a, b                                       ; $53d0: $78
    inc bc                                        ; $53d1: $03
    ld hl, sp-$43                                 ; $53d2: $f8 $bd
    ld e, b                                       ; $53d4: $58
    ld hl, sp-$08                                 ; $53d5: $f8 $f8
    ld e, b                                       ; $53d7: $58
    ldh a, [$ff50]                                ; $53d8: $f0 $50
    ld hl, sp+$38                                 ; $53da: $f8 $38
    ld hl, sp-$18                                 ; $53dc: $f8 $e8
    db $ec                                        ; $53de: $ec
    inc d                                         ; $53df: $14
    call c, $fc34                                 ; $53e0: $dc $34 $fc
    db $fc                                        ; $53e3: $fc
    ret nc                                        ; $53e4: $d0

    or b                                          ; $53e5: $b0
    ldh a, [$fff0]                                ; $53e6: $f0 $f0
    and b                                         ; $53e8: $a0
    ldh [$ffe0], a                                ; $53e9: $e0 $e0
    and b                                         ; $53eb: $a0
    ldh [$ffe0], a                                ; $53ec: $e0 $e0
    ccf                                           ; $53ee: $3f
    ccf                                           ; $53ef: $3f
    dec c                                         ; $53f0: $0d
    dec bc                                        ; $53f1: $0b
    ccf                                           ; $53f2: $3f
    ccf                                           ; $53f3: $3f
    dec c                                         ; $53f4: $0d
    rrca                                          ; $53f5: $0f
    rrca                                          ; $53f6: $0f
    dec c                                         ; $53f7: $0d
    rlca                                          ; $53f8: $07
    dec b                                         ; $53f9: $05
    rrca                                          ; $53fa: $0f
    ld c, $3f                                     ; $53fb: $0e $3f
    ld [hl], e                                    ; $53fd: $73
    ld a, e                                       ; $53fe: $7b
    ld c, h                                       ; $53ff: $4c
    dec [hl]                                      ; $5400: $35
    ld a, $07                                     ; $5401: $3e $07
    rlca                                          ; $5403: $07
    ld a, [bc]                                    ; $5404: $0a
    dec c                                         ; $5405: $0d
    rra                                           ; $5406: $1f
    rra                                           ; $5407: $1f
    ld h, $3c                                     ; $5408: $26 $3c
    ld a, b                                       ; $540a: $78
    ld e, b                                       ; $540b: $58
    ld h, b                                       ; $540c: $60
    ld h, b                                       ; $540d: $60
    ldh a, [$fff0]                                ; $540e: $f0 $f0
    ld a, b                                       ; $5410: $78
    inc bc                                        ; $5411: $03
    ld hl, sp-$66                                 ; $5412: $f8 $9a
    ld e, b                                       ; $5414: $58
    ld hl, sp-$08                                 ; $5415: $f8 $f8
    ld e, b                                       ; $5417: $58
    ldh a, [$ff50]                                ; $5418: $f0 $50
    db $fc                                        ; $541a: $fc
    inc a                                         ; $541b: $3c
    cp $e2                                        ; $541c: $fe $e2
    rst RST_28                                    ; $541e: $ef
    dec e                                         ; $541f: $1d
    rst RST_10                                    ; $5420: $d7
    scf                                           ; $5421: $37
    ldh a, [$fff0]                                ; $5422: $f0 $f0
    ret nc                                        ; $5424: $d0

    or b                                          ; $5425: $b0
    ldh a, [$ffe0]                                ; $5426: $f0 $e0
    ld hl, sp-$68                                 ; $5428: $f8 $98
    ld hl, sp+$68                                 ; $542a: $f8 $68
    jr jr_004_5446                                ; $542c: $18 $18

    nop                                           ; $542e: $00
    and e                                         ; $542f: $a3
    rlca                                          ; $5430: $07
    rlca                                          ; $5431: $07
    dec c                                         ; $5432: $0d
    dec bc                                        ; $5433: $0b
    rrca                                          ; $5434: $0f
    rrca                                          ; $5435: $0f
    dec c                                         ; $5436: $0d
    rrca                                          ; $5437: $0f
    rrca                                          ; $5438: $0f
    dec c                                         ; $5439: $0d
    rlca                                          ; $543a: $07
    dec b                                         ; $543b: $05
    rrca                                          ; $543c: $0f
    ld c, $17                                     ; $543d: $0e $17
    dec de                                        ; $543f: $1b
    dec sp                                        ; $5440: $3b
    inc [hl]                                      ; $5441: $34
    dec a                                         ; $5442: $3d
    ld l, $37                                     ; $5443: $2e $37
    scf                                           ; $5445: $37

jr_004_5446:
    ld b, $05                                     ; $5446: $06 $05
    rlca                                          ; $5448: $07
    rlca                                          ; $5449: $07
    ld [bc], a                                    ; $544a: $02
    inc bc                                        ; $544b: $03
    inc bc                                        ; $544c: $03
    ld [bc], a                                    ; $544d: $02
    ld bc, $e001                                  ; $544e: $01 $01 $e0
    ldh a, [rSVBK]                                ; $5451: $f0 $70
    inc bc                                        ; $5453: $03
    ld hl, sp-$54                                 ; $5454: $f8 $ac
    ld e, [hl]                                    ; $5456: $5e
    cp $ff                                        ; $5457: $fe $ff
    ld e, a                                       ; $5459: $5f
    rst RST_30                                    ; $545a: $f7
    ld d, a                                       ; $545b: $57
    rst RST_38                                    ; $545c: $ff
    dec sp                                        ; $545d: $3b
    push af                                       ; $545e: $f5
    db $ed                                        ; $545f: $ed
    rst RST_28                                    ; $5460: $ef
    rla                                           ; $5461: $17
    rst RST_18                                    ; $5462: $df
    ld a, [hl-]                                   ; $5463: $3a
    or $f6                                        ; $5464: $f6 $f6
    ret nc                                        ; $5466: $d0

    or b                                          ; $5467: $b0
    ldh a, [$fff0]                                ; $5468: $f0 $f0
    and b                                         ; $546a: $a0
    ldh [$ffe0], a                                ; $546b: $e0 $e0
    and b                                         ; $546d: $a0
    ret nz                                        ; $546e: $c0

    ret nz                                        ; $546f: $c0

    rlca                                          ; $5470: $07
    rlca                                          ; $5471: $07
    ld c, $0d                                     ; $5472: $0e $0d
    rrca                                          ; $5474: $0f
    rrca                                          ; $5475: $0f
    dec c                                         ; $5476: $0d
    rrca                                          ; $5477: $0f
    rrca                                          ; $5478: $0f
    dec c                                         ; $5479: $0d
    rrca                                          ; $547a: $0f
    dec c                                         ; $547b: $0d
    ld a, a                                       ; $547c: $7f
    ld a, [hl]                                    ; $547d: $7e
    ld a, a                                       ; $547e: $7f
    ld b, e                                       ; $547f: $43
    dec sp                                        ; $5480: $3b
    inc a                                         ; $5481: $3c
    add b                                         ; $5482: $80
    inc bc                                        ; $5483: $03
    dec b                                         ; $5484: $05
    xor c                                         ; $5485: $a9
    rlca                                          ; $5486: $07
    ld b, $05                                     ; $5487: $06 $05
    rlca                                          ; $5489: $07
    rlca                                          ; $548a: $07
    ld [bc], a                                    ; $548b: $02
    inc bc                                        ; $548c: $03
    inc bc                                        ; $548d: $03
    ld [bc], a                                    ; $548e: $02
    inc bc                                        ; $548f: $03
    inc bc                                        ; $5490: $03
    ldh a, [$ffe0]                                ; $5491: $f0 $e0
    ld a, b                                       ; $5493: $78
    ldh a, [$fff8]                                ; $5494: $f0 $f8
    ld hl, sp+$5c                                 ; $5496: $f8 $5c
    db $fc                                        ; $5498: $fc
    cp $5c                                        ; $5499: $fe $5c
    cp $56                                        ; $549b: $fe $56
    or $36                                        ; $549d: $f6 $36
    ld a, [$eeea]                                 ; $549f: $fa $ea $ee
    ld d, $de                                     ; $54a2: $16 $de
    inc [hl]                                      ; $54a4: $34
    db $fc                                        ; $54a5: $fc
    db $fc                                        ; $54a6: $fc
    ret nc                                        ; $54a7: $d0

    or b                                          ; $54a8: $b0
    ldh a, [$fff0]                                ; $54a9: $f0 $f0
    and b                                         ; $54ab: $a0
    ldh [$ffe0], a                                ; $54ac: $e0 $e0
    and b                                         ; $54ae: $a0
    add b                                         ; $54af: $80
    add e                                         ; $54b0: $83
    inc b                                         ; $54b1: $04
    ldh [rTAC], a                                 ; $54b2: $e0 $07
    rrca                                          ; $54b4: $0f
    rrca                                          ; $54b5: $0f
    cp b                                          ; $54b6: $b8
    dec c                                         ; $54b7: $0d
    rrca                                          ; $54b8: $0f
    rrca                                          ; $54b9: $0f
    dec c                                         ; $54ba: $0d
    rrca                                          ; $54bb: $0f
    dec c                                         ; $54bc: $0d
    rlca                                          ; $54bd: $07
    ld b, $0f                                     ; $54be: $06 $0f
    dec bc                                        ; $54c0: $0b
    dec de                                        ; $54c1: $1b
    inc d                                         ; $54c2: $14
    dec e                                         ; $54c3: $1d
    ld d, $1f                                     ; $54c4: $16 $1f
    rra                                           ; $54c6: $1f
    ld b, $05                                     ; $54c7: $06 $05
    rlca                                          ; $54c9: $07
    rlca                                          ; $54ca: $07
    ld [bc], a                                    ; $54cb: $02
    inc bc                                        ; $54cc: $03
    inc bc                                        ; $54cd: $03
    ld [bc], a                                    ; $54ce: $02
    inc bc                                        ; $54cf: $03
    inc bc                                        ; $54d0: $03
    ldh a, [$ffe0]                                ; $54d1: $f0 $e0
    ld a, b                                       ; $54d3: $78
    ldh a, [$fff8]                                ; $54d4: $f0 $f8
    ld hl, sp+$5c                                 ; $54d6: $f8 $5c
    db $fc                                        ; $54d8: $fc
    cp $5c                                        ; $54d9: $fe $5c
    cp $56                                        ; $54db: $fe $56
    or $36                                        ; $54dd: $f6 $36
    ld a, [$eeea]                                 ; $54df: $fa $ea $ee
    ld d, $de                                     ; $54e2: $16 $de
    inc [hl]                                      ; $54e4: $34
    db $fc                                        ; $54e5: $fc
    db $fc                                        ; $54e6: $fc
    ret nc                                        ; $54e7: $d0

    or b                                          ; $54e8: $b0
    ldh a, [$fff0]                                ; $54e9: $f0 $f0
    and b                                         ; $54eb: $a0
    ldh [$ffe0], a                                ; $54ec: $e0 $e0
    and b                                         ; $54ee: $a0
    add b                                         ; $54ef: $80
    add e                                         ; $54f0: $83
    inc b                                         ; $54f1: $04
    ldh [rTAC], a                                 ; $54f2: $e0 $07
    rrca                                          ; $54f4: $0f
    rrca                                          ; $54f5: $0f
    adc h                                         ; $54f6: $8c
    dec c                                         ; $54f7: $0d
    rrca                                          ; $54f8: $0f
    rra                                           ; $54f9: $1f
    dec c                                         ; $54fa: $0d
    rla                                           ; $54fb: $17
    dec e                                         ; $54fc: $1d
    rra                                           ; $54fd: $1f
    ld d, $0f                                     ; $54fe: $16 $0f
    dec bc                                        ; $5500: $0b
    dec bc                                        ; $5501: $0b
    inc c                                         ; $5502: $0c
    add b                                         ; $5503: $80
    inc bc                                        ; $5504: $03
    dec b                                         ; $5505: $05
    xor e                                         ; $5506: $ab
    rlca                                          ; $5507: $07
    rlca                                          ; $5508: $07
    dec b                                         ; $5509: $05
    ld [bc], a                                    ; $550a: $02
    inc bc                                        ; $550b: $03
    inc bc                                        ; $550c: $03
    ld [bc], a                                    ; $550d: $02
    inc bc                                        ; $550e: $03
    ld [bc], a                                    ; $550f: $02
    inc bc                                        ; $5510: $03
    inc bc                                        ; $5511: $03
    ldh a, [$ffe0]                                ; $5512: $f0 $e0
    ld a, b                                       ; $5514: $78
    ldh a, [$fff8]                                ; $5515: $f0 $f8
    ld hl, sp+$5c                                 ; $5517: $f8 $5c
    db $fc                                        ; $5519: $fc
    cp $5c                                        ; $551a: $fe $5c
    cp $56                                        ; $551c: $fe $56
    or $36                                        ; $551e: $f6 $36
    ld a, [$faea]                                 ; $5520: $fa $ea $fa
    ld a, [bc]                                    ; $5523: $0a
    cp d                                          ; $5524: $ba
    ld l, b                                       ; $5525: $68
    db $fc                                        ; $5526: $fc
    db $f4                                        ; $5527: $f4
    sbc h                                         ; $5528: $9c
    db $fc                                        ; $5529: $fc
    ldh [$ff60], a                                ; $552a: $e0 $60
    add b                                         ; $552c: $80
    ret nz                                        ; $552d: $c0

    add b                                         ; $552e: $80
    ret nz                                        ; $552f: $c0

    ld b, b                                       ; $5530: $40
    add b                                         ; $5531: $80
    nop                                           ; $5532: $00
    inc bc                                        ; $5533: $03
    ld bc, $6767                                  ; $5534: $01 $67 $67
    ld a, a                                       ; $5537: $7f
    ld d, a                                       ; $5538: $57
    ld a, l                                       ; $5539: $7d
    ld c, a                                       ; $553a: $4f
    ld a, a                                       ; $553b: $7f
    ld c, l                                       ; $553c: $4d
    ccf                                           ; $553d: $3f
    dec l                                         ; $553e: $2d
    dec e                                         ; $553f: $1d
    ld e, $7f                                     ; $5540: $1e $7f
    ld a, a                                       ; $5542: $7f
    ld a, [hl]                                    ; $5543: $7e
    ld b, l                                       ; $5544: $45
    ccf                                           ; $5545: $3f
    ld a, [hl-]                                   ; $5546: $3a
    rra                                           ; $5547: $1f
    ld d, $1b                                     ; $5548: $16 $1b
    ld a, [de]                                    ; $554a: $1a
    inc bc                                        ; $554b: $03
    ld [bc], a                                    ; $554c: $02
    inc bc                                        ; $554d: $03
    ld [bc], a                                    ; $554e: $02
    inc bc                                        ; $554f: $03
    ld [bc], a                                    ; $5550: $02
    inc bc                                        ; $5551: $03
    inc bc                                        ; $5552: $03
    ldh [$ffc0], a                                ; $5553: $e0 $c0
    di                                            ; $5555: $f3
    di                                            ; $5556: $f3
    rst RST_38                                    ; $5557: $ff
    push af                                       ; $5558: $f5
    ld e, a                                       ; $5559: $5f
    ld sp, hl                                     ; $555a: $f9
    rst RST_38                                    ; $555b: $ff
    ld e, c                                       ; $555c: $59
    cp $5a                                        ; $555d: $fe $5a
    call c, $ff3c                                 ; $555f: $dc $3c $ff
    rst RST_38                                    ; $5562: $ff
    cp a                                          ; $5563: $bf
    ld d, c                                       ; $5564: $51
    cp $2e                                        ; $5565: $fe $2e
    db $fc                                        ; $5567: $fc
    inc [hl]                                      ; $5568: $34
    db $ec                                        ; $5569: $ec
    inc l                                         ; $556a: $2c
    ldh [$ffa0], a                                ; $556b: $e0 $a0
    ldh [$ffa0], a                                ; $556d: $e0 $a0
    ldh [$ffa0], a                                ; $556f: $e0 $a0
    ldh [$ffe0], a                                ; $5571: $e0 $e0
    dec de                                        ; $5573: $1b
    add hl, de                                    ; $5574: $19
    ccf                                           ; $5575: $3f
    cpl                                           ; $5576: $2f
    ccf                                           ; $5577: $3f
    cpl                                           ; $5578: $2f
    dec a                                         ; $5579: $3d
    cpl                                           ; $557a: $2f
    rra                                           ; $557b: $1f
    dec e                                         ; $557c: $1d
    ccf                                           ; $557d: $3f
    dec a                                         ; $557e: $3d
    dec a                                         ; $557f: $3d
    ld l, $3f                                     ; $5580: $2e $3f
    daa                                           ; $5582: $27
    ld e, $1d                                     ; $5583: $1e $1d
    rrca                                          ; $5585: $0f
    ld a, [bc]                                    ; $5586: $0a
    rra                                           ; $5587: $1f
    ld d, $1b                                     ; $5588: $16 $1b
    ld a, [de]                                    ; $558a: $1a
    inc bc                                        ; $558b: $03
    ld [bc], a                                    ; $558c: $02
    inc bc                                        ; $558d: $03
    ld [bc], a                                    ; $558e: $02
    inc bc                                        ; $558f: $03
    ld [bc], a                                    ; $5590: $02
    inc bc                                        ; $5591: $03
    inc bc                                        ; $5592: $03
    db $ec                                        ; $5593: $ec
    call z, $fafe                                 ; $5594: $cc $fe $fa
    cp $fa                                        ; $5597: $fe $fa
    ld e, [hl]                                    ; $5599: $5e
    ld a, [$5cfc]                                 ; $559a: $fa $fc $5c
    cp $5e                                        ; $559d: $fe $5e
    sbc $3a                                       ; $559f: $de $3a
    cp $f2                                        ; $55a1: $fe $f2
    cp h                                          ; $55a3: $bc
    ld e, h                                       ; $55a4: $5c
    ld hl, sp+$28                                 ; $55a5: $f8 $28
    db $fc                                        ; $55a7: $fc
    inc [hl]                                      ; $55a8: $34
    db $ec                                        ; $55a9: $ec
    inc l                                         ; $55aa: $2c
    ldh [$ffa0], a                                ; $55ab: $e0 $a0
    ldh [$ffa0], a                                ; $55ad: $e0 $a0
    ldh [$ffa0], a                                ; $55af: $e0 $a0
    ldh [$ffe0], a                                ; $55b1: $e0 $e0
    and e                                         ; $55b3: $a3
    ccf                                           ; $55b4: $3f
    ccf                                           ; $55b5: $3f
    dec c                                         ; $55b6: $0d
    dec bc                                        ; $55b7: $0b
    ccf                                           ; $55b8: $3f
    ccf                                           ; $55b9: $3f
    dec c                                         ; $55ba: $0d
    rrca                                          ; $55bb: $0f
    rrca                                          ; $55bc: $0f
    dec c                                         ; $55bd: $0d
    rlca                                          ; $55be: $07
    dec b                                         ; $55bf: $05
    rrca                                          ; $55c0: $0f
    ld c, $1f                                     ; $55c1: $0e $1f
    dec de                                        ; $55c3: $1b
    dec sp                                        ; $55c4: $3b
    inc [hl]                                      ; $55c5: $34
    dec a                                         ; $55c6: $3d
    ld l, $37                                     ; $55c7: $2e $37
    scf                                           ; $55c9: $37
    ld b, $05                                     ; $55ca: $06 $05
    rlca                                          ; $55cc: $07
    rlca                                          ; $55cd: $07
    ld [bc], a                                    ; $55ce: $02
    inc bc                                        ; $55cf: $03
    inc bc                                        ; $55d0: $03
    ld [bc], a                                    ; $55d1: $02
    ld bc, $f001                                  ; $55d2: $01 $01 $f0
    ldh a, [$ff78]                                ; $55d5: $f0 $78
    inc bc                                        ; $55d7: $03
    ld hl, sp-$54                                 ; $55d8: $f8 $ac
    ld e, b                                       ; $55da: $58
    ld hl, sp-$08                                 ; $55db: $f8 $f8
    ld e, b                                       ; $55dd: $58
    ldh a, [$ff50]                                ; $55de: $f0 $50
    ld hl, sp+$38                                 ; $55e0: $f8 $38
    db $fc                                        ; $55e2: $fc
    db $ec                                        ; $55e3: $ec
    xor $16                                       ; $55e4: $ee $16
    sbc $3a                                       ; $55e6: $de $3a
    or $f6                                        ; $55e8: $f6 $f6
    ret nc                                        ; $55ea: $d0

    or b                                          ; $55eb: $b0
    ldh a, [$fff0]                                ; $55ec: $f0 $f0
    and b                                         ; $55ee: $a0
    ldh [$ffe0], a                                ; $55ef: $e0 $e0
    and b                                         ; $55f1: $a0
    ret nz                                        ; $55f2: $c0

    ret nz                                        ; $55f3: $c0

    ccf                                           ; $55f4: $3f
    ccf                                           ; $55f5: $3f
    dec c                                         ; $55f6: $0d
    dec bc                                        ; $55f7: $0b
    ccf                                           ; $55f8: $3f
    ccf                                           ; $55f9: $3f
    dec c                                         ; $55fa: $0d
    rrca                                          ; $55fb: $0f
    rrca                                          ; $55fc: $0f
    dec c                                         ; $55fd: $0d
    rlca                                          ; $55fe: $07
    dec b                                         ; $55ff: $05
    ld a, a                                       ; $5600: $7f
    ld a, [hl]                                    ; $5601: $7e
    ld a, a                                       ; $5602: $7f
    ld b, e                                       ; $5603: $43
    dec sp                                        ; $5604: $3b
    inc a                                         ; $5605: $3c
    add b                                         ; $5606: $80
    inc bc                                        ; $5607: $03
    dec b                                         ; $5608: $05
    adc [hl]                                      ; $5609: $8e
    rlca                                          ; $560a: $07
    ld b, $05                                     ; $560b: $06 $05
    rlca                                          ; $560d: $07
    rlca                                          ; $560e: $07
    ld [bc], a                                    ; $560f: $02
    inc bc                                        ; $5610: $03
    inc bc                                        ; $5611: $03
    ld [bc], a                                    ; $5612: $02
    inc bc                                        ; $5613: $03
    inc bc                                        ; $5614: $03
    ldh a, [$fff0]                                ; $5615: $f0 $f0
    ld a, b                                       ; $5617: $78
    inc bc                                        ; $5618: $03
    ld hl, sp-$54                                 ; $5619: $f8 $ac
    ld e, b                                       ; $561b: $58
    ld hl, sp-$08                                 ; $561c: $f8 $f8
    ld e, b                                       ; $561e: $58
    ldh a, [$ff50]                                ; $561f: $f0 $50
    ld hl, sp+$38                                 ; $5621: $f8 $38
    db $fc                                        ; $5623: $fc
    db $ec                                        ; $5624: $ec
    db $ec                                        ; $5625: $ec
    inc d                                         ; $5626: $14
    call c, $fc34                                 ; $5627: $dc $34 $fc
    db $fc                                        ; $562a: $fc
    ret nc                                        ; $562b: $d0

    or b                                          ; $562c: $b0
    ldh a, [$fff0]                                ; $562d: $f0 $f0
    and b                                         ; $562f: $a0
    ldh [$ffe0], a                                ; $5630: $e0 $e0
    and b                                         ; $5632: $a0
    ldh [$ffe0], a                                ; $5633: $e0 $e0
    ccf                                           ; $5635: $3f
    ccf                                           ; $5636: $3f
    dec c                                         ; $5637: $0d
    dec bc                                        ; $5638: $0b
    ccf                                           ; $5639: $3f
    ccf                                           ; $563a: $3f
    dec c                                         ; $563b: $0d
    rrca                                          ; $563c: $0f
    ccf                                           ; $563d: $3f
    dec a                                         ; $563e: $3d
    ccf                                           ; $563f: $3f
    dec l                                         ; $5640: $2d
    rra                                           ; $5641: $1f
    ld d, $0f                                     ; $5642: $16 $0f
    dec bc                                        ; $5644: $0b
    dec bc                                        ; $5645: $0b
    inc c                                         ; $5646: $0c
    add b                                         ; $5647: $80
    inc bc                                        ; $5648: $03
    dec b                                         ; $5649: $05
    add a                                         ; $564a: $87
    rlca                                          ; $564b: $07
    inc bc                                        ; $564c: $03
    ld [bc], a                                    ; $564d: $02
    inc bc                                        ; $564e: $03
    ld [bc], a                                    ; $564f: $02
    inc bc                                        ; $5650: $03
    inc bc                                        ; $5651: $03
    inc b                                         ; $5652: $04
    nop                                           ; $5653: $00
    add e                                         ; $5654: $83
    ldh a, [$fff0]                                ; $5655: $f0 $f0
    ld a, b                                       ; $5657: $78
    inc bc                                        ; $5658: $03
    ld hl, sp-$43                                 ; $5659: $f8 $bd
    ld e, b                                       ; $565b: $58
    ld hl, sp-$08                                 ; $565c: $f8 $f8
    ld e, b                                       ; $565e: $58
    ldh a, [$ff50]                                ; $565f: $f0 $50
    ld hl, sp+$38                                 ; $5661: $f8 $38
    ld hl, sp-$18                                 ; $5663: $f8 $e8
    db $ec                                        ; $5665: $ec
    inc d                                         ; $5666: $14
    call c, $fc34                                 ; $5667: $dc $34 $fc
    db $fc                                        ; $566a: $fc
    ret nc                                        ; $566b: $d0

    or b                                          ; $566c: $b0
    ldh a, [$fff0]                                ; $566d: $f0 $f0
    and b                                         ; $566f: $a0
    ldh [$ffe0], a                                ; $5670: $e0 $e0
    and b                                         ; $5672: $a0
    ldh [$ffe0], a                                ; $5673: $e0 $e0
    ccf                                           ; $5675: $3f
    ccf                                           ; $5676: $3f
    dec c                                         ; $5677: $0d
    dec bc                                        ; $5678: $0b
    ccf                                           ; $5679: $3f
    ccf                                           ; $567a: $3f
    dec c                                         ; $567b: $0d
    rrca                                          ; $567c: $0f
    rrca                                          ; $567d: $0f
    dec c                                         ; $567e: $0d
    rlca                                          ; $567f: $07
    dec b                                         ; $5680: $05
    rrca                                          ; $5681: $0f
    ld c, $3f                                     ; $5682: $0e $3f
    ld [hl], e                                    ; $5684: $73
    ld a, e                                       ; $5685: $7b
    ld c, h                                       ; $5686: $4c
    dec [hl]                                      ; $5687: $35
    ld a, $07                                     ; $5688: $3e $07
    rlca                                          ; $568a: $07
    ld a, [bc]                                    ; $568b: $0a
    dec c                                         ; $568c: $0d
    rra                                           ; $568d: $1f
    rra                                           ; $568e: $1f
    ld h, $3c                                     ; $568f: $26 $3c
    ld a, b                                       ; $5691: $78
    ld e, b                                       ; $5692: $58
    ld h, b                                       ; $5693: $60
    ld h, b                                       ; $5694: $60
    ldh a, [$fff0]                                ; $5695: $f0 $f0
    ld a, b                                       ; $5697: $78
    inc bc                                        ; $5698: $03
    ld hl, sp-$4c                                 ; $5699: $f8 $b4
    ld e, b                                       ; $569b: $58
    ld hl, sp-$08                                 ; $569c: $f8 $f8
    ld e, b                                       ; $569e: $58
    ldh a, [$ff50]                                ; $569f: $f0 $50
    db $fc                                        ; $56a1: $fc
    inc a                                         ; $56a2: $3c
    cp $e2                                        ; $56a3: $fe $e2
    rst RST_28                                    ; $56a5: $ef
    dec e                                         ; $56a6: $1d
    rst RST_10                                    ; $56a7: $d7
    scf                                           ; $56a8: $37
    ldh a, [$fff0]                                ; $56a9: $f0 $f0
    ret nc                                        ; $56ab: $d0

    or b                                          ; $56ac: $b0
    ldh a, [$ffe0]                                ; $56ad: $f0 $e0
    ld hl, sp-$68                                 ; $56af: $f8 $98
    ld hl, sp+$68                                 ; $56b1: $f8 $68
    jr jr_004_56cd                                ; $56b3: $18 $18

    ccf                                           ; $56b5: $3f
    ccf                                           ; $56b6: $3f
    dec c                                         ; $56b7: $0d
    dec bc                                        ; $56b8: $0b
    ccf                                           ; $56b9: $3f
    ccf                                           ; $56ba: $3f
    dec c                                         ; $56bb: $0d
    rrca                                          ; $56bc: $0f
    rrca                                          ; $56bd: $0f
    dec c                                         ; $56be: $0d
    rlca                                          ; $56bf: $07
    dec b                                         ; $56c0: $05
    ccf                                           ; $56c1: $3f
    ld a, $3f                                     ; $56c2: $3e $3f
    inc hl                                        ; $56c4: $23
    dec de                                        ; $56c5: $1b
    inc e                                         ; $56c6: $1c
    dec b                                         ; $56c7: $05
    ld b, $1f                                     ; $56c8: $06 $1f
    rra                                           ; $56ca: $1f
    ld e, $13                                     ; $56cb: $1e $13

jr_004_56cd:
    rra                                           ; $56cd: $1f
    rra                                           ; $56ce: $1f
    ld b, $00                                     ; $56cf: $06 $00
    add e                                         ; $56d1: $83
    ldh a, [$fff0]                                ; $56d2: $f0 $f0
    ld a, b                                       ; $56d4: $78
    inc bc                                        ; $56d5: $03
    ld hl, sp-$43                                 ; $56d6: $f8 $bd
    ld e, b                                       ; $56d8: $58
    ld hl, sp-$08                                 ; $56d9: $f8 $f8
    ld e, b                                       ; $56db: $58
    ldh a, [$ff50]                                ; $56dc: $f0 $50
    cp $3e                                        ; $56de: $fe $3e
    cp $e2                                        ; $56e0: $fe $e2
    db $ec                                        ; $56e2: $ec
    inc e                                         ; $56e3: $1c
    ret nc                                        ; $56e4: $d0

    jr nc, @-$0e                                  ; $56e5: $30 $f0

    ldh a, [$ffd0]                                ; $56e7: $f0 $d0
    or b                                          ; $56e9: $b0
    ldh a, [$fff0]                                ; $56ea: $f0 $f0
    and b                                         ; $56ec: $a0
    ldh [$ffe0], a                                ; $56ed: $e0 $e0
    and b                                         ; $56ef: $a0
    ldh [$ffe0], a                                ; $56f0: $e0 $e0
    ccf                                           ; $56f2: $3f
    ccf                                           ; $56f3: $3f
    dec c                                         ; $56f4: $0d
    dec bc                                        ; $56f5: $0b
    ccf                                           ; $56f6: $3f
    ccf                                           ; $56f7: $3f
    dec c                                         ; $56f8: $0d
    rrca                                          ; $56f9: $0f
    rrca                                          ; $56fa: $0f
    dec c                                         ; $56fb: $0d
    rlca                                          ; $56fc: $07
    dec b                                         ; $56fd: $05
    rrca                                          ; $56fe: $0f
    ld c, $0f                                     ; $56ff: $0e $0f
    dec bc                                        ; $5701: $0b
    dec de                                        ; $5702: $1b
    inc d                                         ; $5703: $14
    dec e                                         ; $5704: $1d
    ld d, $1f                                     ; $5705: $16 $1f
    rra                                           ; $5707: $1f
    ld b, $05                                     ; $5708: $06 $05
    rlca                                          ; $570a: $07
    rlca                                          ; $570b: $07
    ld [bc], a                                    ; $570c: $02
    inc bc                                        ; $570d: $03
    inc bc                                        ; $570e: $03
    ld [bc], a                                    ; $570f: $02
    inc bc                                        ; $5710: $03
    inc bc                                        ; $5711: $03
    ldh a, [$fff0]                                ; $5712: $f0 $f0
    ld a, b                                       ; $5714: $78
    inc bc                                        ; $5715: $03
    ld hl, sp-$55                                 ; $5716: $f8 $ab
    ld e, b                                       ; $5718: $58
    ld hl, sp-$08                                 ; $5719: $f8 $f8
    ld e, b                                       ; $571b: $58
    ldh a, [$ff50]                                ; $571c: $f0 $50
    ld hl, sp+$38                                 ; $571e: $f8 $38
    ld hl, sp-$18                                 ; $5720: $f8 $e8
    db $ec                                        ; $5722: $ec
    inc d                                         ; $5723: $14
    call c, $fc34                                 ; $5724: $dc $34 $fc
    db $fc                                        ; $5727: $fc
    ret nc                                        ; $5728: $d0

    or b                                          ; $5729: $b0
    ldh a, [$fff0]                                ; $572a: $f0 $f0
    and b                                         ; $572c: $a0
    ldh [$ffe0], a                                ; $572d: $e0 $e0
    and b                                         ; $572f: $a0
    ldh [$ffe0], a                                ; $5730: $e0 $e0
    ccf                                           ; $5732: $3f
    ccf                                           ; $5733: $3f
    dec c                                         ; $5734: $0d
    dec bc                                        ; $5735: $0b
    ccf                                           ; $5736: $3f
    ccf                                           ; $5737: $3f
    dec c                                         ; $5738: $0d
    rrca                                          ; $5739: $0f
    ccf                                           ; $573a: $3f
    dec a                                         ; $573b: $3d
    ccf                                           ; $573c: $3f
    dec l                                         ; $573d: $2d
    rra                                           ; $573e: $1f
    ld d, $0f                                     ; $573f: $16 $0f
    dec bc                                        ; $5741: $0b
    rlca                                          ; $5742: $07
    add b                                         ; $5743: $80
    inc bc                                        ; $5744: $03
    inc b                                         ; $5745: $04
    adc a                                         ; $5746: $8f
    rra                                           ; $5747: $1f
    rrca                                          ; $5748: $0f
    ld a, [de]                                    ; $5749: $1a
    rla                                           ; $574a: $17
    rra                                           ; $574b: $1f
    rla                                           ; $574c: $17
    inc e                                         ; $574d: $1c
    inc d                                         ; $574e: $14
    jr jr_004_5769                                ; $574f: $18 $18

    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    ldh a, [$fff0]                                ; $5753: $f0 $f0
    ld a, b                                       ; $5755: $78
    inc bc                                        ; $5756: $03
    ld hl, sp-$66                                 ; $5757: $f8 $9a
    ld e, b                                       ; $5759: $58
    ld hl, sp-$08                                 ; $575a: $f8 $f8
    ld e, b                                       ; $575c: $58
    ldh a, [$ff50]                                ; $575d: $f0 $50
    ld hl, sp+$38                                 ; $575f: $f8 $38
    ld hl, sp-$18                                 ; $5761: $f8 $e8
    db $ec                                        ; $5763: $ec
    inc d                                         ; $5764: $14
    call c, $fc34                                 ; $5765: $dc $34 $fc
    db $fc                                        ; $5768: $fc

jr_004_5769:
    ret nc                                        ; $5769: $d0

    or b                                          ; $576a: $b0
    ldh a, [$fff0]                                ; $576b: $f0 $f0
    sub b                                         ; $576d: $90
    ldh a, [rSVBK]                                ; $576e: $f0 $70
    ld d, b                                       ; $5770: $50
    ld [hl], b                                    ; $5771: $70
    ld [hl], b                                    ; $5772: $70
    nop                                           ; $5773: $00
    and e                                         ; $5774: $a3
    rlca                                          ; $5775: $07
    rlca                                          ; $5776: $07
    dec c                                         ; $5777: $0d
    dec bc                                        ; $5778: $0b
    rrca                                          ; $5779: $0f
    rrca                                          ; $577a: $0f
    dec c                                         ; $577b: $0d
    rrca                                          ; $577c: $0f
    rrca                                          ; $577d: $0f
    dec c                                         ; $577e: $0d
    rlca                                          ; $577f: $07
    dec b                                         ; $5780: $05
    rrca                                          ; $5781: $0f
    ld c, $17                                     ; $5782: $0e $17
    dec de                                        ; $5784: $1b
    dec sp                                        ; $5785: $3b
    inc [hl]                                      ; $5786: $34
    dec a                                         ; $5787: $3d
    ld l, $37                                     ; $5788: $2e $37
    scf                                           ; $578a: $37
    ld b, $05                                     ; $578b: $06 $05
    rlca                                          ; $578d: $07
    rlca                                          ; $578e: $07
    ld [bc], a                                    ; $578f: $02
    inc bc                                        ; $5790: $03
    inc bc                                        ; $5791: $03
    ld [bc], a                                    ; $5792: $02
    ld bc, $e001                                  ; $5793: $01 $01 $e0
    ldh a, [rSVBK]                                ; $5796: $f0 $70
    inc bc                                        ; $5798: $03
    ld hl, sp-$54                                 ; $5799: $f8 $ac
    ld e, [hl]                                    ; $579b: $5e
    cp $ff                                        ; $579c: $fe $ff
    ld e, a                                       ; $579e: $5f
    rst RST_30                                    ; $579f: $f7
    ld d, a                                       ; $57a0: $57
    rst RST_38                                    ; $57a1: $ff
    dec sp                                        ; $57a2: $3b
    push af                                       ; $57a3: $f5
    db $ed                                        ; $57a4: $ed
    rst RST_28                                    ; $57a5: $ef
    rla                                           ; $57a6: $17
    rst RST_18                                    ; $57a7: $df
    ld a, [hl-]                                   ; $57a8: $3a
    or $f6                                        ; $57a9: $f6 $f6
    ret nc                                        ; $57ab: $d0

    or b                                          ; $57ac: $b0
    ldh a, [$fff0]                                ; $57ad: $f0 $f0
    and b                                         ; $57af: $a0
    ldh [$ffe0], a                                ; $57b0: $e0 $e0
    and b                                         ; $57b2: $a0
    ret nz                                        ; $57b3: $c0

    ret nz                                        ; $57b4: $c0

    rlca                                          ; $57b5: $07
    rlca                                          ; $57b6: $07
    ld c, $0d                                     ; $57b7: $0e $0d
    rrca                                          ; $57b9: $0f
    rrca                                          ; $57ba: $0f
    dec c                                         ; $57bb: $0d
    rrca                                          ; $57bc: $0f
    rrca                                          ; $57bd: $0f
    dec c                                         ; $57be: $0d
    rrca                                          ; $57bf: $0f
    dec c                                         ; $57c0: $0d
    ld a, a                                       ; $57c1: $7f
    ld a, [hl]                                    ; $57c2: $7e
    ld a, a                                       ; $57c3: $7f
    ld b, e                                       ; $57c4: $43
    dec sp                                        ; $57c5: $3b
    inc a                                         ; $57c6: $3c
    add b                                         ; $57c7: $80
    inc bc                                        ; $57c8: $03
    dec b                                         ; $57c9: $05
    xor c                                         ; $57ca: $a9
    rlca                                          ; $57cb: $07
    ld b, $05                                     ; $57cc: $06 $05
    rlca                                          ; $57ce: $07
    rlca                                          ; $57cf: $07
    ld [bc], a                                    ; $57d0: $02
    inc bc                                        ; $57d1: $03
    inc bc                                        ; $57d2: $03
    ld [bc], a                                    ; $57d3: $02
    inc bc                                        ; $57d4: $03
    inc bc                                        ; $57d5: $03
    ldh a, [$ffe0]                                ; $57d6: $f0 $e0
    ld a, b                                       ; $57d8: $78
    ldh a, [$fff8]                                ; $57d9: $f0 $f8
    ld hl, sp+$5c                                 ; $57db: $f8 $5c
    db $fc                                        ; $57dd: $fc
    cp $5c                                        ; $57de: $fe $5c
    cp $56                                        ; $57e0: $fe $56
    or $36                                        ; $57e2: $f6 $36
    ld a, [$eeea]                                 ; $57e4: $fa $ea $ee
    ld d, $de                                     ; $57e7: $16 $de
    inc [hl]                                      ; $57e9: $34
    db $fc                                        ; $57ea: $fc
    db $fc                                        ; $57eb: $fc
    ret nc                                        ; $57ec: $d0

    or b                                          ; $57ed: $b0
    ldh a, [$fff0]                                ; $57ee: $f0 $f0
    and b                                         ; $57f0: $a0
    ldh [$ffe0], a                                ; $57f1: $e0 $e0
    and b                                         ; $57f3: $a0
    add b                                         ; $57f4: $80
    add e                                         ; $57f5: $83
    inc b                                         ; $57f6: $04
    ldh [rTAC], a                                 ; $57f7: $e0 $07
    rrca                                          ; $57f9: $0f
    rrca                                          ; $57fa: $0f
    cp b                                          ; $57fb: $b8
    dec c                                         ; $57fc: $0d
    rrca                                          ; $57fd: $0f
    rrca                                          ; $57fe: $0f
    dec c                                         ; $57ff: $0d
    rrca                                          ; $5800: $0f
    dec c                                         ; $5801: $0d
    rlca                                          ; $5802: $07
    ld b, $0f                                     ; $5803: $06 $0f
    dec bc                                        ; $5805: $0b
    dec de                                        ; $5806: $1b
    inc d                                         ; $5807: $14
    dec e                                         ; $5808: $1d
    ld d, $1f                                     ; $5809: $16 $1f
    rra                                           ; $580b: $1f
    ld b, $05                                     ; $580c: $06 $05
    rlca                                          ; $580e: $07
    rlca                                          ; $580f: $07
    ld [bc], a                                    ; $5810: $02
    inc bc                                        ; $5811: $03
    inc bc                                        ; $5812: $03
    ld [bc], a                                    ; $5813: $02
    inc bc                                        ; $5814: $03
    inc bc                                        ; $5815: $03
    ldh a, [$ffe0]                                ; $5816: $f0 $e0
    ld a, b                                       ; $5818: $78
    ldh a, [$fff8]                                ; $5819: $f0 $f8
    ld hl, sp+$5c                                 ; $581b: $f8 $5c
    db $fc                                        ; $581d: $fc
    cp $5c                                        ; $581e: $fe $5c
    cp $56                                        ; $5820: $fe $56
    or $36                                        ; $5822: $f6 $36
    ld a, [$eeea]                                 ; $5824: $fa $ea $ee
    ld d, $de                                     ; $5827: $16 $de
    inc [hl]                                      ; $5829: $34
    db $fc                                        ; $582a: $fc
    db $fc                                        ; $582b: $fc
    ret nc                                        ; $582c: $d0

    or b                                          ; $582d: $b0
    ldh a, [$fff0]                                ; $582e: $f0 $f0
    and b                                         ; $5830: $a0
    ldh [$ffe0], a                                ; $5831: $e0 $e0
    and b                                         ; $5833: $a0
    add b                                         ; $5834: $80
    add e                                         ; $5835: $83
    inc b                                         ; $5836: $04
    ldh [rTAC], a                                 ; $5837: $e0 $07
    rrca                                          ; $5839: $0f
    rrca                                          ; $583a: $0f
    adc h                                         ; $583b: $8c
    dec c                                         ; $583c: $0d
    rrca                                          ; $583d: $0f
    rra                                           ; $583e: $1f
    dec c                                         ; $583f: $0d
    rla                                           ; $5840: $17
    dec e                                         ; $5841: $1d
    rra                                           ; $5842: $1f
    ld d, $0f                                     ; $5843: $16 $0f
    dec bc                                        ; $5845: $0b
    dec bc                                        ; $5846: $0b
    inc c                                         ; $5847: $0c
    add b                                         ; $5848: $80
    inc bc                                        ; $5849: $03
    dec b                                         ; $584a: $05
    xor l                                         ; $584b: $ad
    rlca                                          ; $584c: $07
    rlca                                          ; $584d: $07
    dec b                                         ; $584e: $05
    ld [bc], a                                    ; $584f: $02
    inc bc                                        ; $5850: $03
    inc bc                                        ; $5851: $03
    ld [bc], a                                    ; $5852: $02
    inc bc                                        ; $5853: $03
    ld [bc], a                                    ; $5854: $02
    inc bc                                        ; $5855: $03
    inc bc                                        ; $5856: $03
    ldh a, [$ffe0]                                ; $5857: $f0 $e0
    ld a, b                                       ; $5859: $78
    ldh a, [$fff8]                                ; $585a: $f0 $f8
    ld hl, sp+$5c                                 ; $585c: $f8 $5c
    db $fc                                        ; $585e: $fc
    cp $5c                                        ; $585f: $fe $5c
    cp $56                                        ; $5861: $fe $56
    or $36                                        ; $5863: $f6 $36
    ld a, [$faea]                                 ; $5865: $fa $ea $fa
    ld a, [bc]                                    ; $5868: $0a
    cp d                                          ; $5869: $ba
    ld l, b                                       ; $586a: $68
    db $fc                                        ; $586b: $fc
    db $f4                                        ; $586c: $f4
    sbc h                                         ; $586d: $9c
    db $fc                                        ; $586e: $fc
    ldh [$ff60], a                                ; $586f: $e0 $60
    add b                                         ; $5871: $80
    ret nz                                        ; $5872: $c0

    add b                                         ; $5873: $80
    ret nz                                        ; $5874: $c0

    ld b, b                                       ; $5875: $40
    add b                                         ; $5876: $80
    rlca                                          ; $5877: $07
    rlca                                          ; $5878: $07
    inc b                                         ; $5879: $04
    rrca                                          ; $587a: $0f
    sub h                                         ; $587b: $94
    dec c                                         ; $587c: $0d
    rrca                                          ; $587d: $0f
    rrca                                          ; $587e: $0f
    dec c                                         ; $587f: $0d
    rrca                                          ; $5880: $0f
    dec c                                         ; $5881: $0d
    ccf                                           ; $5882: $3f
    ld a, $3f                                     ; $5883: $3e $3f
    inc hl                                        ; $5885: $23
    dec de                                        ; $5886: $1b
    inc e                                         ; $5887: $1c
    dec b                                         ; $5888: $05
    ld b, $1f                                     ; $5889: $06 $1f
    rra                                           ; $588b: $1f
    ld e, $13                                     ; $588c: $1e $13
    rra                                           ; $588e: $1f
    rra                                           ; $588f: $1f
    ld b, $00                                     ; $5890: $06 $00
    and b                                         ; $5892: $a0
    ldh a, [$ffe0]                                ; $5893: $f0 $e0
    ld a, b                                       ; $5895: $78
    ldh a, [$fff8]                                ; $5896: $f0 $f8
    ld hl, sp+$5c                                 ; $5898: $f8 $5c
    db $fc                                        ; $589a: $fc
    cp $5c                                        ; $589b: $fe $5c
    cp $56                                        ; $589d: $fe $56
    cp $3e                                        ; $589f: $fe $3e
    cp $e2                                        ; $58a1: $fe $e2
    xor $1e                                       ; $58a3: $ee $1e
    sub $34                                       ; $58a5: $d6 $34
    ldh a, [$fff0]                                ; $58a7: $f0 $f0
    ret nc                                        ; $58a9: $d0

    or b                                          ; $58aa: $b0
    ldh a, [$fff0]                                ; $58ab: $f0 $f0
    and b                                         ; $58ad: $a0
    ldh [$ffe0], a                                ; $58ae: $e0 $e0
    and b                                         ; $58b0: $a0
    ldh [$ffe0], a                                ; $58b1: $e0 $e0
    ld b, $00                                     ; $58b3: $06 $00
    add d                                         ; $58b5: $82
    rlca                                          ; $58b6: $07
    rlca                                          ; $58b7: $07
    inc b                                         ; $58b8: $04
    rrca                                          ; $58b9: $0f
    sub h                                         ; $58ba: $94
    dec c                                         ; $58bb: $0d
    rrca                                          ; $58bc: $0f
    rrca                                          ; $58bd: $0f
    dec c                                         ; $58be: $0d
    rrca                                          ; $58bf: $0f
    dec c                                         ; $58c0: $0d
    ccf                                           ; $58c1: $3f
    ld a, $3f                                     ; $58c2: $3e $3f
    inc hl                                        ; $58c4: $23
    dec de                                        ; $58c5: $1b
    inc e                                         ; $58c6: $1c
    dec b                                         ; $58c7: $05
    ld b, $1f                                     ; $58c8: $06 $1f
    rra                                           ; $58ca: $1f
    ld e, $13                                     ; $58cb: $1e $13
    rra                                           ; $58cd: $1f
    rra                                           ; $58ce: $1f
    ld b, $00                                     ; $58cf: $06 $00
    sub h                                         ; $58d1: $94
    ldh a, [$ffe0]                                ; $58d2: $f0 $e0
    ld a, b                                       ; $58d4: $78
    ldh a, [$fff8]                                ; $58d5: $f0 $f8
    ld hl, sp+$5c                                 ; $58d7: $f8 $5c
    db $fc                                        ; $58d9: $fc
    cp $5c                                        ; $58da: $fe $5c
    cp $56                                        ; $58dc: $fe $56
    cp $3e                                        ; $58de: $fe $3e
    cp $e2                                        ; $58e0: $fe $e2
    xor $1e                                       ; $58e2: $ee $1e
    sub $34                                       ; $58e4: $d6 $34
    inc bc                                        ; $58e6: $03
    db $fc                                        ; $58e7: $fc
    add c                                         ; $58e8: $81
    and h                                         ; $58e9: $a4
    add b                                         ; $58ea: $80
    add e                                         ; $58eb: $83
    inc b                                         ; $58ec: $04
    db $fc                                        ; $58ed: $fc
    rlca                                          ; $58ee: $07
    rrca                                          ; $58ef: $0f
    rrca                                          ; $58f0: $0f
    cp d                                          ; $58f1: $ba
    dec c                                         ; $58f2: $0d
    rrca                                          ; $58f3: $0f
    rrca                                          ; $58f4: $0f
    dec c                                         ; $58f5: $0d
    rrca                                          ; $58f6: $0f
    dec c                                         ; $58f7: $0d
    rlca                                          ; $58f8: $07
    ld b, $0f                                     ; $58f9: $06 $0f
    dec bc                                        ; $58fb: $0b
    dec de                                        ; $58fc: $1b
    inc d                                         ; $58fd: $14
    dec e                                         ; $58fe: $1d
    ld d, $1f                                     ; $58ff: $16 $1f
    rra                                           ; $5901: $1f
    ld b, $05                                     ; $5902: $06 $05
    rlca                                          ; $5904: $07
    rlca                                          ; $5905: $07
    ld [bc], a                                    ; $5906: $02
    inc bc                                        ; $5907: $03
    inc bc                                        ; $5908: $03
    ld [bc], a                                    ; $5909: $02
    inc bc                                        ; $590a: $03
    inc bc                                        ; $590b: $03
    ldh a, [$ffe0]                                ; $590c: $f0 $e0
    ld a, b                                       ; $590e: $78
    ldh a, [$fff8]                                ; $590f: $f0 $f8
    ld hl, sp+$5c                                 ; $5911: $f8 $5c
    db $fc                                        ; $5913: $fc
    cp $5c                                        ; $5914: $fe $5c
    cp $56                                        ; $5916: $fe $56
    or $36                                        ; $5918: $f6 $36
    ld a, [$eeea]                                 ; $591a: $fa $ea $ee
    ld d, $de                                     ; $591d: $16 $de
    inc [hl]                                      ; $591f: $34
    db $fc                                        ; $5920: $fc
    db $fc                                        ; $5921: $fc
    ret nc                                        ; $5922: $d0

    or b                                          ; $5923: $b0
    ldh a, [$fff0]                                ; $5924: $f0 $f0
    and b                                         ; $5926: $a0
    ldh [$ffe0], a                                ; $5927: $e0 $e0
    and b                                         ; $5929: $a0
    ldh [$ffe0], a                                ; $592a: $e0 $e0
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    sbc b                                         ; $592e: $98
    dec b                                         ; $592f: $05
    ld bc, $0284                                  ; $5930: $01 $84 $02
    inc bc                                        ; $5933: $03
    add hl, bc                                    ; $5934: $09
    ld a, [bc]                                    ; $5935: $0a
    inc bc                                        ; $5936: $03
    dec b                                         ; $5937: $05
    add e                                         ; $5938: $83
    ld b, $07                                     ; $5939: $06 $07
    ld [$0105], sp                                ; $593b: $08 $05 $01
    inc c                                         ; $593e: $0c
    ccf                                           ; $593f: $3f
    dec b                                         ; $5940: $05
    ld bc, $0283                                  ; $5941: $01 $83 $02
    inc bc                                        ; $5944: $03
    inc b                                         ; $5945: $04
    inc bc                                        ; $5946: $03
    dec b                                         ; $5947: $05
    add h                                         ; $5948: $84
    dec bc                                        ; $5949: $0b
    inc c                                         ; $594a: $0c
    rlca                                          ; $594b: $07
    ld [$0105], sp                                ; $594c: $08 $05 $01
    inc c                                         ; $594f: $0c
    ccf                                           ; $5950: $3f
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    sbc b                                         ; $5953: $98
    inc hl                                        ; $5954: $23
    nop                                           ; $5955: $00
    add c                                         ; $5956: $81
    cpl                                           ; $5957: $2f
    inc b                                         ; $5958: $04
    nop                                           ; $5959: $00
    add c                                         ; $595a: $81
    cpl                                           ; $595b: $2f
    inc b                                         ; $595c: $04
    nop                                           ; $595d: $00
    add c                                         ; $595e: $81
    cpl                                           ; $595f: $2f
    dec b                                         ; $5960: $05
    nop                                           ; $5961: $00
    add c                                         ; $5962: $81
    cpl                                           ; $5963: $2f
    add hl, de                                    ; $5964: $19
    nop                                           ; $5965: $00
    add d                                         ; $5966: $82
    ld bc, $1202                                  ; $5967: $01 $02 $12
    nop                                           ; $596a: $00
    add c                                         ; $596b: $81
    cpl                                           ; $596c: $2f
    dec bc                                        ; $596d: $0b
    nop                                           ; $596e: $00
    add d                                         ; $596f: $82
    inc bc                                        ; $5970: $03
    inc b                                         ; $5971: $04
    dec d                                         ; $5972: $15
    nop                                           ; $5973: $00
    add b                                         ; $5974: $80
    ld b, $3e                                     ; $5975: $06 $3e
    add c                                         ; $5977: $81
    nop                                           ; $5978: $00
    add b                                         ; $5979: $80
    inc bc                                        ; $597a: $03
    ld b, h                                       ; $597b: $44
    add c                                         ; $597c: $81
    rrca                                          ; $597d: $0f
    add b                                         ; $597e: $80
    inc b                                         ; $597f: $04
    ld c, $11                                     ; $5980: $0e $11
    nop                                           ; $5982: $00
    add b                                         ; $5983: $80
    ld b, $47                                     ; $5984: $06 $47
    add c                                         ; $5986: $81
    inc de                                        ; $5987: $13
    add b                                         ; $5988: $80
    inc bc                                        ; $5989: $03
    ld c, l                                       ; $598a: $4d
    add c                                         ; $598b: $81
    inc e                                         ; $598c: $1c
    add b                                         ; $598d: $80
    inc b                                         ; $598e: $04
    dec de                                        ; $598f: $1b
    ld c, $00                                     ; $5990: $0e $00
    add c                                         ; $5992: $81
    cpl                                           ; $5993: $2f
    dec b                                         ; $5994: $05
    nop                                           ; $5995: $00
    add b                                         ; $5996: $80
    ld [$151f], sp                                ; $5997: $08 $1f $15
    nop                                           ; $599a: $00
    add e                                         ; $599b: $83
    cpl                                           ; $599c: $2f
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    add b                                         ; $599f: $80
    ld [$0427], sp                                ; $59a0: $08 $27 $04
    nop                                           ; $59a3: $00
    add c                                         ; $59a4: $81
    cpl                                           ; $59a5: $2f
    inc c                                         ; $59a6: $0c
    nop                                           ; $59a7: $00
    add c                                         ; $59a8: $81
    ld e, h                                       ; $59a9: $5c
    ld [de], a                                    ; $59aa: $12
    ld h, b                                       ; $59ab: $60
    add c                                         ; $59ac: $81
    ld e, l                                       ; $59ad: $5d
    inc c                                         ; $59ae: $0c
    nop                                           ; $59af: $00
    add c                                         ; $59b0: $81
    ld h, c                                       ; $59b1: $61
    ld [de], a                                    ; $59b2: $12
    nop                                           ; $59b3: $00
    add c                                         ; $59b4: $81
    ld h, d                                       ; $59b5: $62
    inc c                                         ; $59b6: $0c
    nop                                           ; $59b7: $00
    add c                                         ; $59b8: $81
    ld h, c                                       ; $59b9: $61
    ld [de], a                                    ; $59ba: $12
    nop                                           ; $59bb: $00
    add c                                         ; $59bc: $81
    ld h, d                                       ; $59bd: $62
    inc c                                         ; $59be: $0c
    nop                                           ; $59bf: $00
    add c                                         ; $59c0: $81
    ld h, c                                       ; $59c1: $61
    inc c                                         ; $59c2: $0c
    nop                                           ; $59c3: $00
    add a                                         ; $59c4: $87
    ld h, e                                       ; $59c5: $63
    ld h, l                                       ; $59c6: $65
    nop                                           ; $59c7: $00
    nop                                           ; $59c8: $00
    ld h, a                                       ; $59c9: $67
    ld l, c                                       ; $59ca: $69
    ld h, d                                       ; $59cb: $62
    inc c                                         ; $59cc: $0c
    nop                                           ; $59cd: $00
    add c                                         ; $59ce: $81
    ld h, c                                       ; $59cf: $61
    inc c                                         ; $59d0: $0c
    nop                                           ; $59d1: $00
    add a                                         ; $59d2: $87
    ld h, h                                       ; $59d3: $64
    ld h, [hl]                                    ; $59d4: $66
    nop                                           ; $59d5: $00
    ld l, e                                       ; $59d6: $6b
    ld l, b                                       ; $59d7: $68
    ld l, d                                       ; $59d8: $6a
    ld h, d                                       ; $59d9: $62
    inc c                                         ; $59da: $0c
    nop                                           ; $59db: $00
    add c                                         ; $59dc: $81
    ld e, [hl]                                    ; $59dd: $5e
    ld [de], a                                    ; $59de: $12
    ld h, b                                       ; $59df: $60
    add c                                         ; $59e0: $81
    ld e, a                                       ; $59e1: $5f
    ld [de], a                                    ; $59e2: $12
    nop                                           ; $59e3: $00
    add c                                         ; $59e4: $81
    cpl                                           ; $59e5: $2f
    ld a, [bc]                                    ; $59e6: $0a
    nop                                           ; $59e7: $00
    add c                                         ; $59e8: $81
    cpl                                           ; $59e9: $2f
    stop                                          ; $59ea: $10 $00
    add [hl]                                      ; $59ec: $86
    cpl                                           ; $59ed: $2f
    nop                                           ; $59ee: $00
    nop                                           ; $59ef: $00
    cpl                                           ; $59f0: $2f
    nop                                           ; $59f1: $00
    nop                                           ; $59f2: $00
    add b                                         ; $59f3: $80
    inc b                                         ; $59f4: $04
    ld d, b                                       ; $59f5: $50
    inc d                                         ; $59f6: $14
    nop                                           ; $59f7: $00
    add c                                         ; $59f8: $81
    cpl                                           ; $59f9: $2f
    rlca                                          ; $59fa: $07
    nop                                           ; $59fb: $00
    add b                                         ; $59fc: $80
    inc b                                         ; $59fd: $04
    ld d, h                                       ; $59fe: $54
    inc bc                                        ; $59ff: $03
    nop                                           ; $5a00: $00
    add h                                         ; $5a01: $84
    cpl                                           ; $5a02: $2f
    nop                                           ; $5a03: $00
    cpl                                           ; $5a04: $2f
    cpl                                           ; $5a05: $2f
    ld de, $8400                                  ; $5a06: $11 $00 $84
    cpl                                           ; $5a09: $2f
    cpl                                           ; $5a0a: $2f
    nop                                           ; $5a0b: $00
    nop                                           ; $5a0c: $00
    add b                                         ; $5a0d: $80
    inc b                                         ; $5a0e: $04
    ld e, b                                       ; $5a0f: $58
    add e                                         ; $5a10: $83
    nop                                           ; $5a11: $00
    nop                                           ; $5a12: $00
    cpl                                           ; $5a13: $2f

jr_004_5a14:
    ld de, $0000                                  ; $5a14: $11 $00 $00
    nop                                           ; $5a17: $00
    sbc b                                         ; $5a18: $98
    ld c, l                                       ; $5a19: $4d
    nop                                           ; $5a1a: $00
    add d                                         ; $5a1b: $82
    ld bc, $1e02                                  ; $5a1c: $01 $02 $1e
    nop                                           ; $5a1f: $00
    add d                                         ; $5a20: $82
    inc bc                                        ; $5a21: $03
    inc b                                         ; $5a22: $04
    ld d, $00                                     ; $5a23: $16 $00
    add b                                         ; $5a25: $80
    dec c                                         ; $5a26: $0d
    dec b                                         ; $5a27: $05
    inc de                                        ; $5a28: $13
    nop                                           ; $5a29: $00
    add b                                         ; $5a2a: $80
    dec c                                         ; $5a2b: $0d
    ld [de], a                                    ; $5a2c: $12
    dec d                                         ; $5a2d: $15
    nop                                           ; $5a2e: $00
    add b                                         ; $5a2f: $80
    ld [$181f], sp                                ; $5a30: $08 $1f $18

jr_004_5a33:
    nop                                           ; $5a33: $00
    add b                                         ; $5a34: $80
    ld [$1427], sp                                ; $5a35: $08 $27 $14
    nop                                           ; $5a38: $00
    add d                                         ; $5a39: $82
    cpl                                           ; $5a3a: $2f
    cpl                                           ; $5a3b: $2f
    ld a, [bc]                                    ; $5a3c: $0a
    nop                                           ; $5a3d: $00
    add h                                         ; $5a3e: $84
    cpl                                           ; $5a3f: $2f
    cpl                                           ; $5a40: $2f
    nop                                           ; $5a41: $00
    cpl                                           ; $5a42: $2f
    dec c                                         ; $5a43: $0d
    nop                                           ; $5a44: $00
    add a                                         ; $5a45: $87
    cpl                                           ; $5a46: $2f
    nop                                           ; $5a47: $00
    cpl                                           ; $5a48: $2f
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    cpl                                           ; $5a4b: $2f
    cpl                                           ; $5a4c: $2f
    ld b, $00                                     ; $5a4d: $06 $00
    add a                                         ; $5a4f: $87
    cpl                                           ; $5a50: $2f
    cpl                                           ; $5a51: $2f
    nop                                           ; $5a52: $00
    nop                                           ; $5a53: $00
    cpl                                           ; $5a54: $2f
    nop                                           ; $5a55: $00
    cpl                                           ; $5a56: $2f
    dec l                                         ; $5a57: $2d
    nop                                           ; $5a58: $00
    add [hl]                                      ; $5a59: $86
    cpl                                           ; $5a5a: $2f
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    cpl                                           ; $5a5d: $2f
    nop                                           ; $5a5e: $00
    cpl                                           ; $5a5f: $2f
    dec b                                         ; $5a60: $05
    nop                                           ; $5a61: $00
    adc b                                         ; $5a62: $88
    cpl                                           ; $5a63: $2f
    cpl                                           ; $5a64: $2f
    nop                                           ; $5a65: $00
    nop                                           ; $5a66: $00
    cpl                                           ; $5a67: $2f
    nop                                           ; $5a68: $00
    nop                                           ; $5a69: $00
    cpl                                           ; $5a6a: $2f
    ld a, [de]                                    ; $5a6b: $1a
    nop                                           ; $5a6c: $00
    add h                                         ; $5a6d: $84
    cpl                                           ; $5a6e: $2f
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    cpl                                           ; $5a71: $2f
    stop                                          ; $5a72: $10 $00
    add c                                         ; $5a74: $81
    cpl                                           ; $5a75: $2f
    inc bc                                        ; $5a76: $03
    nop                                           ; $5a77: $00
    add d                                         ; $5a78: $82
    cpl                                           ; $5a79: $2f
    cpl                                           ; $5a7a: $2f
    inc bc                                        ; $5a7b: $03
    nop                                           ; $5a7c: $00
    add c                                         ; $5a7d: $81
    cpl                                           ; $5a7e: $2f
    dec d                                         ; $5a7f: $15
    nop                                           ; $5a80: $00
    add c                                         ; $5a81: $81
    cpl                                           ; $5a82: $2f
    rrca                                          ; $5a83: $0f
    nop                                           ; $5a84: $00
    add d                                         ; $5a85: $82
    cpl                                           ; $5a86: $2f
    cpl                                           ; $5a87: $2f
    stop                                          ; $5a88: $10 $00
    add c                                         ; $5a8a: $81
    cpl                                           ; $5a8b: $2f
    inc b                                         ; $5a8c: $04
    nop                                           ; $5a8d: $00
    add b                                         ; $5a8e: $80
    inc b                                         ; $5a8f: $04
    jr nc, jr_004_5a14                            ; $5a90: $30 $82

    nop                                           ; $5a92: $00
    cpl                                           ; $5a93: $2f
    inc bc                                        ; $5a94: $03
    nop                                           ; $5a95: $00
    add c                                         ; $5a96: $81
    cpl                                           ; $5a97: $2f
    dec d                                         ; $5a98: $15
    nop                                           ; $5a99: $00
    add c                                         ; $5a9a: $81
    cpl                                           ; $5a9b: $2f
    add b                                         ; $5a9c: $80
    inc b                                         ; $5a9d: $04
    inc [hl]                                      ; $5a9e: $34
    add h                                         ; $5a9f: $84
    inc a                                         ; $5aa0: $3c
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    cpl                                           ; $5aa3: $2f
    stop                                          ; $5aa4: $10 $00
    add l                                         ; $5aa6: $85
    cpl                                           ; $5aa7: $2f
    nop                                           ; $5aa8: $00
    nop                                           ; $5aa9: $00
    cpl                                           ; $5aaa: $2f
    cpl                                           ; $5aab: $2f
    inc bc                                        ; $5aac: $03
    nop                                           ; $5aad: $00
    add b                                         ; $5aae: $80
    inc b                                         ; $5aaf: $04
    jr c, jr_004_5a33                             ; $5ab0: $38 $81

    dec a                                         ; $5ab2: $3d
    dec b                                         ; $5ab3: $05
    nop                                           ; $5ab4: $00
    add d                                         ; $5ab5: $82
    cpl                                           ; $5ab6: $2f
    cpl                                           ; $5ab7: $2f
    inc c                                         ; $5ab8: $0c
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    sbc b                                         ; $5abc: $98
    inc hl                                        ; $5abd: $23
    nop                                           ; $5abe: $00
    add c                                         ; $5abf: $81
    inc a                                         ; $5ac0: $3c
    inc b                                         ; $5ac1: $04
    nop                                           ; $5ac2: $00
    add c                                         ; $5ac3: $81
    inc a                                         ; $5ac4: $3c
    inc b                                         ; $5ac5: $04
    nop                                           ; $5ac6: $00
    add c                                         ; $5ac7: $81
    inc a                                         ; $5ac8: $3c
    dec b                                         ; $5ac9: $05
    nop                                           ; $5aca: $00
    add c                                         ; $5acb: $81
    inc a                                         ; $5acc: $3c
    add hl, de                                    ; $5acd: $19
    nop                                           ; $5ace: $00
    add d                                         ; $5acf: $82
    ld a, [hl+]                                   ; $5ad0: $2a
    dec hl                                        ; $5ad1: $2b
    ld [de], a                                    ; $5ad2: $12
    nop                                           ; $5ad3: $00
    add c                                         ; $5ad4: $81
    inc a                                         ; $5ad5: $3c
    dec bc                                        ; $5ad6: $0b
    nop                                           ; $5ad7: $00
    add d                                         ; $5ad8: $82
    inc l                                         ; $5ad9: $2c
    dec l                                         ; $5ada: $2d
    inc d                                         ; $5adb: $14
    nop                                           ; $5adc: $00
    add d                                         ; $5add: $82
    ld bc, $8000                                  ; $5ade: $01 $00 $80
    inc bc                                        ; $5ae1: $03
    ld [bc], a                                    ; $5ae2: $02
    add d                                         ; $5ae3: $82
    nop                                           ; $5ae4: $00
    nop                                           ; $5ae5: $00
    add b                                         ; $5ae6: $80
    ld [$1105], sp                                ; $5ae7: $08 $05 $11
    nop                                           ; $5aea: $00
    add b                                         ; $5aeb: $80
    inc bc                                        ; $5aec: $03
    dec c                                         ; $5aed: $0d
    add h                                         ; $5aee: $84
    nop                                           ; $5aef: $00
    stop                                          ; $5af0: $10 $00

jr_004_5af2:
    nop                                           ; $5af2: $00
    add b                                         ; $5af3: $80
    add hl, bc                                    ; $5af4: $09
    ld de, $000e                                  ; $5af5: $11 $0e $00
    add c                                         ; $5af8: $81
    inc a                                         ; $5af9: $3c
    dec b                                         ; $5afa: $05
    nop                                           ; $5afb: $00
    add b                                         ; $5afc: $80
    ld [$151a], sp                                ; $5afd: $08 $1a $15
    nop                                           ; $5b00: $00
    add e                                         ; $5b01: $83
    inc a                                         ; $5b02: $3c
    nop                                           ; $5b03: $00
    nop                                           ; $5b04: $00
    add b                                         ; $5b05: $80
    ld [$0422], sp                                ; $5b06: $08 $22 $04
    nop                                           ; $5b09: $00
    add c                                         ; $5b0a: $81
    inc a                                         ; $5b0b: $3c
    dec e                                         ; $5b0c: $1d
    nop                                           ; $5b0d: $00
    add c                                         ; $5b0e: $81
    inc a                                         ; $5b0f: $3c
    rrca                                          ; $5b10: $0f
    nop                                           ; $5b11: $00
    add c                                         ; $5b12: $81
    inc a                                         ; $5b13: $3c
    inc b                                         ; $5b14: $04
    nop                                           ; $5b15: $00
    add c                                         ; $5b16: $81
    inc a                                         ; $5b17: $3c
    inc h                                         ; $5b18: $24
    nop                                           ; $5b19: $00
    add c                                         ; $5b1a: $81
    inc a                                         ; $5b1b: $3c
    ld hl, $8100                                  ; $5b1c: $21 $00 $81
    inc a                                         ; $5b1f: $3c
    inc bc                                        ; $5b20: $03
    nop                                           ; $5b21: $00
    add c                                         ; $5b22: $81
    inc a                                         ; $5b23: $3c
    ld c, $00                                     ; $5b24: $0e $00
    add c                                         ; $5b26: $81
    inc a                                         ; $5b27: $3c
    inc bc                                        ; $5b28: $03
    nop                                           ; $5b29: $00
    add c                                         ; $5b2a: $81
    inc a                                         ; $5b2b: $3c
    inc bc                                        ; $5b2c: $03
    nop                                           ; $5b2d: $00
    add c                                         ; $5b2e: $81
    inc a                                         ; $5b2f: $3c
    ld hl, $8100                                  ; $5b30: $21 $00 $81
    inc a                                         ; $5b33: $3c
    inc bc                                        ; $5b34: $03
    nop                                           ; $5b35: $00
    add c                                         ; $5b36: $81
    inc a                                         ; $5b37: $3c
    rla                                           ; $5b38: $17
    nop                                           ; $5b39: $00
    add c                                         ; $5b3a: $81
    inc a                                         ; $5b3b: $3c
    ld a, [bc]                                    ; $5b3c: $0a
    nop                                           ; $5b3d: $00
    add c                                         ; $5b3e: $81
    inc a                                         ; $5b3f: $3c
    stop                                          ; $5b40: $10 $00
    add [hl]                                      ; $5b42: $86
    inc a                                         ; $5b43: $3c
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00
    inc a                                         ; $5b46: $3c
    nop                                           ; $5b47: $00
    inc sp                                        ; $5b48: $33
    add b                                         ; $5b49: $80
    inc b                                         ; $5b4a: $04
    ld l, $82                                     ; $5b4b: $2e $82
    nop                                           ; $5b4d: $00
    inc a                                         ; $5b4e: $3c
    ld [de], a                                    ; $5b4f: $12
    nop                                           ; $5b50: $00
    add e                                         ; $5b51: $83
    inc a                                         ; $5b52: $3c
    nop                                           ; $5b53: $00
    inc a                                         ; $5b54: $3c
    inc b                                         ; $5b55: $04
    nop                                           ; $5b56: $00
    add c                                         ; $5b57: $81
    ld [hl-], a                                   ; $5b58: $32
    add b                                         ; $5b59: $80
    inc b                                         ; $5b5a: $04
    inc [hl]                                      ; $5b5b: $34
    add a                                         ; $5b5c: $87
    inc sp                                        ; $5b5d: $33
    nop                                           ; $5b5e: $00
    nop                                           ; $5b5f: $00
    inc a                                         ; $5b60: $3c
    nop                                           ; $5b61: $00
    inc a                                         ; $5b62: $3c
    inc a                                         ; $5b63: $3c
    ld de, $8400                                  ; $5b64: $11 $00 $84
    inc a                                         ; $5b67: $3c
    inc a                                         ; $5b68: $3c
    nop                                           ; $5b69: $00
    nop                                           ; $5b6a: $00
    add b                                         ; $5b6b: $80
    inc b                                         ; $5b6c: $04
    jr c, jr_004_5af2                             ; $5b6d: $38 $83

    nop                                           ; $5b6f: $00
    nop                                           ; $5b70: $00
    inc a                                         ; $5b71: $3c
    ld de, $0000                                  ; $5b72: $11 $00 $00
    nop                                           ; $5b75: $00
    sbc b                                         ; $5b76: $98
    inc hl                                        ; $5b77: $23
    nop                                           ; $5b78: $00
    add c                                         ; $5b79: $81
    inc a                                         ; $5b7a: $3c
    inc b                                         ; $5b7b: $04
    nop                                           ; $5b7c: $00
    add c                                         ; $5b7d: $81
    inc a                                         ; $5b7e: $3c
    inc b                                         ; $5b7f: $04
    nop                                           ; $5b80: $00
    add c                                         ; $5b81: $81
    inc a                                         ; $5b82: $3c
    dec b                                         ; $5b83: $05
    nop                                           ; $5b84: $00
    add c                                         ; $5b85: $81
    inc a                                         ; $5b86: $3c
    add hl, de                                    ; $5b87: $19
    nop                                           ; $5b88: $00
    add d                                         ; $5b89: $82
    ld a, [hl+]                                   ; $5b8a: $2a
    dec hl                                        ; $5b8b: $2b
    ld [de], a                                    ; $5b8c: $12
    nop                                           ; $5b8d: $00
    add c                                         ; $5b8e: $81
    inc a                                         ; $5b8f: $3c
    dec bc                                        ; $5b90: $0b
    nop                                           ; $5b91: $00
    add d                                         ; $5b92: $82
    inc l                                         ; $5b93: $2c
    dec l                                         ; $5b94: $2d
    inc de                                        ; $5b95: $13
    nop                                           ; $5b96: $00
    sub b                                         ; $5b97: $90
    dec a                                         ; $5b98: $3d
    nop                                           ; $5b99: $00
    ld b, b                                       ; $5b9a: $40
    ld b, d                                       ; $5b9b: $42
    nop                                           ; $5b9c: $00
    ld b, l                                       ; $5b9d: $45
    nop                                           ; $5b9e: $00
    nop                                           ; $5b9f: $00
    ld b, a                                       ; $5ba0: $47
    ld c, c                                       ; $5ba1: $49
    ld c, e                                       ; $5ba2: $4b
    ld c, l                                       ; $5ba3: $4d
    ld c, a                                       ; $5ba4: $4f
    ld d, c                                       ; $5ba5: $51
    ld d, e                                       ; $5ba6: $53
    ld d, l                                       ; $5ba7: $55
    stop                                          ; $5ba8: $10 $00
    sub c                                         ; $5baa: $91
    ld a, $3f                                     ; $5bab: $3e $3f
    ld b, c                                       ; $5bad: $41
    ld b, e                                       ; $5bae: $43
    ld b, h                                       ; $5baf: $44
    ld b, [hl]                                    ; $5bb0: $46
    nop                                           ; $5bb1: $00
    nop                                           ; $5bb2: $00
    ld c, b                                       ; $5bb3: $48
    ld c, d                                       ; $5bb4: $4a
    ld c, h                                       ; $5bb5: $4c
    ld c, [hl]                                    ; $5bb6: $4e
    ld d, b                                       ; $5bb7: $50
    ld d, d                                       ; $5bb8: $52
    ld d, h                                       ; $5bb9: $54
    ld d, [hl]                                    ; $5bba: $56
    ld d, a                                       ; $5bbb: $57
    ld c, $00                                     ; $5bbc: $0e $00
    add c                                         ; $5bbe: $81
    inc a                                         ; $5bbf: $3c
    dec b                                         ; $5bc0: $05
    nop                                           ; $5bc1: $00
    add b                                         ; $5bc2: $80
    ld [$151a], sp                                ; $5bc3: $08 $1a $15
    nop                                           ; $5bc6: $00
    add e                                         ; $5bc7: $83
    inc a                                         ; $5bc8: $3c
    nop                                           ; $5bc9: $00
    nop                                           ; $5bca: $00
    add b                                         ; $5bcb: $80
    ld [$0422], sp                                ; $5bcc: $08 $22 $04
    nop                                           ; $5bcf: $00
    add c                                         ; $5bd0: $81
    inc a                                         ; $5bd1: $3c
    dec e                                         ; $5bd2: $1d
    nop                                           ; $5bd3: $00
    add c                                         ; $5bd4: $81
    inc a                                         ; $5bd5: $3c
    rrca                                          ; $5bd6: $0f
    nop                                           ; $5bd7: $00
    add c                                         ; $5bd8: $81
    inc a                                         ; $5bd9: $3c
    inc b                                         ; $5bda: $04
    nop                                           ; $5bdb: $00
    add c                                         ; $5bdc: $81
    inc a                                         ; $5bdd: $3c
    inc h                                         ; $5bde: $24
    nop                                           ; $5bdf: $00
    add c                                         ; $5be0: $81
    inc a                                         ; $5be1: $3c
    ld hl, $8100                                  ; $5be2: $21 $00 $81
    inc a                                         ; $5be5: $3c
    inc bc                                        ; $5be6: $03
    nop                                           ; $5be7: $00
    add c                                         ; $5be8: $81
    inc a                                         ; $5be9: $3c
    ld c, $00                                     ; $5bea: $0e $00
    add c                                         ; $5bec: $81
    inc a                                         ; $5bed: $3c
    inc bc                                        ; $5bee: $03
    nop                                           ; $5bef: $00
    add c                                         ; $5bf0: $81
    inc a                                         ; $5bf1: $3c
    inc bc                                        ; $5bf2: $03
    nop                                           ; $5bf3: $00
    add c                                         ; $5bf4: $81
    inc a                                         ; $5bf5: $3c
    ld hl, $8100                                  ; $5bf6: $21 $00 $81
    inc a                                         ; $5bf9: $3c
    inc bc                                        ; $5bfa: $03
    nop                                           ; $5bfb: $00
    add c                                         ; $5bfc: $81
    inc a                                         ; $5bfd: $3c
    rla                                           ; $5bfe: $17
    nop                                           ; $5bff: $00
    add c                                         ; $5c00: $81
    inc a                                         ; $5c01: $3c
    ld a, [bc]                                    ; $5c02: $0a
    nop                                           ; $5c03: $00
    add c                                         ; $5c04: $81
    inc a                                         ; $5c05: $3c
    stop                                          ; $5c06: $10 $00
    add [hl]                                      ; $5c08: $86
    inc a                                         ; $5c09: $3c
    nop                                           ; $5c0a: $00
    nop                                           ; $5c0b: $00
    inc a                                         ; $5c0c: $3c
    nop                                           ; $5c0d: $00
    nop                                           ; $5c0e: $00
    add b                                         ; $5c0f: $80
    inc b                                         ; $5c10: $04
    ld e, b                                       ; $5c11: $58
    add d                                         ; $5c12: $82
    nop                                           ; $5c13: $00
    inc a                                         ; $5c14: $3c
    ld [de], a                                    ; $5c15: $12
    nop                                           ; $5c16: $00

jr_004_5c17:
    add e                                         ; $5c17: $83
    inc a                                         ; $5c18: $3c
    nop                                           ; $5c19: $00
    inc a                                         ; $5c1a: $3c
    inc b                                         ; $5c1b: $04
    nop                                           ; $5c1c: $00
    add c                                         ; $5c1d: $81
    ld h, h                                       ; $5c1e: $64
    add b                                         ; $5c1f: $80
    inc b                                         ; $5c20: $04
    ld e, h                                       ; $5c21: $5c
    add a                                         ; $5c22: $87
    ld h, l                                       ; $5c23: $65
    nop                                           ; $5c24: $00
    nop                                           ; $5c25: $00
    inc a                                         ; $5c26: $3c
    nop                                           ; $5c27: $00
    inc a                                         ; $5c28: $3c
    inc a                                         ; $5c29: $3c
    ld de, $8400                                  ; $5c2a: $11 $00 $84
    inc a                                         ; $5c2d: $3c
    inc a                                         ; $5c2e: $3c
    nop                                           ; $5c2f: $00
    nop                                           ; $5c30: $00
    add b                                         ; $5c31: $80
    inc b                                         ; $5c32: $04
    ld h, b                                       ; $5c33: $60
    add e                                         ; $5c34: $83
    nop                                           ; $5c35: $00
    nop                                           ; $5c36: $00
    inc a                                         ; $5c37: $3c
    ld de, $0000                                  ; $5c38: $11 $00 $00
    ld c, $00                                     ; $5c3b: $0e $00
    add e                                         ; $5c3d: $83
    inc d                                         ; $5c3e: $14
    inc e                                         ; $5c3f: $1c
    ld [$001b], sp                                ; $5c40: $08 $1b $00
    add [hl]                                      ; $5c43: $86
    ld [$1408], sp                                ; $5c44: $08 $08 $14
    inc d                                         ; $5c47: $14
    ld [$1a08], sp                                ; $5c48: $08 $08 $1a
    nop                                           ; $5c4b: $00
    add [hl]                                      ; $5c4c: $86
    inc e                                         ; $5c4d: $1c
    ld [$1414], sp                                ; $5c4e: $08 $14 $14
    inc e                                         ; $5c51: $1c
    ld [$0014], sp                                ; $5c52: $08 $14 $00
    add b                                         ; $5c55: $80
    add e                                         ; $5c56: $83
    add hl, bc                                    ; $5c57: $09
    jr nc, jr_004_5c91                            ; $5c58: $30 $37

    scf                                           ; $5c5a: $37
    jr nc, jr_004_5c8d                            ; $5c5b: $30 $30

    jr nc, @+$35                                  ; $5c5d: $30 $33

    scf                                           ; $5c5f: $37
    ld [hl], $84                                  ; $5c60: $36 $84
    ccf                                           ; $5c62: $3f
    scf                                           ; $5c63: $37
    dec sp                                        ; $5c64: $3b
    dec de                                        ; $5c65: $1b
    ld [$0400], sp                                ; $5c66: $08 $00 $04
    ret nz                                        ; $5c69: $c0

    inc b                                         ; $5c6a: $04
    ldh [$ff08], a                                ; $5c6b: $e0 $08
    ret nz                                        ; $5c6d: $c0

    adc b                                         ; $5c6e: $88
    and $c6                                       ; $5c6f: $e6 $c6
    rst RST_30                                    ; $5c71: $f7
    and $f3                                       ; $5c72: $e6 $f3
    di                                            ; $5c74: $f3
    and e                                         ; $5c75: $a3
    add e                                         ; $5c76: $83
    ld [$0800], sp                                ; $5c77: $08 $00 $08
    ld h, b                                       ; $5c7a: $60
    ld b, $63                                     ; $5c7b: $06 $63
    add c                                         ; $5c7d: $81
    ld h, a                                       ; $5c7e: $67
    inc bc                                        ; $5c7f: $03
    ld h, [hl]                                    ; $5c80: $66
    add [hl]                                      ; $5c81: $86
    ld l, [hl]                                    ; $5c82: $6e
    ld l, h                                       ; $5c83: $6c
    ld a, h                                       ; $5c84: $7c
    ld a, h                                       ; $5c85: $7c
    ld a, b                                       ; $5c86: $78
    ld [hl], b                                    ; $5c87: $70
    ld a, [bc]                                    ; $5c88: $0a
    nop                                           ; $5c89: $00
    inc b                                         ; $5c8a: $04
    jr jr_004_5c17                                ; $5c8b: $18 $8a

jr_004_5c8d:
    inc e                                         ; $5c8d: $1c
    inc e                                         ; $5c8e: $1c
    inc a                                         ; $5c8f: $3c
    inc e                                         ; $5c90: $1c

jr_004_5c91:
    ld a, $3e                                     ; $5c91: $3e $3e
    ld [hl], $36                                  ; $5c93: $36 $36
    halt                                          ; $5c95: $76
    ld [hl], $80                                  ; $5c96: $36 $80
    add e                                         ; $5c98: $83
    inc b                                         ; $5c99: $04
    ld h, a                                       ; $5c9a: $67
    ld h, e                                       ; $5c9b: $63
    inc bc                                        ; $5c9c: $03
    inc bc                                        ; $5c9d: $03
    ld [$0400], sp                                ; $5c9e: $08 $00 $04
    ret c                                         ; $5ca1: $d8

    ld b, $6c                                     ; $5ca2: $06 $6c
    ld [$8200], sp                                ; $5ca4: $08 $00 $82
    ld bc, $0400                                  ; $5ca7: $01 $00 $04
    ld bc, $0008                                  ; $5caa: $01 $08 $00
    inc c                                         ; $5cad: $0c
    ret c                                         ; $5cae: $d8

    ld b, $db                                     ; $5caf: $06 $db

jr_004_5cb1:
    add [hl]                                      ; $5cb1: $86
    rst RST_18                                    ; $5cb2: $df
    sbc $de                                       ; $5cb3: $de $de
    sbc [hl]                                      ; $5cb5: $9e
    sbc h                                         ; $5cb6: $9c
    sbc b                                         ; $5cb7: $98
    ld [$8200], sp                                ; $5cb8: $08 $00 $82
    jr nc, jr_004_5ced                            ; $5cbb: $30 $30

    inc b                                         ; $5cbd: $04
    cp $84                                        ; $5cbe: $fe $84
    ld [hl], b                                    ; $5cc0: $70
    jr nc, jr_004_5cb1                            ; $5cc1: $30 $ee

    ld h, [hl]                                    ; $5cc3: $66
    add b                                         ; $5cc4: $80
    add e                                         ; $5cc5: $83
    rlca                                          ; $5cc6: $07
    cp $38                                        ; $5cc7: $fe $38
    ld a, h                                       ; $5cc9: $7c
    db $ec                                        ; $5cca: $ec
    ret nz                                        ; $5ccb: $c0

    cp $7e                                        ; $5ccc: $fe $7e
    ld [$0400], sp                                ; $5cce: $08 $00 $04
    ccf                                           ; $5cd1: $3f
    add l                                         ; $5cd2: $85
    inc sp                                        ; $5cd3: $33
    inc sp                                        ; $5cd4: $33
    ld [hl], e                                    ; $5cd5: $73
    inc sp                                        ; $5cd6: $33
    ld [hl], e                                    ; $5cd7: $73
    inc bc                                        ; $5cd8: $03
    ld h, e                                       ; $5cd9: $63
    add e                                         ; $5cda: $83
    inc bc                                        ; $5cdb: $03
    inc bc                                        ; $5cdc: $03
    rlca                                          ; $5cdd: $07
    inc bc                                        ; $5cde: $03
    ld b, $86                                     ; $5cdf: $06 $86
    ld c, $0c                                     ; $5ce1: $0e $0c

Call_004_5ce3:
    inc a                                         ; $5ce3: $3c
    inc a                                         ; $5ce4: $3c
    jr c, jr_004_5d17                             ; $5ce5: $38 $30

    ld [$0c00], sp                                ; $5ce7: $08 $00 $0c
    ld h, e                                       ; $5cea: $63
    add e                                         ; $5ceb: $83
    inc bc                                        ; $5cec: $03

jr_004_5ced:
    inc bc                                        ; $5ced: $03
    rlca                                          ; $5cee: $07
    inc bc                                        ; $5cef: $03
    ld b, $86                                     ; $5cf0: $06 $86
    ld c, $0c                                     ; $5cf2: $0e $0c
    inc e                                         ; $5cf4: $1c
    inc e                                         ; $5cf5: $1c
    jr @+$1a                                      ; $5cf6: $18 $18

    ld [$0400], sp                                ; $5cf8: $08 $00 $04
    ld a, a                                       ; $5cfb: $7f
    add b                                         ; $5cfc: $80
    add e                                         ; $5cfd: $83
    ld b, $03                                     ; $5cfe: $06 $03
    dec de                                        ; $5d00: $1b
    dec de                                        ; $5d01: $1b
    rra                                           ; $5d02: $1f
    ld e, $18                                     ; $5d03: $1e $18
    adc b                                         ; $5d05: $88
    jr c, jr_004_5d20                             ; $5d06: $38 $18

    jr nc, @+$32                                  ; $5d08: $30 $30

    ld [hl], b                                    ; $5d0a: $70
    ld [hl], b                                    ; $5d0b: $70
    ld h, b                                       ; $5d0c: $60
    ld h, b                                       ; $5d0d: $60
    ld [$1000], sp                                ; $5d0e: $08 $00 $10
    ld h, b                                       ; $5d11: $60
    adc b                                         ; $5d12: $88
    ld h, e                                       ; $5d13: $63
    ld h, e                                       ; $5d14: $63
    ld [hl], a                                    ; $5d15: $77
    ld h, e                                       ; $5d16: $63

jr_004_5d17:
    ld a, a                                       ; $5d17: $7f
    ld a, $3e                                     ; $5d18: $3e $3e
    inc e                                         ; $5d1a: $1c
    ld [$8000], sp                                ; $5d1b: $08 $00 $80
    add e                                         ; $5d1e: $83
    add hl, bc                                    ; $5d1f: $09

jr_004_5d20:
    inc c                                         ; $5d20: $0c
    ld a, a                                       ; $5d21: $7f
    ld a, a                                       ; $5d22: $7f
    inc c                                         ; $5d23: $0c
    ld a, a                                       ; $5d24: $7f
    ld a, a                                       ; $5d25: $7f
    inc c                                         ; $5d26: $0c
    inc a                                         ; $5d27: $3c
    ld a, [hl]                                    ; $5d28: $7e
    add [hl]                                      ; $5d29: $86
    ld l, [hl]                                    ; $5d2a: $6e
    ld l, a                                       ; $5d2b: $6f
    ld a, a                                       ; $5d2c: $7f
    ld a, a                                       ; $5d2d: $7f
    ld a, [hl-]                                   ; $5d2e: $3a
    dec sp                                        ; $5d2f: $3b
    ld [$0400], sp                                ; $5d30: $08 $00 $04
    jr nc, jr_004_5d39                            ; $5d33: $30 $04

    ld a, h                                       ; $5d35: $7c
    add b                                         ; $5d36: $80
    add e                                         ; $5d37: $83
    rlca                                          ; $5d38: $07

jr_004_5d39:
    jr nc, jr_004_5d72                            ; $5d39: $30 $37

    scf                                           ; $5d3b: $37
    jr nc, jr_004_5d6e                            ; $5d3c: $30 $30

    inc [hl]                                      ; $5d3e: $34
    scf                                           ; $5d3f: $37
    add d                                         ; $5d40: $82
    scf                                           ; $5d41: $37
    inc sp                                        ; $5d42: $33
    inc d                                         ; $5d43: $14
    nop                                           ; $5d44: $00
    add b                                         ; $5d45: $80
    add e                                         ; $5d46: $83
    ld b, $9e                                     ; $5d47: $06 $9e
    cp a                                          ; $5d49: $bf
    inc sp                                        ; $5d4a: $33
    inc sp                                        ; $5d4b: $33
    cp a                                          ; $5d4c: $bf
    sbc [hl]                                      ; $5d4d: $9e
    ld b, $00                                     ; $5d4e: $06 $00
    rst RST_38                                    ; $5d50: $ff
    ccf                                           ; $5d51: $3f
    ccf                                           ; $5d52: $3f
    scf                                           ; $5d53: $37
    jr z, jr_004_5d8a                             ; $5d54: $28 $34

    jr z, jr_004_5d8c                             ; $5d56: $28 $34

    jr z, jr_004_5d8e                             ; $5d58: $28 $34

    jr z, @+$36                                   ; $5d5a: $28 $34

    jr z, @+$36                                   ; $5d5c: $28 $34

    jr z, jr_004_5d94                             ; $5d5e: $28 $34

    jr z, @+$36                                   ; $5d60: $28 $34

    jr z, jr_004_5d98                             ; $5d62: $28 $34

    jr z, jr_004_5d9a                             ; $5d64: $28 $34

    jr z, jr_004_5d9c                             ; $5d66: $28 $34

    jr z, jr_004_5d88                             ; $5d68: $28 $1e

    jr jr_004_5d73                                ; $5d6a: $18 $07

    ld b, $07                                     ; $5d6c: $06 $07

jr_004_5d6e:
    dec b                                         ; $5d6e: $05
    ld a, e                                       ; $5d6f: $7b
    ld a, e                                       ; $5d70: $7b
    ld a, h                                       ; $5d71: $7c

jr_004_5d72:
    ld b, a                                       ; $5d72: $47

jr_004_5d73:
    ccf                                           ; $5d73: $3f
    inc sp                                        ; $5d74: $33
    rst RST_18                                    ; $5d75: $df
    sbc $a8                                       ; $5d76: $de $a8
    ld hl, sp-$2f                                 ; $5d78: $f8 $d1
    or b                                          ; $5d7a: $b0
    push af                                       ; $5d7b: $f5
    sub [hl]                                      ; $5d7c: $96
    or e                                          ; $5d7d: $b3
    jp nc, Jump_004_6869                          ; $5d7e: $d2 $69 $68

    ld e, h                                       ; $5d81: $5c
    ld c, h                                       ; $5d82: $4c
    or h                                          ; $5d83: $b4
    sbc h                                         ; $5d84: $9c
    or h                                          ; $5d85: $b4
    cp h                                          ; $5d86: $bc
    xor a                                         ; $5d87: $af

jr_004_5d88:
    xor [hl]                                      ; $5d88: $ae
    ld d, e                                       ; $5d89: $53

jr_004_5d8a:
    ld d, e                                       ; $5d8a: $53
    dec hl                                        ; $5d8b: $2b

jr_004_5d8c:
    ld a, [hl+]                                   ; $5d8c: $2a
    add hl, de                                    ; $5d8d: $19

jr_004_5d8e:
    add hl, de                                    ; $5d8e: $19
    sbc $de                                       ; $5d8f: $de $de
    ld a, $e2                                     ; $5d91: $3e $e2
    db $fc                                        ; $5d93: $fc

jr_004_5d94:
    call z, Call_004_7bfb                         ; $5d94: $cc $fb $7b
    ld d, l                                       ; $5d97: $55

jr_004_5d98:
    ccf                                           ; $5d98: $3f
    db $eb                                        ; $5d99: $eb

jr_004_5d9a:
    dec e                                         ; $5d9a: $1d
    xor a                                         ; $5d9b: $af

jr_004_5d9c:
    ld a, c                                       ; $5d9c: $79
    db $ed                                        ; $5d9d: $ed
    ld e, e                                       ; $5d9e: $5b
    sub $36                                       ; $5d9f: $d6 $36
    cp d                                          ; $5da1: $ba
    ld [hl], d                                    ; $5da2: $72
    xor l                                         ; $5da3: $ad
    ld a, c                                       ; $5da4: $79
    xor l                                         ; $5da5: $ad
    ld a, l                                       ; $5da6: $7d
    ld [hl], l                                    ; $5da7: $75
    push af                                       ; $5da8: $f5
    jp z, $d4ca                                   ; $5da9: $ca $ca $d4

    ld d, h                                       ; $5dac: $54
    sbc b                                         ; $5dad: $98
    sbc b                                         ; $5dae: $98
    jp nz, $f7c2                                  ; $5daf: $c2 $c2 $f7

    or a                                          ; $5db2: $b7
    ld a, e                                       ; $5db3: $7b
    ld e, d                                       ; $5db4: $5a
    ld [hl], h                                    ; $5db5: $74
    ld [hl], a                                    ; $5db6: $77
    ld l, $2b                                     ; $5db7: $2e $2b
    ld e, c                                       ; $5db9: $59
    ld d, c                                       ; $5dba: $51
    ld l, a                                       ; $5dbb: $6f
    ld a, c                                       ; $5dbc: $79
    sub $ae                                       ; $5dbd: $d6 $ae
    call nc, $c9ac                                ; $5dbf: $d4 $ac $c9
    cp b                                          ; $5dc2: $b8
    ld d, e                                       ; $5dc3: $53
    ld [hl], c                                    ; $5dc4: $71
    ld h, $23                                     ; $5dc5: $26 $23
    ld c, l                                       ; $5dc7: $4d
    ld b, [hl]                                    ; $5dc8: $46
    sbc d                                         ; $5dc9: $9a
    adc l                                         ; $5dca: $8d
    or a                                          ; $5dcb: $b7
    sub h                                         ; $5dcc: $94
    db $e3                                        ; $5dcd: $e3
    db $e3                                        ; $5dce: $e3
    jp Jump_004_43ff                              ; $5dcf: $c3 $ff $43


    rst RST_28                                    ; $5dd2: $ef
    db $ed                                        ; $5dd3: $ed
    sbc $5a                                       ; $5dd4: $de $5a
    ld l, $ee                                     ; $5dd6: $2e $ee
    ld [hl], h                                    ; $5dd8: $74
    call nc, $8a9a                                ; $5dd9: $d4 $9a $8a
    ld [hl], $1e                                  ; $5ddc: $36 $1e
    ld l, e                                       ; $5dde: $6b
    dec [hl]                                      ; $5ddf: $35
    db $eb                                        ; $5de0: $eb
    ld [hl], l                                    ; $5de1: $75
    di                                            ; $5de2: $f3
    sbc l                                         ; $5de3: $9d
    jp z, Jump_004_648e                           ; $5de4: $ca $8e $64

    call nz, Call_004_62b2                        ; $5de7: $c4 $b2 $62
    ld e, c                                       ; $5dea: $59
    or c                                          ; $5deb: $b1
    rst RST_28                                    ; $5dec: $ef
    add hl, hl                                    ; $5ded: $29
    rst RST_00                                    ; $5dee: $c7
    rst RST_00                                    ; $5def: $c7
    db $e3                                        ; $5df0: $e3
    pop hl                                        ; $5df1: $e1
    jp nc, Jump_004_6d92                          ; $5df2: $d2 $92 $6d

    ld l, l                                       ; $5df5: $6d
    dec sp                                        ; $5df6: $3b
    dec hl                                        ; $5df7: $2b
    inc d                                         ; $5df8: $14
    inc d                                         ; $5df9: $14
    jr z, @+$2a                                   ; $5dfa: $28 $28

    ld e, b                                       ; $5dfc: $58
    ld e, b                                       ; $5dfd: $58
    ld e, h                                       ; $5dfe: $5c
    ld e, b                                       ; $5dff: $58
    ld l, e                                       ; $5e00: $6b
    ld l, h                                       ; $5e01: $6c
    db $f4                                        ; $5e02: $f4
    ld d, a                                       ; $5e03: $57
    db $eb                                        ; $5e04: $eb
    cp e                                          ; $5e05: $bb
    push hl                                       ; $5e06: $e5

jr_004_5e07:
    cp l                                          ; $5e07: $bd
    and $be                                       ; $5e08: $e6 $be
    rst RST_38                                    ; $5e0a: $ff
    sbc c                                         ; $5e0b: $99
    ld a, [hl]                                    ; $5e0c: $7e
    ld b, a                                       ; $5e0d: $47
    ccf                                           ; $5e0e: $3f
    add hl, sp                                    ; $5e0f: $39
    rst RST_00                                    ; $5e10: $c7
    add a                                         ; $5e11: $87
    ld c, e                                       ; $5e12: $4b
    ld c, c                                       ; $5e13: $49
    or [hl]                                       ; $5e14: $b6
    or [hl]                                       ; $5e15: $b6
    call c, $a8d4                                 ; $5e16: $dc $d4 $a8
    ld l, b                                       ; $5e19: $68
    ld d, h                                       ; $5e1a: $54
    inc [hl]                                      ; $5e1b: $34
    ld e, d                                       ; $5e1c: $5a
    ld a, [hl-]                                   ; $5e1d: $3a
    jp c, $963a                                   ; $5e1e: $da $3a $96

    halt                                          ; $5e21: $76
    cpl                                           ; $5e22: $2f
    ld [$ddd7], a                                 ; $5e23: $ea $d7 $dd
    and a                                         ; $5e26: $a7
    cp l                                          ; $5e27: $bd
    ld h, a                                       ; $5e28: $67
    ld a, l                                       ; $5e29: $7d
    rst RST_38                                    ; $5e2a: $ff
    sbc c                                         ; $5e2b: $99
    ld a, [hl]                                    ; $5e2c: $7e
    ldh [c], a                                    ; $5e2d: $e2
    db $fc                                        ; $5e2e: $fc
    sbc h                                         ; $5e2f: $9c
    rst RST_00                                    ; $5e30: $c7
    jp $a4ec                                      ; $5e31: $c3 $ec $a4


    ld a, c                                       ; $5e34: $79
    ld e, b                                       ; $5e35: $58
    dec sp                                        ; $5e36: $3b
    jr z, jr_004_5eb7                             ; $5e37: $28 $7e

    jr c, jr_004_5e07                             ; $5e39: $38 $cc

    ld b, b                                       ; $5e3b: $40
    sbc c                                         ; $5e3c: $99
    add b                                         ; $5e3d: $80
    or e                                          ; $5e3e: $b3
    add b                                         ; $5e3f: $80
    or e                                          ; $5e40: $b3
    add b                                         ; $5e41: $80
    sbc e                                         ; $5e42: $9b
    and b                                         ; $5e43: $a0
    call Call_004_7f50                            ; $5e44: $cd $50 $7f
    jr c, jr_004_5e84                             ; $5e47: $38 $3b

    inc l                                         ; $5e49: $2c
    ld a, h                                       ; $5e4a: $7c
    ld e, e                                       ; $5e4b: $5b
    xor $a5                                       ; $5e4c: $ee $a5
    rst RST_00                                    ; $5e4e: $c7
    jp $e3a0                                      ; $5e4f: $c3 $a0 $e3


    jp Jump_000_2537                              ; $5e52: $c3 $37 $25


    sbc [hl]                                      ; $5e55: $9e
    ld e, d                                       ; $5e56: $5a
    call c, Call_004_7e34                         ; $5e57: $dc $34 $7e
    inc e                                         ; $5e5a: $1c
    scf                                           ; $5e5b: $37
    ld a, [bc]                                    ; $5e5c: $0a
    sbc e                                         ; $5e5d: $9b
    dec b                                         ; $5e5e: $05
    jp hl                                         ; $5e5f: $e9


    rlca                                          ; $5e60: $07
    reti                                          ; $5e61: $d9


    daa                                           ; $5e62: $27
    or c                                          ; $5e63: $b1
    ld c, a                                       ; $5e64: $4f
    ld h, e                                       ; $5e65: $63
    sbc [hl]                                      ; $5e66: $9e
    sbc $3c                                       ; $5e67: $de $3c
    sbc h                                         ; $5e69: $9c
    ld [hl], h                                    ; $5e6a: $74
    ld e, $fa                                     ; $5e6b: $1e $fa
    scf                                           ; $5e6d: $37
    push hl                                       ; $5e6e: $e5
    db $e3                                        ; $5e6f: $e3
    jp $1400                                      ; $5e70: $c3 $00 $14


    nop                                           ; $5e73: $00
    adc b                                         ; $5e74: $88
    inc bc                                        ; $5e75: $03
    ld bc, $8fcf                                  ; $5e76: $01 $cf $8f
    rst RST_18                                    ; $5e79: $df
    rst RST_18                                    ; $5e7a: $df
    ld a, a                                       ; $5e7b: $7f
    ccf                                           ; $5e7c: $3f
    inc bc                                        ; $5e7d: $03
    ld a, a                                       ; $5e7e: $7f
    add c                                         ; $5e7f: $81
    rst RST_38                                    ; $5e80: $ff
    inc b                                         ; $5e81: $04
    nop                                           ; $5e82: $00
    adc h                                         ; $5e83: $8c

jr_004_5e84:
    rst RST_30                                    ; $5e84: $f7
    db $e3                                        ; $5e85: $e3
    rst RST_38                                    ; $5e86: $ff
    rst RST_38                                    ; $5e87: $ff
    ccf                                           ; $5e88: $3f
    rst RST_18                                    ; $5e89: $df
    rst RST_08                                    ; $5e8a: $cf
    rst RST_38                                    ; $5e8b: $ff
    xor $ff                                       ; $5e8c: $ee $ff
    ccf                                           ; $5e8e: $3f
    rst RST_38                                    ; $5e8f: $ff
    inc b                                         ; $5e90: $04
    nop                                           ; $5e91: $00
    sub [hl]                                      ; $5e92: $96
    ldh [$ffc0], a                                ; $5e93: $e0 $c0
    ld sp, hl                                     ; $5e95: $f9
    ld hl, sp-$71                                 ; $5e96: $f8 $8f
    db $fd                                        ; $5e98: $fd
    rst RST_18                                    ; $5e99: $df
    and $6f                                       ; $5e9a: $e6 $6f
    di                                            ; $5e9c: $f3
    dec [hl]                                      ; $5e9d: $35
    ei                                            ; $5e9e: $fb
    sbc $ff                                       ; $5e9f: $de $ff
    cp h                                          ; $5ea1: $bc
    ld sp, hl                                     ; $5ea2: $f9
    cp c                                          ; $5ea3: $b9
    pop af                                        ; $5ea4: $f1
    or c                                          ; $5ea5: $b1
    pop af                                        ; $5ea6: $f1
    di                                            ; $5ea7: $f3
    pop af                                        ; $5ea8: $f1
    inc bc                                        ; $5ea9: $03
    di                                            ; $5eaa: $f3
    inc bc                                        ; $5eab: $03
    ld [hl], e                                    ; $5eac: $73
    inc b                                         ; $5ead: $04
    rst RST_38                                    ; $5eae: $ff
    add l                                         ; $5eaf: $85
    db $fd                                        ; $5eb0: $fd
    rst RST_38                                    ; $5eb1: $ff
    ld a, [$efff]                                 ; $5eb2: $fa $ff $ef
    add b                                         ; $5eb5: $80
    add l                                         ; $5eb6: $85

jr_004_5eb7:
    inc b                                         ; $5eb7: $04
    ld a, [$eaea]                                 ; $5eb8: $fa $ea $ea
    push hl                                       ; $5ebb: $e5
    inc bc                                        ; $5ebc: $03
    rst RST_38                                    ; $5ebd: $ff
    sbc l                                         ; $5ebe: $9d
    ld [hl], e                                    ; $5ebf: $73
    rst RST_28                                    ; $5ec0: $ef
    pop hl                                        ; $5ec1: $e1
    ld b, e                                       ; $5ec2: $43
    jp $c341                                      ; $5ec3: $c3 $41 $c3


    ld b, c                                       ; $5ec6: $41
    jp $e641                                      ; $5ec7: $c3 $41 $e6


    ld [hl+], a                                   ; $5eca: $22
    reti                                          ; $5ecb: $d9


    rst RST_38                                    ; $5ecc: $ff
    db $fc                                        ; $5ecd: $fc
    rst RST_38                                    ; $5ece: $ff
    ld e, h                                       ; $5ecf: $5c
    rst RST_38                                    ; $5ed0: $ff
    xor [hl]                                      ; $5ed1: $ae
    ld a, a                                       ; $5ed2: $7f
    ld a, d                                       ; $5ed3: $7a
    cpl                                           ; $5ed4: $2f
    ld a, a                                       ; $5ed5: $7f
    dec hl                                        ; $5ed6: $2b
    ld a, a                                       ; $5ed7: $7f
    dec hl                                        ; $5ed8: $2b
    rst RST_38                                    ; $5ed9: $ff
    ld d, e                                       ; $5eda: $53

jr_004_5edb:
    cp a                                          ; $5edb: $bf
    add b                                         ; $5edc: $80
    add e                                         ; $5edd: $83
    inc b                                         ; $5ede: $04
    db $fd                                        ; $5edf: $fd
    rst RST_08                                    ; $5ee0: $cf
    call $89cf                                    ; $5ee1: $cd $cf $89
    rst RST_08                                    ; $5ee4: $cf
    db $ed                                        ; $5ee5: $ed
    rst RST_08                                    ; $5ee6: $cf
    ld l, a                                       ; $5ee7: $6f
    rst RST_28                                    ; $5ee8: $ef
    ld l, a                                       ; $5ee9: $6f
    xor $7b                                       ; $5eea: $ee $7b
    ld [hl], e                                    ; $5eec: $73
    inc bc                                        ; $5eed: $03
    ld a, e                                       ; $5eee: $7b
    inc bc                                        ; $5eef: $03
    dec sp                                        ; $5ef0: $3b

jr_004_5ef1:
    cp h                                          ; $5ef1: $bc
    ccf                                           ; $5ef2: $3f
    dec sp                                        ; $5ef3: $3b
    ccf                                           ; $5ef4: $3f
    rra                                           ; $5ef5: $1f
    dec e                                         ; $5ef6: $1d
    rra                                           ; $5ef7: $1f
    rra                                           ; $5ef8: $1f
    dec e                                         ; $5ef9: $1d
    rst RST_30                                    ; $5efa: $f7
    rst RST_18                                    ; $5efb: $df
    ldh [$ffd0], a                                ; $5efc: $e0 $d0
    ld a, b                                       ; $5efe: $78
    ret nz                                        ; $5eff: $c0

    ld [hl], a                                    ; $5f00: $77
    rst RST_08                                    ; $5f01: $cf
    ld [hl], a                                    ; $5f02: $77
    sbc b                                         ; $5f03: $98
    ld l, a                                       ; $5f04: $6f
    sub a                                         ; $5f05: $97
    ld a, b                                       ; $5f06: $78
    adc l                                         ; $5f07: $8d
    ld a, e                                       ; $5f08: $7b
    adc e                                         ; $5f09: $8b
    pop bc                                        ; $5f0a: $c1
    add b                                         ; $5f0b: $80
    pop bc                                        ; $5f0c: $c1
    pop bc                                        ; $5f0d: $c1
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    pop bc                                        ; $5f10: $c1
    add b                                         ; $5f11: $80
    db $e3                                        ; $5f12: $e3
    ld b, c                                       ; $5f13: $41
    ld h, e                                       ; $5f14: $63
    add b                                         ; $5f15: $80
    or c                                          ; $5f16: $b1
    ret nz                                        ; $5f17: $c0

    or c                                          ; $5f18: $b1
    ret nz                                        ; $5f19: $c0

    rst RST_30                                    ; $5f1a: $f7
    db $fd                                        ; $5f1b: $fd
    ei                                            ; $5f1c: $fb
    add l                                         ; $5f1d: $85
    ld bc, $f901                                  ; $5f1e: $01 $01 $f9
    ld sp, hl                                     ; $5f21: $f9
    push af                                       ; $5f22: $f5
    inc c                                         ; $5f23: $0c
    ld sp, hl                                     ; $5f24: $f9
    ld [hl], h                                    ; $5f25: $74
    adc b                                         ; $5f26: $88
    ret c                                         ; $5f27: $d8

    cp b                                          ; $5f28: $b8
    cp b                                          ; $5f29: $b8
    xor $ee                                       ; $5f2a: $ee $ee
    cp $ee                                        ; $5f2c: $fe $ee
    inc bc                                        ; $5f2e: $03
    cp $06                                        ; $5f2f: $fe $06
    db $fc                                        ; $5f31: $fc
    add h                                         ; $5f32: $84
    call c, $d8dc                                 ; $5f33: $dc $dc $d8
    dec e                                         ; $5f36: $1d
    inc b                                         ; $5f37: $04
    dec c                                         ; $5f38: $0d
    add d                                         ; $5f39: $82
    inc c                                         ; $5f3a: $0c
    inc c                                         ; $5f3b: $0c
    inc bc                                        ; $5f3c: $03
    ld [$18a1], sp                                ; $5f3d: $08 $a1 $18
    ld [$1113], sp                                ; $5f40: $08 $13 $11
    ld h, [hl]                                    ; $5f43: $66
    ld h, e                                       ; $5f44: $63
    or $8e                                        ; $5f45: $f6 $8e
    db $fd                                        ; $5f47: $fd
    add a                                         ; $5f48: $87
    rst RST_38                                    ; $5f49: $ff
    add e                                         ; $5f4a: $83
    ld hl, sp-$40                                 ; $5f4b: $f8 $c0
    ldh a, [$ffc0]                                ; $5f4d: $f0 $c0
    jr nc, jr_004_5ef1                            ; $5f4f: $30 $a0

    ldh a, [$ffd0]                                ; $5f51: $f0 $d0
    ld hl, sp+$28                                 ; $5f53: $f8 $28
    or c                                          ; $5f55: $b1
    ret nz                                        ; $5f56: $c0

    or c                                          ; $5f57: $b1
    ret nz                                        ; $5f58: $c0

    jr jr_004_5edb                                ; $5f59: $18 $80

    db $10                                        ; $5f5b: $10
    ld [$180c], sp                                ; $5f5c: $08 $0c $18
    ld [$0005], sp                                ; $5f5f: $08 $05 $00
    sub b                                         ; $5f62: $90
    and b                                         ; $5f63: $a0
    add sp, -$28                                  ; $5f64: $e8 $d8
    ldh a, [$fff1]                                ; $5f66: $f0 $f1
    ld h, b                                       ; $5f68: $60
    ld bc, $0301                                  ; $5f69: $01 $01 $03
    ld bc, $0202                                  ; $5f6c: $01 $02 $02
    rlca                                          ; $5f6f: $07
    dec b                                         ; $5f70: $05
    ld c, $0b                                     ; $5f71: $0e $0b
    inc bc                                        ; $5f73: $03
    ret c                                         ; $5f74: $d8

    inc b                                         ; $5f75: $04
    sbc b                                         ; $5f76: $98
    inc bc                                        ; $5f77: $03
    adc b                                         ; $5f78: $88
    add [hl]                                      ; $5f79: $86
    inc c                                         ; $5f7a: $0c
    adc b                                         ; $5f7b: $88
    db $e4                                        ; $5f7c: $e4
    call nz, $23f3                                ; $5f7d: $c4 $f3 $23
    add b                                         ; $5f80: $80
    add e                                         ; $5f81: $83
    inc b                                         ; $5f82: $04
    ret nz                                        ; $5f83: $c0

    ldh [$ffb8], a                                ; $5f84: $e0 $b8
    ld e, l                                       ; $5f86: $5d
    adc b                                         ; $5f87: $88
    scf                                           ; $5f88: $37
    daa                                           ; $5f89: $27
    dec de                                        ; $5f8a: $1b
    ld de, $080e                                  ; $5f8b: $11 $0e $08
    rlca                                          ; $5f8e: $07
    inc b                                         ; $5f8f: $04
    inc b                                         ; $5f90: $04
    nop                                           ; $5f91: $00
    add b                                         ; $5f92: $80
    add e                                         ; $5f93: $83
    dec b                                         ; $5f94: $05
    add b                                         ; $5f95: $80
    ld b, b                                       ; $5f96: $40
    ld b, b                                       ; $5f97: $40
    ld b, b                                       ; $5f98: $40
    and b                                         ; $5f99: $a0
    cp h                                          ; $5f9a: $bc
    and b                                         ; $5f9b: $a0
    ld h, b                                       ; $5f9c: $60
    dec b                                         ; $5f9d: $05
    ld b, $05                                     ; $5f9e: $06 $05
    ld b, $04                                     ; $5fa0: $06 $04
    rlca                                          ; $5fa2: $07
    ld b, $03                                     ; $5fa3: $06 $03
    inc bc                                        ; $5fa5: $03
    ld bc, $0000                                  ; $5fa6: $01 $00 $00
    inc bc                                        ; $5fa9: $03
    inc bc                                        ; $5faa: $03
    inc b                                         ; $5fab: $04
    inc b                                         ; $5fac: $04
    ld [hl], $14                                  ; $5fad: $36 $14
    inc sp                                        ; $5faf: $33
    inc de                                        ; $5fb0: $13
    ret nc                                        ; $5fb1: $d0

    jr nc, jr_004_5fe4                            ; $5fb2: $30 $30

    ldh [$ffe1], a                                ; $5fb4: $e0 $e1
    pop bc                                        ; $5fb6: $c1
    inc bc                                        ; $5fb7: $03
    inc bc                                        ; $5fb8: $03
    rra                                           ; $5fb9: $1f
    rra                                           ; $5fba: $1f
    rst RST_38                                    ; $5fbb: $ff
    db $fd                                        ; $5fbc: $fd
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    add b                                         ; $5fbf: $80
    nop                                           ; $5fc0: $00
    pop hl                                        ; $5fc1: $e1
    pop bc                                        ; $5fc2: $c1
    cp [hl]                                       ; $5fc3: $be
    rst RST_38                                    ; $5fc4: $ff
    adc a                                         ; $5fc5: $8f

jr_004_5fc6:
    ldh a, [$ff9e]                                ; $5fc6: $f0 $9e
    ldh [$fffc], a                                ; $5fc8: $e0 $fc
    nop                                           ; $5fca: $00
    ldh a, [rP1]                                  ; $5fcb: $f0 $00
    dec d                                         ; $5fcd: $15
    ld d, $65                                     ; $5fce: $16 $65
    ld h, $c4                                     ; $5fd0: $26 $c4
    rst RST_00                                    ; $5fd2: $c7
    ld h, [hl]                                    ; $5fd3: $66
    db $e3                                        ; $5fd4: $e3
    ld h, e                                       ; $5fd5: $63
    ld h, c                                       ; $5fd6: $61
    inc bc                                        ; $5fd7: $03
    ld d, b                                       ; $5fd8: $50
    adc l                                         ; $5fd9: $8d
    ld e, b                                       ; $5fda: $58
    ld e, a                                       ; $5fdb: $5f
    ld d, a                                       ; $5fdc: $57
    jr nc, @+$12                                  ; $5fdd: $30 $10

    jr nc, jr_004_5ff1                            ; $5fdf: $30 $10

    ret nc                                        ; $5fe1: $d0

    jr nc, jr_004_6014                            ; $5fe2: $30 $30

jr_004_5fe4:
    ldh [$ffe0], a                                ; $5fe4: $e0 $e0
    ret nz                                        ; $5fe6: $c0

    inc b                                         ; $5fe7: $04

jr_004_5fe8:
    nop                                           ; $5fe8: $00
    add [hl]                                      ; $5fe9: $86
    inc e                                         ; $5fea: $1c
    inc e                                         ; $5feb: $1c
    inc bc                                        ; $5fec: $03
    ld [bc], a                                    ; $5fed: $02
    ld bc, $0c01                                  ; $5fee: $01 $01 $0c

jr_004_5ff1:
    nop                                           ; $5ff1: $00
    cp e                                          ; $5ff2: $bb
    ret nc                                        ; $5ff3: $d0

    jr nz, jr_004_5fc6                            ; $5ff4: $20 $d0

    jr nc, jr_004_5fe8                            ; $5ff6: $30 $f0

    sub b                                         ; $5ff8: $90
    ld a, b                                       ; $5ff9: $78
    ld c, b                                       ; $5ffa: $48
    ld a, h                                       ; $5ffb: $7c
    inc [hl]                                      ; $5ffc: $34
    ld l, $32                                     ; $5ffd: $2e $32
    rla                                           ; $5fff: $17
    add hl, de                                    ; $6000: $19
    inc de                                        ; $6001: $13
    inc e                                         ; $6002: $1c
    rrca                                          ; $6003: $0f
    ld [$0e0f], sp                                ; $6004: $08 $0f $0e
    dec c                                         ; $6007: $0d
    add hl, bc                                    ; $6008: $09
    dec de                                        ; $6009: $1b
    inc de                                        ; $600a: $13
    rla                                           ; $600b: $17
    rla                                           ; $600c: $17
    scf                                           ; $600d: $37
    daa                                           ; $600e: $27
    dec a                                         ; $600f: $3d
    daa                                           ; $6010: $27
    cp l                                          ; $6011: $bd
    and a                                         ; $6012: $a7
    rst RST_18                                    ; $6013: $df

jr_004_6014:
    or l                                          ; $6014: $b5
    cp a                                          ; $6015: $bf
    or h                                          ; $6016: $b4
    ld [hl], a                                    ; $6017: $77
    ldh a, [c]                                    ; $6018: $f2
    scf                                           ; $6019: $37
    ldh a, [c]                                    ; $601a: $f2
    rrca                                          ; $601b: $0f
    rst RST_38                                    ; $601c: $ff
    rrca                                          ; $601d: $0f
    ldh a, [$ff9f]                                ; $601e: $f0 $9f
    ldh [$ff9f], a                                ; $6020: $e0 $9f
    ldh [$ffe0], a                                ; $6022: $e0 $e0
    nop                                           ; $6024: $00
    db $e3                                        ; $6025: $e3
    add e                                         ; $6026: $83
    db $fc                                        ; $6027: $fc
    ld a, h                                       ; $6028: $7c
    db $f4                                        ; $6029: $f4
    nop                                           ; $602a: $00
    push af                                       ; $602b: $f5
    ld bc, $80ff                                  ; $602c: $01 $ff $80
    inc bc                                        ; $602f: $03
    cp $af                                        ; $6030: $fe $af
    rst RST_38                                    ; $6032: $ff
    nop                                           ; $6033: $00
    sub a                                         ; $6034: $97
    sub e                                         ; $6035: $93
    ld [hl+], a                                   ; $6036: $22
    ld h, $a6                                     ; $6037: $26 $a6
    ld h, $cc                                     ; $6039: $26 $cc
    ld b, [hl]                                    ; $603b: $46
    rst RST_38                                    ; $603c: $ff
    rst RST_38                                    ; $603d: $ff
    cp $01                                        ; $603e: $fe $01
    db $fc                                        ; $6040: $fc
    inc bc                                        ; $6041: $03
    db $fc                                        ; $6042: $fc
    inc bc                                        ; $6043: $03
    ld a, [$3ae2]                                 ; $6044: $fa $e2 $3a
    ld l, $2e                                     ; $6047: $2e $2e
    ld a, [hl-]                                   ; $6049: $3a
    db $fd                                        ; $604a: $fd
    rst RST_18                                    ; $604b: $df
    ld e, l                                       ; $604c: $5d
    rst RST_10                                    ; $604d: $d7
    db $dd                                        ; $604e: $dd
    sub a                                         ; $604f: $97
    db $dd                                        ; $6050: $dd
    sub a                                         ; $6051: $97
    db $dd                                        ; $6052: $dd
    sub a                                         ; $6053: $97
    rst RST_38                                    ; $6054: $ff
    rst RST_38                                    ; $6055: $ff
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    rst RST_38                                    ; $6058: $ff
    nop                                           ; $6059: $00
    rst RST_38                                    ; $605a: $ff
    nop                                           ; $605b: $00
    rst RST_38                                    ; $605c: $ff
    nop                                           ; $605d: $00
    rst RST_38                                    ; $605e: $ff
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
    inc bc                                        ; $6061: $03
    rst RST_38                                    ; $6062: $ff
    call c, $83bd                                 ; $6063: $dc $bd $83
    cp l                                          ; $6066: $bd
    add e                                         ; $6067: $83
    cp l                                          ; $6068: $bd
    add e                                         ; $6069: $83
    cp l                                          ; $606a: $bd
    add e                                         ; $606b: $83
    cp l                                          ; $606c: $bd
    add e                                         ; $606d: $83
    cp l                                          ; $606e: $bd
    add e                                         ; $606f: $83
    cp l                                          ; $6070: $bd
    add e                                         ; $6071: $83
    cp l                                          ; $6072: $bd
    add e                                         ; $6073: $83
    cp l                                          ; $6074: $bd
    add e                                         ; $6075: $83
    cp l                                          ; $6076: $bd
    add e                                         ; $6077: $83
    cp a                                          ; $6078: $bf
    cp a                                          ; $6079: $bf
    and b                                         ; $607a: $a0
    and b                                         ; $607b: $a0
    xor a                                         ; $607c: $af
    and b                                         ; $607d: $a0
    xor a                                         ; $607e: $af
    and a                                         ; $607f: $a7
    xor h                                         ; $6080: $ac
    and h                                         ; $6081: $a4
    xor h                                         ; $6082: $ac
    and h                                         ; $6083: $a4
    cp l                                          ; $6084: $bd
    add e                                         ; $6085: $83
    cp l                                          ; $6086: $bd
    add e                                         ; $6087: $83
    db $fd                                        ; $6088: $fd
    rst RST_38                                    ; $6089: $ff
    dec c                                         ; $608a: $0d
    rlca                                          ; $608b: $07
    db $ed                                        ; $608c: $ed
    rlca                                          ; $608d: $07
    db $ed                                        ; $608e: $ed
    rst RST_20                                    ; $608f: $e7
    dec l                                         ; $6090: $2d
    daa                                           ; $6091: $27
    dec l                                         ; $6092: $2d
    daa                                           ; $6093: $27
    xor h                                         ; $6094: $ac
    and h                                         ; $6095: $a4
    xor h                                         ; $6096: $ac
    and h                                         ; $6097: $a4
    xor a                                         ; $6098: $af
    and a                                         ; $6099: $a7
    and b                                         ; $609a: $a0
    and b                                         ; $609b: $a0
    cp a                                          ; $609c: $bf
    and b                                         ; $609d: $a0
    cp a                                          ; $609e: $bf
    cp a                                          ; $609f: $bf
    cp l                                          ; $60a0: $bd
    add e                                         ; $60a1: $83
    cp l                                          ; $60a2: $bd
    add e                                         ; $60a3: $83
    dec l                                         ; $60a4: $2d
    daa                                           ; $60a5: $27
    dec l                                         ; $60a6: $2d
    daa                                           ; $60a7: $27
    db $ed                                        ; $60a8: $ed
    rst RST_20                                    ; $60a9: $e7
    dec c                                         ; $60aa: $0d
    rlca                                          ; $60ab: $07
    db $fd                                        ; $60ac: $fd
    rlca                                          ; $60ad: $07
    db $fd                                        ; $60ae: $fd
    rst RST_38                                    ; $60af: $ff
    cp l                                          ; $60b0: $bd
    add e                                         ; $60b1: $83
    cp l                                          ; $60b2: $bd
    add e                                         ; $60b3: $83
    cp l                                          ; $60b4: $bd
    add e                                         ; $60b5: $83
    cp l                                          ; $60b6: $bd
    add e                                         ; $60b7: $83
    rst RST_38                                    ; $60b8: $ff
    rst RST_38                                    ; $60b9: $ff
    nop                                           ; $60ba: $00
    nop                                           ; $60bb: $00
    rst RST_38                                    ; $60bc: $ff
    nop                                           ; $60bd: $00
    rst RST_38                                    ; $60be: $ff
    rst RST_38                                    ; $60bf: $ff
    ld [$ac00], sp                                ; $60c0: $08 $00 $ac
    rst RST_38                                    ; $60c3: $ff
    rst RST_38                                    ; $60c4: $ff
    nop                                           ; $60c5: $00
    nop                                           ; $60c6: $00
    rst RST_38                                    ; $60c7: $ff
    nop                                           ; $60c8: $00
    rst RST_38                                    ; $60c9: $ff
    rst RST_38                                    ; $60ca: $ff
    cp l                                          ; $60cb: $bd
    add e                                         ; $60cc: $83
    cp l                                          ; $60cd: $bd
    add e                                         ; $60ce: $83
    xor h                                         ; $60cf: $ac
    and h                                         ; $60d0: $a4
    xor h                                         ; $60d1: $ac
    and h                                         ; $60d2: $a4
    xor h                                         ; $60d3: $ac
    and h                                         ; $60d4: $a4
    xor h                                         ; $60d5: $ac
    and h                                         ; $60d6: $a4
    xor h                                         ; $60d7: $ac
    and h                                         ; $60d8: $a4
    xor h                                         ; $60d9: $ac
    and h                                         ; $60da: $a4
    xor h                                         ; $60db: $ac
    and h                                         ; $60dc: $a4
    xor h                                         ; $60dd: $ac
    and h                                         ; $60de: $a4
    dec l                                         ; $60df: $2d
    daa                                           ; $60e0: $27
    dec l                                         ; $60e1: $2d
    daa                                           ; $60e2: $27
    dec l                                         ; $60e3: $2d
    daa                                           ; $60e4: $27
    dec l                                         ; $60e5: $2d
    daa                                           ; $60e6: $27
    dec l                                         ; $60e7: $2d
    daa                                           ; $60e8: $27
    dec l                                         ; $60e9: $2d
    daa                                           ; $60ea: $27
    dec l                                         ; $60eb: $2d
    daa                                           ; $60ec: $27
    dec l                                         ; $60ed: $2d
    daa                                           ; $60ee: $27
    inc b                                         ; $60ef: $04
    nop                                           ; $60f0: $00
    adc h                                         ; $60f1: $8c
    ccf                                           ; $60f2: $3f
    ccf                                           ; $60f3: $3f
    jr nz, jr_004_6116                            ; $60f4: $20 $20

    cpl                                           ; $60f6: $2f
    jr nz, jr_004_6128                            ; $60f7: $20 $2f

    daa                                           ; $60f9: $27
    inc l                                         ; $60fa: $2c
    inc h                                         ; $60fb: $24
    inc l                                         ; $60fc: $2c
    inc h                                         ; $60fd: $24
    inc b                                         ; $60fe: $04
    nop                                           ; $60ff: $00
    sbc b                                         ; $6100: $98
    db $fc                                        ; $6101: $fc
    db $fc                                        ; $6102: $fc
    inc c                                         ; $6103: $0c
    inc b                                         ; $6104: $04
    db $ec                                        ; $6105: $ec
    inc b                                         ; $6106: $04
    db $ec                                        ; $6107: $ec
    db $e4                                        ; $6108: $e4
    inc l                                         ; $6109: $2c
    inc h                                         ; $610a: $24
    inc l                                         ; $610b: $2c
    inc h                                         ; $610c: $24
    inc l                                         ; $610d: $2c
    inc h                                         ; $610e: $24
    inc l                                         ; $610f: $2c
    inc h                                         ; $6110: $24
    cpl                                           ; $6111: $2f
    daa                                           ; $6112: $27
    jr nz, jr_004_6135                            ; $6113: $20 $20

    ccf                                           ; $6115: $3f

jr_004_6116:
    jr nz, jr_004_6157                            ; $6116: $20 $3f

    ccf                                           ; $6118: $3f
    inc b                                         ; $6119: $04
    nop                                           ; $611a: $00
    adc h                                         ; $611b: $8c
    inc l                                         ; $611c: $2c
    inc h                                         ; $611d: $24
    inc l                                         ; $611e: $2c
    inc h                                         ; $611f: $24
    db $ec                                        ; $6120: $ec
    db $e4                                        ; $6121: $e4
    inc c                                         ; $6122: $0c
    inc b                                         ; $6123: $04
    db $fc                                        ; $6124: $fc
    inc b                                         ; $6125: $04
    db $fc                                        ; $6126: $fc
    db $fc                                        ; $6127: $fc

jr_004_6128:
    inc b                                         ; $6128: $04
    nop                                           ; $6129: $00
    sub b                                         ; $612a: $90
    inc l                                         ; $612b: $2c
    inc h                                         ; $612c: $24
    inc l                                         ; $612d: $2c
    inc h                                         ; $612e: $24
    inc l                                         ; $612f: $2c
    inc h                                         ; $6130: $24
    inc l                                         ; $6131: $2c
    inc h                                         ; $6132: $24
    inc l                                         ; $6133: $2c
    inc h                                         ; $6134: $24

jr_004_6135:
    inc l                                         ; $6135: $2c
    inc h                                         ; $6136: $24
    inc l                                         ; $6137: $2c
    inc h                                         ; $6138: $24
    inc l                                         ; $6139: $2c
    inc h                                         ; $613a: $24
    inc b                                         ; $613b: $04
    nop                                           ; $613c: $00
    adc b                                         ; $613d: $88
    rst RST_38                                    ; $613e: $ff
    rst RST_38                                    ; $613f: $ff
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    rst RST_38                                    ; $6142: $ff
    nop                                           ; $6143: $00
    rst RST_38                                    ; $6144: $ff
    rst RST_38                                    ; $6145: $ff
    ld b, $00                                     ; $6146: $06 $00
    add b                                         ; $6148: $80
    add c                                         ; $6149: $81
    ld b, $3c                                     ; $614a: $06 $3c
    ld a, [hl]                                    ; $614c: $7e
    ld a, [hl]                                    ; $614d: $7e
    ld a, [hl]                                    ; $614e: $7e
    ld a, [hl]                                    ; $614f: $7e
    inc a                                         ; $6150: $3c
    ld a, [bc]                                    ; $6151: $0a
    nop                                           ; $6152: $00
    adc b                                         ; $6153: $88
    ld e, $3c                                     ; $6154: $1e $3c
    rst RST_38                                    ; $6156: $ff

jr_004_6157:
    cp $f7                                        ; $6157: $fe $f7
    db $e3                                        ; $6159: $e3
    inc bc                                        ; $615a: $03
    inc bc                                        ; $615b: $03
    ld [$8800], sp                                ; $615c: $08 $00 $88
    rrca                                          ; $615f: $0f
    ld e, $7f                                     ; $6160: $1e $7f
    ld a, a                                       ; $6162: $7f
    ld a, e                                       ; $6163: $7b
    ld [hl], c                                    ; $6164: $71
    ld bc, $0401                                  ; $6165: $01 $01 $04
    nop                                           ; $6168: $00
    ld b, $36                                     ; $6169: $06 $36
    add d                                         ; $616b: $82
    or [hl]                                       ; $616c: $b6
    ld [hl], $04                                  ; $616d: $36 $04
    add b                                         ; $616f: $80
    inc b                                         ; $6170: $04
    nop                                           ; $6171: $00
    add d                                         ; $6172: $82
    ld b, $04                                     ; $6173: $06 $04
    inc b                                         ; $6175: $04
    add $04                                       ; $6176: $c6 $04
    rst RST_18                                    ; $6178: $df
    add d                                         ; $6179: $82
    add $c6                                       ; $617a: $c6 $c6
    inc b                                         ; $617c: $04
    nop                                           ; $617d: $00
    inc b                                         ; $617e: $04
    ld a, [hl]                                    ; $617f: $7e
    sub h                                         ; $6180: $94
    ld b, $06                                     ; $6181: $06 $06
    inc c                                         ; $6183: $0c
    inc c                                         ; $6184: $0c
    ld a, $3c                                     ; $6185: $3e $3c
    ccf                                           ; $6187: $3f
    ld a, $03                                     ; $6188: $3e $03
    inc bc                                        ; $618a: $03
    ld [bc], a                                    ; $618b: $02
    rlca                                          ; $618c: $07
    rlca                                          ; $618d: $07
    ld b, $0c                                     ; $618e: $06 $0c
    ld c, $3e                                     ; $6190: $0e $3e
    inc a                                         ; $6192: $3c
    jr c, @+$3a                                   ; $6193: $38 $38

    inc b                                         ; $6195: $04
    nop                                           ; $6196: $00
    inc bc                                        ; $6197: $03
    ld bc, $0303                                  ; $6198: $01 $03 $03
    add [hl]                                      ; $619b: $86
    ld b, $07                                     ; $619c: $06 $07
    rra                                           ; $619e: $1f
    ld e, $1c                                     ; $619f: $1e $1c
    inc e                                         ; $61a1: $1c
    inc b                                         ; $61a2: $04
    nop                                           ; $61a3: $00
    add l                                         ; $61a4: $85
    add b                                         ; $61a5: $80
    add b                                         ; $61a6: $80
    nop                                           ; $61a7: $00
    add b                                         ; $61a8: $80
    add b                                         ; $61a9: $80
    dec bc                                        ; $61aa: $0b
    nop                                           ; $61ab: $00
    ld [$84c6], sp                                ; $61ac: $08 $c6 $84
    xor $c6                                       ; $61af: $ee $c6
    xor $64                                       ; $61b1: $ee $64
    inc b                                         ; $61b3: $04
    nop                                           ; $61b4: $00
    adc h                                         ; $61b5: $8c
    inc bc                                        ; $61b6: $03
    inc bc                                        ; $61b7: $03
    dec sp                                        ; $61b8: $3b
    dec sp                                        ; $61b9: $3b
    ld a, a                                       ; $61ba: $7f
    ld a, e                                       ; $61bb: $7b
    ld l, a                                       ; $61bc: $6f
    ld l, [hl]                                    ; $61bd: $6e
    ld a, [hl]                                    ; $61be: $7e
    ld a, [hl]                                    ; $61bf: $7e
    inc a                                         ; $61c0: $3c
    jr c, jr_004_61cb                             ; $61c1: $38 $08

    nop                                           ; $61c3: $00
    inc b                                         ; $61c4: $04
    add hl, de                                    ; $61c5: $19
    inc b                                         ; $61c6: $04
    ld a, [hl]                                    ; $61c7: $7e
    add h                                         ; $61c8: $84
    jr jr_004_61e3                                ; $61c9: $18 $18

jr_004_61cb:
    rra                                           ; $61cb: $1f
    ld e, $04                                     ; $61cc: $1e $04
    nop                                           ; $61ce: $00
    adc h                                         ; $61cf: $8c
    adc h                                         ; $61d0: $8c
    adc h                                         ; $61d1: $8c
    call z, $dfcc                                 ; $61d2: $cc $cc $df
    db $dd                                        ; $61d5: $dd
    rst RST_18                                    ; $61d6: $df
    rst RST_18                                    ; $61d7: $df
    rrca                                          ; $61d8: $0f
    ld c, $0e                                     ; $61d9: $0e $0e
    inc c                                         ; $61db: $0c
    inc b                                         ; $61dc: $04
    nop                                           ; $61dd: $00
    inc b                                         ; $61de: $04
    rrca                                          ; $61df: $0f
    add l                                         ; $61e0: $85
    ret nz                                        ; $61e1: $c0

    ret nz                                        ; $61e2: $c0

jr_004_61e3:
    pop hl                                        ; $61e3: $e1
    pop hl                                        ; $61e4: $e1
    rst RST_20                                    ; $61e5: $e7
    inc bc                                        ; $61e6: $03
    ld h, a                                       ; $61e7: $67
    inc b                                         ; $61e8: $04
    nop                                           ; $61e9: $00
    ld b, $c0                                     ; $61ea: $06 $c0
    sub d                                         ; $61ec: $92
    add b                                         ; $61ed: $80
    add b                                         ; $61ee: $80
    ret nz                                        ; $61ef: $c0

    add b                                         ; $61f0: $80
    ldh [$ffc0], a                                ; $61f1: $e0 $c0
    ccf                                           ; $61f3: $3f
    ccf                                           ; $61f4: $3f
    ld a, e                                       ; $61f5: $7b
    ld a, c                                       ; $61f6: $79
    ld a, c                                       ; $61f7: $79
    ld sp, hl                                     ; $61f8: $f9
    ld e, c                                       ; $61f9: $59
    reti                                          ; $61fa: $d9


    ld a, e                                       ; $61fb: $7b
    ei                                            ; $61fc: $fb
    inc sp                                        ; $61fd: $33
    ld [hl], e                                    ; $61fe: $73
    inc b                                         ; $61ff: $04
    nop                                           ; $6200: $00
    add d                                         ; $6201: $82
    sbc h                                         ; $6202: $9c
    inc e                                         ; $6203: $1c
    inc b                                         ; $6204: $04
    sbc h                                         ; $6205: $9c
    add [hl]                                      ; $6206: $86
    adc h                                         ; $6207: $8c
    adc h                                         ; $6208: $8c
    adc l                                         ; $6209: $8d
    adc l                                         ; $620a: $8d
    dec c                                         ; $620b: $0d
    dec c                                         ; $620c: $0d
    inc b                                         ; $620d: $04
    nop                                           ; $620e: $00
    adc h                                         ; $620f: $8c
    ld h, b                                       ; $6210: $60
    ld h, b                                       ; $6211: $60
    ld h, a                                       ; $6212: $67
    ld h, a                                       ; $6213: $67
    ld l, a                                       ; $6214: $6f
    ld l, a                                       ; $6215: $6f
    db $ed                                        ; $6216: $ed
    ld l, l                                       ; $6217: $6d
    rst RST_28                                    ; $6218: $ef
    rst RST_08                                    ; $6219: $cf
    rst RST_00                                    ; $621a: $c7
    add a                                         ; $621b: $87
    inc b                                         ; $621c: $04
    nop                                           ; $621d: $00
    inc b                                         ; $621e: $04
    ld h, b                                       ; $621f: $60
    add e                                         ; $6220: $83
    ldh [$ff60], a                                ; $6221: $e0 $60
    ldh [$ff03], a                                ; $6223: $e0 $03
    ret nz                                        ; $6225: $c0

    add c                                         ; $6226: $81
    add b                                         ; $6227: $80
    add hl, bc                                    ; $6228: $09
    nop                                           ; $6229: $00
    ld [$8403], sp                                ; $622a: $08 $03 $84
    scf                                           ; $622d: $37
    ld [hl], $3e                                  ; $622e: $36 $3e
    ld a, $04                                     ; $6230: $3e $04
    nop                                           ; $6232: $00
    inc b                                         ; $6233: $04
    ccf                                           ; $6234: $3f
    inc b                                         ; $6235: $04
    inc sp                                        ; $6236: $33
    add h                                         ; $6237: $84
    ld a, e                                       ; $6238: $7b
    ld a, e                                       ; $6239: $7b
    ld a, a                                       ; $623a: $7f
    ld a, a                                       ; $623b: $7f
    inc b                                         ; $623c: $04
    nop                                           ; $623d: $00
    inc b                                         ; $623e: $04
    ld l, h                                       ; $623f: $6c
    ld b, $36                                     ; $6240: $06 $36
    ld b, $00                                     ; $6242: $06 $00
    inc c                                         ; $6244: $0c
    ld l, h                                       ; $6245: $6c
    inc b                                         ; $6246: $04
    nop                                           ; $6247: $00
    add d                                         ; $6248: $82
    jr @+$1a                                      ; $6249: $18 $18

    inc b                                         ; $624b: $04
    ld a, a                                       ; $624c: $7f
    add [hl]                                      ; $624d: $86
    jr c, jr_004_6268                             ; $624e: $38 $18

    ld [hl], a                                    ; $6250: $77
    inc sp                                        ; $6251: $33
    ld a, a                                       ; $6252: $7f
    ld a, a                                       ; $6253: $7f
    inc b                                         ; $6254: $04
    nop                                           ; $6255: $00
    add b                                         ; $6256: $80
    add e                                         ; $6257: $83
    ld b, $18                                     ; $6258: $06 $18
    ld a, b                                       ; $625a: $78
    ld a, b                                       ; $625b: $78
    jr jr_004_6276                                ; $625c: $18 $18

    jr jr_004_6264                                ; $625e: $18 $04

    nop                                           ; $6260: $00
    inc b                                         ; $6261: $04
    jr jr_004_6268                                ; $6262: $18 $04

jr_004_6264:
    ld a, [hl]                                    ; $6264: $7e
    add h                                         ; $6265: $84
    jr jr_004_6280                                ; $6266: $18 $18

jr_004_6268:
    ld a, [hl]                                    ; $6268: $7e
    ld a, [hl]                                    ; $6269: $7e
    inc b                                         ; $626a: $04
    nop                                           ; $626b: $00
    add h                                         ; $626c: $84
    ld c, $0c                                     ; $626d: $0e $0c
    rrca                                          ; $626f: $0f
    ld c, $04                                     ; $6270: $0e $04
    ld h, e                                       ; $6272: $63
    add h                                         ; $6273: $84
    ld h, b                                       ; $6274: $60
    ld h, b                                       ; $6275: $60

jr_004_6276:
    ld a, [hl]                                    ; $6276: $7e
    ld a, h                                       ; $6277: $7c
    ld b, $00                                     ; $6278: $06 $00
    add [hl]                                      ; $627a: $86
    ld h, b                                       ; $627b: $60
    ld h, b                                       ; $627c: $60
    ld h, [hl]                                    ; $627d: $66
    ld h, [hl]                                    ; $627e: $66
    ld h, e                                       ; $627f: $63

jr_004_6280:
    ld h, [hl]                                    ; $6280: $66
    inc b                                         ; $6281: $04
    ld h, e                                       ; $6282: $63
    inc b                                         ; $6283: $04
    nop                                           ; $6284: $00
    add b                                         ; $6285: $80
    add e                                         ; $6286: $83
    ld b, $0c                                     ; $6287: $06 $0c
    ld a, a                                       ; $6289: $7f
    ld a, a                                       ; $628a: $7f
    inc c                                         ; $628b: $0c
    ld a, a                                       ; $628c: $7f
    ld a, a                                       ; $628d: $7f
    ld b, $00                                     ; $628e: $06 $00
    ld a, [bc]                                    ; $6290: $0a
    ld h, b                                       ; $6291: $60
    inc b                                         ; $6292: $04
    nop                                           ; $6293: $00
    inc b                                         ; $6294: $04
    ld h, b                                       ; $6295: $60
    inc b                                         ; $6296: $04
    ld hl, sp-$70                                 ; $6297: $f8 $90
    ld h, b                                       ; $6299: $60
    ld h, b                                       ; $629a: $60
    ld l, a                                       ; $629b: $6f
    ld l, [hl]                                    ; $629c: $6e
    ld e, $0e                                     ; $629d: $1e $0e
    rrca                                          ; $629f: $0f
    rrca                                          ; $62a0: $0f
    dec de                                        ; $62a1: $1b
    dec de                                        ; $62a2: $1b
    jr nc, jr_004_62dd                            ; $62a3: $30 $38

    ld [hl], b                                    ; $62a5: $70
    ld [hl], b                                    ; $62a6: $70
    ld h, b                                       ; $62a7: $60
    ld h, b                                       ; $62a8: $60
    inc b                                         ; $62a9: $04
    nop                                           ; $62aa: $00
    add e                                         ; $62ab: $83
    rrca                                          ; $62ac: $0f
    rrca                                          ; $62ad: $0f
    rlca                                          ; $62ae: $07
    inc bc                                        ; $62af: $03
    ld b, $86                                     ; $62b0: $06 $86

Call_004_62b2:
    ld c, $0c                                     ; $62b2: $0e $0c
    inc a                                         ; $62b4: $3c
    inc a                                         ; $62b5: $3c
    jr c, jr_004_62e8                             ; $62b6: $38 $30

    inc b                                         ; $62b8: $04
    nop                                           ; $62b9: $00
    add b                                         ; $62ba: $80
    add e                                         ; $62bb: $83
    ld b, $6c                                     ; $62bc: $06 $6c
    ld l, l                                       ; $62be: $6d
    ld l, a                                       ; $62bf: $6f
    ld l, a                                       ; $62c0: $6f
    ld l, [hl]                                    ; $62c1: $6e
    ld l, h                                       ; $62c2: $6c
    inc b                                         ; $62c3: $04
    nop                                           ; $62c4: $00
    add b                                         ; $62c5: $80
    add e                                         ; $62c6: $83
    ld b, $1c                                     ; $62c7: $06 $1c
    ld a, $76                                     ; $62c9: $3e $76
    ld h, b                                       ; $62cb: $60
    ld a, a                                       ; $62cc: $7f
    ccf                                           ; $62cd: $3f
    inc b                                         ; $62ce: $04
    nop                                           ; $62cf: $00
    ld [$0418], sp                                ; $62d0: $08 $18 $04
    ld a, [hl]                                    ; $62d3: $7e
    inc b                                         ; $62d4: $04
    nop                                           ; $62d5: $00
    add b                                         ; $62d6: $80
    add e                                         ; $62d7: $83
    ld b, $7e                                     ; $62d8: $06 $7e
    jr nc, jr_004_630f                            ; $62da: $30 $33

    inc sp                                        ; $62dc: $33

jr_004_62dd:
    ccf                                           ; $62dd: $3f
    ld e, $04                                     ; $62de: $1e $04
    nop                                           ; $62e0: $00
    add h                                         ; $62e1: $84
    ld a, a                                       ; $62e2: $7f
    ld a, [hl]                                    ; $62e3: $7e
    ld h, e                                       ; $62e4: $63
    ld h, e                                       ; $62e5: $63
    inc b                                         ; $62e6: $04
    inc bc                                        ; $62e7: $03

jr_004_62e8:
    add h                                         ; $62e8: $84
    rrca                                          ; $62e9: $0f
    ld c, $0e                                     ; $62ea: $0e $0e
    inc c                                         ; $62ec: $0c
    inc b                                         ; $62ed: $04
    nop                                           ; $62ee: $00
    ld b, $63                                     ; $62ef: $06 $63
    add [hl]                                      ; $62f1: $86
    ld a, e                                       ; $62f2: $7b
    ld l, e                                       ; $62f3: $6b
    ld a, b                                       ; $62f4: $78
    jr c, @+$32                                   ; $62f5: $38 $30

    jr nc, @+$06                                  ; $62f7: $30 $04

    nop                                           ; $62f9: $00
    add b                                         ; $62fa: $80
    add e                                         ; $62fb: $83
    ld b, $0c                                     ; $62fc: $06 $0c
    ld a, $7f                                     ; $62fe: $3e $7f
    ld l, a                                       ; $6300: $6f
    ld a, l                                       ; $6301: $7d
    jr c, jr_004_6308                             ; $6302: $38 $04

    nop                                           ; $6304: $00
    ld b, $63                                     ; $6305: $06 $63
    add [hl]                                      ; $6307: $86

jr_004_6308:
    ld [hl], a                                    ; $6308: $77
    ld h, e                                       ; $6309: $63
    ld a, a                                       ; $630a: $7f
    ld a, $3e                                     ; $630b: $3e $3e
    inc e                                         ; $630d: $1c
    inc b                                         ; $630e: $04

jr_004_630f:
    nop                                           ; $630f: $00
    add e                                         ; $6310: $83
    ld l, a                                       ; $6311: $6f
    ld l, a                                       ; $6312: $6f
    ld h, c                                       ; $6313: $61
    inc bc                                        ; $6314: $03
    ld h, b                                       ; $6315: $60
    add d                                         ; $6316: $82
    ld l, b                                       ; $6317: $68
    ld h, b                                       ; $6318: $60
    inc bc                                        ; $6319: $03
    ld l, a                                       ; $631a: $6f
    add c                                         ; $631b: $81
    ld h, a                                       ; $631c: $67
    ld b, $00                                     ; $631d: $06 $00
    add b                                         ; $631f: $80
    add e                                         ; $6320: $83
    dec b                                         ; $6321: $05
    jr c, jr_004_63a0                             ; $6322: $38 $7c

    ld l, h                                       ; $6324: $6c
    ld a, h                                       ; $6325: $7c
    jr c, jr_004_6330                             ; $6326: $38 $08

    nop                                           ; $6328: $00
    adc h                                         ; $6329: $8c
    rrca                                          ; $632a: $0f
    ld b, $1f                                     ; $632b: $06 $1f
    rra                                           ; $632d: $1f
    inc a                                         ; $632e: $3c
    inc sp                                        ; $632f: $33

jr_004_6330:
    ld [hl], d                                    ; $6330: $72
    cpl                                           ; $6331: $2f
    ld l, a                                       ; $6332: $6f
    ld a, [hl]                                    ; $6333: $7e
    rst RST_18                                    ; $6334: $df
    ld a, [hl]                                    ; $6335: $7e
    inc b                                         ; $6336: $04
    nop                                           ; $6337: $00
    adc h                                         ; $6338: $8c
    ldh a, [$ff60]                                ; $6339: $f0 $60
    db $fc                                        ; $633b: $fc
    db $fc                                        ; $633c: $fc
    xor $f6                                       ; $633d: $ee $f6
    halt                                          ; $633f: $76
    ld a, d                                       ; $6340: $7a
    ccf                                           ; $6341: $3f
    ld a, [hl-]                                   ; $6342: $3a
    ei                                            ; $6343: $fb
    cp l                                          ; $6344: $bd
    nop                                           ; $6345: $00
    ld d, $00                                     ; $6346: $16 $00
    sbc d                                         ; $6348: $9a
    ld b, $06                                     ; $6349: $06 $06
    rlca                                          ; $634b: $07
    dec b                                         ; $634c: $05
    rlca                                          ; $634d: $07
    dec b                                         ; $634e: $05
    inc bc                                        ; $634f: $03
    ld [bc], a                                    ; $6350: $02
    inc bc                                        ; $6351: $03
    ld [bc], a                                    ; $6352: $02
    ret nz                                        ; $6353: $c0

    ret nz                                        ; $6354: $c0

    ldh [$ffa0], a                                ; $6355: $e0 $a0
    ld [hl], b                                    ; $6357: $70
    ld d, b                                       ; $6358: $50
    jr c, jr_004_6383                             ; $6359: $38 $28

    inc e                                         ; $635b: $1c
    inc d                                         ; $635c: $14
    inc e                                         ; $635d: $1c
    inc d                                         ; $635e: $14

Call_004_635f:
    adc [hl]                                      ; $635f: $8e
    adc d                                         ; $6360: $8a
    adc [hl]                                      ; $6361: $8e
    adc d                                         ; $6362: $8a
    inc bc                                        ; $6363: $03
    inc bc                                        ; $6364: $03
    xor l                                         ; $6365: $ad
    ld [bc], a                                    ; $6366: $02
    inc bc                                        ; $6367: $03
    ld [bc], a                                    ; $6368: $02
    inc bc                                        ; $6369: $03
    ld [bc], a                                    ; $636a: $02
    inc bc                                        ; $636b: $03
    ld [bc], a                                    ; $636c: $02
    ccf                                           ; $636d: $3f
    ld a, $3f                                     ; $636e: $3e $3f
    jr nz, jr_004_63b1                            ; $6370: $20 $3f

    ld a, $c0                                     ; $6372: $3e $c0
    ret nz                                        ; $6374: $c0

    ld b, b                                       ; $6375: $40
    ret nz                                        ; $6376: $c0

Jump_004_6377:
    ld b, b                                       ; $6377: $40
    ret nz                                        ; $6378: $c0

    ld b, b                                       ; $6379: $40
    ret nz                                        ; $637a: $c0

    ld b, b                                       ; $637b: $40
    ret nz                                        ; $637c: $c0

    ld a, h                                       ; $637d: $7c
    db $fc                                        ; $637e: $fc
    inc a                                         ; $637f: $3c
    call nz, $fc7c                                ; $6380: $c4 $7c $fc

jr_004_6383:
    inc bc                                        ; $6383: $03
    inc bc                                        ; $6384: $03
    rlca                                          ; $6385: $07
    dec b                                         ; $6386: $05
    ld c, $0a                                     ; $6387: $0e $0a
    inc e                                         ; $6389: $1c
    inc d                                         ; $638a: $14
    jr c, jr_004_63b5                             ; $638b: $38 $28

    jr c, jr_004_63b7                             ; $638d: $38 $28

    ld [hl], c                                    ; $638f: $71
    ld d, c                                       ; $6390: $51
    ld [hl], c                                    ; $6391: $71
    ld d, c                                       ; $6392: $51
    ld b, $00                                     ; $6393: $06 $00
    rst RST_38                                    ; $6395: $ff
    ld h, b                                       ; $6396: $60
    ld h, b                                       ; $6397: $60
    ldh [$ffa0], a                                ; $6398: $e0 $a0
    ldh [$ffa0], a                                ; $639a: $e0 $a0
    ret nz                                        ; $639c: $c0

    ld b, b                                       ; $639d: $40
    ret nz                                        ; $639e: $c0

    ld b, b                                       ; $639f: $40

jr_004_63a0:
    rlca                                          ; $63a0: $07
    inc b                                         ; $63a1: $04
    rlca                                          ; $63a2: $07
    dec b                                         ; $63a3: $05
    rrca                                          ; $63a4: $0f
    add hl, bc                                    ; $63a5: $09
    ld e, $12                                     ; $63a6: $1e $12
    ld e, $12                                     ; $63a8: $1e $12
    inc a                                         ; $63aa: $3c
    inc h                                         ; $63ab: $24
    inc a                                         ; $63ac: $3c
    inc h                                         ; $63ad: $24
    inc a                                         ; $63ae: $3c
    inc h                                         ; $63af: $24
    adc [hl]                                      ; $63b0: $8e

jr_004_63b1:
    adc d                                         ; $63b1: $8a
    ld e, $12                                     ; $63b2: $1e $12
    inc a                                         ; $63b4: $3c

jr_004_63b5:
    inc h                                         ; $63b5: $24
    ld a, b                                       ; $63b6: $78

jr_004_63b7:
    ld c, b                                       ; $63b7: $48
    ld a, b                                       ; $63b8: $78
    ld c, b                                       ; $63b9: $48
    ldh a, [$ff90]                                ; $63ba: $f0 $90
    ldh a, [$ff90]                                ; $63bc: $f0 $90
    pop af                                        ; $63be: $f1
    sub c                                         ; $63bf: $91
    inc bc                                        ; $63c0: $03
    ld [bc], a                                    ; $63c1: $02
    inc bc                                        ; $63c2: $03
    ld [bc], a                                    ; $63c3: $02
    inc bc                                        ; $63c4: $03
    ld [bc], a                                    ; $63c5: $02
    inc bc                                        ; $63c6: $03
    ld [bc], a                                    ; $63c7: $02
    rra                                           ; $63c8: $1f
    ld e, $63                                     ; $63c9: $1e $63
    ld a, [hl]                                    ; $63cb: $7e
    add e                                         ; $63cc: $83
    cp $0f                                        ; $63cd: $fe $0f
    cp $40                                        ; $63cf: $fe $40
    ret nz                                        ; $63d1: $c0

    ld b, b                                       ; $63d2: $40
    ret nz                                        ; $63d3: $c0

    ld b, b                                       ; $63d4: $40
    ret nz                                        ; $63d5: $c0

    ld b, b                                       ; $63d6: $40
    ret nz                                        ; $63d7: $c0

    ld a, b                                       ; $63d8: $78
    ld hl, sp+$46                                 ; $63d9: $f8 $46
    cp $41                                        ; $63db: $fe $41
    rst RST_38                                    ; $63dd: $ff
    ld [hl], b                                    ; $63de: $70
    rst RST_38                                    ; $63df: $ff
    ld [hl], c                                    ; $63e0: $71
    ld d, c                                       ; $63e1: $51
    ld l, b                                       ; $63e2: $68
    ld e, b                                       ; $63e3: $58
    inc [hl]                                      ; $63e4: $34
    inc l                                         ; $63e5: $2c
    ld a, [de]                                    ; $63e6: $1a
    ld d, $1a                                     ; $63e7: $16 $1a
    ld d, $0d                                     ; $63e9: $16 $0d
    dec bc                                        ; $63eb: $0b
    dec c                                         ; $63ec: $0d
    dec bc                                        ; $63ed: $0b
    adc l                                         ; $63ee: $8d
    adc e                                         ; $63ef: $8b
    and b                                         ; $63f0: $a0
    ld h, b                                       ; $63f1: $60
    ldh [$ffa0], a                                ; $63f2: $e0 $a0
    ret nc                                        ; $63f4: $d0

    or b                                          ; $63f5: $b0
    ld l, b                                       ; $63f6: $68
    ld e, b                                       ; $63f7: $58
    ld l, b                                       ; $63f8: $68
    ld e, b                                       ; $63f9: $58
    inc [hl]                                      ; $63fa: $34
    inc l                                         ; $63fb: $2c
    inc [hl]                                      ; $63fc: $34
    inc l                                         ; $63fd: $2c
    inc [hl]                                      ; $63fe: $34
    inc l                                         ; $63ff: $2c

jr_004_6400:
    dec a                                         ; $6400: $3d
    dec h                                         ; $6401: $25
    dec a                                         ; $6402: $3d
    dec h                                         ; $6403: $25
    dec a                                         ; $6404: $3d
    dec h                                         ; $6405: $25
    ccf                                           ; $6406: $3f
    inc hl                                        ; $6407: $23
    rra                                           ; $6408: $1f
    inc de                                        ; $6409: $13
    rra                                           ; $640a: $1f
    db $10                                        ; $640b: $10
    rrca                                          ; $640c: $0f
    ld [$0407], sp                                ; $640d: $08 $07 $04
    ldh [c], a                                    ; $6410: $e2
    inc hl                                        ; $6411: $23
    db $e4                                        ; $6412: $e4
    daa                                           ; $6413: $27
    db $e4                                        ; $6414: $e4
    db $d3                                        ; $6415: $d3
    daa                                           ; $6416: $27
    add sp, $2f                                   ; $6417: $e8 $2f
    reti                                          ; $6419: $d9


    ccf                                           ; $641a: $3f
    reti                                          ; $641b: $d9


    ccf                                           ; $641c: $3f
    jp hl                                         ; $641d: $e9


    rra                                           ; $641e: $1f
    jp hl                                         ; $641f: $e9


    ld e, a                                       ; $6420: $5f
    ccf                                           ; $6421: $3f
    cp $7f                                        ; $6422: $fe $7f
    ldh a, [c]                                    ; $6424: $f2
    di                                            ; $6425: $f3
    adc $ef                                       ; $6426: $ce $ef
    rst RST_18                                    ; $6428: $df
    sbc $be                                       ; $6429: $de $be
    call c, $f9bc                                 ; $642b: $dc $bc $f9
    ld hl, sp-$08                                 ; $642e: $f8 $f8
    ld [$ff7c], sp                                ; $6430: $08 $7c $ff
    ld e, [hl]                                    ; $6433: $5e
    rst RST_28                                    ; $6434: $ef
    ld e, e                                       ; $6435: $5b
    rst RST_20                                    ; $6436: $e7
    ei                                            ; $6437: $fb
    rst RST_30                                    ; $6438: $f7
    db $fd                                        ; $6439: $fd
    ld a, e                                       ; $643a: $7b
    dec a                                         ; $643b: $3d
    ld a, e                                       ; $643c: $7b
    sbc a                                         ; $643d: $9f
    ccf                                           ; $643e: $3f
    rst RST_18                                    ; $643f: $df
    jr nc, jr_004_6488                            ; $6440: $30 $46

    push bc                                       ; $6442: $c5
    ld h, $e5                                     ; $6443: $26 $e5
    ld h, $e5                                     ; $6445: $26 $e5
    ld d, $f5                                     ; $6447: $16 $f5
    sbc [hl]                                      ; $6449: $9e
    ld sp, hl                                     ; $644a: $f9
    sbc [hl]                                      ; $644b: $9e
    ld sp, hl                                     ; $644c: $f9
    sbc a                                         ; $644d: $9f
    ldh a, [$ff9f]                                ; $644e: $f0 $9f
    db $f4                                        ; $6450: $f4
    or h                                          ; $6451: $b4
    xor h                                         ; $6452: $ac
    or h                                          ; $6453: $b4
    xor h                                         ; $6454: $ac
    or h                                          ; $6455: $b4
    xor h                                         ; $6456: $ac
    db $f4                                        ; $6457: $f4
    call z, $d8e8                                 ; $6458: $cc $e8 $d8
    ld l, b                                       ; $645b: $68
    sbc b                                         ; $645c: $98
    ret nc                                        ; $645d: $d0

    jr nc, jr_004_6400                            ; $645e: $30 $a0

    ld h, b                                       ; $6460: $60
    rlca                                          ; $6461: $07
    inc b                                         ; $6462: $04

jr_004_6463:
    inc bc                                        ; $6463: $03
    ld [bc], a                                    ; $6464: $02
    inc bc                                        ; $6465: $03
    ld [bc], a                                    ; $6466: $02
    inc bc                                        ; $6467: $03
    ld [bc], a                                    ; $6468: $02
    ld [$c801], sp                                ; $6469: $08 $01 $c8
    jp hl                                         ; $646c: $e9


    rra                                           ; $646d: $1f
    jp hl                                         ; $646e: $e9


    ld e, a                                       ; $646f: $5f
    jp hl                                         ; $6470: $e9


    rra                                           ; $6471: $1f
    jp hl                                         ; $6472: $e9


    ld e, a                                       ; $6473: $5f
    ret z                                         ; $6474: $c8

    ccf                                           ; $6475: $3f
    call nc, $d437                                ; $6476: $d4 $37 $d4
    scf                                           ; $6479: $37
    jp nc, $0a33                                  ; $647a: $d2 $33 $0a

    ld hl, sp-$05                                 ; $647d: $f8 $fb
    ld hl, sp-$63                                 ; $647f: $f8 $9d
    ld hl, sp-$22                                 ; $6481: $f8 $de
    cp h                                          ; $6483: $bc
    rst RST_28                                    ; $6484: $ef
    sbc $df                                       ; $6485: $de $df
    rst RST_28                                    ; $6487: $ef

jr_004_6488:
    ld [hl], e                                    ; $6488: $73
    cp $3f                                        ; $6489: $fe $3f
    cp $50                                        ; $648b: $fe $50
    ccf                                           ; $648d: $3f

Jump_004_648e:
    rra                                           ; $648e: $1f
    ccf                                           ; $648f: $3f
    sbc c                                         ; $6490: $99
    ld a, a                                       ; $6491: $7f
    dec a                                         ; $6492: $3d
    ei                                            ; $6493: $fb
    ld [hl], a                                    ; $6494: $77
    ei                                            ; $6495: $fb
    di                                            ; $6496: $f3
    rst RST_38                                    ; $6497: $ff
    ld c, [hl]                                    ; $6498: $4e
    rst RST_38                                    ; $6499: $ff
    ld a, h                                       ; $649a: $7c
    rst RST_38                                    ; $649b: $ff
    sbc a                                         ; $649c: $9f
    ldh a, [$ff9f]                                ; $649d: $f0 $9f
    db $f4                                        ; $649f: $f4
    sbc a                                         ; $64a0: $9f
    ldh a, [$ff9e]                                ; $64a1: $f0 $9e
    push af                                       ; $64a3: $f5
    ld e, $f1                                     ; $64a4: $1e $f1
    ld l, $e9                                     ; $64a6: $2e $e9
    ld l, $e9                                     ; $64a8: $2e $e9
    ld c, [hl]                                    ; $64aa: $4e
    ret                                           ; $64ab: $c9


    and b                                         ; $64ac: $a0
    ld h, b                                       ; $64ad: $60
    ld b, b                                       ; $64ae: $40
    ret nz                                        ; $64af: $c0

    ld b, b                                       ; $64b0: $40
    ret nz                                        ; $64b1: $c0

jr_004_64b2:
    ld b, b                                       ; $64b2: $40
    ret nz                                        ; $64b3: $c0

    ld [$0480], sp                                ; $64b4: $08 $80 $04
    ld bc, $00cc                                  ; $64b7: $01 $cc $00
    nop                                           ; $64ba: $00
    ld hl, sp-$08                                 ; $64bb: $f8 $f8
    cp $86                                        ; $64bd: $fe $86
    ld a, a                                       ; $64bf: $7f
    ld a, c                                       ; $64c0: $79
    rlca                                          ; $64c1: $07
    ld b, $01                                     ; $64c2: $06 $01
    ld bc, $31d1                                  ; $64c4: $01 $d1 $31
    ret nc                                        ; $64c7: $d0

    jr nc, jr_004_64b2                            ; $64c8: $30 $e8

    sbc b                                         ; $64ca: $98
    or h                                          ; $64cb: $b4
    call z, Call_004_635f                         ; $64cc: $cc $5f $63
    daa                                           ; $64cf: $27
    jr c, jr_004_6463                             ; $64d0: $38 $91

    sbc [hl]                                      ; $64d2: $9e
    call z, Call_000_1f4f                         ; $64d3: $cc $4f $1f
    cp $83                                        ; $64d6: $fe $83
    cp $63                                        ; $64d8: $fe $63
    ld a, [hl]                                    ; $64da: $7e
    rra                                           ; $64db: $1f
    ld e, $03                                     ; $64dc: $1e $03
    ld [bc], a                                    ; $64de: $02
    rst RST_38                                    ; $64df: $ff
    cp $ff                                        ; $64e0: $fe $ff
    inc bc                                        ; $64e2: $03
    ld [$70ff], sp                                ; $64e3: $08 $ff $70
    rst RST_38                                    ; $64e6: $ff
    ld b, c                                       ; $64e7: $41
    rst RST_38                                    ; $64e8: $ff
    ld b, [hl]                                    ; $64e9: $46
    cp $78                                        ; $64ea: $fe $78
    ld hl, sp+$40                                 ; $64ec: $f8 $40
    ret nz                                        ; $64ee: $c0

    ld a, a                                       ; $64ef: $7f
    rst RST_38                                    ; $64f0: $ff
    rst RST_38                                    ; $64f1: $ff
    ret nz                                        ; $64f2: $c0

    db $10                                        ; $64f3: $10
    rst RST_38                                    ; $64f4: $ff
    adc [hl]                                      ; $64f5: $8e
    adc c                                         ; $64f6: $89
    inc c                                         ; $64f7: $0c
    dec bc                                        ; $64f8: $0b
    dec e                                         ; $64f9: $1d
    inc de                                        ; $64fa: $13
    add hl, sp                                    ; $64fb: $39
    daa                                           ; $64fc: $27
    ldh a, [c]                                    ; $64fd: $f2
    adc $e4                                       ; $64fe: $ce $e4
    inc e                                         ; $6500: $1c
    adc c                                         ; $6501: $89
    ld a, c                                       ; $6502: $79
    inc sp                                        ; $6503: $33
    ldh a, [c]                                    ; $6504: $f2
    inc b                                         ; $6505: $04
    add b                                         ; $6506: $80
    sub [hl]                                      ; $6507: $96
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    rra                                           ; $650a: $1f
    rra                                           ; $650b: $1f
    ld a, a                                       ; $650c: $7f
    ld h, c                                       ; $650d: $61
    cp $9e                                        ; $650e: $fe $9e
    ldh [$ff60], a                                ; $6510: $e0 $60
    add b                                         ; $6512: $80
    add b                                         ; $6513: $80
    db $e3                                        ; $6514: $e3
    and e                                         ; $6515: $a3
    ld a, b                                       ; $6516: $78
    ld e, b                                       ; $6517: $58
    ccf                                           ; $6518: $3f
    daa                                           ; $6519: $27
    rra                                           ; $651a: $1f
    jr jr_004_6524                                ; $651b: $18 $07

    rlca                                          ; $651d: $07
    ld b, $00                                     ; $651e: $06 $00
    xor d                                         ; $6520: $aa
    inc bc                                        ; $6521: $03
    rst RST_38                                    ; $6522: $ff
    rst RST_38                                    ; $6523: $ff

jr_004_6524:
    cp $03                                        ; $6524: $fe $03
    ld [bc], a                                    ; $6526: $02
    rst RST_38                                    ; $6527: $ff
    cp $fb                                        ; $6528: $fe $fb
    ld c, $ff                                     ; $652a: $0e $ff
    cp $03                                        ; $652c: $fe $03
    ld [bc], a                                    ; $652e: $02
    ld bc, $c001                                  ; $652f: $01 $01 $c0
    rst RST_38                                    ; $6532: $ff
    ld a, a                                       ; $6533: $7f
    rst RST_38                                    ; $6534: $ff
    ld b, b                                       ; $6535: $40
    ret nz                                        ; $6536: $c0

    ld a, a                                       ; $6537: $7f
    rst RST_38                                    ; $6538: $ff
    ld e, a                                       ; $6539: $5f
    ldh a, [$ff7f]                                ; $653a: $f0 $7f
    rst RST_38                                    ; $653c: $ff
    ld b, b                                       ; $653d: $40
    ret nz                                        ; $653e: $c0

    add b                                         ; $653f: $80
    add b                                         ; $6540: $80
    rst RST_00                                    ; $6541: $c7
    push bc                                       ; $6542: $c5
    ld e, $1a                                     ; $6543: $1e $1a
    db $fc                                        ; $6545: $fc
    db $e4                                        ; $6546: $e4
    ld hl, sp+$18                                 ; $6547: $f8 $18
    ldh [$ffe0], a                                ; $6549: $e0 $e0
    ld a, [bc]                                    ; $654b: $0a
    nop                                           ; $654c: $00
    add b                                         ; $654d: $80
    add e                                         ; $654e: $83
    ld b, $01                                     ; $654f: $06 $01
    ld h, c                                       ; $6551: $61
    ld l, a                                       ; $6552: $6f
    ld l, a                                       ; $6553: $6f
    ld h, c                                       ; $6554: $61
    ld h, c                                       ; $6555: $61
    inc b                                         ; $6556: $04
    nop                                           ; $6557: $00
    inc b                                         ; $6558: $04
    add b                                         ; $6559: $80
    inc b                                         ; $655a: $04
    ret nz                                        ; $655b: $c0

    inc b                                         ; $655c: $04
    add b                                         ; $655d: $80
    add b                                         ; $655e: $80
    add e                                         ; $655f: $83
    inc b                                         ; $6560: $04
    ld h, c                                       ; $6561: $61
    ld h, a                                       ; $6562: $67
    ld l, a                                       ; $6563: $6f
    ld l, l                                       ; $6564: $6d
    add h                                         ; $6565: $84
    ld a, a                                       ; $6566: $7f
    ld l, a                                       ; $6567: $6f
    ld [hl], a                                    ; $6568: $77
    scf                                           ; $6569: $37
    inc b                                         ; $656a: $04
    nop                                           ; $656b: $00
    inc b                                         ; $656c: $04
    add b                                         ; $656d: $80
    adc b                                         ; $656e: $88
    call z, $ee8c                                 ; $656f: $cc $8c $ee
    call z, $e6e6                                 ; $6572: $cc $e6 $e6
    ld b, [hl]                                    ; $6575: $46
    ld b, $08                                     ; $6576: $06 $08
    nop                                           ; $6578: $00
    add h                                         ; $6579: $84
    jr nc, jr_004_65ac                            ; $657a: $30 $30

    scf                                           ; $657c: $37
    inc sp                                        ; $657d: $33
    add b                                         ; $657e: $80
    add e                                         ; $657f: $83
    inc b                                         ; $6580: $04
    scf                                           ; $6581: $37
    jr nc, jr_004_65b4                            ; $6582: $30 $30

    jr nc, jr_004_658c                            ; $6584: $30 $06

    nop                                           ; $6586: $00
    add l                                         ; $6587: $85
    ret nz                                        ; $6588: $c0

    add b                                         ; $6589: $80
    ret nz                                        ; $658a: $c0

    ret nz                                        ; $658b: $c0

jr_004_658c:
    ld b, b                                       ; $658c: $40
    add hl, bc                                    ; $658d: $09
    nop                                           ; $658e: $00
    inc b                                         ; $658f: $04
    ret nz                                        ; $6590: $c0

    adc b                                         ; $6591: $88
    add $c0                                       ; $6592: $c6 $c0
    adc $c6                                       ; $6594: $ce $c6
    ld hl, sp-$22                                 ; $6596: $f8 $de
    ld hl, sp+$78                                 ; $6598: $f8 $78
    inc b                                         ; $659a: $04
    nop                                           ; $659b: $00
    add c                                         ; $659c: $81
    jr nz, jr_004_65a2                            ; $659d: $20 $03

    jr nc, @-$76                                  ; $659f: $30 $88

    inc e                                         ; $65a1: $1c

jr_004_65a2:
    inc a                                         ; $65a2: $3c
    cp $fe                                        ; $65a3: $fe $fe
    xor $e6                                       ; $65a5: $ee $e6
    ld b, $06                                     ; $65a7: $06 $06
    inc b                                         ; $65a9: $04
    nop                                           ; $65aa: $00
    inc b                                         ; $65ab: $04

jr_004_65ac:
    db $fc                                        ; $65ac: $fc
    adc b                                         ; $65ad: $88
    inc c                                         ; $65ae: $0c
    inc c                                         ; $65af: $0c
    jr jr_004_65ca                                ; $65b0: $18 $18

    ld a, h                                       ; $65b2: $7c
    ld a, b                                       ; $65b3: $78

jr_004_65b4:
    ld a, [hl]                                    ; $65b4: $7e
    ld a, h                                       ; $65b5: $7c
    inc b                                         ; $65b6: $04
    nop                                           ; $65b7: $00
    add b                                         ; $65b8: $80
    add e                                         ; $65b9: $83
    ld b, $06                                     ; $65ba: $06 $06
    ld c, $1c                                     ; $65bc: $0e $1c
    jr c, jr_004_6630                             ; $65be: $38 $70

    ldh [rDIV], a                                 ; $65c0: $e0 $04
    nop                                           ; $65c2: $00
    inc b                                         ; $65c3: $04
    jr nc, jr_004_65ca                            ; $65c4: $30 $04

    cp $84                                        ; $65c6: $fe $84
    jr jr_004_65e2                                ; $65c8: $18 $18

jr_004_65ca:
    inc e                                         ; $65ca: $1c
    jr jr_004_65d1                                ; $65cb: $18 $04

    nop                                           ; $65cd: $00
    add h                                         ; $65ce: $84
    ld h, b                                       ; $65cf: $60
    ld h, b                                       ; $65d0: $60

jr_004_65d1:
    ld a, h                                       ; $65d1: $7c
    ld l, h                                       ; $65d2: $6c
    add b                                         ; $65d3: $80
    add e                                         ; $65d4: $83
    inc b                                         ; $65d5: $04
    cp $f6                                        ; $65d6: $fe $f6
    ld h, [hl]                                    ; $65d8: $66
    ld h, [hl]                                    ; $65d9: $66
    inc b                                         ; $65da: $04
    nop                                           ; $65db: $00
    add b                                         ; $65dc: $80
    add e                                         ; $65dd: $83
    ld b, $0c                                     ; $65de: $06 $0c
    ld a, a                                       ; $65e0: $7f
    ld a, a                                       ; $65e1: $7f

jr_004_65e2:
    inc c                                         ; $65e2: $0c
    ld a, a                                       ; $65e3: $7f
    ld a, a                                       ; $65e4: $7f
    inc b                                         ; $65e5: $04
    nop                                           ; $65e6: $00
    inc c                                         ; $65e7: $0c
    ld h, b                                       ; $65e8: $60
    inc b                                         ; $65e9: $04
    nop                                           ; $65ea: $00
    inc b                                         ; $65eb: $04
    jr nc, @+$06                                  ; $65ec: $30 $04

    ld a, h                                       ; $65ee: $7c
    add b                                         ; $65ef: $80
    add e                                         ; $65f0: $83
    ld [$3730], sp                                ; $65f1: $08 $30 $37
    jr nc, jr_004_6626                            ; $65f4: $30 $30

    jr nc, jr_004_662b                            ; $65f6: $30 $33

    dec sp                                        ; $65f8: $3b
    add hl, de                                    ; $65f9: $19
    ld [$8400], sp                                ; $65fa: $08 $00 $84
    inc c                                         ; $65fd: $0c
    inc c                                         ; $65fe: $0c
    ld c, $0c                                     ; $65ff: $0e $0c
    inc b                                         ; $6601: $04
    add $04                                       ; $6602: $c6 $04
    nop                                           ; $6604: $00
    adc h                                         ; $6605: $8c
    ld [hl], b                                    ; $6606: $70
    ld [hl], b                                    ; $6607: $70
    ldh [$ff60], a                                ; $6608: $e0 $60
    ret nz                                        ; $660a: $c0

    ret nz                                        ; $660b: $c0

    ldh [$ffc0], a                                ; $660c: $e0 $c0
    cp $7e                                        ; $660e: $fe $7e
    ld a, [hl]                                    ; $6610: $7e
    ld a, $04                                     ; $6611: $3e $04
    nop                                           ; $6613: $00
    inc b                                         ; $6614: $04
    ld b, $88                                     ; $6615: $06 $88
    inc b                                         ; $6617: $04
    ld b, $0e                                     ; $6618: $06 $0e
    inc c                                         ; $661a: $0c
    ld a, h                                       ; $661b: $7c
    ld a, h                                       ; $661c: $7c
    ld a, b                                       ; $661d: $78
    ld [hl], b                                    ; $661e: $70
    inc b                                         ; $661f: $04
    nop                                           ; $6620: $00
    ld b, $06                                     ; $6621: $06 $06
    add [hl]                                      ; $6623: $86
    ld c, $0c                                     ; $6624: $0e $0c

jr_004_6626:
    db $fc                                        ; $6626: $fc
    db $fc                                        ; $6627: $fc
    ld hl, sp-$10                                 ; $6628: $f8 $f0
    inc b                                         ; $662a: $04

jr_004_662b:
    nop                                           ; $662b: $00
    add b                                         ; $662c: $80
    add e                                         ; $662d: $83
    ld b, $e0                                     ; $662e: $06 $e0

jr_004_6630:
    ld [hl], b                                    ; $6630: $70
    jr c, jr_004_664f                             ; $6631: $38 $1c

    ld c, $06                                     ; $6633: $0e $06
    inc b                                         ; $6635: $04
    nop                                           ; $6636: $00
    inc b                                         ; $6637: $04
    inc c                                         ; $6638: $0c
    inc b                                         ; $6639: $04
    ret nz                                        ; $663a: $c0

    add h                                         ; $663b: $84
    ld hl, sp-$08                                 ; $663c: $f8 $f8
    ld a, b                                       ; $663e: $78
    ld a, b                                       ; $663f: $78
    inc b                                         ; $6640: $04
    nop                                           ; $6641: $00
    add b                                         ; $6642: $80
    add e                                         ; $6643: $83
    dec b                                         ; $6644: $05
    ld h, [hl]                                    ; $6645: $66
    and $e6                                       ; $6646: $e6 $e6
    rst RST_20                                    ; $6648: $e7
    ld h, a                                       ; $6649: $67
    add d                                         ; $664a: $82
    ld h, [hl]                                    ; $664b: $66
    ld h, d                                       ; $664c: $62
    inc b                                         ; $664d: $04
    nop                                           ; $664e: $00

jr_004_664f:
    adc h                                         ; $664f: $8c
    inc c                                         ; $6650: $0c
    inc c                                         ; $6651: $0c
    inc a                                         ; $6652: $3c
    inc a                                         ; $6653: $3c
    ld a, [hl]                                    ; $6654: $7e
    ld a, [hl]                                    ; $6655: $7e
    ld l, [hl]                                    ; $6656: $6e
    ld l, a                                       ; $6657: $6f
    ld a, a                                       ; $6658: $7f
    ld a, a                                       ; $6659: $7f
    ld a, [hl-]                                   ; $665a: $3a
    dec sp                                        ; $665b: $3b
    inc b                                         ; $665c: $04
    nop                                           ; $665d: $00
    inc b                                         ; $665e: $04
    ld h, b                                       ; $665f: $60
    adc b                                         ; $6660: $88
    ld h, e                                       ; $6661: $63
    ld h, e                                       ; $6662: $63
    ld [hl], a                                    ; $6663: $77
    ld h, e                                       ; $6664: $63
    ld a, a                                       ; $6665: $7f
    ld a, $3e                                     ; $6666: $3e $3e
    inc e                                         ; $6668: $1c
    inc b                                         ; $6669: $04
    nop                                           ; $666a: $00
    add b                                         ; $666b: $80
    add e                                         ; $666c: $83
    dec b                                         ; $666d: $05
    scf                                           ; $666e: $37
    jr nc, jr_004_66a1                            ; $666f: $30 $30

    inc [hl]                                      ; $6671: $34
    scf                                           ; $6672: $37
    add d                                         ; $6673: $82
    scf                                           ; $6674: $37
    inc sp                                        ; $6675: $33
    inc b                                         ; $6676: $04
    nop                                           ; $6677: $00
    add b                                         ; $6678: $80
    add e                                         ; $6679: $83
    ld b, $9e                                     ; $667a: $06 $9e
    cp a                                          ; $667c: $bf
    inc sp                                        ; $667d: $33
    inc sp                                        ; $667e: $33
    cp a                                          ; $667f: $bf
    sbc [hl]                                      ; $6680: $9e
    ld [$0400], sp                                ; $6681: $08 $00 $04
    add hl, de                                    ; $6684: $19
    inc b                                         ; $6685: $04
    ld a, [hl]                                    ; $6686: $7e
    add h                                         ; $6687: $84
    jr jr_004_66a2                                ; $6688: $18 $18

    rra                                           ; $668a: $1f
    ld e, $04                                     ; $668b: $1e $04
    nop                                           ; $668d: $00
    adc h                                         ; $668e: $8c
    adc h                                         ; $668f: $8c
    adc h                                         ; $6690: $8c
    call z, $dfcc                                 ; $6691: $cc $cc $df
    db $dd                                        ; $6694: $dd
    rst RST_18                                    ; $6695: $df
    rst RST_18                                    ; $6696: $df
    rrca                                          ; $6697: $0f
    ld c, $0e                                     ; $6698: $0e $0e
    inc c                                         ; $669a: $0c
    inc b                                         ; $669b: $04
    nop                                           ; $669c: $00
    inc b                                         ; $669d: $04
    rrca                                          ; $669e: $0f
    add l                                         ; $669f: $85
    ret nz                                        ; $66a0: $c0

jr_004_66a1:
    ret nz                                        ; $66a1: $c0

jr_004_66a2:
    pop hl                                        ; $66a2: $e1
    pop hl                                        ; $66a3: $e1
    rst RST_20                                    ; $66a4: $e7
    inc bc                                        ; $66a5: $03
    ld h, a                                       ; $66a6: $67
    inc b                                         ; $66a7: $04
    nop                                           ; $66a8: $00
    ld b, $c0                                     ; $66a9: $06 $c0
    sub d                                         ; $66ab: $92
    add b                                         ; $66ac: $80
    add b                                         ; $66ad: $80
    ret nz                                        ; $66ae: $c0

    add b                                         ; $66af: $80
    ldh [$ffc0], a                                ; $66b0: $e0 $c0
    ccf                                           ; $66b2: $3f
    ccf                                           ; $66b3: $3f
    ld a, e                                       ; $66b4: $7b
    ld a, c                                       ; $66b5: $79
    ld a, c                                       ; $66b6: $79
    ld sp, hl                                     ; $66b7: $f9
    ld e, c                                       ; $66b8: $59
    reti                                          ; $66b9: $d9


    ld a, e                                       ; $66ba: $7b
    ei                                            ; $66bb: $fb
    inc sp                                        ; $66bc: $33
    ld [hl], e                                    ; $66bd: $73
    inc b                                         ; $66be: $04
    nop                                           ; $66bf: $00
    add d                                         ; $66c0: $82
    sbc h                                         ; $66c1: $9c
    inc e                                         ; $66c2: $1c
    inc b                                         ; $66c3: $04
    sbc h                                         ; $66c4: $9c
    add [hl]                                      ; $66c5: $86
    adc h                                         ; $66c6: $8c
    adc h                                         ; $66c7: $8c
    adc l                                         ; $66c8: $8d
    adc l                                         ; $66c9: $8d
    dec c                                         ; $66ca: $0d
    dec c                                         ; $66cb: $0d
    inc b                                         ; $66cc: $04
    nop                                           ; $66cd: $00
    adc h                                         ; $66ce: $8c
    ld h, b                                       ; $66cf: $60
    ld h, b                                       ; $66d0: $60
    ld h, a                                       ; $66d1: $67
    ld h, a                                       ; $66d2: $67
    ld l, a                                       ; $66d3: $6f
    ld l, a                                       ; $66d4: $6f
    db $ed                                        ; $66d5: $ed
    ld l, l                                       ; $66d6: $6d
    rst RST_28                                    ; $66d7: $ef
    rst RST_08                                    ; $66d8: $cf
    rst RST_00                                    ; $66d9: $c7
    add a                                         ; $66da: $87
    inc b                                         ; $66db: $04
    nop                                           ; $66dc: $00
    inc b                                         ; $66dd: $04
    ld h, b                                       ; $66de: $60
    add e                                         ; $66df: $83
    ldh [$ff60], a                                ; $66e0: $e0 $60
    ldh [$ff03], a                                ; $66e2: $e0 $03
    ret nz                                        ; $66e4: $c0

    add c                                         ; $66e5: $81
    add b                                         ; $66e6: $80
    dec c                                         ; $66e7: $0d
    nop                                           ; $66e8: $00
    adc b                                         ; $66e9: $88
    ld e, $3c                                     ; $66ea: $1e $3c
    rst RST_38                                    ; $66ec: $ff
    cp $f7                                        ; $66ed: $fe $f7
    db $e3                                        ; $66ef: $e3
    inc bc                                        ; $66f0: $03
    inc bc                                        ; $66f1: $03
    ld [$8800], sp                                ; $66f2: $08 $00 $88
    rrca                                          ; $66f5: $0f
    ld e, $7f                                     ; $66f6: $1e $7f
    ld a, a                                       ; $66f8: $7f
    ld a, e                                       ; $66f9: $7b
    ld [hl], c                                    ; $66fa: $71
    ld bc, $0401                                  ; $66fb: $01 $01 $04
    nop                                           ; $66fe: $00
    ld b, $36                                     ; $66ff: $06 $36
    add d                                         ; $6701: $82
    or [hl]                                       ; $6702: $b6
    ld [hl], $04                                  ; $6703: $36 $04
    add b                                         ; $6705: $80
    inc b                                         ; $6706: $04
    nop                                           ; $6707: $00
    add d                                         ; $6708: $82
    ld b, $04                                     ; $6709: $06 $04
    inc b                                         ; $670b: $04
    add $04                                       ; $670c: $c6 $04
    rst RST_18                                    ; $670e: $df
    add d                                         ; $670f: $82
    add $c6                                       ; $6710: $c6 $c6
    inc b                                         ; $6712: $04
    nop                                           ; $6713: $00
    inc b                                         ; $6714: $04
    ld a, [hl]                                    ; $6715: $7e
    sub h                                         ; $6716: $94
    ld b, $06                                     ; $6717: $06 $06
    inc c                                         ; $6719: $0c
    inc c                                         ; $671a: $0c
    ld a, $3c                                     ; $671b: $3e $3c
    ccf                                           ; $671d: $3f
    ld a, $03                                     ; $671e: $3e $03
    inc bc                                        ; $6720: $03
    ld [bc], a                                    ; $6721: $02
    rlca                                          ; $6722: $07
    rlca                                          ; $6723: $07
    ld b, $0c                                     ; $6724: $06 $0c
    ld c, $3e                                     ; $6726: $0e $3e
    inc a                                         ; $6728: $3c
    jr c, jr_004_6763                             ; $6729: $38 $38

    inc b                                         ; $672b: $04
    nop                                           ; $672c: $00
    inc bc                                        ; $672d: $03
    ld bc, $0303                                  ; $672e: $01 $03 $03
    add [hl]                                      ; $6731: $86
    ld b, $07                                     ; $6732: $06 $07
    rra                                           ; $6734: $1f
    ld e, $1c                                     ; $6735: $1e $1c
    inc e                                         ; $6737: $1c
    inc b                                         ; $6738: $04
    nop                                           ; $6739: $00
    add l                                         ; $673a: $85
    add b                                         ; $673b: $80
    add b                                         ; $673c: $80
    nop                                           ; $673d: $00
    add b                                         ; $673e: $80
    add b                                         ; $673f: $80
    dec bc                                        ; $6740: $0b
    nop                                           ; $6741: $00
    ld [$84c6], sp                                ; $6742: $08 $c6 $84
    xor $c6                                       ; $6745: $ee $c6
    xor $64                                       ; $6747: $ee $64
    inc b                                         ; $6749: $04
    nop                                           ; $674a: $00
    adc h                                         ; $674b: $8c
    inc bc                                        ; $674c: $03
    inc bc                                        ; $674d: $03
    dec sp                                        ; $674e: $3b
    dec sp                                        ; $674f: $3b
    ld a, a                                       ; $6750: $7f
    ld a, e                                       ; $6751: $7b
    ld l, a                                       ; $6752: $6f
    ld l, [hl]                                    ; $6753: $6e
    ld a, [hl]                                    ; $6754: $7e
    ld a, [hl]                                    ; $6755: $7e
    inc a                                         ; $6756: $3c
    jr c, @+$06                                   ; $6757: $38 $04

    nop                                           ; $6759: $00
    rst RST_38                                    ; $675a: $ff
    jp nz, $f7c2                                  ; $675b: $c2 $c2 $f7

    or a                                          ; $675e: $b7
    ld a, e                                       ; $675f: $7b
    ld e, d                                       ; $6760: $5a
    ld [hl], h                                    ; $6761: $74
    ld [hl], a                                    ; $6762: $77

jr_004_6763:
    ld l, $2b                                     ; $6763: $2e $2b
    ld e, c                                       ; $6765: $59
    ld d, c                                       ; $6766: $51
    ld l, a                                       ; $6767: $6f
    ld a, c                                       ; $6768: $79
    sub $ae                                       ; $6769: $d6 $ae
    call nc, $c9ac                                ; $676b: $d4 $ac $c9
    cp b                                          ; $676e: $b8
    ld d, e                                       ; $676f: $53
    ld [hl], c                                    ; $6770: $71
    ld h, $23                                     ; $6771: $26 $23
    ld c, l                                       ; $6773: $4d
    ld b, [hl]                                    ; $6774: $46
    sbc d                                         ; $6775: $9a
    adc l                                         ; $6776: $8d
    or a                                          ; $6777: $b7
    sbc h                                         ; $6778: $9c
    db $e3                                        ; $6779: $e3
    rst RST_38                                    ; $677a: $ff
    jp $ef43                                      ; $677b: $c3 $43 $ef


    db $ed                                        ; $677e: $ed
    sbc $5a                                       ; $677f: $de $5a
    ld l, $ee                                     ; $6781: $2e $ee
    ld [hl], h                                    ; $6783: $74
    call nc, $8a9a                                ; $6784: $d4 $9a $8a
    ld [hl], $1e                                  ; $6787: $36 $1e
    ld l, e                                       ; $6789: $6b
    dec [hl]                                      ; $678a: $35
    db $eb                                        ; $678b: $eb
    ld [hl], l                                    ; $678c: $75
    di                                            ; $678d: $f3
    sbc l                                         ; $678e: $9d
    jp z, Jump_004_648e                           ; $678f: $ca $8e $64

    call nz, Call_004_62b2                        ; $6792: $c4 $b2 $62
    ld e, c                                       ; $6795: $59
    or c                                          ; $6796: $b1
    rst RST_28                                    ; $6797: $ef
    add hl, sp                                    ; $6798: $39
    rst RST_00                                    ; $6799: $c7
    rst RST_38                                    ; $679a: $ff
    ld a, a                                       ; $679b: $7f
    rst RST_38                                    ; $679c: $ff
    db $fc                                        ; $679d: $fc
    rst RST_00                                    ; $679e: $c7
    ccf                                           ; $679f: $3f
    inc sp                                        ; $67a0: $33
    rst RST_18                                    ; $67a1: $df
    sbc $a8                                       ; $67a2: $de $a8
    ld hl, sp-$2f                                 ; $67a4: $f8 $d1
    or b                                          ; $67a6: $b0
    push af                                       ; $67a7: $f5
    sub [hl]                                      ; $67a8: $96
    or e                                          ; $67a9: $b3
    jp nc, $e8e9                                  ; $67aa: $d2 $e9 $e8

    ld e, h                                       ; $67ad: $5c
    ld c, h                                       ; $67ae: $4c
    or h                                          ; $67af: $b4
    sbc h                                         ; $67b0: $9c
    or h                                          ; $67b1: $b4
    cp h                                          ; $67b2: $bc
    xor a                                         ; $67b3: $af
    xor [hl]                                      ; $67b4: $ae
    ld d, e                                       ; $67b5: $53
    ld d, e                                       ; $67b6: $53
    dec hl                                        ; $67b7: $2b
    ld a, [hl+]                                   ; $67b8: $2a
    add hl, de                                    ; $67b9: $19
    add hl, de                                    ; $67ba: $19
    cp $ff                                        ; $67bb: $fe $ff
    ccf                                           ; $67bd: $3f
    db $e3                                        ; $67be: $e3
    db $fc                                        ; $67bf: $fc
    call z, Call_004_7bfb                         ; $67c0: $cc $fb $7b
    ld d, l                                       ; $67c3: $55
    ccf                                           ; $67c4: $3f
    db $eb                                        ; $67c5: $eb
    dec e                                         ; $67c6: $1d
    xor a                                         ; $67c7: $af
    ld a, c                                       ; $67c8: $79
    db $ed                                        ; $67c9: $ed
    ld e, e                                       ; $67ca: $5b
    rst RST_10                                    ; $67cb: $d7
    scf                                           ; $67cc: $37
    cp d                                          ; $67cd: $ba
    ld [hl], d                                    ; $67ce: $72
    xor l                                         ; $67cf: $ad
    ld a, c                                       ; $67d0: $79
    xor l                                         ; $67d1: $ad
    ld a, l                                       ; $67d2: $7d
    ld [hl], l                                    ; $67d3: $75
    push af                                       ; $67d4: $f5
    jp z, $d4ca                                   ; $67d5: $ca $ca $d4

    ld d, h                                       ; $67d8: $54
    sbc b                                         ; $67d9: $98
    rst RST_38                                    ; $67da: $ff
    sbc b                                         ; $67db: $98
    rst RST_38                                    ; $67dc: $ff
    push hl                                       ; $67dd: $e5
    cp $96                                        ; $67de: $fe $96
    ld a, l                                       ; $67e0: $7d
    ld l, l                                       ; $67e1: $6d
    dec sp                                        ; $67e2: $3b
    dec hl                                        ; $67e3: $2b
    inc d                                         ; $67e4: $14
    inc d                                         ; $67e5: $14
    jr z, jr_004_6810                             ; $67e6: $28 $28

    ld e, b                                       ; $67e8: $58
    ld e, b                                       ; $67e9: $58
    ld e, h                                       ; $67ea: $5c
    ld e, b                                       ; $67eb: $58
    ld l, e                                       ; $67ec: $6b
    ld l, h                                       ; $67ed: $6c
    db $f4                                        ; $67ee: $f4
    ld d, a                                       ; $67ef: $57
    db $eb                                        ; $67f0: $eb
    cp e                                          ; $67f1: $bb
    push hl                                       ; $67f2: $e5
    cp l                                          ; $67f3: $bd
    and $be                                       ; $67f4: $e6 $be
    rst RST_38                                    ; $67f6: $ff
    sbc c                                         ; $67f7: $99
    ld a, [hl]                                    ; $67f8: $7e
    ld b, a                                       ; $67f9: $47
    dec a                                         ; $67fa: $3d
    add hl, sp                                    ; $67fb: $39
    rst RST_30                                    ; $67fc: $f7
    sub a                                         ; $67fd: $97
    ld a, a                                       ; $67fe: $7f
    ld e, c                                       ; $67ff: $59
    cp [hl]                                       ; $6800: $be
    or a                                          ; $6801: $b7
    call c, $acd7                                 ; $6802: $dc $d7 $ac
    ld l, a                                       ; $6805: $6f
    ld d, h                                       ; $6806: $54
    scf                                           ; $6807: $37
    ld e, e                                       ; $6808: $5b
    dec sp                                        ; $6809: $3b
    db $db                                        ; $680a: $db
    dec sp                                        ; $680b: $3b
    sub a                                         ; $680c: $97
    ld [hl], a                                    ; $680d: $77
    cpl                                           ; $680e: $2f
    db $eb                                        ; $680f: $eb

jr_004_6810:
    rst RST_10                                    ; $6810: $d7
    db $dd                                        ; $6811: $dd
    and a                                         ; $6812: $a7
    cp l                                          ; $6813: $bd
    ld h, a                                       ; $6814: $67
    ld a, l                                       ; $6815: $7d
    rst RST_38                                    ; $6816: $ff
    sbc c                                         ; $6817: $99
    ld a, [hl]                                    ; $6818: $7e
    db $e3                                        ; $6819: $e3
    cp [hl]                                       ; $681a: $be
    rst RST_18                                    ; $681b: $df
    rst RST_08                                    ; $681c: $cf
    set 5, h                                      ; $681d: $cb $ec
    xor h                                         ; $681f: $ac
    ld a, c                                       ; $6820: $79
    ret c                                         ; $6821: $d8

    dec sp                                        ; $6822: $3b
    add sp, $3e                                   ; $6823: $e8 $3e
    ld hl, sp+$4c                                 ; $6825: $f8 $4c
    ret nz                                        ; $6827: $c0

    sbc c                                         ; $6828: $99
    add b                                         ; $6829: $80
    or e                                          ; $682a: $b3
    add b                                         ; $682b: $80
    or e                                          ; $682c: $b3
    add b                                         ; $682d: $80
    sbc e                                         ; $682e: $9b
    and b                                         ; $682f: $a0
    ld c, l                                       ; $6830: $4d
    ret nc                                        ; $6831: $d0

    ccf                                           ; $6832: $3f
    ld hl, sp+$3b                                 ; $6833: $f8 $3b
    db $ec                                        ; $6835: $ec
    ld a, h                                       ; $6836: $7c
    db $db                                        ; $6837: $db
    xor $ad                                       ; $6838: $ee $ad
    rst RST_08                                    ; $683a: $cf
    set 7, a                                      ; $683b: $cb $ff
    rst RST_20                                    ; $683d: $e7
    ccf                                           ; $683e: $3f
    dec h                                         ; $683f: $25
    sbc [hl]                                      ; $6840: $9e
    ld e, d                                       ; $6841: $5a
    call c, Call_004_7e34                         ; $6842: $dc $34 $7e
    inc e                                         ; $6845: $1c
    scf                                           ; $6846: $37
    ld a, [bc]                                    ; $6847: $0a
    sbc e                                         ; $6848: $9b
    dec b                                         ; $6849: $05
    jp hl                                         ; $684a: $e9


    rlca                                          ; $684b: $07
    reti                                          ; $684c: $d9


    daa                                           ; $684d: $27
    or c                                          ; $684e: $b1
    ld c, a                                       ; $684f: $4f
    ld h, e                                       ; $6850: $63
    sbc [hl]                                      ; $6851: $9e
    sbc $3c                                       ; $6852: $de $3c
    sbc h                                         ; $6854: $9c
    ld [hl], h                                    ; $6855: $74
    ld e, $fa                                     ; $6856: $1e $fa
    scf                                           ; $6858: $37
    push hl                                       ; $6859: $e5
    jp $c3e3                                      ; $685a: $c3 $e3 $c3


    ccf                                           ; $685d: $3f
    cp $7f                                        ; $685e: $fe $7f
    ldh a, [c]                                    ; $6860: $f2
    rst RST_38                                    ; $6861: $ff
    sbc $f7                                       ; $6862: $de $f7
    jp nc, $b1d3                                  ; $6864: $d2 $d3 $b1

    ret nc                                        ; $6867: $d0

    or b                                          ; $6868: $b0

Jump_004_6869:
    or $f0                                        ; $6869: $f6 $f0
    rst RST_30                                    ; $686b: $f7
    ld [de], a                                    ; $686c: $12
    rla                                           ; $686d: $17
    di                                            ; $686e: $f3
    rst RST_30                                    ; $686f: $f7
    ldh a, [c]                                    ; $6870: $f2
    sub a                                         ; $6871: $97
    ldh a, [c]                                    ; $6872: $f2
    rst RST_10                                    ; $6873: $d7
    or d                                          ; $6874: $b2
    rst RST_30                                    ; $6875: $f7
    jp nc, $fedf                                  ; $6876: $d2 $df $fe

    ld [hl], e                                    ; $6879: $73
    cp $3f                                        ; $687a: $fe $3f
    cp $7c                                        ; $687c: $fe $7c
    rst RST_38                                    ; $687e: $ff
    ld e, [hl]                                    ; $687f: $5e
    rst RST_28                                    ; $6880: $ef
    ld a, e                                       ; $6881: $7b
    rst RST_38                                    ; $6882: $ff
    ld e, e                                       ; $6883: $5b
    rst RST_08                                    ; $6884: $cf

jr_004_6885:
    sbc l                                         ; $6885: $9d
    adc e                                         ; $6886: $8b
    dec e                                         ; $6887: $1d
    dec bc                                        ; $6888: $0b
    ld e, a                                       ; $6889: $5f
    rrca                                          ; $688a: $0f
    rst RST_18                                    ; $688b: $df
    ld c, b                                       ; $688c: $48
    ret c                                         ; $688d: $d8

    rst RST_08                                    ; $688e: $cf
    ld e, a                                       ; $688f: $5f
    rst RST_08                                    ; $6890: $cf
    ld e, c                                       ; $6891: $59
    rst RST_08                                    ; $6892: $cf
    ld e, l                                       ; $6893: $5d
    bit 3, a                                      ; $6894: $cb $5f
    bit 7, e                                      ; $6896: $cb $7b
    rst RST_38                                    ; $6898: $ff
    ld c, [hl]                                    ; $6899: $4e
    rst RST_38                                    ; $689a: $ff
    ld a, h                                       ; $689b: $7c
    rst RST_38                                    ; $689c: $ff
    nop                                           ; $689d: $00
    add b                                         ; $689e: $80
    add d                                         ; $689f: $82
    ld b, $18                                     ; $68a0: $06 $18
    ld a, [hl]                                    ; $68a2: $7e
    ld a, [hl]                                    ; $68a3: $7e
    inc a                                         ; $68a4: $3c
    ld a, [hl]                                    ; $68a5: $7e
    inc h                                         ; $68a6: $24
    inc bc                                        ; $68a7: $03
    nop                                           ; $68a8: $00
    add b                                         ; $68a9: $80
    add c                                         ; $68aa: $81
    ld [$1818], sp                                ; $68ab: $08 $18 $18
    jr jr_004_68c8                                ; $68ae: $18 $18

    jr @+$1a                                      ; $68b0: $18 $18

    jr @+$1a                                      ; $68b2: $18 $18

    ld b, $00                                     ; $68b4: $06 $00
    add e                                         ; $68b6: $83
    rst RST_38                                    ; $68b7: $ff
    nop                                           ; $68b8: $00
    rst RST_38                                    ; $68b9: $ff
    dec c                                         ; $68ba: $0d
    nop                                           ; $68bb: $00
    add b                                         ; $68bc: $80
    add c                                         ; $68bd: $81
    dec b                                         ; $68be: $05
    rra                                           ; $68bf: $1f
    rra                                           ; $68c0: $1f
    jr @+$1a                                      ; $68c1: $18 $18

    jr jr_004_68cb                                ; $68c3: $18 $06

    nop                                           ; $68c5: $00
    add b                                         ; $68c6: $80
    add c                                         ; $68c7: $81

jr_004_68c8:
    ld a, [bc]                                    ; $68c8: $0a
    ld hl, sp-$08                                 ; $68c9: $f8 $f8

jr_004_68cb:
    jr jr_004_68e5                                ; $68cb: $18 $18

    jr jr_004_68e7                                ; $68cd: $18 $18

    jr jr_004_68e9                                ; $68cf: $18 $18

    rra                                           ; $68d1: $1f
    rra                                           ; $68d2: $1f
    ld b, $00                                     ; $68d3: $06 $00
    add b                                         ; $68d5: $80
    add c                                         ; $68d6: $81
    dec b                                         ; $68d7: $05
    jr jr_004_68f2                                ; $68d8: $18 $18

    jr @-$06                                      ; $68da: $18 $f8

    ld hl, sp+$06                                 ; $68dc: $f8 $06
    nop                                           ; $68de: $00
    sub b                                         ; $68df: $90
    ld c, $0e                                     ; $68e0: $0e $0e
    ld a, d                                       ; $68e2: $7a
    ld a, d                                       ; $68e3: $7a
    ld a, [hl]                                    ; $68e4: $7e

jr_004_68e5:
    ld c, [hl]                                    ; $68e5: $4e
    ld a, a                                       ; $68e6: $7f

jr_004_68e7:
    ld [hl], c                                    ; $68e7: $71
    ld a, a                                       ; $68e8: $7f

jr_004_68e9:
    ld c, [hl]                                    ; $68e9: $4e
    ld a, c                                       ; $68ea: $79
    ld b, c                                       ; $68eb: $41
    ld a, c                                       ; $68ec: $79
    ld b, b                                       ; $68ed: $40
    ld a, c                                       ; $68ee: $79
    ld b, b                                       ; $68ef: $40
    inc b                                         ; $68f0: $04
    nop                                           ; $68f1: $00

jr_004_68f2:
    adc h                                         ; $68f2: $8c
    jr c, jr_004_692d                             ; $68f3: $38 $38

    add sp, -$18                                  ; $68f5: $e8 $e8
    ld hl, sp+$38                                 ; $68f7: $f8 $38
    rst RST_38                                    ; $68f9: $ff
    rst RST_00                                    ; $68fa: $c7
    cp a                                          ; $68fb: $bf
    jr c, jr_004_6885                             ; $68fc: $38 $87

    rlca                                          ; $68fe: $07
    inc b                                         ; $68ff: $04
    nop                                           ; $6900: $00
    or [hl]                                       ; $6901: $b6
    inc e                                         ; $6902: $1c
    inc e                                         ; $6903: $1c
    rla                                           ; $6904: $17
    rla                                           ; $6905: $17
    rra                                           ; $6906: $1f
    inc e                                         ; $6907: $1c
    rst RST_38                                    ; $6908: $ff
    db $e3                                        ; $6909: $e3
    db $fd                                        ; $690a: $fd
    inc e                                         ; $690b: $1c
    pop hl                                        ; $690c: $e1
    ldh [rSVBK], a                                ; $690d: $e0 $70
    ld [hl], b                                    ; $690f: $70
    ld e, [hl]                                    ; $6910: $5e
    ld e, [hl]                                    ; $6911: $5e
    ld a, [hl]                                    ; $6912: $7e
    ld [hl], d                                    ; $6913: $72
    cp $8e                                        ; $6914: $fe $8e
    cp $72                                        ; $6916: $fe $72
    sbc [hl]                                      ; $6918: $9e
    add d                                         ; $6919: $82
    sbc [hl]                                      ; $691a: $9e
    ld [bc], a                                    ; $691b: $02
    sbc [hl]                                      ; $691c: $9e
    ld [bc], a                                    ; $691d: $02
    ld c, c                                       ; $691e: $49
    ld [hl], b                                    ; $691f: $70
    ld b, a                                       ; $6920: $47
    ld a, b                                       ; $6921: $78
    ld b, [hl]                                    ; $6922: $46
    ld a, c                                       ; $6923: $79
    halt                                          ; $6924: $76
    ld c, c                                       ; $6925: $49
    ld a, b                                       ; $6926: $78
    ld b, c                                       ; $6927: $41
    ld a, c                                       ; $6928: $79
    ld b, b                                       ; $6929: $40
    ld a, c                                       ; $692a: $79
    ld b, b                                       ; $692b: $40
    ld a, c                                       ; $692c: $79

jr_004_692d:
    ld b, b                                       ; $692d: $40
    add b                                         ; $692e: $80
    nop                                           ; $692f: $00
    add b                                         ; $6930: $80
    nop                                           ; $6931: $00
    ld b, b                                       ; $6932: $40
    add b                                         ; $6933: $80
    ld a, b                                       ; $6934: $78
    add b                                         ; $6935: $80
    ld a, a                                       ; $6936: $7f
    add b                                         ; $6937: $80
    add b                                         ; $6938: $80
    add c                                         ; $6939: $81
    dec b                                         ; $693a: $05
    cp a                                          ; $693b: $bf
    add a                                         ; $693c: $87
    add b                                         ; $693d: $80
    ld bc, $a401                                  ; $693e: $01 $01 $a4
    ld [bc], a                                    ; $6941: $02
    ld bc, $011e                                  ; $6942: $01 $1e $01
    cp $01                                        ; $6945: $fe $01
    db $fd                                        ; $6947: $fd
    nop                                           ; $6948: $00

jr_004_6949:
    pop hl                                        ; $6949: $e1
    nop                                           ; $694a: $00
    ld bc, $9200                                  ; $694b: $01 $00 $92
    ld c, $e2                                     ; $694e: $0e $e2
    ld e, $62                                     ; $6950: $1e $62
    sbc [hl]                                      ; $6952: $9e
    ld l, [hl]                                    ; $6953: $6e
    sub d                                         ; $6954: $92
    ld e, $82                                     ; $6955: $1e $82
    sbc [hl]                                      ; $6957: $9e
    ld [bc], a                                    ; $6958: $02
    sbc [hl]                                      ; $6959: $9e
    ld [bc], a                                    ; $695a: $02
    sbc [hl]                                      ; $695b: $9e
    ld [bc], a                                    ; $695c: $02
    ld a, c                                       ; $695d: $79
    ld b, b                                       ; $695e: $40
    ld a, c                                       ; $695f: $79
    ld [hl], b                                    ; $6960: $70
    rrca                                          ; $6961: $0f
    ld c, $01                                     ; $6962: $0e $01
    ld bc, $0008                                  ; $6964: $01 $08 $00
    xor b                                         ; $6967: $a8
    add b                                         ; $6968: $80
    nop                                           ; $6969: $00
    add b                                         ; $696a: $80
    nop                                           ; $696b: $00
    add b                                         ; $696c: $80
    nop                                           ; $696d: $00
    ret nz                                        ; $696e: $c0

    ret nz                                        ; $696f: $c0

    jr c, jr_004_69aa                             ; $6970: $38 $38

    cpl                                           ; $6972: $2f
    daa                                           ; $6973: $27
    ld d, $12                                     ; $6974: $16 $12
    ld c, $0e                                     ; $6976: $0e $0e
    ld bc, $0100                                  ; $6978: $01 $00 $01
    nop                                           ; $697b: $00
    ld bc, $0300                                  ; $697c: $01 $00 $03
    inc bc                                        ; $697f: $03
    inc e                                         ; $6980: $1c
    inc e                                         ; $6981: $1c
    db $ec                                        ; $6982: $ec
    db $e4                                        ; $6983: $e4
    ld hl, sp+$48                                 ; $6984: $f8 $48
    ldh a, [rSVBK]                                ; $6986: $f0 $70
    sbc [hl]                                      ; $6988: $9e
    ld [bc], a                                    ; $6989: $02
    sbc [hl]                                      ; $698a: $9e
    ld c, $f0                                     ; $698b: $0e $f0
    ld [hl], b                                    ; $698d: $70
    add b                                         ; $698e: $80
    add b                                         ; $698f: $80
    ld [$0000], sp                                ; $6990: $08 $00 $00
    stop                                          ; $6993: $10 $00
    and b                                         ; $6995: $a0
    rrca                                          ; $6996: $0f
    ld b, $09                                     ; $6997: $06 $09
    add hl, bc                                    ; $6999: $09
    dec c                                         ; $699a: $0d
    add hl, bc                                    ; $699b: $09
    ld c, $08                                     ; $699c: $0e $08
    rlca                                          ; $699e: $07
    inc b                                         ; $699f: $04
    inc sp                                        ; $69a0: $33
    ld [hl-], a                                   ; $69a1: $32
    add hl, sp                                    ; $69a2: $39
    add hl, hl                                    ; $69a3: $29
    inc e                                         ; $69a4: $1c
    inc d                                         ; $69a5: $14
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    jr nc, jr_004_69da                            ; $69a8: $30 $30

jr_004_69aa:
    cp b                                          ; $69aa: $b8
    jr z, jr_004_6949                             ; $69ab: $28 $9c

    sub h                                         ; $69ad: $94
    ld c, [hl]                                    ; $69ae: $4e
    ld c, d                                       ; $69af: $4a
    and a                                         ; $69b0: $a7
    dec h                                         ; $69b1: $25
    db $d3                                        ; $69b2: $d3
    ld [de], a                                    ; $69b3: $12
    db $ed                                        ; $69b4: $ed
    adc l                                         ; $69b5: $8d
    ld b, $02                                     ; $69b6: $06 $02
    rst RST_38                                    ; $69b8: $ff
    ld [hl-], a                                   ; $69b9: $32
    ld [hl-], a                                   ; $69ba: $32
    ld a, [hl-]                                   ; $69bb: $3a
    ld a, [hl+]                                   ; $69bc: $2a
    ld e, $16                                     ; $69bd: $1e $16
    adc [hl]                                      ; $69bf: $8e
    adc d                                         ; $69c0: $8a
    add $46                                       ; $69c1: $c6 $46
    ret nz                                        ; $69c3: $c0

    ld b, b                                       ; $69c4: $40
    ret nz                                        ; $69c5: $c0

    ld b, b                                       ; $69c6: $40
    ret nz                                        ; $69c7: $c0

    ld b, b                                       ; $69c8: $40
    call z, $dc4c                                 ; $69c9: $cc $4c $dc
    ld d, h                                       ; $69cc: $54
    ld hl, sp+$68                                 ; $69cd: $f8 $68
    pop af                                        ; $69cf: $f1
    ld d, c                                       ; $69d0: $51
    db $e3                                        ; $69d1: $e3
    ld h, d                                       ; $69d2: $62
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    inc c                                         ; $69d5: $0c
    inc c                                         ; $69d6: $0c
    dec e                                         ; $69d7: $1d
    inc d                                         ; $69d8: $14
    add hl, sp                                    ; $69d9: $39

jr_004_69da:
    add hl, hl                                    ; $69da: $29
    ld [hl], d                                    ; $69db: $72
    ld d, d                                       ; $69dc: $52
    push hl                                       ; $69dd: $e5
    and h                                         ; $69de: $a4
    bit 1, b                                      ; $69df: $cb $48
    or a                                          ; $69e1: $b7
    or c                                          ; $69e2: $b1
    ldh a, [$ff60]                                ; $69e3: $f0 $60
    sub b                                         ; $69e5: $90
    sub b                                         ; $69e6: $90
    or b                                          ; $69e7: $b0
    sub b                                         ; $69e8: $90
    ld [hl], b                                    ; $69e9: $70
    db $10                                        ; $69ea: $10
    ldh [rNR41], a                                ; $69eb: $e0 $20
    call z, $9c4c                                 ; $69ed: $cc $4c $9c
    sub h                                         ; $69f0: $94
    jr c, jr_004_6a1b                             ; $69f1: $38 $28

    adc $ca                                       ; $69f3: $ce $ca
    rst RST_20                                    ; $69f5: $e7
    and l                                         ; $69f6: $a5
    ld [hl], e                                    ; $69f7: $73
    ld d, d                                       ; $69f8: $52
    add hl, sp                                    ; $69f9: $39
    add hl, hl                                    ; $69fa: $29
    inc e                                         ; $69fb: $1c
    inc d                                         ; $69fc: $14
    adc $ca                                       ; $69fd: $ce $ca
    rst RST_20                                    ; $69ff: $e7
    and l                                         ; $6a00: $a5
    ld a, e                                       ; $6a01: $7b
    ld e, e                                       ; $6a02: $5b
    di                                            ; $6a03: $f3
    add e                                         ; $6a04: $83
    ld a, h                                       ; $6a05: $7c
    ld b, b                                       ; $6a06: $40
    rst RST_38                                    ; $6a07: $ff
    ret nc                                        ; $6a08: $d0

    rst RST_38                                    ; $6a09: $ff
    ld e, b                                       ; $6a0a: $58
    db $fc                                        ; $6a0b: $fc
    db $d3                                        ; $6a0c: $d3
    di                                            ; $6a0d: $f3
    adc a                                         ; $6a0e: $8f
    ld h, h                                       ; $6a0f: $64
    sbc h                                         ; $6a10: $9c

jr_004_6a11:
    ret z                                         ; $6a11: $c8

    jr c, jr_004_6a11                             ; $6a12: $38 $fd

    db $fc                                        ; $6a14: $fc
    ld [hl], e                                    ; $6a15: $73
    ld [hl], c                                    ; $6a16: $71
    rrca                                          ; $6a17: $0f
    inc bc                                        ; $6a18: $03
    rst RST_38                                    ; $6a19: $ff
    rlca                                          ; $6a1a: $07

jr_004_6a1b:
    ccf                                           ; $6a1b: $3f
    rst RST_00                                    ; $6a1c: $c7
    adc a                                         ; $6a1d: $8f
    ldh a, [$ff80]                                ; $6a1e: $f0 $80
    rst RST_38                                    ; $6a20: $ff
    add e                                         ; $6a21: $83
    rst RST_38                                    ; $6a22: $ff
    rst RST_38                                    ; $6a23: $ff
    ccf                                           ; $6a24: $3f
    xor $8e                                       ; $6a25: $ee $8e
    ldh a, [$ffc0]                                ; $6a27: $f0 $c0
    rst RST_38                                    ; $6a29: $ff
    ldh [$fffc], a                                ; $6a2a: $e0 $fc
    db $e3                                        ; $6a2c: $e3
    pop af                                        ; $6a2d: $f1
    rrca                                          ; $6a2e: $0f
    ld bc, $c1ff                                  ; $6a2f: $01 $ff $c1
    rst RST_38                                    ; $6a32: $ff
    rst RST_08                                    ; $6a33: $cf
    pop bc                                        ; $6a34: $c1
    ld a, $02                                     ; $6a35: $3e $02
    rst RST_38                                    ; $6a37: $ff
    and l                                         ; $6a38: $a5
    dec bc                                        ; $6a39: $0b
    rst RST_38                                    ; $6a3a: $ff
    ld a, [de]                                    ; $6a3b: $1a
    ccf                                           ; $6a3c: $3f
    set 1, a                                      ; $6a3d: $cb $cf
    pop af                                        ; $6a3f: $f1
    ld h, $39                                     ; $6a40: $26 $39
    inc de                                        ; $6a42: $13
    inc e                                         ; $6a43: $1c
    ld [hl], e                                    ; $6a44: $73
    ld d, e                                       ; $6a45: $53
    rst RST_20                                    ; $6a46: $e7
    and l                                         ; $6a47: $a5
    adc $4a                                       ; $6a48: $ce $4a
    sbc h                                         ; $6a4a: $9c
    sub h                                         ; $6a4b: $94
    jr c, jr_004_6a76                             ; $6a4c: $38 $28

    ld [hl], e                                    ; $6a4e: $73
    ld d, e                                       ; $6a4f: $53
    rst RST_20                                    ; $6a50: $e7
    and l                                         ; $6a51: $a5
    sbc $da                                       ; $6a52: $de $da
    ccf                                           ; $6a54: $3f
    ld h, $1f                                     ; $6a55: $26 $1f
    db $10                                        ; $6a57: $10
    rrca                                          ; $6a58: $0f
    ld [$0407], sp                                ; $6a59: $08 $07 $04
    inc bc                                        ; $6a5c: $03
    ld [bc], a                                    ; $6a5d: $02
    inc b                                         ; $6a5e: $04
    ld bc, $009f                                  ; $6a5f: $01 $9f $00
    nop                                           ; $6a62: $00
    ret                                           ; $6a63: $c9


    add hl, sp                                    ; $6a64: $39
    pop de                                        ; $6a65: $d1
    ld sp, $33d2                                  ; $6a66: $31 $d2 $33
    jp nc, $ec33                                  ; $6a69: $d2 $33 $ec

    rra                                           ; $6a6c: $1f
    ldh a, [rIF]                                  ; $6a6d: $f0 $0f
    ei                                            ; $6a6f: $fb
    daa                                           ; $6a70: $27
    ei                                            ; $6a71: $fb
    or a                                          ; $6a72: $b7
    ccf                                           ; $6a73: $3f
    cp $7f                                        ; $6a74: $fe $7f

jr_004_6a76:
    ldh a, [c]                                    ; $6a76: $f2
    di                                            ; $6a77: $f3
    adc $ef                                       ; $6a78: $ce $ef
    sbc $df                                       ; $6a7a: $de $df
    cp [hl]                                       ; $6a7c: $be
    rst RST_18                                    ; $6a7d: $df
    cp [hl]                                       ; $6a7e: $be
    rst RST_38                                    ; $6a7f: $ff
    add b                                         ; $6a80: $80
    inc bc                                        ; $6a81: $03
    cp $aa                                        ; $6a82: $fe $aa
    ld a, h                                       ; $6a84: $7c
    rst RST_38                                    ; $6a85: $ff
    ld e, [hl]                                    ; $6a86: $5e
    rst RST_28                                    ; $6a87: $ef
    ld e, e                                       ; $6a88: $5b
    rst RST_20                                    ; $6a89: $e7
    ld a, e                                       ; $6a8a: $7b
    rst RST_30                                    ; $6a8b: $f7
    ld a, l                                       ; $6a8c: $7d
    ei                                            ; $6a8d: $fb
    ld a, l                                       ; $6a8e: $7d
    ei                                            ; $6a8f: $fb
    ld a, a                                       ; $6a90: $7f
    rst RST_38                                    ; $6a91: $ff
    rst RST_38                                    ; $6a92: $ff
    nop                                           ; $6a93: $00
    sub e                                         ; $6a94: $93
    sbc h                                         ; $6a95: $9c
    adc e                                         ; $6a96: $8b
    adc h                                         ; $6a97: $8c
    ld c, e                                       ; $6a98: $4b
    call z, $cc4b                                 ; $6a99: $cc $4b $cc
    scf                                           ; $6a9c: $37
    ld hl, sp+$0f                                 ; $6a9d: $f8 $0f
    ldh a, [$ffdf]                                ; $6a9f: $f0 $df
    db $e4                                        ; $6aa1: $e4
    rst RST_18                                    ; $6aa2: $df
    db $ed                                        ; $6aa3: $ed
    db $fc                                        ; $6aa4: $fc
    ld h, h                                       ; $6aa5: $64
    ld hl, sp+$08                                 ; $6aa6: $f8 $08
    ldh a, [rNR10]                                ; $6aa8: $f0 $10
    ldh [rNR41], a                                ; $6aaa: $e0 $20
    ret nz                                        ; $6aac: $c0

    ld b, b                                       ; $6aad: $40
    inc b                                         ; $6aae: $04
    add b                                         ; $6aaf: $80
    ld a, [bc]                                    ; $6ab0: $0a
    nop                                           ; $6ab1: $00
    inc b                                         ; $6ab2: $04
    ld bc, $03c4                                  ; $6ab3: $01 $c4 $03
    ld [bc], a                                    ; $6ab6: $02
    inc bc                                        ; $6ab7: $03
    ld [bc], a                                    ; $6ab8: $02
    ei                                            ; $6ab9: $fb
    add a                                         ; $6aba: $87
    ei                                            ; $6abb: $fb
    sbc a                                         ; $6abc: $9f
    jp hl                                         ; $6abd: $e9


    xor a                                         ; $6abe: $af
    jp hl                                         ; $6abf: $e9


    xor a                                         ; $6ac0: $af
    push hl                                       ; $6ac1: $e5
    daa                                           ; $6ac2: $27
    db $e4                                        ; $6ac3: $e4
    daa                                           ; $6ac4: $27
    ldh a, [c]                                    ; $6ac5: $f2
    inc de                                        ; $6ac6: $13
    db $fc                                        ; $6ac7: $fc
    rst RST_08                                    ; $6ac8: $cf
    ld bc, $fffe                                  ; $6ac9: $01 $fe $ff
    cp $9f                                        ; $6acc: $fe $9f
    cp $df                                        ; $6ace: $fe $df
    cp [hl]                                       ; $6ad0: $be
    rst RST_28                                    ; $6ad1: $ef
    sbc $df                                       ; $6ad2: $de $df
    xor $73                                       ; $6ad4: $ee $73
    cp $3f                                        ; $6ad6: $fe $3f
    cp $00                                        ; $6ad8: $fe $00
    rst RST_38                                    ; $6ada: $ff
    ld a, a                                       ; $6adb: $7f
    rst RST_38                                    ; $6adc: $ff
    ld a, c                                       ; $6add: $79
    rst RST_38                                    ; $6ade: $ff
    ld a, l                                       ; $6adf: $7d
    ei                                            ; $6ae0: $fb
    ld [hl], a                                    ; $6ae1: $77
    ei                                            ; $6ae2: $fb
    ld [hl], e                                    ; $6ae3: $73
    rst RST_38                                    ; $6ae4: $ff
    ld c, [hl]                                    ; $6ae5: $4e
    rst RST_38                                    ; $6ae6: $ff
    ld a, h                                       ; $6ae7: $7c
    rst RST_38                                    ; $6ae8: $ff
    rst RST_18                                    ; $6ae9: $df
    pop hl                                        ; $6aea: $e1
    rst RST_18                                    ; $6aeb: $df
    ld sp, hl                                     ; $6aec: $f9
    sub a                                         ; $6aed: $97
    push af                                       ; $6aee: $f5
    sub a                                         ; $6aef: $97
    push af                                       ; $6af0: $f5
    and a                                         ; $6af1: $a7
    db $e4                                        ; $6af2: $e4
    daa                                           ; $6af3: $27
    db $e4                                        ; $6af4: $e4
    ld c, a                                       ; $6af5: $4f
    ret z                                         ; $6af6: $c8

    ccf                                           ; $6af7: $3f
    di                                            ; $6af8: $f3
    ld [$0400], sp                                ; $6af9: $08 $00 $04
    add b                                         ; $6afc: $80
    xor a                                         ; $6afd: $af
    ret nz                                        ; $6afe: $c0

    ld b, b                                       ; $6aff: $40
    ret nz                                        ; $6b00: $c0

    ld b, b                                       ; $6b01: $40
    rlca                                          ; $6b02: $07
    dec b                                         ; $6b03: $05
    ld c, $0a                                     ; $6b04: $0e $0a
    inc e                                         ; $6b06: $1c
    inc d                                         ; $6b07: $14
    add hl, sp                                    ; $6b08: $39
    add hl, hl                                    ; $6b09: $29
    ld [hl], d                                    ; $6b0a: $72
    ld d, d                                       ; $6b0b: $52
    ldh [c], a                                    ; $6b0c: $e2
    and d                                         ; $6b0d: $a2
    jp $01c2                                      ; $6b0e: $c3 $c2 $01


    ld bc, $2728                                  ; $6b11: $01 $28 $27
    ld c, [hl]                                    ; $6b14: $4e
    ld b, c                                       ; $6b15: $41
    sbc h                                         ; $6b16: $9c
    add e                                         ; $6b17: $83
    inc sp                                        ; $6b18: $33
    rrca                                          ; $6b19: $0f
    ld l, l                                       ; $6b1a: $6d
    dec e                                         ; $6b1b: $1d
    db $d3                                        ; $6b1c: $d3
    ld [hl-], a                                   ; $6b1d: $32
    and e                                         ; $6b1e: $a3
    ld h, d                                       ; $6b1f: $62
    rst RST_00                                    ; $6b20: $c7
    push bc                                       ; $6b21: $c5
    rrca                                          ; $6b22: $0f
    cp $03                                        ; $6b23: $fe $03
    cp $7d                                        ; $6b25: $fe $7d
    add e                                         ; $6b27: $83
    db $db                                        ; $6b28: $db
    inc a                                         ; $6b29: $3c
    push hl                                       ; $6b2a: $e5

jr_004_6b2b:
    ld h, h                                       ; $6b2b: $64
    jp nz, $8203                                  ; $6b2c: $c2 $03 $82

    ldh a, [c]                                    ; $6b2f: $f2
    ld [bc], a                                    ; $6b30: $02
    ld [bc], a                                    ; $6b31: $02
    ld [hl], b                                    ; $6b32: $70
    rst RST_38                                    ; $6b33: $ff
    ld b, b                                       ; $6b34: $40
    rst RST_38                                    ; $6b35: $ff
    cp [hl]                                       ; $6b36: $be
    pop bc                                        ; $6b37: $c1
    db $db                                        ; $6b38: $db
    inc a                                         ; $6b39: $3c
    and a                                         ; $6b3a: $a7
    ld h, [hl]                                    ; $6b3b: $66
    jp $c141                                      ; $6b3c: $c3 $41 $c1


    ld b, c                                       ; $6b3f: $41
    ret nz                                        ; $6b40: $c0

    ld b, b                                       ; $6b41: $40
    inc d                                         ; $6b42: $14
    db $e4                                        ; $6b43: $e4
    ld [hl], d                                    ; $6b44: $72
    add d                                         ; $6b45: $82
    add hl, sp                                    ; $6b46: $39
    pop bc                                        ; $6b47: $c1
    call z, $b6f0                                 ; $6b48: $cc $f0 $b6
    cp b                                          ; $6b4b: $b8
    bit 1, h                                      ; $6b4c: $cb $4c
    push bc                                       ; $6b4e: $c5
    ld b, [hl]                                    ; $6b4f: $46
    db $e3                                        ; $6b50: $e3
    and e                                         ; $6b51: $a3
    ldh [$ffa0], a                                ; $6b52: $e0 $a0
    ld [hl], b                                    ; $6b54: $70
    ld d, b                                       ; $6b55: $50
    jr c, jr_004_6b80                             ; $6b56: $38 $28

    sbc h                                         ; $6b58: $9c
    sub h                                         ; $6b59: $94
    ld c, [hl]                                    ; $6b5a: $4e
    ld c, d                                       ; $6b5b: $4a
    ld b, a                                       ; $6b5c: $47
    ld b, l                                       ; $6b5d: $45
    jp $8043                                      ; $6b5e: $c3 $43 $80


    add b                                         ; $6b61: $80
    rlca                                          ; $6b62: $07
    dec b                                         ; $6b63: $05
    ld c, $0a                                     ; $6b64: $0e $0a
    ld c, $0a                                     ; $6b66: $0e $0a
    inc e                                         ; $6b68: $1c

jr_004_6b69:
    inc d                                         ; $6b69: $14
    inc e                                         ; $6b6a: $1c
    inc d                                         ; $6b6b: $14
    jr c, jr_004_6b96                             ; $6b6c: $38 $28

    jr c, jr_004_6b98                             ; $6b6e: $38 $28

    jr nc, @+$12                                  ; $6b70: $30 $10

    inc b                                         ; $6b72: $04
    inc b                                         ; $6b73: $04
    add hl, bc                                    ; $6b74: $09
    ld [$080b], sp                                ; $6b75: $08 $0b $08
    dec b                                         ; $6b78: $05
    inc b                                         ; $6b79: $04
    dec b                                         ; $6b7a: $05
    inc b                                         ; $6b7b: $04
    ld [bc], a                                    ; $6b7c: $02
    ld [bc], a                                    ; $6b7d: $02
    inc bc                                        ; $6b7e: $03
    ld [bc], a                                    ; $6b7f: $02

jr_004_6b80:
    ld bc, $a001                                  ; $6b80: $01 $01 $a0
    ld h, b                                       ; $6b83: $60
    ret nc                                        ; $6b84: $d0

    jr nc, @-$2e                                  ; $6b85: $30 $d0

    jr nc, jr_004_6b69                            ; $6b87: $30 $e0

    jr nz, jr_004_6b2b                            ; $6b89: $20 $a0

    ld h, b                                       ; $6b8b: $60
    ret nz                                        ; $6b8c: $c0

    ld b, b                                       ; $6b8d: $40
    ret nz                                        ; $6b8e: $c0

    ld b, b                                       ; $6b8f: $40
    add b                                         ; $6b90: $80
    add b                                         ; $6b91: $80
    ldh [$ffa0], a                                ; $6b92: $e0 $a0
    ld [hl], b                                    ; $6b94: $70
    ld d, b                                       ; $6b95: $50

jr_004_6b96:
    ld [hl], b                                    ; $6b96: $70
    ld d, b                                       ; $6b97: $50

jr_004_6b98:
    jr c, jr_004_6bc2                             ; $6b98: $38 $28

    jr c, @+$2a                                   ; $6b9a: $38 $28

    inc e                                         ; $6b9c: $1c
    inc d                                         ; $6b9d: $14
    inc e                                         ; $6b9e: $1c

jr_004_6b9f:
    inc d                                         ; $6b9f: $14
    inc c                                         ; $6ba0: $0c
    ld [$0000], sp                                ; $6ba1: $08 $00 $00
    sbc b                                         ; $6ba4: $98
    inc b                                         ; $6ba5: $04
    ld sp, $0082                                  ; $6ba6: $31 $82 $00
    ld sp, $0008                                  ; $6ba9: $31 $08 $00
    add d                                         ; $6bac: $82
    ld sp, $0400                                  ; $6bad: $31 $00 $04
    ld sp, $000c                                  ; $6bb0: $31 $0c $00
    add d                                         ; $6bb3: $82
    ld sp, $0a2b                                  ; $6bb4: $31 $2b $0a
    jr nc, @-$79                                  ; $6bb7: $30 $85

    inc l                                         ; $6bb9: $2c
    nop                                           ; $6bba: $00
    nop                                           ; $6bbb: $00
    ld sp, $0300                                  ; $6bbc: $31 $00 $03
    ld sp, $000c                                  ; $6bbf: $31 $0c $00

jr_004_6bc2:
    add d                                         ; $6bc2: $82
    ld sp, $0a2f                                  ; $6bc3: $31 $2f $0a
    nop                                           ; $6bc6: $00
    add c                                         ; $6bc7: $81
    cpl                                           ; $6bc8: $2f
    inc bc                                        ; $6bc9: $03
    nop                                           ; $6bca: $00
    add h                                         ; $6bcb: $84
    ld sp, $3100                                  ; $6bcc: $31 $00 $31
    ld sp, $000c                                  ; $6bcf: $31 $0c $00
    add d                                         ; $6bd2: $82
    ld sp, $0a2f                                  ; $6bd3: $31 $2f $0a
    nop                                           ; $6bd6: $00
    add c                                         ; $6bd7: $81
    cpl                                           ; $6bd8: $2f
    inc b                                         ; $6bd9: $04
    nop                                           ; $6bda: $00
    add e                                         ; $6bdb: $83
    ld sp, $3100                                  ; $6bdc: $31 $00 $31
    dec c                                         ; $6bdf: $0d
    nop                                           ; $6be0: $00
    add c                                         ; $6be1: $81
    cpl                                           ; $6be2: $2f
    ld a, [bc]                                    ; $6be3: $0a
    nop                                           ; $6be4: $00
    add c                                         ; $6be5: $81
    cpl                                           ; $6be6: $2f
    dec b                                         ; $6be7: $05
    nop                                           ; $6be8: $00
    add c                                         ; $6be9: $81
    ld sp, $000d                                  ; $6bea: $31 $0d $00
    add d                                         ; $6bed: $82
    ld sp, $0a2f                                  ; $6bee: $31 $2f $0a
    nop                                           ; $6bf1: $00
    add c                                         ; $6bf2: $81
    cpl                                           ; $6bf3: $2f
    ld b, $00                                     ; $6bf4: $06 $00
    add c                                         ; $6bf6: $81
    ld sp, $000c                                  ; $6bf7: $31 $0c $00
    add d                                         ; $6bfa: $82
    ld sp, $0a2f                                  ; $6bfb: $31 $2f $0a
    nop                                           ; $6bfe: $00
    add d                                         ; $6bff: $82
    cpl                                           ; $6c00: $2f
    ld e, h                                       ; $6c01: $5c
    add b                                         ; $6c02: $80
    inc bc                                        ; $6c03: $03
    ld bc, $5d83                                  ; $6c04: $01 $83 $5d
    nop                                           ; $6c07: $00
    ld sp, $000d                                  ; $6c08: $31 $0d $00
    add c                                         ; $6c0b: $81
    cpl                                           ; $6c0c: $2f
    ld a, [bc]                                    ; $6c0d: $0a
    nop                                           ; $6c0e: $00
    add c                                         ; $6c0f: $81
    cpl                                           ; $6c10: $2f
    add b                                         ; $6c11: $80
    dec b                                         ; $6c12: $05
    inc b                                         ; $6c13: $04
    add c                                         ; $6c14: $81
    ld sp, $000d                                  ; $6c15: $31 $0d $00
    add d                                         ; $6c18: $82
    ld sp, $0a2d                                  ; $6c19: $31 $2d $0a
    jr nc, jr_004_6b9f                            ; $6c1c: $30 $81

    ld l, $80                                     ; $6c1e: $2e $80
    dec b                                         ; $6c20: $05
    add hl, bc                                    ; $6c21: $09
    add d                                         ; $6c22: $82
    nop                                           ; $6c23: $00
    ld sp, $000c                                  ; $6c24: $31 $0c $00
    add h                                         ; $6c27: $84
    ld sp, $0031                                  ; $6c28: $31 $31 $00
    ld sp, $0009                                  ; $6c2b: $31 $09 $00
    add b                                         ; $6c2e: $80
    dec b                                         ; $6c2f: $05
    ld c, $82                                     ; $6c30: $0e $82
    ld sp, $0c31                                  ; $6c32: $31 $31 $0c
    nop                                           ; $6c35: $00
    inc bc                                        ; $6c36: $03
    ld sp, $0082                                  ; $6c37: $31 $82 $00
    ld sp, $0006                                  ; $6c3a: $31 $06 $00
    add b                                         ; $6c3d: $80
    rlca                                          ; $6c3e: $07
    inc de                                        ; $6c3f: $13
    add d                                         ; $6c40: $82
    ld sp, $0c31                                  ; $6c41: $31 $31 $0c
    nop                                           ; $6c44: $00
    inc b                                         ; $6c45: $04
    ld sp, $0082                                  ; $6c46: $31 $82 $00
    ld sp, $0005                                  ; $6c49: $31 $05 $00
    add b                                         ; $6c4c: $80
    rlca                                          ; $6c4d: $07
    ld a, [de]                                    ; $6c4e: $1a
    add d                                         ; $6c4f: $82
    ld sp, $0c31                                  ; $6c50: $31 $31 $0c
    nop                                           ; $6c53: $00
    inc d                                         ; $6c54: $14
    ld hl, $000c                                  ; $6c55: $21 $0c $00
    inc d                                         ; $6c58: $14
    ld [hl+], a                                   ; $6c59: $22
    inc c                                         ; $6c5a: $0c
    nop                                           ; $6c5b: $00
    inc d                                         ; $6c5c: $14
    ld [hl+], a                                   ; $6c5d: $22
    inc c                                         ; $6c5e: $0c
    nop                                           ; $6c5f: $00
    inc d                                         ; $6c60: $14
    ld [hl+], a                                   ; $6c61: $22
    inc c                                         ; $6c62: $0c
    nop                                           ; $6c63: $00
    inc d                                         ; $6c64: $14
    ld [hl+], a                                   ; $6c65: $22
    inc c                                         ; $6c66: $0c
    nop                                           ; $6c67: $00
    inc d                                         ; $6c68: $14
    ld hl, $0000                                  ; $6c69: $21 $00 $00
    sbc h                                         ; $6c6c: $9c
    add e                                         ; $6c6d: $83

jr_004_6c6e:
    ld [hl+], a                                   ; $6c6e: $22
    ld [hl+], a                                   ; $6c6f: $22
    inc hl                                        ; $6c70: $23
    ld c, $27                                     ; $6c71: $0e $27
    add e                                         ; $6c73: $83
    inc h                                         ; $6c74: $24
    ld [hl+], a                                   ; $6c75: $22
    ld [hl+], a                                   ; $6c76: $22
    inc c                                         ; $6c77: $0c
    nop                                           ; $6c78: $00
    add l                                         ; $6c79: $85
    ld [hl+], a                                   ; $6c7a: $22
    ld [hl+], a                                   ; $6c7b: $22
    add hl, hl                                    ; $6c7c: $29
    nop                                           ; $6c7d: $00
    nop                                           ; $6c7e: $00
    add b                                         ; $6c7f: $80
    dec b                                         ; $6c80: $05
    ld [hl-], a                                   ; $6c81: $32
    inc bc                                        ; $6c82: $03
    nop                                           ; $6c83: $00
    add b                                         ; $6c84: $80
    inc b                                         ; $6c85: $04
    inc a                                         ; $6c86: $3c
    add e                                         ; $6c87: $83
    ld a, [hl+]                                   ; $6c88: $2a
    ld [hl+], a                                   ; $6c89: $22
    ld [hl+], a                                   ; $6c8a: $22
    inc c                                         ; $6c8b: $0c
    nop                                           ; $6c8c: $00
    add l                                         ; $6c8d: $85
    ld [hl+], a                                   ; $6c8e: $22
    ld [hl+], a                                   ; $6c8f: $22
    add hl, hl                                    ; $6c90: $29
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    add b                                         ; $6c93: $80
    dec b                                         ; $6c94: $05
    scf                                           ; $6c95: $37
    inc bc                                        ; $6c96: $03
    nop                                           ; $6c97: $00
    add b                                         ; $6c98: $80
    inc b                                         ; $6c99: $04
    ld b, b                                       ; $6c9a: $40
    add e                                         ; $6c9b: $83
    ld a, [hl+]                                   ; $6c9c: $2a
    ld [hl+], a                                   ; $6c9d: $22
    ld [hl+], a                                   ; $6c9e: $22
    inc c                                         ; $6c9f: $0c
    nop                                           ; $6ca0: $00
    add e                                         ; $6ca1: $83
    ld [hl+], a                                   ; $6ca2: $22
    ld [hl+], a                                   ; $6ca3: $22
    dec h                                         ; $6ca4: $25
    ld c, $28                                     ; $6ca5: $0e $28
    add e                                         ; $6ca7: $83
    ld h, $22                                     ; $6ca8: $26 $22
    ld [hl+], a                                   ; $6caa: $22
    inc c                                         ; $6cab: $0c
    nop                                           ; $6cac: $00
    inc d                                         ; $6cad: $14
    ld hl, $000c                                  ; $6cae: $21 $0c $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    sbc h                                         ; $6cb3: $9c
    add d                                         ; $6cb4: $82
    ld [hl+], a                                   ; $6cb5: $22
    inc hl                                        ; $6cb6: $23
    db $10                                        ; $6cb7: $10
    daa                                           ; $6cb8: $27
    add d                                         ; $6cb9: $82
    inc h                                         ; $6cba: $24
    ld [hl+], a                                   ; $6cbb: $22
    inc c                                         ; $6cbc: $0c
    nop                                           ; $6cbd: $00
    add e                                         ; $6cbe: $83
    ld [hl+], a                                   ; $6cbf: $22
    add hl, hl                                    ; $6cc0: $29
    nop                                           ; $6cc1: $00
    add b                                         ; $6cc2: $80
    ld b, $44                                     ; $6cc3: $06 $44
    add c                                         ; $6cc5: $81
    ld [hl-], a                                   ; $6cc6: $32
    add b                                         ; $6cc7: $80
    ld b, $4a                                     ; $6cc8: $06 $4a
    add h                                         ; $6cca: $84
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    ld a, [hl+]                                   ; $6ccd: $2a
    ld [hl+], a                                   ; $6cce: $22
    inc c                                         ; $6ccf: $0c
    nop                                           ; $6cd0: $00
    add [hl]                                      ; $6cd1: $86
    ld [hl+], a                                   ; $6cd2: $22
    add hl, hl                                    ; $6cd3: $29
    nop                                           ; $6cd4: $00
    ld d, b                                       ; $6cd5: $50
    ld d, c                                       ; $6cd6: $51
    nop                                           ; $6cd7: $00
    add b                                         ; $6cd8: $80
    inc bc                                        ; $6cd9: $03
    ld d, d                                       ; $6cda: $52
    add c                                         ; $6cdb: $81
    scf                                           ; $6cdc: $37
    add b                                         ; $6cdd: $80
    rlca                                          ; $6cde: $07
    ld d, l                                       ; $6cdf: $55
    add e                                         ; $6ce0: $83
    nop                                           ; $6ce1: $00
    ld a, [hl+]                                   ; $6ce2: $2a
    ld [hl+], a                                   ; $6ce3: $22
    inc c                                         ; $6ce4: $0c
    nop                                           ; $6ce5: $00
    add d                                         ; $6ce6: $82
    ld [hl+], a                                   ; $6ce7: $22
    dec h                                         ; $6ce8: $25
    db $10                                        ; $6ce9: $10
    jr z, jr_004_6c6e                             ; $6cea: $28 $82

    ld h, $22                                     ; $6cec: $26 $22
    inc c                                         ; $6cee: $0c
    nop                                           ; $6cef: $00
    inc d                                         ; $6cf0: $14
    ld hl, $000c                                  ; $6cf1: $21 $0c $00
    nop                                           ; $6cf4: $00
    nop                                           ; $6cf5: $00
    sbc b                                         ; $6cf6: $98
    ld b, $64                                     ; $6cf7: $06 $64
    add c                                         ; $6cf9: $81
    ld h, a                                       ; $6cfa: $67
    ld b, $66                                     ; $6cfb: $06 $66
    add c                                         ; $6cfd: $81
    ld l, b                                       ; $6cfe: $68
    ld b, $64                                     ; $6cff: $06 $64
    inc c                                         ; $6d01: $0c
    nop                                           ; $6d02: $00
    ld b, $64                                     ; $6d03: $06 $64
    add d                                         ; $6d05: $82
    ld h, l                                       ; $6d06: $65
    nop                                           ; $6d07: $00
    add b                                         ; $6d08: $80
    inc b                                         ; $6d09: $04
    ld l, e                                       ; $6d0a: $6b
    add d                                         ; $6d0b: $82
    nop                                           ; $6d0c: $00
    ld h, l                                       ; $6d0d: $65
    ld b, $64                                     ; $6d0e: $06 $64
    inc c                                         ; $6d10: $0c
    nop                                           ; $6d11: $00
    ld b, $64                                     ; $6d12: $06 $64
    add d                                         ; $6d14: $82
    ld h, l                                       ; $6d15: $65
    nop                                           ; $6d16: $00
    add b                                         ; $6d17: $80
    inc b                                         ; $6d18: $04
    ld l, a                                       ; $6d19: $6f
    add d                                         ; $6d1a: $82
    nop                                           ; $6d1b: $00
    ld h, l                                       ; $6d1c: $65
    ld b, $64                                     ; $6d1d: $06 $64
    inc c                                         ; $6d1f: $0c
    nop                                           ; $6d20: $00
    ld b, $64                                     ; $6d21: $06 $64
    add d                                         ; $6d23: $82
    ld h, l                                       ; $6d24: $65
    nop                                           ; $6d25: $00
    add b                                         ; $6d26: $80
    inc b                                         ; $6d27: $04
    ld l, a                                       ; $6d28: $6f
    add d                                         ; $6d29: $82
    nop                                           ; $6d2a: $00
    ld h, l                                       ; $6d2b: $65
    ld b, $64                                     ; $6d2c: $06 $64
    inc c                                         ; $6d2e: $0c
    nop                                           ; $6d2f: $00
    ld b, $64                                     ; $6d30: $06 $64
    add d                                         ; $6d32: $82
    ld h, l                                       ; $6d33: $65
    nop                                           ; $6d34: $00
    add b                                         ; $6d35: $80
    inc b                                         ; $6d36: $04
    ld [hl], e                                    ; $6d37: $73
    add d                                         ; $6d38: $82
    nop                                           ; $6d39: $00
    ld h, l                                       ; $6d3a: $65
    ld b, $64                                     ; $6d3b: $06 $64
    inc c                                         ; $6d3d: $0c
    nop                                           ; $6d3e: $00
    ld b, $64                                     ; $6d3f: $06 $64
    add c                                         ; $6d41: $81
    ld h, l                                       ; $6d42: $65
    add b                                         ; $6d43: $80
    ld b, $01                                     ; $6d44: $06 $01
    add c                                         ; $6d46: $81
    ld h, l                                       ; $6d47: $65
    ld b, $64                                     ; $6d48: $06 $64
    inc c                                         ; $6d4a: $0c
    nop                                           ; $6d4b: $00
    ld b, $64                                     ; $6d4c: $06 $64
    add c                                         ; $6d4e: $81
    ld h, l                                       ; $6d4f: $65
    add b                                         ; $6d50: $80
    ld b, $07                                     ; $6d51: $06 $07
    add c                                         ; $6d53: $81
    ld h, l                                       ; $6d54: $65
    ld b, $64                                     ; $6d55: $06 $64
    inc c                                         ; $6d57: $0c
    nop                                           ; $6d58: $00
    ld b, $64                                     ; $6d59: $06 $64
    add c                                         ; $6d5b: $81
    ld h, l                                       ; $6d5c: $65
    add b                                         ; $6d5d: $80
    ld b, $0d                                     ; $6d5e: $06 $0d
    add c                                         ; $6d60: $81
    ld h, l                                       ; $6d61: $65
    ld b, $64                                     ; $6d62: $06 $64
    inc c                                         ; $6d64: $0c
    nop                                           ; $6d65: $00
    ld b, $64                                     ; $6d66: $06 $64
    add c                                         ; $6d68: $81
    ld h, l                                       ; $6d69: $65
    add b                                         ; $6d6a: $80
    ld b, $13                                     ; $6d6b: $06 $13
    add c                                         ; $6d6d: $81
    ld h, l                                       ; $6d6e: $65
    ld b, $64                                     ; $6d6f: $06 $64
    inc c                                         ; $6d71: $0c
    nop                                           ; $6d72: $00
    ld b, $64                                     ; $6d73: $06 $64
    add c                                         ; $6d75: $81
    ld h, l                                       ; $6d76: $65
    add b                                         ; $6d77: $80
    ld b, $19                                     ; $6d78: $06 $19
    add c                                         ; $6d7a: $81
    ld h, l                                       ; $6d7b: $65
    ld b, $64                                     ; $6d7c: $06 $64
    inc c                                         ; $6d7e: $0c
    nop                                           ; $6d7f: $00
    ld b, $64                                     ; $6d80: $06 $64
    add d                                         ; $6d82: $82
    ld h, l                                       ; $6d83: $65
    nop                                           ; $6d84: $00
    add b                                         ; $6d85: $80
    inc b                                         ; $6d86: $04
    rra                                           ; $6d87: $1f
    add d                                         ; $6d88: $82
    nop                                           ; $6d89: $00
    ld h, l                                       ; $6d8a: $65
    ld b, $64                                     ; $6d8b: $06 $64
    inc c                                         ; $6d8d: $0c
    nop                                           ; $6d8e: $00
    ld b, $64                                     ; $6d8f: $06 $64
    add c                                         ; $6d91: $81

Jump_004_6d92:
    ld l, c                                       ; $6d92: $69
    ld b, $66                                     ; $6d93: $06 $66
    add c                                         ; $6d95: $81
    ld l, d                                       ; $6d96: $6a
    ld b, $64                                     ; $6d97: $06 $64
    inc c                                         ; $6d99: $0c
    nop                                           ; $6d9a: $00
    add c                                         ; $6d9b: $81
    ld h, a                                       ; $6d9c: $67
    ld [de], a                                    ; $6d9d: $12
    ld h, [hl]                                    ; $6d9e: $66
    add c                                         ; $6d9f: $81
    ld l, b                                       ; $6da0: $68
    inc c                                         ; $6da1: $0c
    nop                                           ; $6da2: $00
    add c                                         ; $6da3: $81
    ld h, l                                       ; $6da4: $65
    ld [de], a                                    ; $6da5: $12
    nop                                           ; $6da6: $00
    add c                                         ; $6da7: $81
    ld h, l                                       ; $6da8: $65
    inc c                                         ; $6da9: $0c
    nop                                           ; $6daa: $00
    add c                                         ; $6dab: $81
    ld h, l                                       ; $6dac: $65
    inc b                                         ; $6dad: $04
    nop                                           ; $6dae: $00
    add b                                         ; $6daf: $80
    dec b                                         ; $6db0: $05
    ld b, [hl]                                    ; $6db1: $46
    inc bc                                        ; $6db2: $03
    nop                                           ; $6db3: $00
    add b                                         ; $6db4: $80
    inc b                                         ; $6db5: $04
    ld a, $83                                     ; $6db6: $3e $83
    nop                                           ; $6db8: $00
    nop                                           ; $6db9: $00
    ld h, l                                       ; $6dba: $65
    inc c                                         ; $6dbb: $0c
    nop                                           ; $6dbc: $00
    add c                                         ; $6dbd: $81
    ld h, l                                       ; $6dbe: $65
    inc b                                         ; $6dbf: $04
    nop                                           ; $6dc0: $00
    add b                                         ; $6dc1: $80
    dec b                                         ; $6dc2: $05
    ld c, e                                       ; $6dc3: $4b
    inc bc                                        ; $6dc4: $03
    nop                                           ; $6dc5: $00
    add b                                         ; $6dc6: $80
    inc b                                         ; $6dc7: $04
    ld b, d                                       ; $6dc8: $42
    add e                                         ; $6dc9: $83
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    ld h, l                                       ; $6dcc: $65
    inc c                                         ; $6dcd: $0c
    nop                                           ; $6dce: $00
    add c                                         ; $6dcf: $81
    ld h, l                                       ; $6dd0: $65
    ld [de], a                                    ; $6dd1: $12
    nop                                           ; $6dd2: $00
    add c                                         ; $6dd3: $81
    ld h, l                                       ; $6dd4: $65
    inc c                                         ; $6dd5: $0c
    nop                                           ; $6dd6: $00
    add c                                         ; $6dd7: $81
    ld l, c                                       ; $6dd8: $69
    ld [de], a                                    ; $6dd9: $12
    ld h, [hl]                                    ; $6dda: $66
    add c                                         ; $6ddb: $81
    ld l, d                                       ; $6ddc: $6a
    inc c                                         ; $6ddd: $0c
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    nop                                           ; $6de0: $00
    sbc h                                         ; $6de1: $9c
    add c                                         ; $6de2: $81
    ld h, l                                       ; $6de3: $65
    inc c                                         ; $6de4: $0c
    nop                                           ; $6de5: $00
    add d                                         ; $6de6: $82
    inc hl                                        ; $6de7: $23
    inc h                                         ; $6de8: $24
    inc b                                         ; $6de9: $04
    nop                                           ; $6dea: $00
    add c                                         ; $6deb: $81
    ld h, l                                       ; $6dec: $65
    inc c                                         ; $6ded: $0c
    nop                                           ; $6dee: $00
    add c                                         ; $6def: $81
    ld h, l                                       ; $6df0: $65
    inc c                                         ; $6df1: $0c
    nop                                           ; $6df2: $00
    add d                                         ; $6df3: $82
    dec h                                         ; $6df4: $25
    ld h, $04                                     ; $6df5: $26 $04
    nop                                           ; $6df7: $00
    add c                                         ; $6df8: $81
    ld h, l                                       ; $6df9: $65
    inc c                                         ; $6dfa: $0c
    nop                                           ; $6dfb: $00
    add c                                         ; $6dfc: $81
    ld h, l                                       ; $6dfd: $65
    ld b, $00                                     ; $6dfe: $06 $00
    add b                                         ; $6e00: $80
    dec bc                                        ; $6e01: $0b
    daa                                           ; $6e02: $27
    add d                                         ; $6e03: $82
    nop                                           ; $6e04: $00
    ld h, l                                       ; $6e05: $65
    inc c                                         ; $6e06: $0c
    nop                                           ; $6e07: $00
    add c                                         ; $6e08: $81
    ld h, l                                       ; $6e09: $65
    ld b, $00                                     ; $6e0a: $06 $00
    add b                                         ; $6e0c: $80
    inc c                                         ; $6e0d: $0c
    ld [hl-], a                                   ; $6e0e: $32
    add c                                         ; $6e0f: $81
    ld h, l                                       ; $6e10: $65
    inc c                                         ; $6e11: $0c
    nop                                           ; $6e12: $00
    add c                                         ; $6e13: $81
    ld l, c                                       ; $6e14: $69
    ld [de], a                                    ; $6e15: $12
    ld h, [hl]                                    ; $6e16: $66
    add c                                         ; $6e17: $81
    ld l, d                                       ; $6e18: $6a
    inc c                                         ; $6e19: $0c
    nop                                           ; $6e1a: $00
    nop                                           ; $6e1b: $00
    ld bc, $74fb                                  ; $6e1c: $01 $fb $74
    nop                                           ; $6e1f: $00
    ld bc, $2701                                  ; $6e20: $01 $01 $27
    ld l, [hl]                                    ; $6e23: $6e
    add b                                         ; $6e24: $80
    ld bc, $1000                                  ; $6e25: $01 $00 $10
    nop                                           ; $6e28: $00
    adc a                                         ; $6e29: $8f
    add b                                         ; $6e2a: $80
    nop                                           ; $6e2b: $00
    add b                                         ; $6e2c: $80

jr_004_6e2d:
    nop                                           ; $6e2d: $00
    add c                                         ; $6e2e: $81
    ld bc, $0181                                  ; $6e2f: $01 $81 $01
    add c                                         ; $6e32: $81
    ld bc, $0181                                  ; $6e33: $01 $81 $01
    add c                                         ; $6e36: $81
    ld bc, $0580                                  ; $6e37: $01 $80 $05
    nop                                           ; $6e3a: $00
    add d                                         ; $6e3b: $82
    ld bc, $0401                                  ; $6e3c: $01 $01 $04
    add c                                         ; $6e3f: $81
    add a                                         ; $6e40: $87
    pop bc                                        ; $6e41: $c1
    ld b, c                                       ; $6e42: $41
    pop hl                                        ; $6e43: $e1
    ld hl, $91f1                                  ; $6e44: $21 $f1 $91
    ld bc, $0003                                  ; $6e47: $01 $03 $00
    add b                                         ; $6e4a: $80
    add e                                         ; $6e4b: $83

jr_004_6e4c:
    inc b                                         ; $6e4c: $04
    inc b                                         ; $6e4d: $04
    ld b, $86                                     ; $6e4e: $06 $86
    add [hl]                                      ; $6e50: $86
    add l                                         ; $6e51: $85
    rst RST_00                                    ; $6e52: $c7
    ld b, l                                       ; $6e53: $45
    rst RST_00                                    ; $6e54: $c7
    ld b, l                                       ; $6e55: $45
    rst RST_38                                    ; $6e56: $ff
    dec b                                         ; $6e57: $05
    nop                                           ; $6e58: $00
    inc b                                         ; $6e59: $04
    ld [$1804], sp                                ; $6e5a: $08 $04 $18
    add e                                         ; $6e5d: $83
    add hl, de                                    ; $6e5e: $19
    jr jr_004_6e2d                                ; $6e5f: $18 $cc

    inc bc                                        ; $6e61: $03
    nop                                           ; $6e62: $00
    ldh [c], a                                    ; $6e63: $e2
    db $10                                        ; $6e64: $10
    db $10                                        ; $6e65: $10
    jr jr_004_6e80                                ; $6e66: $18 $18

    inc e                                         ; $6e68: $1c
    inc d                                         ; $6e69: $14
    ld c, $0a                                     ; $6e6a: $0e $0a
    rrca                                          ; $6e6c: $0f
    add hl, bc                                    ; $6e6d: $09
    call $f10a                                    ; $6e6e: $cd $0a $f1
    sub c                                         ; $6e71: $91
    reti                                          ; $6e72: $d9


    xor c                                         ; $6e73: $a9
    db $fd                                        ; $6e74: $fd
    add l                                         ; $6e75: $85
    ld l, l                                       ; $6e76: $6d
    ld d, l                                       ; $6e77: $55
    ld l, a                                       ; $6e78: $6f
    ld d, e                                       ; $6e79: $53
    ld h, a                                       ; $6e7a: $67
    ld e, e                                       ; $6e7b: $5b
    ld h, a                                       ; $6e7c: $67
    ld e, c                                       ; $6e7d: $59
    rst RST_20                                    ; $6e7e: $e7
    reti                                          ; $6e7f: $d9


jr_004_6e80:
    rst RST_20                                    ; $6e80: $e7
    dec h                                         ; $6e81: $25
    rst RST_20                                    ; $6e82: $e7
    inc h                                         ; $6e83: $24
    rst RST_20                                    ; $6e84: $e7
    inc h                                         ; $6e85: $24
    rst RST_30                                    ; $6e86: $f7
    inc d                                         ; $6e87: $14
    or a                                          ; $6e88: $b7
    ld d, h                                       ; $6e89: $54
    or a                                          ; $6e8a: $b7
    ld d, h                                       ; $6e8b: $54
    sbc l                                         ; $6e8c: $9d
    ld l, d                                       ; $6e8d: $6a
    sbc l                                         ; $6e8e: $9d
    ld l, d                                       ; $6e8f: $6a
    add hl, sp                                    ; $6e90: $39
    jr z, jr_004_6e4c                             ; $6e91: $28 $b9

    xor b                                         ; $6e93: $a8
    cp c                                          ; $6e94: $b9
    xor b                                         ; $6e95: $a8
    cp c                                          ; $6e96: $b9
    xor b                                         ; $6e97: $a8
    ld sp, hl                                     ; $6e98: $f9
    ret z                                         ; $6e99: $c8

    ld sp, hl                                     ; $6e9a: $f9
    ret z                                         ; $6e9b: $c8

jr_004_6e9c:
    ld sp, hl                                     ; $6e9c: $f9
    ret z                                         ; $6e9d: $c8

    reti                                          ; $6e9e: $d9


    xor b                                         ; $6e9f: $a8
    nop                                           ; $6ea0: $00
    nop                                           ; $6ea1: $00
    jr nz, jr_004_6ec4                            ; $6ea2: $20 $20

    ld [hl-], a                                   ; $6ea4: $32
    ld [hl-], a                                   ; $6ea5: $32
    sbc e                                         ; $6ea6: $9b
    ld a, [de]                                    ; $6ea7: $1a
    sbc a                                         ; $6ea8: $9f
    rla                                           ; $6ea9: $17
    adc [hl]                                      ; $6eaa: $8e
    dec bc                                        ; $6eab: $0b
    ld h, $25                                     ; $6eac: $26 $25
    ld e, $1d                                     ; $6eae: $1e $1d
    rst RST_20                                    ; $6eb0: $e7
    inc b                                         ; $6eb1: $04
    ld b, $05                                     ; $6eb2: $06 $05
    ld b, $05                                     ; $6eb4: $06 $05
    ld b, $05                                     ; $6eb6: $06 $05
    ld b, $05                                     ; $6eb8: $06 $05
    add e                                         ; $6eba: $83
    add d                                         ; $6ebb: $82
    add a                                         ; $6ebc: $87
    add d                                         ; $6ebd: $82
    ld c, a                                       ; $6ebe: $4f
    adc $e3                                       ; $6ebf: $ce $e3
    call c, Call_004_5ce3                         ; $6ec1: $dc $e3 $5c

jr_004_6ec4:
    pop hl                                        ; $6ec4: $e1
    ld e, [hl]                                    ; $6ec5: $5e
    add b                                         ; $6ec6: $80
    add [hl]                                      ; $6ec7: $86
    inc b                                         ; $6ec8: $04
    sbc [hl]                                      ; $6ec9: $9e
    sbc a                                         ; $6eca: $9f
    rst RST_18                                    ; $6ecb: $df
    rst RST_18                                    ; $6ecc: $df
    jp nz, $ff01                                  ; $6ecd: $c2 $01 $ff

    sbc c                                         ; $6ed0: $99
    ld h, [hl]                                    ; $6ed1: $66
    adc c                                         ; $6ed2: $89
    ld [hl], a                                    ; $6ed3: $77
    add d                                         ; $6ed4: $82
    ld a, a                                       ; $6ed5: $7f
    add [hl]                                      ; $6ed6: $86
    ld a, a                                       ; $6ed7: $7f
    rrca                                          ; $6ed8: $0f
    ei                                            ; $6ed9: $fb
    rra                                           ; $6eda: $1f
    or $3e                                        ; $6edb: $f6 $3e
    push hl                                       ; $6edd: $e5
    db $fd                                        ; $6ede: $fd
    db $eb                                        ; $6edf: $eb
    reti                                          ; $6ee0: $d9


    jr z, jr_004_6e9c                             ; $6ee1: $28 $b9

    ld l, b                                       ; $6ee3: $68
    ld a, c                                       ; $6ee4: $79
    add sp, -$27                                  ; $6ee5: $e8 $d9
    add sp, -$38                                  ; $6ee7: $e8 $c8
    ld a, h                                       ; $6ee9: $7c
    adc h                                         ; $6eea: $8c
    db $fc                                        ; $6eeb: $fc
    sbc h                                         ; $6eec: $9c
    db $fc                                        ; $6eed: $fc
    ld a, h                                       ; $6eee: $7c
    db $fc                                        ; $6eef: $fc
    adc a                                         ; $6ef0: $8f
    ld [$080f], sp                                ; $6ef1: $08 $0f $08
    rlca                                          ; $6ef4: $07
    inc b                                         ; $6ef5: $04
    rlca                                          ; $6ef6: $07
    inc b                                         ; $6ef7: $04
    inc bc                                        ; $6ef8: $03
    ld [bc], a                                    ; $6ef9: $02
    inc bc                                        ; $6efa: $03
    ld [bc], a                                    ; $6efb: $02
    ld bc, $f801                                  ; $6efc: $01 $01 $f8
    nop                                           ; $6eff: $00
    ld d, e                                       ; $6f00: $53
    jp nc, $e263                                  ; $6f01: $d2 $63 $e2

    inc sp                                        ; $6f04: $33
    ldh [c], a                                    ; $6f05: $e2
    cp e                                          ; $6f06: $bb
    ld h, d                                       ; $6f07: $62
    sbc e                                         ; $6f08: $9b
    ld h, d                                       ; $6f09: $62
    rst RST_18                                    ; $6f0a: $df
    inc sp                                        ; $6f0b: $33
    rst RST_18                                    ; $6f0c: $df
    ld [hl-], a                                   ; $6f0d: $32
    call z, $80b8                                 ; $6f0e: $cc $b8 $80
    add l                                         ; $6f11: $85
    inc b                                         ; $6f12: $04
    ld b, $18                                     ; $6f13: $06 $18
    jr nz, jr_004_6f57                            ; $6f15: $20 $40

    xor c                                         ; $6f17: $a9
    cp l                                          ; $6f18: $bd
    jp Jump_000_01ff                              ; $6f19: $c3 $ff $01


    rst RST_38                                    ; $6f1c: $ff
    ld bc, $023f                                  ; $6f1d: $01 $3f $02
    ld a, c                                       ; $6f20: $79
    rst RST_00                                    ; $6f21: $c7
    ld [hl], e                                    ; $6f22: $73
    adc $f2                                       ; $6f23: $ce $f2
    adc l                                         ; $6f25: $8d
    pop hl                                        ; $6f26: $e1
    sbc a                                         ; $6f27: $9f
    ldh [c], a                                    ; $6f28: $e2
    rra                                           ; $6f29: $1f
    call nz, $c73f                                ; $6f2a: $c4 $3f $c7
    inc a                                         ; $6f2d: $3c
    adc a                                         ; $6f2e: $8f
    ld a, b                                       ; $6f2f: $78
    and h                                         ; $6f30: $a4
    db $fc                                        ; $6f31: $fc
    ld b, d                                       ; $6f32: $42
    cp $81                                        ; $6f33: $fe $81
    rst RST_38                                    ; $6f35: $ff
    nop                                           ; $6f36: $00
    rst RST_38                                    ; $6f37: $ff
    nop                                           ; $6f38: $00
    rst RST_38                                    ; $6f39: $ff
    nop                                           ; $6f3a: $00
    rst RST_38                                    ; $6f3b: $ff
    ldh [$ff1f], a                                ; $6f3c: $e0 $1f
    db $fc                                        ; $6f3e: $fc
    inc bc                                        ; $6f3f: $03

jr_004_6f40:
    ld a, a                                       ; $6f40: $7f
    dec b                                         ; $6f41: $05
    nop                                           ; $6f42: $00
    inc b                                         ; $6f43: $04
    add b                                         ; $6f44: $80
    add a                                         ; $6f45: $87
    ld b, b                                       ; $6f46: $40
    ret nz                                        ; $6f47: $c0

    ld b, b                                       ; $6f48: $40
    ret nz                                        ; $6f49: $c0

    ld c, a                                       ; $6f4a: $4f
    ret nz                                        ; $6f4b: $c0

    db $fc                                        ; $6f4c: $fc
    dec c                                         ; $6f4d: $0d
    nop                                           ; $6f4e: $00
    adc b                                         ; $6f4f: $88
    db $fc                                        ; $6f50: $fc
    nop                                           ; $6f51: $00
    adc h                                         ; $6f52: $8c
    ld hl, sp-$34                                 ; $6f53: $f8 $cc
    ld hl, sp-$48                                 ; $6f55: $f8 $b8

jr_004_6f57:
    or b                                          ; $6f57: $b0
    inc b                                         ; $6f58: $04
    add b                                         ; $6f59: $80
    adc [hl]                                      ; $6f5a: $8e
    ldh a, [$ffe0]                                ; $6f5b: $f0 $e0
    sbc b                                         ; $6f5d: $98
    sub b                                         ; $6f5e: $90
    db $ec                                        ; $6f5f: $ec
    add sp, $07                                   ; $6f60: $e8 $07
    ld [bc], a                                    ; $6f62: $02
    inc bc                                        ; $6f63: $03
    ld [bc], a                                    ; $6f64: $02
    inc bc                                        ; $6f65: $03
    ld [bc], a                                    ; $6f66: $02
    ld bc, $0801                                  ; $6f67: $01 $01 $08
    nop                                           ; $6f6a: $00
    adc b                                         ; $6f6b: $88
    sbc a                                         ; $6f6c: $9f
    ld [hl], b                                    ; $6f6d: $70
    sbc a                                         ; $6f6e: $9f
    ld [hl], b                                    ; $6f6f: $70
    ccf                                           ; $6f70: $3f
    ldh [$fff0], a                                ; $6f71: $e0 $f0
    ret nz                                        ; $6f73: $c0

    inc b                                         ; $6f74: $04
    nop                                           ; $6f75: $00
    adc e                                         ; $6f76: $8b
    db $fc                                        ; $6f77: $fc
    jr c, jr_004_6f40                             ; $6f78: $38 $c6

    ld b, h                                       ; $6f7a: $44
    cp $01                                        ; $6f7b: $fe $01
    rst RST_38                                    ; $6f7d: $ff
    nop                                           ; $6f7e: $00
    rst RST_38                                    ; $6f7f: $ff
    nop                                           ; $6f80: $00
    rst RST_38                                    ; $6f81: $ff
    add b                                         ; $6f82: $80
    add d                                         ; $6f83: $82
    dec b                                         ; $6f84: $05
    rra                                           ; $6f85: $1f
    rrca                                          ; $6f86: $0f
    rlca                                          ; $6f87: $07
    rlca                                          ; $6f88: $07
    ld hl, $e090                                  ; $6f89: $21 $90 $e0
    ld hl, $21e0                                  ; $6f8c: $21 $e0 $21
    ldh [rNR42], a                                ; $6f8f: $e0 $21
    ldh [$ffa1], a                                ; $6f91: $e0 $a1
    ld h, b                                       ; $6f93: $60
    and c                                         ; $6f94: $a1
    ld h, b                                       ; $6f95: $60
    and c                                         ; $6f96: $a1
    ld h, b                                       ; $6f97: $60
    and c                                         ; $6f98: $a1
    ld h, b                                       ; $6f99: $60
    rst RST_38                                    ; $6f9a: $ff
    dec c                                         ; $6f9b: $0d
    nop                                           ; $6f9c: $00

jr_004_6f9d:
    add b                                         ; $6f9d: $80
    add c                                         ; $6f9e: $81
    add hl, bc                                    ; $6f9f: $09
    ret nz                                        ; $6fa0: $c0

    add c                                         ; $6fa1: $81
    add c                                         ; $6fa2: $81
    add c                                         ; $6fa3: $81
    add c                                         ; $6fa4: $81
    add c                                         ; $6fa5: $81
    add c                                         ; $6fa6: $81
    ld bc, $8401                                  ; $6fa7: $01 $01 $84
    ld sp, hl                                     ; $6faa: $f9
    ld bc, $0202                                  ; $6fab: $01 $02 $02
    inc b                                         ; $6fae: $04
    inc b                                         ; $6faf: $04
    jp nz, Jump_000_0405                          ; $6fb0: $c2 $05 $04

    ld b, $04                                     ; $6fb3: $06 $04
    ld [bc], a                                    ; $6fb5: $02
    ld [bc], a                                    ; $6fb6: $02
    pop af                                        ; $6fb7: $f1
    ld bc, $d89c                                  ; $6fb8: $01 $9c $d8
    inc a                                         ; $6fbb: $3c
    jr c, jr_004_701d                             ; $6fbc: $38 $5f

    ld e, $99                                     ; $6fbe: $1e $99
    ld de, $1e3e                                  ; $6fc0: $11 $3e $1e
    ld a, c                                       ; $6fc3: $79
    ld de, $30f0                                  ; $6fc4: $11 $f0 $30
    ldh a, [$ffe0]                                ; $6fc7: $f0 $e0
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    ccf                                           ; $6fcb: $3f
    nop                                           ; $6fcc: $00
    ld a, a                                       ; $6fcd: $7f
    inc e                                         ; $6fce: $1c
    db $e3                                        ; $6fcf: $e3
    ld [hl+], a                                   ; $6fd0: $22
    push bc                                       ; $6fd1: $c5
    pop bc                                        ; $6fd2: $c1
    ld c, c                                       ; $6fd3: $49
    ld b, c                                       ; $6fd4: $41
    db $d3                                        ; $6fd5: $d3
    pop bc                                        ; $6fd6: $c1
    ld h, a                                       ; $6fd7: $67
    ld b, c                                       ; $6fd8: $41
    inc bc                                        ; $6fd9: $03
    ld [bc], a                                    ; $6fda: $02
    ei                                            ; $6fdb: $fb
    ld a, d                                       ; $6fdc: $7a
    adc a                                         ; $6fdd: $8f
    adc a                                         ; $6fde: $8f
    adc c                                         ; $6fdf: $89
    add hl, bc                                    ; $6fe0: $09
    add $46                                       ; $6fe1: $c6 $46
    ld hl, sp+$38                                 ; $6fe3: $f8 $38
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    ld a, b                                       ; $6fe7: $78
    ld a, b                                       ; $6fe8: $78
    inc bc                                        ; $6fe9: $03
    nop                                           ; $6fea: $00
    inc bc                                        ; $6feb: $03
    nop                                           ; $6fec: $00
    inc bc                                        ; $6fed: $03
    ld bc, $0202                                  ; $6fee: $01 $02 $02
    inc b                                         ; $6ff1: $04
    inc b                                         ; $6ff2: $04
    inc bc                                        ; $6ff3: $03
    dec b                                         ; $6ff4: $05
    add [hl]                                      ; $6ff5: $86
    inc b                                         ; $6ff6: $04
    ld bc, $c701                                  ; $6ff7: $01 $01 $c7
    ld b, b                                       ; $6ffa: $40
    ld b, b                                       ; $6ffb: $40
    inc bc                                        ; $6ffc: $03
    ret nz                                        ; $6ffd: $c0

    add h                                         ; $6ffe: $84
    jr nz, jr_004_7021                            ; $6fff: $20 $20

    and b                                         ; $7001: $a0
    jr nz, @+$06                                  ; $7002: $20 $04

    jr nc, jr_004_6f9d                            ; $7004: $30 $97

    cp c                                          ; $7006: $b9
    jr z, jr_004_7042                             ; $7007: $28 $39

    jr c, jr_004_707c                             ; $7009: $38 $71

    ld [hl], b                                    ; $700b: $70
    ldh a, [$fff0]                                ; $700c: $f0 $f0
    ldh [$ffe0], a                                ; $700e: $e0 $e0
    add c                                         ; $7010: $81
    add c                                         ; $7011: $81
    inc bc                                        ; $7012: $03
    ld [bc], a                                    ; $7013: $02
    rlca                                          ; $7014: $07
    inc b                                         ; $7015: $04
    rlca                                          ; $7016: $07
    inc b                                         ; $7017: $04
    adc a                                         ; $7018: $8f
    rrca                                          ; $7019: $0f
    ccf                                           ; $701a: $3f
    jr nc, jr_004_709c                            ; $701b: $30 $7f

jr_004_701d:
    add b                                         ; $701d: $80
    add l                                         ; $701e: $85
    dec b                                         ; $701f: $05
    ld b, e                                       ; $7020: $43

jr_004_7021:
    add b                                         ; $7021: $80
    ld c, $01                                     ; $7022: $0e $01
    ld bc, $01f2                                  ; $7024: $01 $f2 $01
    pop hl                                        ; $7027: $e1
    ldh [$ffd0], a                                ; $7028: $e0 $d0
    jr nc, @-$0e                                  ; $702a: $30 $f0

    sub b                                         ; $702c: $90
    rst RST_30                                    ; $702d: $f7
    ld d, a                                       ; $702e: $57
    rst RST_38                                    ; $702f: $ff
    ld e, b                                       ; $7030: $58
    db $fc                                        ; $7031: $fc
    ld d, e                                       ; $7032: $53
    reti                                          ; $7033: $d9


    ld [hl], a                                    ; $7034: $77
    ld a, [$8366]                                 ; $7035: $fa $66 $83
    inc bc                                        ; $7038: $03
    adc a                                         ; $7039: $8f
    inc c                                         ; $703a: $0c
    add hl, de                                    ; $703b: $19
    ld d, $3e                                     ; $703c: $16 $3e
    ccf                                           ; $703e: $3f
    rst RST_20                                    ; $703f: $e7
    push hl                                       ; $7040: $e5
    adc a                                         ; $7041: $8f

jr_004_7042:
    adc [hl]                                      ; $7042: $8e
    dec de                                        ; $7043: $1b
    add hl, de                                    ; $7044: $19
    ld h, [hl]                                    ; $7045: $66
    ld h, d                                       ; $7046: $62
    and d                                         ; $7047: $a2

jr_004_7048:
    and b                                         ; $7048: $a0
    rst RST_20                                    ; $7049: $e7
    ld h, b                                       ; $704a: $60
    rst RST_20                                    ; $704b: $e7
    inc hl                                        ; $704c: $23
    ld a, a                                       ; $704d: $7f
    sbc h                                         ; $704e: $9c
    rst RST_18                                    ; $704f: $df
    ldh [$ffb8], a                                ; $7050: $e0 $b8
    cp a                                          ; $7052: $bf
    sub a                                         ; $7053: $97
    sub a                                         ; $7054: $97
    xor a                                         ; $7055: $af

jr_004_7056:
    xor a                                         ; $7056: $af
    ld l, a                                       ; $7057: $6f
    inc hl                                        ; $7058: $23
    rst RST_38                                    ; $7059: $ff
    ld e, $df                                     ; $705a: $1e $df
    jr nc, jr_004_7056                            ; $705c: $30 $f8

    rst RST_20                                    ; $705e: $e7
    rst RST_20                                    ; $705f: $e7
    rra                                           ; $7060: $1f
    ld e, $f9                                     ; $7061: $1e $f9
    rst RST_38                                    ; $7063: $ff
    db $e3                                        ; $7064: $e3
    rst RST_38                                    ; $7065: $ff
    ld b, a                                       ; $7066: $47
    cp $86                                        ; $7067: $fe $86
    rst RST_00                                    ; $7069: $c7
    add hl, sp                                    ; $706a: $39
    ccf                                           ; $706b: $3f
    rst RST_38                                    ; $706c: $ff
    ccf                                           ; $706d: $3f
    call z, $f2ef                                 ; $706e: $cc $ef $f2
    rst RST_18                                    ; $7071: $df
    sbc l                                         ; $7072: $9d
    add a                                         ; $7073: $87
    add e                                         ; $7074: $83
    rrca                                          ; $7075: $0f
    nop                                           ; $7076: $00
    add hl, bc                                    ; $7077: $09
    ld bc, $0008                                  ; $7078: $01 $08 $00
    sbc h                                         ; $707b: $9c

jr_004_707c:
    add h                                         ; $707c: $84
    rst RST_38                                    ; $707d: $ff
    rst RST_00                                    ; $707e: $c7
    rst RST_30                                    ; $707f: $f7
    inc c                                         ; $7080: $0c
    ei                                            ; $7081: $fb
    ld [$11f6], sp                                ; $7082: $08 $f6 $11
    xor $a3                                       ; $7085: $ee $a3
    jp hl                                         ; $7087: $e9


    ld e, b                                       ; $7088: $58
    ld l, c                                       ; $7089: $69
    ld e, b                                       ; $708a: $58
    reti                                          ; $708b: $d9


    cp b                                          ; $708c: $b8
    reti                                          ; $708d: $d9


    jr c, jr_004_7048                             ; $708e: $38 $b8

    ld a, b                                       ; $7090: $78
    ld a, h                                       ; $7091: $7c
    call c, $d35f                                 ; $7092: $dc $5f $d3
    ld e, a                                       ; $7095: $5f
    ret nc                                        ; $7096: $d0

    rst RST_38                                    ; $7097: $ff
    dec c                                         ; $7098: $0d
    nop                                           ; $7099: $00
    add $ff                                       ; $709a: $c6 $ff

jr_004_709c:
    rst RST_38                                    ; $709c: $ff
    rst RST_20                                    ; $709d: $e7
    inc b                                         ; $709e: $04
    rlca                                          ; $709f: $07
    inc b                                         ; $70a0: $04
    rlca                                          ; $70a1: $07
    inc b                                         ; $70a2: $04
    inc bc                                        ; $70a3: $03
    ld [bc], a                                    ; $70a4: $02
    inc bc                                        ; $70a5: $03
    ld [bc], a                                    ; $70a6: $02
    inc bc                                        ; $70a7: $03
    ld [bc], a                                    ; $70a8: $02
    ld bc, $f901                                  ; $70a9: $01 $01 $f9
    ld bc, $39ff                                  ; $70ac: $01 $ff $39
    rst RST_38                                    ; $70af: $ff
    add hl, de                                    ; $70b0: $19
    rst RST_38                                    ; $70b1: $ff
    add hl, de                                    ; $70b2: $19
    db $fd                                        ; $70b3: $fd
    inc hl                                        ; $70b4: $23
    db $e3                                        ; $70b5: $e3
    ccf                                           ; $70b6: $3f
    rst RST_38                                    ; $70b7: $ff
    ld a, $ff                                     ; $70b8: $3e $ff
    inc c                                         ; $70ba: $0c
    rst RST_38                                    ; $70bb: $ff
    inc b                                         ; $70bc: $04
    ld d, h                                       ; $70bd: $54
    db $ec                                        ; $70be: $ec
    or l                                          ; $70bf: $b5
    call $99e9                                    ; $70c0: $cd $e9 $99
    ld l, d                                       ; $70c3: $6a
    sbc d                                         ; $70c4: $9a
    ld [$d21a], a                                 ; $70c5: $ea $1a $d2
    ld [hl-], a                                   ; $70c8: $32
    sub h                                         ; $70c9: $94
    ld [hl], h                                    ; $70ca: $74
    and h                                         ; $70cb: $a4
    ld h, h                                       ; $70cc: $64
    adc h                                         ; $70cd: $8c
    add h                                         ; $70ce: $84
    jr jr_004_70d9                                ; $70cf: $18 $08

    ld sp, $6310                                  ; $70d1: $31 $10 $63
    jr nz, jr_004_7139                            ; $70d4: $20 $63

    ld hl, $42c7                                  ; $70d6: $21 $c7 $42

jr_004_70d9:
    rst RST_00                                    ; $70d9: $c7
    ld b, h                                       ; $70da: $44
    rst RST_08                                    ; $70db: $cf
    ld c, e                                       ; $70dc: $4b
    ld e, a                                       ; $70dd: $5f
    ld e, [hl]                                    ; $70de: $5e
    sbc $5f                                       ; $70df: $de $5f
    inc b                                         ; $70e1: $04

jr_004_70e2:
    cp a                                          ; $70e2: $bf
    set 3, a                                      ; $70e3: $cb $df
    rst RST_18                                    ; $70e5: $df
    ldh [$ff60], a                                ; $70e6: $e0 $60
    rst RST_38                                    ; $70e8: $ff
    rra                                           ; $70e9: $1f
    rst RST_38                                    ; $70ea: $ff
    nop                                           ; $70eb: $00
    cp $0e                                        ; $70ec: $fe $0e
    db $fc                                        ; $70ee: $fc
    jr c, jr_004_70e2                             ; $70ef: $38 $f1

    ldh a, [$ffe7]                                ; $70f1: $f0 $e7
    db $e3                                        ; $70f3: $e3
    sub a                                         ; $70f4: $97
    rrca                                          ; $70f5: $0f
    ld a, a                                       ; $70f6: $7f
    ld a, a                                       ; $70f7: $7f
    rst RST_38                                    ; $70f8: $ff
    rst RST_38                                    ; $70f9: $ff
    ld a, a                                       ; $70fa: $7f
    rst RST_38                                    ; $70fb: $ff
    ccf                                           ; $70fc: $3f
    nop                                           ; $70fd: $00
    db $fc                                        ; $70fe: $fc
    inc bc                                        ; $70ff: $03
    ccf                                           ; $7100: $3f
    rst RST_38                                    ; $7101: $ff
    cp $fe                                        ; $7102: $fe $fe
    db $fc                                        ; $7104: $fc
    db $fc                                        ; $7105: $fc
    ld sp, hl                                     ; $7106: $f9
    ld hl, sp-$0d                                 ; $7107: $f8 $f3
    ldh a, [$ffc7]                                ; $7109: $f0 $c7
    jp nz, $c5da                                  ; $710b: $c2 $da $c5

    cp [hl]                                       ; $710e: $be
    add c                                         ; $710f: $81
    ld a, l                                       ; $7110: $7d
    inc bc                                        ; $7111: $03
    ld a, [hl]                                    ; $7112: $7e
    ld [bc], a                                    ; $7113: $02
    db $fc                                        ; $7114: $fc
    dec b                                         ; $7115: $05
    db $fd                                        ; $7116: $fd
    add l                                         ; $7117: $85
    rst RST_30                                    ; $7118: $f7
    dec c                                         ; $7119: $0d
    rst RST_20                                    ; $711a: $e7
    dec e                                         ; $711b: $1d
    ld a, a                                       ; $711c: $7f
    ret nc                                        ; $711d: $d0

    rst RST_38                                    ; $711e: $ff
    ret c                                         ; $711f: $d8

    ld a, a                                       ; $7120: $7f
    ld d, h                                       ; $7121: $54
    halt                                          ; $7122: $76
    ld a, [$fd8b]                                 ; $7123: $fa $8b $fd
    scf                                           ; $7126: $37
    call $857f                                    ; $7127: $cd $7f $85
    ld a, a                                       ; $712a: $7f
    add l                                         ; $712b: $85
    rst RST_38                                    ; $712c: $ff
    nop                                           ; $712d: $00
    rst RST_38                                    ; $712e: $ff
    dec c                                         ; $712f: $0d
    nop                                           ; $7130: $00
    add c                                         ; $7131: $81
    db $fc                                        ; $7132: $fc
    dec c                                         ; $7133: $0d
    nop                                           ; $7134: $00
    xor b                                         ; $7135: $a8
    rst RST_38                                    ; $7136: $ff
    nop                                           ; $7137: $00
    ei                                            ; $7138: $fb

jr_004_7139:
    add h                                         ; $7139: $84
    rst RST_38                                    ; $713a: $ff
    add b                                         ; $713b: $80
    ld a, a                                       ; $713c: $7f
    ld b, b                                       ; $713d: $40
    rst RST_38                                    ; $713e: $ff
    ret nz                                        ; $713f: $c0

    di                                            ; $7140: $f3
    cp h                                          ; $7141: $bc
    cp a                                          ; $7142: $bf
    ret nz                                        ; $7143: $c0

    ld b, b                                       ; $7144: $40
    ld a, a                                       ; $7145: $7f
    ccf                                           ; $7146: $3f
    ccf                                           ; $7147: $3f
    ld h, l                                       ; $7148: $65
    db $e4                                        ; $7149: $e4
    ld d, l                                       ; $714a: $55
    db $f4                                        ; $714b: $f4
    sub l                                         ; $714c: $95
    ld [hl], h                                    ; $714d: $74
    sub l                                         ; $714e: $95
    ld [hl], h                                    ; $714f: $74
    and l                                         ; $7150: $a5
    ld h, h                                       ; $7151: $64
    ld h, a                                       ; $7152: $67
    push hl                                       ; $7153: $e5
    or a                                          ; $7154: $b7
    push af                                       ; $7155: $f5
    scf                                           ; $7156: $37
    push af                                       ; $7157: $f5
    adc a                                         ; $7158: $8f
    adc [hl]                                      ; $7159: $8e
    sbc e                                         ; $715a: $9b
    sbc d                                         ; $715b: $9a
    sub a                                         ; $715c: $97
    sub l                                         ; $715d: $95
    add b                                         ; $715e: $80
    add e                                         ; $715f: $83
    inc b                                         ; $7160: $04
    add [hl]                                      ; $7161: $86
    adc h                                         ; $7162: $8c
    inc c                                         ; $7163: $0c
    inc b                                         ; $7164: $04
    adc a                                         ; $7165: $8f
    ld b, $04                                     ; $7166: $06 $04
    cp $41                                        ; $7168: $fe $41
    rst RST_30                                    ; $716a: $f7
    ret                                           ; $716b: $c9


    halt                                          ; $716c: $76
    ld e, d                                       ; $716d: $5a
    rst RST_38                                    ; $716e: $ff
    or d                                          ; $716f: $b2
    rst RST_38                                    ; $7170: $ff
    rst RST_30                                    ; $7171: $f7
    rst RST_18                                    ; $7172: $df
    call nc, $038f                                ; $7173: $d4 $8f $03
    adc b                                         ; $7176: $88
    adc l                                         ; $7177: $8d
    rst RST_38                                    ; $7178: $ff
    rst RST_38                                    ; $7179: $ff
    ld hl, sp-$08                                 ; $717a: $f8 $f8
    inc bc                                        ; $717c: $03
    nop                                           ; $717d: $00
    rst RST_38                                    ; $717e: $ff
    inc bc                                        ; $717f: $03
    rst RST_38                                    ; $7180: $ff
    db $fc                                        ; $7181: $fc
    rst RST_38                                    ; $7182: $ff
    nop                                           ; $7183: $00
    db $fc                                        ; $7184: $fc
    inc bc                                        ; $7185: $03
    nop                                           ; $7186: $00
    ldh [$ff1f], a                                ; $7187: $e0 $1f
    inc b                                         ; $7189: $04
    ld a, a                                       ; $718a: $7f
    jr @+$01                                      ; $718b: $18 $ff

    ld h, b                                       ; $718d: $60
    rst RST_38                                    ; $718e: $ff
    add b                                         ; $718f: $80
    rst RST_38                                    ; $7190: $ff
    nop                                           ; $7191: $00
    rst RST_38                                    ; $7192: $ff
    ld bc, $023f                                  ; $7193: $01 $3f $02
    ccf                                           ; $7196: $3f
    inc b                                         ; $7197: $04
    db $ed                                        ; $7198: $ed
    ld e, $de                                     ; $7199: $1e $de
    inc sp                                        ; $719b: $33
    cp a                                          ; $719c: $bf
    ld h, c                                       ; $719d: $61
    ld a, a                                       ; $719e: $7f
    ret nz                                        ; $719f: $c0

    rst RST_38                                    ; $71a0: $ff
    add b                                         ; $71a1: $80
    rst RST_38                                    ; $71a2: $ff
    nop                                           ; $71a3: $00
    db $fd                                        ; $71a4: $fd
    ld bc, $02f2                                  ; $71a5: $01 $f2 $02
    cp l                                          ; $71a8: $bd
    set 7, d                                      ; $71a9: $cb $fa
    halt                                          ; $71ab: $76
    ld d, [hl]                                    ; $71ac: $56
    call c, $d8dc                                 ; $71ad: $dc $dc $d8
    ld hl, sp+$50                                 ; $71b0: $f8 $50
    ld hl, sp-$28                                 ; $71b2: $f8 $d8
    ld a, h                                       ; $71b4: $7c
    ld d, h                                       ; $71b5: $54
    halt                                          ; $71b6: $76
    ld a, [$189f]                                 ; $71b7: $fa $9f $18
    rra                                           ; $71ba: $1f
    rla                                           ; $71bb: $17
    rra                                           ; $71bc: $1f
    db $10                                        ; $71bd: $10
    rrca                                          ; $71be: $0f
    ld [$0c0f], sp                                ; $71bf: $08 $0f $0c
    rrca                                          ; $71c2: $0f
    dec bc                                        ; $71c3: $0b
    dec bc                                        ; $71c4: $0b
    ld [$08c8], sp                                ; $71c5: $08 $c8 $08
    rst RST_10                                    ; $71c8: $d7
    push af                                       ; $71c9: $f5
    adc e                                         ; $71ca: $8b
    ld a, e                                       ; $71cb: $7b
    sbc e                                         ; $71cc: $9b
    ld a, e                                       ; $71cd: $7b
    db $db                                        ; $71ce: $db
    dec sp                                        ; $71cf: $3b
    rst RST_38                                    ; $71d0: $ff
    daa                                           ; $71d1: $27
    db $fd                                        ; $71d2: $fd
    push bc                                       ; $71d3: $c5
    rst RST_38                                    ; $71d4: $ff
    inc bc                                        ; $71d5: $03
    ccf                                           ; $71d6: $3f
    inc bc                                        ; $71d7: $03
    ld [bc], a                                    ; $71d8: $02
    ld [bc], a                                    ; $71d9: $02
    inc bc                                        ; $71da: $03
    ld [bc], a                                    ; $71db: $02
    add c                                         ; $71dc: $81
    ld bc, $0080                                  ; $71dd: $01 $80 $00
    ret nz                                        ; $71e0: $c0

    nop                                           ; $71e1: $00
    ret nz                                        ; $71e2: $c0

    add b                                         ; $71e3: $80
    ldh a, [$ff80]                                ; $71e4: $f0 $80
    db $fc                                        ; $71e6: $fc
    ret nz                                        ; $71e7: $c0

    inc b                                         ; $71e8: $04
    nop                                           ; $71e9: $00
    adc c                                         ; $71ea: $89
    add b                                         ; $71eb: $80
    nop                                           ; $71ec: $00
    ldh [$ff80], a                                ; $71ed: $e0 $80
    ld a, a                                       ; $71ef: $7f
    ld h, b                                       ; $71f0: $60
    ccf                                           ; $71f1: $3f
    rra                                           ; $71f2: $1f
    rra                                           ; $71f3: $1f
    dec b                                         ; $71f4: $05
    nop                                           ; $71f5: $00
    adc e                                         ; $71f6: $8b
    ld bc, $0700                                  ; $71f7: $01 $00 $07
    nop                                           ; $71fa: $00
    ld a, a                                       ; $71fb: $7f
    inc bc                                        ; $71fc: $03
    rst RST_38                                    ; $71fd: $ff
    inc a                                         ; $71fe: $3c
    cp $c0                                        ; $71ff: $fe $c0
    ldh [$ff03], a                                ; $7201: $e0 $03
    nop                                           ; $7203: $00
    adc c                                         ; $7204: $89
    ld a, a                                       ; $7205: $7f
    ld [$30ff], sp                                ; $7206: $08 $ff $30
    db $fc                                        ; $7209: $fc
    ret nz                                        ; $720a: $c0

    ldh a, [rP1]                                  ; $720b: $f0 $00
    ret nz                                        ; $720d: $c0

    rlca                                          ; $720e: $07
    nop                                           ; $720f: $00
    add c                                         ; $7210: $81
    call nz, Call_000_0503                        ; $7211: $c4 $03 $05
    sbc h                                         ; $7214: $9c
    rlca                                          ; $7215: $07
    dec b                                         ; $7216: $05
    rlca                                          ; $7217: $07
    dec b                                         ; $7218: $05
    dec b                                         ; $7219: $05
    ld b, $02                                     ; $721a: $06 $02
    inc bc                                        ; $721c: $03
    ld bc, $0001                                  ; $721d: $01 $01 $00
    nop                                           ; $7220: $00
    ei                                            ; $7221: $fb
    adc l                                         ; $7222: $8d
    rst RST_08                                    ; $7223: $cf
    dec b                                         ; $7224: $05
    add a                                         ; $7225: $87
    dec b                                         ; $7226: $05
    add a                                         ; $7227: $87
    dec b                                         ; $7228: $05
    call $fa8b                                    ; $7229: $cd $8b $fa
    halt                                          ; $722c: $76
    ld d, [hl]                                    ; $722d: $56
    call c, $d8dc                                 ; $722e: $dc $dc $d8
    inc b                                         ; $7231: $04
    nop                                           ; $7232: $00
    inc bc                                        ; $7233: $03
    rra                                           ; $7234: $1f
    add l                                         ; $7235: $85
    db $10                                        ; $7236: $10
    rra                                           ; $7237: $1f
    db $10                                        ; $7238: $10
    rra                                           ; $7239: $1f
    db $10                                        ; $723a: $10
    inc bc                                        ; $723b: $03
    rra                                           ; $723c: $1f
    add c                                         ; $723d: $81
    db $10                                        ; $723e: $10
    inc bc                                        ; $723f: $03
    ld hl, sp-$73                                 ; $7240: $f8 $8d
    adc b                                         ; $7242: $88
    rst RST_38                                    ; $7243: $ff
    adc a                                         ; $7244: $8f
    rst RST_38                                    ; $7245: $ff
    nop                                           ; $7246: $00
    rst RST_38                                    ; $7247: $ff
    nop                                           ; $7248: $00
    rst RST_38                                    ; $7249: $ff
    nop                                           ; $724a: $00

jr_004_724b:
    rst RST_38                                    ; $724b: $ff
    adc a                                         ; $724c: $8f
    rst RST_38                                    ; $724d: $ff
    nop                                           ; $724e: $00
    inc bc                                        ; $724f: $03
    ld a, l                                       ; $7250: $7d
    adc l                                         ; $7251: $8d
    ld b, a                                       ; $7252: $47
    db $fd                                        ; $7253: $fd
    rst RST_00                                    ; $7254: $c7
    db $fd                                        ; $7255: $fd
    ld b, a                                       ; $7256: $47
    db $fd                                        ; $7257: $fd
    ld a, a                                       ; $7258: $7f
    ldh [$ff3f], a                                ; $7259: $e0 $3f
    ldh [rIE], a                                  ; $725b: $e0 $ff
    ldh [$ff38], a                                ; $725d: $e0 $38
    inc bc                                        ; $725f: $03
    pop af                                        ; $7260: $f1
    adc l                                         ; $7261: $8d
    add hl, de                                    ; $7262: $19
    db $fd                                        ; $7263: $fd

jr_004_7264:
    dec e                                         ; $7264: $1d
    db $fd                                        ; $7265: $fd
    rla                                           ; $7266: $17
    db $fd                                        ; $7267: $fd
    rst RST_30                                    ; $7268: $f7
    ld a, l                                       ; $7269: $7d
    ld b, a                                       ; $726a: $47
    ld a, l                                       ; $726b: $7d
    ld b, a                                       ; $726c: $47
    ld a, l                                       ; $726d: $7d
    ld b, a                                       ; $726e: $47
    inc bc                                        ; $726f: $03
    ldh a, [$ff8d]                                ; $7270: $f0 $8d
    jr jr_004_7264                                ; $7272: $18 $f0

    inc e                                         ; $7274: $1c
    ldh a, [rNR32]                                ; $7275: $f0 $1c
    ldh a, [rNR32]                                ; $7277: $f0 $1c
    ldh a, [rNR32]                                ; $7279: $f0 $1c
    rst RST_38                                    ; $727b: $ff
    rra                                           ; $727c: $1f
    rst RST_38                                    ; $727d: $ff
    jr jr_004_7283                                ; $727e: $18 $03

    ld a, $8d                                     ; $7280: $3e $8d
    inc hl                                        ; $7282: $23

jr_004_7283:
    ld a, $23                                     ; $7283: $3e $23
    ccf                                           ; $7285: $3f

jr_004_7286:
    inc hl                                        ; $7286: $23
    ccf                                           ; $7287: $3f

jr_004_7288:
    jr nz, jr_004_72c9                            ; $7288: $20 $3f

    jr nz, jr_004_724b                            ; $728a: $20 $bf

    and b                                         ; $728c: $a0
    cp a                                          ; $728d: $bf
    db $e3                                        ; $728e: $e3
    inc bc                                        ; $728f: $03
    ei                                            ; $7290: $fb
    adc l                                         ; $7291: $8d
    adc [hl]                                      ; $7292: $8e
    ei                                            ; $7293: $fb
    adc [hl]                                      ; $7294: $8e
    ei                                            ; $7295: $fb
    adc [hl]                                      ; $7296: $8e
    ei                                            ; $7297: $fb
    rst RST_38                                    ; $7298: $ff
    db $fc                                        ; $7299: $fc
    rra                                           ; $729a: $1f
    db $fc                                        ; $729b: $fc
    ld b, $fc                                     ; $729c: $06 $fc
    add a                                         ; $729e: $87
    inc bc                                        ; $729f: $03
    ldh [$ff97], a                                ; $72a0: $e0 $97
    jr nc, @-$1e                                  ; $72a2: $30 $e0

    jr c, jr_004_7286                             ; $72a4: $38 $e0

    jr c, jr_004_7288                             ; $72a6: $38 $e0

    ld hl, sp+$00                                 ; $72a8: $f8 $00
    ld hl, sp+$00                                 ; $72aa: $f8 $00
    ld hl, sp+$00                                 ; $72ac: $f8 $00
    nop                                           ; $72ae: $00

jr_004_72af:
    rra                                           ; $72af: $1f
    db $10                                        ; $72b0: $10

jr_004_72b1:
    rra                                           ; $72b1: $1f
    db $10                                        ; $72b2: $10
    rra                                           ; $72b3: $1f
    rra                                           ; $72b4: $1f
    nop                                           ; $72b5: $00
    rrca                                          ; $72b6: $0f
    nop                                           ; $72b7: $00
    rlca                                          ; $72b8: $07
    ld b, $00                                     ; $72b9: $06 $00
    sbc d                                         ; $72bb: $9a
    rst RST_38                                    ; $72bc: $ff
    nop                                           ; $72bd: $00
    rst RST_38                                    ; $72be: $ff
    nop                                           ; $72bf: $00
    rst RST_38                                    ; $72c0: $ff
    adc a                                         ; $72c1: $8f
    ld hl, sp-$71                                 ; $72c2: $f8 $8f
    ld hl, sp-$71                                 ; $72c4: $f8 $8f
    ld hl, sp-$02                                 ; $72c6: $f8 $fe
    nop                                           ; $72c8: $00

jr_004_72c9:
    ld a, [hl]                                    ; $72c9: $7e
    nop                                           ; $72ca: $00
    ld a, $e0                                     ; $72cb: $3e $e0
    jr c, jr_004_72af                             ; $72cd: $38 $e0

    jr c, jr_004_72b1                             ; $72cf: $38 $e0

    ld hl, sp+$00                                 ; $72d1: $f8 $00
    ld hl, sp+$00                                 ; $72d3: $f8 $00
    ld hl, sp+$06                                 ; $72d5: $f8 $06
    nop                                           ; $72d7: $00
    adc a                                         ; $72d8: $8f
    ld a, l                                       ; $72d9: $7d
    ld b, a                                       ; $72da: $47
    ld a, l                                       ; $72db: $7d
    ld b, a                                       ; $72dc: $47
    db $fd                                        ; $72dd: $fd
    rst RST_00                                    ; $72de: $c7
    db $fd                                        ; $72df: $fd
    add a                                         ; $72e0: $87
    db $fd                                        ; $72e1: $fd
    adc a                                         ; $72e2: $8f
    ld sp, hl                                     ; $72e3: $f9
    rst RST_38                                    ; $72e4: $ff
    nop                                           ; $72e5: $00
    ld a, a                                       ; $72e6: $7f
    nop                                           ; $72e7: $00
    add b                                         ; $72e8: $80
    add l                                         ; $72e9: $85
    inc b                                         ; $72ea: $04
    ld a, $18                                     ; $72eb: $3e $18
    ld de, $9f01                                  ; $72ed: $11 $01 $9f
    inc bc                                        ; $72f0: $03
    cp $0f                                        ; $72f1: $fe $0f
    ldh a, [rIE]                                  ; $72f3: $f0 $ff
    nop                                           ; $72f5: $00
    rst RST_38                                    ; $72f6: $ff
    nop                                           ; $72f7: $00
    ld a, h                                       ; $72f8: $7c
    cp [hl]                                       ; $72f9: $be
    db $e3                                        ; $72fa: $e3
    cp [hl]                                       ; $72fb: $be
    db $e3                                        ; $72fc: $e3
    ld a, $e3                                     ; $72fd: $3e $e3
    ld a, $e3                                     ; $72ff: $3e $e3
    ld a, $e3                                     ; $7301: $3e $e3
    ld a, $ff                                     ; $7303: $3e $ff
    nop                                           ; $7305: $00
    sbc a                                         ; $7306: $9f
    nop                                           ; $7307: $00
    rrca                                          ; $7308: $0f
    db $fc                                        ; $7309: $fc

jr_004_730a:
    rst RST_20                                    ; $730a: $e7
    inc a                                         ; $730b: $3c
    rst RST_38                                    ; $730c: $ff
    nop                                           ; $730d: $00
    rst RST_38                                    ; $730e: $ff
    add b                                         ; $730f: $80
    add d                                         ; $7310: $82
    dec b                                         ; $7311: $05
    adc a                                         ; $7312: $8f
    add b                                         ; $7313: $80
    add b                                         ; $7314: $80
    add b                                         ; $7315: $80
    add b                                         ; $7316: $80
    add b                                         ; $7317: $80
    add c                                         ; $7318: $81
    ld [$8181], sp                                ; $7319: $08 $81 $81
    add c                                         ; $731c: $81
    add c                                         ; $731d: $81
    add c                                         ; $731e: $81
    add c                                         ; $731f: $81
    add c                                         ; $7320: $81
    add c                                         ; $7321: $81
    add c                                         ; $7322: $81
    rst RST_38                                    ; $7323: $ff
    dec c                                         ; $7324: $0d
    nop                                           ; $7325: $00
    add c                                         ; $7326: $81
    rst RST_38                                    ; $7327: $ff
    dec b                                         ; $7328: $05
    nop                                           ; $7329: $00
    inc b                                         ; $732a: $04
    ccf                                           ; $732b: $3f
    inc b                                         ; $732c: $04
    inc sp                                        ; $732d: $33

jr_004_732e:
    add h                                         ; $732e: $84
    ld h, e                                       ; $732f: $63
    ld [hl], e                                    ; $7330: $73
    ld h, e                                       ; $7331: $63
    ld h, e                                       ; $7332: $63
    inc b                                         ; $7333: $04
    nop                                           ; $7334: $00
    inc b                                         ; $7335: $04
    ld a, [hl]                                    ; $7336: $7e
    ld [$0418], sp                                ; $7337: $08 $18 $04
    nop                                           ; $733a: $00
    inc b                                         ; $733b: $04
    ld a, [hl]                                    ; $733c: $7e
    add b                                         ; $733d: $80
    add e                                         ; $733e: $83
    inc b                                         ; $733f: $04
    ld b, $0e                                     ; $7340: $06 $0e
    inc c                                         ; $7342: $0c
    inc e                                         ; $7343: $1c
    inc b                                         ; $7344: $04
    nop                                           ; $7345: $00
    ld a, [bc]                                    ; $7346: $0a
    ld h, b                                       ; $7347: $60
    add b                                         ; $7348: $80
    add e                                         ; $7349: $83
    rlca                                          ; $734a: $07
    ld a, b                                       ; $734b: $78
    inc bc                                        ; $734c: $03
    rlca                                          ; $734d: $07
    ld b, $0e                                     ; $734e: $06 $0e
    inc a                                         ; $7350: $3c
    jr c, jr_004_7357                             ; $7351: $38 $04

    nop                                           ; $7353: $00
    ld [$0418], sp                                ; $7354: $08 $18 $04

jr_004_7357:
    rst RST_38                                    ; $7357: $ff
    inc b                                         ; $7358: $04
    nop                                           ; $7359: $00
    add b                                         ; $735a: $80
    add e                                         ; $735b: $83
    ld b, $1c                                     ; $735c: $06 $1c
    ld a, $36                                     ; $735e: $3e $36
    ld [hl], a                                    ; $7360: $77
    ld h, e                                       ; $7361: $63
    ld h, e                                       ; $7362: $63
    inc b                                         ; $7363: $04
    nop                                           ; $7364: $00
    add b                                         ; $7365: $80
    add e                                         ; $7366: $83
    ld b, $7e                                     ; $7367: $06 $7e
    ld l, [hl]                                    ; $7369: $6e
    ld h, b                                       ; $736a: $60
    ld h, b                                       ; $736b: $60
    ld h, b                                       ; $736c: $60
    ld h, b                                       ; $736d: $60
    ld [$0400], sp                                ; $736e: $08 $00 $04
    ld h, b                                       ; $7371: $60
    adc b                                         ; $7372: $88
    ld h, e                                       ; $7373: $63
    ld h, b                                       ; $7374: $60
    ld h, a                                       ; $7375: $67
    ld h, e                                       ; $7376: $63
    ld a, a                                       ; $7377: $7f
    ld l, a                                       ; $7378: $6f
    ld a, h                                       ; $7379: $7c
    inc a                                         ; $737a: $3c
    inc b                                         ; $737b: $04
    nop                                           ; $737c: $00
    add c                                         ; $737d: $81
    jr nc, @+$05                                  ; $737e: $30 $03

    jr jr_004_730a                                ; $7380: $18 $88

    ld c, $1e                                     ; $7382: $0e $1e
    ld a, a                                       ; $7384: $7f
    ld a, a                                       ; $7385: $7f
    ld [hl], a                                    ; $7386: $77
    ld [hl], e                                    ; $7387: $73
    inc bc                                        ; $7388: $03
    inc bc                                        ; $7389: $03
    inc b                                         ; $738a: $04
    nop                                           ; $738b: $00
    inc b                                         ; $738c: $04
    ld a, [hl]                                    ; $738d: $7e
    adc b                                         ; $738e: $88
    ld b, $06                                     ; $738f: $06 $06
    inc c                                         ; $7391: $0c
    inc c                                         ; $7392: $0c
    ld a, $3c                                     ; $7393: $3e $3c
    ccf                                           ; $7395: $3f
    ld a, $04                                     ; $7396: $3e $04
    nop                                           ; $7398: $00
    add b                                         ; $7399: $80
    add e                                         ; $739a: $83
    rlca                                          ; $739b: $07
    inc bc                                        ; $739c: $03
    rlca                                          ; $739d: $07
    ld c, $1c                                     ; $739e: $0e $1c
    jr c, @+$72                                   ; $73a0: $38 $70

    jr c, jr_004_732e                             ; $73a2: $38 $8a

    ld [hl], b                                    ; $73a4: $70
    jr nc, jr_004_7407                            ; $73a5: $30 $60

    ld h, b                                       ; $73a7: $60
    ld [hl], b                                    ; $73a8: $70
    ld h, b                                       ; $73a9: $60
    ld a, a                                       ; $73aa: $7f
    ccf                                           ; $73ab: $3f
    ccf                                           ; $73ac: $3f
    rra                                           ; $73ad: $1f
    inc b                                         ; $73ae: $04
    nop                                           ; $73af: $00
    inc b                                         ; $73b0: $04
    inc bc                                        ; $73b1: $03
    adc b                                         ; $73b2: $88
    ld b, $03                                     ; $73b3: $06 $03
    rrca                                          ; $73b5: $0f
    ld b, $3e                                     ; $73b6: $06 $3e
    ld a, $3c                                     ; $73b8: $3e $3c
    inc a                                         ; $73ba: $3c
    inc b                                         ; $73bb: $04
    nop                                           ; $73bc: $00
    ld b, $03                                     ; $73bd: $06 $03
    add [hl]                                      ; $73bf: $86
    rlca                                          ; $73c0: $07
    ld b, $7e                                     ; $73c1: $06 $7e
    ld a, $7c                                     ; $73c3: $3e $7c
    jr c, @+$06                                   ; $73c5: $38 $04

    nop                                           ; $73c7: $00
    add b                                         ; $73c8: $80
    add e                                         ; $73c9: $83
    ld b, $70                                     ; $73ca: $06 $70
    jr c, jr_004_73ea                             ; $73cc: $38 $1c

    ld c, $07                                     ; $73ce: $0e $07
    inc bc                                        ; $73d0: $03
    dec b                                         ; $73d1: $05
    nop                                           ; $73d2: $00
    sub l                                         ; $73d3: $95
    rst RST_38                                    ; $73d4: $ff
    nop                                           ; $73d5: $00
    rst RST_38                                    ; $73d6: $ff
    rst RST_38                                    ; $73d7: $ff
    nop                                           ; $73d8: $00

jr_004_73d9:
    rst RST_38                                    ; $73d9: $ff
    rrca                                          ; $73da: $0f
    rst RST_38                                    ; $73db: $ff
    rra                                           ; $73dc: $1f
    ld hl, sp+$18                                 ; $73dd: $f8 $18
    ei                                            ; $73df: $fb
    dec de                                        ; $73e0: $1b
    ei                                            ; $73e1: $fb
    dec de                                        ; $73e2: $1b
    nop                                           ; $73e3: $00
    rst RST_38                                    ; $73e4: $ff
    nop                                           ; $73e5: $00
    rst RST_38                                    ; $73e6: $ff
    rst RST_38                                    ; $73e7: $ff
    nop                                           ; $73e8: $00
    inc b                                         ; $73e9: $04

jr_004_73ea:
    rst RST_38                                    ; $73ea: $ff
    rlca                                          ; $73eb: $07
    nop                                           ; $73ec: $00
    call z, $00ff                                 ; $73ed: $cc $ff $00
    rst RST_38                                    ; $73f0: $ff
    rst RST_38                                    ; $73f1: $ff
    nop                                           ; $73f2: $00
    rst RST_38                                    ; $73f3: $ff
    ldh a, [rIE]                                  ; $73f4: $f0 $ff
    ld hl, sp+$1f                                 ; $73f6: $f8 $1f
    jr jr_004_73d9                                ; $73f8: $18 $df

    ret c                                         ; $73fa: $d8

    rst RST_18                                    ; $73fb: $df
    ret c                                         ; $73fc: $d8

    ld hl, sp+$18                                 ; $73fd: $f8 $18
    ld hl, sp+$18                                 ; $73ff: $f8 $18
    ld hl, sp+$18                                 ; $7401: $f8 $18
    ld hl, sp+$18                                 ; $7403: $f8 $18
    ld hl, sp+$18                                 ; $7405: $f8 $18

jr_004_7407:
    ld hl, sp+$18                                 ; $7407: $f8 $18
    ld hl, sp+$18                                 ; $7409: $f8 $18
    ld hl, sp+$18                                 ; $740b: $f8 $18
    ei                                            ; $740d: $fb
    dec de                                        ; $740e: $1b
    ei                                            ; $740f: $fb
    dec de                                        ; $7410: $1b
    ld hl, sp+$18                                 ; $7411: $f8 $18
    rst RST_38                                    ; $7413: $ff
    rra                                           ; $7414: $1f
    rst RST_38                                    ; $7415: $ff
    rrca                                          ; $7416: $0f
    rst RST_38                                    ; $7417: $ff
    nop                                           ; $7418: $00
    rst RST_38                                    ; $7419: $ff
    nop                                           ; $741a: $00
    rst RST_38                                    ; $741b: $ff
    nop                                           ; $741c: $00

jr_004_741d:
    rst RST_18                                    ; $741d: $df
    ret c                                         ; $741e: $d8

jr_004_741f:
    rst RST_18                                    ; $741f: $df
    ret c                                         ; $7420: $d8

jr_004_7421:
    rra                                           ; $7421: $1f
    jr @+$01                                      ; $7422: $18 $ff

    ld hl, sp-$01                                 ; $7424: $f8 $ff
    ldh a, [rIE]                                  ; $7426: $f0 $ff
    nop                                           ; $7428: $00
    rst RST_38                                    ; $7429: $ff
    nop                                           ; $742a: $00
    rst RST_38                                    ; $742b: $ff
    nop                                           ; $742c: $00
    rst RST_38                                    ; $742d: $ff
    rst RST_38                                    ; $742e: $ff
    nop                                           ; $742f: $00
    nop                                           ; $7430: $00

jr_004_7431:
    rst RST_38                                    ; $7431: $ff
    nop                                           ; $7432: $00
    rst RST_38                                    ; $7433: $ff
    nop                                           ; $7434: $00
    rst RST_38                                    ; $7435: $ff
    nop                                           ; $7436: $00
    rst RST_38                                    ; $7437: $ff
    nop                                           ; $7438: $00
    nop                                           ; $7439: $00
    dec b                                         ; $743a: $05
    rst RST_38                                    ; $743b: $ff
    xor [hl]                                      ; $743c: $ae
    jr c, jr_004_7457                             ; $743d: $38 $18

    db $db                                        ; $743f: $db
    jr c, jr_004_741d                             ; $7440: $38 $db

    jr c, jr_004_741f                             ; $7442: $38 $db

    jr c, jr_004_7421                             ; $7444: $38 $db

    jr c, jr_004_7464                             ; $7446: $38 $1c

    ei                                            ; $7448: $fb
    rst RST_38                                    ; $7449: $ff
    rst RST_38                                    ; $744a: $ff
    jp $c3bf                                      ; $744b: $c3 $bf $c3


    cp a                                          ; $744e: $bf
    cp l                                          ; $744f: $bd
    add e                                         ; $7450: $83
    cp l                                          ; $7451: $bd
    add e                                         ; $7452: $83
    cp l                                          ; $7453: $bd
    add e                                         ; $7454: $83
    cp l                                          ; $7455: $bd
    add e                                         ; $7456: $83

jr_004_7457:
    cp l                                          ; $7457: $bd
    add e                                         ; $7458: $83
    cp l                                          ; $7459: $bd
    add e                                         ; $745a: $83
    cp l                                          ; $745b: $bd
    add e                                         ; $745c: $83
    cp l                                          ; $745d: $bd
    add e                                         ; $745e: $83
    cp l                                          ; $745f: $bd
    add e                                         ; $7460: $83
    cp l                                          ; $7461: $bd
    add e                                         ; $7462: $83
    cp l                                          ; $7463: $bd

jr_004_7464:
    add e                                         ; $7464: $83
    cp l                                          ; $7465: $bd
    add e                                         ; $7466: $83
    cp l                                          ; $7467: $bd
    add e                                         ; $7468: $83
    cp l                                          ; $7469: $bd
    add e                                         ; $746a: $83
    ld b, $00                                     ; $746b: $06 $00
    dec b                                         ; $746d: $05
    rst RST_38                                    ; $746e: $ff
    sub l                                         ; $746f: $95
    nop                                           ; $7470: $00
    rst RST_38                                    ; $7471: $ff
    nop                                           ; $7472: $00
    rst RST_38                                    ; $7473: $ff
    nop                                           ; $7474: $00
    rra                                           ; $7475: $1f
    jr jr_004_7497                                ; $7476: $18 $1f

    jr jr_004_7499                                ; $7478: $18 $1f

    jr jr_004_749b                                ; $747a: $18 $1f

    jr jr_004_749d                                ; $747c: $18 $1f

    jr jr_004_749f                                ; $747e: $18 $1f

    jr jr_004_74a1                                ; $7480: $18 $1f

    jr @+$21                                      ; $7482: $18 $1f

    jr @+$08                                      ; $7484: $18 $06

    nop                                           ; $7486: $00
    add b                                         ; $7487: $80
    add e                                         ; $7488: $83
    dec b                                         ; $7489: $05
    ld bc, $0f07                                  ; $748a: $01 $07 $0f
    inc c                                         ; $748d: $0c
    inc e                                         ; $748e: $1c
    ld b, $00                                     ; $748f: $06 $00
    inc b                                         ; $7491: $04
    rst RST_38                                    ; $7492: $ff
    inc c                                         ; $7493: $0c
    nop                                           ; $7494: $00
    add b                                         ; $7495: $80
    add e                                         ; $7496: $83

jr_004_7497:
    ld a, [bc]                                    ; $7497: $0a
    add b                                         ; $7498: $80

jr_004_7499:
    ldh [$fff0], a                                ; $7499: $e0 $f0

jr_004_749b:
    jr nc, jr_004_74d5                            ; $749b: $30 $38

jr_004_749d:
    inc e                                         ; $749d: $1c
    inc c                                         ; $749e: $0c

jr_004_749f:
    rrca                                          ; $749f: $0f
    rlca                                          ; $74a0: $07

jr_004_74a1:
    ld bc, $0006                                  ; $74a1: $01 $06 $00
    add b                                         ; $74a4: $80
    add e                                         ; $74a5: $83
    dec b                                         ; $74a6: $05
    jr c, @+$32                                   ; $74a7: $38 $30

    ldh a, [$ffe0]                                ; $74a9: $f0 $e0
    add b                                         ; $74ab: $80
    ld b, $00                                     ; $74ac: $06 $00
    db $10                                        ; $74ae: $10
    jr jr_004_7431                                ; $74af: $18 $80

    add e                                         ; $74b1: $83
    dec b                                         ; $74b2: $05
    inc e                                         ; $74b3: $1c
    ld c, $07                                     ; $74b4: $0e $07
    inc bc                                        ; $74b6: $03
    ld bc, $0082                                  ; $74b7: $01 $82 $00
    nop                                           ; $74ba: $00
    inc b                                         ; $74bb: $04
    rra                                           ; $74bc: $1f
    sub b                                         ; $74bd: $90
    add c                                         ; $74be: $81
    nop                                           ; $74bf: $00
    ld bc, $0100                                  ; $74c0: $01 $00 $01
    nop                                           ; $74c3: $00
    add c                                         ; $74c4: $81
    add b                                         ; $74c5: $80
    pop bc                                        ; $74c6: $c1
    ret nz                                        ; $74c7: $c0

    pop hl                                        ; $74c8: $e1
    ldh [$fff1], a                                ; $74c9: $e0 $f1
    ldh a, [$fff1]                                ; $74cb: $f0 $f1
    ldh a, [rDIV]                                 ; $74cd: $f0 $04
    nop                                           ; $74cf: $00
    inc b                                         ; $74d0: $04
    jr jr_004_74d7                                ; $74d1: $18 $04

    ld a, [hl]                                    ; $74d3: $7e
    add h                                         ; $74d4: $84

jr_004_74d5:
    jr jr_004_74ef                                ; $74d5: $18 $18

jr_004_74d7:
    rra                                           ; $74d7: $1f
    ld e, $04                                     ; $74d8: $1e $04
    nop                                           ; $74da: $00
    add b                                         ; $74db: $80
    add e                                         ; $74dc: $83
    ld b, $c6                                     ; $74dd: $06 $c6
    rst RST_18                                    ; $74df: $df
    rst RST_18                                    ; $74e0: $df
    add $1f                                       ; $74e1: $c6 $1f
    rra                                           ; $74e3: $1f
    inc b                                         ; $74e4: $04
    nop                                           ; $74e5: $00
    add b                                         ; $74e6: $80
    add e                                         ; $74e7: $83

jr_004_74e8:
    ld b, $06                                     ; $74e8: $06 $06
    add a                                         ; $74ea: $87
    add e                                         ; $74eb: $83
    rra                                           ; $74ec: $1f
    sbc l                                         ; $74ed: $9d
    add c                                         ; $74ee: $81

jr_004_74ef:
    inc b                                         ; $74ef: $04
    nop                                           ; $74f0: $00
    inc b                                         ; $74f1: $04
    inc bc                                        ; $74f2: $03
    inc b                                         ; $74f3: $04
    rst RST_08                                    ; $74f4: $cf
    add h                                         ; $74f5: $84
    jp $8f83                                      ; $74f6: $c3 $83 $8f


    adc a                                         ; $74f9: $8f
    nop                                           ; $74fa: $00
    ld [$0400], sp                                ; $74fb: $08 $00 $04
    ret nz                                        ; $74fe: $c0

    add h                                         ; $74ff: $84
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    ret nz                                        ; $7502: $c0

    ret nz                                        ; $7503: $c0

    inc b                                         ; $7504: $04
    nop                                           ; $7505: $00
    ld a, [bc]                                    ; $7506: $0a
    ret nz                                        ; $7507: $c0

    add d                                         ; $7508: $82
    add $c6                                       ; $7509: $c6 $c6
    inc b                                         ; $750b: $04
    nop                                           ; $750c: $00
    inc b                                         ; $750d: $04
    inc bc                                        ; $750e: $03
    adc b                                         ; $750f: $88
    dec sp                                        ; $7510: $3b
    inc sp                                        ; $7511: $33
    ld a, e                                       ; $7512: $7b
    dec sp                                        ; $7513: $3b
    ld a, b                                       ; $7514: $78
    ld a, h                                       ; $7515: $7c
    ld a, h                                       ; $7516: $7c
    ld l, h                                       ; $7517: $6c
    inc b                                         ; $7518: $04
    nop                                           ; $7519: $00
    inc b                                         ; $751a: $04
    ld h, c                                       ; $751b: $61
    inc b                                         ; $751c: $04
    ld l, l                                       ; $751d: $6d
    inc b                                         ; $751e: $04
    dec c                                         ; $751f: $0d
    inc b                                         ; $7520: $04
    nop                                           ; $7521: $00
    inc c                                         ; $7522: $0c
    add b                                         ; $7523: $80
    add h                                         ; $7524: $84
    ld a, a                                       ; $7525: $7f
    ld a, a                                       ; $7526: $7f
    ei                                            ; $7527: $fb
    ld sp, hl                                     ; $7528: $f9
    inc b                                         ; $7529: $04
    reti                                          ; $752a: $d9


    add h                                         ; $752b: $84
    ei                                            ; $752c: $fb
    ei                                            ; $752d: $fb
    ld [hl], e                                    ; $752e: $73
    ld [hl], e                                    ; $752f: $73
    inc b                                         ; $7530: $04
    nop                                           ; $7531: $00
    add d                                         ; $7532: $82
    add [hl]                                      ; $7533: $86
    ld b, $80                                     ; $7534: $06 $80
    add e                                         ; $7536: $83
    dec b                                         ; $7537: $05
    sbc a                                         ; $7538: $9f
    cp a                                          ; $7539: $bf
    or a                                          ; $753a: $b7
    cp [hl]                                       ; $753b: $be
    inc e                                         ; $753c: $1c
    inc b                                         ; $753d: $04
    nop                                           ; $753e: $00
    adc h                                         ; $753f: $8c
    inc bc                                        ; $7540: $03
    inc bc                                        ; $7541: $03
    rlca                                          ; $7542: $07
    rlca                                          ; $7543: $07
    adc [hl]                                      ; $7544: $8e
    adc [hl]                                      ; $7545: $8e
    rst RST_08                                    ; $7546: $cf
    adc a                                         ; $7547: $8f
    rst RST_18                                    ; $7548: $df

jr_004_7549:
    rst RST_18                                    ; $7549: $df
    reti                                          ; $754a: $d9


    reti                                          ; $754b: $d9


    inc b                                         ; $754c: $04
    nop                                           ; $754d: $00
    add d                                         ; $754e: $82
    adc a                                         ; $754f: $8f
    rrca                                          ; $7550: $0f
    inc b                                         ; $7551: $04
    inc bc                                        ; $7552: $03
    add [hl]                                      ; $7553: $86
    ld h, e                                       ; $7554: $63
    ld h, e                                       ; $7555: $63
    db $e3                                        ; $7556: $e3
    db $e3                                        ; $7557: $e3
    pop bc                                        ; $7558: $c1
    pop bc                                        ; $7559: $c1
    inc b                                         ; $755a: $04
    nop                                           ; $755b: $00
    add h                                         ; $755c: $84
    ret nz                                        ; $755d: $c0

    ret nz                                        ; $755e: $c0

    nop                                           ; $755f: $00
    nop                                           ; $7560: $00
    inc b                                         ; $7561: $04
    jr nc, jr_004_74e8                            ; $7562: $30 $84

    ldh a, [$fff0]                                ; $7564: $f0 $f0
    ldh [$ffe0], a                                ; $7566: $e0 $e0
    inc b                                         ; $7568: $04
    nop                                           ; $7569: $00
    adc h                                         ; $756a: $8c
    add $c6                                       ; $756b: $c6 $c6
    call z, $dcce                                 ; $756d: $cc $ce $dc
    call c, $f8f8                                 ; $7570: $dc $f8 $f8
    ldh a, [$fff0]                                ; $7573: $f0 $f0
    ret nz                                        ; $7575: $c0

    ldh [rDIV], a                                 ; $7576: $e0 $04
    nop                                           ; $7578: $00
    add [hl]                                      ; $7579: $86
    db $ec                                        ; $757a: $ec
    ld l, [hl]                                    ; $757b: $6e
    and $c6                                       ; $757c: $e6 $c6
    add $c7                                       ; $757e: $c6 $c7
    inc b                                         ; $7580: $04
    inc bc                                        ; $7581: $03
    ld b, $00                                     ; $7582: $06 $00
    ld b, $0d                                     ; $7584: $06 $0d
    add [hl]                                      ; $7586: $86
    add hl, de                                    ; $7587: $19
    dec c                                         ; $7588: $0d
    sbc l                                         ; $7589: $9d
    add hl, de                                    ; $758a: $19
    ld de, $0419                                  ; $758b: $11 $19 $04
    nop                                           ; $758e: $00
    ld b, $b0                                     ; $758f: $06 $b0
    add [hl]                                      ; $7591: $86
    ldh [$fff0], a                                ; $7592: $e0 $f0
    ldh [$ffe0], a                                ; $7594: $e0 $e0
    add b                                         ; $7596: $80
    ret nz                                        ; $7597: $c0

    ld [$0400], sp                                ; $7598: $08 $00 $04
    rst RST_38                                    ; $759b: $ff
    inc b                                         ; $759c: $04
    inc sp                                        ; $759d: $33
    add h                                         ; $759e: $84
    scf                                           ; $759f: $37
    scf                                           ; $75a0: $37
    ld a, $3e                                     ; $75a1: $3e $3e
    inc c                                         ; $75a3: $0c
    nop                                           ; $75a4: $00
    inc b                                         ; $75a5: $04
    ld l, h                                       ; $75a6: $6c
    inc b                                         ; $75a7: $04
    nop                                           ; $75a8: $00
    inc b                                         ; $75a9: $04
    ld a, a                                       ; $75aa: $7f
    ld [$0403], sp                                ; $75ab: $08 $03 $04
    nop                                           ; $75ae: $00
    add b                                         ; $75af: $80
    add e                                         ; $75b0: $83
    dec b                                         ; $75b1: $05
    jr c, jr_004_7630                             ; $75b2: $38 $7c

    ld l, h                                       ; $75b4: $6c
    ld a, h                                       ; $75b5: $7c
    jr c, jr_004_75be                             ; $75b6: $38 $06

    nop                                           ; $75b8: $00
    ld [$04db], sp                                ; $75b9: $08 $db $04
    ret nz                                        ; $75bc: $c0

    ld a, [bc]                                    ; $75bd: $0a

jr_004_75be:
    nop                                           ; $75be: $00
    inc b                                         ; $75bf: $04
    ld l, h                                       ; $75c0: $6c
    add d                                         ; $75c1: $82
    cp $fe                                        ; $75c2: $fe $fe
    inc b                                         ; $75c4: $04
    nop                                           ; $75c5: $00
    inc c                                         ; $75c6: $0c
    jr jr_004_7549                                ; $75c7: $18 $80

    add e                                         ; $75c9: $83
    ld b, $3c                                     ; $75ca: $06 $3c
    jr nc, jr_004_75fe                            ; $75cc: $30 $30

    jr nc, jr_004_7630                            ; $75ce: $30 $60

    ld h, b                                       ; $75d0: $60
    inc b                                         ; $75d1: $04
    nop                                           ; $75d2: $00
    inc b                                         ; $75d3: $04
    ld l, l                                       ; $75d4: $6d
    add b                                         ; $75d5: $80
    add e                                         ; $75d6: $83
    inc b                                         ; $75d7: $04
    ld bc, $1f03                                  ; $75d8: $01 $03 $1f
    ld e, $04                                     ; $75db: $1e $04
    nop                                           ; $75dd: $00
    add e                                         ; $75de: $83
    add e                                         ; $75df: $83
    add e                                         ; $75e0: $83
    add a                                         ; $75e1: $87
    inc bc                                        ; $75e2: $03
    add [hl]                                      ; $75e3: $86
    add [hl]                                      ; $75e4: $86
    adc [hl]                                      ; $75e5: $8e
    adc h                                         ; $75e6: $8c
    inc a                                         ; $75e7: $3c
    inc a                                         ; $75e8: $3c
    jr c, jr_004_761b                             ; $75e9: $38 $30

    inc b                                         ; $75eb: $04
    nop                                           ; $75ec: $00
    add b                                         ; $75ed: $80
    add e                                         ; $75ee: $83
    ld b, $c0                                     ; $75ef: $06 $c0
    call z, $cccc                                 ; $75f1: $cc $cc $cc
    db $fc                                        ; $75f4: $fc
    ld a, b                                       ; $75f5: $78
    inc b                                         ; $75f6: $04
    nop                                           ; $75f7: $00
    add h                                         ; $75f8: $84
    rst RST_38                                    ; $75f9: $ff
    rst RST_38                                    ; $75fa: $ff
    ld [hl], e                                    ; $75fb: $73
    inc hl                                        ; $75fc: $23
    add b                                         ; $75fd: $80

jr_004_75fe:
    add e                                         ; $75fe: $83
    inc b                                         ; $75ff: $04
    scf                                           ; $7600: $37
    ld [hl], $30                                  ; $7601: $36 $30
    jr nc, jr_004_7609                            ; $7603: $30 $04

    nop                                           ; $7605: $00
    inc b                                         ; $7606: $04
    jr jr_004_760d                                ; $7607: $18 $04

jr_004_7609:
    nop                                           ; $7609: $00
    inc b                                         ; $760a: $04
    jr jr_004_7611                                ; $760b: $18 $04

jr_004_760d:
    nop                                           ; $760d: $00
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    sbc b                                         ; $7610: $98

jr_004_7611:
    sub c                                         ; $7611: $91
    ld d, [hl]                                    ; $7612: $56
    ld d, [hl]                                    ; $7613: $56
    ld d, a                                       ; $7614: $57
    ld d, [hl]                                    ; $7615: $56
    ld d, [hl]                                    ; $7616: $56
    ld d, a                                       ; $7617: $57
    ld d, [hl]                                    ; $7618: $56
    ld d, a                                       ; $7619: $57
    ld d, [hl]                                    ; $761a: $56

jr_004_761b:
    ld d, [hl]                                    ; $761b: $56
    ld d, a                                       ; $761c: $57
    ld d, [hl]                                    ; $761d: $56
    ld d, a                                       ; $761e: $57
    ld d, a                                       ; $761f: $57
    ld d, [hl]                                    ; $7620: $56
    ld d, a                                       ; $7621: $57
    ld d, a                                       ; $7622: $57
    inc bc                                        ; $7623: $03
    ld d, [hl]                                    ; $7624: $56
    inc c                                         ; $7625: $0c
    nop                                           ; $7626: $00
    add d                                         ; $7627: $82
    ld d, a                                       ; $7628: $57
    ld [hl], h                                    ; $7629: $74
    ld [$8a75], sp                                ; $762a: $08 $75 $8a
    halt                                          ; $762d: $76
    ld d, [hl]                                    ; $762e: $56
    ld d, [hl]                                    ; $762f: $56

jr_004_7630:
    ld d, a                                       ; $7630: $57
    ld d, [hl]                                    ; $7631: $56
    ld d, a                                       ; $7632: $57
    ld d, [hl]                                    ; $7633: $56
    ld d, a                                       ; $7634: $57
    ld d, [hl]                                    ; $7635: $56
    ld d, a                                       ; $7636: $57
    inc c                                         ; $7637: $0c
    nop                                           ; $7638: $00
    add d                                         ; $7639: $82
    ld d, a                                       ; $763a: $57
    ld a, c                                       ; $763b: $79
    ld [$8a00], sp                                ; $763c: $08 $00 $8a
    ld a, c                                       ; $763f: $79
    ld d, a                                       ; $7640: $57
    ld d, [hl]                                    ; $7641: $56
    ld d, [hl]                                    ; $7642: $56
    ld d, a                                       ; $7643: $57
    ld d, [hl]                                    ; $7644: $56
    ld d, [hl]                                    ; $7645: $56
    ld d, a                                       ; $7646: $57
    ld d, [hl]                                    ; $7647: $56
    ld d, [hl]                                    ; $7648: $56
    inc c                                         ; $7649: $0c
    nop                                           ; $764a: $00
    add d                                         ; $764b: $82
    ld d, [hl]                                    ; $764c: $56
    ld a, c                                       ; $764d: $79
    inc bc                                        ; $764e: $03
    nop                                           ; $764f: $00
    add b                                         ; $7650: $80
    inc b                                         ; $7651: $04
    ld e, b                                       ; $7652: $58
    add l                                         ; $7653: $85
    nop                                           ; $7654: $00
    ld a, c                                       ; $7655: $79
    ld d, [hl]                                    ; $7656: $56
    ld d, [hl]                                    ; $7657: $56
    ld d, a                                       ; $7658: $57
    add b                                         ; $7659: $80
    inc b                                         ; $765a: $04
    ld bc, $5782                                  ; $765b: $01 $82 $57
    ld d, [hl]                                    ; $765e: $56
    inc c                                         ; $765f: $0c
    nop                                           ; $7660: $00
    add d                                         ; $7661: $82
    ld d, [hl]                                    ; $7662: $56
    ld a, c                                       ; $7663: $79
    inc bc                                        ; $7664: $03
    nop                                           ; $7665: $00
    add b                                         ; $7666: $80
    inc b                                         ; $7667: $04
    ld e, h                                       ; $7668: $5c
    add d                                         ; $7669: $82
    nop                                           ; $766a: $00
    ld a, c                                       ; $766b: $79
    inc bc                                        ; $766c: $03
    ld d, [hl]                                    ; $766d: $56
    add b                                         ; $766e: $80
    inc b                                         ; $766f: $04
    dec b                                         ; $7670: $05
    add d                                         ; $7671: $82
    ld d, [hl]                                    ; $7672: $56
    ld d, a                                       ; $7673: $57
    inc c                                         ; $7674: $0c
    nop                                           ; $7675: $00
    add d                                         ; $7676: $82
    ld d, a                                       ; $7677: $57
    ld a, c                                       ; $7678: $79
    ld [$8300], sp                                ; $7679: $08 $00 $83
    ld a, c                                       ; $767c: $79
    ld d, a                                       ; $767d: $57
    ld d, a                                       ; $767e: $57
    add b                                         ; $767f: $80
    dec b                                         ; $7680: $05
    add hl, bc                                    ; $7681: $09
    add d                                         ; $7682: $82
    ld d, [hl]                                    ; $7683: $56
    ld d, [hl]                                    ; $7684: $56
    inc c                                         ; $7685: $0c
    nop                                           ; $7686: $00
    add d                                         ; $7687: $82
    ld d, [hl]                                    ; $7688: $56
    ld a, c                                       ; $7689: $79
    inc bc                                        ; $768a: $03
    nop                                           ; $768b: $00
    add b                                         ; $768c: $80
    inc b                                         ; $768d: $04
    ld h, b                                       ; $768e: $60
    add h                                         ; $768f: $84
    nop                                           ; $7690: $00
    ld a, c                                       ; $7691: $79
    ld d, [hl]                                    ; $7692: $56
    ld d, [hl]                                    ; $7693: $56
    add b                                         ; $7694: $80
    ld b, $0e                                     ; $7695: $06 $0e
    add c                                         ; $7697: $81
    ld d, a                                       ; $7698: $57
    inc c                                         ; $7699: $0c
    nop                                           ; $769a: $00
    add d                                         ; $769b: $82
    ld d, a                                       ; $769c: $57
    ld a, c                                       ; $769d: $79
    inc bc                                        ; $769e: $03
    nop                                           ; $769f: $00
    add b                                         ; $76a0: $80
    inc b                                         ; $76a1: $04
    ld h, h                                       ; $76a2: $64
    add h                                         ; $76a3: $84
    nop                                           ; $76a4: $00
    ld a, c                                       ; $76a5: $79
    ld d, a                                       ; $76a6: $57
    ld d, [hl]                                    ; $76a7: $56
    add b                                         ; $76a8: $80
    ld b, $14                                     ; $76a9: $06 $14
    add c                                         ; $76ab: $81
    ld d, [hl]                                    ; $76ac: $56
    inc c                                         ; $76ad: $0c
    nop                                           ; $76ae: $00
    add d                                         ; $76af: $82
    ld d, a                                       ; $76b0: $57
    ld a, c                                       ; $76b1: $79
    ld [$8300], sp                                ; $76b2: $08 $00 $83
    ld a, c                                       ; $76b5: $79
    ld d, a                                       ; $76b6: $57
    ld d, a                                       ; $76b7: $57
    add b                                         ; $76b8: $80
    ld b, $1c                                     ; $76b9: $06 $1c
    add c                                         ; $76bb: $81
    ld d, a                                       ; $76bc: $57
    inc c                                         ; $76bd: $0c
    nop                                           ; $76be: $00
    add d                                         ; $76bf: $82
    ld d, [hl]                                    ; $76c0: $56
    ld [hl], a                                    ; $76c1: $77
    ld [$8075], sp                                ; $76c2: $08 $75 $80
    ld a, [bc]                                    ; $76c5: $0a
    ld [hl+], a                                   ; $76c6: $22
    inc c                                         ; $76c7: $0c
    nop                                           ; $76c8: $00
    adc d                                         ; $76c9: $8a
    ld d, a                                       ; $76ca: $57
    ld d, [hl]                                    ; $76cb: $56
    ld d, [hl]                                    ; $76cc: $56
    ld d, a                                       ; $76cd: $57
    ld d, a                                       ; $76ce: $57
    ld d, [hl]                                    ; $76cf: $56
    ld d, [hl]                                    ; $76d0: $56
    ld d, a                                       ; $76d1: $57
    ld d, [hl]                                    ; $76d2: $56
    ld d, a                                       ; $76d3: $57
    add b                                         ; $76d4: $80
    ld a, [bc]                                    ; $76d5: $0a
    inc l                                         ; $76d6: $2c
    inc c                                         ; $76d7: $0c
    nop                                           ; $76d8: $00
    adc d                                         ; $76d9: $8a
    ld d, [hl]                                    ; $76da: $56
    ld d, a                                       ; $76db: $57
    ld d, [hl]                                    ; $76dc: $56
    ld d, a                                       ; $76dd: $57
    ld d, [hl]                                    ; $76de: $56
    ld d, a                                       ; $76df: $57
    ld d, a                                       ; $76e0: $57
    ld d, [hl]                                    ; $76e1: $56
    ld d, a                                       ; $76e2: $57
    ld d, [hl]                                    ; $76e3: $56
    add b                                         ; $76e4: $80
    add hl, bc                                    ; $76e5: $09
    ld [hl], $0d                                  ; $76e6: $36 $0d
    nop                                           ; $76e8: $00
    add [hl]                                      ; $76e9: $86
    ld d, [hl]                                    ; $76ea: $56
    ld d, a                                       ; $76eb: $57
    ld d, a                                       ; $76ec: $57
    ld d, [hl]                                    ; $76ed: $56
    ld d, a                                       ; $76ee: $57
    ld d, a                                       ; $76ef: $57
    inc bc                                        ; $76f0: $03
    ld d, [hl]                                    ; $76f1: $56
    add d                                         ; $76f2: $82
    ld d, a                                       ; $76f3: $57
    ld [hl], $80                                  ; $76f4: $36 $80
    ld [$0d3f], sp                                ; $76f6: $08 $3f $0d
    nop                                           ; $76f9: $00
    inc d                                         ; $76fa: $14
    ld l, [hl]                                    ; $76fb: $6e
    inc c                                         ; $76fc: $0c
    nop                                           ; $76fd: $00
    inc b                                         ; $76fe: $04
    ld [hl], b                                    ; $76ff: $70
    add c                                         ; $7700: $81
    ld l, b                                       ; $7701: $68
    ld a, [bc]                                    ; $7702: $0a
    ld l, c                                       ; $7703: $69
    add c                                         ; $7704: $81
    ld l, d                                       ; $7705: $6a
    inc b                                         ; $7706: $04
    ld [hl], b                                    ; $7707: $70
    inc c                                         ; $7708: $0c
    nop                                           ; $7709: $00
    inc b                                         ; $770a: $04
    ld [hl], c                                    ; $770b: $71
    add d                                         ; $770c: $82
    ld l, e                                       ; $770d: $6b
    nop                                           ; $770e: $00
    add b                                         ; $770f: $80
    ld [$8247], sp                                ; $7710: $08 $47 $82
    nop                                           ; $7713: $00
    ld [hl], e                                    ; $7714: $73
    inc b                                         ; $7715: $04
    ld [hl], c                                    ; $7716: $71
    inc c                                         ; $7717: $0c
    nop                                           ; $7718: $00
    inc b                                         ; $7719: $04
    ld [hl], c                                    ; $771a: $71
    add d                                         ; $771b: $82
    ld l, e                                       ; $771c: $6b
    nop                                           ; $771d: $00
    add b                                         ; $771e: $80
    rlca                                          ; $771f: $07
    ld c, a                                       ; $7720: $4f
    add e                                         ; $7721: $83
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    ld [hl], e                                    ; $7724: $73
    inc b                                         ; $7725: $04
    ld [hl], c                                    ; $7726: $71
    inc c                                         ; $7727: $0c
    nop                                           ; $7728: $00
    inc b                                         ; $7729: $04
    ld [hl], c                                    ; $772a: $71
    add c                                         ; $772b: $81
    ld l, h                                       ; $772c: $6c
    ld a, [bc]                                    ; $772d: $0a
    ld [hl], d                                    ; $772e: $72
    add c                                         ; $772f: $81
    ld l, l                                       ; $7730: $6d
    inc b                                         ; $7731: $04
    ld [hl], c                                    ; $7732: $71
    inc c                                         ; $7733: $0c
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    sbc b                                         ; $7737: $98
    sub c                                         ; $7738: $91
    ld d, [hl]                                    ; $7739: $56
    ld d, [hl]                                    ; $773a: $56
    ld d, a                                       ; $773b: $57
    ld d, [hl]                                    ; $773c: $56
    ld d, [hl]                                    ; $773d: $56
    ld d, a                                       ; $773e: $57
    ld d, [hl]                                    ; $773f: $56
    ld d, a                                       ; $7740: $57
    ld d, [hl]                                    ; $7741: $56
    ld d, [hl]                                    ; $7742: $56
    ld d, a                                       ; $7743: $57
    ld d, [hl]                                    ; $7744: $56
    ld d, a                                       ; $7745: $57
    ld d, a                                       ; $7746: $57
    ld d, [hl]                                    ; $7747: $56
    ld d, a                                       ; $7748: $57
    ld d, a                                       ; $7749: $57
    inc bc                                        ; $774a: $03
    ld d, [hl]                                    ; $774b: $56
    inc c                                         ; $774c: $0c
    nop                                           ; $774d: $00
    add c                                         ; $774e: $81
    ld [hl], h                                    ; $774f: $74
    add hl, bc                                    ; $7750: $09
    ld [hl], l                                    ; $7751: $75
    adc d                                         ; $7752: $8a
    halt                                          ; $7753: $76
    ld d, [hl]                                    ; $7754: $56
    ld d, [hl]                                    ; $7755: $56
    ld d, a                                       ; $7756: $57
    ld d, [hl]                                    ; $7757: $56
    ld d, a                                       ; $7758: $57
    ld d, [hl]                                    ; $7759: $56
    ld d, a                                       ; $775a: $57
    ld d, [hl]                                    ; $775b: $56
    ld d, a                                       ; $775c: $57
    inc c                                         ; $775d: $0c
    nop                                           ; $775e: $00
    add c                                         ; $775f: $81
    ld a, c                                       ; $7760: $79
    add hl, bc                                    ; $7761: $09
    nop                                           ; $7762: $00
    adc d                                         ; $7763: $8a
    ld a, c                                       ; $7764: $79
    ld d, a                                       ; $7765: $57
    ld d, [hl]                                    ; $7766: $56
    ld d, [hl]                                    ; $7767: $56
    ld d, a                                       ; $7768: $57
    ld d, [hl]                                    ; $7769: $56
    ld d, [hl]                                    ; $776a: $56
    ld d, a                                       ; $776b: $57
    ld d, [hl]                                    ; $776c: $56
    ld d, [hl]                                    ; $776d: $56
    inc c                                         ; $776e: $0c
    nop                                           ; $776f: $00
    add c                                         ; $7770: $81
    ld a, c                                       ; $7771: $79
    add b                                         ; $7772: $80
    add hl, bc                                    ; $7773: $09
    ld a, h                                       ; $7774: $7c
    add h                                         ; $7775: $84
    ld a, c                                       ; $7776: $79
    ld d, [hl]                                    ; $7777: $56
    ld d, [hl]                                    ; $7778: $56
    ld d, a                                       ; $7779: $57
    add b                                         ; $777a: $80
    inc b                                         ; $777b: $04
    ld bc, $5782                                  ; $777c: $01 $82 $57
    ld d, [hl]                                    ; $777f: $56
    inc c                                         ; $7780: $0c
    nop                                           ; $7781: $00
    add c                                         ; $7782: $81
    ld a, c                                       ; $7783: $79
    add b                                         ; $7784: $80
    add hl, bc                                    ; $7785: $09
    add l                                         ; $7786: $85
    add c                                         ; $7787: $81
    ld a, c                                       ; $7788: $79
    inc bc                                        ; $7789: $03
    ld d, [hl]                                    ; $778a: $56
    add b                                         ; $778b: $80
    inc b                                         ; $778c: $04
    dec b                                         ; $778d: $05
    add d                                         ; $778e: $82
    ld d, [hl]                                    ; $778f: $56
    ld d, a                                       ; $7790: $57
    inc c                                         ; $7791: $0c
    nop                                           ; $7792: $00
    add c                                         ; $7793: $81
    ld a, c                                       ; $7794: $79
    add hl, bc                                    ; $7795: $09
    nop                                           ; $7796: $00
    add e                                         ; $7797: $83
    ld a, c                                       ; $7798: $79
    ld d, a                                       ; $7799: $57
    ld d, a                                       ; $779a: $57
    add b                                         ; $779b: $80
    dec b                                         ; $779c: $05
    add hl, bc                                    ; $779d: $09
    add d                                         ; $779e: $82
    ld d, [hl]                                    ; $779f: $56
    ld d, [hl]                                    ; $77a0: $56
    inc c                                         ; $77a1: $0c
    nop                                           ; $77a2: $00
    add c                                         ; $77a3: $81
    ld a, c                                       ; $77a4: $79
    add b                                         ; $77a5: $80
    rlca                                          ; $77a6: $07
    adc [hl]                                      ; $77a7: $8e
    add l                                         ; $77a8: $85
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    ld a, c                                       ; $77ab: $79
    ld d, [hl]                                    ; $77ac: $56
    ld d, [hl]                                    ; $77ad: $56
    add b                                         ; $77ae: $80
    ld b, $0e                                     ; $77af: $06 $0e
    add c                                         ; $77b1: $81
    ld d, a                                       ; $77b2: $57
    inc c                                         ; $77b3: $0c
    nop                                           ; $77b4: $00
    add c                                         ; $77b5: $81
    ld a, c                                       ; $77b6: $79
    add b                                         ; $77b7: $80
    inc bc                                        ; $77b8: $03
    sub l                                         ; $77b9: $95
    add c                                         ; $77ba: $81
    nop                                           ; $77bb: $00
    add b                                         ; $77bc: $80
    inc bc                                        ; $77bd: $03
    sbc b                                         ; $77be: $98
    add l                                         ; $77bf: $85
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    ld a, d                                       ; $77c2: $7a
    ld a, e                                       ; $77c3: $7b
    ld d, [hl]                                    ; $77c4: $56
    add b                                         ; $77c5: $80
    ld b, $14                                     ; $77c6: $06 $14
    add c                                         ; $77c8: $81
    ld d, [hl]                                    ; $77c9: $56
    inc c                                         ; $77ca: $0c
    nop                                           ; $77cb: $00
    add c                                         ; $77cc: $81
    ld a, c                                       ; $77cd: $79
    add hl, bc                                    ; $77ce: $09
    nop                                           ; $77cf: $00
    add e                                         ; $77d0: $83
    ld a, c                                       ; $77d1: $79
    ld d, a                                       ; $77d2: $57
    ld d, a                                       ; $77d3: $57
    add b                                         ; $77d4: $80
    ld b, $1c                                     ; $77d5: $06 $1c
    add c                                         ; $77d7: $81
    ld d, a                                       ; $77d8: $57
    inc c                                         ; $77d9: $0c
    nop                                           ; $77da: $00
    add c                                         ; $77db: $81
    ld [hl], a                                    ; $77dc: $77
    add hl, bc                                    ; $77dd: $09
    ld [hl], l                                    ; $77de: $75
    add b                                         ; $77df: $80
    ld a, [bc]                                    ; $77e0: $0a
    ld [hl+], a                                   ; $77e1: $22
    nop                                           ; $77e2: $00
    ld bc, $77e9                                  ; $77e3: $01 $e9 $77
    add b                                         ; $77e6: $80
    ld bc, $1200                                  ; $77e7: $01 $00 $12
    nop                                           ; $77ea: $00
    add b                                         ; $77eb: $80
    add c                                         ; $77ec: $81
    rlca                                          ; $77ed: $07
    ld a, a                                       ; $77ee: $7f
    ld a, a                                       ; $77ef: $7f
    ld a, a                                       ; $77f0: $7f
    ld a, a                                       ; $77f1: $7f
    ld a, a                                       ; $77f2: $7f
    ld a, a                                       ; $77f3: $7f
    ld a, [hl]                                    ; $77f4: $7e
    add c                                         ; $77f5: $81
    nop                                           ; $77f6: $00
    add b                                         ; $77f7: $80
    add d                                         ; $77f8: $82
    ld c, $fe                                     ; $77f9: $0e $fe
    cp $fe                                        ; $77fb: $fe $fe
    cp $fe                                        ; $77fd: $fe $fe
    cp $7e                                        ; $77ff: $fe $7e
    ld a, [hl]                                    ; $7801: $7e
    ld a, a                                       ; $7802: $7f
    ld a, a                                       ; $7803: $7f
    ld a, a                                       ; $7804: $7f
    ld a, a                                       ; $7805: $7f
    ld a, a                                       ; $7806: $7f
    ld a, a                                       ; $7807: $7f
    inc bc                                        ; $7808: $03
    nop                                           ; $7809: $00
    add b                                         ; $780a: $80
    add c                                         ; $780b: $81
    rlca                                          ; $780c: $07
    ld a, [hl]                                    ; $780d: $7e
    cp $fe                                        ; $780e: $fe $fe
    cp $fe                                        ; $7810: $fe $fe
    cp $fe                                        ; $7812: $fe $fe
    inc b                                         ; $7814: $04
    nop                                           ; $7815: $00
    adc e                                         ; $7816: $8b
    rst RST_38                                    ; $7817: $ff
    nop                                           ; $7818: $00
    rst RST_38                                    ; $7819: $ff
    nop                                           ; $781a: $00
    rst RST_38                                    ; $781b: $ff
    nop                                           ; $781c: $00
    rst RST_38                                    ; $781d: $ff
    nop                                           ; $781e: $00
    rst RST_38                                    ; $781f: $ff
    nop                                           ; $7820: $00
    rst RST_38                                    ; $7821: $ff
    dec b                                         ; $7822: $05
    nop                                           ; $7823: $00
    add b                                         ; $7824: $80
    add c                                         ; $7825: $81
    ld b, $f8                                     ; $7826: $06 $f8
    pop af                                        ; $7828: $f1
    db $e3                                        ; $7829: $e3
    rst RST_00                                    ; $782a: $c7
    adc a                                         ; $782b: $8f
    rra                                           ; $782c: $1f
    add c                                         ; $782d: $81
    nop                                           ; $782e: $00
    add b                                         ; $782f: $80
    add d                                         ; $7830: $82
    db $10                                        ; $7831: $10
    ld a, [hl]                                    ; $7832: $7e
    ld a, [hl]                                    ; $7833: $7e
    ld a, [hl]                                    ; $7834: $7e
    ld a, [hl]                                    ; $7835: $7e
    ld a, [hl]                                    ; $7836: $7e
    ld a, [hl]                                    ; $7837: $7e
    ld a, [hl]                                    ; $7838: $7e
    ld a, [hl]                                    ; $7839: $7e
    ld a, h                                       ; $783a: $7c
    ld a, b                                       ; $783b: $78
    ld [hl], b                                    ; $783c: $70
    ld h, d                                       ; $783d: $62
    ld b, [hl]                                    ; $783e: $46
    ld c, $1e                                     ; $783f: $0e $1e
    ld a, $05                                     ; $7841: $3e $05
    nop                                           ; $7843: $00
    inc b                                         ; $7844: $04
    ld a, $82                                     ; $7845: $3e $82
    nop                                           ; $7847: $00
    nop                                           ; $7848: $00
    inc b                                         ; $7849: $04
    ld a, a                                       ; $784a: $7f
    add d                                         ; $784b: $82
    inc c                                         ; $784c: $0c
    inc c                                         ; $784d: $0c
    inc b                                         ; $784e: $04
    nop                                           ; $784f: $00
    inc b                                         ; $7850: $04
    ld l, h                                       ; $7851: $6c
    ld b, $36                                     ; $7852: $06 $36
    stop                                          ; $7854: $10 $00
    add d                                         ; $7856: $82
    ld a, a                                       ; $7857: $7f
    ld a, a                                       ; $7858: $7f
    inc b                                         ; $7859: $04
    nop                                           ; $785a: $00
    inc b                                         ; $785b: $04
    ccf                                           ; $785c: $3f
    inc b                                         ; $785d: $04
    inc sp                                        ; $785e: $33
    add b                                         ; $785f: $80
    add e                                         ; $7860: $83
    inc b                                         ; $7861: $04
    ld a, e                                       ; $7862: $7b
    ld a, a                                       ; $7863: $7f
    inc c                                         ; $7864: $0c
    inc c                                         ; $7865: $0c
    adc b                                         ; $7866: $88
    inc e                                         ; $7867: $1c
    inc c                                         ; $7868: $0c
    jr jr_004_7883                                ; $7869: $18 $18

    jr c, jr_004_78a5                             ; $786b: $38 $38

    jr nc, jr_004_789f                            ; $786d: $30 $30

    inc b                                         ; $786f: $04
    nop                                           ; $7870: $00
    add d                                         ; $7871: $82
    ld a, a                                       ; $7872: $7f
    ld a, a                                       ; $7873: $7f
    ld c, $00                                     ; $7874: $0e $00
    add e                                         ; $7876: $83
    rrca                                          ; $7877: $0f
    rrca                                          ; $7878: $0f
    rlca                                          ; $7879: $07
    inc bc                                        ; $787a: $03
    ld b, $86                                     ; $787b: $06 $86
    ld c, $0c                                     ; $787d: $0e $0c
    inc a                                         ; $787f: $3c
    inc a                                         ; $7880: $3c
    jr c, jr_004_78b3                             ; $7881: $38 $30

jr_004_7883:
    ld [$8000], sp                                ; $7883: $08 $00 $80
    add e                                         ; $7886: $83
    inc c                                         ; $7887: $0c
    ld a, $7f                                     ; $7888: $3e $7f
    ld h, e                                       ; $788a: $63
    ld h, e                                       ; $788b: $63
    ld h, e                                       ; $788c: $63
    ld h, e                                       ; $788d: $63
    ld h, e                                       ; $788e: $63
    ld h, e                                       ; $788f: $63
    ld h, e                                       ; $7890: $63
    ld h, e                                       ; $7891: $63
    ld a, a                                       ; $7892: $7f
    ld a, $08                                     ; $7893: $3e $08
    nop                                           ; $7895: $00
    add b                                         ; $7896: $80
    add e                                         ; $7897: $83
    inc c                                         ; $7898: $0c
    ld h, e                                       ; $7899: $63
    ld h, a                                       ; $789a: $67
    ld l, [hl]                                    ; $789b: $6e
    ld a, h                                       ; $789c: $7c
    ld a, b                                       ; $789d: $78
    ld [hl], b                                    ; $789e: $70

jr_004_789f:
    ld [hl], b                                    ; $789f: $70
    ld a, b                                       ; $78a0: $78
    ld a, h                                       ; $78a1: $7c
    ld l, [hl]                                    ; $78a2: $6e
    ld h, a                                       ; $78a3: $67
    ld h, e                                       ; $78a4: $63

jr_004_78a5:
    ld [$0400], sp                                ; $78a5: $08 $00 $04
    ld h, e                                       ; $78a8: $63
    inc b                                         ; $78a9: $04
    ld [hl], e                                    ; $78aa: $73
    inc b                                         ; $78ab: $04
    ld a, e                                       ; $78ac: $7b
    inc b                                         ; $78ad: $04
    ld l, a                                       ; $78ae: $6f
    inc b                                         ; $78af: $04
    ld h, a                                       ; $78b0: $67
    inc b                                         ; $78b1: $04
    ld h, e                                       ; $78b2: $63

jr_004_78b3:
    inc b                                         ; $78b3: $04
    nop                                           ; $78b4: $00
    nop                                           ; $78b5: $00
    nop                                           ; $78b6: $00
    sbc b                                         ; $78b7: $98
    sub h                                         ; $78b8: $94
    ld bc, $0605                                  ; $78b9: $01 $05 $06
    dec b                                         ; $78bc: $05
    dec b                                         ; $78bd: $05
    ld b, $05                                     ; $78be: $06 $05
    dec b                                         ; $78c0: $05
    ld b, $05                                     ; $78c1: $06 $05
    dec b                                         ; $78c3: $05
    ld b, $05                                     ; $78c4: $06 $05
    dec b                                         ; $78c6: $05
    ld b, $05                                     ; $78c7: $06 $05
    dec b                                         ; $78c9: $05
    ld b, $05                                     ; $78ca: $06 $05
    ld [bc], a                                    ; $78cc: $02
    inc c                                         ; $78cd: $0c
    nop                                           ; $78ce: $00
    add c                                         ; $78cf: $81
    rlca                                          ; $78d0: $07
    ld [de], a                                    ; $78d1: $12
    nop                                           ; $78d2: $00
    add c                                         ; $78d3: $81
    rlca                                          ; $78d4: $07
    inc c                                         ; $78d5: $0c
    nop                                           ; $78d6: $00
    add c                                         ; $78d7: $81
    ld [$0012], sp                                ; $78d8: $08 $12 $00
    add c                                         ; $78db: $81
    ld [$000c], sp                                ; $78dc: $08 $0c $00
    add c                                         ; $78df: $81
    rlca                                          ; $78e0: $07
    ld [de], a                                    ; $78e1: $12
    nop                                           ; $78e2: $00
    add c                                         ; $78e3: $81
    rlca                                          ; $78e4: $07
    inc c                                         ; $78e5: $0c
    nop                                           ; $78e6: $00
    add c                                         ; $78e7: $81
    rlca                                          ; $78e8: $07
    ld [de], a                                    ; $78e9: $12
    nop                                           ; $78ea: $00
    add c                                         ; $78eb: $81
    rlca                                          ; $78ec: $07
    inc c                                         ; $78ed: $0c
    nop                                           ; $78ee: $00
    add c                                         ; $78ef: $81
    ld [$0012], sp                                ; $78f0: $08 $12 $00
    add c                                         ; $78f3: $81
    ld [$000c], sp                                ; $78f4: $08 $0c $00
    add c                                         ; $78f7: $81
    rlca                                          ; $78f8: $07
    ld [de], a                                    ; $78f9: $12
    nop                                           ; $78fa: $00
    add c                                         ; $78fb: $81

Call_004_78fc:
    rlca                                          ; $78fc: $07
    inc c                                         ; $78fd: $0c
    nop                                           ; $78fe: $00
    add c                                         ; $78ff: $81
    rlca                                          ; $7900: $07
    ld [de], a                                    ; $7901: $12
    nop                                           ; $7902: $00
    add c                                         ; $7903: $81
    rlca                                          ; $7904: $07
    inc c                                         ; $7905: $0c
    nop                                           ; $7906: $00
    add c                                         ; $7907: $81
    ld [$0012], sp                                ; $7908: $08 $12 $00
    add c                                         ; $790b: $81
    ld [$000c], sp                                ; $790c: $08 $0c $00
    add c                                         ; $790f: $81
    rlca                                          ; $7910: $07
    ld [de], a                                    ; $7911: $12
    nop                                           ; $7912: $00
    add c                                         ; $7913: $81
    rlca                                          ; $7914: $07
    inc c                                         ; $7915: $0c
    nop                                           ; $7916: $00
    add c                                         ; $7917: $81
    rlca                                          ; $7918: $07
    dec b                                         ; $7919: $05
    nop                                           ; $791a: $00
    add b                                         ; $791b: $80
    inc b                                         ; $791c: $04
    add hl, bc                                    ; $791d: $09
    add hl, bc                                    ; $791e: $09
    nop                                           ; $791f: $00
    add c                                         ; $7920: $81
    rlca                                          ; $7921: $07
    inc c                                         ; $7922: $0c
    nop                                           ; $7923: $00
    add c                                         ; $7924: $81
    ld [$0005], sp                                ; $7925: $08 $05 $00
    add h                                         ; $7928: $84
    dec c                                         ; $7929: $0d
    nop                                           ; $792a: $00
    ld c, $0f                                     ; $792b: $0e $0f
    add hl, bc                                    ; $792d: $09
    nop                                           ; $792e: $00
    add c                                         ; $792f: $81
    ld [$000c], sp                                ; $7930: $08 $0c $00
    add c                                         ; $7933: $81
    rlca                                          ; $7934: $07
    ld [de], a                                    ; $7935: $12
    nop                                           ; $7936: $00
    add c                                         ; $7937: $81
    rlca                                          ; $7938: $07
    inc c                                         ; $7939: $0c
    nop                                           ; $793a: $00
    add c                                         ; $793b: $81
    rlca                                          ; $793c: $07
    ld [de], a                                    ; $793d: $12
    nop                                           ; $793e: $00
    add c                                         ; $793f: $81
    rlca                                          ; $7940: $07
    inc c                                         ; $7941: $0c
    nop                                           ; $7942: $00
    add c                                         ; $7943: $81
    ld [$0005], sp                                ; $7944: $08 $05 $00
    add d                                         ; $7947: $82
    db $10                                        ; $7948: $10
    ld [de], a                                    ; $7949: $12
    inc b                                         ; $794a: $04
    nop                                           ; $794b: $00
    add d                                         ; $794c: $82
    inc d                                         ; $794d: $14
    db $10                                        ; $794e: $10
    dec b                                         ; $794f: $05
    nop                                           ; $7950: $00
    add c                                         ; $7951: $81
    ld [$000c], sp                                ; $7952: $08 $0c $00
    add c                                         ; $7955: $81
    rlca                                          ; $7956: $07
    dec b                                         ; $7957: $05
    nop                                           ; $7958: $00
    add d                                         ; $7959: $82
    ld de, $0413                                  ; $795a: $11 $13 $04
    nop                                           ; $795d: $00
    add d                                         ; $795e: $82
    dec d                                         ; $795f: $15
    ld de, $0005                                  ; $7960: $11 $05 $00
    add c                                         ; $7963: $81
    rlca                                          ; $7964: $07
    inc c                                         ; $7965: $0c
    nop                                           ; $7966: $00
    add c                                         ; $7967: $81
    rlca                                          ; $7968: $07
    ld [de], a                                    ; $7969: $12
    nop                                           ; $796a: $00
    add c                                         ; $796b: $81
    rlca                                          ; $796c: $07
    inc c                                         ; $796d: $0c
    nop                                           ; $796e: $00
    sub h                                         ; $796f: $94
    inc bc                                        ; $7970: $03
    dec b                                         ; $7971: $05
    ld b, $05                                     ; $7972: $06 $05
    dec b                                         ; $7974: $05
    ld b, $05                                     ; $7975: $06 $05
    dec b                                         ; $7977: $05
    ld b, $05                                     ; $7978: $06 $05
    dec b                                         ; $797a: $05
    ld b, $05                                     ; $797b: $06 $05
    dec b                                         ; $797d: $05
    ld b, $05                                     ; $797e: $06 $05
    dec b                                         ; $7980: $05
    ld b, $05                                     ; $7981: $06 $05
    inc b                                         ; $7983: $04
    inc c                                         ; $7984: $0c
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    ld d, $00                                     ; $7987: $16 $00
    adc e                                         ; $7989: $8b
    inc e                                         ; $798a: $1c
    nop                                           ; $798b: $00
    ld a, $1c                                     ; $798c: $3e $1c
    ld a, a                                       ; $798e: $7f
    ld a, $ff                                     ; $798f: $3e $ff
    ld a, a                                       ; $7991: $7f
    rst RST_38                                    ; $7992: $ff
    ld a, a                                       ; $7993: $7f
    rrca                                          ; $7994: $0f
    add b                                         ; $7995: $80
    inc bc                                        ; $7996: $03
    rlca                                          ; $7997: $07
    sbc h                                         ; $7998: $9c
    rla                                           ; $7999: $17
    ld de, $1117                                  ; $799a: $11 $17 $11
    cpl                                           ; $799d: $2f
    jr nz, jr_004_79cb                            ; $799e: $20 $2b

    inc h                                         ; $79a0: $24
    sbc $41                                       ; $79a1: $de $41
    db $d3                                        ; $79a3: $d3
    ld c, h                                       ; $79a4: $4c
    ldh [$ffc0], a                                ; $79a5: $e0 $c0
    ld h, b                                       ; $79a7: $60
    ldh [$ff3c], a                                ; $79a8: $e0 $3c
    ldh a, [$ff3e]                                ; $79aa: $f0 $3e
    db $fc                                        ; $79ac: $fc
    sbc a                                         ; $79ad: $9f
    cp $9f                                        ; $79ae: $fe $9f
    rst RST_38                                    ; $79b0: $ff
    rst RST_08                                    ; $79b1: $cf
    ld a, a                                       ; $79b2: $7f
    rst RST_08                                    ; $79b3: $cf
    ld a, a                                       ; $79b4: $7f
    inc b                                         ; $79b5: $04
    nop                                           ; $79b6: $00
    cp h                                          ; $79b7: $bc
    rrca                                          ; $79b8: $0f
    ld bc, $0f1f                                  ; $79b9: $01 $1f $0f
    ld e, $0e                                     ; $79bc: $1e $0e
    cp [hl]                                       ; $79be: $be
    ld e, $bd                                     ; $79bf: $1e $bd
    inc e                                         ; $79c1: $1c
    db $fc                                        ; $79c2: $fc
    dec a                                         ; $79c3: $3d
    ld hl, sp+$70                                 ; $79c4: $f8 $70
    cp c                                          ; $79c6: $b9
    adc b                                         ; $79c7: $88
    ld l, l                                       ; $79c8: $6d
    inc d                                         ; $79c9: $14
    cpl                                           ; $79ca: $2f

jr_004_79cb:
    ld d, l                                       ; $79cb: $55
    rst RST_28                                    ; $79cc: $ef
    dec de                                        ; $79cd: $1b
    and a                                         ; $79ce: $a7
    ld e, e                                       ; $79cf: $5b
    sbc e                                         ; $79d0: $9b
    ld l, l                                       ; $79d1: $6d
    rst RST_38                                    ; $79d2: $ff
    ld l, l                                       ; $79d3: $6d
    ret nz                                        ; $79d4: $c0

    nop                                           ; $79d5: $00
    ldh [$ffc0], a                                ; $79d6: $e0 $c0
    ldh [$ffc0], a                                ; $79d8: $e0 $c0
    ldh a, [$ffe0]                                ; $79da: $f0 $e0

jr_004_79dc:
    ldh a, [$ffe0]                                ; $79dc: $f0 $e0
    ld hl, sp-$10                                 ; $79de: $f8 $f0
    ld sp, hl                                     ; $79e0: $f9
    ldh a, [$fff3]                                ; $79e1: $f0 $f3
    pop hl                                        ; $79e3: $e1
    rlca                                          ; $79e4: $07
    inc bc                                        ; $79e5: $03
    rrca                                          ; $79e6: $0f
    rlca                                          ; $79e7: $07
    rra                                           ; $79e8: $1f
    rrca                                          ; $79e9: $0f
    rra                                           ; $79ea: $1f
    ld c, $3f                                     ; $79eb: $0e $3f
    ccf                                           ; $79ed: $3f
    ld a, h                                       ; $79ee: $7c
    ccf                                           ; $79ef: $3f
    ldh a, [rIE]                                  ; $79f0: $f0 $ff
    db $fc                                        ; $79f2: $fc
    cp $03                                        ; $79f3: $fe $03
    rst RST_38                                    ; $79f5: $ff
    adc l                                         ; $79f6: $8d
    ld hl, sp-$0f                                 ; $79f7: $f8 $f1
    jr z, jr_004_79dc                             ; $79f9: $28 $e1

    ldh a, [$ffc3]                                ; $79fb: $f0 $c3
    ldh a, [rTAC]                                 ; $79fd: $f0 $07
    pop hl                                        ; $79ff: $e1
    rrca                                          ; $7a00: $0f
    add e                                         ; $7a01: $83
    ccf                                           ; $7a02: $3f
    inc c                                         ; $7a03: $0c
    inc bc                                        ; $7a04: $03
    rst RST_38                                    ; $7a05: $ff
    adc h                                         ; $7a06: $8c
    ld h, a                                       ; $7a07: $67
    rst RST_38                                    ; $7a08: $ff
    daa                                           ; $7a09: $27
    cp $ef                                        ; $7a0a: $fe $ef
    ld sp, hl                                     ; $7a0c: $f9
    rst RST_18                                    ; $7a0d: $df
    ldh [c], a                                    ; $7a0e: $e2
    cp a                                          ; $7a0f: $bf
    ret nz                                        ; $7a10: $c0

    rst RST_38                                    ; $7a11: $ff
    cp b                                          ; $7a12: $b8
    inc bc                                        ; $7a13: $03
    rst RST_38                                    ; $7a14: $ff
    sbc [hl]                                      ; $7a15: $9e
    cp $fc                                        ; $7a16: $fe $fc
    db $ec                                        ; $7a18: $ec
    db $fc                                        ; $7a19: $fc
    db $dd                                        ; $7a1a: $dd
    ld sp, hl                                     ; $7a1b: $f9
    cp c                                          ; $7a1c: $b9
    reti                                          ; $7a1d: $d9


    ld sp, $e3d0                                  ; $7a1e: $31 $d0 $e3
    ld hl, $43e7                                  ; $7a21: $21 $e7 $43
    rst RST_38                                    ; $7a24: $ff
    rst RST_38                                    ; $7a25: $ff
    ld a, a                                       ; $7a26: $7f
    ld a, [hl]                                    ; $7a27: $7e
    rst RST_38                                    ; $7a28: $ff
    ld hl, sp-$01                                 ; $7a29: $f8 $ff
    ld a, e                                       ; $7a2b: $7b
    rst RST_38                                    ; $7a2c: $ff
    rst RST_30                                    ; $7a2d: $f7
    cp $ff                                        ; $7a2e: $fe $ff
    db $fd                                        ; $7a30: $fd
    cp $e1                                        ; $7a31: $fe $e1
    cp $03                                        ; $7a33: $fe $03
    rst RST_38                                    ; $7a35: $ff
    add c                                         ; $7a36: $81
    ld a, a                                       ; $7a37: $7f
    inc bc                                        ; $7a38: $03
    rst RST_38                                    ; $7a39: $ff
    adc c                                         ; $7a3a: $89
    db $fd                                        ; $7a3b: $fd
    ld a, a                                       ; $7a3c: $7f
    db $e3                                        ; $7a3d: $e3
    ld e, [hl]                                    ; $7a3e: $5e
    jp Jump_000_0392                              ; $7a3f: $c3 $92 $03


jr_004_7a42:
    ld [hl+], a                                   ; $7a42: $22
    inc bc                                        ; $7a43: $03
    inc bc                                        ; $7a44: $03
    rst RST_38                                    ; $7a45: $ff
    sbc l                                         ; $7a46: $9d
    ld a, [$f1ef]                                 ; $7a47: $fa $ef $f1
    sbc [hl]                                      ; $7a4a: $9e
    db $e3                                        ; $7a4b: $e3
    ld a, [hl]                                    ; $7a4c: $7e
    rst RST_00                                    ; $7a4d: $c7
    ld a, h                                       ; $7a4e: $7c
    adc a                                         ; $7a4f: $8f
    db $fc                                        ; $7a50: $fc
    sbc a                                         ; $7a51: $9f
    db $fc                                        ; $7a52: $fc
    ccf                                           ; $7a53: $3f
    rst RST_38                                    ; $7a54: $ff
    rst RST_38                                    ; $7a55: $ff
    db $ec                                        ; $7a56: $ec
    ldh a, [$ff90]                                ; $7a57: $f0 $90
    ldh [$ff61], a                                ; $7a59: $e0 $61
    add b                                         ; $7a5b: $80
    ld b, e                                       ; $7a5c: $43
    add b                                         ; $7a5d: $80
    jp $d680                                      ; $7a5e: $c3 $80 $d6


    sub c                                         ; $7a61: $91
    and h                                         ; $7a62: $a4
    inc hl                                        ; $7a63: $23
    ld c, $00                                     ; $7a64: $0e $00
    add d                                         ; $7a66: $82
    ccf                                           ; $7a67: $3f
    ccf                                           ; $7a68: $3f
    ld [$8800], sp                                ; $7a69: $08 $00 $88
    add b                                         ; $7a6c: $80
    nop                                           ; $7a6d: $00
    ldh [$ffe0], a                                ; $7a6e: $e0 $e0
    ld a, b                                       ; $7a70: $78
    sbc b                                         ; $7a71: $98
    ccf                                           ; $7a72: $3f
    rst RST_00                                    ; $7a73: $c7
    inc c                                         ; $7a74: $0c
    nop                                           ; $7a75: $00
    add h                                         ; $7a76: $84
    rra                                           ; $7a77: $1f
    rra                                           ; $7a78: $1f
    ldh [$ffe0], a                                ; $7a79: $e0 $e0
    inc c                                         ; $7a7b: $0c
    nop                                           ; $7a7c: $00
    add e                                         ; $7a7d: $83
    rst RST_38                                    ; $7a7e: $ff
    rst RST_38                                    ; $7a7f: $ff
    rlca                                          ; $7a80: $07
    rlca                                          ; $7a81: $07
    nop                                           ; $7a82: $00
    adc d                                         ; $7a83: $8a
    inc bc                                        ; $7a84: $03
    inc bc                                        ; $7a85: $03
    inc a                                         ; $7a86: $3c
    inc a                                         ; $7a87: $3c
    jp Jump_000_3fc0                              ; $7a88: $c3 $c0 $3f


    nop                                           ; $7a8b: $00
    db $fc                                        ; $7a8c: $fc
    db $e3                                        ; $7a8d: $e3
    ld b, $00                                     ; $7a8e: $06 $00
    cp c                                          ; $7a90: $b9
    ret nz                                        ; $7a91: $c0

    ret nz                                        ; $7a92: $c0

    ld hl, sp+$38                                 ; $7a93: $f8 $38
    ccf                                           ; $7a95: $3f
    rst RST_08                                    ; $7a96: $cf
    cp a                                          ; $7a97: $bf
    ld [hl], c                                    ; $7a98: $71
    rst RST_18                                    ; $7a99: $df
    rst RST_28                                    ; $7a9a: $ef
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    inc bc                                        ; $7a9d: $03
    inc bc                                        ; $7a9e: $03
    ld c, $0e                                     ; $7a9f: $0e $0e
    rra                                           ; $7aa1: $1f
    jr jr_004_7ae3                                ; $7aa2: $18 $3f

    ld sp, $e3ef                                  ; $7aa4: $31 $ef $e3
    rst RST_18                                    ; $7aa7: $df
    rst RST_00                                    ; $7aa8: $c7
    ccf                                           ; $7aa9: $3f
    inc c                                         ; $7aaa: $0c
    ld a, a                                       ; $7aab: $7f
    ld a, $ff                                     ; $7aac: $3e $ff
    rst RST_38                                    ; $7aae: $ff
    ld bc, $f001                                  ; $7aaf: $01 $01 $f0
    jr nc, jr_004_7a42                            ; $7ab2: $30 $8e

    cp $83                                        ; $7ab4: $fe $83
    rst RST_38                                    ; $7ab6: $ff
    ret c                                         ; $7ab7: $d8

    rst RST_30                                    ; $7ab8: $f7
    cp $01                                        ; $7ab9: $fe $01
    ccf                                           ; $7abb: $3f
    ccf                                           ; $7abc: $3f
    inc d                                         ; $7abd: $14
    inc de                                        ; $7abe: $13
    rst RST_30                                    ; $7abf: $f7
    ldh a, [$ff1f]                                ; $7ac0: $f0 $1f
    ld e, $03                                     ; $7ac2: $1e $03
    inc bc                                        ; $7ac4: $03
    add b                                         ; $7ac5: $80
    add b                                         ; $7ac6: $80
    ld hl, sp-$08                                 ; $7ac7: $f8 $f8
    ccf                                           ; $7ac9: $3f
    inc b                                         ; $7aca: $04
    rst RST_38                                    ; $7acb: $ff
    sbc l                                         ; $7acc: $9d
    db $fc                                        ; $7acd: $fc
    ld a, $fc                                     ; $7ace: $3e $fc
    cp [hl]                                       ; $7ad0: $be
    ld a, h                                       ; $7ad1: $7c
    cp $fc                                        ; $7ad2: $fe $fc
    rrca                                          ; $7ad4: $0f
    rrca                                          ; $7ad5: $0f
    nop                                           ; $7ad6: $00
    nop                                           ; $7ad7: $00
    ldh a, [$ffc0]                                ; $7ad8: $f0 $c0
    rst RST_38                                    ; $7ada: $ff
    ld a, a                                       ; $7adb: $7f
    rst RST_38                                    ; $7adc: $ff
    rra                                           ; $7add: $1f
    ccf                                           ; $7ade: $3f
    rra                                           ; $7adf: $1f
    ccf                                           ; $7ae0: $3f
    rra                                           ; $7ae1: $1f
    ccf                                           ; $7ae2: $3f

jr_004_7ae3:
    rra                                           ; $7ae3: $1f
    rst RST_38                                    ; $7ae4: $ff
    rst RST_38                                    ; $7ae5: $ff
    nop                                           ; $7ae6: $00
    nop                                           ; $7ae7: $00
    rrca                                          ; $7ae8: $0f
    rrca                                          ; $7ae9: $0f
    inc bc                                        ; $7aea: $03
    rst RST_38                                    ; $7aeb: $ff
    add a                                         ; $7aec: $87
    ld a, a                                       ; $7aed: $7f
    ld a, a                                       ; $7aee: $7f
    rra                                           ; $7aef: $1f
    rra                                           ; $7af0: $1f
    ld b, $1f                                     ; $7af1: $06 $1f
    rrca                                          ; $7af3: $0f
    inc bc                                        ; $7af4: $03
    rst RST_38                                    ; $7af5: $ff
    add h                                         ; $7af6: $84
    ld hl, sp+$07                                 ; $7af7: $f8 $07
    nop                                           ; $7af9: $00
    rst RST_30                                    ; $7afa: $f7
    add b                                         ; $7afb: $80
    add l                                         ; $7afc: $85
    dec b                                         ; $7afd: $05
    rst RST_20                                    ; $7afe: $e7
    db $fc                                        ; $7aff: $fc
    or c                                          ; $7b00: $b1
    cp $f0                                        ; $7b01: $fe $f0
    sub h                                         ; $7b03: $94
    nop                                           ; $7b04: $00
    ldh [rP1], a                                  ; $7b05: $e0 $00
    ret nz                                        ; $7b07: $c0

    nop                                           ; $7b08: $00
    ld hl, sp-$74                                 ; $7b09: $f8 $8c
    pop af                                        ; $7b0b: $f1
    ldh [$ffc7], a                                ; $7b0c: $e0 $c7
    add b                                         ; $7b0e: $80
    rra                                           ; $7b0f: $1f
    ld bc, $0fff                                  ; $7b10: $01 $ff $0f
    rra                                           ; $7b13: $1f
    inc e                                         ; $7b14: $1c
    ld a, $30                                     ; $7b15: $3e $30
    ld hl, sp-$80                                 ; $7b17: $f8 $80
    add l                                         ; $7b19: $85
    dec b                                         ; $7b1a: $05
    ldh [$ff03], a                                ; $7b1b: $e0 $03
    rrca                                          ; $7b1d: $0f
    ld a, $18                                     ; $7b1e: $3e $18
    db $ec                                        ; $7b20: $ec
    pop hl                                        ; $7b21: $e1
    sbc a                                         ; $7b22: $9f
    rlca                                          ; $7b23: $07
    rra                                           ; $7b24: $1f
    rlca                                          ; $7b25: $07
    ccf                                           ; $7b26: $3f
    ccf                                           ; $7b27: $3f
    db $e3                                        ; $7b28: $e3
    db $fc                                        ; $7b29: $fc
    rst RST_08                                    ; $7b2a: $cf
    di                                            ; $7b2b: $f3
    rra                                           ; $7b2c: $1f
    db $e3                                        ; $7b2d: $e3
    db $fc                                        ; $7b2e: $fc
    inc c                                         ; $7b2f: $0c
    ld hl, sp-$08                                 ; $7b30: $f8 $f8
    di                                            ; $7b32: $f3
    ldh [$ffe7], a                                ; $7b33: $e0 $e7
    ret nz                                        ; $7b35: $c0

    rst RST_38                                    ; $7b36: $ff
    add e                                         ; $7b37: $83
    rst RST_08                                    ; $7b38: $cf
    pop bc                                        ; $7b39: $c1
    sbc a                                         ; $7b3a: $9f
    rlca                                          ; $7b3b: $07
    ccf                                           ; $7b3c: $3f
    rrca                                          ; $7b3d: $0f
    ld a, [hl]                                    ; $7b3e: $7e
    rra                                           ; $7b3f: $1f
    ld hl, sp+$78                                 ; $7b40: $f8 $78
    rst RST_20                                    ; $7b42: $e7
    ld [hl], a                                    ; $7b43: $77
    rst RST_20                                    ; $7b44: $e7
    cp $8e                                        ; $7b45: $fe $8e
    db $fc                                        ; $7b47: $fc
    jp nz, $c0fe                                  ; $7b48: $c2 $fe $c0

    db $fc                                        ; $7b4b: $fc
    sbc h                                         ; $7b4c: $9c
    ldh a, [rNR23]                                ; $7b4d: $f0 $18
    ldh [$fff0], a                                ; $7b4f: $e0 $f0
    ret nz                                        ; $7b51: $c0

    ldh [$ffe0], a                                ; $7b52: $e0 $e0
    add b                                         ; $7b54: $80
    nop                                           ; $7b55: $00
    rrca                                          ; $7b56: $0f
    ld bc, $0647                                  ; $7b57: $01 $47 $06
    rlca                                          ; $7b5a: $07
    nop                                           ; $7b5b: $00
    rrca                                          ; $7b5c: $0f
    inc bc                                        ; $7b5d: $03
    rra                                           ; $7b5e: $1f
    rlca                                          ; $7b5f: $07
    ld e, $0e                                     ; $7b60: $1e $0e
    ld a, b                                       ; $7b62: $78
    ld [$39f9], sp                                ; $7b63: $08 $f9 $39
    pop hl                                        ; $7b66: $e1
    pop hl                                        ; $7b67: $e1
    ld sp, hl                                     ; $7b68: $f9
    rst RST_38                                    ; $7b69: $ff
    pop af                                        ; $7b6a: $f1
    rst RST_38                                    ; $7b6b: $ff
    db $e3                                        ; $7b6c: $e3
    cp $c0                                        ; $7b6d: $fe $c0
    db $fc                                        ; $7b6f: $fc
    sub b                                         ; $7b70: $90
    ldh a, [$ffa3]                                ; $7b71: $f0 $a3
    pop bc                                        ; $7b73: $c1
    adc a                                         ; $7b74: $8f
    pop bc                                        ; $7b75: $c1
    ld d, a                                       ; $7b76: $57
    add e                                         ; $7b77: $83
    inc c                                         ; $7b78: $0c
    rlca                                          ; $7b79: $07
    add hl, de                                    ; $7b7a: $19
    ld e, $39                                     ; $7b7b: $1e $39
    ld l, $73                                     ; $7b7d: $2e $73
    inc e                                         ; $7b7f: $1c
    rst RST_30                                    ; $7b80: $f7
    ld a, b                                       ; $7b81: $78
    rst RST_28                                    ; $7b82: $ef
    ld [hl], b                                    ; $7b83: $70
    call c, Call_000_38e0                         ; $7b84: $dc $e0 $38
    ret nz                                        ; $7b87: $c0

    add [hl]                                      ; $7b88: $86
    ld a, b                                       ; $7b89: $78
    inc bc                                        ; $7b8a: $03
    inc c                                         ; $7b8b: $0c
    ret nz                                        ; $7b8c: $c0

    dec bc                                        ; $7b8d: $0b
    nop                                           ; $7b8e: $00
    add l                                         ; $7b8f: $85
    rrca                                          ; $7b90: $0f
    nop                                           ; $7b91: $00
    add b                                         ; $7b92: $80
    nop                                           ; $7b93: $00
    db $fc                                        ; $7b94: $fc
    dec bc                                        ; $7b95: $0b
    nop                                           ; $7b96: $00
    add e                                         ; $7b97: $83
    db $fc                                        ; $7b98: $fc
    inc bc                                        ; $7b99: $03
    ld a, a                                       ; $7b9a: $7f
    dec c                                         ; $7b9b: $0d
    nop                                           ; $7b9c: $00
    add l                                         ; $7b9d: $85
    rra                                           ; $7b9e: $1f
    rst RST_38                                    ; $7b9f: $ff
    jp $7c3c                                      ; $7ba0: $c3 $3c $7c


jr_004_7ba3:
    dec bc                                        ; $7ba3: $0b
    nop                                           ; $7ba4: $00
    add a                                         ; $7ba5: $87
    ld hl, sp-$08                                 ; $7ba6: $f8 $f8
    pop hl                                        ; $7ba8: $e1
    nop                                           ; $7ba9: $00
    rrca                                          ; $7baa: $0f
    nop                                           ; $7bab: $00
    db $fc                                        ; $7bac: $fc
    add hl, bc                                    ; $7bad: $09
    nop                                           ; $7bae: $00
    add l                                         ; $7baf: $85
    rst RST_38                                    ; $7bb0: $ff
    jr nc, jr_004_7ba3                            ; $7bb1: $30 $f0

    nop                                           ; $7bb3: $00
    add b                                         ; $7bb4: $80
    dec bc                                        ; $7bb5: $0b
    nop                                           ; $7bb6: $00
    add c                                         ; $7bb7: $81
    inc bc                                        ; $7bb8: $03
    dec b                                         ; $7bb9: $05
    nop                                           ; $7bba: $00
    add [hl]                                      ; $7bbb: $86
    stop                                          ; $7bbc: $10 $00
    ld d, d                                       ; $7bbe: $52
    nop                                           ; $7bbf: $00
    nop                                           ; $7bc0: $00
    ld d, d                                       ; $7bc1: $52
    inc b                                         ; $7bc2: $04
    nop                                           ; $7bc3: $00
    add e                                         ; $7bc4: $83
    rst RST_38                                    ; $7bc5: $ff
    nop                                           ; $7bc6: $00
    rra                                           ; $7bc7: $1f
    dec c                                         ; $7bc8: $0d
    nop                                           ; $7bc9: $00
    add c                                         ; $7bca: $81
    cp $05                                        ; $7bcb: $fe $05
    nop                                           ; $7bcd: $00
    add [hl]                                      ; $7bce: $86
    stop                                          ; $7bcf: $10 $00
    ld d, d                                       ; $7bd1: $52
    nop                                           ; $7bd2: $00
    nop                                           ; $7bd3: $00
    ld d, d                                       ; $7bd4: $52
    inc b                                         ; $7bd5: $04
    nop                                           ; $7bd6: $00
    add e                                         ; $7bd7: $83
    ld e, $00                                     ; $7bd8: $1e $00
    ldh a, [$ff0d]                                ; $7bda: $f0 $0d
    nop                                           ; $7bdc: $00
    adc e                                         ; $7bdd: $8b
    inc bc                                        ; $7bde: $03
    inc bc                                        ; $7bdf: $03
    nop                                           ; $7be0: $00
    nop                                           ; $7be1: $00
    ld bc, $1f01                                  ; $7be2: $01 $01 $1f
    rrca                                          ; $7be5: $0f
    rst RST_38                                    ; $7be6: $ff
    ld hl, sp+$0f                                 ; $7be7: $f8 $0f
    rlca                                          ; $7be9: $07
    nop                                           ; $7bea: $00
    add a                                         ; $7beb: $87
    inc bc                                        ; $7bec: $03
    inc bc                                        ; $7bed: $03
    rra                                           ; $7bee: $1f
    rra                                           ; $7bef: $1f
    cp a                                          ; $7bf0: $bf
    nop                                           ; $7bf1: $00
    ret nz                                        ; $7bf2: $c0

    rlca                                          ; $7bf3: $07
    nop                                           ; $7bf4: $00
    add a                                         ; $7bf5: $87
    ld a, a                                       ; $7bf6: $7f
    ld a, [hl]                                    ; $7bf7: $7e
    rst RST_38                                    ; $7bf8: $ff
    rst RST_08                                    ; $7bf9: $cf
    rst RST_38                                    ; $7bfa: $ff

Call_004_7bfb:
    add b                                         ; $7bfb: $80
    ldh [$ff09], a                                ; $7bfc: $e0 $09
    nop                                           ; $7bfe: $00
    add h                                         ; $7bff: $84
    cp $0f                                        ; $7c00: $fe $0f
    sub h                                         ; $7c02: $94
    jr jr_004_7c11                                ; $7c03: $18 $0c

    nop                                           ; $7c05: $00
    add l                                         ; $7c06: $85
    inc a                                         ; $7c07: $3c
    ret nc                                        ; $7c08: $d0

    jr nc, jr_004_7c0b                            ; $7c09: $30 $00

jr_004_7c0b:
    ld b, b                                       ; $7c0b: $40
    add hl, bc                                    ; $7c0c: $09
    nop                                           ; $7c0d: $00
    adc c                                         ; $7c0e: $89
    inc bc                                        ; $7c0f: $03
    inc bc                                        ; $7c10: $03

jr_004_7c11:
    rra                                           ; $7c11: $1f
    ld [bc], a                                    ; $7c12: $02
    pop af                                        ; $7c13: $f1
    nop                                           ; $7c14: $00
    ld c, $00                                     ; $7c15: $0e $00
    jr nz, jr_004_7c1e                            ; $7c17: $20 $05

    nop                                           ; $7c19: $00
    and c                                         ; $7c1a: $a1
    inc bc                                        ; $7c1b: $03
    inc bc                                        ; $7c1c: $03
    rst RST_20                                    ; $7c1d: $e7

jr_004_7c1e:
    rst RST_20                                    ; $7c1e: $e7
    jp nz, $8443                                  ; $7c1f: $c2 $43 $84

    ld b, $08                                     ; $7c22: $06 $08
    ld [$0606], sp                                ; $7c24: $08 $06 $06
    rrca                                          ; $7c27: $0f
    rrca                                          ; $7c28: $0f
    rra                                           ; $7c29: $1f

jr_004_7c2a:
    jr jr_004_7c2a                                ; $7c2a: $18 $fe

    ldh a, [$fffc]                                ; $7c2c: $f0 $fc
    ret nz                                        ; $7c2e: $c0

    xor b                                         ; $7c2f: $a8
    rlca                                          ; $7c30: $07
    dec bc                                        ; $7c31: $0b
    inc b                                         ; $7c32: $04
    ld a, $00                                     ; $7c33: $3e $00
    ld a, h                                       ; $7c35: $7c

jr_004_7c36:
    inc c                                         ; $7c36: $0c
    ld [hl], b                                    ; $7c37: $70
    ld d, b                                       ; $7c38: $50
    ldh [rP1], a                                  ; $7c39: $e0 $00
    ld bc, $0003                                  ; $7c3b: $01 $03 $00
    adc e                                         ; $7c3e: $8b
    ld hl, sp+$00                                 ; $7c3f: $f8 $00
    ld hl, sp+$10                                 ; $7c41: $f8 $10
    jr c, @+$32                                   ; $7c43: $38 $30

    jr c, jr_004_7c67                             ; $7c45: $38 $20

    ld [hl], b                                    ; $7c47: $70
    nop                                           ; $7c48: $00
    ld b, b                                       ; $7c49: $40
    add hl, bc                                    ; $7c4a: $09
    nop                                           ; $7c4b: $00
    add h                                         ; $7c4c: $84
    rrca                                          ; $7c4d: $0f
    dec b                                         ; $7c4e: $05
    ld a, a                                       ; $7c4f: $7f
    jr @+$0a                                      ; $7c50: $18 $08

    nop                                           ; $7c52: $00
    adc c                                         ; $7c53: $89
    ccf                                           ; $7c54: $3f
    rra                                           ; $7c55: $1f
    rst RST_38                                    ; $7c56: $ff
    rst RST_10                                    ; $7c57: $d7
    rst RST_38                                    ; $7c58: $ff
    ld l, $8f                                     ; $7c59: $2e $8f
    nop                                           ; $7c5b: $00
    ld b, $07                                     ; $7c5c: $06 $07
    nop                                           ; $7c5e: $00
    adc e                                         ; $7c5f: $8b
    rst RST_38                                    ; $7c60: $ff
    rst RST_38                                    ; $7c61: $ff
    ld hl, sp-$01                                 ; $7c62: $f8 $ff
    rst RST_38                                    ; $7c64: $ff
    ccf                                           ; $7c65: $3f
    rst RST_38                                    ; $7c66: $ff

jr_004_7c67:
    rrca                                          ; $7c67: $0f
    ccf                                           ; $7c68: $3f
    nop                                           ; $7c69: $00
    rlca                                          ; $7c6a: $07
    dec b                                         ; $7c6b: $05
    nop                                           ; $7c6c: $00
    adc e                                         ; $7c6d: $8b
    ld [hl], b                                    ; $7c6e: $70
    add b                                         ; $7c6f: $80
    ld b, b                                       ; $7c70: $40
    add b                                         ; $7c71: $80
    xor $f0                                       ; $7c72: $ee $f0
    jr c, jr_004_7c36                             ; $7c74: $38 $c0

    ldh [rP1], a                                  ; $7c76: $e0 $00
    ret nz                                        ; $7c78: $c0

    dec bc                                        ; $7c79: $0b
    nop                                           ; $7c7a: $00
    add [hl]                                      ; $7c7b: $86
    stop                                          ; $7c7c: $10 $00
    ld d, d                                       ; $7c7e: $52
    nop                                           ; $7c7f: $00
    nop                                           ; $7c80: $00
    ld d, d                                       ; $7c81: $52
    inc b                                         ; $7c82: $04
    nop                                           ; $7c83: $00
    db $10                                        ; $7c84: $10
    rst RST_38                                    ; $7c85: $ff
    add b                                         ; $7c86: $80
    add l                                         ; $7c87: $85
    ld [$aa55], sp                                ; $7c88: $08 $55 $aa
    ld d, l                                       ; $7c8b: $55
    xor d                                         ; $7c8c: $aa
    ld d, l                                       ; $7c8d: $55
    xor d                                         ; $7c8e: $aa
    ld d, l                                       ; $7c8f: $55
    xor d                                         ; $7c90: $aa
    sub b                                         ; $7c91: $90
    nop                                           ; $7c92: $00
    rst RST_38                                    ; $7c93: $ff
    nop                                           ; $7c94: $00
    rst RST_38                                    ; $7c95: $ff
    nop                                           ; $7c96: $00
    rst RST_38                                    ; $7c97: $ff
    nop                                           ; $7c98: $00
    rst RST_38                                    ; $7c99: $ff
    nop                                           ; $7c9a: $00
    rst RST_38                                    ; $7c9b: $ff
    nop                                           ; $7c9c: $00
    rst RST_38                                    ; $7c9d: $ff
    nop                                           ; $7c9e: $00
    rst RST_38                                    ; $7c9f: $ff
    nop                                           ; $7ca0: $00
    rst RST_38                                    ; $7ca1: $ff
    add b                                         ; $7ca2: $80
    add [hl]                                      ; $7ca3: $86
    ld [$55aa], sp                                ; $7ca4: $08 $aa $55
    xor d                                         ; $7ca7: $aa
    ld d, l                                       ; $7ca8: $55
    xor d                                         ; $7ca9: $aa
    ld d, l                                       ; $7caa: $55
    xor d                                         ; $7cab: $aa
    ld d, l                                       ; $7cac: $55
    adc a                                         ; $7cad: $8f
    rst RST_38                                    ; $7cae: $ff
    nop                                           ; $7caf: $00
    rst RST_38                                    ; $7cb0: $ff
    nop                                           ; $7cb1: $00
    rst RST_38                                    ; $7cb2: $ff
    nop                                           ; $7cb3: $00
    rst RST_38                                    ; $7cb4: $ff
    nop                                           ; $7cb5: $00
    rst RST_38                                    ; $7cb6: $ff
    nop                                           ; $7cb7: $00
    rst RST_38                                    ; $7cb8: $ff
    nop                                           ; $7cb9: $00
    rst RST_38                                    ; $7cba: $ff
    nop                                           ; $7cbb: $00
    rst RST_38                                    ; $7cbc: $ff
    add b                                         ; $7cbd: $80
    add d                                         ; $7cbe: $82
    ld [$55aa], sp                                ; $7cbf: $08 $aa $55
    xor d                                         ; $7cc2: $aa
    ld d, l                                       ; $7cc3: $55
    xor d                                         ; $7cc4: $aa
    ld d, l                                       ; $7cc5: $55
    xor d                                         ; $7cc6: $aa
    ld d, l                                       ; $7cc7: $55
    inc bc                                        ; $7cc8: $03
    nop                                           ; $7cc9: $00
    rst RST_38                                    ; $7cca: $ff
    inc e                                         ; $7ccb: $1c
    inc e                                         ; $7ccc: $1c
    ld [hl+], a                                   ; $7ccd: $22
    ld a, $49                                     ; $7cce: $3e $49
    ld a, a                                       ; $7cd0: $7f
    ld d, l                                       ; $7cd1: $55
    ld [hl], a                                    ; $7cd2: $77
    ld d, l                                       ; $7cd3: $55
    ld [hl], a                                    ; $7cd4: $77
    ld [hl], a                                    ; $7cd5: $77
    ld d, l                                       ; $7cd6: $55
    ld [hl], a                                    ; $7cd7: $77
    ld d, l                                       ; $7cd8: $55
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    ld [hl], a                                    ; $7cdb: $77
    ld [hl], a                                    ; $7cdc: $77
    ld d, l                                       ; $7cdd: $55
    ld [hl], a                                    ; $7cde: $77
    ld d, l                                       ; $7cdf: $55
    ld [hl], a                                    ; $7ce0: $77
    ld d, l                                       ; $7ce1: $55
    ld [hl], a                                    ; $7ce2: $77
    ld d, l                                       ; $7ce3: $55
    ld [hl], a                                    ; $7ce4: $77
    ld a, a                                       ; $7ce5: $7f
    ld c, l                                       ; $7ce6: $4d
    ld a, a                                       ; $7ce7: $7f
    ld c, l                                       ; $7ce8: $4d
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    ld a, h                                       ; $7ceb: $7c
    ld a, h                                       ; $7cec: $7c
    ld b, d                                       ; $7ced: $42
    ld a, [hl]                                    ; $7cee: $7e
    ld e, c                                       ; $7cef: $59
    ld a, a                                       ; $7cf0: $7f
    ld d, l                                       ; $7cf1: $55
    ld [hl], a                                    ; $7cf2: $77
    ld d, l                                       ; $7cf3: $55
    ld [hl], a                                    ; $7cf4: $77
    ld [hl], a                                    ; $7cf5: $77
    ld d, l                                       ; $7cf6: $55
    ld [hl], a                                    ; $7cf7: $77
    ld d, l                                       ; $7cf8: $55
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00
    ld a, a                                       ; $7cfb: $7f
    ld a, a                                       ; $7cfc: $7f
    ld b, c                                       ; $7cfd: $41
    ld a, a                                       ; $7cfe: $7f
    ld [hl], a                                    ; $7cff: $77
    ld a, a                                       ; $7d00: $7f
    inc d                                         ; $7d01: $14
    inc e                                         ; $7d02: $1c
    inc d                                         ; $7d03: $14
    inc e                                         ; $7d04: $1c
    inc e                                         ; $7d05: $1c
    inc d                                         ; $7d06: $14
    inc e                                         ; $7d07: $1c
    inc d                                         ; $7d08: $14
    nop                                           ; $7d09: $00
    nop                                           ; $7d0a: $00
    ld [hl], a                                    ; $7d0b: $77
    ld [hl], a                                    ; $7d0c: $77
    ld d, l                                       ; $7d0d: $55
    ld [hl], a                                    ; $7d0e: $77
    ld d, l                                       ; $7d0f: $55
    ld [hl], a                                    ; $7d10: $77
    ld d, l                                       ; $7d11: $55
    ld [hl], a                                    ; $7d12: $77
    ld d, l                                       ; $7d13: $55
    ld [hl], a                                    ; $7d14: $77
    ld [hl], a                                    ; $7d15: $77
    ld d, l                                       ; $7d16: $55
    ld [hl], a                                    ; $7d17: $77
    ld d, l                                       ; $7d18: $55
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    ld [hl], b                                    ; $7d1b: $70
    ld [hl], b                                    ; $7d1c: $70
    ld d, b                                       ; $7d1d: $50
    ld [hl], b                                    ; $7d1e: $70
    ld d, b                                       ; $7d1f: $50
    ld [hl], b                                    ; $7d20: $70
    ld d, b                                       ; $7d21: $50
    ld [hl], b                                    ; $7d22: $70
    ld d, b                                       ; $7d23: $50
    ld [hl], b                                    ; $7d24: $70
    ld [hl], b                                    ; $7d25: $70
    ld d, b                                       ; $7d26: $50
    ld [hl], b                                    ; $7d27: $70
    ld d, b                                       ; $7d28: $50
    nop                                           ; $7d29: $00
    nop                                           ; $7d2a: $00
    ld a, $3e                                     ; $7d2b: $3e $3e
    ld [hl+], a                                   ; $7d2d: $22
    ld a, $36                                     ; $7d2e: $3e $36
    ld a, $14                                     ; $7d30: $3e $14
    inc e                                         ; $7d32: $1c
    inc d                                         ; $7d33: $14
    inc e                                         ; $7d34: $1c
    inc e                                         ; $7d35: $1c
    inc d                                         ; $7d36: $14
    inc e                                         ; $7d37: $1c
    inc d                                         ; $7d38: $14
    nop                                           ; $7d39: $00
    nop                                           ; $7d3a: $00
    inc e                                         ; $7d3b: $1c
    inc e                                         ; $7d3c: $1c
    inc d                                         ; $7d3d: $14
    inc e                                         ; $7d3e: $1c
    inc d                                         ; $7d3f: $14
    inc e                                         ; $7d40: $1c
    inc d                                         ; $7d41: $14
    inc e                                         ; $7d42: $1c
    inc d                                         ; $7d43: $14
    inc e                                         ; $7d44: $1c
    inc e                                         ; $7d45: $1c
    inc d                                         ; $7d46: $14
    inc e                                         ; $7d47: $1c
    inc d                                         ; $7d48: $14
    ld [hl], a                                    ; $7d49: $77
    add e                                         ; $7d4a: $83
    ld d, l                                       ; $7d4b: $55
    ld [hl], a                                    ; $7d4c: $77
    ld d, a                                       ; $7d4d: $57
    ld [$8750], sp                                ; $7d4e: $08 $50 $87
    ld [hl], a                                    ; $7d51: $77
    ld d, a                                       ; $7d52: $57
    ld [hl], a                                    ; $7d53: $77
    ld d, l                                       ; $7d54: $55
    ld [hl], a                                    ; $7d55: $77
    ld d, l                                       ; $7d56: $55
    ld [hl], a                                    ; $7d57: $77
    add hl, bc                                    ; $7d58: $09
    ld d, l                                       ; $7d59: $55
    adc b                                         ; $7d5a: $88
    ld [hl], a                                    ; $7d5b: $77
    ld d, l                                       ; $7d5c: $55
    ld [hl], a                                    ; $7d5d: $77
    ld d, l                                       ; $7d5e: $55
    ld a, a                                       ; $7d5f: $7f
    ld c, l                                       ; $7d60: $4d
    ld a, a                                       ; $7d61: $7f
    ld c, l                                       ; $7d62: $4d
    add b                                         ; $7d63: $80
    add e                                         ; $7d64: $83
    inc b                                         ; $7d65: $04
    ld b, l                                       ; $7d66: $45
    ld d, l                                       ; $7d67: $55
    ld d, l                                       ; $7d68: $55
    ld d, c                                       ; $7d69: $51
    adc b                                         ; $7d6a: $88
    ld a, a                                       ; $7d6b: $7f
    ld e, c                                       ; $7d6c: $59
    ld a, a                                       ; $7d6d: $7f
    ld e, c                                       ; $7d6e: $59
    ld [hl], a                                    ; $7d6f: $77
    ld d, l                                       ; $7d70: $55
    ld [hl], a                                    ; $7d71: $77
    ld d, a                                       ; $7d72: $57
    inc b                                         ; $7d73: $04
    ld d, b                                       ; $7d74: $50
    adc e                                         ; $7d75: $8b
    ld e, a                                       ; $7d76: $5f
    ld e, a                                       ; $7d77: $5f
    ld e, c                                       ; $7d78: $59
    ld e, c                                       ; $7d79: $59
    ld a, a                                       ; $7d7a: $7f
    ld e, l                                       ; $7d7b: $5d
    ld [hl], a                                    ; $7d7c: $77
    ld d, l                                       ; $7d7d: $55
    ld [hl], a                                    ; $7d7e: $77
    ld d, l                                       ; $7d7f: $55
    ld [hl], a                                    ; $7d80: $77
    inc bc                                        ; $7d81: $03
    ld d, l                                       ; $7d82: $55
    adc l                                         ; $7d83: $8d
    ld e, c                                       ; $7d84: $59
    ld e, c                                       ; $7d85: $59
    ld b, d                                       ; $7d86: $42
    ld b, d                                       ; $7d87: $42
    ld e, d                                       ; $7d88: $5a
    ld e, d                                       ; $7d89: $5a
    ld [hl], a                                    ; $7d8a: $77
    ld d, l                                       ; $7d8b: $55
    ld [hl], a                                    ; $7d8c: $77
    ld d, l                                       ; $7d8d: $55
    ld [hl], a                                    ; $7d8e: $77
    ld d, l                                       ; $7d8f: $55
    ld [hl], a                                    ; $7d90: $77
    inc bc                                        ; $7d91: $03
    ld d, l                                       ; $7d92: $55
    adc l                                         ; $7d93: $8d
    ld e, l                                       ; $7d94: $5d
    ld e, l                                       ; $7d95: $5d
    ld b, c                                       ; $7d96: $41
    ld b, c                                       ; $7d97: $41
    ld e, l                                       ; $7d98: $5d
    ld e, l                                       ; $7d99: $5d
    ld [hl], a                                    ; $7d9a: $77
    ld d, l                                       ; $7d9b: $55
    ld [hl], a                                    ; $7d9c: $77
    ld d, l                                       ; $7d9d: $55
    inc e                                         ; $7d9e: $1c
    inc d                                         ; $7d9f: $14
    inc e                                         ; $7da0: $1c
    add hl, bc                                    ; $7da1: $09
    inc d                                         ; $7da2: $14
    add a                                         ; $7da3: $87
    inc e                                         ; $7da4: $1c
    inc d                                         ; $7da5: $14
    inc e                                         ; $7da6: $1c
    inc d                                         ; $7da7: $14
    ld [hl], b                                    ; $7da8: $70
    ld d, b                                       ; $7da9: $50
    ld [hl], b                                    ; $7daa: $70
    add hl, bc                                    ; $7dab: $09
    ld d, b                                       ; $7dac: $50
    sbc a                                         ; $7dad: $9f
    ld [hl], b                                    ; $7dae: $70
    ld d, b                                       ; $7daf: $50
    ld [hl], b                                    ; $7db0: $70
    ld d, b                                       ; $7db1: $50
    ld [hl], a                                    ; $7db2: $77
    ld d, l                                       ; $7db3: $55
    ld [hl], a                                    ; $7db4: $77
    ld d, l                                       ; $7db5: $55
    ld d, l                                       ; $7db6: $55
    ld [hl], a                                    ; $7db7: $77
    ld d, l                                       ; $7db8: $55
    ld [hl], a                                    ; $7db9: $77
    ld c, c                                       ; $7dba: $49
    ld a, a                                       ; $7dbb: $7f
    ld [hl+], a                                   ; $7dbc: $22
    ld a, $1c                                     ; $7dbd: $3e $1c
    inc e                                         ; $7dbf: $1c
    nop                                           ; $7dc0: $00
    nop                                           ; $7dc1: $00
    ld a, a                                       ; $7dc2: $7f
    ld e, c                                       ; $7dc3: $59
    ld a, a                                       ; $7dc4: $7f
    ld e, c                                       ; $7dc5: $59
    ld d, l                                       ; $7dc6: $55
    ld [hl], a                                    ; $7dc7: $77
    ld d, l                                       ; $7dc8: $55
    ld [hl], a                                    ; $7dc9: $77
    ld d, l                                       ; $7dca: $55
    ld [hl], a                                    ; $7dcb: $77
    ld d, l                                       ; $7dcc: $55
    inc bc                                        ; $7dcd: $03
    ld [hl], a                                    ; $7dce: $77
    sbc l                                         ; $7dcf: $9d
    nop                                           ; $7dd0: $00
    nop                                           ; $7dd1: $00
    ld [hl], a                                    ; $7dd2: $77
    ld d, l                                       ; $7dd3: $55
    ld [hl], a                                    ; $7dd4: $77
    ld d, l                                       ; $7dd5: $55
    ld d, l                                       ; $7dd6: $55
    ld [hl], a                                    ; $7dd7: $77
    ld d, l                                       ; $7dd8: $55
    ld [hl], a                                    ; $7dd9: $77
    ld c, l                                       ; $7dda: $4d
    ld a, a                                       ; $7ddb: $7f
    ld hl, $1f3f                                  ; $7ddc: $21 $3f $1f
    rra                                           ; $7ddf: $1f
    nop                                           ; $7de0: $00
    nop                                           ; $7de1: $00
    ld [hl], a                                    ; $7de2: $77
    ld d, l                                       ; $7de3: $55
    ld [hl], a                                    ; $7de4: $77
    ld d, l                                       ; $7de5: $55
    ld d, l                                       ; $7de6: $55
    ld [hl], a                                    ; $7de7: $77
    ld d, l                                       ; $7de8: $55
    ld [hl], a                                    ; $7de9: $77
    ld d, l                                       ; $7dea: $55
    ld [hl], a                                    ; $7deb: $77
    ld d, l                                       ; $7dec: $55
    inc bc                                        ; $7ded: $03
    ld [hl], a                                    ; $7dee: $77
    adc l                                         ; $7def: $8d
    nop                                           ; $7df0: $00
    nop                                           ; $7df1: $00
    inc e                                         ; $7df2: $1c
    inc d                                         ; $7df3: $14
    inc e                                         ; $7df4: $1c
    inc d                                         ; $7df5: $14
    inc d                                         ; $7df6: $14
    inc e                                         ; $7df7: $1c
    inc d                                         ; $7df8: $14
    inc e                                         ; $7df9: $1c
    inc d                                         ; $7dfa: $14
    inc e                                         ; $7dfb: $1c
    inc d                                         ; $7dfc: $14
    inc bc                                        ; $7dfd: $03
    inc e                                         ; $7dfe: $1c
    adc l                                         ; $7dff: $8d
    nop                                           ; $7e00: $00
    nop                                           ; $7e01: $00
    ld [hl], b                                    ; $7e02: $70
    ld d, b                                       ; $7e03: $50
    ld [hl], b                                    ; $7e04: $70
    ld d, b                                       ; $7e05: $50
    ld d, b                                       ; $7e06: $50
    ld [hl], b                                    ; $7e07: $70
    ld d, b                                       ; $7e08: $50
    ld [hl], b                                    ; $7e09: $70
    ld e, a                                       ; $7e0a: $5f
    ld a, a                                       ; $7e0b: $7f
    ld b, c                                       ; $7e0c: $41
    inc bc                                        ; $7e0d: $03
    ld a, a                                       ; $7e0e: $7f
    adc l                                         ; $7e0f: $8d
    nop                                           ; $7e10: $00
    nop                                           ; $7e11: $00
    inc e                                         ; $7e12: $1c
    inc d                                         ; $7e13: $14
    inc e                                         ; $7e14: $1c
    inc d                                         ; $7e15: $14
    inc d                                         ; $7e16: $14
    inc e                                         ; $7e17: $1c
    inc d                                         ; $7e18: $14
    inc e                                         ; $7e19: $1c
    ld [hl], $3e                                  ; $7e1a: $36 $3e
    ld [hl+], a                                   ; $7e1c: $22
    inc bc                                        ; $7e1d: $03
    ld a, $8d                                     ; $7e1e: $3e $8d
    nop                                           ; $7e20: $00
    nop                                           ; $7e21: $00
    inc e                                         ; $7e22: $1c
    inc d                                         ; $7e23: $14
    inc e                                         ; $7e24: $1c
    inc d                                         ; $7e25: $14
    inc e                                         ; $7e26: $1c
    inc e                                         ; $7e27: $1c
    nop                                           ; $7e28: $00
    nop                                           ; $7e29: $00
    inc e                                         ; $7e2a: $1c
    inc e                                         ; $7e2b: $1c
    inc d                                         ; $7e2c: $14
    inc bc                                        ; $7e2d: $03
    inc e                                         ; $7e2e: $1c
    add d                                         ; $7e2f: $82
    nop                                           ; $7e30: $00
    nop                                           ; $7e31: $00
    nop                                           ; $7e32: $00
    ld a, [bc]                                    ; $7e33: $0a

Call_004_7e34:
    nop                                           ; $7e34: $00
    ld b, $01                                     ; $7e35: $06 $01
    adc b                                         ; $7e37: $88
    rst RST_38                                    ; $7e38: $ff
    rst RST_38                                    ; $7e39: $ff
    rla                                           ; $7e3a: $17
    jr jr_004_7e4b                                ; $7e3b: $18 $0e

    rrca                                          ; $7e3d: $0f
    ld bc, $0a01                                  ; $7e3e: $01 $01 $0a
    nop                                           ; $7e41: $00
    cp [hl]                                       ; $7e42: $be
    inc bc                                        ; $7e43: $03
    inc bc                                        ; $7e44: $03
    inc c                                         ; $7e45: $0c
    rrca                                          ; $7e46: $0f
    dec de                                        ; $7e47: $1b
    inc e                                         ; $7e48: $1c
    ei                                            ; $7e49: $fb
    db $fc                                        ; $7e4a: $fc

jr_004_7e4b:
    cp a                                          ; $7e4b: $bf
    ret nz                                        ; $7e4c: $c0

    rst RST_18                                    ; $7e4d: $df
    ldh [$ffdf], a                                ; $7e4e: $e0 $df
    ldh [$ff0e], a                                ; $7e50: $e0 $0e
    pop af                                        ; $7e52: $f1
    rst RST_38                                    ; $7e53: $ff
    nop                                           ; $7e54: $00
    rrca                                          ; $7e55: $0f
    ldh a, [$ffef]                                ; $7e56: $f0 $ef
    ldh a, [rNR41]                                ; $7e58: $f0 $20
    ccf                                           ; $7e5a: $3f
    rra                                           ; $7e5b: $1f
    rra                                           ; $7e5c: $1f
    ld b, $07                                     ; $7e5d: $06 $07

jr_004_7e5f:
    inc bc                                        ; $7e5f: $03
    inc bc                                        ; $7e60: $03
    nop                                           ; $7e61: $00
    nop                                           ; $7e62: $00
    ret nz                                        ; $7e63: $c0

    ret nz                                        ; $7e64: $c0

    jr c, jr_004_7e5f                             ; $7e65: $38 $f8

    adc h                                         ; $7e67: $8c
    ld a, h                                       ; $7e68: $7c
    ldh [c], a                                    ; $7e69: $e2

jr_004_7e6a:
    ld e, $e2                                     ; $7e6a: $1e $e2
    ld e, $c7                                     ; $7e6c: $1e $c7
    ccf                                           ; $7e6e: $3f

jr_004_7e6f:
    rst RST_08                                    ; $7e6f: $cf
    ld a, $0e                                     ; $7e70: $3e $0e
    rst RST_38                                    ; $7e72: $ff
    db $fd                                        ; $7e73: $fd
    inc bc                                        ; $7e74: $03
    db $fc                                        ; $7e75: $fc
    inc bc                                        ; $7e76: $03
    ld hl, sp+$07                                 ; $7e77: $f8 $07
    ld b, c                                       ; $7e79: $41
    cp a                                          ; $7e7a: $bf
    rra                                           ; $7e7b: $1f
    rst RST_38                                    ; $7e7c: $ff
    jr nc, jr_004_7e6f                            ; $7e7d: $30 $f0

    ldh [$ffe0], a                                ; $7e7f: $e0 $e0
    inc c                                         ; $7e81: $0c
    nop                                           ; $7e82: $00
    add [hl]                                      ; $7e83: $86
    ret nz                                        ; $7e84: $c0

    ret nz                                        ; $7e85: $c0

    and b                                         ; $7e86: $a0
    ld h, b                                       ; $7e87: $60
    jr nz, jr_004_7e6a                            ; $7e88: $20 $e0

    add b                                         ; $7e8a: $80
    add e                                         ; $7e8b: $83
    inc b                                         ; $7e8c: $04
    ret nz                                        ; $7e8d: $c0

    cp $e0                                        ; $7e8e: $fe $e0
    add b                                         ; $7e90: $80
    stop                                          ; $7e91: $10 $00
    add d                                         ; $7e93: $82
    inc bc                                        ; $7e94: $03
    inc bc                                        ; $7e95: $03
    add b                                         ; $7e96: $80
    inc bc                                        ; $7e97: $03
    dec b                                         ; $7e98: $05
    adc l                                         ; $7e99: $8d
    inc b                                         ; $7e9a: $04
    rlca                                          ; $7e9b: $07
    inc b                                         ; $7e9c: $04
    rrca                                          ; $7e9d: $0f
    ld [$080f], sp                                ; $7e9e: $08 $0f $08
    ei                                            ; $7ea1: $fb
    db $fc                                        ; $7ea2: $fc
    dec c                                         ; $7ea3: $0d
    rra                                           ; $7ea4: $1f
    inc bc                                        ; $7ea5: $03
    rlca                                          ; $7ea6: $07
    ld c, $00                                     ; $7ea7: $0e $00
    sub d                                         ; $7ea9: $92
    ldh a, [$fff0]                                ; $7eaa: $f0 $f0
    add sp, $18                                   ; $7eac: $e8 $18
    xor $1e                                       ; $7eae: $ee $1e
    rst RST_08                                    ; $7eb0: $cf
    ccf                                           ; $7eb1: $3f
    dec e                                         ; $7eb2: $1d
    ei                                            ; $7eb3: $fb
    ld sp, hl                                     ; $7eb4: $f9
    rlca                                          ; $7eb5: $07
    adc $3e                                       ; $7eb6: $ce $3e
    sbc h                                         ; $7eb8: $9c
    db $fc                                        ; $7eb9: $fc
    ld hl, sp-$04                                 ; $7eba: $f8 $fc
    inc b                                         ; $7ebc: $04
    nop                                           ; $7ebd: $00
    and e                                         ; $7ebe: $a3
    rra                                           ; $7ebf: $1f
    rra                                           ; $7ec0: $1f
    dec c                                         ; $7ec1: $0d
    dec bc                                        ; $7ec2: $0b
    rra                                           ; $7ec3: $1f
    rra                                           ; $7ec4: $1f
    dec b                                         ; $7ec5: $05
    rlca                                          ; $7ec6: $07
    rlca                                          ; $7ec7: $07
    dec b                                         ; $7ec8: $05
    rlca                                          ; $7ec9: $07
    dec b                                         ; $7eca: $05
    rrca                                          ; $7ecb: $0f
    inc b                                         ; $7ecc: $04
    rrca                                          ; $7ecd: $0f
    rrca                                          ; $7ece: $0f
    dec de                                        ; $7ecf: $1b
    inc d                                         ; $7ed0: $14
    dec e                                         ; $7ed1: $1d
    ld d, $1f                                     ; $7ed2: $16 $1f
    rra                                           ; $7ed4: $1f
    ld c, $0d                                     ; $7ed5: $0e $0d
    rra                                           ; $7ed7: $1f
    rra                                           ; $7ed8: $1f
    ld [hl-], a                                   ; $7ed9: $32
    inc sp                                        ; $7eda: $33
    inc hl                                        ; $7edb: $23
    ld [hl+], a                                   ; $7edc: $22
    inc bc                                        ; $7edd: $03
    inc bc                                        ; $7ede: $03
    ldh a, [$fff0]                                ; $7edf: $f0 $f0
    ld a, b                                       ; $7ee1: $78
    inc bc                                        ; $7ee2: $03
    ld hl, sp-$26                                 ; $7ee3: $f8 $da
    ld a, b                                       ; $7ee5: $78
    ld hl, sp-$08                                 ; $7ee6: $f8 $f8
    ld e, b                                       ; $7ee8: $58
    ldh a, [rNR10]                                ; $7ee9: $f0 $10
    or b                                          ; $7eeb: $b0
    ld [hl], b                                    ; $7eec: $70
    ret c                                         ; $7eed: $d8

    add sp, -$14                                  ; $7eee: $e8 $ec
    inc d                                         ; $7ef0: $14
    call c, $fc34                                 ; $7ef1: $dc $34 $fc
    db $fc                                        ; $7ef4: $fc
    ret nc                                        ; $7ef5: $d0

    or b                                          ; $7ef6: $b0
    ldh a, [$fff0]                                ; $7ef7: $f0 $f0
    and b                                         ; $7ef9: $a0
    ldh [$ffe0], a                                ; $7efa: $e0 $e0
    and b                                         ; $7efc: $a0
    ldh [$ffe0], a                                ; $7efd: $e0 $e0
    rlca                                          ; $7eff: $07
    inc bc                                        ; $7f00: $03
    rrca                                          ; $7f01: $0f
    rlca                                          ; $7f02: $07
    rrca                                          ; $7f03: $0f
    rrca                                          ; $7f04: $0f
    dec c                                         ; $7f05: $0d
    rrca                                          ; $7f06: $0f
    rlca                                          ; $7f07: $07
    dec b                                         ; $7f08: $05
    rlca                                          ; $7f09: $07
    dec b                                         ; $7f0a: $05
    rlca                                          ; $7f0b: $07
    inc b                                         ; $7f0c: $04
    rrca                                          ; $7f0d: $0f
    rrca                                          ; $7f0e: $0f
    dec de                                        ; $7f0f: $1b
    inc d                                         ; $7f10: $14
    dec e                                         ; $7f11: $1d
    ld d, $1f                                     ; $7f12: $16 $1f
    rra                                           ; $7f14: $1f
    ld c, $0d                                     ; $7f15: $0e $0d
    rra                                           ; $7f17: $1f
    rra                                           ; $7f18: $1f
    ld [hl-], a                                   ; $7f19: $32
    inc sp                                        ; $7f1a: $33
    inc hl                                        ; $7f1b: $23
    ld [hl+], a                                   ; $7f1c: $22
    inc bc                                        ; $7f1d: $03
    inc bc                                        ; $7f1e: $03
    ldh a, [$ffe0]                                ; $7f1f: $f0 $e0
    ld [hl], b                                    ; $7f21: $70
    ldh a, [$fffc]                                ; $7f22: $f0 $fc
    ld hl, sp-$02                                 ; $7f24: $f8 $fe
    cp $ff                                        ; $7f26: $fe $ff
    halt                                          ; $7f28: $76
    or $33                                        ; $7f29: $f6 $33
    or e                                          ; $7f2b: $b3
    ld [hl], e                                    ; $7f2c: $73
    ld sp, hl                                     ; $7f2d: $f9
    jp hl                                         ; $7f2e: $e9


    db $ed                                        ; $7f2f: $ed
    dec d                                         ; $7f30: $15
    call c, $fc34                                 ; $7f31: $dc $34 $fc
    db $fc                                        ; $7f34: $fc
    ret nc                                        ; $7f35: $d0

    or b                                          ; $7f36: $b0
    ldh a, [$fff0]                                ; $7f37: $f0 $f0
    and b                                         ; $7f39: $a0
    ldh [$ffe0], a                                ; $7f3a: $e0 $e0
    and b                                         ; $7f3c: $a0
    ldh [$ffe0], a                                ; $7f3d: $e0 $e0
    nop                                           ; $7f3f: $00
    nop                                           ; $7f40: $00
    sbc b                                         ; $7f41: $98
    inc d                                         ; $7f42: $14
    inc a                                         ; $7f43: $3c
    inc c                                         ; $7f44: $0c
    nop                                           ; $7f45: $00
    inc d                                         ; $7f46: $14
    dec a                                         ; $7f47: $3d
    inc c                                         ; $7f48: $0c
    nop                                           ; $7f49: $00
    inc d                                         ; $7f4a: $14
    ld a, $0c                                     ; $7f4b: $3e $0c
    nop                                           ; $7f4d: $00
    inc d                                         ; $7f4e: $14
    ccf                                           ; $7f4f: $3f

Call_004_7f50:
    inc c                                         ; $7f50: $0c
    nop                                           ; $7f51: $00
    inc d                                         ; $7f52: $14
    ld b, b                                       ; $7f53: $40
    inc c                                         ; $7f54: $0c
    nop                                           ; $7f55: $00
    inc d                                         ; $7f56: $14
    ld b, c                                       ; $7f57: $41
    add hl, sp                                    ; $7f58: $39
    nop                                           ; $7f59: $00
    add [hl]                                      ; $7f5a: $86
    rrca                                          ; $7f5b: $0f
    nop                                           ; $7f5c: $00
    nop                                           ; $7f5d: $00
    rrca                                          ; $7f5e: $0f
    nop                                           ; $7f5f: $00
    rrca                                          ; $7f60: $0f
    inc de                                        ; $7f61: $13
    nop                                           ; $7f62: $00
    add b                                         ; $7f63: $80
    ld c, $01                                     ; $7f64: $0e $01
    inc c                                         ; $7f66: $0c
    nop                                           ; $7f67: $00
    add b                                         ; $7f68: $80
    inc d                                         ; $7f69: $14
    db $10                                        ; $7f6a: $10
    inc c                                         ; $7f6b: $0c
    nop                                           ; $7f6c: $00
    add b                                         ; $7f6d: $80
    add hl, bc                                    ; $7f6e: $09
    inc h                                         ; $7f6f: $24
    add c                                         ; $7f70: $81
    nop                                           ; $7f71: $00
    add b                                         ; $7f72: $80
    ld a, [bc]                                    ; $7f73: $0a
    dec l                                         ; $7f74: $2d
    dec c                                         ; $7f75: $0d
    nop                                           ; $7f76: $00
    add h                                         ; $7f77: $84
    dec sp                                        ; $7f78: $3b
    dec sp                                        ; $7f79: $3b
    nop                                           ; $7f7a: $00
    dec sp                                        ; $7f7b: $3b
    dec b                                         ; $7f7c: $05
    nop                                           ; $7f7d: $00
    add h                                         ; $7f7e: $84
    dec sp                                        ; $7f7f: $3b
    nop                                           ; $7f80: $00
    dec sp                                        ; $7f81: $3b
    nop                                           ; $7f82: $00
    add b                                         ; $7f83: $80
    inc b                                         ; $7f84: $04
    scf                                           ; $7f85: $37
    add d                                         ; $7f86: $82
    nop                                           ; $7f87: $00
    dec sp                                        ; $7f88: $3b
    ld l, $00                                     ; $7f89: $2e $00
    add [hl]                                      ; $7f8b: $86
    ld b, d                                       ; $7f8c: $42
    ld b, d                                       ; $7f8d: $42
    ld b, e                                       ; $7f8e: $43
    ld b, d                                       ; $7f8f: $42
    ld b, h                                       ; $7f90: $44
    ld b, d                                       ; $7f91: $42
    add b                                         ; $7f92: $80
    inc bc                                        ; $7f93: $03
    ld b, l                                       ; $7f94: $45
    add a                                         ; $7f95: $87
    ld b, d                                       ; $7f96: $42
    ld b, l                                       ; $7f97: $45
    ld c, b                                       ; $7f98: $48
    ld b, d                                       ; $7f99: $42
    ld b, e                                       ; $7f9a: $43
    nop                                           ; $7f9b: $00
    ld c, c                                       ; $7f9c: $49
    stop                                          ; $7f9d: $10 $00
    add b                                         ; $7f9f: $80
    rlca                                          ; $7fa0: $07
    ld c, d                                       ; $7fa1: $4a
    adc c                                         ; $7fa2: $89
    ld c, e                                       ; $7fa3: $4b
    ld d, c                                       ; $7fa4: $51
    ld c, a                                       ; $7fa5: $4f
    ld d, b                                       ; $7fa6: $50
    ld d, b                                       ; $7fa7: $50
    ld c, e                                       ; $7fa8: $4b
    ld c, h                                       ; $7fa9: $4c
    nop                                           ; $7faa: $00
    ld d, b                                       ; $7fab: $50
    stop                                          ; $7fac: $10 $00
    add c                                         ; $7fae: $81
    ld d, d                                       ; $7faf: $52
    add b                                         ; $7fb0: $80
    inc b                                         ; $7fb1: $04
    ld d, d                                       ; $7fb2: $52
    adc e                                         ; $7fb3: $8b
    ld d, l                                       ; $7fb4: $55
    ld d, [hl]                                    ; $7fb5: $56
    ld d, d                                       ; $7fb6: $52
    ld d, a                                       ; $7fb7: $57
    ld d, l                                       ; $7fb8: $55
    ld d, [hl]                                    ; $7fb9: $56
    ld e, b                                       ; $7fba: $58
    ld d, d                                       ; $7fbb: $52
    ld d, e                                       ; $7fbc: $53
    nop                                           ; $7fbd: $00
    ld e, c                                       ; $7fbe: $59
    ld c, [hl]                                    ; $7fbf: $4e
    nop                                           ; $7fc0: $00
    nop                                           ; $7fc1: $00
    sbc b                                         ; $7fc2: $98
    db $f4                                        ; $7fc3: $f4
    db $f4                                        ; $7fc4: $f4
    and b                                         ; $7fc5: $a0
    ldh [$fff3], a                                ; $7fc6: $e0 $f3
    db $fc                                        ; $7fc8: $fc
    nop                                           ; $7fc9: $00
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
