; Disassembly of "Cave Noire (Japan).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    ld bc, $401c                                  ; $4000: $01 $1c $40
    sub b                                         ; $4003: $90
    ld bc, $7001                                  ; $4004: $01 $01 $70
    ld b, b                                       ; $4007: $40
    sbc d                                         ; $4008: $9a
    ld bc, $0100                                  ; $4009: $01 $00 $01
    inc e                                         ; $400c: $1c
    ld b, b                                       ; $400d: $40
    ld e, $01                                     ; $400e: $1e $01
    nop                                           ; $4010: $00
    ld bc, $4070                                  ; $4011: $01 $70 $40
    sub b                                         ; $4014: $90
    ld bc, $a501                                  ; $4015: $01 $01 $a5
    ld b, c                                       ; $4018: $41
    or b                                          ; $4019: $b0
    ld bc, $8000                                  ; $401a: $01 $00 $80
    add e                                         ; $401d: $83
    ld d, b                                       ; $401e: $50
    nop                                           ; $401f: $00
    inc a                                         ; $4020: $3c
    ld h, [hl]                                    ; $4021: $66
    ld h, [hl]                                    ; $4022: $66
    ld h, [hl]                                    ; $4023: $66
    ld h, [hl]                                    ; $4024: $66
    inc a                                         ; $4025: $3c
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    jr jr_006_4062                                ; $4028: $18 $38

    jr jr_006_4044                                ; $402a: $18 $18

    jr jr_006_406a                                ; $402c: $18 $3c

    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    inc a                                         ; $4030: $3c
    ld h, [hl]                                    ; $4031: $66
    ld b, $1c                                     ; $4032: $06 $1c
    jr nc, jr_006_40b4                            ; $4034: $30 $7e

    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    inc a                                         ; $4038: $3c
    ld h, [hl]                                    ; $4039: $66
    inc c                                         ; $403a: $0c
    ld b, $66                                     ; $403b: $06 $66
    inc a                                         ; $403d: $3c
    nop                                           ; $403e: $00
    nop                                           ; $403f: $00
    inc e                                         ; $4040: $1c
    inc a                                         ; $4041: $3c
    inc l                                         ; $4042: $2c
    ld c, h                                       ; $4043: $4c

jr_006_4044:
    ld a, [hl]                                    ; $4044: $7e
    inc c                                         ; $4045: $0c
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    ld a, [hl]                                    ; $4048: $7e
    ld h, b                                       ; $4049: $60
    ld a, h                                       ; $404a: $7c
    ld b, $66                                     ; $404b: $06 $66
    inc a                                         ; $404d: $3c
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    inc a                                         ; $4050: $3c
    ld h, b                                       ; $4051: $60
    ld a, h                                       ; $4052: $7c
    ld h, [hl]                                    ; $4053: $66
    ld h, [hl]                                    ; $4054: $66
    inc a                                         ; $4055: $3c
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    ld a, [hl]                                    ; $4058: $7e
    ld h, [hl]                                    ; $4059: $66
    inc c                                         ; $405a: $0c
    inc c                                         ; $405b: $0c
    jr @+$1a                                      ; $405c: $18 $18

    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    inc a                                         ; $4060: $3c
    ld h, [hl]                                    ; $4061: $66

jr_006_4062:
    inc a                                         ; $4062: $3c
    ld h, [hl]                                    ; $4063: $66
    ld h, [hl]                                    ; $4064: $66
    inc a                                         ; $4065: $3c
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    inc a                                         ; $4068: $3c
    ld h, [hl]                                    ; $4069: $66

jr_006_406a:
    ld h, [hl]                                    ; $406a: $66
    ld a, $06                                     ; $406b: $3e $06
    inc a                                         ; $406d: $3c
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    stop                                          ; $4070: $10 $00
    add b                                         ; $4072: $80
    add e                                         ; $4073: $83
    ld a, a                                       ; $4074: $7f
    ld a, $7f                                     ; $4075: $3e $7f
    ld h, e                                       ; $4077: $63
    ld h, e                                       ; $4078: $63
    ld a, a                                       ; $4079: $7f
    ld a, a                                       ; $407a: $7f
    ld h, e                                       ; $407b: $63
    ld h, e                                       ; $407c: $63
    ld a, [hl]                                    ; $407d: $7e
    ld a, a                                       ; $407e: $7f
    ld h, e                                       ; $407f: $63
    ld a, [hl]                                    ; $4080: $7e
    ld a, a                                       ; $4081: $7f
    ld h, e                                       ; $4082: $63
    ld a, a                                       ; $4083: $7f
    ld a, [hl]                                    ; $4084: $7e
    ld a, $7f                                     ; $4085: $3e $7f
    ld h, e                                       ; $4087: $63
    ld h, b                                       ; $4088: $60
    ld h, b                                       ; $4089: $60
    ld h, e                                       ; $408a: $63
    ld a, a                                       ; $408b: $7f
    ld a, $7e                                     ; $408c: $3e $7e
    ld a, a                                       ; $408e: $7f
    ld h, e                                       ; $408f: $63
    ld h, e                                       ; $4090: $63
    ld h, e                                       ; $4091: $63
    ld h, e                                       ; $4092: $63
    ld a, a                                       ; $4093: $7f
    ld a, [hl]                                    ; $4094: $7e
    ld a, a                                       ; $4095: $7f
    ld a, a                                       ; $4096: $7f
    ld h, b                                       ; $4097: $60
    ld a, [hl]                                    ; $4098: $7e
    ld a, [hl]                                    ; $4099: $7e
    ld h, b                                       ; $409a: $60
    ld a, a                                       ; $409b: $7f
    ld a, a                                       ; $409c: $7f
    ld a, a                                       ; $409d: $7f
    ld a, a                                       ; $409e: $7f
    ld h, b                                       ; $409f: $60
    ld a, [hl]                                    ; $40a0: $7e
    ld a, [hl]                                    ; $40a1: $7e
    ld h, b                                       ; $40a2: $60
    ld h, b                                       ; $40a3: $60
    ld h, b                                       ; $40a4: $60
    ccf                                           ; $40a5: $3f
    ld a, a                                       ; $40a6: $7f
    ld h, b                                       ; $40a7: $60
    ld l, a                                       ; $40a8: $6f
    ld l, a                                       ; $40a9: $6f
    ld h, e                                       ; $40aa: $63
    ld a, a                                       ; $40ab: $7f
    ccf                                           ; $40ac: $3f
    ld h, e                                       ; $40ad: $63
    ld h, e                                       ; $40ae: $63
    ld h, e                                       ; $40af: $63
    ld a, a                                       ; $40b0: $7f
    ld a, a                                       ; $40b1: $7f
    ld h, e                                       ; $40b2: $63
    ld h, e                                       ; $40b3: $63

jr_006_40b4:
    ld h, e                                       ; $40b4: $63
    inc a                                         ; $40b5: $3c
    inc a                                         ; $40b6: $3c
    jr jr_006_40d1                                ; $40b7: $18 $18

    jr jr_006_40d3                                ; $40b9: $18 $18

    inc a                                         ; $40bb: $3c
    inc a                                         ; $40bc: $3c
    inc bc                                        ; $40bd: $03
    inc bc                                        ; $40be: $03
    inc bc                                        ; $40bf: $03
    inc bc                                        ; $40c0: $03
    ld h, e                                       ; $40c1: $63
    ld h, e                                       ; $40c2: $63
    ld a, a                                       ; $40c3: $7f
    ld a, $63                                     ; $40c4: $3e $63
    ld h, a                                       ; $40c6: $67
    ld l, [hl]                                    ; $40c7: $6e
    ld a, h                                       ; $40c8: $7c
    ld a, h                                       ; $40c9: $7c
    ld l, [hl]                                    ; $40ca: $6e
    ld h, a                                       ; $40cb: $67
    ld h, e                                       ; $40cc: $63
    ld h, b                                       ; $40cd: $60
    ld h, b                                       ; $40ce: $60
    ld h, b                                       ; $40cf: $60
    ld h, b                                       ; $40d0: $60

jr_006_40d1:
    ld h, b                                       ; $40d1: $60
    ld h, b                                       ; $40d2: $60

jr_006_40d3:
    ld a, a                                       ; $40d3: $7f
    ld a, a                                       ; $40d4: $7f
    ld h, e                                       ; $40d5: $63
    ld [hl], a                                    ; $40d6: $77
    ld a, a                                       ; $40d7: $7f
    ld a, a                                       ; $40d8: $7f
    ld l, e                                       ; $40d9: $6b
    ld h, e                                       ; $40da: $63
    ld h, e                                       ; $40db: $63
    ld h, e                                       ; $40dc: $63
    ld [hl], e                                    ; $40dd: $73
    ld [hl], e                                    ; $40de: $73
    ld a, e                                       ; $40df: $7b
    ld a, e                                       ; $40e0: $7b
    ld l, a                                       ; $40e1: $6f
    ld l, a                                       ; $40e2: $6f
    ld h, a                                       ; $40e3: $67
    ld h, a                                       ; $40e4: $67
    ld a, $7f                                     ; $40e5: $3e $7f
    ld h, e                                       ; $40e7: $63
    ld h, e                                       ; $40e8: $63
    ld h, e                                       ; $40e9: $63
    ld h, e                                       ; $40ea: $63
    ld a, a                                       ; $40eb: $7f
    ld a, $7e                                     ; $40ec: $3e $7e
    ld a, a                                       ; $40ee: $7f
    ld h, e                                       ; $40ef: $63

jr_006_40f0:
    ld h, e                                       ; $40f0: $63
    ld a, a                                       ; $40f1: $7f
    ld a, [hl]                                    ; $40f2: $7e
    ld h, b                                       ; $40f3: $60
    add b                                         ; $40f4: $80
    add e                                         ; $40f5: $83
    dec de                                        ; $40f6: $1b
    ld h, b                                       ; $40f7: $60
    ld a, $7f                                     ; $40f8: $3e $7f
    ld h, e                                       ; $40fa: $63
    ld l, a                                       ; $40fb: $6f
    ld a, a                                       ; $40fc: $7f
    ld a, e                                       ; $40fd: $7b
    ld a, a                                       ; $40fe: $7f
    ccf                                           ; $40ff: $3f
    ld a, [hl]                                    ; $4100: $7e
    ld a, a                                       ; $4101: $7f
    ld h, e                                       ; $4102: $63
    ld h, e                                       ; $4103: $63
    ld a, a                                       ; $4104: $7f
    ld a, [hl]                                    ; $4105: $7e
    ld h, a                                       ; $4106: $67
    ld h, e                                       ; $4107: $63
    ccf                                           ; $4108: $3f
    ld a, a                                       ; $4109: $7f
    ld h, b                                       ; $410a: $60
    ld a, [hl]                                    ; $410b: $7e
    ccf                                           ; $410c: $3f
    inc bc                                        ; $410d: $03
    ld a, a                                       ; $410e: $7f
    ld a, [hl]                                    ; $410f: $7e
    ld a, a                                       ; $4110: $7f
    ld a, a                                       ; $4111: $7f
    adc h                                         ; $4112: $8c
    jr jr_006_4121                                ; $4113: $18 $0c

    jr jr_006_4123                                ; $4115: $18 $0c

    jr jr_006_4125                                ; $4117: $18 $0c

    jr jr_006_4127                                ; $4119: $18 $0c

    jr jr_006_4129                                ; $411b: $18 $0c

    jr jr_006_412b                                ; $411d: $18 $0c

    inc c                                         ; $411f: $0c
    ld h, e                                       ; $4120: $63

jr_006_4121:
    add b                                         ; $4121: $80
    add e                                         ; $4122: $83

jr_006_4123:
    inc b                                         ; $4123: $04
    ld a, a                                       ; $4124: $7f

jr_006_4125:
    ld a, $63                                     ; $4125: $3e $63

jr_006_4127:
    ld h, e                                       ; $4127: $63
    add c                                         ; $4128: $81

jr_006_4129:
    ld [hl], a                                    ; $4129: $77
    inc bc                                        ; $412a: $03

jr_006_412b:
    ld [hl], $81                                  ; $412b: $36 $81
    ld a, $04                                     ; $412d: $3e $04
    inc e                                         ; $412f: $1c
    inc bc                                        ; $4130: $03
    ld [$6304], sp                                ; $4131: $08 $04 $63
    add h                                         ; $4134: $84
    ld l, e                                       ; $4135: $6b
    ld l, e                                       ; $4136: $6b
    ld a, a                                       ; $4137: $7f
    ld l, e                                       ; $4138: $6b
    inc bc                                        ; $4139: $03
    ld a, a                                       ; $413a: $7f
    add c                                         ; $413b: $81
    ld a, $80                                     ; $413c: $3e $80
    add e                                         ; $413e: $83
    ld c, $36                                     ; $413f: $0e $36
    ld [hl+], a                                   ; $4141: $22
    ld h, e                                       ; $4142: $63
    ld [hl], a                                    ; $4143: $77
    ld a, $1c                                     ; $4144: $3e $1c
    inc e                                         ; $4146: $1c
    ld a, $77                                     ; $4147: $3e $77
    ld h, e                                       ; $4149: $63
    ld h, e                                       ; $414a: $63
    ld [hl], a                                    ; $414b: $77
    ld a, $1c                                     ; $414c: $3e $1c
    adc b                                         ; $414e: $88
    jr jr_006_415d                                ; $414f: $18 $0c

    jr jr_006_415f                                ; $4151: $18 $0c

    jr jr_006_4161                                ; $4153: $18 $0c

    jr jr_006_4163                                ; $4155: $18 $0c

    inc b                                         ; $4157: $04
    ld a, a                                       ; $4158: $7f
    adc b                                         ; $4159: $88
    rlca                                          ; $415a: $07
    ld b, $0e                                     ; $415b: $06 $0e

jr_006_415d:
    inc c                                         ; $415d: $0c
    inc e                                         ; $415e: $1c

jr_006_415f:
    jr jr_006_4199                                ; $415f: $18 $38

jr_006_4161:
    jr nc, jr_006_4167                            ; $4161: $30 $04

jr_006_4163:
    ld a, a                                       ; $4163: $7f
    inc c                                         ; $4164: $0c
    nop                                           ; $4165: $00
    inc b                                         ; $4166: $04

jr_006_4167:
    jr nc, jr_006_4173                            ; $4167: $30 $0a

    jr @-$7c                                      ; $4169: $18 $82

    nop                                           ; $416b: $00
    nop                                           ; $416c: $00
    inc b                                         ; $416d: $04
    jr jr_006_40f0                                ; $416e: $18 $80

    add e                                         ; $4170: $83
    jr jr_006_417f                                ; $4171: $18 $0c

jr_006_4173:
    inc e                                         ; $4173: $1c
    inc e                                         ; $4174: $1c
    inc c                                         ; $4175: $0c
    inc c                                         ; $4176: $0c
    inc c                                         ; $4177: $0c
    ld e, $1e                                     ; $4178: $1e $1e
    ld a, $7f                                     ; $417a: $3e $7f
    ld h, e                                       ; $417c: $63
    ld a, a                                       ; $417d: $7f
    ccf                                           ; $417e: $3f

jr_006_417f:
    inc bc                                        ; $417f: $03
    ccf                                           ; $4180: $3f
    ld a, $3c                                     ; $4181: $3e $3c
    ld b, d                                       ; $4183: $42
    sbc c                                         ; $4184: $99
    and c                                         ; $4185: $a1
    and c                                         ; $4186: $a1
    sbc c                                         ; $4187: $99
    ld b, d                                       ; $4188: $42
    inc a                                         ; $4189: $3c
    add d                                         ; $418a: $82
    nop                                           ; $418b: $00
    nop                                           ; $418c: $00
    add b                                         ; $418d: $80
    add e                                         ; $418e: $83
    ld b, $7c                                     ; $418f: $06 $7c
    ld h, [hl]                                    ; $4191: $66
    ld a, h                                       ; $4192: $7c
    ld h, [hl]                                    ; $4193: $66
    ld h, [hl]                                    ; $4194: $66
    ld a, h                                       ; $4195: $7c
    inc b                                         ; $4196: $04
    nop                                           ; $4197: $00
    add b                                         ; $4198: $80

jr_006_4199:
    add e                                         ; $4199: $83
    ld b, $7e                                     ; $419a: $06 $7e
    ld h, b                                       ; $419c: $60
    ld h, b                                       ; $419d: $60
    ld a, h                                       ; $419e: $7c
    ld h, b                                       ; $419f: $60
    ld h, b                                       ; $41a0: $60
    add d                                         ; $41a1: $82
    nop                                           ; $41a2: $00
    nop                                           ; $41a3: $00
    nop                                           ; $41a4: $00
    ld [de], a                                    ; $41a5: $12
    nop                                           ; $41a6: $00
    add b                                         ; $41a7: $80
    add e                                         ; $41a8: $83
    dec b                                         ; $41a9: $05
    ld a, $63                                     ; $41aa: $3e $63
    ld a, a                                       ; $41ac: $7f
    ld h, e                                       ; $41ad: $63
    ld h, e                                       ; $41ae: $63
    ld b, $00                                     ; $41af: $06 $00
    add b                                         ; $41b1: $80
    add e                                         ; $41b2: $83
    dec b                                         ; $41b3: $05
    ld a, [hl]                                    ; $41b4: $7e
    ld h, e                                       ; $41b5: $63
    ld a, [hl]                                    ; $41b6: $7e
    ld h, e                                       ; $41b7: $63
    ld a, [hl]                                    ; $41b8: $7e
    ld b, $00                                     ; $41b9: $06 $00
    add b                                         ; $41bb: $80
    add e                                         ; $41bc: $83
    dec b                                         ; $41bd: $05
    ld a, $63                                     ; $41be: $3e $63
    ld h, b                                       ; $41c0: $60
    ld h, e                                       ; $41c1: $63
    ld a, $06                                     ; $41c2: $3e $06
    nop                                           ; $41c4: $00
    add b                                         ; $41c5: $80
    add e                                         ; $41c6: $83
    dec b                                         ; $41c7: $05
    ld a, [hl]                                    ; $41c8: $7e
    ld h, e                                       ; $41c9: $63
    ld h, e                                       ; $41ca: $63
    ld h, e                                       ; $41cb: $63
    ld a, [hl]                                    ; $41cc: $7e
    ld b, $00                                     ; $41cd: $06 $00
    add b                                         ; $41cf: $80
    add e                                         ; $41d0: $83
    dec b                                         ; $41d1: $05
    ld a, a                                       ; $41d2: $7f
    ld h, b                                       ; $41d3: $60
    ld a, [hl]                                    ; $41d4: $7e
    ld h, b                                       ; $41d5: $60
    ld a, a                                       ; $41d6: $7f
    ld b, $00                                     ; $41d7: $06 $00
    add b                                         ; $41d9: $80
    add e                                         ; $41da: $83
    dec b                                         ; $41db: $05
    ld a, a                                       ; $41dc: $7f
    ld h, b                                       ; $41dd: $60
    ld a, [hl]                                    ; $41de: $7e
    ld h, b                                       ; $41df: $60
    ld h, b                                       ; $41e0: $60
    ld b, $00                                     ; $41e1: $06 $00
    add b                                         ; $41e3: $80
    add e                                         ; $41e4: $83
    dec b                                         ; $41e5: $05
    ccf                                           ; $41e6: $3f
    ld h, b                                       ; $41e7: $60
    ld l, a                                       ; $41e8: $6f
    ld h, e                                       ; $41e9: $63
    ccf                                           ; $41ea: $3f
    ld b, $00                                     ; $41eb: $06 $00
    inc b                                         ; $41ed: $04
    ld h, e                                       ; $41ee: $63
    add d                                         ; $41ef: $82
    ld a, a                                       ; $41f0: $7f
    ld a, a                                       ; $41f1: $7f
    inc b                                         ; $41f2: $04
    ld h, e                                       ; $41f3: $63
    ld b, $00                                     ; $41f4: $06 $00
    ld a, [bc]                                    ; $41f6: $0a
    jr jr_006_41ff                                ; $41f7: $18 $06

    nop                                           ; $41f9: $00
    inc b                                         ; $41fa: $04
    inc bc                                        ; $41fb: $03
    inc b                                         ; $41fc: $04
    ld h, e                                       ; $41fd: $63
    add d                                         ; $41fe: $82

jr_006_41ff:
    ld a, $3e                                     ; $41ff: $3e $3e
    ld b, $00                                     ; $4201: $06 $00
    adc d                                         ; $4203: $8a
    ld h, a                                       ; $4204: $67
    ld h, e                                       ; $4205: $63
    ld l, [hl]                                    ; $4206: $6e
    ld h, [hl]                                    ; $4207: $66
    ld a, h                                       ; $4208: $7c
    ld a, h                                       ; $4209: $7c
    ld l, [hl]                                    ; $420a: $6e
    ld h, [hl]                                    ; $420b: $66
    ld h, a                                       ; $420c: $67
    ld h, e                                       ; $420d: $63
    ld b, $00                                     ; $420e: $06 $00
    ld [$8260], sp                                ; $4210: $08 $60 $82
    ld a, a                                       ; $4213: $7f
    ld a, a                                       ; $4214: $7f
    ld b, $00                                     ; $4215: $06 $00
    add b                                         ; $4217: $80
    add e                                         ; $4218: $83
    dec b                                         ; $4219: $05
    ld h, e                                       ; $421a: $63
    ld [hl], a                                    ; $421b: $77
    ld a, a                                       ; $421c: $7f
    ld l, e                                       ; $421d: $6b
    ld h, e                                       ; $421e: $63
    ld b, $00                                     ; $421f: $06 $00
    adc d                                         ; $4221: $8a
    ld h, e                                       ; $4222: $63
    ld h, e                                       ; $4223: $63
    ld a, e                                       ; $4224: $7b
    ld [hl], e                                    ; $4225: $73
    ld a, a                                       ; $4226: $7f
    ld a, a                                       ; $4227: $7f
    ld l, a                                       ; $4228: $6f
    ld h, a                                       ; $4229: $67
    ld h, e                                       ; $422a: $63
    ld h, e                                       ; $422b: $63
    ld b, $00                                     ; $422c: $06 $00
    add b                                         ; $422e: $80
    add e                                         ; $422f: $83
    dec b                                         ; $4230: $05
    ld a, $63                                     ; $4231: $3e $63
    ld h, e                                       ; $4233: $63
    ld h, e                                       ; $4234: $63
    ld a, $06                                     ; $4235: $3e $06
    nop                                           ; $4237: $00
    add b                                         ; $4238: $80
    add e                                         ; $4239: $83
    dec b                                         ; $423a: $05
    ld a, [hl]                                    ; $423b: $7e
    ld h, e                                       ; $423c: $63
    ld a, [hl]                                    ; $423d: $7e
    ld h, b                                       ; $423e: $60
    ld h, b                                       ; $423f: $60
    ld b, $00                                     ; $4240: $06 $00
    add b                                         ; $4242: $80
    add e                                         ; $4243: $83
    dec b                                         ; $4244: $05
    ld a, $63                                     ; $4245: $3e $63
    ld l, a                                       ; $4247: $6f
    ld [hl], e                                    ; $4248: $73
    ccf                                           ; $4249: $3f
    ld b, $00                                     ; $424a: $06 $00
    adc d                                         ; $424c: $8a
    ld a, [hl]                                    ; $424d: $7e
    ld a, [hl]                                    ; $424e: $7e
    ld h, e                                       ; $424f: $63
    ld h, e                                       ; $4250: $63
    ld a, [hl]                                    ; $4251: $7e
    ld a, h                                       ; $4252: $7c
    ld h, [hl]                                    ; $4253: $66
    ld h, [hl]                                    ; $4254: $66
    ld h, e                                       ; $4255: $63
    ld h, e                                       ; $4256: $63
    ld b, $00                                     ; $4257: $06 $00
    add b                                         ; $4259: $80
    add e                                         ; $425a: $83
    dec b                                         ; $425b: $05
    ccf                                           ; $425c: $3f
    ld h, b                                       ; $425d: $60
    ld a, $03                                     ; $425e: $3e $03
    ld a, [hl]                                    ; $4260: $7e
    ld b, $00                                     ; $4261: $06 $00
    adc d                                         ; $4263: $8a
    ld a, a                                       ; $4264: $7f
    ld a, a                                       ; $4265: $7f
    jr @+$0e                                      ; $4266: $18 $0c

    jr @+$0e                                      ; $4268: $18 $0c

    jr jr_006_4278                                ; $426a: $18 $0c

    jr jr_006_427a                                ; $426c: $18 $0c

    ld b, $00                                     ; $426e: $06 $00
    ld [$8263], sp                                ; $4270: $08 $63 $82
    ld a, $3e                                     ; $4273: $3e $3e
    ld b, $00                                     ; $4275: $06 $00
    inc b                                         ; $4277: $04

jr_006_4278:
    ld h, e                                       ; $4278: $63
    add [hl]                                      ; $4279: $86

jr_006_427a:
    ld [hl], $36                                  ; $427a: $36 $36
    inc e                                         ; $427c: $1c
    inc e                                         ; $427d: $1c
    ld [$0608], sp                                ; $427e: $08 $08 $06
    nop                                           ; $4281: $00
    inc b                                         ; $4282: $04
    ld h, e                                       ; $4283: $63
    add [hl]                                      ; $4284: $86
    ld l, e                                       ; $4285: $6b
    ld l, e                                       ; $4286: $6b
    ld a, a                                       ; $4287: $7f
    ld a, a                                       ; $4288: $7f
    ld [hl], $22                                  ; $4289: $36 $22
    ld b, $00                                     ; $428b: $06 $00
    add b                                         ; $428d: $80
    add e                                         ; $428e: $83
    dec b                                         ; $428f: $05
    ld h, e                                       ; $4290: $63
    ld [hl], $1c                                  ; $4291: $36 $1c
    ld [hl], $63                                  ; $4293: $36 $63
    ld b, $00                                     ; $4295: $06 $00
    adc d                                         ; $4297: $8a
    ld h, e                                       ; $4298: $63
    ld h, e                                       ; $4299: $63
    ld [hl], $36                                  ; $429a: $36 $36
    inc e                                         ; $429c: $1c
    inc e                                         ; $429d: $1c
    jr jr_006_42ac                                ; $429e: $18 $0c

    jr jr_006_42ae                                ; $42a0: $18 $0c

    ld b, $00                                     ; $42a2: $06 $00
    add b                                         ; $42a4: $80
    add e                                         ; $42a5: $83
    dec b                                         ; $42a6: $05
    ld a, a                                       ; $42a7: $7f
    ld c, $1c                                     ; $42a8: $0e $1c
    jr c, jr_006_432b                             ; $42aa: $38 $7f

jr_006_42ac:
    inc c                                         ; $42ac: $0c
    nop                                           ; $42ad: $00

jr_006_42ae:
    inc b                                         ; $42ae: $04
    jr nc, @+$06                                  ; $42af: $30 $04

    nop                                           ; $42b1: $00
    nop                                           ; $42b2: $00
    ld bc, $42be                                  ; $42b3: $01 $be $42
    ret nz                                        ; $42b6: $c0

    ld bc, $3101                                  ; $42b7: $01 $01 $31
    ld b, e                                       ; $42ba: $43
    adc $01                                       ; $42bb: $ce $01
    nop                                           ; $42bd: $00
    add b                                         ; $42be: $80
    add c                                         ; $42bf: $81
    ld [hl], b                                    ; $42c0: $70
    nop                                           ; $42c1: $00
    rrca                                          ; $42c2: $0f
    rrca                                          ; $42c3: $0f
    rrca                                          ; $42c4: $0f
    rra                                           ; $42c5: $1f
    rra                                           ; $42c6: $1f
    rra                                           ; $42c7: $1f
    ccf                                           ; $42c8: $3f
    nop                                           ; $42c9: $00
    rst RST_38                                    ; $42ca: $ff
    rst RST_38                                    ; $42cb: $ff
    rst RST_38                                    ; $42cc: $ff
    rst RST_38                                    ; $42cd: $ff
    rst RST_38                                    ; $42ce: $ff
    rst RST_38                                    ; $42cf: $ff
    rst RST_38                                    ; $42d0: $ff
    nop                                           ; $42d1: $00
    ldh [$ffe0], a                                ; $42d2: $e0 $e0
    ldh [$ffe0], a                                ; $42d4: $e0 $e0
    ret nz                                        ; $42d6: $c0

    ret nz                                        ; $42d7: $c0

    ret nz                                        ; $42d8: $c0

    nop                                           ; $42d9: $00
    nop                                           ; $42da: $00
    nop                                           ; $42db: $00
    nop                                           ; $42dc: $00
    nop                                           ; $42dd: $00
    ld bc, $3f07                                  ; $42de: $01 $07 $3f
    ccf                                           ; $42e1: $3f
    ccf                                           ; $42e2: $3f
    ld a, a                                       ; $42e3: $7f
    ld a, a                                       ; $42e4: $7f
    rst RST_38                                    ; $42e5: $ff
    rst RST_38                                    ; $42e6: $ff
    rst RST_38                                    ; $42e7: $ff
    rst RST_38                                    ; $42e8: $ff
    rst RST_38                                    ; $42e9: $ff
    rst RST_38                                    ; $42ea: $ff
    rst RST_38                                    ; $42eb: $ff
    rst RST_38                                    ; $42ec: $ff
    cp $fc                                        ; $42ed: $fe $fc
    ldh a, [$ffc0]                                ; $42ef: $f0 $c0
    add b                                         ; $42f1: $80
    add b                                         ; $42f2: $80
    nop                                           ; $42f3: $00
    nop                                           ; $42f4: $00
    nop                                           ; $42f5: $00
    nop                                           ; $42f6: $00
    nop                                           ; $42f7: $00
    nop                                           ; $42f8: $00
    nop                                           ; $42f9: $00
    nop                                           ; $42fa: $00
    nop                                           ; $42fb: $00
    nop                                           ; $42fc: $00
    ld bc, $0303                                  ; $42fd: $01 $03 $03
    rlca                                          ; $4300: $07
    rlca                                          ; $4301: $07
    rra                                           ; $4302: $1f
    ld a, a                                       ; $4303: $7f
    rst RST_38                                    ; $4304: $ff
    rst RST_38                                    ; $4305: $ff
    rst RST_38                                    ; $4306: $ff
    rst RST_38                                    ; $4307: $ff
    rst RST_38                                    ; $4308: $ff
    rst RST_38                                    ; $4309: $ff
    rst RST_38                                    ; $430a: $ff
    rst RST_38                                    ; $430b: $ff
    cp $fc                                        ; $430c: $fe $fc
    db $fc                                        ; $430e: $fc
    ld hl, sp-$08                                 ; $430f: $f8 $f8
    db $fc                                        ; $4311: $fc
    ret nz                                        ; $4312: $c0

    nop                                           ; $4313: $00
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    nop                                           ; $4316: $00
    nop                                           ; $4317: $00
    nop                                           ; $4318: $00
    rlca                                          ; $4319: $07
    rrca                                          ; $431a: $0f
    rrca                                          ; $431b: $0f
    rrca                                          ; $431c: $0f
    rra                                           ; $431d: $1f
    rra                                           ; $431e: $1f
    rra                                           ; $431f: $1f
    nop                                           ; $4320: $00
    rst RST_38                                    ; $4321: $ff
    rst RST_38                                    ; $4322: $ff
    rst RST_38                                    ; $4323: $ff
    rst RST_38                                    ; $4324: $ff
    rst RST_38                                    ; $4325: $ff
    rst RST_38                                    ; $4326: $ff
    rst RST_38                                    ; $4327: $ff
    nop                                           ; $4328: $00
    ldh a, [$fff0]                                ; $4329: $f0 $f0

jr_006_432b:
    ldh a, [$ffe0]                                ; $432b: $f0 $e0
    ldh [$ffe0], a                                ; $432d: $e0 $e0
    ldh [rP1], a                                  ; $432f: $e0 $00
    add b                                         ; $4331: $80
    add d                                         ; $4332: $82
    add b                                         ; $4333: $80
    nop                                           ; $4334: $00
    nop                                           ; $4335: $00
    inc bc                                        ; $4336: $03
    inc bc                                        ; $4337: $03
    inc bc                                        ; $4338: $03
    rlca                                          ; $4339: $07
    rlca                                          ; $433a: $07
    rlca                                          ; $433b: $07
    nop                                           ; $433c: $00
    nop                                           ; $433d: $00
    rst RST_38                                    ; $433e: $ff
    rst RST_38                                    ; $433f: $ff
    rst RST_38                                    ; $4340: $ff
    rst RST_38                                    ; $4341: $ff
    rst RST_38                                    ; $4342: $ff
    rst RST_38                                    ; $4343: $ff
    nop                                           ; $4344: $00
    nop                                           ; $4345: $00
    db $fc                                        ; $4346: $fc
    db $fc                                        ; $4347: $fc
    db $fc                                        ; $4348: $fc
    ld hl, sp-$08                                 ; $4349: $f8 $f8
    ld hl, sp+$00                                 ; $434b: $f8 $00
    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    nop                                           ; $434f: $00
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    ld bc, $0f0f                                  ; $4352: $01 $0f $0f
    rrca                                          ; $4355: $0f
    rra                                           ; $4356: $1f
    rra                                           ; $4357: $1f
    ccf                                           ; $4358: $3f
    ld a, a                                       ; $4359: $7f
    rst RST_38                                    ; $435a: $ff
    rst RST_38                                    ; $435b: $ff
    rst RST_38                                    ; $435c: $ff
    rst RST_38                                    ; $435d: $ff
    rst RST_38                                    ; $435e: $ff
    rst RST_38                                    ; $435f: $ff
    rst RST_38                                    ; $4360: $ff
    rst RST_38                                    ; $4361: $ff
    cp $f8                                        ; $4362: $fe $f8
    ldh a, [$fff0]                                ; $4364: $f0 $f0
    ldh [$ffe0], a                                ; $4366: $e0 $e0
    ret nz                                        ; $4368: $c0

    add b                                         ; $4369: $80
    nop                                           ; $436a: $00
    nop                                           ; $436b: $00
    nop                                           ; $436c: $00
    inc bc                                        ; $436d: $03
    rrca                                          ; $436e: $0f
    rra                                           ; $436f: $1f
    ccf                                           ; $4370: $3f
    ld a, a                                       ; $4371: $7f
    ld a, a                                       ; $4372: $7f
    rst RST_38                                    ; $4373: $ff
    rst RST_38                                    ; $4374: $ff
    rst RST_38                                    ; $4375: $ff
    rst RST_38                                    ; $4376: $ff
    rst RST_38                                    ; $4377: $ff
    rst RST_38                                    ; $4378: $ff
    rst RST_38                                    ; $4379: $ff
    rst RST_38                                    ; $437a: $ff
    rst RST_38                                    ; $437b: $ff
    rst RST_38                                    ; $437c: $ff
    ld hl, sp-$20                                 ; $437d: $f8 $e0
    ret nz                                        ; $437f: $c0

    add b                                         ; $4380: $80
    add b                                         ; $4381: $80
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    add b                                         ; $4384: $80
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    nop                                           ; $4389: $00
    nop                                           ; $438a: $00
    nop                                           ; $438b: $00
    nop                                           ; $438c: $00
    ld bc, $0101                                  ; $438d: $01 $01 $01
    inc bc                                        ; $4390: $03
    inc bc                                        ; $4391: $03
    inc bc                                        ; $4392: $03
    nop                                           ; $4393: $00
    rst RST_38                                    ; $4394: $ff
    rst RST_38                                    ; $4395: $ff
    rst RST_38                                    ; $4396: $ff
    rst RST_38                                    ; $4397: $ff
    rst RST_38                                    ; $4398: $ff
    rst RST_38                                    ; $4399: $ff
    rst RST_38                                    ; $439a: $ff
    nop                                           ; $439b: $00
    cp $fe                                        ; $439c: $fe $fe
    cp $fc                                        ; $439e: $fe $fc
    db $fc                                        ; $43a0: $fc
    db $fc                                        ; $43a1: $fc
    db $fc                                        ; $43a2: $fc
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    rra                                           ; $43a5: $1f
    ld e, $1e                                     ; $43a6: $1e $1e
    inc a                                         ; $43a8: $3c
    dec a                                         ; $43a9: $3d
    ccf                                           ; $43aa: $3f
    ccf                                           ; $43ab: $3f
    nop                                           ; $43ac: $00
    rra                                           ; $43ad: $1f
    ld a, $7c                                     ; $43ae: $3e $7c
    ld hl, sp-$0f                                 ; $43b0: $f8 $f1
    pop hl                                        ; $43b2: $e1
    jp $8280                                      ; $43b3: $c3 $80 $82


    add b                                         ; $43b6: $80
    nop                                           ; $43b7: $00
    rra                                           ; $43b8: $1f
    ld a, a                                       ; $43b9: $7f
    rst RST_38                                    ; $43ba: $ff
    di                                            ; $43bb: $f3
    pop hl                                        ; $43bc: $e1
    pop hl                                        ; $43bd: $e1
    pop bc                                        ; $43be: $c1
    nop                                           ; $43bf: $00
    add e                                         ; $43c0: $83
    jp $e7c3                                      ; $43c1: $c3 $c3 $e7


    rst RST_20                                    ; $43c4: $e7
    rst RST_20                                    ; $43c5: $e7
    rst RST_28                                    ; $43c6: $ef
    nop                                           ; $43c7: $00
    pop hl                                        ; $43c8: $e1
    pop hl                                        ; $43c9: $e1
    pop hl                                        ; $43ca: $e1
    db $e3                                        ; $43cb: $e3
    di                                            ; $43cc: $f3
    di                                            ; $43cd: $f3
    ld [hl], a                                    ; $43ce: $77
    nop                                           ; $43cf: $00
    ldh [$ffe0], a                                ; $43d0: $e0 $e0
    pop hl                                        ; $43d2: $e1
    pop bc                                        ; $43d3: $c1
    jp $87c7                                      ; $43d4: $c3 $c7 $87


    nop                                           ; $43d7: $00
    cp $fe                                        ; $43d8: $fe $fe
    cp $de                                        ; $43da: $fe $de
    sbc $9e                                       ; $43dc: $de $9e
    sbc [hl]                                      ; $43de: $9e
    nop                                           ; $43df: $00
    rrca                                          ; $43e0: $0f
    rrca                                          ; $43e1: $0f
    rra                                           ; $43e2: $1f
    rra                                           ; $43e3: $1f
    rra                                           ; $43e4: $1f
    dec a                                         ; $43e5: $3d
    dec a                                         ; $43e6: $3d
    nop                                           ; $43e7: $00
    pop bc                                        ; $43e8: $c1
    jp $c7c3                                      ; $43e9: $c3 $c3 $c7


    rst RST_00                                    ; $43ec: $c7
    rst RST_08                                    ; $43ed: $cf
    adc $00                                       ; $43ee: $ce $00
    db $fc                                        ; $43f0: $fc
    db $fc                                        ; $43f1: $fc
    db $fc                                        ; $43f2: $fc
    ld hl, sp+$78                                 ; $43f3: $f8 $78
    ld a, c                                       ; $43f5: $79
    ld a, c                                       ; $43f6: $79
    nop                                           ; $43f7: $00
    ld a, b                                       ; $43f8: $78
    ld a, b                                       ; $43f9: $78
    ldh a, [$fff0]                                ; $43fa: $f0 $f0
    ldh a, [$ffe0]                                ; $43fc: $f0 $e0
    ldh [$ff7f], a                                ; $43fe: $e0 $7f
    ld a, e                                       ; $4400: $7b
    ld a, e                                       ; $4401: $7b
    ld sp, hl                                     ; $4402: $f9
    pop af                                        ; $4403: $f1
    ldh a, [$fff0]                                ; $4404: $f0 $f0
    nop                                           ; $4406: $00
    add e                                         ; $4407: $83
    jp $e3c3                                      ; $4408: $c3 $c3 $e3


    pop hl                                        ; $440b: $e1
    pop af                                        ; $440c: $f1
    ldh a, [rP1]                                  ; $440d: $f0 $00
    pop bc                                        ; $440f: $c1
    jp $e7c3                                      ; $4410: $c3 $c3 $e7


    rst RST_38                                    ; $4413: $ff
    rst RST_38                                    ; $4414: $ff
    db $fc                                        ; $4415: $fc
    nop                                           ; $4416: $00
    rst RST_28                                    ; $4417: $ef
    rst RST_08                                    ; $4418: $cf
    sbc $9e                                       ; $4419: $de $9e
    sbc [hl]                                      ; $441b: $9e
    inc a                                         ; $441c: $3c
    inc a                                         ; $441d: $3c
    nop                                           ; $441e: $00
    ld [hl], a                                    ; $441f: $77
    ld [hl], a                                    ; $4420: $77
    ld a, a                                       ; $4421: $7f
    ccf                                           ; $4422: $3f
    ccf                                           ; $4423: $3f
    ld a, $3e                                     ; $4424: $3e $3e
    nop                                           ; $4426: $00

jr_006_4427:
    adc a                                         ; $4427: $8f
    sbc a                                         ; $4428: $9f
    rra                                           ; $4429: $1f
    ccf                                           ; $442a: $3f
    ld a, b                                       ; $442b: $78
    ld a, b                                       ; $442c: $78
    ldh a, [rP1]                                  ; $442d: $f0 $00
    ld e, $fe                                     ; $442f: $1e $fe
    cp $fe                                        ; $4431: $fe $fe
    ld e, $1e                                     ; $4433: $1e $1e
    ld e, $00                                     ; $4435: $1e $00
    add b                                         ; $4437: $80
    add d                                         ; $4438: $82
    jr z, jr_006_4478                             ; $4439: $28 $3d

    ld a, c                                       ; $443b: $79
    ld a, c                                       ; $443c: $79
    ld a, c                                       ; $443d: $79
    pop af                                        ; $443e: $f1
    pop af                                        ; $443f: $f1
    pop af                                        ; $4440: $f1
    nop                                           ; $4441: $00
    sbc $dc                                       ; $4442: $de $dc
    db $fc                                        ; $4444: $fc
    ld hl, sp-$07                                 ; $4445: $f8 $f9
    pop af                                        ; $4447: $f1
    pop af                                        ; $4448: $f1
    nop                                           ; $4449: $00
    pop af                                        ; $444a: $f1
    di                                            ; $444b: $f3
    di                                            ; $444c: $f3
    di                                            ; $444d: $f3
    rst RST_20                                    ; $444e: $e7
    rst RST_20                                    ; $444f: $e7
    rst RST_20                                    ; $4450: $e7
    nop                                           ; $4451: $00
    pop hl                                        ; $4452: $e1
    jp nz, $c5c5                                  ; $4453: $c2 $c5 $c5

    add l                                         ; $4456: $85
    add l                                         ; $4457: $85
    add d                                         ; $4458: $82
    ld bc, $10e0                                  ; $4459: $01 $e0 $10
    ret z                                         ; $445c: $c8

    jr z, jr_006_4427                             ; $445d: $28 $c8

    jr z, jr_006_4471                             ; $445f: $28 $10

    ldh [rP1], a                                  ; $4461: $e0 $00
    and h                                         ; $4463: $a4
    sbc b                                         ; $4464: $98
    add b                                         ; $4465: $80
    inc bc                                        ; $4466: $03
    ld b, b                                       ; $4467: $40
    inc e                                         ; $4468: $1c
    nop                                           ; $4469: $00
    add b                                         ; $446a: $80
    inc b                                         ; $446b: $04
    ld b, e                                       ; $446c: $43
    ld a, [de]                                    ; $446d: $1a
    nop                                           ; $446e: $00
    add b                                         ; $446f: $80
    inc b                                         ; $4470: $04

jr_006_4471:
    ld b, a                                       ; $4471: $47
    add b                                         ; $4472: $80
    inc bc                                        ; $4473: $03
    ld c, [hl]                                    ; $4474: $4e
    add b                                         ; $4475: $80
    dec bc                                        ; $4476: $0b
    ld e, h                                       ; $4477: $5c

jr_006_4478:
    ld c, $00                                     ; $4478: $0e $00
    add b                                         ; $447a: $80
    inc bc                                        ; $447b: $03
    ld c, e                                       ; $447c: $4b
    add b                                         ; $447d: $80
    inc b                                         ; $447e: $04
    ld d, c                                       ; $447f: $51
    add b                                         ; $4480: $80
    inc c                                         ; $4481: $0c
    ld h, a                                       ; $4482: $67
    rrca                                          ; $4483: $0f
    nop                                           ; $4484: $00
    add b                                         ; $4485: $80
    inc b                                         ; $4486: $04
    ld d, l                                       ; $4487: $55
    dec de                                        ; $4488: $1b
    nop                                           ; $4489: $00
    add b                                         ; $448a: $80
    inc bc                                        ; $448b: $03
    ld e, c                                       ; $448c: $59
    nop                                           ; $448d: $00
    add h                                         ; $448e: $84
    nop                                           ; $448f: $00
    nop                                           ; $4490: $00
    ld a, [hl]                                    ; $4491: $7e
    nop                                           ; $4492: $00
    add b                                         ; $4493: $80
    add h                                         ; $4494: $84
    inc c                                         ; $4495: $0c
    inc a                                         ; $4496: $3c
    ld a, [hl]                                    ; $4497: $7e
    ld h, [hl]                                    ; $4498: $66
    ld h, [hl]                                    ; $4499: $66
    ld h, [hl]                                    ; $449a: $66
    ld h, [hl]                                    ; $449b: $66
    ld h, [hl]                                    ; $449c: $66
    ld h, [hl]                                    ; $449d: $66
    ld h, [hl]                                    ; $449e: $66
    ld h, [hl]                                    ; $449f: $66
    ld a, [hl]                                    ; $44a0: $7e
    inc a                                         ; $44a1: $3c
    add c                                         ; $44a2: $81
    ld a, [hl]                                    ; $44a3: $7e
    dec b                                         ; $44a4: $05
    nop                                           ; $44a5: $00
    sub e                                         ; $44a6: $93
    inc a                                         ; $44a7: $3c

jr_006_44a8:
    nop                                           ; $44a8: $00
    db $fc                                        ; $44a9: $fc
    jr jr_006_44a8                                ; $44aa: $18 $fc

    ld a, b                                       ; $44ac: $78
    db $fc                                        ; $44ad: $fc
    ld a, b                                       ; $44ae: $78
    db $fc                                        ; $44af: $fc
    jr jr_006_44ee                                ; $44b0: $18 $3c

    jr jr_006_44f0                                ; $44b2: $18 $3c

    jr jr_006_44f2                                ; $44b4: $18 $3c

    jr jr_006_44f4                                ; $44b6: $18 $3c

    jr jr_006_44f6                                ; $44b8: $18 $3c

    add b                                         ; $44ba: $80
    add l                                         ; $44bb: $85
    inc b                                         ; $44bc: $04
    jr jr_006_44d7                                ; $44bd: $18 $18

    ld a, [hl]                                    ; $44bf: $7e
    ld a, [hl]                                    ; $44c0: $7e
    dec b                                         ; $44c1: $05
    nop                                           ; $44c2: $00
    add d                                         ; $44c3: $82
    ld a, [hl]                                    ; $44c4: $7e
    nop                                           ; $44c5: $00
    add b                                         ; $44c6: $80
    add h                                         ; $44c7: $84
    dec b                                         ; $44c8: $05
    inc a                                         ; $44c9: $3c
    ld a, [hl]                                    ; $44ca: $7e
    ld h, [hl]                                    ; $44cb: $66
    ld h, [hl]                                    ; $44cc: $66
    ld b, $87                                     ; $44cd: $06 $87
    ccf                                           ; $44cf: $3f
    inc c                                         ; $44d0: $0c
    ld a, [hl]                                    ; $44d1: $7e

jr_006_44d2:
    inc e                                         ; $44d2: $1c
    ld a, [hl]                                    ; $44d3: $7e
    jr c, jr_006_44d2                             ; $44d4: $38 $fc

    add b                                         ; $44d6: $80

jr_006_44d7:
    add l                                         ; $44d7: $85
    inc b                                         ; $44d8: $04
    jr nc, jr_006_454b                            ; $44d9: $30 $70

    ld a, [hl]                                    ; $44db: $7e
    ld a, [hl]                                    ; $44dc: $7e
    dec b                                         ; $44dd: $05
    nop                                           ; $44de: $00
    add d                                         ; $44df: $82
    ld a, [hl]                                    ; $44e0: $7e
    nop                                           ; $44e1: $00
    add b                                         ; $44e2: $80
    add h                                         ; $44e3: $84
    dec b                                         ; $44e4: $05
    inc a                                         ; $44e5: $3c
    ld a, [hl]                                    ; $44e6: $7e
    ld h, [hl]                                    ; $44e7: $66
    ld h, [hl]                                    ; $44e8: $66
    ld b, $83                                     ; $44e9: $06 $83
    ld a, a                                       ; $44eb: $7f
    inc e                                         ; $44ec: $1c
    ld a, a                                       ; $44ed: $7f

jr_006_44ee:
    add b                                         ; $44ee: $80
    add l                                         ; $44ef: $85

jr_006_44f0:
    dec b                                         ; $44f0: $05
    inc e                                         ; $44f1: $1c

jr_006_44f2:
    ld b, $66                                     ; $44f2: $06 $66

jr_006_44f4:
    ld h, [hl]                                    ; $44f4: $66
    ld a, [hl]                                    ; $44f5: $7e

jr_006_44f6:
    add d                                         ; $44f6: $82
    inc a                                         ; $44f7: $3c
    ld a, [hl]                                    ; $44f8: $7e
    dec b                                         ; $44f9: $05
    nop                                           ; $44fa: $00
    adc a                                         ; $44fb: $8f
    ld e, $00                                     ; $44fc: $1e $00
    ld e, $0c                                     ; $44fe: $1e $0c
    ld a, $0c                                     ; $4500: $3e $0c
    ld a, $1c                                     ; $4502: $3e $1c
    ld a, $1c                                     ; $4504: $3e $1c
    ld a, [hl]                                    ; $4506: $7e
    inc e                                         ; $4507: $1c
    ld a, [hl]                                    ; $4508: $7e
    inc a                                         ; $4509: $3c
    cp $80                                        ; $450a: $fe $80
    add l                                         ; $450c: $85
    inc b                                         ; $450d: $04
    inc a                                         ; $450e: $3c
    ld l, h                                       ; $450f: $6c
    ld a, [hl]                                    ; $4510: $7e
    ld a, [hl]                                    ; $4511: $7e
    add h                                         ; $4512: $84
    inc c                                         ; $4513: $0c
    ld e, $0c                                     ; $4514: $1e $0c
    ld e, $05                                     ; $4516: $1e $05
    nop                                           ; $4518: $00
    adc c                                         ; $4519: $89
    rst RST_38                                    ; $451a: $ff
    nop                                           ; $451b: $00
    rst RST_38                                    ; $451c: $ff
    ld a, [hl]                                    ; $451d: $7e
    rst RST_38                                    ; $451e: $ff
    ld a, [hl]                                    ; $451f: $7e
    rst RST_38                                    ; $4520: $ff
    ld h, b                                       ; $4521: $60
    cp $80                                        ; $4522: $fe $80
    add l                                         ; $4524: $85
    ld [$7c60], sp                                ; $4525: $08 $60 $7c
    ld a, [hl]                                    ; $4528: $7e
    ld h, [hl]                                    ; $4529: $66
    ld b, $06                                     ; $452a: $06 $06
    ld h, [hl]                                    ; $452c: $66
    ld a, [hl]                                    ; $452d: $7e
    add d                                         ; $452e: $82
    inc a                                         ; $452f: $3c
    ld a, [hl]                                    ; $4530: $7e
    dec b                                         ; $4531: $05
    nop                                           ; $4532: $00
    add d                                         ; $4533: $82
    ld a, [hl]                                    ; $4534: $7e
    nop                                           ; $4535: $00
    add b                                         ; $4536: $80
    add h                                         ; $4537: $84
    inc c                                         ; $4538: $0c
    inc a                                         ; $4539: $3c
    ld a, [hl]                                    ; $453a: $7e
    ld h, [hl]                                    ; $453b: $66
    ld h, b                                       ; $453c: $60
    ld a, h                                       ; $453d: $7c
    ld a, [hl]                                    ; $453e: $7e
    ld h, [hl]                                    ; $453f: $66
    ld h, [hl]                                    ; $4540: $66
    ld h, [hl]                                    ; $4541: $66
    ld h, [hl]                                    ; $4542: $66
    ld a, [hl]                                    ; $4543: $7e
    inc a                                         ; $4544: $3c
    add c                                         ; $4545: $81
    ld a, [hl]                                    ; $4546: $7e
    dec b                                         ; $4547: $05
    nop                                           ; $4548: $00
    add d                                         ; $4549: $82
    rst RST_38                                    ; $454a: $ff

jr_006_454b:
    nop                                           ; $454b: $00
    add b                                         ; $454c: $80
    add h                                         ; $454d: $84
    dec b                                         ; $454e: $05
    ld a, [hl]                                    ; $454f: $7e
    ld a, [hl]                                    ; $4550: $7e
    ld h, [hl]                                    ; $4551: $66
    ld h, [hl]                                    ; $4552: $66
    ld c, $8f                                     ; $4553: $0e $8f
    ccf                                           ; $4555: $3f
    inc c                                         ; $4556: $0c
    ld a, $1c                                     ; $4557: $3e $1c
    ld a, $18                                     ; $4559: $3e $18
    inc a                                         ; $455b: $3c
    jr jr_006_459a                                ; $455c: $18 $3c

    jr jr_006_459c                                ; $455e: $18 $3c

    jr @+$3e                                      ; $4560: $18 $3c

    jr jr_006_45a0                                ; $4562: $18 $3c

    dec b                                         ; $4564: $05
    nop                                           ; $4565: $00
    add d                                         ; $4566: $82
    ld a, [hl]                                    ; $4567: $7e
    nop                                           ; $4568: $00
    add b                                         ; $4569: $80
    add h                                         ; $456a: $84
    inc c                                         ; $456b: $0c
    inc a                                         ; $456c: $3c
    ld a, [hl]                                    ; $456d: $7e
    ld h, [hl]                                    ; $456e: $66
    ld h, [hl]                                    ; $456f: $66
    ld h, [hl]                                    ; $4570: $66
    inc a                                         ; $4571: $3c
    inc a                                         ; $4572: $3c
    ld h, [hl]                                    ; $4573: $66
    ld h, [hl]                                    ; $4574: $66
    ld h, [hl]                                    ; $4575: $66
    ld a, [hl]                                    ; $4576: $7e
    inc a                                         ; $4577: $3c
    add c                                         ; $4578: $81
    ld a, [hl]                                    ; $4579: $7e
    dec b                                         ; $457a: $05
    nop                                           ; $457b: $00
    add d                                         ; $457c: $82
    ld a, [hl]                                    ; $457d: $7e
    nop                                           ; $457e: $00
    add b                                         ; $457f: $80
    add h                                         ; $4580: $84
    inc c                                         ; $4581: $0c
    inc a                                         ; $4582: $3c
    ld a, [hl]                                    ; $4583: $7e
    ld h, [hl]                                    ; $4584: $66
    ld h, [hl]                                    ; $4585: $66
    ld h, [hl]                                    ; $4586: $66
    ld h, [hl]                                    ; $4587: $66
    ld a, [hl]                                    ; $4588: $7e
    ld a, $06                                     ; $4589: $3e $06
    ld h, [hl]                                    ; $458b: $66
    ld a, [hl]                                    ; $458c: $7e
    inc a                                         ; $458d: $3c
    add c                                         ; $458e: $81
    ld a, [hl]                                    ; $458f: $7e
    inc bc                                        ; $4590: $03
    nop                                           ; $4591: $00
    inc b                                         ; $4592: $04
    nop                                           ; $4593: $00
    add c                                         ; $4594: $81
    ld b, d                                       ; $4595: $42
    inc bc                                        ; $4596: $03
    ld h, [hl]                                    ; $4597: $66
    inc b                                         ; $4598: $04
    ld a, [hl]                                    ; $4599: $7e

jr_006_459a:
    add d                                         ; $459a: $82
    ld h, [hl]                                    ; $459b: $66

jr_006_459c:
    ld a, [hl]                                    ; $459c: $7e
    ld c, $66                                     ; $459d: $0e $66
    inc b                                         ; $459f: $04

jr_006_45a0:
    nop                                           ; $45a0: $00
    add h                                         ; $45a1: $84
    ld a, a                                       ; $45a2: $7f
    ld a, a                                       ; $45a3: $7f
    rst RST_38                                    ; $45a4: $ff
    rst RST_38                                    ; $45a5: $ff
    inc c                                         ; $45a6: $0c
    ret nz                                        ; $45a7: $c0

    stop                                          ; $45a8: $10 $00
    nop                                           ; $45aa: $00
    ld b, $00                                     ; $45ab: $06 $00
    add b                                         ; $45ad: $80
    add e                                         ; $45ae: $83
    dec c                                         ; $45af: $0d
    rlca                                          ; $45b0: $07
    rrca                                          ; $45b1: $0f
    rra                                           ; $45b2: $1f
    rra                                           ; $45b3: $1f
    rra                                           ; $45b4: $1f
    ld e, $1e                                     ; $45b5: $1e $1e
    ld e, $1e                                     ; $45b7: $1e $1e
    ld e, $1e                                     ; $45b9: $1e $1e
    ld e, $1e                                     ; $45bb: $1e $1e
    ld b, $00                                     ; $45bd: $06 $00
    ld [$12ff], sp                                ; $45bf: $08 $ff $12
    nop                                           ; $45c2: $00
    nop                                           ; $45c3: $00
    ld [$9200], sp                                ; $45c4: $08 $00 $92
    rrca                                          ; $45c7: $0f
    rrca                                          ; $45c8: $0f
    db $10                                        ; $45c9: $10
    db $10                                        ; $45ca: $10
    ld [hl], b                                    ; $45cb: $70
    ld [hl], b                                    ; $45cc: $70

jr_006_45cd:
    ld b, e                                       ; $45cd: $43
    ld b, d                                       ; $45ce: $42
    ld b, a                                       ; $45cf: $47
    ld b, d                                       ; $45d0: $42
    ld [hl], l                                    ; $45d1: $75
    ld b, a                                       ; $45d2: $47
    ld [hl], e                                    ; $45d3: $73
    ld [hl], l                                    ; $45d4: $75
    rra                                           ; $45d5: $1f
    ld de, $0f0f                                  ; $45d6: $11 $0f $0f
    ld c, $00                                     ; $45d9: $0e $00
    adc d                                         ; $45db: $8a
    db $fc                                        ; $45dc: $fc
    db $fc                                        ; $45dd: $fc
    jp nz, Jump_006_7e42                          ; $45de: $c2 $42 $7e

    ld b, d                                       ; $45e1: $42
    ld a, h                                       ; $45e2: $7c
    ld a, h                                       ; $45e3: $7c
    ret nz                                        ; $45e4: $c0

    ld b, b                                       ; $45e5: $40
    inc bc                                        ; $45e6: $03
    ret nz                                        ; $45e7: $c0

    add l                                         ; $45e8: $85
    ld b, b                                       ; $45e9: $40
    ret nz                                        ; $45ea: $c0

    ld b, b                                       ; $45eb: $40
    add b                                         ; $45ec: $80
    add b                                         ; $45ed: $80
    ld b, $00                                     ; $45ee: $06 $00
    nop                                           ; $45f0: $00
    inc b                                         ; $45f1: $04
    nop                                           ; $45f2: $00
    add b                                         ; $45f3: $80
    add e                                         ; $45f4: $83
    inc b                                         ; $45f5: $04

jr_006_45f6:
    jr nc, jr_006_45f6                            ; $45f6: $30 $fe

    cp $30                                        ; $45f8: $fe $30
    sub b                                         ; $45fa: $90
    ld a, $36                                     ; $45fb: $3e $36
    ld a, a                                       ; $45fd: $7f
    ld a, [hl]                                    ; $45fe: $7e
    rst RST_30                                    ; $45ff: $f7
    rst RST_30                                    ; $4600: $f7
    rst RST_38                                    ; $4601: $ff
    rst RST_18                                    ; $4602: $df
    rst RST_18                                    ; $4603: $df
    db $db                                        ; $4604: $db
    db $db                                        ; $4605: $db
    ei                                            ; $4606: $fb
    ei                                            ; $4607: $fb
    rst RST_30                                    ; $4608: $f7
    halt                                          ; $4609: $76
    ld h, [hl]                                    ; $460a: $66
    inc c                                         ; $460b: $0c
    nop                                           ; $460c: $00
    add b                                         ; $460d: $80
    add e                                         ; $460e: $83
    ld a, [bc]                                    ; $460f: $0a
    ret nz                                        ; $4610: $c0

    add $c6                                       ; $4611: $c6 $c6
    jp $c3c3                                      ; $4613: $c3 $c3 $c3


    jp $f0f0                                      ; $4616: $c3 $f0 $f0


    ld h, b                                       ; $4619: $60
    ld [$8a00], sp                                ; $461a: $08 $00 $8a
    jr c, jr_006_464f                             ; $461d: $38 $30

    jr c, @+$3a                                   ; $461f: $38 $38

    ld a, [de]                                    ; $4621: $1a
    inc e                                         ; $4622: $1c
    ld a, a                                       ; $4623: $7f
    ld a, [hl]                                    ; $4624: $7e
    halt                                          ; $4625: $76
    ld h, e                                       ; $4626: $63
    ld b, $03                                     ; $4627: $06 $03
    adc b                                         ; $4629: $88
    rlca                                          ; $462a: $07
    ld [bc], a                                    ; $462b: $02
    ld c, $06                                     ; $462c: $0e $06
    inc a                                         ; $462e: $3c
    inc a                                         ; $462f: $3c
    jr c, jr_006_4662                             ; $4630: $38 $30

    ld [$8a00], sp                                ; $4632: $08 $00 $8a
    jr nc, @+$32                                  ; $4635: $30 $30

    jr c, jr_006_4671                             ; $4637: $38 $38

    ld e, $1e                                     ; $4639: $1e $1e
    rst RST_38                                    ; $463b: $ff
    ld a, a                                       ; $463c: $7f
    di                                            ; $463d: $f3
    ld h, e                                       ; $463e: $63
    add b                                         ; $463f: $80
    add e                                         ; $4640: $83
    inc b                                         ; $4641: $04
    rlca                                          ; $4642: $07
    ld c, $1c                                     ; $4643: $0e $1c
    jr c, jr_006_45cd                             ; $4645: $38 $86

    ld a, [hl]                                    ; $4647: $7e
    ld a, h                                       ; $4648: $7c
    rst RST_38                                    ; $4649: $ff
    rst RST_28                                    ; $464a: $ef
    jp Jump_000_08c3                              ; $464b: $c3 $c3 $08


    nop                                           ; $464e: $00

jr_006_464f:
    inc b                                         ; $464f: $04
    dec de                                        ; $4650: $1b
    sub h                                         ; $4651: $94
    ld a, a                                       ; $4652: $7f
    ld a, a                                       ; $4653: $7f
    ld a, [hl]                                    ; $4654: $7e
    ld a, [hl]                                    ; $4655: $7e
    jr jr_006_4670                                ; $4656: $18 $18

    ld a, $1e                                     ; $4658: $3e $1e
    ld a, a                                       ; $465a: $7f
    ld a, a                                       ; $465b: $7f
    rst RST_38                                    ; $465c: $ff
    ei                                            ; $465d: $fb
    db $db                                        ; $465e: $db
    db $db                                        ; $465f: $db
    ei                                            ; $4660: $fb
    db $db                                        ; $4661: $db

jr_006_4662:
    rst RST_38                                    ; $4662: $ff
    rst RST_30                                    ; $4663: $f7
    halt                                          ; $4664: $76
    ld h, [hl]                                    ; $4665: $66
    ld b, $00                                     ; $4666: $06 $00
    add b                                         ; $4668: $80
    add e                                         ; $4669: $83
    inc b                                         ; $466a: $04
    ld b, $67                                     ; $466b: $06 $67
    ld h, e                                       ; $466d: $63
    ei                                            ; $466e: $fb
    add d                                         ; $466f: $82

jr_006_4670:
    rst RST_38                                    ; $4670: $ff

jr_006_4671:
    rst RST_38                                    ; $4671: $ff
    ld [$886c], sp                                ; $4672: $08 $6c $88
    call z, $ccec                                 ; $4675: $cc $ec $cc
    call z, Call_000_1c1c                         ; $4678: $cc $1c $1c
    jr jr_006_4695                                ; $467b: $18 $18

    ld [$8000], sp                                ; $467d: $08 $00 $80
    add e                                         ; $4680: $83
    add hl, bc                                    ; $4681: $09
    jr jr_006_4702                                ; $4682: $18 $7e

    ld a, [hl]                                    ; $4684: $7e
    inc c                                         ; $4685: $0c
    ccf                                           ; $4686: $3f
    ccf                                           ; $4687: $3f
    ld b, $ce                                     ; $4688: $06 $ce
    adc $86                                       ; $468a: $ce $86
    ld h, b                                       ; $468c: $60
    ret nz                                        ; $468d: $c0

    ld a, b                                       ; $468e: $78
    ld a, b                                       ; $468f: $78
    jr jr_006_46ca                                ; $4690: $18 $38

    ld [$8000], sp                                ; $4692: $08 $00 $80

jr_006_4695:
    add e                                         ; $4695: $83
    inc c                                         ; $4696: $0c
    inc bc                                        ; $4697: $03
    rlca                                          ; $4698: $07
    ld c, $1c                                     ; $4699: $0e $1c
    jr c, @+$72                                   ; $469b: $38 $70

    ld [hl], b                                    ; $469d: $70
    jr c, jr_006_46bc                             ; $469e: $38 $1c

    ld c, $07                                     ; $46a0: $0e $07
    inc bc                                        ; $46a2: $03
    ld [$0400], sp                                ; $46a3: $08 $00 $04
    add $04                                       ; $46a6: $c6 $04
    rst RST_18                                    ; $46a8: $df
    inc c                                         ; $46a9: $0c
    add $84                                       ; $46aa: $c6 $84
    db $ec                                        ; $46ac: $ec
    ld l, [hl]                                    ; $46ad: $6e
    ld l, [hl]                                    ; $46ae: $6e
    inc l                                         ; $46af: $2c
    ld a, [bc]                                    ; $46b0: $0a
    nop                                           ; $46b1: $00
    add [hl]                                      ; $46b2: $86
    ld a, [hl]                                    ; $46b3: $7e
    ld a, [hl]                                    ; $46b4: $7e
    ld a, a                                       ; $46b5: $7f
    ld a, a                                       ; $46b6: $7f
    inc bc                                        ; $46b7: $03
    inc bc                                        ; $46b8: $03
    ld a, [bc]                                    ; $46b9: $0a
    nop                                           ; $46ba: $00
    add [hl]                                      ; $46bb: $86

jr_006_46bc:
    ld h, b                                       ; $46bc: $60
    ld h, b                                       ; $46bd: $60
    ld a, a                                       ; $46be: $7f
    ld a, a                                       ; $46bf: $7f
    ccf                                           ; $46c0: $3f
    ccf                                           ; $46c1: $3f
    ld [$0400], sp                                ; $46c2: $08 $00 $04
    ld a, a                                       ; $46c5: $7f
    db $10                                        ; $46c6: $10
    inc bc                                        ; $46c7: $03
    inc b                                         ; $46c8: $04
    ld a, a                                       ; $46c9: $7f

jr_006_46ca:
    ld a, [bc]                                    ; $46ca: $0a
    nop                                           ; $46cb: $00
    ld a, [bc]                                    ; $46cc: $0a
    ld h, b                                       ; $46cd: $60
    ld b, $63                                     ; $46ce: $06 $63
    add [hl]                                      ; $46d0: $86
    ld [hl], a                                    ; $46d1: $77
    ld h, e                                       ; $46d2: $63
    ld a, a                                       ; $46d3: $7f
    ld a, $3e                                     ; $46d4: $3e $3e
    inc e                                         ; $46d6: $1c
    ld [$0400], sp                                ; $46d7: $08 $00 $04
    ld b, $04                                     ; $46da: $06 $04
    rst RST_38                                    ; $46dc: $ff
    add b                                         ; $46dd: $80
    add e                                         ; $46de: $83
    dec b                                         ; $46df: $05
    ld e, $3e                                     ; $46e0: $1e $3e
    ld [hl], $3e                                  ; $46e2: $36 $3e
    ld e, $86                                     ; $46e4: $1e $86
    ld c, $06                                     ; $46e6: $0e $06
    ld a, $3c                                     ; $46e8: $3e $3c
    inc a                                         ; $46ea: $3c
    jr c, jr_006_46f7                             ; $46eb: $38 $0a

    nop                                           ; $46ed: $00
    inc b                                         ; $46ee: $04
    ld h, [hl]                                    ; $46ef: $66
    inc b                                         ; $46f0: $04
    rst RST_38                                    ; $46f1: $ff
    inc b                                         ; $46f2: $04
    ld h, [hl]                                    ; $46f3: $66
    ld b, $60                                     ; $46f4: $06 $60
    add h                                         ; $46f6: $84

jr_006_46f7:
    ld a, [hl]                                    ; $46f7: $7e
    ld a, [hl]                                    ; $46f8: $7e
    ld a, $3e                                     ; $46f9: $3e $3e
    ld [$8600], sp                                ; $46fb: $08 $00 $86
    ld h, e                                       ; $46fe: $63
    ld h, e                                       ; $46ff: $63
    ld [hl], a                                    ; $4700: $77
    ld h, e                                       ; $4701: $63

jr_006_4702:
    ld [hl], $36                                  ; $4702: $36 $36
    inc b                                         ; $4704: $04
    ld a, a                                       ; $4705: $7f
    add h                                         ; $4706: $84
    inc e                                         ; $4707: $1c
    jr jr_006_4742                                ; $4708: $18 $38

jr_006_470a:
    db $10                                        ; $470a: $10
    inc b                                         ; $470b: $04
    jr nc, @-$78                                  ; $470c: $30 $86

    jr c, @+$32                                   ; $470e: $38 $30

    ld a, $1e                                     ; $4710: $3e $1e
    ld e, $0e                                     ; $4712: $1e $0e
    ld [$0400], sp                                ; $4714: $08 $00 $04
    ld h, b                                       ; $4717: $60
    inc b                                         ; $4718: $04
    ld hl, sp-$79                                 ; $4719: $f8 $87
    ld h, b                                       ; $471b: $60
    ld h, b                                       ; $471c: $60
    ld l, a                                       ; $471d: $6f
    ld l, [hl]                                    ; $471e: $6e
    ld l, a                                       ; $471f: $6f
    ld l, a                                       ; $4720: $6f
    ld h, c                                       ; $4721: $61
    inc bc                                        ; $4722: $03
    ld h, b                                       ; $4723: $60
    add d                                         ; $4724: $82
    ld l, b                                       ; $4725: $68
    ld h, b                                       ; $4726: $60
    inc bc                                        ; $4727: $03
    ld l, a                                       ; $4728: $6f
    add c                                         ; $4729: $81
    ld h, a                                       ; $472a: $67
    ld [$8000], sp                                ; $472b: $08 $00 $80
    add e                                         ; $472e: $83
    add hl, bc                                    ; $472f: $09
    jr jr_006_470a                                ; $4730: $18 $d8

    ret c                                         ; $4732: $d8

    ret c                                         ; $4733: $d8

    ret c                                         ; $4734: $d8

    ret c                                         ; $4735: $d8

    db $db                                        ; $4736: $db
    db $db                                        ; $4737: $db
    db $db                                        ; $4738: $db
    add [hl]                                      ; $4739: $86
    db $db                                        ; $473a: $db
    rst RST_18                                    ; $473b: $df
    sbc $de                                       ; $473c: $de $de
    call c, Call_000_0ad8                         ; $473e: $dc $d8 $0a
    nop                                           ; $4741: $00

jr_006_4742:
    add [hl]                                      ; $4742: $86
    ld e, $1c                                     ; $4743: $1e $1c
    ld a, a                                       ; $4745: $7f
    cp $73                                        ; $4746: $fe $73
    db $e3                                        ; $4748: $e3
    inc b                                         ; $4749: $04
    inc bc                                        ; $474a: $03
    add c                                         ; $474b: $81
    rlca                                          ; $474c: $07
    inc bc                                        ; $474d: $03
    ld b, $86                                     ; $474e: $06 $86
    ld c, $0c                                     ; $4750: $0e $0c
    inc a                                         ; $4752: $3c
    inc a                                         ; $4753: $3c
    jr c, jr_006_4786                             ; $4754: $38 $30

    inc c                                         ; $4756: $0c
    nop                                           ; $4757: $00
    inc b                                         ; $4758: $04
    rst RST_38                                    ; $4759: $ff
    add [hl]                                      ; $475a: $86
    ld e, $0c                                     ; $475b: $1e $0c
    jr jr_006_4777                                ; $475d: $18 $18

    jr c, jr_006_4771                             ; $475f: $38 $10

    ld b, $30                                     ; $4761: $06 $30
    add [hl]                                      ; $4763: $86
    jr c, jr_006_477e                             ; $4764: $38 $18

    ld e, $1e                                     ; $4766: $1e $1e
    ld c, $06                                     ; $4768: $0e $06
    ld [$0600], sp                                ; $476a: $08 $00 $06
    ld h, b                                       ; $476d: $60
    add h                                         ; $476e: $84
    ld h, a                                       ; $476f: $67
    ld h, e                                       ; $4770: $63

jr_006_4771:
    ld a, a                                       ; $4771: $7f
    ld l, a                                       ; $4772: $6f
    add b                                         ; $4773: $80
    add e                                         ; $4774: $83
    inc b                                         ; $4775: $04
    ld a, h                                       ; $4776: $7c

jr_006_4777:
    jr nc, jr_006_47d9                            ; $4777: $30 $60

    ld h, b                                       ; $4779: $60
    add [hl]                                      ; $477a: $86
    ld [hl], b                                    ; $477b: $70
    ld h, b                                       ; $477c: $60
    ccf                                           ; $477d: $3f

jr_006_477e:
    ccf                                           ; $477e: $3f
    rra                                           ; $477f: $1f
    rra                                           ; $4780: $1f
    ld [$8000], sp                                ; $4781: $08 $00 $80
    add e                                         ; $4784: $83
    inc c                                         ; $4785: $0c

jr_006_4786:
    ld h, [hl]                                    ; $4786: $66
    ld h, a                                       ; $4787: $67
    ei                                            ; $4788: $fb
    ei                                            ; $4789: $fb
    ld h, b                                       ; $478a: $60
    ld h, [hl]                                    ; $478b: $66
    ld h, [hl]                                    ; $478c: $66
    ld e, $3f                                     ; $478d: $1e $3f
    scf                                           ; $478f: $37
    ld a, $1c                                     ; $4790: $3e $1c
    ld a, [bc]                                    ; $4792: $0a
    nop                                           ; $4793: $00
    add a                                         ; $4794: $87
    ret nz                                        ; $4795: $c0

    ret nz                                        ; $4796: $c0

    rst RST_18                                    ; $4797: $df
    sbc $df                                       ; $4798: $de $df
    rst RST_18                                    ; $479a: $df
    pop bc                                        ; $479b: $c1
    add hl, bc                                    ; $479c: $09
    ret nz                                        ; $479d: $c0

    add d                                         ; $479e: $82

jr_006_479f:
    ret nc                                        ; $479f: $d0

    ret nz                                        ; $47a0: $c0

    inc bc                                        ; $47a1: $03
    rst RST_18                                    ; $47a2: $df
    add c                                         ; $47a3: $81
    rst RST_08                                    ; $47a4: $cf
    ld [$0a00], sp                                ; $47a5: $08 $00 $0a
    ld h, b                                       ; $47a8: $60

jr_006_47a9:
    add [hl]                                      ; $47a9: $86
    ld a, b                                       ; $47aa: $78
    ld [hl], b                                    ; $47ab: $70
    ld a, [hl]                                    ; $47ac: $7e
    ld a, h                                       ; $47ad: $7c
    ld a, a                                       ; $47ae: $7f
    ld l, a                                       ; $47af: $6f
    add b                                         ; $47b0: $80
    add e                                         ; $47b1: $83
    inc b                                         ; $47b2: $04
    ld h, e                                       ; $47b3: $63
    ld h, b                                       ; $47b4: $60
    ld h, b                                       ; $47b5: $60
    ld h, b                                       ; $47b6: $60
    ld [$8800], sp                                ; $47b7: $08 $00 $88
    ld h, b                                       ; $47ba: $60
    ld h, b                                       ; $47bb: $60
    ld a, [hl]                                    ; $47bc: $7e
    ld l, [hl]                                    ; $47bd: $6e
    rst RST_38                                    ; $47be: $ff
    rst RST_38                                    ; $47bf: $ff
    ei                                            ; $47c0: $fb
    di                                            ; $47c1: $f3
    inc b                                         ; $47c2: $04
    ld h, e                                       ; $47c3: $63
    add h                                         ; $47c4: $84
    ld l, a                                       ; $47c5: $6f
    ld l, a                                       ; $47c6: $6f
    rst RST_38                                    ; $47c7: $ff
    rst RST_38                                    ; $47c8: $ff
    inc b                                         ; $47c9: $04
    ei                                            ; $47ca: $fb
    add h                                         ; $47cb: $84
    ld a, a                                       ; $47cc: $7f
    ld a, a                                       ; $47cd: $7f
    ld l, [hl]                                    ; $47ce: $6e
    ld l, [hl]                                    ; $47cf: $6e
    ld a, [bc]                                    ; $47d0: $0a
    nop                                           ; $47d1: $00
    add [hl]                                      ; $47d2: $86
    ld a, [hl]                                    ; $47d3: $7e
    inc a                                         ; $47d4: $3c
    rst RST_38                                    ; $47d5: $ff
    ld a, [hl]                                    ; $47d6: $7e
    db $db                                        ; $47d7: $db
    rst RST_38                                    ; $47d8: $ff

jr_006_47d9:
    ld a, [bc]                                    ; $47d9: $0a
    db $db                                        ; $47da: $db
    add [hl]                                      ; $47db: $86
    ei                                            ; $47dc: $fb
    ei                                            ; $47dd: $fb
    rst RST_38                                    ; $47de: $ff
    ld [hl], a                                    ; $47df: $77
    halt                                          ; $47e0: $76
    ld h, $08                                     ; $47e1: $26 $08
    nop                                           ; $47e3: $00
    inc b                                         ; $47e4: $04
    add $04                                       ; $47e5: $c6 $04
    rst RST_18                                    ; $47e7: $df
    inc b                                         ; $47e8: $04
    add $84                                       ; $47e9: $c6 $84
    sbc $de                                       ; $47eb: $de $de
    rst RST_38                                    ; $47ed: $ff
    rst RST_38                                    ; $47ee: $ff
    add b                                         ; $47ef: $80
    add e                                         ; $47f0: $83
    inc b                                         ; $47f1: $04
    rst RST_30                                    ; $47f2: $f7
    or $fe                                        ; $47f3: $f6 $fe
    call c, RST_08                                ; $47f5: $dc $08 $00
    inc b                                         ; $47f8: $04
    ld b, $04                                     ; $47f9: $06 $04
    rst RST_38                                    ; $47fb: $ff
    inc b                                         ; $47fc: $04
    ld c, $04                                     ; $47fd: $0e $04
    ld e, $88                                     ; $47ff: $1e $88
    ld a, $36                                     ; $4801: $3e $36
    halt                                          ; $4803: $76
    ld [hl], $e6                                  ; $4804: $36 $e6
    and $c6                                       ; $4806: $e6 $c6
    add $08                                       ; $4808: $c6 $08
    nop                                           ; $480a: $00
    inc b                                         ; $480b: $04
    inc a                                         ; $480c: $3c
    adc b                                         ; $480d: $88
    inc c                                         ; $480e: $0c
    inc c                                         ; $480f: $0c
    inc e                                         ; $4810: $1c
    ld [$1818], sp                                ; $4811: $08 $18 $18
    db $db                                        ; $4814: $db
    ld e, d                                       ; $4815: $5a
    ld b, $db                                     ; $4816: $06 $db
    add d                                         ; $4818: $82
    jr jr_006_4833                                ; $4819: $18 $18

    inc bc                                        ; $481b: $03
    jr c, jr_006_479f                             ; $481c: $38 $81

    jr nc, jr_006_482c                            ; $481e: $30 $0c

    nop                                           ; $4820: $00
    inc b                                         ; $4821: $04
    jr nc, jr_006_47a9                            ; $4822: $30 $85

    jr c, jr_006_485e                             ; $4824: $38 $38

    ld a, b                                       ; $4826: $78
    ld a, b                                       ; $4827: $78
    ld a, h                                       ; $4828: $7c
    inc bc                                        ; $4829: $03
    ld l, h                                       ; $482a: $6c
    add c                                         ; $482b: $81

jr_006_482c:
    and $03                                       ; $482c: $e6 $03
    add $84                                       ; $482e: $c6 $84
    jp Jump_000_03c3                              ; $4830: $c3 $c3 $03


jr_006_4833:
    inc bc                                        ; $4833: $03
    ld [$0400], sp                                ; $4834: $08 $00 $04
    rst RST_18                                    ; $4837: $df
    add b                                         ; $4838: $80
    add e                                         ; $4839: $83
    dec b                                         ; $483a: $05
    add $df                                       ; $483b: $c6 $df
    rst RST_18                                    ; $483d: $df
    add $de                                       ; $483e: $c6 $de
    add d                                         ; $4840: $82
    rst RST_38                                    ; $4841: $ff
    rst RST_38                                    ; $4842: $ff
    add b                                         ; $4843: $80
    add e                                         ; $4844: $83
    inc b                                         ; $4845: $04
    rst RST_30                                    ; $4846: $f7
    or $fe                                        ; $4847: $f6 $fe
    call c, RST_08                                ; $4849: $dc $08 $00
    add b                                         ; $484c: $80
    add e                                         ; $484d: $83
    inc c                                         ; $484e: $0c
    inc c                                         ; $484f: $0c
    ld a, a                                       ; $4850: $7f
    ld a, a                                       ; $4851: $7f
    inc c                                         ; $4852: $0c
    ld a, a                                       ; $4853: $7f
    ld a, a                                       ; $4854: $7f
    inc c                                         ; $4855: $0c
    ld a, $7f                                     ; $4856: $3e $7f
    ld l, a                                       ; $4858: $6f
    ld a, l                                       ; $4859: $7d
    jr c, jr_006_4864                             ; $485a: $38 $08

    nop                                           ; $485c: $00
    inc b                                         ; $485d: $04

jr_006_485e:
    ldh a, [rTMA]                                 ; $485e: $f0 $06
    ld [hl], $8e                                  ; $4860: $36 $8e
    ld a, [hl]                                    ; $4862: $7e
    ld a, [hl]                                    ; $4863: $7e

jr_006_4864:
    rst RST_38                                    ; $4864: $ff
    rst RST_38                                    ; $4865: $ff
    rst RST_30                                    ; $4866: $f7
    rst RST_10                                    ; $4867: $d7
    or $d6                                        ; $4868: $f6 $d6
    or $f6                                        ; $486a: $f6 $f6
    ld l, [hl]                                    ; $486c: $6e
    ld l, [hl]                                    ; $486d: $6e
    inc c                                         ; $486e: $0c
    inc c                                         ; $486f: $0c
    ld [$0400], sp                                ; $4870: $08 $00 $04
    jr jr_006_4879                                ; $4873: $18 $04

    ld a, h                                       ; $4875: $7c
    inc b                                         ; $4876: $04
    dec de                                        ; $4877: $1b
    add b                                         ; $4878: $80

jr_006_4879:
    add e                                         ; $4879: $83
    dec b                                         ; $487a: $05
    ld a, e                                       ; $487b: $7b
    ld hl, sp-$25                                 ; $487c: $f8 $db
    ei                                            ; $487e: $fb
    ld a, a                                       ; $487f: $7f
    add d                                         ; $4880: $82
    ld e, $0e                                     ; $4881: $1e $0e
    ld [$8200], sp                                ; $4883: $08 $00 $82
    inc c                                         ; $4886: $0c
    inc c                                         ; $4887: $0c
    inc b                                         ; $4888: $04
    ld l, h                                       ; $4889: $6c
    sub d                                         ; $488a: $92
    ld a, [hl]                                    ; $488b: $7e
    ld l, h                                       ; $488c: $6c
    ld a, a                                       ; $488d: $7f
    ld a, [hl]                                    ; $488e: $7e
    ld a, a                                       ; $488f: $7f
    rst RST_38                                    ; $4890: $ff
    ei                                            ; $4891: $fb
    ei                                            ; $4892: $fb
    db $db                                        ; $4893: $db
    db $db                                        ; $4894: $db
    di                                            ; $4895: $f3
    db $db                                        ; $4896: $db
    di                                            ; $4897: $f3
    di                                            ; $4898: $f3

jr_006_4899:
    rst RST_20                                    ; $4899: $e7
    halt                                          ; $489a: $76
    ld b, [hl]                                    ; $489b: $46
    ld h, $08                                     ; $489c: $26 $08
    nop                                           ; $489e: $00
    inc b                                         ; $489f: $04
    ld h, b                                       ; $48a0: $60
    inc b                                         ; $48a1: $04
    ld hl, sp-$80                                 ; $48a2: $f8 $80
    add e                                         ; $48a4: $83
    dec b                                         ; $48a5: $05
    ld h, b                                       ; $48a6: $60
    ld hl, sp-$08                                 ; $48a7: $f8 $f8
    ld h, e                                       ; $48a9: $63
    ld h, e                                       ; $48aa: $63
    add [hl]                                      ; $48ab: $86
    ld [hl], a                                    ; $48ac: $77
    ld h, e                                       ; $48ad: $63
    ld a, a                                       ; $48ae: $7f
    ld a, $3e                                     ; $48af: $3e $3e
    inc e                                         ; $48b1: $1c
    ld [$9000], sp                                ; $48b2: $08 $00 $90
    ld l, h                                       ; $48b5: $6c
    ld l, h                                       ; $48b6: $6c
    ld h, h                                       ; $48b7: $64
    ld l, h                                       ; $48b8: $6c
    ld a, [hl]                                    ; $48b9: $7e
    ld a, $ff                                     ; $48ba: $3e $ff
    rst RST_38                                    ; $48bc: $ff
    di                                            ; $48bd: $f3
    di                                            ; $48be: $f3
    scf                                           ; $48bf: $37
    scf                                           ; $48c0: $37
    ld [hl], $36                                  ; $48c1: $36 $36
    jr c, jr_006_48d5                             ; $48c3: $38 $10

    ld [$0818], sp                                ; $48c5: $08 $18 $08
    nop                                           ; $48c8: $00
    inc b                                         ; $48c9: $04
    jr nc, jr_006_48d0                            ; $48ca: $30 $04

    rst RST_38                                    ; $48cc: $ff
    ld b, $33                                     ; $48cd: $06 $33
    add d                                         ; $48cf: $82

jr_006_48d0:
    ld [hl], e                                    ; $48d0: $73
    inc sp                                        ; $48d1: $33
    inc b                                         ; $48d2: $04
    ld h, e                                       ; $48d3: $63
    add h                                         ; $48d4: $84

jr_006_48d5:
    rst RST_28                                    ; $48d5: $ef
    rst RST_08                                    ; $48d6: $cf
    adc $ce                                       ; $48d7: $ce $ce
    ld [$0400], sp                                ; $48d9: $08 $00 $04
    ld a, [hl]                                    ; $48dc: $7e
    inc b                                         ; $48dd: $04
    ld b, $04                                     ; $48de: $06 $04
    inc c                                         ; $48e0: $0c
    adc b                                         ; $48e1: $88
    inc e                                         ; $48e2: $1c
    inc e                                         ; $48e3: $1c
    ld e, $1c                                     ; $48e4: $1e $1c
    ld [hl], $36                                  ; $48e6: $36 $36
    scf                                           ; $48e8: $37
    ld [hl], $04                                  ; $48e9: $36 $04
    ld h, e                                       ; $48eb: $63
    stop                                          ; $48ec: $10 $00
    sub b                                         ; $48ee: $90
    ld e, $1e                                     ; $48ef: $1e $1e
    ld a, a                                       ; $48f1: $7f
    ld a, a                                       ; $48f2: $7f
    ld [hl], e                                    ; $48f3: $73
    ld h, e                                       ; $48f4: $63
    inc bc                                        ; $48f5: $03
    inc bc                                        ; $48f6: $03
    rlca                                          ; $48f7: $07
    ld [bc], a                                    ; $48f8: $02
    ld c, $06                                     ; $48f9: $0e $06
    inc a                                         ; $48fb: $3c
    inc a                                         ; $48fc: $3c

jr_006_48fd:
    jr c, jr_006_492f                             ; $48fd: $38 $30

    ld [$8000], sp                                ; $48ff: $08 $00 $80
    add e                                         ; $4902: $83
    inc b                                         ; $4903: $04
    jr @+$80                                      ; $4904: $18 $7e

    ld a, [hl]                                    ; $4906: $7e
    jr nc, jr_006_4899                            ; $4907: $30 $90

    ld [hl], a                                    ; $4909: $77
    ld h, e                                       ; $490a: $63
    ld a, a                                       ; $490b: $7f
    ld a, a                                       ; $490c: $7f
    inc a                                         ; $490d: $3c
    jr c, jr_006_497e                             ; $490e: $38 $6e

    ld a, h                                       ; $4910: $7c
    ld h, [hl]                                    ; $4911: $66
    ld h, [hl]                                    ; $4912: $66

jr_006_4913:
    ld [hl], b                                    ; $4913: $70
    ld h, b                                       ; $4914: $60
    ld a, a                                       ; $4915: $7f
    ccf                                           ; $4916: $3f
    ccf                                           ; $4917: $3f
    rra                                           ; $4918: $1f
    ld [$8500], sp                                ; $4919: $08 $00 $85
    inc e                                         ; $491c: $1c
    jr jr_006_48fd                                ; $491d: $18 $de

    sbc $c6                                       ; $491f: $de $c6
    inc bc                                        ; $4921: $03
    jp $8380                                      ; $4922: $c3 $80 $83


    dec b                                         ; $4925: $05
    db $fc                                        ; $4926: $fc
    cp $c6                                        ; $4927: $fe $c6
    ld b, $06                                     ; $4929: $06 $06
    add [hl]                                      ; $492b: $86
    ld c, $0c                                     ; $492c: $0e $0c
    inc a                                         ; $492e: $3c

jr_006_492f:
    inc a                                         ; $492f: $3c
    jr c, @+$32                                   ; $4930: $38 $30

    ld [$0e00], sp                                ; $4932: $08 $00 $0e
    ld h, e                                       ; $4935: $63
    inc b                                         ; $4936: $04
    inc bc                                        ; $4937: $03
    add [hl]                                      ; $4938: $86
    rlca                                          ; $4939: $07
    ld b, $1e                                     ; $493a: $06 $1e
    ld e, $1c                                     ; $493c: $1e $1c
    jr @+$0a                                      ; $493e: $18 $08

    nop                                           ; $4940: $00
    inc b                                         ; $4941: $04
    ld a, [hl]                                    ; $4942: $7e
    sub h                                         ; $4943: $94
    inc e                                         ; $4944: $1c
    inc c                                         ; $4945: $0c
    inc a                                         ; $4946: $3c
    jr @+$80                                      ; $4947: $18 $7e

    ld a, [hl]                                    ; $4949: $7e
    ld h, a                                       ; $494a: $67
    ld h, e                                       ; $494b: $63
    inc bc                                        ; $494c: $03
    inc bc                                        ; $494d: $03
    dec sp                                        ; $494e: $3b
    dec sp                                        ; $494f: $3b
    ld a, a                                       ; $4950: $7f
    ld a, a                                       ; $4951: $7f
    ld l, a                                       ; $4952: $6f
    ld l, [hl]                                    ; $4953: $6e
    ld a, [hl]                                    ; $4954: $7e
    ld a, [hl]                                    ; $4955: $7e
    inc a                                         ; $4956: $3c
    jr c, jr_006_4961                             ; $4957: $38 $08

    nop                                           ; $4959: $00
    adc d                                         ; $495a: $8a

jr_006_495b:
    ld h, b                                       ; $495b: $60
    ld h, b                                       ; $495c: $60
    ld h, [hl]                                    ; $495d: $66
    ld h, h                                       ; $495e: $64
    cp $ee                                        ; $495f: $fe $ee

jr_006_4961:
    cp $fe                                        ; $4961: $fe $fe
    ld a, [hl]                                    ; $4963: $7e
    halt                                          ; $4964: $76
    add b                                         ; $4965: $80
    add e                                         ; $4966: $83
    rlca                                          ; $4967: $07
    ld h, [hl]                                    ; $4968: $66
    and $e6                                       ; $4969: $e6 $e6
    and $66                                       ; $496b: $e6 $66
    ld h, a                                       ; $496d: $67
    ld h, e                                       ; $496e: $63
    ld c, $00                                     ; $496f: $0e $00
    adc h                                         ; $4971: $8c
    ld h, b                                       ; $4972: $60
    ld h, b                                       ; $4973: $60
    ld a, [hl]                                    ; $4974: $7e
    ld l, [hl]                                    ; $4975: $6e
    rst RST_38                                    ; $4976: $ff
    rst RST_38                                    ; $4977: $ff
    di                                            ; $4978: $f3
    db $e3                                        ; $4979: $e3
    scf                                           ; $497a: $37
    scf                                           ; $497b: $37
    ld a, $36                                     ; $497c: $3e $36

jr_006_497e:
    ld b, $18                                     ; $497e: $06 $18
    ld [$0a00], sp                                ; $4980: $08 $00 $0a
    jr nc, jr_006_4913                            ; $4983: $30 $8e

    ld [hl], b                                    ; $4985: $70
    jr nz, jr_006_4a00                            ; $4986: $20 $78

    ld [hl], b                                    ; $4988: $70
    ld a, h                                       ; $4989: $7c
    ld a, b                                       ; $498a: $78
    ld a, h                                       ; $498b: $7c
    ld l, h                                       ; $498c: $6c
    db $ec                                        ; $498d: $ec
    ld l, h                                       ; $498e: $6c
    rst RST_28                                    ; $498f: $ef
    rst RST_08                                    ; $4990: $cf
    rst RST_00                                    ; $4991: $c7
    rst RST_00                                    ; $4992: $c7
    ld [$0400], sp                                ; $4993: $08 $00 $04
    ld a, $82                                     ; $4996: $3e $82
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    inc b                                         ; $499a: $04
    ld a, a                                       ; $499b: $7f
    ld b, $03                                     ; $499c: $06 $03
    adc b                                         ; $499e: $88
    rlca                                          ; $499f: $07
    ld [bc], a                                    ; $49a0: $02
    ld c, $06                                     ; $49a1: $0e $06
    inc a                                         ; $49a3: $3c
    inc a                                         ; $49a4: $3c
    jr c, jr_006_49d7                             ; $49a5: $38 $30

    ld [de], a                                    ; $49a7: $12
    nop                                           ; $49a8: $00
    add b                                         ; $49a9: $80
    add e                                         ; $49aa: $83
    inc b                                         ; $49ab: $04
    ret c                                         ; $49ac: $d8

    db $db                                        ; $49ad: $db
    db $db                                        ; $49ae: $db
    inc bc                                        ; $49af: $03
    add [hl]                                      ; $49b0: $86
    rlca                                          ; $49b1: $07
    ld b, $3e                                     ; $49b2: $06 $3e
    ld a, $3c                                     ; $49b4: $3e $3c
    jr c, jr_006_49c0                             ; $49b6: $38 $08

    nop                                           ; $49b8: $00
    inc b                                         ; $49b9: $04
    jr nc, jr_006_49c0                            ; $49ba: $30 $04

    rst RST_38                                    ; $49bc: $ff
    inc b                                         ; $49bd: $04
    jr @+$06                                      ; $49be: $18 $04

jr_006_49c0:
    rst RST_38                                    ; $49c0: $ff
    add d                                         ; $49c1: $82
    inc c                                         ; $49c2: $0c
    ld [$0c06], sp                                ; $49c3: $08 $06 $0c
    ld [$8000], sp                                ; $49c6: $08 $00 $80
    add e                                         ; $49c9: $83
    dec b                                         ; $49ca: $05
    ld b, $7e                                     ; $49cb: $06 $7e
    ld a, h                                       ; $49cd: $7c
    jr @+$1a                                      ; $49ce: $18 $18

    inc b                                         ; $49d0: $04
    rst RST_38                                    ; $49d1: $ff
    inc b                                         ; $49d2: $04
    jr jr_006_495b                                ; $49d3: $18 $86

    jr c, jr_006_4a07                             ; $49d5: $38 $30

jr_006_49d7:
    ld [hl], b                                    ; $49d7: $70
    ld [hl], b                                    ; $49d8: $70
    nop                                           ; $49d9: $00
    ld h, b                                       ; $49da: $60
    ld [de], a                                    ; $49db: $12
    nop                                           ; $49dc: $00
    inc b                                         ; $49dd: $04
    ld a, [hl]                                    ; $49de: $7e
    ld b, $18                                     ; $49df: $06 $18
    inc b                                         ; $49e1: $04
    ld a, [hl]                                    ; $49e2: $7e
    ld a, [bc]                                    ; $49e3: $0a
    nop                                           ; $49e4: $00
    add b                                         ; $49e5: $80
    add e                                         ; $49e6: $83
    ld b, $f0                                     ; $49e7: $06 $f0
    di                                            ; $49e9: $f3
    inc bc                                        ; $49ea: $03
    inc bc                                        ; $49eb: $03
    inc bc                                        ; $49ec: $03
    inc bc                                        ; $49ed: $03
    adc d                                         ; $49ee: $8a
    rlca                                          ; $49ef: $07
    inc bc                                        ; $49f0: $03
    rlca                                          ; $49f1: $07
    ld b, $1e                                     ; $49f2: $06 $1e
    ld c, $fc                                     ; $49f4: $0e $fc
    db $fc                                        ; $49f6: $fc
    ld hl, sp-$10                                 ; $49f7: $f8 $f0
    ld a, [bc]                                    ; $49f9: $0a
    nop                                           ; $49fa: $00
    add b                                         ; $49fb: $80
    add e                                         ; $49fc: $83
    ld b, $f0                                     ; $49fd: $06 $f0
    di                                            ; $49ff: $f3

jr_006_4a00:
    inc bc                                        ; $4a00: $03
    di                                            ; $4a01: $f3
    di                                            ; $4a02: $f3
    inc bc                                        ; $4a03: $03
    adc d                                         ; $4a04: $8a
    rlca                                          ; $4a05: $07
    inc bc                                        ; $4a06: $03

jr_006_4a07:
    rlca                                          ; $4a07: $07
    ld b, $1e                                     ; $4a08: $06 $1e
    ld c, $fc                                     ; $4a0a: $0e $fc
    db $fc                                        ; $4a0c: $fc
    ld hl, sp-$10                                 ; $4a0d: $f8 $f0
    ld a, [bc]                                    ; $4a0f: $0a
    nop                                           ; $4a10: $00
    inc b                                         ; $4a11: $04
    rst RST_38                                    ; $4a12: $ff
    ld b, $03                                     ; $4a13: $06 $03
    add c                                         ; $4a15: $81
    rlca                                          ; $4a16: $07
    inc bc                                        ; $4a17: $03
    ld b, $88                                     ; $4a18: $06 $88
    ld c, $0c                                     ; $4a1a: $0e $0c
    inc e                                         ; $4a1c: $1c
    inc e                                         ; $4a1d: $1c
    ld a, b                                       ; $4a1e: $78
    ld a, b                                       ; $4a1f: $78
    ld [hl], b                                    ; $4a20: $70
    ld h, b                                       ; $4a21: $60
    stop                                          ; $4a22: $10 $00
    inc b                                         ; $4a24: $04
    ld a, a                                       ; $4a25: $7f
    add b                                         ; $4a26: $80
    add e                                         ; $4a27: $83
    ld b, $1b                                     ; $4a28: $06 $1b
    rra                                           ; $4a2a: $1f
    ld e, $18                                     ; $4a2b: $1e $18
    jr c, jr_006_4a5f                             ; $4a2d: $38 $30

    ld b, $00                                     ; $4a2f: $06 $00
    inc b                                         ; $4a31: $04
    ld l, h                                       ; $4a32: $6c
    inc b                                         ; $4a33: $04
    ld [hl], $1a                                  ; $4a34: $36 $1a
    nop                                           ; $4a36: $00
    add b                                         ; $4a37: $80
    add e                                         ; $4a38: $83
    dec b                                         ; $4a39: $05
    jr c, jr_006_4ab8                             ; $4a3a: $38 $7c

    ld l, h                                       ; $4a3c: $6c
    ld a, h                                       ; $4a3d: $7c
    jr c, @+$22                                   ; $4a3e: $38 $20

    nop                                           ; $4a40: $00
    inc b                                         ; $4a41: $04
    ld a, a                                       ; $4a42: $7f
    ld [de], a                                    ; $4a43: $12
    nop                                           ; $4a44: $00
    adc [hl]                                      ; $4a45: $8e
    inc bc                                        ; $4a46: $03
    inc bc                                        ; $4a47: $03
    rlca                                          ; $4a48: $07
    inc bc                                        ; $4a49: $03
    ld b, $06                                     ; $4a4a: $06 $06
    inc c                                         ; $4a4c: $0c
    ld c, $3c                                     ; $4a4d: $0e $3c
    inc e                                         ; $4a4f: $1c
    db $fc                                        ; $4a50: $fc
    db $fc                                        ; $4a51: $fc
    db $ec                                        ; $4a52: $ec
    call z, $0c0a                                 ; $4a53: $cc $0a $0c
    ld [$0400], sp                                ; $4a56: $08 $00 $04
    jr nc, jr_006_4a5f                            ; $4a59: $30 $04

    rst RST_38                                    ; $4a5b: $ff
    add h                                         ; $4a5c: $84
    inc sp                                        ; $4a5d: $33
    inc sp                                        ; $4a5e: $33

jr_006_4a5f:
    ld [hl], $37                                  ; $4a5f: $36 $37
    add b                                         ; $4a61: $80
    add e                                         ; $4a62: $83
    ld b, $36                                     ; $4a63: $06 $36
    jr nc, jr_006_4a97                            ; $4a65: $30 $30

    jr nc, jr_006_4a99                            ; $4a67: $30 $30

    jr nc, @+$0a                                  ; $4a69: $30 $08

    nop                                           ; $4a6b: $00
    ld a, [bc]                                    ; $4a6c: $0a
    jp $ff04                                      ; $4a6d: $c3 $04 $ff


    ld a, [bc]                                    ; $4a70: $0a
    jp RST_08                                     ; $4a71: $c3 $08 $00


    add h                                         ; $4a74: $84
    cp $fe                                        ; $4a75: $fe $fe
    rst RST_38                                    ; $4a77: $ff
    rst RST_38                                    ; $4a78: $ff
    ld b, $c3                                     ; $4a79: $06 $c3
    add d                                         ; $4a7b: $82
    rst RST_38                                    ; $4a7c: $ff
    rst RST_38                                    ; $4a7d: $ff
    add b                                         ; $4a7e: $80
    add e                                         ; $4a7f: $83
    ld b, $fe                                     ; $4a80: $06 $fe
    ret nz                                        ; $4a82: $c0

    ret nz                                        ; $4a83: $c0

    ret nz                                        ; $4a84: $c0

    ret nz                                        ; $4a85: $c0

    ret nz                                        ; $4a86: $c0

    ld d, $00                                     ; $4a87: $16 $00
    add b                                         ; $4a89: $80
    add e                                         ; $4a8a: $83
    dec b                                         ; $4a8b: $05
    jr c, jr_006_4b0a                             ; $4a8c: $38 $7c

    ld l, h                                       ; $4a8e: $6c
    ld a, h                                       ; $4a8f: $7c
    jr c, @+$06                                   ; $4a90: $38 $04

    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    ld bc, $448e                                  ; $4a94: $01 $8e $44

jr_006_4a97:
    add b                                         ; $4a97: $80
    nop                                           ; $4a98: $00

jr_006_4a99:
    ld bc, $45ab                                  ; $4a99: $01 $ab $45
    sub h                                         ; $4a9c: $94
    nop                                           ; $4a9d: $00
    ld bc, $45c4                                  ; $4a9e: $01 $c4 $45
    sbc b                                         ; $4aa1: $98
    nop                                           ; $4aa2: $00
    ld bc, $4ae7                                  ; $4aa3: $01 $e7 $4a
    add b                                         ; $4aa6: $80
    ld bc, $2a03                                  ; $4aa7: $01 $03 $2a
    ld d, a                                       ; $4aaa: $57
    sbc h                                         ; $4aab: $9c
    nop                                           ; $4aac: $00
    inc e                                         ; $4aad: $1c
    ld bc, $45f1                                  ; $4aae: $01 $f1 $45
    nop                                           ; $4ab1: $00
    ld bc, $0000                                  ; $4ab2: $01 $00 $00
    ld bc, $448e                                  ; $4ab5: $01 $8e $44

jr_006_4ab8:
    sub b                                         ; $4ab8: $90
    nop                                           ; $4ab9: $00
    inc bc                                        ; $4aba: $03
    ld [$e056], a                                 ; $4abb: $ea $56 $e0
    ld bc, $0320                                  ; $4abe: $01 $20 $03
    ld [$fc58], a                                 ; $4ac1: $ea $58 $fc
    ld bc, $0004                                  ; $4ac4: $01 $04 $00
    nop                                           ; $4ac7: $00
    sub h                                         ; $4ac8: $94
    ld b, b                                       ; $4ac9: $40
    sub h                                         ; $4aca: $94
    add b                                         ; $4acb: $80
    sub h                                         ; $4acc: $94
    ret nz                                        ; $4acd: $c0

    sub h                                         ; $4ace: $94
    nop                                           ; $4acf: $00
    sub l                                         ; $4ad0: $95
    ld b, b                                       ; $4ad1: $40
    sub l                                         ; $4ad2: $95
    add b                                         ; $4ad3: $80
    sub l                                         ; $4ad4: $95
    ret nz                                        ; $4ad5: $c0

    sub l                                         ; $4ad6: $95
    ld bc, $592a                                  ; $4ad7: $01 $2a $59
    add b                                         ; $4ada: $80
    ld bc, $8e01                                  ; $4adb: $01 $01 $8e
    ld b, h                                       ; $4ade: $44
    add b                                         ; $4adf: $80
    nop                                           ; $4ae0: $00
    ld bc, $5b15                                  ; $4ae1: $01 $15 $5b
    sub h                                         ; $4ae4: $94
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    inc d                                         ; $4ae7: $14
    nop                                           ; $4ae8: $00
    ld a, [bc]                                    ; $4ae9: $0a
    ld h, e                                       ; $4aea: $63
    inc b                                         ; $4aeb: $04
    ld a, a                                       ; $4aec: $7f
    ld a, [bc]                                    ; $4aed: $0a
    ld h, e                                       ; $4aee: $63
    ld [$8500], sp                                ; $4aef: $08 $00 $85
    ld a, [hl]                                    ; $4af2: $7e
    ld a, [hl]                                    ; $4af3: $7e
    ld a, a                                       ; $4af4: $7f
    ld a, a                                       ; $4af5: $7f
    ld h, a                                       ; $4af6: $67
    dec b                                         ; $4af7: $05
    ld h, e                                       ; $4af8: $63
    add d                                         ; $4af9: $82
    ld h, a                                       ; $4afa: $67
    ld h, e                                       ; $4afb: $63
    add b                                         ; $4afc: $80
    add e                                         ; $4afd: $83
    ld b, $7f                                     ; $4afe: $06 $7f
    ld a, [hl]                                    ; $4b00: $7e
    ld h, b                                       ; $4b01: $60
    ld h, b                                       ; $4b02: $60
    ld h, b                                       ; $4b03: $60
    ld h, b                                       ; $4b04: $60
    ld [$8500], sp                                ; $4b05: $08 $00 $85
    ld a, $3e                                     ; $4b08: $3e $3e

jr_006_4b0a:
    ld a, a                                       ; $4b0a: $7f
    ld a, a                                       ; $4b0b: $7f
    ld [hl], a                                    ; $4b0c: $77
    inc bc                                        ; $4b0d: $03
    ld h, e                                       ; $4b0e: $63
    inc b                                         ; $4b0f: $04
    ld h, b                                       ; $4b10: $60
    inc b                                         ; $4b11: $04
    ld l, a                                       ; $4b12: $6f
    adc b                                         ; $4b13: $88
    ld h, e                                       ; $4b14: $63
    ld h, e                                       ; $4b15: $63
    ld [hl], e                                    ; $4b16: $73
    ld h, e                                       ; $4b17: $63
    ld a, a                                       ; $4b18: $7f
    ld a, a                                       ; $4b19: $7f
    ccf                                           ; $4b1a: $3f
    ccf                                           ; $4b1b: $3f
    ld [$0400], sp                                ; $4b1c: $08 $00 $04
    inc bc                                        ; $4b1f: $03
    inc b                                         ; $4b20: $04
    ld b, $04                                     ; $4b21: $06 $04
    inc c                                         ; $4b23: $0c
    inc b                                         ; $4b24: $04
    jr @+$06                                      ; $4b25: $18 $04

    jr nc, jr_006_4b2d                            ; $4b27: $30 $04

    ld h, b                                       ; $4b29: $60
    ld [$0400], sp                                ; $4b2a: $08 $00 $04

jr_006_4b2d:
    jr jr_006_4b3f                                ; $4b2d: $18 $10

    nop                                           ; $4b2f: $00
    adc b                                         ; $4b30: $88
    inc a                                         ; $4b31: $3c

jr_006_4b32:
    jr c, jr_006_4b32                             ; $4b32: $38 $fe

    db $fc                                        ; $4b34: $fc
    xor $c6                                       ; $4b35: $ee $c6
    ld b, $06                                     ; $4b37: $06 $06
    inc b                                         ; $4b39: $04
    nop                                           ; $4b3a: $00
    adc b                                         ; $4b3b: $88
    ld h, a                                       ; $4b3c: $67
    ld h, d                                       ; $4b3d: $62
    ld h, a                                       ; $4b3e: $67

jr_006_4b3f:
    ld h, e                                       ; $4b3f: $63
    rst RST_38                                    ; $4b40: $ff
    ld sp, hl                                     ; $4b41: $f9
    db $fd                                        ; $4b42: $fd
    db $fd                                        ; $4b43: $fd
    inc b                                         ; $4b44: $04
    ld l, l                                       ; $4b45: $6d
    inc b                                         ; $4b46: $04
    nop                                           ; $4b47: $00
    adc h                                         ; $4b48: $8c
    jr nc, jr_006_4b63                            ; $4b49: $30 $18

    sbc b                                         ; $4b4b: $98
    jr jr_006_4b5c                                ; $4b4c: $18 $0e

    sbc [hl]                                      ; $4b4e: $9e
    cp a                                          ; $4b4f: $bf
    cp a                                          ; $4b50: $bf
    or a                                          ; $4b51: $b7
    or e                                          ; $4b52: $b3
    inc bc                                        ; $4b53: $03
    add e                                         ; $4b54: $83
    inc b                                         ; $4b55: $04
    nop                                           ; $4b56: $00
    add b                                         ; $4b57: $80
    add e                                         ; $4b58: $83
    ld b, $06                                     ; $4b59: $06 $06
    ld a, a                                       ; $4b5b: $7f

jr_006_4b5c:
    ld a, a                                       ; $4b5c: $7f
    ld b, $1e                                     ; $4b5d: $06 $1e
    ld a, $06                                     ; $4b5f: $3e $06
    nop                                           ; $4b61: $00
    inc b                                         ; $4b62: $04

jr_006_4b63:
    ld a, a                                       ; $4b63: $7f
    add [hl]                                      ; $4b64: $86
    ld c, $0e                                     ; $4b65: $0e $0e
    inc e                                         ; $4b67: $1c
    inc c                                         ; $4b68: $0c
    inc e                                         ; $4b69: $1c
    jr jr_006_4b70                                ; $4b6a: $18 $04

    nop                                           ; $4b6c: $00
    inc b                                         ; $4b6d: $04
    ld a, [hl]                                    ; $4b6e: $7e
    adc b                                         ; $4b6f: $88

jr_006_4b70:
    ld b, $06                                     ; $4b70: $06 $06
    inc c                                         ; $4b72: $0c
    inc c                                         ; $4b73: $0c
    ld a, $3c                                     ; $4b74: $3e $3c
    ccf                                           ; $4b76: $3f
    ld a, $04                                     ; $4b77: $3e $04
    nop                                           ; $4b79: $00
    inc b                                         ; $4b7a: $04
    ld l, h                                       ; $4b7b: $6c
    add b                                         ; $4b7c: $80
    add e                                         ; $4b7d: $83

jr_006_4b7e:
    inc b                                         ; $4b7e: $04
    ld a, h                                       ; $4b7f: $7c
    cp $e6                                        ; $4b80: $fe $e6
    ld l, [hl]                                    ; $4b82: $6e
    inc b                                         ; $4b83: $04
    nop                                           ; $4b84: $00
    add d                                         ; $4b85: $82
    inc c                                         ; $4b86: $0c
    inc c                                         ; $4b87: $0c
    inc b                                         ; $4b88: $04
    ld l, h                                       ; $4b89: $6c
    add [hl]                                      ; $4b8a: $86
    ld a, [hl]                                    ; $4b8b: $7e
    ld l, h                                       ; $4b8c: $6c
    ld a, a                                       ; $4b8d: $7f
    ld a, [hl]                                    ; $4b8e: $7e
    ld a, a                                       ; $4b8f: $7f
    rst RST_38                                    ; $4b90: $ff
    inc b                                         ; $4b91: $04
    nop                                           ; $4b92: $00
    inc b                                         ; $4b93: $04
    ld a, [hl]                                    ; $4b94: $7e
    sub h                                         ; $4b95: $94
    ld b, $06                                     ; $4b96: $06 $06
    inc c                                         ; $4b98: $0c
    inc c                                         ; $4b99: $0c
    ld a, $3c                                     ; $4b9a: $3e $3c
    ccf                                           ; $4b9c: $3f
    ld a, $06                                     ; $4b9d: $3e $06
    ld b, $04                                     ; $4b9f: $06 $04
    ld c, $0e                                     ; $4ba1: $0e $0e
    inc c                                         ; $4ba3: $0c
    jr @+$1e                                      ; $4ba4: $18 $1c

    ld a, h                                       ; $4ba6: $7c
    ld a, b                                       ; $4ba7: $78
    ld [hl], b                                    ; $4ba8: $70
    ld [hl], b                                    ; $4ba9: $70
    inc b                                         ; $4baa: $04
    nop                                           ; $4bab: $00
    inc b                                         ; $4bac: $04
    ld l, h                                       ; $4bad: $6c
    adc b                                         ; $4bae: $88
    call z, $ec6c                                 ; $4baf: $cc $6c $ec
    call z, $dc98                                 ; $4bb2: $cc $98 $dc
    inc e                                         ; $4bb5: $1c
    jr jr_006_4bbc                                ; $4bb6: $18 $04

    nop                                           ; $4bb8: $00
    adc h                                         ; $4bb9: $8c
    inc bc                                        ; $4bba: $03
    inc bc                                        ; $4bbb: $03

jr_006_4bbc:
    rlca                                          ; $4bbc: $07
    inc bc                                        ; $4bbd: $03
    ld b, $03                                     ; $4bbe: $06 $03
    rrca                                          ; $4bc0: $0f
    ld b, $1e                                     ; $4bc1: $06 $1e
    ld e, $1c                                     ; $4bc3: $1e $1c
    inc e                                         ; $4bc5: $1c
    inc b                                         ; $4bc6: $04
    nop                                           ; $4bc7: $00
    inc b                                         ; $4bc8: $04
    ld [hl], $88                                  ; $4bc9: $36 $88

jr_006_4bcb:
    ld a, $1e                                     ; $4bcb: $3e $1e
    inc e                                         ; $4bcd: $1c
    ld c, $3c                                     ; $4bce: $0e $3c
    inc a                                         ; $4bd0: $3c
    jr nc, jr_006_4c0b                            ; $4bd1: $30 $38

    inc b                                         ; $4bd3: $04
    nop                                           ; $4bd4: $00
    inc b                                         ; $4bd5: $04
    jr @-$76                                      ; $4bd6: $18 $88

    inc e                                         ; $4bd8: $1c
    jr jr_006_4bf7                                ; $4bd9: $18 $1c

    inc c                                         ; $4bdb: $0c
    ld c, $0e                                     ; $4bdc: $0e $0e
    ld b, $06                                     ; $4bde: $06 $06
    inc b                                         ; $4be0: $04
    nop                                           ; $4be1: $00
    adc h                                         ; $4be2: $8c
    inc bc                                        ; $4be3: $03
    inc bc                                        ; $4be4: $03
    dec sp                                        ; $4be5: $3b
    dec sp                                        ; $4be6: $3b
    ld a, a                                       ; $4be7: $7f
    ld a, e                                       ; $4be8: $7b
    ld l, a                                       ; $4be9: $6f
    ld l, [hl]                                    ; $4bea: $6e
    ld a, [hl]                                    ; $4beb: $7e
    ld a, [hl]                                    ; $4bec: $7e
    inc a                                         ; $4bed: $3c
    jr c, jr_006_4bf4                             ; $4bee: $38 $04

    nop                                           ; $4bf0: $00
    add l                                         ; $4bf1: $85
    inc a                                         ; $4bf2: $3c
    ld l, h                                       ; $4bf3: $6c

jr_006_4bf4:
    jr nz, jr_006_4c66                            ; $4bf4: $20 $70

    ld h, b                                       ; $4bf6: $60

jr_006_4bf7:
    inc bc                                        ; $4bf7: $03
    jr nc, jr_006_4b7e                            ; $4bf8: $30 $84

    jr jr_006_4c2c                                ; $4bfa: $18 $30

    jr @+$32                                      ; $4bfc: $18 $30

    inc b                                         ; $4bfe: $04
    nop                                           ; $4bff: $00
    adc h                                         ; $4c00: $8c
    ei                                            ; $4c01: $fb
    ei                                            ; $4c02: $fb

Jump_006_4c03:
    db $db                                        ; $4c03: $db
    db $db                                        ; $4c04: $db
    di                                            ; $4c05: $f3
    db $db                                        ; $4c06: $db
    di                                            ; $4c07: $f3
    di                                            ; $4c08: $f3
    rst RST_20                                    ; $4c09: $e7
    halt                                          ; $4c0a: $76

jr_006_4c0b:
    ld b, [hl]                                    ; $4c0b: $46
    ld h, $04                                     ; $4c0c: $26 $04
    nop                                           ; $4c0e: $00
    adc h                                         ; $4c0f: $8c
    inc bc                                        ; $4c10: $03
    inc bc                                        ; $4c11: $03
    dec sp                                        ; $4c12: $3b
    dec sp                                        ; $4c13: $3b
    ld a, a                                       ; $4c14: $7f
    ld a, e                                       ; $4c15: $7b
    ld l, a                                       ; $4c16: $6f
    ld l, [hl]                                    ; $4c17: $6e
    ld a, [hl]                                    ; $4c18: $7e
    ld a, [hl]                                    ; $4c19: $7e
    inc a                                         ; $4c1a: $3c
    jr c, jr_006_4c25                             ; $4c1b: $38 $08

    nop                                           ; $4c1d: $00
    adc b                                         ; $4c1e: $88
    ld h, a                                       ; $4c1f: $67
    ld h, d                                       ; $4c20: $62
    ld h, a                                       ; $4c21: $67
    ld h, e                                       ; $4c22: $63
    rst RST_38                                    ; $4c23: $ff
    ld sp, hl                                     ; $4c24: $f9

jr_006_4c25:
    db $fd                                        ; $4c25: $fd
    db $fd                                        ; $4c26: $fd
    inc b                                         ; $4c27: $04
    ld l, l                                       ; $4c28: $6d
    inc b                                         ; $4c29: $04
    nop                                           ; $4c2a: $00
    adc h                                         ; $4c2b: $8c

jr_006_4c2c:
    inc e                                         ; $4c2c: $1c
    jr jr_006_4bcb                                ; $4c2d: $18 $9c

    inc c                                         ; $4c2f: $0c
    ld c, $8f                                     ; $4c30: $0e $8f
    cp a                                          ; $4c32: $bf
    cp a                                          ; $4c33: $bf
    cp e                                          ; $4c34: $bb
    or e                                          ; $4c35: $b3
    ld b, $83                                     ; $4c36: $06 $83
    inc b                                         ; $4c38: $04
    nop                                           ; $4c39: $00
    ld a, [bc]                                    ; $4c3a: $0a
    jr @-$7c                                      ; $4c3b: $18 $82

    jr nc, jr_006_4c57                            ; $4c3d: $30 $18

    inc b                                         ; $4c3f: $04
    nop                                           ; $4c40: $00
    add [hl]                                      ; $4c41: $86
    ccf                                           ; $4c42: $3f
    ld e, $7f                                     ; $4c43: $1e $7f
    ccf                                           ; $4c45: $3f
    ld l, l                                       ; $4c46: $6d
    ld a, a                                       ; $4c47: $7f
    ld b, $6d                                     ; $4c48: $06 $6d
    inc b                                         ; $4c4a: $04
    nop                                           ; $4c4b: $00
    add h                                         ; $4c4c: $84
    ld b, $06                                     ; $4c4d: $06 $06
    cp a                                          ; $4c4f: $bf
    ccf                                           ; $4c50: $3f
    add b                                         ; $4c51: $80
    add e                                         ; $4c52: $83
    inc b                                         ; $4c53: $04
    cp a                                          ; $4c54: $bf
    add [hl]                                      ; $4c55: $86
    cp a                                          ; $4c56: $bf

jr_006_4c57:
    cp a                                          ; $4c57: $bf
    inc b                                         ; $4c58: $04
    nop                                           ; $4c59: $00
    add b                                         ; $4c5a: $80
    add e                                         ; $4c5b: $83
    ld b, $07                                     ; $4c5c: $06 $07
    or a                                          ; $4c5e: $b7
    or b                                          ; $4c5f: $b0
    scf                                           ; $4c60: $37
    or a                                          ; $4c61: $b7
    or b                                          ; $4c62: $b0
    inc b                                         ; $4c63: $04
    nop                                           ; $4c64: $00
    add c                                         ; $4c65: $81

jr_006_4c66:
    and $03                                       ; $4c66: $e6 $03
    db $e3                                        ; $4c68: $e3
    adc b                                         ; $4c69: $88
    pop bc                                        ; $4c6a: $c1
    jp $efef                                      ; $4c6b: $c3 $ef $ef


    xor $ee                                       ; $4c6e: $ee $ee
    ret nz                                        ; $4c70: $c0

    ret nz                                        ; $4c71: $c0

    ld [$8200], sp                                ; $4c72: $08 $00 $82
    ret nz                                        ; $4c75: $c0

    ret nz                                        ; $4c76: $c0

    inc bc                                        ; $4c77: $03
    ldh [$ff03], a                                ; $4c78: $e0 $03
    ld h, b                                       ; $4c7a: $60
    inc b                                         ; $4c7b: $04
    ld l, h                                       ; $4c7c: $6c
    adc b                                         ; $4c7d: $88
    call z, $ec6c                                 ; $4c7e: $cc $6c $ec
    call z, $dc98                                 ; $4c81: $cc $98 $dc
    inc e                                         ; $4c84: $1c
    jr jr_006_4c8b                                ; $4c85: $18 $04

    nop                                           ; $4c87: $00
    adc h                                         ; $4c88: $8c
    ld b, $06                                     ; $4c89: $06 $06

jr_006_4c8b:
    ld e, $0c                                     ; $4c8b: $1e $0c
    inc e                                         ; $4c8d: $1c

jr_006_4c8e:
    jr jr_006_4cce                                ; $4c8e: $18 $3e

    ld e, $37                                     ; $4c90: $1e $37
    ccf                                           ; $4c92: $3f
    inc sp                                        ; $4c93: $33
    inc sp                                        ; $4c94: $33
    inc b                                         ; $4c95: $04
    nop                                           ; $4c96: $00
    adc h                                         ; $4c97: $8c
    jr jr_006_4cca                                ; $4c98: $18 $30

    jr c, jr_006_4cd8                             ; $4c9a: $38 $3c

    inc a                                         ; $4c9c: $3c
    ld a, $36                                     ; $4c9d: $3e $36
    halt                                          ; $4c9f: $76
    ld [hl], e                                    ; $4ca0: $73
    ld h, a                                       ; $4ca1: $67
    ld h, c                                       ; $4ca2: $61
    ld h, e                                       ; $4ca3: $63
    inc b                                         ; $4ca4: $04
    nop                                           ; $4ca5: $00
    inc b                                         ; $4ca6: $04
    ld l, l                                       ; $4ca7: $6d
    adc b                                         ; $4ca8: $88
    ld a, l                                       ; $4ca9: $7d
    ld l, l                                       ; $4caa: $6d
    ld a, c                                       ; $4cab: $79
    ld a, l                                       ; $4cac: $7d
    ld [hl], c                                    ; $4cad: $71
    dec sp                                        ; $4cae: $3b
    ld [hl-], a                                   ; $4caf: $32
    inc bc                                        ; $4cb0: $03
    inc b                                         ; $4cb1: $04
    nop                                           ; $4cb2: $00
    add b                                         ; $4cb3: $80
    add e                                         ; $4cb4: $83
    inc b                                         ; $4cb5: $04
    add [hl]                                      ; $4cb6: $86
    sbc [hl]                                      ; $4cb7: $9e
    cp a                                          ; $4cb8: $bf
    or a                                          ; $4cb9: $b7
    add h                                         ; $4cba: $84
    ccf                                           ; $4cbb: $3f
    cp a                                          ; $4cbc: $bf
    dec e                                         ; $4cbd: $1d
    dec e                                         ; $4cbe: $1d
    inc b                                         ; $4cbf: $04
    nop                                           ; $4cc0: $00
    adc h                                         ; $4cc1: $8c
    jr nc, jr_006_4cf4                            ; $4cc2: $30 $30

    inc sp                                        ; $4cc4: $33
    inc sp                                        ; $4cc5: $33
    scf                                           ; $4cc6: $37
    scf                                           ; $4cc7: $37
    ld [hl], $b6                                  ; $4cc8: $36 $b6

jr_006_4cca:
    cp a                                          ; $4cca: $bf
    or a                                          ; $4ccb: $b7
    dec sp                                        ; $4ccc: $3b
    sbc e                                         ; $4ccd: $9b

jr_006_4cce:
    inc b                                         ; $4cce: $04
    nop                                           ; $4ccf: $00
    inc b                                         ; $4cd0: $04
    ret nz                                        ; $4cd1: $c0

    adc b                                         ; $4cd2: $88
    ldh [$ffc0], a                                ; $4cd3: $e0 $c0
    pop hl                                        ; $4cd5: $e1
    ldh [$ffe7], a                                ; $4cd6: $e0 $e7

jr_006_4cd8:
    rst RST_20                                    ; $4cd8: $e7
    and a                                         ; $4cd9: $a7
    add a                                         ; $4cda: $87
    inc b                                         ; $4cdb: $04
    nop                                           ; $4cdc: $00
    add a                                         ; $4cdd: $87
    ld h, b                                       ; $4cde: $60
    ld h, b                                       ; $4cdf: $60
    ldh [$ff60], a                                ; $4ce0: $e0 $60
    ret nz                                        ; $4ce2: $c0

    ld h, b                                       ; $4ce3: $60
    ldh [$ff03], a                                ; $4ce4: $e0 $03
    ret nz                                        ; $4ce6: $c0

    add d                                         ; $4ce7: $82
    add b                                         ; $4ce8: $80
    add b                                         ; $4ce9: $80
    ld a, [bc]                                    ; $4cea: $0a
    nop                                           ; $4ceb: $00
    add b                                         ; $4cec: $80
    add e                                         ; $4ced: $83
    dec b                                         ; $4cee: $05
    rlca                                          ; $4cef: $07
    rrca                                          ; $4cf0: $0f
    inc e                                         ; $4cf1: $1c
    jr jr_006_4d0c                                ; $4cf2: $18 $18

jr_006_4cf4:
    ld b, $00                                     ; $4cf4: $06 $00
    add b                                         ; $4cf6: $80
    add e                                         ; $4cf7: $83
    ld a, [bc]                                    ; $4cf8: $0a
    ldh [$fff0], a                                ; $4cf9: $e0 $f0
    jr c, jr_006_4d15                             ; $4cfb: $38 $18

    jr jr_006_4d17                                ; $4cfd: $18 $18

    jr jr_006_4d1d                                ; $4cff: $18 $1c

    rrca                                          ; $4d01: $0f
    rlca                                          ; $4d02: $07
    ld b, $00                                     ; $4d03: $06 $00
    inc b                                         ; $4d05: $04
    jr jr_006_4c8e                                ; $4d06: $18 $86

    jr c, jr_006_4d42                             ; $4d08: $38 $38

    ldh a, [$fff0]                                ; $4d0a: $f0 $f0

jr_006_4d0c:
    ldh [$ffe0], a                                ; $4d0c: $e0 $e0
    ld b, $00                                     ; $4d0e: $06 $00
    db $10                                        ; $4d10: $10
    jr jr_006_4d19                                ; $4d11: $18 $06

    nop                                           ; $4d13: $00
    inc b                                         ; $4d14: $04

jr_006_4d15:
    rst RST_38                                    ; $4d15: $ff
    rlca                                          ; $4d16: $07

jr_006_4d17:
    nop                                           ; $4d17: $00
    or d                                          ; $4d18: $b2

jr_006_4d19:
    ld a, [hl]                                    ; $4d19: $7e
    dec bc                                        ; $4d1a: $0b
    add a                                         ; $4d1b: $87
    ld c, c                                       ; $4d1c: $49

jr_006_4d1d:
    sub a                                         ; $4d1d: $97
    ld c, c                                       ; $4d1e: $49
    sub a                                         ; $4d1f: $97
    ld c, c                                       ; $4d20: $49
    sub a                                         ; $4d21: $97
    ld c, c                                       ; $4d22: $49
    sub a                                         ; $4d23: $97
    ld c, c                                       ; $4d24: $49
    sub a                                         ; $4d25: $97
    ld c, c                                       ; $4d26: $49
    sub a                                         ; $4d27: $97
    ld c, c                                       ; $4d28: $49
    sub a                                         ; $4d29: $97
    ld c, c                                       ; $4d2a: $49
    sub a                                         ; $4d2b: $97
    ld c, c                                       ; $4d2c: $49
    sub a                                         ; $4d2d: $97
    ld c, c                                       ; $4d2e: $49
    sub a                                         ; $4d2f: $97
    ld c, c                                       ; $4d30: $49
    sub a                                         ; $4d31: $97
    ld c, c                                       ; $4d32: $49
    sub a                                         ; $4d33: $97
    inc bc                                        ; $4d34: $03
    rst RST_38                                    ; $4d35: $ff
    ld a, [hl]                                    ; $4d36: $7e
    ld a, [hl]                                    ; $4d37: $7e
    ld c, c                                       ; $4d38: $49
    sub a                                         ; $4d39: $97
    ld c, c                                       ; $4d3a: $49
    sub a                                         ; $4d3b: $97
    ld a, [hl]                                    ; $4d3c: $7e
    ld a, [hl]                                    ; $4d3d: $7e
    ld c, c                                       ; $4d3e: $49
    sub a                                         ; $4d3f: $97
    ld c, c                                       ; $4d40: $49
    sub a                                         ; $4d41: $97

jr_006_4d42:
    ld a, [hl]                                    ; $4d42: $7e
    ld a, [hl]                                    ; $4d43: $7e
    ld c, c                                       ; $4d44: $49
    sub a                                         ; $4d45: $97
    ld c, c                                       ; $4d46: $49
    sub a                                         ; $4d47: $97
    nop                                           ; $4d48: $00
    db $db                                        ; $4d49: $db
    rst RST_38                                    ; $4d4a: $ff
    inc b                                         ; $4d4b: $04
    inc h                                         ; $4d4c: $24
    sbc h                                         ; $4d4d: $9c
    rst RST_38                                    ; $4d4e: $ff
    rst RST_38                                    ; $4d4f: $ff
    inc h                                         ; $4d50: $24
    inc h                                         ; $4d51: $24
    rst RST_38                                    ; $4d52: $ff
    inc h                                         ; $4d53: $24
    rst RST_38                                    ; $4d54: $ff
    db $db                                        ; $4d55: $db
    db $db                                        ; $4d56: $db
    nop                                           ; $4d57: $00
    ld a, a                                       ; $4d58: $7f
    ccf                                           ; $4d59: $3f
    add b                                         ; $4d5a: $80
    nop                                           ; $4d5b: $00
    add b                                         ; $4d5c: $80
    nop                                           ; $4d5d: $00
    cp a                                          ; $4d5e: $bf
    ld a, a                                       ; $4d5f: $7f
    add b                                         ; $4d60: $80
    nop                                           ; $4d61: $00
    rst RST_38                                    ; $4d62: $ff
    ld b, b                                       ; $4d63: $40
    rst RST_38                                    ; $4d64: $ff
    ld a, a                                       ; $4d65: $7f
    ld a, a                                       ; $4d66: $7f
    nop                                           ; $4d67: $00
    rst RST_38                                    ; $4d68: $ff
    rst RST_38                                    ; $4d69: $ff
    inc b                                         ; $4d6a: $04
    nop                                           ; $4d6b: $00
    add [hl]                                      ; $4d6c: $86
    rst RST_38                                    ; $4d6d: $ff
    rst RST_38                                    ; $4d6e: $ff
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    rst RST_38                                    ; $4d71: $ff
    nop                                           ; $4d72: $00
    inc bc                                        ; $4d73: $03
    rst RST_38                                    ; $4d74: $ff
    adc [hl]                                      ; $4d75: $8e
    nop                                           ; $4d76: $00
    cp $fd                                        ; $4d77: $fe $fd
    inc bc                                        ; $4d79: $03
    ld bc, $0103                                  ; $4d7a: $01 $03 $01
    rst RST_38                                    ; $4d7d: $ff
    db $fd                                        ; $4d7e: $fd
    inc bc                                        ; $4d7f: $03
    ld bc, $03ff                                  ; $4d80: $01 $ff $03
    rst RST_38                                    ; $4d83: $ff
    inc bc                                        ; $4d84: $03
    cp $8f                                        ; $4d85: $fe $8f
    ld bc, $7f81                                  ; $4d87: $01 $81 $7f
    cp c                                          ; $4d8a: $b9
    ld a, a                                       ; $4d8b: $7f
    and l                                         ; $4d8c: $a5
    ld a, e                                       ; $4d8d: $7b
    and l                                         ; $4d8e: $a5
    ld a, e                                       ; $4d8f: $7b
    sbc c                                         ; $4d90: $99
    ld h, e                                       ; $4d91: $63
    add c                                         ; $4d92: $81
    ld a, a                                       ; $4d93: $7f
    ld a, a                                       ; $4d94: $7f
    rst RST_38                                    ; $4d95: $ff
    nop                                           ; $4d96: $00
    nop                                           ; $4d97: $00
    sbc b                                         ; $4d98: $98
    add c                                         ; $4d99: $81
    add hl, sp                                    ; $4d9a: $39
    add b                                         ; $4d9b: $80
    inc b                                         ; $4d9c: $04
    dec [hl]                                      ; $4d9d: $35
    adc c                                         ; $4d9e: $89
    dec [hl]                                      ; $4d9f: $35
    ld [hl], $38                                  ; $4da0: $36 $38
    dec [hl]                                      ; $4da2: $35
    ld [hl], $38                                  ; $4da3: $36 $38
    dec [hl]                                      ; $4da5: $35
    ld [hl], $38                                  ; $4da6: $36 $38
    add b                                         ; $4da8: $80
    inc b                                         ; $4da9: $04
    dec [hl]                                      ; $4daa: $35
    add d                                         ; $4dab: $82
    dec [hl]                                      ; $4dac: $35
    add hl, sp                                    ; $4dad: $39
    inc c                                         ; $4dae: $0c
    nop                                           ; $4daf: $00
    add l                                         ; $4db0: $85
    inc [hl]                                      ; $4db1: $34
    nop                                           ; $4db2: $00
    nop                                           ; $4db3: $00
    ld bc, $0303                                  ; $4db4: $01 $03 $03
    nop                                           ; $4db7: $00
    add c                                         ; $4db8: $81
    rlca                                          ; $4db9: $07
    inc bc                                        ; $4dba: $03
    nop                                           ; $4dbb: $00
    add c                                         ; $4dbc: $81
    dec b                                         ; $4dbd: $05
    ld b, $00                                     ; $4dbe: $06 $00
    add c                                         ; $4dc0: $81
    inc [hl]                                      ; $4dc1: $34
    inc c                                         ; $4dc2: $0c
    nop                                           ; $4dc3: $00
    adc c                                         ; $4dc4: $89
    ld [hl-], a                                   ; $4dc5: $32
    nop                                           ; $4dc6: $00
    nop                                           ; $4dc7: $00
    ld [bc], a                                    ; $4dc8: $02
    inc b                                         ; $4dc9: $04
    add hl, bc                                    ; $4dca: $09
    nop                                           ; $4dcb: $00
    nop                                           ; $4dcc: $00
    ld [$0003], sp                                ; $4dcd: $08 $03 $00
    add d                                         ; $4dd0: $82
    ld b, $09                                     ; $4dd1: $06 $09
    dec b                                         ; $4dd3: $05
    nop                                           ; $4dd4: $00
    add c                                         ; $4dd5: $81
    ld [hl-], a                                   ; $4dd6: $32
    inc c                                         ; $4dd7: $0c
    nop                                           ; $4dd8: $00
    add c                                         ; $4dd9: $81
    inc sp                                        ; $4dda: $33
    inc bc                                        ; $4ddb: $03
    nop                                           ; $4ddc: $00
    add b                                         ; $4ddd: $80
    inc bc                                        ; $4dde: $03
    ld a, [bc]                                    ; $4ddf: $0a
    add d                                         ; $4de0: $82
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    add b                                         ; $4de3: $80
    inc bc                                        ; $4de4: $03
    dec c                                         ; $4de5: $0d
    add d                                         ; $4de6: $82
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    add b                                         ; $4de9: $80
    inc bc                                        ; $4dea: $03
    db $10                                        ; $4deb: $10
    add e                                         ; $4dec: $83
    nop                                           ; $4ded: $00
    nop                                           ; $4dee: $00
    inc sp                                        ; $4def: $33
    inc c                                         ; $4df0: $0c
    nop                                           ; $4df1: $00
    add c                                         ; $4df2: $81
    inc [hl]                                      ; $4df3: $34
    inc bc                                        ; $4df4: $03
    nop                                           ; $4df5: $00
    add b                                         ; $4df6: $80
    inc bc                                        ; $4df7: $03
    inc de                                        ; $4df8: $13
    add d                                         ; $4df9: $82
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    add b                                         ; $4dfc: $80
    inc bc                                        ; $4dfd: $03
    ld d, $82                                     ; $4dfe: $16 $82
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    add b                                         ; $4e02: $80
    inc bc                                        ; $4e03: $03
    add hl, de                                    ; $4e04: $19
    add e                                         ; $4e05: $83
    nop                                           ; $4e06: $00
    nop                                           ; $4e07: $00
    inc [hl]                                      ; $4e08: $34
    inc c                                         ; $4e09: $0c
    nop                                           ; $4e0a: $00
    sub h                                         ; $4e0b: $94
    ld [hl-], a                                   ; $4e0c: $32
    nop                                           ; $4e0d: $00
    inc l                                         ; $4e0e: $2c
    ld sp, $2d31                                  ; $4e0f: $31 $31 $2d
    inc l                                         ; $4e12: $2c
    ld sp, $2d31                                  ; $4e13: $31 $31 $2d
    inc l                                         ; $4e16: $2c
    ld sp, $2d31                                  ; $4e17: $31 $31 $2d
    inc l                                         ; $4e1a: $2c
    ld sp, $2d31                                  ; $4e1b: $31 $31 $2d
    nop                                           ; $4e1e: $00
    ld [hl-], a                                   ; $4e1f: $32
    inc c                                         ; $4e20: $0c
    nop                                           ; $4e21: $00
    sub h                                         ; $4e22: $94
    inc sp                                        ; $4e23: $33
    nop                                           ; $4e24: $00
    jr nc, jr_006_4e27                            ; $4e25: $30 $00

jr_006_4e27:
    nop                                           ; $4e27: $00
    jr nc, @+$32                                  ; $4e28: $30 $30

    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    jr nc, @+$32                                  ; $4e2c: $30 $30

    nop                                           ; $4e2e: $00
    nop                                           ; $4e2f: $00
    jr nc, @+$32                                  ; $4e30: $30 $30

    nop                                           ; $4e32: $00
    nop                                           ; $4e33: $00
    jr nc, jr_006_4e36                            ; $4e34: $30 $00

jr_006_4e36:
    inc sp                                        ; $4e36: $33
    inc c                                         ; $4e37: $0c
    nop                                           ; $4e38: $00
    sub h                                         ; $4e39: $94
    inc [hl]                                      ; $4e3a: $34
    nop                                           ; $4e3b: $00
    jr nc, jr_006_4e3e                            ; $4e3c: $30 $00

jr_006_4e3e:
    nop                                           ; $4e3e: $00
    jr nc, @+$32                                  ; $4e3f: $30 $30

    nop                                           ; $4e41: $00
    nop                                           ; $4e42: $00
    jr nc, @+$32                                  ; $4e43: $30 $30

    nop                                           ; $4e45: $00
    nop                                           ; $4e46: $00
    jr nc, @+$32                                  ; $4e47: $30 $30

    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    jr nc, jr_006_4e4d                            ; $4e4b: $30 $00

jr_006_4e4d:
    inc [hl]                                      ; $4e4d: $34
    inc c                                         ; $4e4e: $0c
    nop                                           ; $4e4f: $00
    sub h                                         ; $4e50: $94
    ld [hl-], a                                   ; $4e51: $32
    nop                                           ; $4e52: $00
    ld l, $31                                     ; $4e53: $2e $31
    ld sp, $2e2f                                  ; $4e55: $31 $2f $2e
    ld sp, $2f31                                  ; $4e58: $31 $31 $2f
    ld l, $31                                     ; $4e5b: $2e $31
    ld sp, $2e2f                                  ; $4e5d: $31 $2f $2e
    ld sp, $2f31                                  ; $4e60: $31 $31 $2f
    nop                                           ; $4e63: $00
    ld [hl-], a                                   ; $4e64: $32
    inc c                                         ; $4e65: $0c
    nop                                           ; $4e66: $00
    sub h                                         ; $4e67: $94
    inc sp                                        ; $4e68: $33
    nop                                           ; $4e69: $00
    inc l                                         ; $4e6a: $2c
    ld sp, $2d31                                  ; $4e6b: $31 $31 $2d
    inc l                                         ; $4e6e: $2c
    ld sp, $2d31                                  ; $4e6f: $31 $31 $2d
    inc l                                         ; $4e72: $2c
    ld sp, $2d31                                  ; $4e73: $31 $31 $2d
    inc l                                         ; $4e76: $2c
    ld sp, $2d31                                  ; $4e77: $31 $31 $2d
    nop                                           ; $4e7a: $00
    inc sp                                        ; $4e7b: $33
    inc c                                         ; $4e7c: $0c
    nop                                           ; $4e7d: $00
    sub h                                         ; $4e7e: $94
    inc [hl]                                      ; $4e7f: $34
    nop                                           ; $4e80: $00
    jr nc, jr_006_4e83                            ; $4e81: $30 $00

jr_006_4e83:
    nop                                           ; $4e83: $00
    jr nc, @+$32                                  ; $4e84: $30 $30

    nop                                           ; $4e86: $00
    nop                                           ; $4e87: $00
    jr nc, @+$32                                  ; $4e88: $30 $30

    nop                                           ; $4e8a: $00
    nop                                           ; $4e8b: $00
    jr nc, @+$32                                  ; $4e8c: $30 $30

    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    jr nc, jr_006_4e92                            ; $4e90: $30 $00

jr_006_4e92:
    inc [hl]                                      ; $4e92: $34
    inc c                                         ; $4e93: $0c
    nop                                           ; $4e94: $00
    sub h                                         ; $4e95: $94
    ld [hl-], a                                   ; $4e96: $32
    nop                                           ; $4e97: $00
    jr nc, jr_006_4e9a                            ; $4e98: $30 $00

jr_006_4e9a:
    nop                                           ; $4e9a: $00
    jr nc, jr_006_4ecd                            ; $4e9b: $30 $30

    nop                                           ; $4e9d: $00
    nop                                           ; $4e9e: $00
    jr nc, jr_006_4ed1                            ; $4e9f: $30 $30

    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    jr nc, jr_006_4ed5                            ; $4ea3: $30 $30

    nop                                           ; $4ea5: $00
    nop                                           ; $4ea6: $00
    jr nc, jr_006_4ea9                            ; $4ea7: $30 $00

jr_006_4ea9:
    ld [hl-], a                                   ; $4ea9: $32
    inc c                                         ; $4eaa: $0c
    nop                                           ; $4eab: $00
    sub h                                         ; $4eac: $94
    inc sp                                        ; $4ead: $33
    nop                                           ; $4eae: $00
    ld l, $31                                     ; $4eaf: $2e $31
    ld sp, $2e2f                                  ; $4eb1: $31 $2f $2e
    ld sp, $2f31                                  ; $4eb4: $31 $31 $2f
    ld l, $31                                     ; $4eb7: $2e $31
    ld sp, $2e2f                                  ; $4eb9: $31 $2f $2e
    ld sp, $2f31                                  ; $4ebc: $31 $31 $2f
    nop                                           ; $4ebf: $00
    inc sp                                        ; $4ec0: $33
    inc c                                         ; $4ec1: $0c
    nop                                           ; $4ec2: $00
    add h                                         ; $4ec3: $84
    inc [hl]                                      ; $4ec4: $34
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    inc l                                         ; $4ec7: $2c
    inc c                                         ; $4ec8: $0c
    ld sp, $2d84                                  ; $4ec9: $31 $84 $2d
    nop                                           ; $4ecc: $00

jr_006_4ecd:
    nop                                           ; $4ecd: $00
    inc [hl]                                      ; $4ece: $34
    inc c                                         ; $4ecf: $0c
    nop                                           ; $4ed0: $00

jr_006_4ed1:
    add h                                         ; $4ed1: $84
    ld [hl-], a                                   ; $4ed2: $32
    nop                                           ; $4ed3: $00
    nop                                           ; $4ed4: $00

jr_006_4ed5:
    jr nc, jr_006_4ee3                            ; $4ed5: $30 $0c

    nop                                           ; $4ed7: $00
    add h                                         ; $4ed8: $84
    jr nc, jr_006_4edb                            ; $4ed9: $30 $00

jr_006_4edb:
    nop                                           ; $4edb: $00
    ld [hl-], a                                   ; $4edc: $32
    inc c                                         ; $4edd: $0c
    nop                                           ; $4ede: $00
    add h                                         ; $4edf: $84
    inc sp                                        ; $4ee0: $33
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00

jr_006_4ee3:
    jr nc, jr_006_4ef1                            ; $4ee3: $30 $0c

    nop                                           ; $4ee5: $00
    add h                                         ; $4ee6: $84
    jr nc, jr_006_4ee9                            ; $4ee7: $30 $00

jr_006_4ee9:
    nop                                           ; $4ee9: $00
    inc sp                                        ; $4eea: $33
    inc c                                         ; $4eeb: $0c
    nop                                           ; $4eec: $00
    add h                                         ; $4eed: $84
    inc [hl]                                      ; $4eee: $34
    nop                                           ; $4eef: $00
    nop                                           ; $4ef0: $00

jr_006_4ef1:
    ld l, $0c                                     ; $4ef1: $2e $0c
    ld sp, $2f84                                  ; $4ef3: $31 $84 $2f
    nop                                           ; $4ef6: $00
    nop                                           ; $4ef7: $00
    inc [hl]                                      ; $4ef8: $34
    inc c                                         ; $4ef9: $0c
    nop                                           ; $4efa: $00
    add c                                         ; $4efb: $81
    add hl, sp                                    ; $4efc: $39
    add b                                         ; $4efd: $80
    inc b                                         ; $4efe: $04
    dec [hl]                                      ; $4eff: $35
    adc c                                         ; $4f00: $89
    dec [hl]                                      ; $4f01: $35
    ld [hl], $38                                  ; $4f02: $36 $38
    dec [hl]                                      ; $4f04: $35
    ld [hl], $38                                  ; $4f05: $36 $38
    dec [hl]                                      ; $4f07: $35
    ld [hl], $38                                  ; $4f08: $36 $38
    add b                                         ; $4f0a: $80
    inc b                                         ; $4f0b: $04
    dec [hl]                                      ; $4f0c: $35
    add d                                         ; $4f0d: $82
    dec [hl]                                      ; $4f0e: $35
    add hl, sp                                    ; $4f0f: $39
    inc c                                         ; $4f10: $0c
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    ccf                                           ; $4f13: $3f
    ccf                                           ; $4f14: $3f
    ccf                                           ; $4f15: $3f
    ccf                                           ; $4f16: $3f
    ccf                                           ; $4f17: $3f
    ccf                                           ; $4f18: $3f
    ccf                                           ; $4f19: $3f
    ccf                                           ; $4f1a: $3f
    dec b                                         ; $4f1b: $05
    ld bc, $071b                                  ; $4f1c: $01 $1b $07
    ccf                                           ; $4f1f: $3f
    ccf                                           ; $4f20: $3f
    ccf                                           ; $4f21: $3f
    ccf                                           ; $4f22: $3f
    inc de                                        ; $4f23: $13
    scf                                           ; $4f24: $37
    rlca                                          ; $4f25: $07
    ld [$3f0b], sp                                ; $4f26: $08 $0b $3f
    ccf                                           ; $4f29: $3f
    ccf                                           ; $4f2a: $3f
    dec [hl]                                      ; $4f2b: $35
    ld [hl], $3a                                  ; $4f2c: $36 $3a
    dec sp                                        ; $4f2e: $3b
    add hl, sp                                    ; $4f2f: $39
    ccf                                           ; $4f30: $3f
    ccf                                           ; $4f31: $3f
    ccf                                           ; $4f32: $3f
    inc b                                         ; $4f33: $04
    add hl, hl                                    ; $4f34: $29
    ld a, [hl+]                                   ; $4f35: $2a
    ccf                                           ; $4f36: $3f
    ccf                                           ; $4f37: $3f
    ccf                                           ; $4f38: $3f
    ccf                                           ; $4f39: $3f
    ccf                                           ; $4f3a: $3f
    dec b                                         ; $4f3b: $05
    scf                                           ; $4f3c: $37
    dec l                                         ; $4f3d: $2d
    dec c                                         ; $4f3e: $0d
    ld b, $3f                                     ; $4f3f: $06 $3f
    ccf                                           ; $4f41: $3f
    ccf                                           ; $4f42: $3f
    ld l, $2f                                     ; $4f43: $2e $2f
    jr nc, jr_006_4f80                            ; $4f45: $30 $39

    ccf                                           ; $4f47: $3f
    ccf                                           ; $4f48: $3f
    ccf                                           ; $4f49: $3f
    ccf                                           ; $4f4a: $3f
    ld a, [de]                                    ; $4f4b: $1a
    add hl, sp                                    ; $4f4c: $39
    dec [hl]                                      ; $4f4d: $35
    scf                                           ; $4f4e: $37
    ccf                                           ; $4f4f: $3f
    ccf                                           ; $4f50: $3f
    ccf                                           ; $4f51: $3f
    ccf                                           ; $4f52: $3f
    add hl, bc                                    ; $4f53: $09
    ld [bc], a                                    ; $4f54: $02
    ld [$0637], sp                                ; $4f55: $08 $37 $06
    ccf                                           ; $4f58: $3f
    ccf                                           ; $4f59: $3f
    ccf                                           ; $4f5a: $3f
    ld e, $22                                     ; $4f5b: $1e $22
    add hl, hl                                    ; $4f5d: $29
    ccf                                           ; $4f5e: $3f
    ccf                                           ; $4f5f: $3f
    ccf                                           ; $4f60: $3f
    ccf                                           ; $4f61: $3f
    ccf                                           ; $4f62: $3f
    inc de                                        ; $4f63: $13
    ld [bc], a                                    ; $4f64: $02
    ld hl, $3f01                                  ; $4f65: $21 $01 $3f
    ccf                                           ; $4f68: $3f
    ccf                                           ; $4f69: $3f
    ccf                                           ; $4f6a: $3f
    dec b                                         ; $4f6b: $05
    ld bc, $071b                                  ; $4f6c: $01 $1b $07
    ccf                                           ; $4f6f: $3f
    ccf                                           ; $4f70: $3f
    ccf                                           ; $4f71: $3f
    ccf                                           ; $4f72: $3f
    inc de                                        ; $4f73: $13
    dec de                                        ; $4f74: $1b
    scf                                           ; $4f75: $37
    ccf                                           ; $4f76: $3f
    ccf                                           ; $4f77: $3f
    ccf                                           ; $4f78: $3f
    ccf                                           ; $4f79: $3f
    ccf                                           ; $4f7a: $3f
    nop                                           ; $4f7b: $00
    dec b                                         ; $4f7c: $05
    add hl, hl                                    ; $4f7d: $29
    ccf                                           ; $4f7e: $3f
    ccf                                           ; $4f7f: $3f

jr_006_4f80:
    ccf                                           ; $4f80: $3f
    ccf                                           ; $4f81: $3f
    ccf                                           ; $4f82: $3f
    dec [hl]                                      ; $4f83: $35
    ld [hl], $3a                                  ; $4f84: $36 $3a
    inc h                                         ; $4f86: $24
    scf                                           ; $4f87: $37
    add hl, sp                                    ; $4f88: $39
    ccf                                           ; $4f89: $3f
    ccf                                           ; $4f8a: $3f
    ccf                                           ; $4f8b: $3f
    ccf                                           ; $4f8c: $3f
    ccf                                           ; $4f8d: $3f
    ccf                                           ; $4f8e: $3f
    ccf                                           ; $4f8f: $3f
    ccf                                           ; $4f90: $3f
    ccf                                           ; $4f91: $3f
    ccf                                           ; $4f92: $3f
    ld a, [bc]                                    ; $4f93: $0a
    scf                                           ; $4f94: $37
    add hl, sp                                    ; $4f95: $39
    db $10                                        ; $4f96: $10
    ld d, $37                                     ; $4f97: $16 $37
    ccf                                           ; $4f99: $3f
    ccf                                           ; $4f9a: $3f
    ld a, [bc]                                    ; $4f9b: $0a
    scf                                           ; $4f9c: $37
    add hl, sp                                    ; $4f9d: $39
    db $10                                        ; $4f9e: $10
    ld d, $37                                     ; $4f9f: $16 $37
    ccf                                           ; $4fa1: $3f
    ccf                                           ; $4fa2: $3f
    inc a                                         ; $4fa3: $3c
    dec a                                         ; $4fa4: $3d
    jr jr_006_4fc9                                ; $4fa5: $18 $22

    inc de                                        ; $4fa7: $13
    ccf                                           ; $4fa8: $3f
    ccf                                           ; $4fa9: $3f
    ccf                                           ; $4faa: $3f
    ld sp, $3332                                  ; $4fab: $31 $32 $33
    inc [hl]                                      ; $4fae: $34
    scf                                           ; $4faf: $37
    ccf                                           ; $4fb0: $3f
    ccf                                           ; $4fb1: $3f
    ccf                                           ; $4fb2: $3f
    dec b                                         ; $4fb3: $05
    ld b, $37                                     ; $4fb4: $06 $37
    ccf                                           ; $4fb6: $3f
    ccf                                           ; $4fb7: $3f
    ccf                                           ; $4fb8: $3f
    ccf                                           ; $4fb9: $3f
    ccf                                           ; $4fba: $3f
    ccf                                           ; $4fbb: $3f
    ccf                                           ; $4fbc: $3f
    ccf                                           ; $4fbd: $3f
    ccf                                           ; $4fbe: $3f
    ccf                                           ; $4fbf: $3f
    ccf                                           ; $4fc0: $3f
    ccf                                           ; $4fc1: $3f
    ccf                                           ; $4fc2: $3f
    ccf                                           ; $4fc3: $3f
    ccf                                           ; $4fc4: $3f
    ccf                                           ; $4fc5: $3f
    ccf                                           ; $4fc6: $3f
    ccf                                           ; $4fc7: $3f
    ccf                                           ; $4fc8: $3f

jr_006_4fc9:
    ccf                                           ; $4fc9: $3f
    ccf                                           ; $4fca: $3f
    ccf                                           ; $4fcb: $3f
    ccf                                           ; $4fcc: $3f
    ccf                                           ; $4fcd: $3f
    ccf                                           ; $4fce: $3f
    ccf                                           ; $4fcf: $3f
    ccf                                           ; $4fd0: $3f
    ccf                                           ; $4fd1: $3f
    ccf                                           ; $4fd2: $3f
    ld e, $1d                                     ; $4fd3: $1e $1d
    ld [bc], a                                    ; $4fd5: $02
    jr jr_006_4fe0                                ; $4fd6: $18 $08

    dec l                                         ; $4fd8: $2d
    ccf                                           ; $4fd9: $3f
    ccf                                           ; $4fda: $3f
    dec e                                         ; $4fdb: $1d
    jr jr_006_4fe2                                ; $4fdc: $18 $04

    jr @+$0a                                      ; $4fde: $18 $08

jr_006_4fe0:
    dec l                                         ; $4fe0: $2d
    ccf                                           ; $4fe1: $3f

jr_006_4fe2:
    ccf                                           ; $4fe2: $3f
    ld bc, $1114                                  ; $4fe3: $01 $14 $11
    scf                                           ; $4fe6: $37
    ld e, $18                                     ; $4fe7: $1e $18
    ld [$122d], sp                                ; $4fe9: $08 $2d $12
    scf                                           ; $4fec: $37
    dec l                                         ; $4fed: $2d
    dec c                                         ; $4fee: $0d
    ld de, $0818                                  ; $4fef: $11 $18 $08
    dec l                                         ; $4ff2: $2d
    ld b, $18                                     ; $4ff3: $06 $18
    rrca                                          ; $4ff5: $0f
    ld [de], a                                    ; $4ff6: $12
    ccf                                           ; $4ff7: $3f
    ccf                                           ; $4ff8: $3f
    ccf                                           ; $4ff9: $3f
    ccf                                           ; $4ffa: $3f
    ld [de], a                                    ; $4ffb: $12
    ld de, $0f18                                  ; $4ffc: $11 $18 $0f
    ld [de], a                                    ; $4fff: $12
    ccf                                           ; $5000: $3f
    ccf                                           ; $5001: $3f
    ccf                                           ; $5002: $3f
    add hl, de                                    ; $5003: $19
    dec b                                         ; $5004: $05
    scf                                           ; $5005: $37
    rla                                           ; $5006: $17
    jr jr_006_5018                                ; $5007: $18 $0f

    ld [de], a                                    ; $5009: $12
    ccf                                           ; $500a: $3f
    ld [de], a                                    ; $500b: $12
    scf                                           ; $500c: $37
    dec l                                         ; $500d: $2d
    dec c                                         ; $500e: $0d
    ld de, $0f18                                  ; $500f: $11 $18 $0f
    ld [de], a                                    ; $5012: $12
    ld d, c                                       ; $5013: $51
    ld d, b                                       ; $5014: $50
    sub d                                         ; $5015: $92
    ld d, b                                       ; $5016: $50
    db $d3                                        ; $5017: $d3

jr_006_5018:
    ld d, b                                       ; $5018: $50
    inc d                                         ; $5019: $14
    ld d, c                                       ; $501a: $51
    ld d, l                                       ; $501b: $55
    ld d, c                                       ; $501c: $51
    sub [hl]                                      ; $501d: $96
    ld d, c                                       ; $501e: $51
    rst RST_10                                    ; $501f: $d7
    ld d, c                                       ; $5020: $51
    jr jr_006_5075                                ; $5021: $18 $52

    ld e, c                                       ; $5023: $59
    ld d, d                                       ; $5024: $52
    sbc d                                         ; $5025: $9a
    ld d, d                                       ; $5026: $52
    db $db                                        ; $5027: $db
    ld d, d                                       ; $5028: $52
    inc e                                         ; $5029: $1c
    ld d, e                                       ; $502a: $53
    ld e, l                                       ; $502b: $5d
    ld d, e                                       ; $502c: $53
    sbc [hl]                                      ; $502d: $9e
    ld d, e                                       ; $502e: $53
    sbc $53                                       ; $502f: $de $53
    sbc $53                                       ; $5031: $de $53
    sbc $53                                       ; $5033: $de $53
    rra                                           ; $5035: $1f
    ld d, h                                       ; $5036: $54
    ld h, b                                       ; $5037: $60
    ld d, h                                       ; $5038: $54
    and c                                         ; $5039: $a1
    ld d, h                                       ; $503a: $54
    ldh [c], a                                    ; $503b: $e2
    ld d, h                                       ; $503c: $54
    ldh [c], a                                    ; $503d: $e2
    ld d, h                                       ; $503e: $54
    ldh [c], a                                    ; $503f: $e2
    ld d, h                                       ; $5040: $54
    ldh [c], a                                    ; $5041: $e2
    ld d, h                                       ; $5042: $54
    inc hl                                        ; $5043: $23
    ld d, l                                       ; $5044: $55
    ld h, h                                       ; $5045: $64
    ld d, l                                       ; $5046: $55
    and l                                         ; $5047: $a5
    ld d, l                                       ; $5048: $55
    and $55                                       ; $5049: $e6 $55
    daa                                           ; $504b: $27
    ld d, [hl]                                    ; $504c: $56
    ld l, b                                       ; $504d: $68
    ld d, [hl]                                    ; $504e: $56
    xor c                                         ; $504f: $a9
    ld d, [hl]                                    ; $5050: $56
    inc b                                         ; $5051: $04
    rlca                                          ; $5052: $07
    rlca                                          ; $5053: $07
    inc b                                         ; $5054: $04
    inc b                                         ; $5055: $04
    inc bc                                        ; $5056: $03
    ld [bc], a                                    ; $5057: $02
    ld [bc], a                                    ; $5058: $02
    ld [bc], a                                    ; $5059: $02
    ld [bc], a                                    ; $505a: $02
    ld [bc], a                                    ; $505b: $02
    ld b, $02                                     ; $505c: $06 $02
    dec e                                         ; $505e: $1d
    inc c                                         ; $505f: $0c
    inc de                                        ; $5060: $13
    jr nc, jr_006_50ce                            ; $5061: $30 $6b

    daa                                           ; $5063: $27
    ld d, h                                       ; $5064: $54
    ld c, h                                       ; $5065: $4c
    ld d, h                                       ; $5066: $54
    ld c, h                                       ; $5067: $4c
    ld d, d                                       ; $5068: $52
    ld c, [hl]                                    ; $5069: $4e
    ld d, c                                       ; $506a: $51
    ld c, a                                       ; $506b: $4f
    jr z, jr_006_5095                             ; $506c: $28 $27

    ld e, $19                                     ; $506e: $1e $19
    rlca                                          ; $5070: $07
    rlca                                          ; $5071: $07
    ldh a, [$fff0]                                ; $5072: $f0 $f0
    ret nc                                        ; $5074: $d0

jr_006_5075:
    jr nc, jr_006_5097                            ; $5075: $30 $20

    ldh [$ffa0], a                                ; $5077: $e0 $a0
    ld h, b                                       ; $5079: $60
    and b                                         ; $507a: $a0
    ld h, b                                       ; $507b: $60
    or b                                          ; $507c: $b0
    ld h, b                                       ; $507d: $60
    sbc h                                         ; $507e: $9c
    ld a, b                                       ; $507f: $78
    call nz, $e33e                                ; $5080: $c4 $3e $e3
    ld a, [hl]                                    ; $5083: $7e
    sub c                                         ; $5084: $91
    sbc a                                         ; $5085: $9f
    ld de, $211f                                  ; $5086: $11 $1f $21
    ccf                                           ; $5089: $3f
    ld b, c                                       ; $508a: $41
    ld a, a                                       ; $508b: $7f
    add d                                         ; $508c: $82
    cp $0c                                        ; $508d: $fe $0c
    db $fc                                        ; $508f: $fc

jr_006_5090:
    ldh a, [$fff0]                                ; $5090: $f0 $f0
    inc b                                         ; $5092: $04
    rlca                                          ; $5093: $07
    rlca                                          ; $5094: $07

jr_006_5095:
    inc b                                         ; $5095: $04
    inc b                                         ; $5096: $04

jr_006_5097:
    inc bc                                        ; $5097: $03
    ld [bc], a                                    ; $5098: $02
    ld [bc], a                                    ; $5099: $02
    ld [bc], a                                    ; $509a: $02
    ld [bc], a                                    ; $509b: $02
    ld [bc], a                                    ; $509c: $02
    dec b                                         ; $509d: $05
    inc b                                         ; $509e: $04
    dec b                                         ; $509f: $05
    inc b                                         ; $50a0: $04
    dec bc                                        ; $50a1: $0b
    add hl, bc                                    ; $50a2: $09
    dec bc                                        ; $50a3: $0b
    dec bc                                        ; $50a4: $0b
    ld d, $12                                     ; $50a5: $16 $12
    ld d, $12                                     ; $50a7: $16 $12
    daa                                           ; $50a9: $27

jr_006_50aa:
    inc hl                                        ; $50aa: $23
    cpl                                           ; $50ab: $2f
    jr nz, jr_006_50fd                            ; $50ac: $20 $4f

    ld b, d                                       ; $50ae: $42
    ld e, a                                       ; $50af: $5f
    ld b, b                                       ; $50b0: $40
    ccf                                           ; $50b1: $3f
    ccf                                           ; $50b2: $3f
    ldh a, [$fff0]                                ; $50b3: $f0 $f0
    ret nc                                        ; $50b5: $d0

    jr nc, jr_006_50d8                            ; $50b6: $30 $20

    ldh [$ffa0], a                                ; $50b8: $e0 $a0
    ld h, b                                       ; $50ba: $60
    and b                                         ; $50bb: $a0
    ld h, b                                       ; $50bc: $60
    ret nc                                        ; $50bd: $d0

    jr nc, jr_006_5090                            ; $50be: $30 $d0

    jr nc, jr_006_50aa                            ; $50c0: $30 $e8

    ret c                                         ; $50c2: $d8

    add sp, -$08                                  ; $50c3: $e8 $f8
    or h                                          ; $50c5: $b4
    xor h                                         ; $50c6: $ac
    or h                                          ; $50c7: $b4
    xor h                                         ; $50c8: $ac
    ldh a, [c]                                    ; $50c9: $f2
    xor $fa                                       ; $50ca: $ee $fa

jr_006_50cc:
    ld b, $f9                                     ; $50cc: $06 $f9

jr_006_50ce:
    and a                                         ; $50ce: $a7
    pop af                                        ; $50cf: $f1
    rrca                                          ; $50d0: $0f
    cp $fe                                        ; $50d1: $fe $fe
    inc b                                         ; $50d3: $04
    nop                                           ; $50d4: $00
    nop                                           ; $50d5: $00
    stop                                          ; $50d6: $10 $00

jr_006_50d8:
    ld [$0800], sp                                ; $50d8: $08 $00 $08
    nop                                           ; $50db: $00
    ld c, c                                       ; $50dc: $49
    nop                                           ; $50dd: $00
    dec l                                         ; $50de: $2d
    nop                                           ; $50df: $00
    dec h                                         ; $50e0: $25
    ld [$057a], sp                                ; $50e1: $08 $7a $05
    ld d, d                                       ; $50e4: $52
    dec l                                         ; $50e5: $2d
    ret nz                                        ; $50e6: $c0

    ccf                                           ; $50e7: $3f
    reti                                          ; $50e8: $d9


    scf                                           ; $50e9: $37
    push de                                       ; $50ea: $d5
    ld a, $4e                                     ; $50eb: $3e $4e
    scf                                           ; $50ed: $37
    ld h, b                                       ; $50ee: $60
    rra                                           ; $50ef: $1f
    add hl, sp                                    ; $50f0: $39
    ld b, $0f                                     ; $50f1: $06 $0f
    nop                                           ; $50f3: $00
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    nop                                           ; $50f8: $00
    nop                                           ; $50f9: $00
    add b                                         ; $50fa: $80
    nop                                           ; $50fb: $00
    nop                                           ; $50fc: $00

jr_006_50fd:
    nop                                           ; $50fd: $00
    ld bc, $8600                                  ; $50fe: $01 $00 $86
    nop                                           ; $5101: $00
    call c, $e800                                 ; $5102: $dc $00 $e8
    db $10                                        ; $5105: $10
    db $10                                        ; $5106: $10
    ldh [$ff30], a                                ; $5107: $e0 $30
    ret nz                                        ; $5109: $c0

    jr nz, jr_006_50cc                            ; $510a: $20 $c0

    ld h, b                                       ; $510c: $60
    add b                                         ; $510d: $80
    ret nz                                        ; $510e: $c0

    nop                                           ; $510f: $00
    ret nz                                        ; $5110: $c0

    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    inc b                                         ; $5114: $04
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    ld bc, $0000                                  ; $5117: $01 $00 $00
    nop                                           ; $511a: $00
    ld hl, sp-$08                                 ; $511b: $f8 $f8
    ld hl, sp-$78                                 ; $511d: $f8 $88
    ld hl, sp-$78                                 ; $511f: $f8 $88
    rst RST_08                                    ; $5121: $cf
    adc a                                         ; $5122: $8f
    adc $89                                       ; $5123: $ce $89
    rst RST_08                                    ; $5125: $cf
    adc b                                         ; $5126: $88
    call $cc88                                    ; $5127: $cd $88 $cc
    adc b                                         ; $512a: $88
    call z, $cc88                                 ; $512b: $cc $88 $cc
    adc b                                         ; $512e: $88
    call z, $cc88                                 ; $512f: $cc $88 $cc
    adc b                                         ; $5132: $88
    rst RST_38                                    ; $5133: $ff
    rst RST_38                                    ; $5134: $ff
    add b                                         ; $5135: $80
    nop                                           ; $5136: $00
    ret nz                                        ; $5137: $c0

    nop                                           ; $5138: $00
    ldh [rP1], a                                  ; $5139: $e0 $00
    ld [hl], b                                    ; $513b: $70
    nop                                           ; $513c: $00
    ld a, [hl-]                                   ; $513d: $3a
    nop                                           ; $513e: $00
    ld e, $00                                     ; $513f: $1e $00
    adc [hl]                                      ; $5141: $8e
    add b                                         ; $5142: $80
    sbc [hl]                                      ; $5143: $9e
    add b                                         ; $5144: $80
    add b                                         ; $5145: $80
    add b                                         ; $5146: $80
    ld hl, sp-$08                                 ; $5147: $f8 $f8
    adc b                                         ; $5149: $88
    ld hl, sp-$18                                 ; $514a: $f8 $e8
    sbc b                                         ; $514c: $98
    rst RST_28                                    ; $514d: $ef
    sbc a                                         ; $514e: $9f
    reti                                          ; $514f: $d9


    adc a                                         ; $5150: $8f
    db $dd                                        ; $5151: $dd
    adc e                                         ; $5152: $8b
    rst RST_38                                    ; $5153: $ff
    rst RST_38                                    ; $5154: $ff
    inc b                                         ; $5155: $04
    nop                                           ; $5156: $00
    nop                                           ; $5157: $00
    jr jr_006_5172                                ; $5158: $18 $18

    dec [hl]                                      ; $515a: $35
    dec l                                         ; $515b: $2d
    ld c, d                                       ; $515c: $4a
    ld b, [hl]                                    ; $515d: $46
    ld d, b                                       ; $515e: $50
    ld c, [hl]                                    ; $515f: $4e
    sbc e                                         ; $5160: $9b
    add h                                         ; $5161: $84
    or h                                          ; $5162: $b4
    adc b                                         ; $5163: $88
    xor h                                         ; $5164: $ac
    add d                                         ; $5165: $82
    push bc                                       ; $5166: $c5
    and d                                         ; $5167: $a2
    push bc                                       ; $5168: $c5
    and e                                         ; $5169: $a3
    sbc d                                         ; $516a: $9a
    rst RST_20                                    ; $516b: $e7
    xor d                                         ; $516c: $aa
    rst RST_20                                    ; $516d: $e7
    ld hl, sp-$59                                 ; $516e: $f8 $a7
    xor [hl]                                      ; $5170: $ae
    pop af                                        ; $5171: $f1

jr_006_5172:
    ld [hl], c                                    ; $5172: $71
    ld a, a                                       ; $5173: $7f
    rra                                           ; $5174: $1f
    ccf                                           ; $5175: $3f
    ld [hl], b                                    ; $5176: $70
    ld [hl], b                                    ; $5177: $70
    adc b                                         ; $5178: $88
    sbc b                                         ; $5179: $98
    inc [hl]                                      ; $517a: $34
    inc c                                         ; $517b: $0c
    ld [hl+], a                                   ; $517c: $22
    ld e, [hl]                                    ; $517d: $5e
    ld l, d                                       ; $517e: $6a
    ld e, $05                                     ; $517f: $1e $05
    sbc a                                         ; $5181: $9f
    inc sp                                        ; $5182: $33
    rst RST_08                                    ; $5183: $cf
    cp e                                          ; $5184: $bb
    ld b, a                                       ; $5185: $47
    sbc c                                         ; $5186: $99
    rlca                                          ; $5187: $07
    ld sp, hl                                     ; $5188: $f9
    rlca                                          ; $5189: $07
    jp $a93f                                      ; $518a: $c3 $3f $a9


    ld a, a                                       ; $518d: $7f
    xor l                                         ; $518e: $ad
    ld a, a                                       ; $518f: $7f
    push bc                                       ; $5190: $c5
    ccf                                           ; $5191: $3f
    ld c, $fe                                     ; $5192: $0e $fe
    ld hl, sp-$04                                 ; $5194: $f8 $fc
    inc b                                         ; $5196: $04
    ld a, a                                       ; $5197: $7f
    ccf                                           ; $5198: $3f
    add b                                         ; $5199: $80
    ld b, b                                       ; $519a: $40
    add b                                         ; $519b: $80
    add b                                         ; $519c: $80
    add e                                         ; $519d: $83
    ld b, a                                       ; $519e: $47
    ld a, h                                       ; $519f: $7c
    jr c, jr_006_51a5                             ; $51a0: $38 $03

    ld bc, $060e                                  ; $51a2: $01 $0e $06

jr_006_51a5:
    jr jr_006_51af                                ; $51a5: $18 $08

    jr nc, jr_006_51d9                            ; $51a7: $30 $30

    jr nc, jr_006_51cb                            ; $51a9: $30 $20

    ld [hl], e                                    ; $51ab: $73
    ld h, b                                       ; $51ac: $60
    ld l, l                                       ; $51ad: $6d
    ld [hl], e                                    ; $51ae: $73

jr_006_51af:
    ld a, a                                       ; $51af: $7f
    ld e, [hl]                                    ; $51b0: $5e
    ld l, l                                       ; $51b1: $6d
    ld d, d                                       ; $51b2: $52
    ld l, l                                       ; $51b3: $6d
    inc sp                                        ; $51b4: $33
    ld a, $1e                                     ; $51b5: $3e $1e
    ldh a, [$ffe0]                                ; $51b7: $f0 $e0
    inc c                                         ; $51b9: $0c
    jr jr_006_51be                                ; $51ba: $18 $02

    inc b                                         ; $51bc: $04
    ldh a, [c]                                    ; $51bd: $f2

jr_006_51be:
    ldh [c], a                                    ; $51be: $e2
    ld [de], a                                    ; $51bf: $12
    ld [de], a                                    ; $51c0: $12
    or $f4                                        ; $51c1: $f6 $f4
    db $fc                                        ; $51c3: $fc
    jr z, jr_006_5222                             ; $51c4: $28 $5c

    inc [hl]                                      ; $51c6: $34
    ld a, h                                       ; $51c7: $7c
    inc [hl]                                      ; $51c8: $34
    or h                                          ; $51c9: $b4
    ld l, b                                       ; $51ca: $68

jr_006_51cb:
    ld a, b                                       ; $51cb: $78
    ret z                                         ; $51cc: $c8

    sbc b                                         ; $51cd: $98
    ldh a, [$ff30]                                ; $51ce: $f0 $30
    ldh [$ff60], a                                ; $51d0: $e0 $60
    ret nz                                        ; $51d2: $c0

    add b                                         ; $51d3: $80
    add b                                         ; $51d4: $80
    nop                                           ; $51d5: $00
    nop                                           ; $51d6: $00
    inc b                                         ; $51d7: $04
    inc sp                                        ; $51d8: $33

jr_006_51d9:
    ld sp, $4a4b                                  ; $51d9: $31 $4b $4a
    cp d                                          ; $51dc: $ba
    xor d                                         ; $51dd: $aa
    or [hl]                                       ; $51de: $b6
    sub h                                         ; $51df: $94
    cp [hl]                                       ; $51e0: $be
    sbc h                                         ; $51e1: $9c
    ld b, [hl]                                    ; $51e2: $46
    ld b, h                                       ; $51e3: $44
    ld a, $3c                                     ; $51e4: $3e $3c
    ld b, $04                                     ; $51e6: $06 $04
    inc bc                                        ; $51e8: $03
    ld [bc], a                                    ; $51e9: $02
    ld bc, $0301                                  ; $51ea: $01 $01 $03
    inc bc                                        ; $51ed: $03
    inc b                                         ; $51ee: $04
    inc b                                         ; $51ef: $04
    dec b                                         ; $51f0: $05
    dec b                                         ; $51f1: $05
    rlca                                          ; $51f2: $07
    inc bc                                        ; $51f3: $03
    ld c, $04                                     ; $51f4: $0e $04
    rrca                                          ; $51f6: $0f
    rlca                                          ; $51f7: $07
    db $fc                                        ; $51f8: $fc
    ld hl, sp+$0c                                 ; $51f9: $f8 $0c
    inc b                                         ; $51fb: $04
    halt                                          ; $51fc: $76
    inc c                                         ; $51fd: $0c
    ld a, d                                       ; $51fe: $7a
    ld b, $7a                                     ; $51ff: $06 $7a
    ld b, $7b                                     ; $5201: $06 $7b
    ld b, $fb                                     ; $5203: $06 $fb
    rst RST_18                                    ; $5205: $df
    ld a, e                                       ; $5206: $7b
    rlca                                          ; $5207: $07
    ld a, l                                       ; $5208: $7d
    dec e                                         ; $5209: $1d
    ldh [c], a                                    ; $520a: $e2
    ldh [c], a                                    ; $520b: $e2
    inc e                                         ; $520c: $1c
    inc e                                         ; $520d: $1c
    ldh a, [$fff0]                                ; $520e: $f0 $f0
    or e                                          ; $5210: $b3
    sub e                                         ; $5211: $93
    cp l                                          ; $5212: $bd
    sbc l                                         ; $5213: $9d
    ld h, a                                       ; $5214: $67
    ld a, [de]                                    ; $5215: $1a
    rst RST_38                                    ; $5216: $ff
    cp $04                                        ; $5217: $fe $04
    inc b                                         ; $5219: $04
    inc b                                         ; $521a: $04
    ld c, $0a                                     ; $521b: $0e $0a
    inc de                                        ; $521d: $13
    ld de, $1113                                  ; $521e: $11 $13 $11
    inc de                                        ; $5221: $13

jr_006_5222:
    ld de, $1113                                  ; $5222: $11 $13 $11
    rra                                           ; $5225: $1f
    ld de, $7f7f                                  ; $5226: $11 $7f $7f
    jr jr_006_5243                                ; $5229: $18 $18

    dec hl                                        ; $522b: $2b
    dec hl                                        ; $522c: $2b
    ld a, [hl+]                                   ; $522d: $2a
    dec hl                                        ; $522e: $2b
    dec l                                         ; $522f: $2d
    cpl                                           ; $5230: $2f
    dec h                                         ; $5231: $25
    inc hl                                        ; $5232: $23
    dec [hl]                                      ; $5233: $35
    inc hl                                        ; $5234: $23

jr_006_5235:
    rra                                           ; $5235: $1f
    rra                                           ; $5236: $1f
    rrca                                          ; $5237: $0f
    rrca                                          ; $5238: $0f
    nop                                           ; $5239: $00
    nop                                           ; $523a: $00
    nop                                           ; $523b: $00
    nop                                           ; $523c: $00
    nop                                           ; $523d: $00
    nop                                           ; $523e: $00
    nop                                           ; $523f: $00
    nop                                           ; $5240: $00
    nop                                           ; $5241: $00
    nop                                           ; $5242: $00

jr_006_5243:
    nop                                           ; $5243: $00
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    ldh [$ffc0], a                                ; $5247: $e0 $c0
    jr nc, jr_006_526b                            ; $5249: $30 $20

    sbc h                                         ; $524b: $9c
    inc e                                         ; $524c: $1c
    call z, $dc84                                 ; $524d: $cc $84 $dc
    call nz, $9c7c                                ; $5250: $c4 $7c $9c
    jr nz, jr_006_5235                            ; $5253: $20 $e0

    ret nz                                        ; $5255: $c0

    ret nz                                        ; $5256: $c0

    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    inc b                                         ; $5259: $04
    nop                                           ; $525a: $00
    nop                                           ; $525b: $00
    nop                                           ; $525c: $00
    ld b, h                                       ; $525d: $44
    ld bc, $0101                                  ; $525e: $01 $01 $01
    dec d                                         ; $5261: $15
    ld bc, $210d                                  ; $5262: $01 $0d $21
    dec h                                         ; $5265: $25
    inc sp                                        ; $5266: $33
    ld sp, $f2f2                                  ; $5267: $31 $f2 $f2
    ld [hl], d                                    ; $526a: $72

jr_006_526b:
    ld [hl], d                                    ; $526b: $72
    ld a, [bc]                                    ; $526c: $0a
    ld a, [bc]                                    ; $526d: $0a
    ld a, [bc]                                    ; $526e: $0a
    ld a, [bc]                                    ; $526f: $0a
    ld [de], a                                    ; $5270: $12
    ld [de], a                                    ; $5271: $12
    and a                                         ; $5272: $a7
    and d                                         ; $5273: $a2
    call $e1c1                                    ; $5274: $cd $c1 $e1
    add sp, $00                                   ; $5277: $e8 $00
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    nop                                           ; $527b: $00
    ldh [$ffe0], a                                ; $527c: $e0 $e0
    jr nc, jr_006_5290                            ; $527e: $30 $10

    jr nc, jr_006_5292                            ; $5280: $30 $10

    jr nc, jr_006_5294                            ; $5282: $30 $10

    jr c, @+$12                                   ; $5284: $38 $10

    jr z, jr_006_52b0                             ; $5286: $28 $28

    add sp, $28                                   ; $5288: $e8 $28
    cpl                                           ; $528a: $2f
    cpl                                           ; $528b: $2f
    ld l, l                                       ; $528c: $6d
    add hl, hl                                    ; $528d: $29
    ld c, l                                       ; $528e: $4d
    ld b, c                                       ; $528f: $41

jr_006_5290:
    ld c, a                                       ; $5290: $4f
    ld b, c                                       ; $5291: $41

jr_006_5292:
    rra                                           ; $5292: $1f
    rlca                                          ; $5293: $07

jr_006_5294:
    db $fc                                        ; $5294: $fc
    ld [$f0f8], sp                                ; $5295: $08 $f8 $f0
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    inc b                                         ; $529a: $04
    nop                                           ; $529b: $00
    inc bc                                        ; $529c: $03
    rlca                                          ; $529d: $07
    rlca                                          ; $529e: $07
    nop                                           ; $529f: $00
    rlca                                          ; $52a0: $07
    rlca                                          ; $52a1: $07
    rlca                                          ; $52a2: $07
    nop                                           ; $52a3: $00
    inc bc                                        ; $52a4: $03
    rra                                           ; $52a5: $1f
    rra                                           ; $52a6: $1f
    nop                                           ; $52a7: $00
    ccf                                           ; $52a8: $3f
    ld a, a                                       ; $52a9: $7f
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    ld h, a                                       ; $52ac: $67
    ld h, a                                       ; $52ad: $67
    nop                                           ; $52ae: $00
    nop                                           ; $52af: $00

jr_006_52b0:
    rrca                                          ; $52b0: $0f
    ld c, $00                                     ; $52b1: $0e $00
    nop                                           ; $52b3: $00
    nop                                           ; $52b4: $00
    inc e                                         ; $52b5: $1c
    nop                                           ; $52b6: $00
    nop                                           ; $52b7: $00
    nop                                           ; $52b8: $00
    inc e                                         ; $52b9: $1c
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    ret nz                                        ; $52bc: $c0

    ldh [$ffe0], a                                ; $52bd: $e0 $e0
    nop                                           ; $52bf: $00
    ldh [$ffe0], a                                ; $52c0: $e0 $e0
    ldh [rP1], a                                  ; $52c2: $e0 $00
    ret nz                                        ; $52c4: $c0

    ld hl, sp-$08                                 ; $52c5: $f8 $f8
    nop                                           ; $52c7: $00
    db $fc                                        ; $52c8: $fc
    cp $00                                        ; $52c9: $fe $00
    nop                                           ; $52cb: $00
    and $e6                                       ; $52cc: $e6 $e6
    nop                                           ; $52ce: $00
    nop                                           ; $52cf: $00
    ldh a, [rSVBK]                                ; $52d0: $f0 $70
    nop                                           ; $52d2: $00
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    jr c, jr_006_52d7                             ; $52d5: $38 $00

jr_006_52d7:
    nop                                           ; $52d7: $00
    nop                                           ; $52d8: $00
    jr c, jr_006_52db                             ; $52d9: $38 $00

jr_006_52db:
    inc b                                         ; $52db: $04
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    inc a                                         ; $52de: $3c
    inc a                                         ; $52df: $3c
    ld b, [hl]                                    ; $52e0: $46
    ld b, d                                       ; $52e1: $42
    sbc a                                         ; $52e2: $9f
    add c                                         ; $52e3: $81
    cp a                                          ; $52e4: $bf
    adc a                                         ; $52e5: $8f
    cp a                                          ; $52e6: $bf
    adc a                                         ; $52e7: $8f
    cp a                                          ; $52e8: $bf
    adc h                                         ; $52e9: $8c
    ld e, a                                       ; $52ea: $5f
    ld c, a                                       ; $52eb: $4f
    ld e, a                                       ; $52ec: $5f
    ld c, a                                       ; $52ed: $4f
    cpl                                           ; $52ee: $2f
    inc l                                         ; $52ef: $2c
    rra                                           ; $52f0: $1f
    db $10                                        ; $52f1: $10
    rrca                                          ; $52f2: $0f
    ld [$0407], sp                                ; $52f3: $08 $07 $04
    inc bc                                        ; $52f6: $03
    ld [bc], a                                    ; $52f7: $02
    ld bc, $0001                                  ; $52f8: $01 $01 $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    ld a, b                                       ; $52fe: $78
    ld a, b                                       ; $52ff: $78
    adc h                                         ; $5300: $8c
    add h                                         ; $5301: $84
    ld a, [hl]                                    ; $5302: $7e
    ld [bc], a                                    ; $5303: $02
    cp $e3                                        ; $5304: $fe $e3
    cp $f3                                        ; $5306: $fe $f3
    cp $33                                        ; $5308: $fe $33
    db $fc                                        ; $530a: $fc
    rst RST_30                                    ; $530b: $f7
    db $fc                                        ; $530c: $fc
    and $f8                                       ; $530d: $e6 $f8
    ld c, $f0                                     ; $530f: $0e $f0
    inc e                                         ; $5311: $1c
    ldh [$ff38], a                                ; $5312: $e0 $38
    ret nz                                        ; $5314: $c0

    ld [hl], b                                    ; $5315: $70
    add b                                         ; $5316: $80
    ldh [rP1], a                                  ; $5317: $e0 $00
    ret nz                                        ; $5319: $c0

    nop                                           ; $531a: $00
    add b                                         ; $531b: $80
    inc b                                         ; $531c: $04
    nop                                           ; $531d: $00
    ld bc, $0301                                  ; $531e: $01 $01 $03
    ld [bc], a                                    ; $5321: $02
    ld b, $04                                     ; $5322: $06 $04
    inc b                                         ; $5324: $04
    ld a, h                                       ; $5325: $7c
    ld a, h                                       ; $5326: $7c
    call z, $8484                                 ; $5327: $cc $84 $84
    add h                                         ; $532a: $84
    adc l                                         ; $532b: $8d
    add h                                         ; $532c: $84
    db $dd                                        ; $532d: $dd
    add b                                         ; $532e: $80
    ld a, b                                       ; $532f: $78
    ld a, b                                       ; $5330: $78
    dec bc                                        ; $5331: $0b
    ld a, [hl-]                                   ; $5332: $3a
    scf                                           ; $5333: $37
    inc sp                                        ; $5334: $33
    inc l                                         ; $5335: $2c
    inc h                                         ; $5336: $24
    jr c, jr_006_5371                             ; $5337: $38 $38

    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    ld bc, $fffe                                  ; $533d: $01 $fe $ff
    rst RST_38                                    ; $5340: $ff
    rrca                                          ; $5341: $0f
    ld bc, $7e7e                                  ; $5342: $01 $7e $7e
    jr c, jr_006_534f                             ; $5345: $38 $08

    ldh a, [$fff0]                                ; $5347: $f0 $f0
    ld h, h                                       ; $5349: $64
    inc h                                         ; $534a: $24
    push bc                                       ; $534b: $c5
    push bc                                       ; $534c: $c5
    ret                                           ; $534d: $c9


    ret                                           ; $534e: $c9


jr_006_534f:
    ld h, d                                       ; $534f: $62
    ld [hl+], a                                   ; $5350: $22
    or b                                          ; $5351: $b0
    jr nz, @-$42                                  ; $5352: $20 $bc

    cp h                                          ; $5354: $bc
    and h                                         ; $5355: $a4
    cp h                                          ; $5356: $bc
    cp h                                          ; $5357: $bc
    sbc h                                         ; $5358: $9c
    ld e, h                                       ; $5359: $5c
    ld b, h                                       ; $535a: $44
    inc a                                         ; $535b: $3c
    inc a                                         ; $535c: $3c
    inc b                                         ; $535d: $04
    ld b, c                                       ; $535e: $41
    nop                                           ; $535f: $00
    add [hl]                                      ; $5360: $86
    ld bc, $030c                                  ; $5361: $01 $0c $03
    jr jr_006_536a                                ; $5364: $18 $04

    db $10                                        ; $5366: $10
    ld [$0910], sp                                ; $5367: $08 $10 $09

jr_006_536a:
    add hl, de                                    ; $536a: $19
    dec b                                         ; $536b: $05
    adc d                                         ; $536c: $8a
    dec b                                         ; $536d: $05
    add h                                         ; $536e: $84
    inc b                                         ; $536f: $04
    ld b, a                                       ; $5370: $47

jr_006_5371:
    inc b                                         ; $5371: $04
    rla                                           ; $5372: $17
    inc b                                         ; $5373: $04
    rlca                                          ; $5374: $07
    inc b                                         ; $5375: $04
    rlca                                          ; $5376: $07
    inc b                                         ; $5377: $04
    rlca                                          ; $5378: $07
    inc b                                         ; $5379: $04
    rlca                                          ; $537a: $07
    rlca                                          ; $537b: $07
    nop                                           ; $537c: $00
    nop                                           ; $537d: $00
    inc b                                         ; $537e: $04
    nop                                           ; $537f: $00
    jp nz, Jump_006_6000                          ; $5380: $c2 $00 $60

    add b                                         ; $5383: $80
    ld sp, $1140                                  ; $5384: $31 $40 $11
    jr nz, jr_006_539a                            ; $5387: $20 $11

    jr nz, jr_006_53bc                            ; $5389: $20 $31

    ld b, b                                       ; $538b: $40
    and b                                         ; $538c: $a0
    ld b, b                                       ; $538d: $40
    ld b, d                                       ; $538e: $42
    ld b, b                                       ; $538f: $40
    ld b, h                                       ; $5390: $44
    ld b, b                                       ; $5391: $40
    ld d, b                                       ; $5392: $50
    ld b, b                                       ; $5393: $40
    ld b, b                                       ; $5394: $40
    ld b, b                                       ; $5395: $40
    ret nz                                        ; $5396: $c0

    ld b, b                                       ; $5397: $40
    ret nz                                        ; $5398: $c0

    ld b, b                                       ; $5399: $40

jr_006_539a:
    ret nz                                        ; $539a: $c0

    ret nz                                        ; $539b: $c0

jr_006_539c:
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    inc b                                         ; $539e: $04
    nop                                           ; $539f: $00
    ld [hl+], a                                   ; $53a0: $22
    nop                                           ; $53a1: $00
    sub e                                         ; $53a2: $93
    nop                                           ; $53a3: $00
    ld b, e                                       ; $53a4: $43
    nop                                           ; $53a5: $00
    ld h, e                                       ; $53a6: $63
    nop                                           ; $53a7: $00
    ld [hl], $01                                  ; $53a8: $36 $01
    scf                                           ; $53aa: $37
    nop                                           ; $53ab: $00
    ld h, [hl]                                    ; $53ac: $66
    ld de, $017e                                  ; $53ad: $11 $7e $01
    ld l, h                                       ; $53b0: $6c
    inc de                                        ; $53b1: $13
    dec h                                         ; $53b2: $25
    ld a, [de]                                    ; $53b3: $1a
    and c                                         ; $53b4: $a1
    rra                                           ; $53b5: $1f
    halt                                          ; $53b6: $76
    dec c                                         ; $53b7: $0d
    ld sp, $1c0f                                  ; $53b8: $31 $0f $1c
    inc bc                                        ; $53bb: $03

jr_006_53bc:
    rlca                                          ; $53bc: $07
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    ld c, c                                       ; $53c0: $49
    nop                                           ; $53c1: $00
    ld d, d                                       ; $53c2: $52
    nop                                           ; $53c3: $00
    stop                                          ; $53c4: $10 $00
    or d                                          ; $53c6: $b2
    nop                                           ; $53c7: $00
    or [hl]                                       ; $53c8: $b6
    nop                                           ; $53c9: $00
    or h                                          ; $53ca: $b4
    nop                                           ; $53cb: $00
    sub $20                                       ; $53cc: $d6 $20
    cp $00                                        ; $53ce: $fe $00
    sub $28                                       ; $53d0: $d6 $28
    ld e, h                                       ; $53d2: $5c
    and b                                         ; $53d3: $a0
    dec h                                         ; $53d4: $25
    ret c                                         ; $53d5: $d8

    add $f8                                       ; $53d6: $c6 $f8
    adc h                                         ; $53d8: $8c
    ld [hl], b                                    ; $53d9: $70
    jr c, jr_006_539c                             ; $53da: $38 $c0

    ldh [rP1], a                                  ; $53dc: $e0 $00
    inc b                                         ; $53de: $04
    db $10                                        ; $53df: $10
    inc bc                                        ; $53e0: $03
    ld hl, $4012                                  ; $53e1: $21 $12 $40
    ld hl, $0000                                  ; $53e4: $21 $00 $00
    and b                                         ; $53e7: $a0
    ld b, c                                       ; $53e8: $41
    ld h, c                                       ; $53e9: $61
    or d                                          ; $53ea: $b2
    ld h, c                                       ; $53eb: $61
    or d                                          ; $53ec: $b2
    or e                                          ; $53ed: $b3
    ldh [$fff7], a                                ; $53ee: $e0 $f7
    xor b                                         ; $53f0: $a8
    or e                                          ; $53f1: $b3
    ldh [$ffb3], a                                ; $53f2: $e0 $b3
    ldh [$ff5b], a                                ; $53f4: $e0 $5b
    ld [hl], h                                    ; $53f6: $74
    ld e, b                                       ; $53f7: $58
    ld [hl], a                                    ; $53f8: $77
    ld l, $39                                     ; $53f9: $2e $39
    rra                                           ; $53fb: $1f
    ld e, $07                                     ; $53fc: $1e $07
    rlca                                          ; $53fe: $07
    and b                                         ; $53ff: $a0
    ldh [$fff8], a                                ; $5400: $e0 $f8
    jr jr_006_5420                                ; $5402: $18 $1c

    db $e4                                        ; $5404: $e4
    ld b, $2a                                     ; $5405: $06 $2a
    ld h, [hl]                                    ; $5407: $66
    adc d                                         ; $5408: $8a
    add e                                         ; $5409: $83
    ld bc, $05eb                                  ; $540a: $01 $eb $05
    xor e                                         ; $540d: $ab
    dec b                                         ; $540e: $05
    dec de                                        ; $540f: $1b
    dec b                                         ; $5410: $05
    cp e                                          ; $5411: $bb
    dec b                                         ; $5412: $05
    or e                                          ; $5413: $b3
    dec c                                         ; $5414: $0d
    or $0a                                        ; $5415: $f6 $0a
    add $3a                                       ; $5417: $c6 $3a
    inc e                                         ; $5419: $1c
    db $e4                                        ; $541a: $e4
    ld hl, sp+$18                                 ; $541b: $f8 $18
    ldh [$ffe0], a                                ; $541d: $e0 $e0
    inc b                                         ; $541f: $04

jr_006_5420:
    inc bc                                        ; $5420: $03
    inc bc                                        ; $5421: $03
    inc bc                                        ; $5422: $03
    ld [bc], a                                    ; $5423: $02
    rlca                                          ; $5424: $07
    rlca                                          ; $5425: $07
    inc b                                         ; $5426: $04
    inc b                                         ; $5427: $04
    ld [bc], a                                    ; $5428: $02
    ld [bc], a                                    ; $5429: $02
    ld [bc], a                                    ; $542a: $02
    ld [bc], a                                    ; $542b: $02
    ld [bc], a                                    ; $542c: $02
    ld [bc], a                                    ; $542d: $02
    inc a                                         ; $542e: $3c
    inc a                                         ; $542f: $3c
    ld h, b                                       ; $5430: $60
    ld b, b                                       ; $5431: $40
    ld c, c                                       ; $5432: $49
    ld c, c                                       ; $5433: $49
    ld c, c                                       ; $5434: $49
    ld c, c                                       ; $5435: $49
    ld e, a                                       ; $5436: $5f
    ld c, a                                       ; $5437: $4f
    ld e, a                                       ; $5438: $5f
    ld c, c                                       ; $5439: $49
    ld e, a                                       ; $543a: $5f
    ld c, c                                       ; $543b: $49
    ld l, a                                       ; $543c: $6f
    ld b, b                                       ; $543d: $40
    ccf                                           ; $543e: $3f
    ccf                                           ; $543f: $3f
    ldh [$ffe0], a                                ; $5440: $e0 $e0
    ldh [rNR41], a                                ; $5442: $e0 $20
    ldh a, [$fff0]                                ; $5444: $f0 $f0
    ld [hl], b                                    ; $5446: $70
    db $10                                        ; $5447: $10
    ldh [rNR41], a                                ; $5448: $e0 $20
    ld h, b                                       ; $544a: $60
    jr nz, @+$62                                  ; $544b: $20 $60

    jr nz, jr_006_54cd                            ; $544d: $20 $7e

    ld e, $3d                                     ; $544f: $1e $3d
    inc bc                                        ; $5451: $03
    ld a, a                                       ; $5452: $7f
    ld a, c                                       ; $5453: $79
    ld c, e                                       ; $5454: $4b
    ld c, c                                       ; $5455: $49
    db $fd                                        ; $5456: $fd
    ld a, e                                       ; $5457: $7b
    db $fd                                        ; $5458: $fd
    ld b, e                                       ; $5459: $43
    db $fd                                        ; $545a: $fd
    ld b, e                                       ; $545b: $43
    ld sp, hl                                     ; $545c: $f9
    rlca                                          ; $545d: $07
    cp $fe                                        ; $545e: $fe $fe
    inc b                                         ; $5460: $04
    inc bc                                        ; $5461: $03
    inc bc                                        ; $5462: $03
    rlca                                          ; $5463: $07
    inc b                                         ; $5464: $04
    rrca                                          ; $5465: $0f
    ld [$393f], sp                                ; $5466: $08 $3f $39
    ccf                                           ; $5469: $3f
    inc hl                                        ; $546a: $23
    ccf                                           ; $546b: $3f
    ld a, [hl-]                                   ; $546c: $3a
    rra                                           ; $546d: $1f
    jr jr_006_54af                                ; $546e: $18 $3f

    jr nz, @+$41                                  ; $5470: $20 $3f

    jr nz, jr_006_54f3                            ; $5472: $20 $7f

    ld c, b                                       ; $5474: $48
    ld [hl], a                                    ; $5475: $77
    ld d, h                                       ; $5476: $54
    ld [hl], a                                    ; $5477: $77
    ld d, h                                       ; $5478: $54
    ccf                                           ; $5479: $3f
    jr c, jr_006_549b                             ; $547a: $38 $1f

    ld de, $223e                                  ; $547c: $11 $3e $22
    ld a, $3e                                     ; $547f: $3e $3e
    ldh [$ffe0], a                                ; $5481: $e0 $e0
    ldh a, [rNR10]                                ; $5483: $f0 $10
    ld hl, sp+$08                                 ; $5485: $f8 $08
    cp $ce                                        ; $5487: $fe $ce
    cp $62                                        ; $5489: $fe $62
    cp $2e                                        ; $548b: $fe $2e
    db $fc                                        ; $548d: $fc
    ld l, h                                       ; $548e: $6c
    cp $c2                                        ; $548f: $fe $c2
    cp $82                                        ; $5491: $fe $82
    rst RST_38                                    ; $5493: $ff
    add hl, bc                                    ; $5494: $09
    rst RST_30                                    ; $5495: $f7
    sub l                                         ; $5496: $95
    rst RST_30                                    ; $5497: $f7
    sub l                                         ; $5498: $95
    cp $0e                                        ; $5499: $fe $0e

jr_006_549b:
    db $fc                                        ; $549b: $fc
    call nz, $223e                                ; $549c: $c4 $3e $22
    ld a, $3e                                     ; $549f: $3e $3e
    inc b                                         ; $54a1: $04
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    ld bc, $0101                                  ; $54a6: $01 $01 $01
    ld bc, $0101                                  ; $54a9: $01 $01 $01
    ld bc, $0101                                  ; $54ac: $01 $01 $01

jr_006_54af:
    ld bc, $0202                                  ; $54af: $01 $02 $02
    inc b                                         ; $54b2: $04
    inc b                                         ; $54b3: $04
    add hl, bc                                    ; $54b4: $09
    ld [$1012], sp                                ; $54b5: $08 $12 $10
    ld h, $22                                     ; $54b8: $26 $22
    ld c, l                                       ; $54ba: $4d
    ld b, l                                       ; $54bb: $45
    sub [hl]                                      ; $54bc: $96
    add d                                         ; $54bd: $82
    or d                                          ; $54be: $b2
    sub d                                         ; $54bf: $92
    ld l, h                                       ; $54c0: $6c
    ld l, h                                       ; $54c1: $6c
    ld a, h                                       ; $54c2: $7c
    ld a, h                                       ; $54c3: $7c
    add [hl]                                      ; $54c4: $86
    add d                                         ; $54c5: $82
    dec sp                                        ; $54c6: $3b
    add hl, sp                                    ; $54c7: $39
    ld l, a                                       ; $54c8: $6f
    ld b, l                                       ; $54c9: $45
    ld b, a                                       ; $54ca: $47
    ld b, l                                       ; $54cb: $45
    ld l, a                                       ; $54cc: $6f

jr_006_54cd:
    ld b, l                                       ; $54cd: $45
    ccf                                           ; $54ce: $3f
    add hl, sp                                    ; $54cf: $39
    rla                                           ; $54d0: $17
    ld [bc], a                                    ; $54d1: $02
    cp $7c                                        ; $54d2: $fe $7c
    add b                                         ; $54d4: $80
    add b                                         ; $54d5: $80
    ret nz                                        ; $54d6: $c0

    ld b, b                                       ; $54d7: $40
    ld b, b                                       ; $54d8: $40
    ld b, b                                       ; $54d9: $40
    add b                                         ; $54da: $80
    add b                                         ; $54db: $80
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    inc b                                         ; $54e2: $04
    ldh a, [$fff0]                                ; $54e3: $f0 $f0
    adc b                                         ; $54e5: $88
    adc b                                         ; $54e6: $88
    call nz, $e284                                ; $54e7: $c4 $84 $e2
    sub d                                         ; $54ea: $92
    ld [hl], c                                    ; $54eb: $71
    ld c, c                                       ; $54ec: $49
    jr c, jr_006_5513                             ; $54ed: $38 $24

    inc e                                         ; $54ef: $1c
    ld [de], a                                    ; $54f0: $12
    ld c, $09                                     ; $54f1: $0e $09

jr_006_54f3:
    rlca                                          ; $54f3: $07
    inc b                                         ; $54f4: $04
    inc bc                                        ; $54f5: $03
    ld [bc], a                                    ; $54f6: $02
    ld bc, $0301                                  ; $54f7: $01 $01 $03
    inc bc                                        ; $54fa: $03
    inc bc                                        ; $54fb: $03
    ld [bc], a                                    ; $54fc: $02
    ld bc, $0001                                  ; $54fd: $01 $01 $00
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    nop                                           ; $550a: $00
    nop                                           ; $550b: $00
    nop                                           ; $550c: $00
    add b                                         ; $550d: $80
    add b                                         ; $550e: $80
    ld e, b                                       ; $550f: $58
    ld e, b                                       ; $5510: $58
    inc a                                         ; $5511: $3c
    inc [hl]                                      ; $5512: $34

jr_006_5513:
    inc a                                         ; $5513: $3c
    sub h                                         ; $5514: $94
    cp a                                          ; $5515: $bf
    ld d, a                                       ; $5516: $57
    rst RST_38                                    ; $5517: $ff
    add hl, hl                                    ; $5518: $29
    rst RST_38                                    ; $5519: $ff
    rst RST_10                                    ; $551a: $d7
    cp $2e                                        ; $551b: $fe $2e
    rst RST_38                                    ; $551d: $ff
    db $db                                        ; $551e: $db
    ld a, a                                       ; $551f: $7f
    ld e, l                                       ; $5520: $5d
    ld [hl], a                                    ; $5521: $77
    ld [hl], a                                    ; $5522: $77
    inc b                                         ; $5523: $04
    ld b, h                                       ; $5524: $44
    nop                                           ; $5525: $00
    ld h, h                                       ; $5526: $64
    nop                                           ; $5527: $00
    ld a, $00                                     ; $5528: $3e $00
    cp a                                          ; $552a: $bf
    nop                                           ; $552b: $00
    ld [hl], a                                    ; $552c: $77
    ld [$0639], sp                                ; $552d: $08 $39 $06
    ld a, [hl-]                                   ; $5530: $3a
    rlca                                          ; $5531: $07
    ld a, h                                       ; $5532: $7c
    inc bc                                        ; $5533: $03
    ld c, $01                                     ; $5534: $0e $01
    rra                                           ; $5536: $1f
    nop                                           ; $5537: $00
    ld bc, $0000                                  ; $5538: $01 $00 $00
    nop                                           ; $553b: $00
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    ld b, b                                       ; $5548: $40
    nop                                           ; $5549: $00
    ld b, b                                       ; $554a: $40
    nop                                           ; $554b: $00
    ld b, b                                       ; $554c: $40
    nop                                           ; $554d: $00
    ret nz                                        ; $554e: $c0

    nop                                           ; $554f: $00
    ret nz                                        ; $5550: $c0

    nop                                           ; $5551: $00
    ld h, b                                       ; $5552: $60
    add b                                         ; $5553: $80
    and b                                         ; $5554: $a0
    ret nz                                        ; $5555: $c0

    ld d, [hl]                                    ; $5556: $56
    and $be                                       ; $5557: $e6 $be
    ld l, d                                       ; $5559: $6a
    ld a, h                                       ; $555a: $7c
    inc d                                         ; $555b: $14
    inc a                                         ; $555c: $3c
    inc h                                         ; $555d: $24
    ld a, [hl]                                    ; $555e: $7e
    ld e, d                                       ; $555f: $5a
    ld h, a                                       ; $5560: $67
    ld h, l                                       ; $5561: $65
    inc bc                                        ; $5562: $03
    inc bc                                        ; $5563: $03
    inc b                                         ; $5564: $04
    ld hl, sp-$08                                 ; $5565: $f8 $f8
    add h                                         ; $5567: $84
    add h                                         ; $5568: $84
    and d                                         ; $5569: $a2
    add d                                         ; $556a: $82
    cp c                                          ; $556b: $b9
    add c                                         ; $556c: $81
    xor h                                         ; $556d: $ac
    adc b                                         ; $556e: $88
    halt                                          ; $556f: $76
    ld b, h                                       ; $5570: $44
    dec sp                                        ; $5571: $3b
    ld [hl+], a                                   ; $5572: $22
    dec e                                         ; $5573: $1d
    ld de, $080e                                  ; $5574: $11 $0e $08
    rlca                                          ; $5577: $07
    inc b                                         ; $5578: $04
    inc bc                                        ; $5579: $03
    inc bc                                        ; $557a: $03
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    nop                                           ; $557d: $00
    nop                                           ; $557e: $00
    ld bc, $0101                                  ; $557f: $01 $01 $01
    ld bc, $0000                                  ; $5582: $01 $00 $00
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    nop                                           ; $558a: $00
    nop                                           ; $558b: $00
    nop                                           ; $558c: $00
    add b                                         ; $558d: $80
    add b                                         ; $558e: $80
    ld b, b                                       ; $558f: $40
    ld b, b                                       ; $5590: $40
    jr nz, jr_006_55b3                            ; $5591: $20 $20

    and [hl]                                      ; $5593: $a6
    ld h, $ef                                     ; $5594: $26 $ef
    xor c                                         ; $5596: $a9
    ld a, [hl]                                    ; $5597: $7e
    ld d, [hl]                                    ; $5598: $56
    ld hl, sp-$58                                 ; $5599: $f8 $a8
    ld a, h                                       ; $559b: $7c
    ld e, h                                       ; $559c: $5c
    ld a, [$ddb2]                                 ; $559d: $fa $b2 $dd
    ld d, l                                       ; $55a0: $55
    call $8749                                    ; $55a1: $cd $49 $87
    add a                                         ; $55a4: $87
    inc b                                         ; $55a5: $04
    cp $fe                                        ; $55a6: $fe $fe
    add d                                         ; $55a8: $82
    add d                                         ; $55a9: $82
    and e                                         ; $55aa: $a3
    add d                                         ; $55ab: $82
    or c                                          ; $55ac: $b1
    add c                                         ; $55ad: $81
    xor c                                         ; $55ae: $a9
    sub c                                         ; $55af: $91
    and h                                         ; $55b0: $a4
    sbc b                                         ; $55b1: $98
    ldh [c], a                                    ; $55b2: $e2

jr_006_55b3:
    db $fc                                        ; $55b3: $fc
    add hl, sp                                    ; $55b4: $39
    ld e, $0e                                     ; $55b5: $1e $0e
    rlca                                          ; $55b7: $07
    inc bc                                        ; $55b8: $03
    ld bc, $0001                                  ; $55b9: $01 $01 $00
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    inc e                                         ; $55be: $1c
    inc e                                         ; $55bf: $1c
    dec bc                                        ; $55c0: $0b
    dec bc                                        ; $55c1: $0b
    inc b                                         ; $55c2: $04
    inc b                                         ; $55c3: $04
    inc bc                                        ; $55c4: $03
    inc bc                                        ; $55c5: $03
    nop                                           ; $55c6: $00
    nop                                           ; $55c7: $00
    nop                                           ; $55c8: $00
    nop                                           ; $55c9: $00
    nop                                           ; $55ca: $00
    nop                                           ; $55cb: $00
    ld [$8c08], sp                                ; $55cc: $08 $08 $8c
    inc c                                         ; $55cf: $0c
    adc d                                         ; $55d0: $8a
    adc d                                         ; $55d1: $8a
    push bc                                       ; $55d2: $c5
    add l                                         ; $55d3: $85
    ld h, l                                       ; $55d4: $65
    ld b, l                                       ; $55d5: $45
    cp d                                          ; $55d6: $ba
    ld a, [hl+]                                   ; $55d7: $2a
    ld d, h                                       ; $55d8: $54
    sub h                                         ; $55d9: $94
    xor b                                         ; $55da: $a8
    add sp, -$2c                                  ; $55db: $e8 $d4
    ld d, h                                       ; $55dd: $54
    xor d                                         ; $55de: $aa
    or d                                          ; $55df: $b2
    ld d, [hl]                                    ; $55e0: $56
    ld e, d                                       ; $55e1: $5a
    adc a                                         ; $55e2: $8f
    adc l                                         ; $55e3: $8d
    ld [bc], a                                    ; $55e4: $02
    ld [bc], a                                    ; $55e5: $02
    inc b                                         ; $55e6: $04
    ld a, a                                       ; $55e7: $7f
    ccf                                           ; $55e8: $3f
    ld b, h                                       ; $55e9: $44
    ld b, b                                       ; $55ea: $40
    ld a, a                                       ; $55eb: $7f
    ld a, a                                       ; $55ec: $7f
    ld d, c                                       ; $55ed: $51
    ld b, h                                       ; $55ee: $44
    ld b, a                                       ; $55ef: $47
    ld b, a                                       ; $55f0: $47
    ld d, h                                       ; $55f1: $54
    ld b, h                                       ; $55f2: $44
    ld d, a                                       ; $55f3: $57
    ld b, a                                       ; $55f4: $47
    ld e, d                                       ; $55f5: $5a
    ld b, h                                       ; $55f6: $44
    ld d, [hl]                                    ; $55f7: $56
    ld b, b                                       ; $55f8: $40
    ld b, [hl]                                    ; $55f9: $46
    ld b, b                                       ; $55fa: $40
    ld d, b                                       ; $55fb: $50
    ld b, h                                       ; $55fc: $44
    ld d, c                                       ; $55fd: $51
    ld b, h                                       ; $55fe: $44
    ld d, c                                       ; $55ff: $51
    ld b, h                                       ; $5600: $44
    ld a, a                                       ; $5601: $7f
    ld a, a                                       ; $5602: $7f
    ld e, e                                       ; $5603: $5b
    ld b, h                                       ; $5604: $44
    ld a, a                                       ; $5605: $7f
    ccf                                           ; $5606: $3f
    cp $fc                                        ; $5607: $fe $fc
    ld d, [hl]                                    ; $5609: $56
    xor d                                         ; $560a: $aa
    cp $fe                                        ; $560b: $fe $fe
    ld d, [hl]                                    ; $560d: $56
    xor d                                         ; $560e: $aa
    and $ea                                       ; $560f: $e6 $ea
    ld h, $2a                                     ; $5611: $26 $2a
    xor $e2                                       ; $5613: $ee $e2
    ld c, [hl]                                    ; $5615: $4e
    and d                                         ; $5616: $a2
    ld d, [hl]                                    ; $5617: $56
    xor d                                         ; $5618: $aa
    sbc [hl]                                      ; $5619: $9e
    ld [hl+], a                                   ; $561a: $22
    sbc [hl]                                      ; $561b: $9e
    ld [hl+], a                                   ; $561c: $22
    ld e, $a2                                     ; $561d: $1e $a2
    ld d, $aa                                     ; $561f: $16 $aa
    cp $fe                                        ; $5621: $fe $fe
    ld d, [hl]                                    ; $5623: $56
    xor d                                         ; $5624: $aa
    cp $fc                                        ; $5625: $fe $fc
    inc b                                         ; $5627: $04
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    ld a, a                                       ; $562a: $7f
    ld a, a                                       ; $562b: $7f
    ld b, b                                       ; $562c: $40
    ld b, b                                       ; $562d: $40
    ld e, a                                       ; $562e: $5f
    ld c, a                                       ; $562f: $4f
    ld e, b                                       ; $5630: $58
    ld c, b                                       ; $5631: $48
    ld e, a                                       ; $5632: $5f
    ld c, a                                       ; $5633: $4f
    ld e, b                                       ; $5634: $58
    ld b, a                                       ; $5635: $47
    ld e, a                                       ; $5636: $5f
    ld b, b                                       ; $5637: $40
    ld e, a                                       ; $5638: $5f
    ld d, h                                       ; $5639: $54
    ld e, a                                       ; $563a: $5f
    ld b, b                                       ; $563b: $40
    ld e, a                                       ; $563c: $5f
    ld d, h                                       ; $563d: $54
    cpl                                           ; $563e: $2f
    jr nz, @+$19                                  ; $563f: $20 $17

    jr @+$0e                                      ; $5641: $18 $0c

    rrca                                          ; $5643: $0f
    inc bc                                        ; $5644: $03
    inc bc                                        ; $5645: $03
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    cp $fe                                        ; $564a: $fe $fe
    ld l, $02                                     ; $564c: $2e $02
    ld a, [$12f6]                                 ; $564e: $fa $f6 $12
    ld e, $f2                                     ; $5651: $1e $f2
    cp $02                                        ; $5653: $fe $02
    cp $d2                                        ; $5655: $fe $d2
    ld l, $fa                                     ; $5657: $2e $fa
    ld l, $d2                                     ; $5659: $2e $d2
    ld l, $fa                                     ; $565b: $2e $fa
    ld l, $c4                                     ; $565d: $2e $c4
    inc a                                         ; $565f: $3c
    adc b                                         ; $5660: $88
    ld a, b                                       ; $5661: $78
    jr nc, @-$0e                                  ; $5662: $30 $f0

    ret nz                                        ; $5664: $c0

    ret nz                                        ; $5665: $c0

    nop                                           ; $5666: $00
    nop                                           ; $5667: $00
    inc b                                         ; $5668: $04
    rlca                                          ; $5669: $07
    rlca                                          ; $566a: $07
    jr jr_006_5685                                ; $566b: $18 $18

    jr nz, @+$25                                  ; $566d: $20 $23

    ld b, b                                       ; $566f: $40
    ld c, h                                       ; $5670: $4c
    ld b, b                                       ; $5671: $40
    ld d, c                                       ; $5672: $51
    add b                                         ; $5673: $80
    sub l                                         ; $5674: $95
    add b                                         ; $5675: $80
    and l                                         ; $5676: $a5
    add b                                         ; $5677: $80
    xor l                                         ; $5678: $ad
    add c                                         ; $5679: $81
    xor l                                         ; $567a: $ad
    add c                                         ; $567b: $81
    and a                                         ; $567c: $a7
    or e                                          ; $567d: $b3
    sub e                                         ; $567e: $93
    ld d, a                                       ; $567f: $57
    ld d, c                                       ; $5680: $51
    ld e, a                                       ; $5681: $5f
    ld c, h                                       ; $5682: $4c
    cpl                                           ; $5683: $2f
    inc hl                                        ; $5684: $23

jr_006_5685:
    ld e, $19                                     ; $5685: $1e $19
    rlca                                          ; $5687: $07
    rlca                                          ; $5688: $07
    ldh [$ffe0], a                                ; $5689: $e0 $e0
    jr @+$1a                                      ; $568b: $18 $18

    inc h                                         ; $568d: $24
    call nz, $323a                                ; $568e: $c4 $3a $32
    ld e, $8a                                     ; $5691: $1e $8a
    ccf                                           ; $5693: $3f
    xor c                                         ; $5694: $a9
    ld a, a                                       ; $5695: $7f
    and l                                         ; $5696: $a5
    db $fd                                        ; $5697: $fd
    or a                                          ; $5698: $b7
    rst RST_38                                    ; $5699: $ff
    or l                                          ; $569a: $b5
    push hl                                       ; $569b: $e5
    rst RST_38                                    ; $569c: $ff
    ret                                           ; $569d: $c9


    rst RST_38                                    ; $569e: $ff
    adc d                                         ; $569f: $8a
    cp $b2                                        ; $56a0: $fe $b2
    ld a, [hl]                                    ; $56a2: $7e
    call nz, $98fc                                ; $56a3: $c4 $fc $98
    ld a, b                                       ; $56a6: $78
    ldh [$ffe0], a                                ; $56a7: $e0 $e0
    inc b                                         ; $56a9: $04
    rrca                                          ; $56aa: $0f
    rrca                                          ; $56ab: $0f
    db $10                                        ; $56ac: $10
    db $10                                        ; $56ad: $10
    inc sp                                        ; $56ae: $33
    inc hl                                        ; $56af: $23
    ld c, c                                       ; $56b0: $49
    ld b, c                                       ; $56b1: $41
    add h                                         ; $56b2: $84
    add b                                         ; $56b3: $80
    add e                                         ; $56b4: $83
    add b                                         ; $56b5: $80
    add e                                         ; $56b6: $83
    add b                                         ; $56b7: $80
    add e                                         ; $56b8: $83
    add b                                         ; $56b9: $80
    ld a, [hl]                                    ; $56ba: $7e
    ld b, c                                       ; $56bb: $41
    ld a, [hl]                                    ; $56bc: $7e
    ld b, c                                       ; $56bd: $41
    inc a                                         ; $56be: $3c
    inc hl                                        ; $56bf: $23
    inc a                                         ; $56c0: $3c
    inc hl                                        ; $56c1: $23
    add hl, de                                    ; $56c2: $19
    rla                                           ; $56c3: $17
    dec de                                        ; $56c4: $1b
    rla                                           ; $56c5: $17
    ld [$070f], sp                                ; $56c6: $08 $0f $07
    rlca                                          ; $56c9: $07
    ldh a, [$fff0]                                ; $56ca: $f0 $f0
    ld [$cc08], sp                                ; $56cc: $08 $08 $cc
    call nz, $829e                                ; $56cf: $c4 $9e $82
    ccf                                           ; $56d2: $3f
    ld bc, $3fdf                                  ; $56d3: $01 $df $3f
    rst RST_18                                    ; $56d6: $df
    ccf                                           ; $56d7: $3f
    rst RST_38                                    ; $56d8: $ff
    ccf                                           ; $56d9: $3f
    ld a, [hl]                                    ; $56da: $7e
    cp $7e                                        ; $56db: $fe $7e
    cp $3c                                        ; $56dd: $fe $3c
    db $fc                                        ; $56df: $fc
    inc a                                         ; $56e0: $3c
    db $fc                                        ; $56e1: $fc
    sbc b                                         ; $56e2: $98
    ld hl, sp-$28                                 ; $56e3: $f8 $d8
    ld hl, sp+$10                                 ; $56e5: $f8 $10
    ldh a, [$ffe0]                                ; $56e7: $f0 $e0
    ldh [$ff80], a                                ; $56e9: $e0 $80
    nop                                           ; $56eb: $00
    inc bc                                        ; $56ec: $03
    inc bc                                        ; $56ed: $03
    inc c                                         ; $56ee: $0c
    inc c                                         ; $56ef: $0c
    jr nc, @+$32                                  ; $56f0: $30 $30

    ld b, e                                       ; $56f2: $43
    ld b, b                                       ; $56f3: $40
    add a                                         ; $56f4: $87
    ldh a, [$ff83]                                ; $56f5: $f0 $83
    ret z                                         ; $56f7: $c8

    ret z                                         ; $56f8: $c8

    rst RST_20                                    ; $56f9: $e7
    xor c                                         ; $56fa: $a9
    or [hl]                                       ; $56fb: $b6
    sub h                                         ; $56fc: $94
    sbc e                                         ; $56fd: $9b
    xor c                                         ; $56fe: $a9
    rst RST_08                                    ; $56ff: $cf
    ld d, [hl]                                    ; $5700: $56
    rst RST_20                                    ; $5701: $e7
    jr z, jr_006_5777                             ; $5702: $28 $73

    inc d                                         ; $5704: $14
    dec sp                                        ; $5705: $3b
    add hl, bc                                    ; $5706: $09
    rra                                           ; $5707: $1f
    add [hl]                                      ; $5708: $86
    rrca                                          ; $5709: $0f
    ld sp, hl                                     ; $570a: $f9
    ld hl, sp+$04                                 ; $570b: $f8 $04
    inc c                                         ; $570d: $0c
    ld [hl-], a                                   ; $570e: $32
    ld b, $fa                                     ; $570f: $06 $fa
    ld b, $f1                                     ; $5711: $06 $f1
    rrca                                          ; $5713: $0f
    push bc                                       ; $5714: $c5
    dec sp                                        ; $5715: $3b
    add hl, de                                    ; $5716: $19
    rst RST_20                                    ; $5717: $e7
    ld h, a                                       ; $5718: $67
    sbc a                                         ; $5719: $9f
    sbc c                                         ; $571a: $99
    ld a, a                                       ; $571b: $7f
    ld l, c                                       ; $571c: $69
    rst RST_28                                    ; $571d: $ef
    reti                                          ; $571e: $d9


    rst RST_08                                    ; $571f: $cf
    daa                                           ; $5720: $27
    cp $18                                        ; $5721: $fe $18
    db $fc                                        ; $5723: $fc
    ld h, b                                       ; $5724: $60
    ldh a, [$ff80]                                ; $5725: $f0 $80
    ret nz                                        ; $5727: $c0

    ld bc, $0000                                  ; $5728: $01 $00 $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    ld bc, $0601                                  ; $5732: $01 $01 $06
    ld b, $18                                     ; $5735: $06 $18
    jr jr_006_57ac                                ; $5737: $18 $73

    ld h, b                                       ; $5739: $60
    sbc $fd                                       ; $573a: $de $fd
    and a                                         ; $573c: $a7
    ei                                            ; $573d: $fb
    xor [hl]                                      ; $573e: $ae
    di                                            ; $573f: $f3
    sbc l                                         ; $5740: $9d
    cp $63                                        ; $5741: $fe $63
    ld e, l                                       ; $5743: $5d
    ccf                                           ; $5744: $3f
    ld sp, $0e0e                                  ; $5745: $31 $0e $0e
    ld [bc], a                                    ; $5748: $02
    ld [bc], a                                    ; $5749: $02
    inc c                                         ; $574a: $0c
    inc c                                         ; $574b: $0c
    ld a, [de]                                    ; $574c: $1a
    ld d, $3e                                     ; $574d: $16 $3e
    ld [hl+], a                                   ; $574f: $22
    cp $c6                                        ; $5750: $fe $c6
    cp a                                          ; $5752: $bf
    db $eb                                        ; $5753: $eb
    ld e, h                                       ; $5754: $5c
    ld a, h                                       ; $5755: $7c
    or b                                          ; $5756: $b0
    ld [hl], b                                    ; $5757: $70
    ld [hl], b                                    ; $5758: $70
    ldh a, [$fffc]                                ; $5759: $f0 $fc
    db $fc                                        ; $575b: $fc
    jp nc, $8852                                  ; $575c: $d2 $52 $88

    adc b                                         ; $575f: $88
    add h                                         ; $5760: $84
    add h                                         ; $5761: $84
    inc b                                         ; $5762: $04
    inc b                                         ; $5763: $04
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    nop                                           ; $5767: $00
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    rlca                                          ; $576a: $07
    rlca                                          ; $576b: $07
    inc b                                         ; $576c: $04
    inc b                                         ; $576d: $04
    ld [bc], a                                    ; $576e: $02
    inc bc                                        ; $576f: $03

jr_006_5770:
    ld [bc], a                                    ; $5770: $02
    ld [bc], a                                    ; $5771: $02
    ld [bc], a                                    ; $5772: $02
    ld [bc], a                                    ; $5773: $02
    ld [bc], a                                    ; $5774: $02
    ld [bc], a                                    ; $5775: $02
    ld [bc], a                                    ; $5776: $02

jr_006_5777:
    ld [bc], a                                    ; $5777: $02
    inc b                                         ; $5778: $04
    inc b                                         ; $5779: $04
    ld [$1c08], sp                                ; $577a: $08 $08 $1c
    inc de                                        ; $577d: $13
    inc a                                         ; $577e: $3c
    inc hl                                        ; $577f: $23
    ld a, b                                       ; $5780: $78
    ld b, a                                       ; $5781: $47
    ld a, b                                       ; $5782: $78
    ld b, a                                       ; $5783: $47
    ld a, b                                       ; $5784: $78

jr_006_5785:
    ld b, a                                       ; $5785: $47
    ld a, h                                       ; $5786: $7c
    inc hl                                        ; $5787: $23
    ccf                                           ; $5788: $3f
    rra                                           ; $5789: $1f
    ldh a, [$fff0]                                ; $578a: $f0 $f0
    db $10                                        ; $578c: $10
    ld [hl], b                                    ; $578d: $70
    jr nz, jr_006_5770                            ; $578e: $20 $e0

    jr nz, jr_006_57f2                            ; $5790: $20 $60

    jr nz, jr_006_57f4                            ; $5792: $20 $60

    jr nz, @+$62                                  ; $5794: $20 $60

    jr nz, jr_006_57f8                            ; $5796: $20 $60

    ld d, b                                       ; $5798: $50
    jr nc, jr_006_57a3                            ; $5799: $30 $08

    jr c, @+$3e                                   ; $579b: $38 $3c

    db $fc                                        ; $579d: $fc
    ld e, $fe                                     ; $579e: $1e $fe
    rrca                                          ; $57a0: $0f
    rst RST_38                                    ; $57a1: $ff
    rrca                                          ; $57a2: $0f

jr_006_57a3:
    rst RST_38                                    ; $57a3: $ff
    rrca                                          ; $57a4: $0f
    rst RST_38                                    ; $57a5: $ff
    rra                                           ; $57a6: $1f
    cp $fe                                        ; $57a7: $fe $fe
    db $fc                                        ; $57a9: $fc
    rra                                           ; $57aa: $1f
    rrca                                          ; $57ab: $0f

jr_006_57ac:
    jr c, jr_006_57be                             ; $57ac: $38 $10

    jr nc, @+$12                                  ; $57ae: $30 $10

    ld a, [hl-]                                   ; $57b0: $3a
    db $10                                        ; $57b1: $10
    ld e, $09                                     ; $57b2: $1e $09
    dec c                                         ; $57b4: $0d
    rlca                                          ; $57b5: $07
    ld e, $0e                                     ; $57b6: $1e $0e
    ld [hl-], a                                   ; $57b8: $32
    ld [de], a                                    ; $57b9: $12
    ld l, a                                       ; $57ba: $6f
    ld h, $69                                     ; $57bb: $26 $69
    dec l                                         ; $57bd: $2d

jr_006_57be:
    ld l, b                                       ; $57be: $68
    jr z, jr_006_5829                             ; $57bf: $28 $68

    jr z, jr_006_582f                             ; $57c1: $28 $6c

    inc h                                         ; $57c3: $24
    scf                                           ; $57c4: $37
    inc de                                        ; $57c5: $13
    add hl, de                                    ; $57c6: $19
    ld [$070f], sp                                ; $57c7: $08 $0f $07
    ld hl, sp-$10                                 ; $57ca: $f8 $f0
    sbc h                                         ; $57cc: $9c
    ld [$085c], sp                                ; $57cd: $08 $5c $08
    inc a                                         ; $57d0: $3c
    adc b                                         ; $57d1: $88
    ret c                                         ; $57d2: $d8

    jr nc, jr_006_5785                            ; $57d3: $30 $b0

    ldh [$fff8], a                                ; $57d5: $e0 $f8
    ld [hl], b                                    ; $57d7: $70
    call c, Call_006_7e68                         ; $57d8: $dc $68 $7e
    db $e4                                        ; $57db: $e4
    sub [hl]                                      ; $57dc: $96
    or h                                          ; $57dd: $b4
    ld d, $14                                     ; $57de: $16 $14
    ld e, $14                                     ; $57e0: $1e $14
    ld [hl], $2c                                  ; $57e2: $36 $2c
    db $fc                                        ; $57e4: $fc
    ret z                                         ; $57e5: $c8

    ld e, b                                       ; $57e6: $58
    jr nc, @-$0e                                  ; $57e7: $30 $f0

    ldh [$fff0], a                                ; $57e9: $e0 $f0
    ldh [$ff98], a                                ; $57eb: $e0 $98
    sub b                                         ; $57ed: $90
    call z, $e688                                 ; $57ee: $cc $88 $e6
    ld b, h                                       ; $57f1: $44

jr_006_57f2:
    ld [hl], e                                    ; $57f2: $73
    ld [hl+], a                                   ; $57f3: $22

jr_006_57f4:
    add hl, sp                                    ; $57f4: $39
    ld de, $081c                                  ; $57f5: $11 $1c $08

jr_006_57f8:
    ld c, $04                                     ; $57f8: $0e $04
    rlca                                          ; $57fa: $07
    ld [bc], a                                    ; $57fb: $02
    inc bc                                        ; $57fc: $03
    ld bc, $0001                                  ; $57fd: $01 $01 $00
    ld bc, $0f01                                  ; $5800: $01 $01 $0f
    ld a, [bc]                                    ; $5803: $0a
    ld b, $05                                     ; $5804: $06 $05
    inc bc                                        ; $5806: $03
    inc bc                                        ; $5807: $03
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    ld [$8c08], sp                                ; $5812: $08 $08 $8c
    inc b                                         ; $5815: $04
    adc $8a                                       ; $5816: $ce $8a
    ld a, d                                       ; $5818: $7a
    ld d, [hl]                                    ; $5819: $56
    ld [hl], h                                    ; $581a: $74
    inc l                                         ; $581b: $2c
    ret c                                         ; $581c: $d8

    ld l, b                                       ; $581d: $68
    cp b                                          ; $581e: $b8
    ret c                                         ; $581f: $d8

    db $fc                                        ; $5820: $fc
    inc [hl]                                      ; $5821: $34
    ld l, [hl]                                    ; $5822: $6e
    ld a, [$9e96]                                 ; $5823: $fa $96 $9e
    rrca                                          ; $5826: $0f
    dec c                                         ; $5827: $0d
    ld [bc], a                                    ; $5828: $02

jr_006_5829:
    ld [bc], a                                    ; $5829: $02
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    ccf                                           ; $582c: $3f
    rra                                           ; $582d: $1f
    ld h, h                                       ; $582e: $64

jr_006_582f:
    jr nz, jr_006_5880                            ; $582f: $20 $4f

    ld b, b                                       ; $5831: $40
    ld d, a                                       ; $5832: $57
    ld c, e                                       ; $5833: $4b
    ld d, [hl]                                    ; $5834: $56
    ld c, c                                       ; $5835: $49
    ld c, e                                       ; $5836: $4b
    ld b, e                                       ; $5837: $43
    ld d, a                                       ; $5838: $57
    ld c, b                                       ; $5839: $48
    ld d, [hl]                                    ; $583a: $56
    ld c, c                                       ; $583b: $49
    ld e, d                                       ; $583c: $5a
    ld b, c                                       ; $583d: $41
    ld d, [hl]                                    ; $583e: $56
    ld c, c                                       ; $583f: $49
    ld l, e                                       ; $5840: $6b
    jr nz, jr_006_585d                            ; $5841: $20 $1a

    add hl, de                                    ; $5843: $19
    rrca                                          ; $5844: $0f
    ld b, $03                                     ; $5845: $06 $03
    ld bc, $0000                                  ; $5847: $01 $00 $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    db $fc                                        ; $584c: $fc
    ld hl, sp-$6a                                 ; $584d: $f8 $96
    inc b                                         ; $584f: $04
    and d                                         ; $5850: $a2
    ld e, d                                       ; $5851: $5a
    ld [$bade], a                                 ; $5852: $ea $de $ba
    ld c, [hl]                                    ; $5855: $4e
    ldh a, [c]                                    ; $5856: $f2
    adc $aa                                       ; $5857: $ce $aa
    ld e, [hl]                                    ; $5859: $5e
    ldh [c], a                                    ; $585a: $e2
    ld e, $ea                                     ; $585b: $1e $ea

jr_006_585d:
    ld e, $ba                                     ; $585d: $1e $ba
    ld c, [hl]                                    ; $585f: $4e
    cp [hl]                                       ; $5860: $be
    ld c, h                                       ; $5861: $4c
    cp b                                          ; $5862: $b8
    ld e, b                                       ; $5863: $58
    ldh a, [$ff60]                                ; $5864: $f0 $60
    ret nz                                        ; $5866: $c0

    add b                                         ; $5867: $80
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    inc sp                                        ; $586a: $33
    ld sp, $4a4b                                  ; $586b: $31 $4b $4a
    cp d                                          ; $586e: $ba
    xor d                                         ; $586f: $aa
    or [hl]                                       ; $5870: $b6
    sub h                                         ; $5871: $94
    cp [hl]                                       ; $5872: $be
    sbc h                                         ; $5873: $9c
    ld b, [hl]                                    ; $5874: $46
    ld b, h                                       ; $5875: $44
    ld a, $3c                                     ; $5876: $3e $3c
    ld b, $04                                     ; $5878: $06 $04
    inc bc                                        ; $587a: $03
    ld [bc], a                                    ; $587b: $02
    ld bc, $0301                                  ; $587c: $01 $01 $03
    inc bc                                        ; $587f: $03

jr_006_5880:
    inc b                                         ; $5880: $04
    inc b                                         ; $5881: $04
    dec b                                         ; $5882: $05
    dec b                                         ; $5883: $05
    rlca                                          ; $5884: $07
    inc bc                                        ; $5885: $03
    ld c, $04                                     ; $5886: $0e $04
    rrca                                          ; $5888: $0f
    rlca                                          ; $5889: $07
    db $fc                                        ; $588a: $fc
    ld hl, sp+$0c                                 ; $588b: $f8 $0c
    inc b                                         ; $588d: $04
    halt                                          ; $588e: $76
    inc c                                         ; $588f: $0c
    ld a, d                                       ; $5890: $7a
    ld b, $7a                                     ; $5891: $06 $7a
    ld b, $7b                                     ; $5893: $06 $7b
    ld b, $fb                                     ; $5895: $06 $fb
    rst RST_18                                    ; $5897: $df
    ld a, e                                       ; $5898: $7b
    rlca                                          ; $5899: $07
    ld a, l                                       ; $589a: $7d
    dec e                                         ; $589b: $1d
    ldh [c], a                                    ; $589c: $e2
    ldh [c], a                                    ; $589d: $e2
    inc e                                         ; $589e: $1c
    inc e                                         ; $589f: $1c
    ldh a, [$fff0]                                ; $58a0: $f0 $f0
    or e                                          ; $58a2: $b3
    sub e                                         ; $58a3: $93
    cp l                                          ; $58a4: $bd
    sbc l                                         ; $58a5: $9d
    ld h, a                                       ; $58a6: $67
    ld a, [de]                                    ; $58a7: $1a
    rst RST_38                                    ; $58a8: $ff
    cp $00                                        ; $58a9: $fe $00
    nop                                           ; $58ab: $00
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    ld bc, $0101                                  ; $58ae: $01 $01 $01
    ld bc, $0101                                  ; $58b1: $01 $01 $01
    ld bc, $0101                                  ; $58b4: $01 $01 $01
    ld bc, $0202                                  ; $58b7: $01 $02 $02
    inc b                                         ; $58ba: $04
    inc b                                         ; $58bb: $04
    add hl, bc                                    ; $58bc: $09
    ld [$1012], sp                                ; $58bd: $08 $12 $10
    ld h, $22                                     ; $58c0: $26 $22
    ld c, l                                       ; $58c2: $4d
    ld b, l                                       ; $58c3: $45
    sub [hl]                                      ; $58c4: $96
    add d                                         ; $58c5: $82
    or d                                          ; $58c6: $b2
    sub d                                         ; $58c7: $92
    ld l, h                                       ; $58c8: $6c
    ld l, h                                       ; $58c9: $6c
    ld a, h                                       ; $58ca: $7c
    ld a, h                                       ; $58cb: $7c
    add [hl]                                      ; $58cc: $86
    add d                                         ; $58cd: $82
    dec sp                                        ; $58ce: $3b
    add hl, sp                                    ; $58cf: $39
    ld l, a                                       ; $58d0: $6f
    ld b, l                                       ; $58d1: $45
    ld b, a                                       ; $58d2: $47
    ld b, l                                       ; $58d3: $45
    ld l, a                                       ; $58d4: $6f
    ld b, l                                       ; $58d5: $45
    ccf                                           ; $58d6: $3f
    add hl, sp                                    ; $58d7: $39
    rla                                           ; $58d8: $17
    ld [bc], a                                    ; $58d9: $02
    cp $7c                                        ; $58da: $fe $7c
    add b                                         ; $58dc: $80
    add b                                         ; $58dd: $80
    ret nz                                        ; $58de: $c0

    ld b, b                                       ; $58df: $40
    ld b, b                                       ; $58e0: $40
    ld b, b                                       ; $58e1: $40
    add b                                         ; $58e2: $80
    add b                                         ; $58e3: $80
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    nop                                           ; $58e6: $00
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    nop                                           ; $58e9: $00
    sub b                                         ; $58ea: $90
    inc bc                                        ; $58eb: $03
    ld hl, $4012                                  ; $58ec: $21 $12 $40
    ld hl, $0000                                  ; $58ef: $21 $00 $00
    and b                                         ; $58f2: $a0
    ld b, c                                       ; $58f3: $41
    ld h, c                                       ; $58f4: $61
    or d                                          ; $58f5: $b2
    ld h, c                                       ; $58f6: $61
    or d                                          ; $58f7: $b2
    or e                                          ; $58f8: $b3
    ldh [$fff7], a                                ; $58f9: $e0 $f7
    xor b                                         ; $58fb: $a8
    or e                                          ; $58fc: $b3
    ldh [$ffb3], a                                ; $58fd: $e0 $b3
    ldh [$ff5b], a                                ; $58ff: $e0 $5b
    ld [hl], h                                    ; $5901: $74
    ld e, b                                       ; $5902: $58
    ld [hl], a                                    ; $5903: $77
    ld l, $39                                     ; $5904: $2e $39
    rra                                           ; $5906: $1f
    ld e, $87                                     ; $5907: $1e $87
    rlca                                          ; $5909: $07
    and c                                         ; $590a: $a1
    ldh [$fff8], a                                ; $590b: $e0 $f8
    jr jr_006_592b                                ; $590d: $18 $1c

    db $e4                                        ; $590f: $e4
    ld b, $2a                                     ; $5910: $06 $2a
    ld h, [hl]                                    ; $5912: $66
    adc d                                         ; $5913: $8a
    add e                                         ; $5914: $83
    ld bc, $05eb                                  ; $5915: $01 $eb $05
    xor e                                         ; $5918: $ab
    dec b                                         ; $5919: $05
    dec de                                        ; $591a: $1b
    dec b                                         ; $591b: $05
    cp e                                          ; $591c: $bb
    dec b                                         ; $591d: $05
    or e                                          ; $591e: $b3
    dec c                                         ; $591f: $0d
    or $0a                                        ; $5920: $f6 $0a
    add $3a                                       ; $5922: $c6 $3a
    inc e                                         ; $5924: $1c
    db $e4                                        ; $5925: $e4
    ld hl, sp+$18                                 ; $5926: $f8 $18
    pop hl                                        ; $5928: $e1
    ldh [rNR10], a                                ; $5929: $e0 $10

jr_006_592b:
    nop                                           ; $592b: $00
    sub e                                         ; $592c: $93
    ld a, [hl]                                    ; $592d: $7e
    ld bc, $7f81                                  ; $592e: $01 $81 $7f
    cp c                                          ; $5931: $b9
    ld a, a                                       ; $5932: $7f
    and l                                         ; $5933: $a5
    ld a, e                                       ; $5934: $7b
    and l                                         ; $5935: $a5
    ld a, e                                       ; $5936: $7b
    sbc c                                         ; $5937: $99
    ld h, e                                       ; $5938: $63
    add c                                         ; $5939: $81
    ld a, a                                       ; $593a: $7f
    ld a, a                                       ; $593b: $7f
    rst RST_38                                    ; $593c: $ff
    nop                                           ; $593d: $00
    db $db                                        ; $593e: $db
    rst RST_38                                    ; $593f: $ff
    inc b                                         ; $5940: $04
    inc h                                         ; $5941: $24
    jp hl                                         ; $5942: $e9


    rst RST_38                                    ; $5943: $ff
    rst RST_38                                    ; $5944: $ff
    inc h                                         ; $5945: $24
    inc h                                         ; $5946: $24
    rst RST_38                                    ; $5947: $ff
    inc h                                         ; $5948: $24
    rst RST_38                                    ; $5949: $ff
    db $db                                        ; $594a: $db
    db $db                                        ; $594b: $db
    nop                                           ; $594c: $00
    ld a, a                                       ; $594d: $7f
    ccf                                           ; $594e: $3f
    add b                                         ; $594f: $80
    nop                                           ; $5950: $00
    add b                                         ; $5951: $80
    nop                                           ; $5952: $00
    cp a                                          ; $5953: $bf
    ld a, a                                       ; $5954: $7f
    add b                                         ; $5955: $80
    nop                                           ; $5956: $00
    rst RST_38                                    ; $5957: $ff
    ld b, b                                       ; $5958: $40
    rst RST_38                                    ; $5959: $ff
    ld a, a                                       ; $595a: $7f
    ld a, a                                       ; $595b: $7f

jr_006_595c:
    nop                                           ; $595c: $00
    cp $fd                                        ; $595d: $fe $fd
    inc bc                                        ; $595f: $03
    ld bc, $0103                                  ; $5960: $01 $03 $01
    rst RST_38                                    ; $5963: $ff
    db $fd                                        ; $5964: $fd
    inc bc                                        ; $5965: $03
    ld bc, $03ff                                  ; $5966: $01 $ff $03
    rst RST_38                                    ; $5969: $ff
    cp $fe                                        ; $596a: $fe $fe
    nop                                           ; $596c: $00
    ld a, [hl]                                    ; $596d: $7e
    dec bc                                        ; $596e: $0b
    add a                                         ; $596f: $87
    ld c, c                                       ; $5970: $49
    sub a                                         ; $5971: $97
    ld c, c                                       ; $5972: $49
    sub a                                         ; $5973: $97
    ld c, c                                       ; $5974: $49
    sub a                                         ; $5975: $97
    ld c, c                                       ; $5976: $49
    sub a                                         ; $5977: $97
    ld c, c                                       ; $5978: $49
    sub a                                         ; $5979: $97
    ld c, c                                       ; $597a: $49
    sub a                                         ; $597b: $97
    ld c, c                                       ; $597c: $49
    sub a                                         ; $597d: $97
    ld c, c                                       ; $597e: $49
    sub a                                         ; $597f: $97
    ld c, c                                       ; $5980: $49
    sub a                                         ; $5981: $97
    ld c, c                                       ; $5982: $49
    sub a                                         ; $5983: $97
    ld c, c                                       ; $5984: $49
    sub a                                         ; $5985: $97
    ld c, c                                       ; $5986: $49
    sub a                                         ; $5987: $97
    ld c, c                                       ; $5988: $49
    sub a                                         ; $5989: $97
    ld c, c                                       ; $598a: $49
    sub a                                         ; $598b: $97
    ld c, c                                       ; $598c: $49
    sub a                                         ; $598d: $97
    ld c, c                                       ; $598e: $49
    sub a                                         ; $598f: $97
    ld c, c                                       ; $5990: $49
    sub a                                         ; $5991: $97
    ld c, c                                       ; $5992: $49
    sub a                                         ; $5993: $97
    ld c, c                                       ; $5994: $49
    sub a                                         ; $5995: $97
    ld c, c                                       ; $5996: $49
    sub a                                         ; $5997: $97
    inc bc                                        ; $5998: $03
    rst RST_38                                    ; $5999: $ff
    ld a, [hl]                                    ; $599a: $7e
    ld a, [hl]                                    ; $599b: $7e
    ld c, c                                       ; $599c: $49
    sub a                                         ; $599d: $97
    ld c, c                                       ; $599e: $49
    sub a                                         ; $599f: $97
    ld a, [hl]                                    ; $59a0: $7e
    ld a, [hl]                                    ; $59a1: $7e
    ld c, c                                       ; $59a2: $49
    sub a                                         ; $59a3: $97
    ld c, c                                       ; $59a4: $49
    sub a                                         ; $59a5: $97
    ld a, [hl]                                    ; $59a6: $7e
    ld a, [hl]                                    ; $59a7: $7e
    ld c, c                                       ; $59a8: $49
    sub a                                         ; $59a9: $97
    ld c, c                                       ; $59aa: $49
    sub a                                         ; $59ab: $97
    ld b, $00                                     ; $59ac: $06 $00
    add b                                         ; $59ae: $80
    add e                                         ; $59af: $83
    dec b                                         ; $59b0: $05
    rlca                                          ; $59b1: $07
    rrca                                          ; $59b2: $0f
    inc e                                         ; $59b3: $1c
    jr @+$1a                                      ; $59b4: $18 $18

    ld b, $00                                     ; $59b6: $06 $00
    inc b                                         ; $59b8: $04
    rst RST_38                                    ; $59b9: $ff
    inc c                                         ; $59ba: $0c
    nop                                           ; $59bb: $00
    add b                                         ; $59bc: $80
    add e                                         ; $59bd: $83
    ld [de], a                                    ; $59be: $12
    ldh [$fff0], a                                ; $59bf: $e0 $f0
    jr c, @+$1a                                   ; $59c1: $38 $18

    jr @+$1a                                      ; $59c3: $18 $18

    jr jr_006_59df                                ; $59c5: $18 $18

    jr jr_006_59e1                                ; $59c7: $18 $18

    jr jr_006_59e3                                ; $59c9: $18 $18

    jr jr_006_59e5                                ; $59cb: $18 $18

    jr jr_006_59eb                                ; $59cd: $18 $1c

    rrca                                          ; $59cf: $0f
    rlca                                          ; $59d0: $07
    ld b, $00                                     ; $59d1: $06 $00
    inc b                                         ; $59d3: $04
    jr jr_006_595c                                ; $59d4: $18 $86

    jr c, jr_006_5a10                             ; $59d6: $38 $38

    ldh a, [$fff0]                                ; $59d8: $f0 $f0
    ldh [$ffe0], a                                ; $59da: $e0 $e0
    ld b, $00                                     ; $59dc: $06 $00
    adc a                                         ; $59de: $8f

jr_006_59df:
    rst RST_38                                    ; $59df: $ff
    nop                                           ; $59e0: $00

jr_006_59e1:
    add e                                         ; $59e1: $83
    ld a, h                                       ; $59e2: $7c

jr_006_59e3:
    cp l                                          ; $59e3: $bd
    ld b, b                                       ; $59e4: $40

jr_006_59e5:
    cp l                                          ; $59e5: $bd
    ld b, b                                       ; $59e6: $40
    cp l                                          ; $59e7: $bd
    ld b, b                                       ; $59e8: $40
    cp l                                          ; $59e9: $bd
    ld b, b                                       ; $59ea: $40

jr_006_59eb:
    pop bc                                        ; $59eb: $c1
    nop                                           ; $59ec: $00
    rst RST_38                                    ; $59ed: $ff
    ld b, l                                       ; $59ee: $45
    nop                                           ; $59ef: $00
    inc b                                         ; $59f0: $04
    ld a, a                                       ; $59f1: $7f
    ld [$0403], sp                                ; $59f2: $08 $03 $04
    nop                                           ; $59f5: $00
    ld [$086c], sp                                ; $59f6: $08 $6c $08
    nop                                           ; $59f9: $00
    inc c                                         ; $59fa: $0c
    dec c                                         ; $59fb: $0d
    inc b                                         ; $59fc: $04
    nop                                           ; $59fd: $00
    inc c                                         ; $59fe: $0c
    add e                                         ; $59ff: $83
    inc b                                         ; $5a00: $04
    nop                                           ; $5a01: $00
    ld [$821b], sp                                ; $5a02: $08 $1b $82
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    add b                                         ; $5a07: $80
    add e                                         ; $5a08: $83
    rlca                                          ; $5a09: $07
    ret nz                                        ; $5a0a: $c0

    inc bc                                        ; $5a0b: $03
    inc bc                                        ; $5a0c: $03
    inc bc                                        ; $5a0d: $03
    inc bc                                        ; $5a0e: $03
    ld a, a                                       ; $5a0f: $7f

jr_006_5a10:
    ld a, a                                       ; $5a10: $7f
    inc b                                         ; $5a11: $04
    nop                                           ; $5a12: $00
    inc b                                         ; $5a13: $04
    rra                                           ; $5a14: $1f
    inc c                                         ; $5a15: $0c
    nop                                           ; $5a16: $00
    inc b                                         ; $5a17: $04
    call $0d08                                    ; $5a18: $cd $08 $0d
    inc b                                         ; $5a1b: $04
    nop                                           ; $5a1c: $00
    ld b, $b3                                     ; $5a1d: $06 $b3
    add [hl]                                      ; $5a1f: $86
    di                                            ; $5a20: $f3
    or e                                          ; $5a21: $b3
    di                                            ; $5a22: $f3
    db $e3                                        ; $5a23: $e3
    db $e3                                        ; $5a24: $e3
    jp Jump_000_0004                              ; $5a25: $c3 $04 $00


    add [hl]                                      ; $5a28: $86
    ldh a, [$fff0]                                ; $5a29: $f0 $f0
    ld a, b                                       ; $5a2b: $78
    ld a, b                                       ; $5a2c: $78
    jr jr_006_5a47                                ; $5a2d: $18 $18

    ld c, $00                                     ; $5a2f: $0e $00
    add d                                         ; $5a31: $82
    jr jr_006_5a4c                                ; $5a32: $18 $18

    inc b                                         ; $5a34: $04
    ld a, a                                       ; $5a35: $7f
    add [hl]                                      ; $5a36: $86
    jr c, @+$1a                                   ; $5a37: $38 $18

    ld [hl], a                                    ; $5a39: $77
    inc sp                                        ; $5a3a: $33
    ld a, a                                       ; $5a3b: $7f
    ld a, a                                       ; $5a3c: $7f
    inc b                                         ; $5a3d: $04
    nop                                           ; $5a3e: $00
    add h                                         ; $5a3f: $84
    ld a, b                                       ; $5a40: $78
    ld a, b                                       ; $5a41: $78
    ld a, e                                       ; $5a42: $7b
    ld a, d                                       ; $5a43: $7a
    inc b                                         ; $5a44: $04
    dec de                                        ; $5a45: $1b
    add h                                         ; $5a46: $84

jr_006_5a47:
    dec sp                                        ; $5a47: $3b
    inc de                                        ; $5a48: $13
    inc sp                                        ; $5a49: $33
    inc sp                                        ; $5a4a: $33
    inc b                                         ; $5a4b: $04

jr_006_5a4c:
    nop                                           ; $5a4c: $00
    inc b                                         ; $5a4d: $04
    rra                                           ; $5a4e: $1f
    add h                                         ; $5a4f: $84
    ld bc, $c301                                  ; $5a50: $01 $01 $c3
    add e                                         ; $5a53: $83
    inc bc                                        ; $5a54: $03
    rst RST_08                                    ; $5a55: $cf
    add c                                         ; $5a56: $81
    ld c, a                                       ; $5a57: $4f
    inc b                                         ; $5a58: $04
    nop                                           ; $5a59: $00
    ld b, $80                                     ; $5a5a: $06 $80
    add [hl]                                      ; $5a5c: $86
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    add b                                         ; $5a5f: $80
    nop                                           ; $5a60: $00
    sbc $9e                                       ; $5a61: $de $9e
    inc b                                         ; $5a63: $04
    nop                                           ; $5a64: $00
    inc b                                         ; $5a65: $04
    jr nc, jr_006_5a6c                            ; $5a66: $30 $04

    ld a, h                                       ; $5a68: $7c
    add h                                         ; $5a69: $84
    jr nc, jr_006_5a9c                            ; $5a6a: $30 $30

jr_006_5a6c:
    scf                                           ; $5a6c: $37
    scf                                           ; $5a6d: $37
    ld c, $00                                     ; $5a6e: $0e $00
    add d                                         ; $5a70: $82
    add b                                         ; $5a71: $80
    nop                                           ; $5a72: $00
    add b                                         ; $5a73: $80
    add e                                         ; $5a74: $83
    ld b, $1c                                     ; $5a75: $06 $1c
    ld a, $76                                     ; $5a77: $3e $76
    ld h, b                                       ; $5a79: $60
    ld a, a                                       ; $5a7a: $7f
    ccf                                           ; $5a7b: $3f
    inc b                                         ; $5a7c: $04
    nop                                           ; $5a7d: $00
    ld b, $33                                     ; $5a7e: $06 $33
    add [hl]                                      ; $5a80: $86
    ccf                                           ; $5a81: $3f
    inc sp                                        ; $5a82: $33
    ccf                                           ; $5a83: $3f
    ld e, $1e                                     ; $5a84: $1e $1e
    inc c                                         ; $5a86: $0c
    ld a, [bc]                                    ; $5a87: $0a
    nop                                           ; $5a88: $00
    add [hl]                                      ; $5a89: $86
    ld bc, $1f01                                  ; $5a8a: $01 $01 $1f
    rrca                                          ; $5a8d: $0f
    rra                                           ; $5a8e: $1f
    ld c, $04                                     ; $5a8f: $0e $04
    nop                                           ; $5a91: $00
    add d                                         ; $5a92: $82
    rst RST_18                                    ; $5a93: $df
    rst RST_18                                    ; $5a94: $df
    inc b                                         ; $5a95: $04
    jp $c786                                      ; $5a96: $c3 $86 $c7


    add e                                         ; $5a99: $83
    adc a                                         ; $5a9a: $8f
    adc [hl]                                      ; $5a9b: $8e

jr_006_5a9c:
    ld c, $0c                                     ; $5a9c: $0e $0c
    inc b                                         ; $5a9e: $04
    nop                                           ; $5a9f: $00
    add b                                         ; $5aa0: $80
    add e                                         ; $5aa1: $83
    dec b                                         ; $5aa2: $05
    scf                                           ; $5aa3: $37
    jr nc, @+$32                                  ; $5aa4: $30 $30

    inc [hl]                                      ; $5aa6: $34
    scf                                           ; $5aa7: $37
    add d                                         ; $5aa8: $82
    scf                                           ; $5aa9: $37
    inc sp                                        ; $5aaa: $33
    inc b                                         ; $5aab: $04
    nop                                           ; $5aac: $00
    add b                                         ; $5aad: $80
    add e                                         ; $5aae: $83
    ld b, $9e                                     ; $5aaf: $06 $9e
    cp a                                          ; $5ab1: $bf
    inc sp                                        ; $5ab2: $33
    inc sp                                        ; $5ab3: $33
    cp a                                          ; $5ab4: $bf
    sbc [hl]                                      ; $5ab5: $9e
    inc b                                         ; $5ab6: $04
    nop                                           ; $5ab7: $00
    adc d                                         ; $5ab8: $8a
    inc e                                         ; $5ab9: $1c
    ld [$1c08], sp                                ; $5aba: $08 $08 $1c
    ld a, $1c                                     ; $5abd: $3e $1c
    ld a, $36                                     ; $5abf: $3e $36
    ld [hl], a                                    ; $5ac1: $77
    ld h, e                                       ; $5ac2: $63
    add b                                         ; $5ac3: $80
    add e                                         ; $5ac4: $83
    rlca                                          ; $5ac5: $07
    db $e3                                        ; $5ac6: $e3
    pop bc                                        ; $5ac7: $c1
    ld a, a                                       ; $5ac8: $7f
    inc c                                         ; $5ac9: $0c
    inc c                                         ; $5aca: $0c
    ld a, $3e                                     ; $5acb: $3e $3e
    add d                                         ; $5acd: $82
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    inc b                                         ; $5ad0: $04
    cp [hl]                                       ; $5ad1: $be
    add d                                         ; $5ad2: $82
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    ld [$8060], sp                                ; $5ad5: $08 $60 $80
    add e                                         ; $5ad8: $83
    dec b                                         ; $5ad9: $05
    ld h, [hl]                                    ; $5ada: $66
    or $f0                                        ; $5adb: $f6 $f0
    ld h, b                                       ; $5add: $60
    ld a, a                                       ; $5ade: $7f
    add d                                         ; $5adf: $82
    nop                                           ; $5ae0: $00
    nop                                           ; $5ae1: $00
    inc b                                         ; $5ae2: $04
    ld a, a                                       ; $5ae3: $7f
    add b                                         ; $5ae4: $80
    add e                                         ; $5ae5: $83
    ld b, $63                                     ; $5ae6: $06 $63
    ld a, a                                       ; $5ae8: $7f
    ld a, a                                       ; $5ae9: $7f
    ld h, e                                       ; $5aea: $63
    ld a, $3e                                     ; $5aeb: $3e $3e
    add d                                         ; $5aed: $82
    nop                                           ; $5aee: $00
    nop                                           ; $5aef: $00
    inc b                                         ; $5af0: $04
    ld a, $80                                     ; $5af1: $3e $80
    add e                                         ; $5af3: $83
    dec bc                                        ; $5af4: $0b
    ld [hl], $3e                                  ; $5af5: $36 $3e
    ld a, $60                                     ; $5af7: $3e $60
    ld h, b                                       ; $5af9: $60
    ld h, [hl]                                    ; $5afa: $66
    ld h, [hl]                                    ; $5afb: $66
    ld h, b                                       ; $5afc: $60
    ld h, b                                       ; $5afd: $60
    ld h, b                                       ; $5afe: $60
    ld h, b                                       ; $5aff: $60
    ld [$8600], sp                                ; $5b00: $08 $00 $86
    rla                                           ; $5b03: $17
    rrca                                          ; $5b04: $0f
    ccf                                           ; $5b05: $3f
    rra                                           ; $5b06: $1f
    rla                                           ; $5b07: $17
    rrca                                          ; $5b08: $0f
    ld a, [bc]                                    ; $5b09: $0a
    nop                                           ; $5b0a: $00
    adc b                                         ; $5b0b: $88
    ret nc                                        ; $5b0c: $d0

    ldh [$fff8], a                                ; $5b0d: $e0 $f8
    ldh a, [$ffd0]                                ; $5b0f: $f0 $d0
    ldh [rP1], a                                  ; $5b11: $e0 $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    and d                                         ; $5b15: $a2
    ccf                                           ; $5b16: $3f
    ccf                                           ; $5b17: $3f
    ld a, [de]                                    ; $5b18: $1a
    rla                                           ; $5b19: $17
    ccf                                           ; $5b1a: $3f
    ccf                                           ; $5b1b: $3f
    jp c, $ffdf                                   ; $5b1c: $da $df $ff

    cp d                                          ; $5b1f: $ba
    ld a, e                                       ; $5b20: $7b
    ld e, h                                       ; $5b21: $5c
    inc a                                         ; $5b22: $3c
    cpl                                           ; $5b23: $2f
    rla                                           ; $5b24: $17
    rra                                           ; $5b25: $1f
    dec bc                                        ; $5b26: $0b
    rrca                                          ; $5b27: $0f
    dec bc                                        ; $5b28: $0b
    inc c                                         ; $5b29: $0c
    inc c                                         ; $5b2a: $0c
    rrca                                          ; $5b2b: $0f
    rlca                                          ; $5b2c: $07
    rlca                                          ; $5b2d: $07
    dec b                                         ; $5b2e: $05
    rlca                                          ; $5b2f: $07
    rrca                                          ; $5b30: $0f
    dec bc                                        ; $5b31: $0b
    ld c, $0e                                     ; $5b32: $0e $0e
    nop                                           ; $5b34: $00
    nop                                           ; $5b35: $00
    ldh [$ffe0], a                                ; $5b36: $e0 $e0
    inc b                                         ; $5b38: $04
    ldh a, [$ff9d]                                ; $5b39: $f0 $9d
    or [hl]                                       ; $5b3b: $b6
    or $fe                                        ; $5b3c: $f6 $fe
    cp d                                          ; $5b3e: $ba
    cp h                                          ; $5b3f: $bc
    ld [hl], h                                    ; $5b40: $74
    ld a, b                                       ; $5b41: $78
    add sp, -$30                                  ; $5b42: $e8 $d0
    ldh a, [$ffa0]                                ; $5b44: $f0 $a0
    ldh [$ffa0], a                                ; $5b46: $e0 $a0
    ld h, b                                       ; $5b48: $60
    ld h, b                                       ; $5b49: $60
    ldh [$ffc0], a                                ; $5b4a: $e0 $c0
    ret nz                                        ; $5b4c: $c0

    ld b, b                                       ; $5b4d: $40
    ret nz                                        ; $5b4e: $c0

    ldh [$ffa0], a                                ; $5b4f: $e0 $a0
    ldh [$ffe0], a                                ; $5b51: $e0 $e0
    nop                                           ; $5b53: $00
    nop                                           ; $5b54: $00
    rlca                                          ; $5b55: $07
    rrca                                          ; $5b56: $0f
    rrca                                          ; $5b57: $0f
    inc bc                                        ; $5b58: $03
    rra                                           ; $5b59: $1f
    cp d                                          ; $5b5a: $ba
    ld a, [de]                                    ; $5b5b: $1a
    rra                                           ; $5b5c: $1f
    ld a, a                                       ; $5b5d: $7f
    ld a, d                                       ; $5b5e: $7a
    ld a, a                                       ; $5b5f: $7f
    ld e, d                                       ; $5b60: $5a
    dec sp                                        ; $5b61: $3b
    inc l                                         ; $5b62: $2c
    rla                                           ; $5b63: $17
    rra                                           ; $5b64: $1f
    dec bc                                        ; $5b65: $0b
    rrca                                          ; $5b66: $0f
    dec bc                                        ; $5b67: $0b
    inc c                                         ; $5b68: $0c
    inc c                                         ; $5b69: $0c
    rrca                                          ; $5b6a: $0f
    rlca                                          ; $5b6b: $07
    rlca                                          ; $5b6c: $07
    dec b                                         ; $5b6d: $05
    rlca                                          ; $5b6e: $07
    rlca                                          ; $5b6f: $07
    dec b                                         ; $5b70: $05
    ld b, $06                                     ; $5b71: $06 $06
    nop                                           ; $5b73: $00
    nop                                           ; $5b74: $00
    ret nz                                        ; $5b75: $c0

    ldh [$ffe0], a                                ; $5b76: $e0 $e0
    ldh a, [$fffe]                                ; $5b78: $f0 $fe
    cp $bf                                        ; $5b7a: $fe $bf
    rst RST_38                                    ; $5b7c: $ff
    rst RST_38                                    ; $5b7d: $ff
    cp a                                          ; $5b7e: $bf
    db $fd                                        ; $5b7f: $fd
    or l                                          ; $5b80: $b5
    ld hl, sp+$68                                 ; $5b81: $f8 $68
    ret nc                                        ; $5b83: $d0

    ldh a, [$ffa0]                                ; $5b84: $f0 $a0
    ldh [$ffa0], a                                ; $5b86: $e0 $a0
    ld h, b                                       ; $5b88: $60
    ld h, b                                       ; $5b89: $60
    ldh [$ffc0], a                                ; $5b8a: $e0 $c0
    ret nz                                        ; $5b8c: $c0

    ld b, b                                       ; $5b8d: $40
    ret nz                                        ; $5b8e: $c0

    ret nz                                        ; $5b8f: $c0

    ld b, b                                       ; $5b90: $40
    ret nz                                        ; $5b91: $c0

    ret nz                                        ; $5b92: $c0

    nop                                           ; $5b93: $00
    nop                                           ; $5b94: $00
    nop                                           ; $5b95: $00
    nop                                           ; $5b96: $00
    sbc b                                         ; $5b97: $98
    inc d                                         ; $5b98: $14
    rrca                                          ; $5b99: $0f
    inc c                                         ; $5b9a: $0c
    nop                                           ; $5b9b: $00
    add c                                         ; $5b9c: $81
    rrca                                          ; $5b9d: $0f
    add b                                         ; $5b9e: $80
    inc b                                         ; $5b9f: $04
    ld bc, $0380                                  ; $5ba0: $01 $80 $03
    ld [bc], a                                    ; $5ba3: $02
    add b                                         ; $5ba4: $80
    inc bc                                        ; $5ba5: $03
    ld [bc], a                                    ; $5ba6: $02
    add b                                         ; $5ba7: $80
    inc bc                                        ; $5ba8: $03
    ld [bc], a                                    ; $5ba9: $02
    add b                                         ; $5baa: $80
    inc bc                                        ; $5bab: $03
    ld [bc], a                                    ; $5bac: $02
    add e                                         ; $5bad: $83
    ld [bc], a                                    ; $5bae: $02
    ld bc, $0c0f                                  ; $5baf: $01 $0f $0c
    nop                                           ; $5bb2: $00
    add d                                         ; $5bb3: $82
    rrca                                          ; $5bb4: $0f
    ld [$0010], sp                                ; $5bb5: $08 $10 $00
    add d                                         ; $5bb8: $82
    ld [$0c0f], sp                                ; $5bb9: $08 $0f $0c
    nop                                           ; $5bbc: $00
    add h                                         ; $5bbd: $84
    rrca                                          ; $5bbe: $0f
    dec b                                         ; $5bbf: $05
    nop                                           ; $5bc0: $00
    add hl, bc                                    ; $5bc1: $09
    inc c                                         ; $5bc2: $0c
    ld a, [bc]                                    ; $5bc3: $0a
    add h                                         ; $5bc4: $84
    dec bc                                        ; $5bc5: $0b
    nop                                           ; $5bc6: $00
    dec b                                         ; $5bc7: $05
    rrca                                          ; $5bc8: $0f
    inc c                                         ; $5bc9: $0c
    nop                                           ; $5bca: $00
    add h                                         ; $5bcb: $84
    rrca                                          ; $5bcc: $0f
    ld b, $00                                     ; $5bcd: $06 $00
    inc c                                         ; $5bcf: $0c
    inc c                                         ; $5bd0: $0c
    nop                                           ; $5bd1: $00
    add h                                         ; $5bd2: $84
    inc c                                         ; $5bd3: $0c
    nop                                           ; $5bd4: $00
    ld b, $0f                                     ; $5bd5: $06 $0f
    inc c                                         ; $5bd7: $0c
    nop                                           ; $5bd8: $00
    add h                                         ; $5bd9: $84
    rrca                                          ; $5bda: $0f
    rlca                                          ; $5bdb: $07
    nop                                           ; $5bdc: $00
    inc c                                         ; $5bdd: $0c
    ld b, $00                                     ; $5bde: $06 $00
    add b                                         ; $5be0: $80
    dec b                                         ; $5be1: $05
    inc d                                         ; $5be2: $14
    add l                                         ; $5be3: $85
    nop                                           ; $5be4: $00
    inc c                                         ; $5be5: $0c
    nop                                           ; $5be6: $00
    rlca                                          ; $5be7: $07
    rrca                                          ; $5be8: $0f
    inc c                                         ; $5be9: $0c
    nop                                           ; $5bea: $00
    add a                                         ; $5beb: $87
    rrca                                          ; $5bec: $0f
    ld [$0c00], sp                                ; $5bed: $08 $00 $0c
    nop                                           ; $5bf0: $00
    db $10                                        ; $5bf1: $10
    ld [de], a                                    ; $5bf2: $12
    inc bc                                        ; $5bf3: $03
    nop                                           ; $5bf4: $00
    add b                                         ; $5bf5: $80
    dec b                                         ; $5bf6: $05
    add hl, de                                    ; $5bf7: $19
    add l                                         ; $5bf8: $85
    nop                                           ; $5bf9: $00
    inc c                                         ; $5bfa: $0c
    nop                                           ; $5bfb: $00
    ld [$0c0f], sp                                ; $5bfc: $08 $0f $0c
    nop                                           ; $5bff: $00
    adc c                                         ; $5c00: $89
    rrca                                          ; $5c01: $0f
    dec b                                         ; $5c02: $05
    nop                                           ; $5c03: $00
    inc c                                         ; $5c04: $0c
    nop                                           ; $5c05: $00
    ld de, $0013                                  ; $5c06: $11 $13 $00
    nop                                           ; $5c09: $00
    add b                                         ; $5c0a: $80
    ld b, $1e                                     ; $5c0b: $06 $1e
    add l                                         ; $5c0d: $85
    nop                                           ; $5c0e: $00
    inc c                                         ; $5c0f: $0c
    nop                                           ; $5c10: $00
    dec b                                         ; $5c11: $05
    rrca                                          ; $5c12: $0f
    inc c                                         ; $5c13: $0c
    nop                                           ; $5c14: $00
    add h                                         ; $5c15: $84
    rrca                                          ; $5c16: $0f
    ld b, $00                                     ; $5c17: $06 $00
    inc c                                         ; $5c19: $0c
    dec b                                         ; $5c1a: $05
    nop                                           ; $5c1b: $00
    add b                                         ; $5c1c: $80
    ld b, $24                                     ; $5c1d: $06 $24
    add l                                         ; $5c1f: $85
    nop                                           ; $5c20: $00
    inc c                                         ; $5c21: $0c
    nop                                           ; $5c22: $00
    ld b, $0f                                     ; $5c23: $06 $0f
    inc c                                         ; $5c25: $0c
    nop                                           ; $5c26: $00
    add h                                         ; $5c27: $84
    rrca                                          ; $5c28: $0f
    ld b, $00                                     ; $5c29: $06 $00
    inc c                                         ; $5c2b: $0c
    inc c                                         ; $5c2c: $0c
    nop                                           ; $5c2d: $00
    add h                                         ; $5c2e: $84
    inc c                                         ; $5c2f: $0c
    nop                                           ; $5c30: $00
    ld b, $0f                                     ; $5c31: $06 $0f
    inc c                                         ; $5c33: $0c
    nop                                           ; $5c34: $00
    add h                                         ; $5c35: $84
    rrca                                          ; $5c36: $0f
    rlca                                          ; $5c37: $07
    nop                                           ; $5c38: $00
    inc c                                         ; $5c39: $0c
    inc c                                         ; $5c3a: $0c
    nop                                           ; $5c3b: $00
    add h                                         ; $5c3c: $84
    inc c                                         ; $5c3d: $0c
    nop                                           ; $5c3e: $00
    rlca                                          ; $5c3f: $07
    rrca                                          ; $5c40: $0f
    inc c                                         ; $5c41: $0c
    nop                                           ; $5c42: $00
    add h                                         ; $5c43: $84
    rrca                                          ; $5c44: $0f
    ld [$0c00], sp                                ; $5c45: $08 $00 $0c
    add b                                         ; $5c48: $80
    inc bc                                        ; $5c49: $03
    ld a, [hl+]                                   ; $5c4a: $2a
    inc b                                         ; $5c4b: $04
    nop                                           ; $5c4c: $00
    add b                                         ; $5c4d: $80
    dec b                                         ; $5c4e: $05
    inc d                                         ; $5c4f: $14
    add h                                         ; $5c50: $84
    inc c                                         ; $5c51: $0c
    nop                                           ; $5c52: $00
    ld [$0c0f], sp                                ; $5c53: $08 $0f $0c
    nop                                           ; $5c56: $00
    add h                                         ; $5c57: $84
    rrca                                          ; $5c58: $0f
    dec b                                         ; $5c59: $05
    nop                                           ; $5c5a: $00
    inc c                                         ; $5c5b: $0c
    add b                                         ; $5c5c: $80
    inc bc                                        ; $5c5d: $03
    dec l                                         ; $5c5e: $2d
    inc b                                         ; $5c5f: $04
    nop                                           ; $5c60: $00
    add b                                         ; $5c61: $80
    dec b                                         ; $5c62: $05
    add hl, de                                    ; $5c63: $19
    add h                                         ; $5c64: $84
    inc c                                         ; $5c65: $0c
    nop                                           ; $5c66: $00
    dec b                                         ; $5c67: $05
    rrca                                          ; $5c68: $0f
    inc c                                         ; $5c69: $0c
    nop                                           ; $5c6a: $00
    add h                                         ; $5c6b: $84
    rrca                                          ; $5c6c: $0f
    ld b, $00                                     ; $5c6d: $06 $00
    inc c                                         ; $5c6f: $0c
    inc c                                         ; $5c70: $0c
    nop                                           ; $5c71: $00
    add h                                         ; $5c72: $84
    inc c                                         ; $5c73: $0c
    nop                                           ; $5c74: $00
    ld b, $0f                                     ; $5c75: $06 $0f
    inc c                                         ; $5c77: $0c
    nop                                           ; $5c78: $00
    add h                                         ; $5c79: $84
    rrca                                          ; $5c7a: $0f
    rlca                                          ; $5c7b: $07
    nop                                           ; $5c7c: $00
    dec c                                         ; $5c7d: $0d
    inc c                                         ; $5c7e: $0c
    ld a, [bc]                                    ; $5c7f: $0a
    add h                                         ; $5c80: $84
    ld c, $00                                     ; $5c81: $0e $00
    rlca                                          ; $5c83: $07
    rrca                                          ; $5c84: $0f
    inc c                                         ; $5c85: $0c
    nop                                           ; $5c86: $00
    add d                                         ; $5c87: $82
    rrca                                          ; $5c88: $0f
    ld [$0010], sp                                ; $5c89: $08 $10 $00
    add d                                         ; $5c8c: $82
    ld [$0c0f], sp                                ; $5c8d: $08 $0f $0c
    nop                                           ; $5c90: $00
    add c                                         ; $5c91: $81
    rrca                                          ; $5c92: $0f
    add b                                         ; $5c93: $80
    inc b                                         ; $5c94: $04
    ld bc, $0380                                  ; $5c95: $01 $80 $03
    ld [bc], a                                    ; $5c98: $02
    add b                                         ; $5c99: $80
    inc bc                                        ; $5c9a: $03
    ld [bc], a                                    ; $5c9b: $02
    add b                                         ; $5c9c: $80
    inc bc                                        ; $5c9d: $03
    ld [bc], a                                    ; $5c9e: $02
    add b                                         ; $5c9f: $80
    inc bc                                        ; $5ca0: $03
    ld [bc], a                                    ; $5ca1: $02
    add e                                         ; $5ca2: $83
    ld [bc], a                                    ; $5ca3: $02
    ld bc, $0c0f                                  ; $5ca4: $01 $0f $0c
    nop                                           ; $5ca7: $00
    inc d                                         ; $5ca8: $14
    rrca                                          ; $5ca9: $0f
    nop                                           ; $5caa: $00
    nop                                           ; $5cab: $00
    sbc b                                         ; $5cac: $98
    inc d                                         ; $5cad: $14
    rrca                                          ; $5cae: $0f
    inc c                                         ; $5caf: $0c
    nop                                           ; $5cb0: $00
    add c                                         ; $5cb1: $81
    rrca                                          ; $5cb2: $0f
    add b                                         ; $5cb3: $80
    inc b                                         ; $5cb4: $04
    ld bc, $0380                                  ; $5cb5: $01 $80 $03
    ld [bc], a                                    ; $5cb8: $02
    add b                                         ; $5cb9: $80
    inc bc                                        ; $5cba: $03
    ld [bc], a                                    ; $5cbb: $02
    add b                                         ; $5cbc: $80
    inc bc                                        ; $5cbd: $03
    ld [bc], a                                    ; $5cbe: $02
    add b                                         ; $5cbf: $80
    inc bc                                        ; $5cc0: $03
    ld [bc], a                                    ; $5cc1: $02
    add e                                         ; $5cc2: $83
    ld [bc], a                                    ; $5cc3: $02
    ld bc, $0c0f                                  ; $5cc4: $01 $0f $0c
    nop                                           ; $5cc7: $00
    add d                                         ; $5cc8: $82
    rrca                                          ; $5cc9: $0f
    ld [$0010], sp                                ; $5cca: $08 $10 $00
    add d                                         ; $5ccd: $82
    ld [$0c0f], sp                                ; $5cce: $08 $0f $0c
    nop                                           ; $5cd1: $00
    add d                                         ; $5cd2: $82
    rrca                                          ; $5cd3: $0f
    dec b                                         ; $5cd4: $05
    stop                                          ; $5cd5: $10 $00
    add d                                         ; $5cd7: $82
    dec b                                         ; $5cd8: $05
    rrca                                          ; $5cd9: $0f
    inc c                                         ; $5cda: $0c
    nop                                           ; $5cdb: $00
    add d                                         ; $5cdc: $82
    rrca                                          ; $5cdd: $0f
    ld b, $10                                     ; $5cde: $06 $10
    nop                                           ; $5ce0: $00
    add d                                         ; $5ce1: $82
    ld b, $0f                                     ; $5ce2: $06 $0f
    inc c                                         ; $5ce4: $0c
    nop                                           ; $5ce5: $00
    add h                                         ; $5ce6: $84
    rrca                                          ; $5ce7: $0f
    rlca                                          ; $5ce8: $07
    nop                                           ; $5ce9: $00
    add hl, bc                                    ; $5cea: $09
    inc c                                         ; $5ceb: $0c
    ld a, [bc]                                    ; $5cec: $0a
    add h                                         ; $5ced: $84
    dec bc                                        ; $5cee: $0b
    nop                                           ; $5cef: $00
    rlca                                          ; $5cf0: $07
    rrca                                          ; $5cf1: $0f
    inc c                                         ; $5cf2: $0c
    nop                                           ; $5cf3: $00
    add [hl]                                      ; $5cf4: $86
    rrca                                          ; $5cf5: $0f
    ld [$0c00], sp                                ; $5cf6: $08 $00 $0c
    db $10                                        ; $5cf9: $10
    ld [de], a                                    ; $5cfa: $12
    ld a, [bc]                                    ; $5cfb: $0a
    nop                                           ; $5cfc: $00
    add h                                         ; $5cfd: $84
    inc c                                         ; $5cfe: $0c
    nop                                           ; $5cff: $00
    ld [$0c0f], sp                                ; $5d00: $08 $0f $0c
    nop                                           ; $5d03: $00
    add [hl]                                      ; $5d04: $86
    rrca                                          ; $5d05: $0f
    dec b                                         ; $5d06: $05
    nop                                           ; $5d07: $00
    inc c                                         ; $5d08: $0c
    ld de, $0a13                                  ; $5d09: $11 $13 $0a
    nop                                           ; $5d0c: $00
    add h                                         ; $5d0d: $84
    inc c                                         ; $5d0e: $0c
    nop                                           ; $5d0f: $00
    dec b                                         ; $5d10: $05
    rrca                                          ; $5d11: $0f
    inc c                                         ; $5d12: $0c
    nop                                           ; $5d13: $00
    add h                                         ; $5d14: $84
    rrca                                          ; $5d15: $0f
    ld b, $00                                     ; $5d16: $06 $00
    dec c                                         ; $5d18: $0d
    inc c                                         ; $5d19: $0c
    ld a, [bc]                                    ; $5d1a: $0a
    add h                                         ; $5d1b: $84
    ld c, $00                                     ; $5d1c: $0e $00
    ld b, $0f                                     ; $5d1e: $06 $0f
    inc c                                         ; $5d20: $0c
    nop                                           ; $5d21: $00
    add d                                         ; $5d22: $82
    rrca                                          ; $5d23: $0f
    ld b, $10                                     ; $5d24: $06 $10
    nop                                           ; $5d26: $00
    add d                                         ; $5d27: $82
    ld b, $0f                                     ; $5d28: $06 $0f
    inc c                                         ; $5d2a: $0c
    nop                                           ; $5d2b: $00
    add d                                         ; $5d2c: $82
    rrca                                          ; $5d2d: $0f
    rlca                                          ; $5d2e: $07
    rlca                                          ; $5d2f: $07
    nop                                           ; $5d30: $00
    add b                                         ; $5d31: $80
    ld b, $1e                                     ; $5d32: $06 $1e
    inc bc                                        ; $5d34: $03
    nop                                           ; $5d35: $00
    add d                                         ; $5d36: $82
    rlca                                          ; $5d37: $07
    rrca                                          ; $5d38: $0f
    inc c                                         ; $5d39: $0c
    nop                                           ; $5d3a: $00
    add d                                         ; $5d3b: $82
    rrca                                          ; $5d3c: $0f
    ld [$0007], sp                                ; $5d3d: $08 $07 $00
    add b                                         ; $5d40: $80
    ld b, $24                                     ; $5d41: $06 $24
    inc bc                                        ; $5d43: $03
    nop                                           ; $5d44: $00
    add d                                         ; $5d45: $82
    ld [$0c0f], sp                                ; $5d46: $08 $0f $0c
    nop                                           ; $5d49: $00
    add d                                         ; $5d4a: $82
    rrca                                          ; $5d4b: $0f
    dec b                                         ; $5d4c: $05
    inc bc                                        ; $5d4d: $03
    nop                                           ; $5d4e: $00
    add d                                         ; $5d4f: $82
    jr nc, jr_006_5d83                            ; $5d50: $30 $31

    dec bc                                        ; $5d52: $0b
    nop                                           ; $5d53: $00
    add d                                         ; $5d54: $82
    dec b                                         ; $5d55: $05
    rrca                                          ; $5d56: $0f
    inc c                                         ; $5d57: $0c
    nop                                           ; $5d58: $00
    add d                                         ; $5d59: $82
    rrca                                          ; $5d5a: $0f
    ld b, $10                                     ; $5d5b: $06 $10
    nop                                           ; $5d5d: $00
    add d                                         ; $5d5e: $82
    ld b, $0f                                     ; $5d5f: $06 $0f
    inc c                                         ; $5d61: $0c
    nop                                           ; $5d62: $00
    add d                                         ; $5d63: $82
    rrca                                          ; $5d64: $0f
    rlca                                          ; $5d65: $07
    stop                                          ; $5d66: $10 $00
    add d                                         ; $5d68: $82
    rlca                                          ; $5d69: $07
    rrca                                          ; $5d6a: $0f
    inc c                                         ; $5d6b: $0c
    nop                                           ; $5d6c: $00
    add d                                         ; $5d6d: $82
    rrca                                          ; $5d6e: $0f
    ld [$0010], sp                                ; $5d6f: $08 $10 $00
    add d                                         ; $5d72: $82
    ld [$0c0f], sp                                ; $5d73: $08 $0f $0c
    nop                                           ; $5d76: $00
    add c                                         ; $5d77: $81
    rrca                                          ; $5d78: $0f
    add b                                         ; $5d79: $80
    inc b                                         ; $5d7a: $04
    ld bc, $0380                                  ; $5d7b: $01 $80 $03
    ld [bc], a                                    ; $5d7e: $02
    add b                                         ; $5d7f: $80
    inc bc                                        ; $5d80: $03
    ld [bc], a                                    ; $5d81: $02
    add b                                         ; $5d82: $80

jr_006_5d83:
    inc bc                                        ; $5d83: $03
    ld [bc], a                                    ; $5d84: $02
    add b                                         ; $5d85: $80
    inc bc                                        ; $5d86: $03
    ld [bc], a                                    ; $5d87: $02
    add e                                         ; $5d88: $83
    ld [bc], a                                    ; $5d89: $02
    ld bc, $0c0f                                  ; $5d8a: $01 $0f $0c
    nop                                           ; $5d8d: $00
    inc d                                         ; $5d8e: $14
    rrca                                          ; $5d8f: $0f
    nop                                           ; $5d90: $00
    ld bc, $448e                                  ; $5d91: $01 $8e $44
    add b                                         ; $5d94: $80
    nop                                           ; $5d95: $00
    ld bc, $6069                                  ; $5d96: $01 $69 $60
    sub [hl]                                      ; $5d99: $96
    nop                                           ; $5d9a: $00
    ld bc, $60c4                                  ; $5d9b: $01 $c4 $60
    and b                                         ; $5d9e: $a0
    nop                                           ; $5d9f: $00
    ld bc, $5db2                                  ; $5da0: $01 $b2 $5d
    add b                                         ; $5da3: $80
    ld bc, $0100                                  ; $5da4: $01 $00 $01
    reti                                          ; $5da7: $d9


    ld h, e                                       ; $5da8: $63
    jp c, RST_00                                  ; $5da9: $da $00 $00

    ld bc, $6533                                  ; $5dac: $01 $33 $65
    jp c, RST_00                                  ; $5daf: $da $00 $00

    stop                                          ; $5db2: $10 $00
    sub e                                         ; $5db4: $93
    cp $01                                        ; $5db5: $fe $01
    add c                                         ; $5db7: $81
    ld a, a                                       ; $5db8: $7f
    cp c                                          ; $5db9: $b9
    ld a, a                                       ; $5dba: $7f
    and l                                         ; $5dbb: $a5
    ld a, e                                       ; $5dbc: $7b
    and l                                         ; $5dbd: $a5
    ld a, e                                       ; $5dbe: $7b
    sbc c                                         ; $5dbf: $99
    ld h, e                                       ; $5dc0: $63
    add c                                         ; $5dc1: $81
    ld a, a                                       ; $5dc2: $7f
    ld a, a                                       ; $5dc3: $7f
    rst RST_38                                    ; $5dc4: $ff
    nop                                           ; $5dc5: $00
    db $db                                        ; $5dc6: $db
    rst RST_38                                    ; $5dc7: $ff
    inc b                                         ; $5dc8: $04
    inc h                                         ; $5dc9: $24
    xor h                                         ; $5dca: $ac
    rst RST_38                                    ; $5dcb: $ff
    rst RST_38                                    ; $5dcc: $ff
    inc h                                         ; $5dcd: $24
    inc h                                         ; $5dce: $24
    rst RST_38                                    ; $5dcf: $ff
    inc h                                         ; $5dd0: $24
    rst RST_38                                    ; $5dd1: $ff
    db $db                                        ; $5dd2: $db
    db $db                                        ; $5dd3: $db
    ld c, c                                       ; $5dd4: $49
    sub a                                         ; $5dd5: $97
    ld c, c                                       ; $5dd6: $49
    sub a                                         ; $5dd7: $97
    ld a, [hl]                                    ; $5dd8: $7e
    ld a, [hl]                                    ; $5dd9: $7e
    ld c, c                                       ; $5dda: $49
    sub a                                         ; $5ddb: $97
    ld c, c                                       ; $5ddc: $49
    sub a                                         ; $5ddd: $97
    ld a, [hl]                                    ; $5dde: $7e
    ld a, [hl]                                    ; $5ddf: $7e
    ld c, c                                       ; $5de0: $49
    sub a                                         ; $5de1: $97
    ld c, c                                       ; $5de2: $49
    sub a                                         ; $5de3: $97
    nop                                           ; $5de4: $00
    ld a, a                                       ; $5de5: $7f
    ccf                                           ; $5de6: $3f
    add b                                         ; $5de7: $80
    nop                                           ; $5de8: $00
    add b                                         ; $5de9: $80
    nop                                           ; $5dea: $00
    cp a                                          ; $5deb: $bf
    ld a, a                                       ; $5dec: $7f
    add b                                         ; $5ded: $80
    nop                                           ; $5dee: $00
    rst RST_38                                    ; $5def: $ff
    ld b, b                                       ; $5df0: $40
    rst RST_38                                    ; $5df1: $ff
    ld a, a                                       ; $5df2: $7f
    ld a, a                                       ; $5df3: $7f
    nop                                           ; $5df4: $00
    rst RST_38                                    ; $5df5: $ff
    rst RST_38                                    ; $5df6: $ff
    inc b                                         ; $5df7: $04
    nop                                           ; $5df8: $00
    add [hl]                                      ; $5df9: $86
    rst RST_38                                    ; $5dfa: $ff
    rst RST_38                                    ; $5dfb: $ff
    nop                                           ; $5dfc: $00
    nop                                           ; $5dfd: $00
    rst RST_38                                    ; $5dfe: $ff
    nop                                           ; $5dff: $00
    inc bc                                        ; $5e00: $03
    rst RST_38                                    ; $5e01: $ff
    or b                                          ; $5e02: $b0
    nop                                           ; $5e03: $00
    cp $fd                                        ; $5e04: $fe $fd
    inc bc                                        ; $5e06: $03
    ld bc, $0103                                  ; $5e07: $01 $03 $01
    rst RST_38                                    ; $5e0a: $ff
    db $fd                                        ; $5e0b: $fd
    inc bc                                        ; $5e0c: $03
    ld bc, $03ff                                  ; $5e0d: $01 $ff $03
    rst RST_38                                    ; $5e10: $ff
    cp $fe                                        ; $5e11: $fe $fe
    nop                                           ; $5e13: $00
    ld a, [hl]                                    ; $5e14: $7e
    dec bc                                        ; $5e15: $0b
    add a                                         ; $5e16: $87
    ld c, c                                       ; $5e17: $49
    sub a                                         ; $5e18: $97
    ld c, c                                       ; $5e19: $49
    sub a                                         ; $5e1a: $97
    ld c, c                                       ; $5e1b: $49
    sub a                                         ; $5e1c: $97
    ld c, c                                       ; $5e1d: $49
    sub a                                         ; $5e1e: $97
    ld c, c                                       ; $5e1f: $49
    sub a                                         ; $5e20: $97
    ld c, c                                       ; $5e21: $49
    sub a                                         ; $5e22: $97
    ld c, c                                       ; $5e23: $49
    sub a                                         ; $5e24: $97
    ld c, c                                       ; $5e25: $49
    sub a                                         ; $5e26: $97
    ld c, c                                       ; $5e27: $49
    sub a                                         ; $5e28: $97
    ld c, c                                       ; $5e29: $49
    sub a                                         ; $5e2a: $97
    ld c, c                                       ; $5e2b: $49
    sub a                                         ; $5e2c: $97
    ld c, c                                       ; $5e2d: $49
    sub a                                         ; $5e2e: $97
    inc bc                                        ; $5e2f: $03
    rst RST_38                                    ; $5e30: $ff
    ld a, [hl]                                    ; $5e31: $7e
    ld a, [hl]                                    ; $5e32: $7e
    add b                                         ; $5e33: $80
    add c                                         ; $5e34: $81
    ld b, $03                                     ; $5e35: $06 $03
    inc bc                                        ; $5e37: $03
    inc bc                                        ; $5e38: $03
    inc bc                                        ; $5e39: $03
    inc bc                                        ; $5e3a: $03
    inc bc                                        ; $5e3b: $03
    add e                                         ; $5e3c: $83
    rst RST_38                                    ; $5e3d: $ff
    nop                                           ; $5e3e: $00
    rst RST_38                                    ; $5e3f: $ff
    add b                                         ; $5e40: $80
    add d                                         ; $5e41: $82
    ld b, $c0                                     ; $5e42: $06 $c0
    ret nz                                        ; $5e44: $c0

    ret nz                                        ; $5e45: $c0

    ret nz                                        ; $5e46: $c0

    ret nz                                        ; $5e47: $c0

    ret nz                                        ; $5e48: $c0

    adc b                                         ; $5e49: $88
    nop                                           ; $5e4a: $00
    rst RST_38                                    ; $5e4b: $ff
    nop                                           ; $5e4c: $00
    rst RST_38                                    ; $5e4d: $ff
    nop                                           ; $5e4e: $00
    rst RST_38                                    ; $5e4f: $ff
    nop                                           ; $5e50: $00
    rst RST_38                                    ; $5e51: $ff
    add b                                         ; $5e52: $80
    add d                                         ; $5e53: $82
    ld b, $03                                     ; $5e54: $06 $03
    inc bc                                        ; $5e56: $03
    inc bc                                        ; $5e57: $03
    inc bc                                        ; $5e58: $03
    inc bc                                        ; $5e59: $03
    inc bc                                        ; $5e5a: $03
    add h                                         ; $5e5b: $84
    nop                                           ; $5e5c: $00
    rst RST_38                                    ; $5e5d: $ff
    nop                                           ; $5e5e: $00
    rst RST_38                                    ; $5e5f: $ff
    add b                                         ; $5e60: $80
    add d                                         ; $5e61: $82
    ld b, $c0                                     ; $5e62: $06 $c0
    ret nz                                        ; $5e64: $c0

    ret nz                                        ; $5e65: $c0

    ret nz                                        ; $5e66: $c0

    ret nz                                        ; $5e67: $c0

    ret nz                                        ; $5e68: $c0

    dec c                                         ; $5e69: $0d
    nop                                           ; $5e6a: $00
    add a                                         ; $5e6b: $87
    rst RST_38                                    ; $5e6c: $ff
    nop                                           ; $5e6d: $00
    rst RST_38                                    ; $5e6e: $ff
    nop                                           ; $5e6f: $00
    rst RST_38                                    ; $5e70: $ff
    nop                                           ; $5e71: $00
    rst RST_38                                    ; $5e72: $ff
    dec c                                         ; $5e73: $0d
    nop                                           ; $5e74: $00
    add b                                         ; $5e75: $80
    add c                                         ; $5e76: $81
    db $10                                        ; $5e77: $10
    inc bc                                        ; $5e78: $03
    inc bc                                        ; $5e79: $03
    inc bc                                        ; $5e7a: $03
    inc bc                                        ; $5e7b: $03
    inc bc                                        ; $5e7c: $03
    inc bc                                        ; $5e7d: $03
    inc bc                                        ; $5e7e: $03
    inc bc                                        ; $5e7f: $03
    ret nz                                        ; $5e80: $c0

    ret nz                                        ; $5e81: $c0

Jump_006_5e82:
    ret nz                                        ; $5e82: $c0

    ret nz                                        ; $5e83: $c0

    ret nz                                        ; $5e84: $c0

    ret nz                                        ; $5e85: $c0

    ret nz                                        ; $5e86: $c0

    ret nz                                        ; $5e87: $c0

    sub b                                         ; $5e88: $90
    ld c, c                                       ; $5e89: $49
    sub a                                         ; $5e8a: $97
    ld c, c                                       ; $5e8b: $49
    sub a                                         ; $5e8c: $97
    ld c, c                                       ; $5e8d: $49
    sub a                                         ; $5e8e: $97
    ld c, c                                       ; $5e8f: $49
    sub a                                         ; $5e90: $97
    ld c, c                                       ; $5e91: $49
    sub a                                         ; $5e92: $97
    ld c, c                                       ; $5e93: $49
    sub a                                         ; $5e94: $97
    ld c, c                                       ; $5e95: $49
    sub a                                         ; $5e96: $97
    ld c, c                                       ; $5e97: $49
    sub a                                         ; $5e98: $97
    add b                                         ; $5e99: $80
    add e                                         ; $5e9a: $83
    dec b                                         ; $5e9b: $05
    scf                                           ; $5e9c: $37
    jr nc, jr_006_5ecf                            ; $5e9d: $30 $30

    inc [hl]                                      ; $5e9f: $34
    scf                                           ; $5ea0: $37
    add d                                         ; $5ea1: $82
    scf                                           ; $5ea2: $37

jr_006_5ea3:
    inc sp                                        ; $5ea3: $33
    inc b                                         ; $5ea4: $04
    nop                                           ; $5ea5: $00
    inc b                                         ; $5ea6: $04
    or c                                          ; $5ea7: $b1
    adc b                                         ; $5ea8: $88
    ld sp, $3d31                                  ; $5ea9: $31 $31 $3d
    dec [hl]                                      ; $5eac: $35
    cp h                                          ; $5ead: $bc
    sbc h                                         ; $5eae: $9c
    sbc b                                         ; $5eaf: $98
    sbc b                                         ; $5eb0: $98
    inc b                                         ; $5eb1: $04
    nop                                           ; $5eb2: $00
    adc b                                         ; $5eb3: $88
    sbc a                                         ; $5eb4: $9f
    sbc a                                         ; $5eb5: $9f
    sbc e                                         ; $5eb6: $9b
    sbc c                                         ; $5eb7: $99
    add c                                         ; $5eb8: $81
    add c                                         ; $5eb9: $81
    add e                                         ; $5eba: $83
    add c                                         ; $5ebb: $81
    inc bc                                        ; $5ebc: $03
    rrca                                          ; $5ebd: $0f
    add c                                         ; $5ebe: $81
    ld c, $04                                     ; $5ebf: $0e $04
    nop                                           ; $5ec1: $00
    adc h                                         ; $5ec2: $8c
    add a                                         ; $5ec3: $87
    rlca                                          ; $5ec4: $07
    sbc [hl]                                      ; $5ec5: $9e
    sbc [hl]                                      ; $5ec6: $9e
    cp [hl]                                       ; $5ec7: $be
    cp [hl]                                       ; $5ec8: $be
    or a                                          ; $5ec9: $b7
    or a                                          ; $5eca: $b7
    cp a                                          ; $5ecb: $bf
    ccf                                           ; $5ecc: $3f
    dec e                                         ; $5ecd: $1d
    inc e                                         ; $5ece: $1c

jr_006_5ecf:
    inc b                                         ; $5ecf: $04
    nop                                           ; $5ed0: $00
    adc h                                         ; $5ed1: $8c
    inc bc                                        ; $5ed2: $03
    inc bc                                        ; $5ed3: $03
    rlca                                          ; $5ed4: $07
    inc bc                                        ; $5ed5: $03
    ld b, $03                                     ; $5ed6: $06 $03
    rrca                                          ; $5ed8: $0f
    ld b, $3e                                     ; $5ed9: $06 $3e
    ld a, $3c                                     ; $5edb: $3e $3c
    inc a                                         ; $5edd: $3c
    ld [$0a00], sp                                ; $5ede: $08 $00 $0a
    ld h, e                                       ; $5ee1: $63
    inc b                                         ; $5ee2: $04
    ld a, a                                       ; $5ee3: $7f
    ld a, [bc]                                    ; $5ee4: $0a
    ld h, e                                       ; $5ee5: $63
    ld [$8500], sp                                ; $5ee6: $08 $00 $85
    ld a, [hl]                                    ; $5ee9: $7e
    ld a, [hl]                                    ; $5eea: $7e
    ld a, a                                       ; $5eeb: $7f
    ld a, a                                       ; $5eec: $7f
    ld h, a                                       ; $5eed: $67
    dec b                                         ; $5eee: $05
    ld h, e                                       ; $5eef: $63
    add d                                         ; $5ef0: $82
    ld h, a                                       ; $5ef1: $67
    ld h, e                                       ; $5ef2: $63
    add b                                         ; $5ef3: $80
    add e                                         ; $5ef4: $83
    ld b, $7f                                     ; $5ef5: $06 $7f
    ld a, [hl]                                    ; $5ef7: $7e
    ld h, b                                       ; $5ef8: $60
    ld h, b                                       ; $5ef9: $60
    ld h, b                                       ; $5efa: $60
    ld h, b                                       ; $5efb: $60
    ld [$0400], sp                                ; $5efc: $08 $00 $04
    inc bc                                        ; $5eff: $03
    inc b                                         ; $5f00: $04
    ld b, $04                                     ; $5f01: $06 $04
    inc c                                         ; $5f03: $0c
    inc b                                         ; $5f04: $04
    jr jr_006_5f0b                                ; $5f05: $18 $04

    jr nc, jr_006_5f0d                            ; $5f07: $30 $04

    ld h, b                                       ; $5f09: $60
    ld a, [bc]                                    ; $5f0a: $0a

jr_006_5f0b:
    nop                                           ; $5f0b: $00
    add a                                         ; $5f0c: $87

jr_006_5f0d:
    ld a, [hl]                                    ; $5f0d: $7e
    inc a                                         ; $5f0e: $3c
    ld a, a                                       ; $5f0f: $7f
    ld a, $07                                     ; $5f10: $3e $07
    inc bc                                        ; $5f12: $03
    inc bc                                        ; $5f13: $03
    rlca                                          ; $5f14: $07
    nop                                           ; $5f15: $00
    add c                                         ; $5f16: $81
    jr nc, @+$05                                  ; $5f17: $30 $03

    jr jr_006_5ea3                                ; $5f19: $18 $88

    ld c, $1e                                     ; $5f1b: $0e $1e
    ld a, a                                       ; $5f1d: $7f
    ld a, a                                       ; $5f1e: $7f
    ld [hl], a                                    ; $5f1f: $77
    ld [hl], e                                    ; $5f20: $73
    inc bc                                        ; $5f21: $03
    inc bc                                        ; $5f22: $03
    inc b                                         ; $5f23: $04
    nop                                           ; $5f24: $00
    add d                                         ; $5f25: $82
    inc bc                                        ; $5f26: $03
    ld [bc], a                                    ; $5f27: $02
    inc b                                         ; $5f28: $04
    ld h, e                                       ; $5f29: $63
    inc b                                         ; $5f2a: $04
    ld l, a                                       ; $5f2b: $6f
    add d                                         ; $5f2c: $82
    ld h, e                                       ; $5f2d: $63
    ld h, e                                       ; $5f2e: $63
    inc b                                         ; $5f2f: $04
    nop                                           ; $5f30: $00
    ld b, $36                                     ; $5f31: $06 $36
    add h                                         ; $5f33: $84
    or [hl]                                       ; $5f34: $b6
    or [hl]                                       ; $5f35: $b6
    add b                                         ; $5f36: $80
    add b                                         ; $5f37: $80
    ld b, $00                                     ; $5f38: $06 $00
    inc b                                         ; $5f3a: $04
    jr jr_006_5f41                                ; $5f3b: $18 $04

    ld a, [hl]                                    ; $5f3d: $7e
    add h                                         ; $5f3e: $84
    inc c                                         ; $5f3f: $0c
    inc c                                         ; $5f40: $0c

jr_006_5f41:
    ld a, a                                       ; $5f41: $7f
    ld a, a                                       ; $5f42: $7f
    ld b, $00                                     ; $5f43: $06 $00
    add d                                         ; $5f45: $82
    ld h, e                                       ; $5f46: $63
    ld b, b                                       ; $5f47: $40
    inc bc                                        ; $5f48: $03
    ld a, a                                       ; $5f49: $7f
    add c                                         ; $5f4a: $81
    ld a, $04                                     ; $5f4b: $3e $04
    nop                                           ; $5f4d: $00
    adc h                                         ; $5f4e: $8c
    inc bc                                        ; $5f4f: $03
    inc bc                                        ; $5f50: $03
    rlca                                          ; $5f51: $07
    inc bc                                        ; $5f52: $03
    ld b, $03                                     ; $5f53: $06 $03
    rrca                                          ; $5f55: $0f
    ld b, $3e                                     ; $5f56: $06 $3e
    ld a, $3c                                     ; $5f58: $3e $3c
    inc a                                         ; $5f5a: $3c
    inc b                                         ; $5f5b: $04
    nop                                           ; $5f5c: $00
    ld [$8463], sp                                ; $5f5d: $08 $63 $84
    ld [hl], a                                    ; $5f60: $77
    ld h, e                                       ; $5f61: $63
    ld [hl], a                                    ; $5f62: $77
    ld [hl-], a                                   ; $5f63: $32
    inc b                                         ; $5f64: $04
    nop                                           ; $5f65: $00
    adc h                                         ; $5f66: $8c
    ld a, a                                       ; $5f67: $7f
    ld a, a                                       ; $5f68: $7f
    ld b, $06                                     ; $5f69: $06 $06
    ld l, [hl]                                    ; $5f6b: $6e
    ld h, [hl]                                    ; $5f6c: $66
    ld [hl], b                                    ; $5f6d: $70
    ld h, b                                       ; $5f6e: $60
    ld a, [hl]                                    ; $5f6f: $7e
    ld a, $3e                                     ; $5f70: $3e $3e
    ld e, $08                                     ; $5f72: $1e $08
    nop                                           ; $5f74: $00
    add b                                         ; $5f75: $80
    add e                                         ; $5f76: $83
    ld b, $0f                                     ; $5f77: $06 $0f
    ld l, a                                       ; $5f79: $6f
    ld h, c                                       ; $5f7a: $61
    ld l, a                                       ; $5f7b: $6f
    ld l, a                                       ; $5f7c: $6f
    ld h, c                                       ; $5f7d: $61
    inc b                                         ; $5f7e: $04
    nop                                           ; $5f7f: $00
    inc b                                         ; $5f80: $04
    db $db                                        ; $5f81: $db
    add b                                         ; $5f82: $80
    add e                                         ; $5f83: $83
    inc b                                         ; $5f84: $04
    sbc e                                         ; $5f85: $9b
    db $db                                        ; $5f86: $db
    ret nz                                        ; $5f87: $c0

    add b                                         ; $5f88: $80
    inc b                                         ; $5f89: $04
    nop                                           ; $5f8a: $00
    add c                                         ; $5f8b: $81
    jr nc, @+$05                                  ; $5f8c: $30 $03

    jr @-$76                                      ; $5f8e: $18 $88

    ld c, $1e                                     ; $5f90: $0e $1e
    ld a, a                                       ; $5f92: $7f
    ld a, a                                       ; $5f93: $7f
    ld [hl], a                                    ; $5f94: $77
    ld [hl], e                                    ; $5f95: $73
    inc bc                                        ; $5f96: $03
    inc bc                                        ; $5f97: $03
    inc b                                         ; $5f98: $04
    nop                                           ; $5f99: $00
    inc b                                         ; $5f9a: $04
    jr jr_006_5fa1                                ; $5f9b: $18 $04

    ld a, [hl]                                    ; $5f9d: $7e
    add h                                         ; $5f9e: $84
    inc c                                         ; $5f9f: $0c
    inc c                                         ; $5fa0: $0c

jr_006_5fa1:
    ld a, a                                       ; $5fa1: $7f
    ld a, a                                       ; $5fa2: $7f
    inc b                                         ; $5fa3: $04
    nop                                           ; $5fa4: $00
    ld [$03d8], sp                                ; $5fa5: $08 $d8 $03
    ld b, $81                                     ; $5fa8: $06 $81
    rlca                                          ; $5faa: $07
    add b                                         ; $5fab: $80
    add e                                         ; $5fac: $83
    inc b                                         ; $5fad: $04
    ld h, c                                       ; $5fae: $61
    ld h, a                                       ; $5faf: $67
    ld l, a                                       ; $5fb0: $6f
    ld l, l                                       ; $5fb1: $6d
    add h                                         ; $5fb2: $84
    ld a, a                                       ; $5fb3: $7f
    ld l, a                                       ; $5fb4: $6f
    ld [hl], a                                    ; $5fb5: $77
    scf                                           ; $5fb6: $37
    inc b                                         ; $5fb7: $04
    nop                                           ; $5fb8: $00
    inc b                                         ; $5fb9: $04
    add b                                         ; $5fba: $80
    add d                                         ; $5fbb: $82
    ret nz                                        ; $5fbc: $c0

    add b                                         ; $5fbd: $80
    inc b                                         ; $5fbe: $04
    ret nz                                        ; $5fbf: $c0

    add c                                         ; $5fc0: $81
    ld b, b                                       ; $5fc1: $40
    dec b                                         ; $5fc2: $05
    nop                                           ; $5fc3: $00
    adc h                                         ; $5fc4: $8c
    inc bc                                        ; $5fc5: $03
    inc bc                                        ; $5fc6: $03
    rlca                                          ; $5fc7: $07
    inc bc                                        ; $5fc8: $03
    ld b, $03                                     ; $5fc9: $06 $03
    rrca                                          ; $5fcb: $0f
    ld b, $3e                                     ; $5fcc: $06 $3e
    ld a, $3c                                     ; $5fce: $3e $3c
    inc a                                         ; $5fd0: $3c
    inc b                                         ; $5fd1: $04
    nop                                           ; $5fd2: $00
    adc h                                         ; $5fd3: $8c
    ld a, a                                       ; $5fd4: $7f
    ld a, a                                       ; $5fd5: $7f
    ld b, $06                                     ; $5fd6: $06 $06
    ld l, [hl]                                    ; $5fd8: $6e
    ld h, [hl]                                    ; $5fd9: $66
    ld [hl], b                                    ; $5fda: $70
    ld h, b                                       ; $5fdb: $60
    ld a, [hl]                                    ; $5fdc: $7e
    ld a, $3e                                     ; $5fdd: $3e $3e
    ld e, $04                                     ; $5fdf: $1e $04
    nop                                           ; $5fe1: $00
    add b                                         ; $5fe2: $80
    add e                                         ; $5fe3: $83
    dec b                                         ; $5fe4: $05
    rlca                                          ; $5fe5: $07
    ld e, $3e                                     ; $5fe6: $1e $3e

jr_006_5fe8:
    scf                                           ; $5fe8: $37
    ccf                                           ; $5fe9: $3f
    add d                                         ; $5fea: $82
    dec e                                         ; $5feb: $1d
    inc e                                         ; $5fec: $1c
    ld [$0400], sp                                ; $5fed: $08 $00 $04
    cp $82                                        ; $5ff0: $fe $82
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    inc b                                         ; $5ff4: $04
    cp $82                                        ; $5ff5: $fe $82
    ld b, $06                                     ; $5ff7: $06 $06
    inc c                                         ; $5ff9: $0c
    nop                                           ; $5ffa: $00
    inc b                                         ; $5ffb: $04
    ret c                                         ; $5ffc: $d8

    inc b                                         ; $5ffd: $04
    nop                                           ; $5ffe: $00
    inc b                                         ; $5fff: $04

Jump_006_6000:
    inc c                                         ; $6000: $0c
    inc b                                         ; $6001: $04
    ld a, a                                       ; $6002: $7f
    inc b                                         ; $6003: $04
    inc c                                         ; $6004: $0c
    ld [$0400], sp                                ; $6005: $08 $00 $04
    add b                                         ; $6008: $80
    sub b                                         ; $6009: $90
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    ccf                                           ; $600c: $3f
    ccf                                           ; $600d: $3f
    ld b, $06                                     ; $600e: $06 $06
    ld c, $06                                     ; $6010: $0e $06
    ld c, $0c                                     ; $6012: $0e $0c
    inc a                                         ; $6014: $3c
    inc e                                         ; $6015: $1c
    ld hl, sp-$08                                 ; $6016: $f8 $f8
    ldh a, [$ffe0]                                ; $6018: $f0 $e0
    inc b                                         ; $601a: $04
    nop                                           ; $601b: $00
    inc b                                         ; $601c: $04
    db $db                                        ; $601d: $db
    add b                                         ; $601e: $80
    add e                                         ; $601f: $83
    inc b                                         ; $6020: $04
    inc bc                                        ; $6021: $03
    rlca                                          ; $6022: $07
    ld a, $3c                                     ; $6023: $3e $3c
    inc b                                         ; $6025: $04
    nop                                           ; $6026: $00
    inc b                                         ; $6027: $04
    ld a, a                                       ; $6028: $7f
    ld [$040c], sp                                ; $6029: $08 $0c $04
    nop                                           ; $602c: $00
    add h                                         ; $602d: $84
    cp a                                          ; $602e: $bf
    cp a                                          ; $602f: $bf
    add b                                         ; $6030: $80
    add b                                         ; $6031: $80
    stop                                          ; $6032: $10 $00
    inc b                                         ; $6034: $04
    jr nc, jr_006_603b                            ; $6035: $30 $04

    ld a, h                                       ; $6037: $7c
    add h                                         ; $6038: $84
    jr nc, jr_006_606b                            ; $6039: $30 $30

jr_006_603b:
    scf                                           ; $603b: $37
    scf                                           ; $603c: $37
    ld [$8800], sp                                ; $603d: $08 $00 $88
    jr nc, jr_006_6072                            ; $6040: $30 $30

    inc sp                                        ; $6042: $33
    inc sp                                        ; $6043: $33
    ld sp, $b133                                  ; $6044: $31 $33 $b1
    ld sp, $0004                                  ; $6047: $31 $04 $00
    inc b                                         ; $604a: $04
    jr @+$06                                      ; $604b: $18 $04

    ccf                                           ; $604d: $3f
    add h                                         ; $604e: $84
    sbc b                                         ; $604f: $98
    jr @-$5f                                      ; $6050: $18 $9f

    sbc [hl]                                      ; $6052: $9e
    inc c                                         ; $6053: $0c
    nop                                           ; $6054: $00
    inc bc                                        ; $6055: $03
    ld b, $81                                     ; $6056: $06 $81
    rlca                                          ; $6058: $07
    inc b                                         ; $6059: $04
    nop                                           ; $605a: $00
    add c                                         ; $605b: $81
    jr nc, @+$05                                  ; $605c: $30 $03

    jr jr_006_5fe8                                ; $605e: $18 $88

    ld c, $1e                                     ; $6060: $0e $1e
    ld a, a                                       ; $6062: $7f
    ld a, a                                       ; $6063: $7f
    ld [hl], a                                    ; $6064: $77
    ld [hl], e                                    ; $6065: $73
    inc bc                                        ; $6066: $03
    inc bc                                        ; $6067: $03
    nop                                           ; $6068: $00
    inc b                                         ; $6069: $04
    nop                                           ; $606a: $00

jr_006_606b:
    add l                                         ; $606b: $85
    ld a, $3e                                     ; $606c: $3e $3e
    ld a, a                                       ; $606e: $7f
    ld a, a                                       ; $606f: $7f
    ld [hl], a                                    ; $6070: $77
    dec c                                         ; $6071: $0d

jr_006_6072:
    ld h, e                                       ; $6072: $63
    add [hl]                                      ; $6073: $86
    ld [hl], a                                    ; $6074: $77
    ld h, e                                       ; $6075: $63
    ld a, a                                       ; $6076: $7f
    ld a, a                                       ; $6077: $7f
    ld a, $3e                                     ; $6078: $3e $3e
    ld [$8a00], sp                                ; $607a: $08 $00 $8a
    ld h, e                                       ; $607d: $63
    ld h, e                                       ; $607e: $63
    ld h, a                                       ; $607f: $67
    ld h, e                                       ; $6080: $63
    ld h, [hl]                                    ; $6081: $66
    ld h, a                                       ; $6082: $67
    ld l, [hl]                                    ; $6083: $6e
    ld h, [hl]                                    ; $6084: $66
    ld l, h                                       ; $6085: $6c
    ld l, [hl]                                    ; $6086: $6e
    inc b                                         ; $6087: $04
    ld a, h                                       ; $6088: $7c
    add c                                         ; $6089: $81
    ld l, h                                       ; $608a: $6c
    add b                                         ; $608b: $80
    add e                                         ; $608c: $83
    inc b                                         ; $608d: $04
    ld l, [hl]                                    ; $608e: $6e
    ld h, [hl]                                    ; $608f: $66
    ld h, a                                       ; $6090: $67
    ld h, e                                       ; $6091: $63
    add c                                         ; $6092: $81
    ld h, e                                       ; $6093: $63
    ld b, $00                                     ; $6094: $06 $00
    add b                                         ; $6096: $80
    add e                                         ; $6097: $83
    dec b                                         ; $6098: $05
    inc bc                                        ; $6099: $03
    ld h, e                                       ; $609a: $63
    ld h, e                                       ; $609b: $63
    ld h, e                                       ; $609c: $63
    ld h, b                                       ; $609d: $60
    sub b                                         ; $609e: $90
    ld l, a                                       ; $609f: $6f
    ld h, a                                       ; $60a0: $67
    ld a, a                                       ; $60a1: $7f
    ccf                                           ; $60a2: $3f
    inc a                                         ; $60a3: $3c
    jr c, jr_006_6116                             ; $60a4: $38 $70

    jr nc, jr_006_6108                            ; $60a6: $30 $60

    ld h, b                                       ; $60a8: $60
    ld [hl], b                                    ; $60a9: $70
    ld h, b                                       ; $60aa: $60
    ld a, a                                       ; $60ab: $7f
    ccf                                           ; $60ac: $3f
    ccf                                           ; $60ad: $3f
    rra                                           ; $60ae: $1f
    ld b, $00                                     ; $60af: $06 $00
    add b                                         ; $60b1: $80
    add e                                         ; $60b2: $83
    dec c                                         ; $60b3: $0d
    ld h, b                                       ; $60b4: $60
    ld h, e                                       ; $60b5: $63
    ld h, a                                       ; $60b6: $67
    ld l, [hl]                                    ; $60b7: $6e
    inc e                                         ; $60b8: $1c
    jr c, @+$72                                   ; $60b9: $38 $70

    ld [hl], b                                    ; $60bb: $70
    jr c, @+$1e                                   ; $60bc: $38 $1c

    ld c, $07                                     ; $60be: $0e $07
    inc bc                                        ; $60c0: $03
    inc b                                         ; $60c1: $04
    nop                                           ; $60c2: $00
    nop                                           ; $60c3: $00
    add c                                         ; $60c4: $81
    inc b                                         ; $60c5: $04
    inc bc                                        ; $60c6: $03
    nop                                           ; $60c7: $00
    add c                                         ; $60c8: $81
    ld bc, $000d                                  ; $60c9: $01 $0d $00
    add e                                         ; $60cc: $83
    ld bc, $0200                                  ; $60cd: $01 $00 $02
    inc bc                                        ; $60d0: $03
    nop                                           ; $60d1: $00
    add e                                         ; $60d2: $83
    ld [$1000], sp                                ; $60d3: $08 $00 $10
    dec b                                         ; $60d6: $05
    nop                                           ; $60d7: $00
    or d                                          ; $60d8: $b2
    ld [$0908], sp                                ; $60d9: $08 $08 $09
    ld [$1416], sp                                ; $60dc: $08 $16 $14
    sub b                                         ; $60df: $90
    db $10                                        ; $60e0: $10
    ld h, [hl]                                    ; $60e1: $66
    ld [hl+], a                                   ; $60e2: $22
    ld b, $02                                     ; $60e3: $06 $02
    ld b, $02                                     ; $60e5: $06 $02
    ld h, [hl]                                    ; $60e7: $66
    ld [hl+], a                                   ; $60e8: $22
    and [hl]                                      ; $60e9: $a6
    ld [hl+], a                                   ; $60ea: $22
    ld a, [hl+]                                   ; $60eb: $2a
    ld a, [hl+]                                   ; $60ec: $2a
    inc l                                         ; $60ed: $2c
    jr z, @+$31                                   ; $60ee: $28 $2f

    ld a, [hl+]                                   ; $60f0: $2a
    ld l, $2a                                     ; $60f1: $2e $2a
    ld l, $2a                                     ; $60f3: $2e $2a
    ld l, $2a                                     ; $60f5: $2e $2a
    ld l, $2a                                     ; $60f7: $2e $2a
    cpl                                           ; $60f9: $2f
    dec hl                                        ; $60fa: $2b
    cpl                                           ; $60fb: $2f
    ld a, [hl+]                                   ; $60fc: $2a
    cpl                                           ; $60fd: $2f
    dec hl                                        ; $60fe: $2b
    cpl                                           ; $60ff: $2f
    dec hl                                        ; $6100: $2b
    dec sp                                        ; $6101: $3b
    cpl                                           ; $6102: $2f
    rst RST_38                                    ; $6103: $ff
    rst RST_38                                    ; $6104: $ff
    sbc a                                         ; $6105: $9f
    add c                                         ; $6106: $81
    ld a, a                                       ; $6107: $7f

jr_006_6108:
    ld a, a                                       ; $6108: $7f
    ld e, $17                                     ; $6109: $1e $17
    inc bc                                        ; $610b: $03
    dec e                                         ; $610c: $1d
    add c                                         ; $610d: $81
    dec d                                         ; $610e: $15
    inc bc                                        ; $610f: $03
    dec e                                         ; $6110: $1d
    add e                                         ; $6111: $83
    dec d                                         ; $6112: $15
    inc e                                         ; $6113: $1c
    inc e                                         ; $6114: $1c
    ld a, [bc]                                    ; $6115: $0a

jr_006_6116:
    nop                                           ; $6116: $00
    inc b                                         ; $6117: $04
    ld [$1404], sp                                ; $6118: $08 $04 $14
    xor b                                         ; $611b: $a8
    ld h, $22                                     ; $611c: $26 $22
    ld h, $22                                     ; $611e: $26 $22
    ld h, $22                                     ; $6120: $26 $22
    ld h, $22                                     ; $6122: $26 $22
    ld l, $2a                                     ; $6124: $2e $2a
    ld l, $2a                                     ; $6126: $2e $2a
    ld l, $2a                                     ; $6128: $2e $2a
    ld l, $2a                                     ; $612a: $2e $2a
    ld l, $2a                                     ; $612c: $2e $2a
    cpl                                           ; $612e: $2f
    dec hl                                        ; $612f: $2b
    cpl                                           ; $6130: $2f
    ld a, [hl+]                                   ; $6131: $2a
    cpl                                           ; $6132: $2f
    dec hl                                        ; $6133: $2b
    cpl                                           ; $6134: $2f
    dec hl                                        ; $6135: $2b
    cpl                                           ; $6136: $2f
    dec hl                                        ; $6137: $2b
    cpl                                           ; $6138: $2f
    dec hl                                        ; $6139: $2b
    dec sp                                        ; $613a: $3b
    cpl                                           ; $613b: $2f
    rst RST_38                                    ; $613c: $ff
    rst RST_38                                    ; $613d: $ff
    sbc a                                         ; $613e: $9f
    add c                                         ; $613f: $81
    ld a, a                                       ; $6140: $7f
    ld a, a                                       ; $6141: $7f
    rra                                           ; $6142: $1f
    dec d                                         ; $6143: $15
    inc bc                                        ; $6144: $03
    dec e                                         ; $6145: $1d
    add c                                         ; $6146: $81
    dec d                                         ; $6147: $15
    inc bc                                        ; $6148: $03
    inc e                                         ; $6149: $1c
    add e                                         ; $614a: $83
    inc d                                         ; $614b: $14
    inc e                                         ; $614c: $1c
    inc e                                         ; $614d: $1c
    add b                                         ; $614e: $80
    add c                                         ; $614f: $81
    inc b                                         ; $6150: $04
    inc b                                         ; $6151: $04
    ld c, $04                                     ; $6152: $0e $04
    dec b                                         ; $6154: $05
    adc l                                         ; $6155: $8d
    ld hl, $2301                                  ; $6156: $21 $01 $23
    ld bc, $0272                                  ; $6159: $01 $72 $02
    ld [hl+], a                                   ; $615c: $22
    ld [bc], a                                    ; $615d: $02
    ld [hl+], a                                   ; $615e: $22
    ld [bc], a                                    ; $615f: $02
    inc hl                                        ; $6160: $23
    ld [bc], a                                    ; $6161: $02
    inc bc                                        ; $6162: $03
    inc bc                                        ; $6163: $03
    ld bc, $0585                                  ; $6164: $01 $85 $05
    nop                                           ; $6167: $00
    ld c, $00                                     ; $6168: $0e $00
    inc b                                         ; $616a: $04
    inc bc                                        ; $616b: $03
    nop                                           ; $616c: $00
    ret nz                                        ; $616d: $c0

    ccf                                           ; $616e: $3f
    ccf                                           ; $616f: $3f
    ld b, b                                       ; $6170: $40
    ld b, b                                       ; $6171: $40
    sbc a                                         ; $6172: $9f
    add b                                         ; $6173: $80
    or c                                          ; $6174: $b1
    adc [hl]                                      ; $6175: $8e
    ld h, [hl]                                    ; $6176: $66
    nop                                           ; $6177: $00
    ld c, c                                       ; $6178: $49
    ld [hl], $c8                                  ; $6179: $36 $c8
    nop                                           ; $617b: $00
    rst RST_38                                    ; $617c: $ff
    nop                                           ; $617d: $00
    or b                                          ; $617e: $b0
    ld c, a                                       ; $617f: $4f
    rst RST_38                                    ; $6180: $ff
    nop                                           ; $6181: $00
    ld hl, $7fde                                  ; $6182: $21 $de $7f
    add b                                         ; $6185: $80
    add [hl]                                      ; $6186: $86
    ld sp, hl                                     ; $6187: $f9
    ldh a, [c]                                    ; $6188: $f2
    rst RST_38                                    ; $6189: $ff
    ld b, b                                       ; $618a: $40
    ld a, a                                       ; $618b: $7f
    ccf                                           ; $618c: $3f
    ccf                                           ; $618d: $3f
    cp $fc                                        ; $618e: $fe $fc
    inc bc                                        ; $6190: $03
    ld [bc], a                                    ; $6191: $02
    dec a                                         ; $6192: $3d
    pop bc                                        ; $6193: $c1
    rst RST_28                                    ; $6194: $ef
    ld de, $03e5                                  ; $6195: $11 $e5 $03
    add e                                         ; $6198: $83
    ld a, l                                       ; $6199: $7d
    ld sp, hl                                     ; $619a: $f9
    reti                                          ; $619b: $d9


    db $fd                                        ; $619c: $fd
    db $db                                        ; $619d: $db
    db $db                                        ; $619e: $db
    db $fd                                        ; $619f: $fd
    rst RST_38                                    ; $61a0: $ff
    reti                                          ; $61a1: $d9


    ld sp, $ffcf                                  ; $61a2: $31 $cf $ff
    ld bc, $ff13                                  ; $61a5: $01 $13 $ff
    ld a, a                                       ; $61a8: $7f
    rst RST_38                                    ; $61a9: $ff
    inc bc                                        ; $61aa: $03
    cp $fe                                        ; $61ab: $fe $fe
    db $fc                                        ; $61ad: $fc
    stop                                          ; $61ae: $10 $00
    add c                                         ; $61b0: $81
    rlca                                          ; $61b1: $07
    dec b                                         ; $61b2: $05
    nop                                           ; $61b3: $00
    add b                                         ; $61b4: $80
    add e                                         ; $61b5: $83
    inc b                                         ; $61b6: $04
    inc e                                         ; $61b7: $1c
    inc hl                                        ; $61b8: $23
    ld b, b                                       ; $61b9: $40
    ld b, b                                       ; $61ba: $40
    add d                                         ; $61bb: $82
    sbc h                                         ; $61bc: $9c
    add b                                         ; $61bd: $80
    stop                                          ; $61be: $10 $00
    add b                                         ; $61c0: $80
    add c                                         ; $61c1: $81
    inc b                                         ; $61c2: $04
    db $10                                        ; $61c3: $10
    ret z                                         ; $61c4: $c8

    jr nz, jr_006_61d7                            ; $61c5: $20 $10

    and h                                         ; $61c7: $a4
    nop                                           ; $61c8: $00
    nop                                           ; $61c9: $00
    add b                                         ; $61ca: $80
    add b                                         ; $61cb: $80
    ld b, b                                       ; $61cc: $40
    ld b, b                                       ; $61cd: $40
    jr nz, jr_006_61f0                            ; $61ce: $20 $20

    sbc a                                         ; $61d0: $9f
    add b                                         ; $61d1: $80
    cp a                                          ; $61d2: $bf
    add b                                         ; $61d3: $80
    cp a                                          ; $61d4: $bf
    add b                                         ; $61d5: $80
    cp a                                          ; $61d6: $bf

jr_006_61d7:
    add b                                         ; $61d7: $80
    cp a                                          ; $61d8: $bf
    add b                                         ; $61d9: $80
    ret nz                                        ; $61da: $c0

    cp a                                          ; $61db: $bf
    rst RST_18                                    ; $61dc: $df
    cp a                                          ; $61dd: $bf
    rst RST_18                                    ; $61de: $df
    cp a                                          ; $61df: $bf
    rst RST_18                                    ; $61e0: $df
    cp a                                          ; $61e1: $bf
    rst RST_18                                    ; $61e2: $df
    cp a                                          ; $61e3: $bf
    ld l, h                                       ; $61e4: $6c
    ld e, a                                       ; $61e5: $5f
    ld h, e                                       ; $61e6: $63
    ld e, h                                       ; $61e7: $5c
    ccf                                           ; $61e8: $3f
    inc hl                                        ; $61e9: $23
    inc e                                         ; $61ea: $1c
    inc e                                         ; $61eb: $1c
    inc b                                         ; $61ec: $04
    nop                                           ; $61ed: $00
    sbc l                                         ; $61ee: $9d
    db $10                                        ; $61ef: $10

jr_006_61f0:
    db $10                                        ; $61f0: $10
    ret z                                         ; $61f1: $c8

    ld [$07e7], sp                                ; $61f2: $08 $e7 $07
    ld hl, sp+$00                                 ; $61f5: $f8 $00
    rst RST_38                                    ; $61f7: $ff
    nop                                           ; $61f8: $00
    nop                                           ; $61f9: $00
    rst RST_38                                    ; $61fa: $ff
    rst RST_28                                    ; $61fb: $ef
    rst RST_30                                    ; $61fc: $f7
    reti                                          ; $61fd: $d9


    add sp, -$4f                                  ; $61fe: $e8 $b1
    pop de                                        ; $6200: $d1
    ld h, b                                       ; $6201: $60
    and b                                         ; $6202: $a0
    ret nz                                        ; $6203: $c0

    ld b, b                                       ; $6204: $40
    adc b                                         ; $6205: $88
    add b                                         ; $6206: $80
    stop                                          ; $6207: $10 $00
    inc h                                         ; $6209: $24
    nop                                           ; $620a: $00
    ret z                                         ; $620b: $c8

    rla                                           ; $620c: $17
    nop                                           ; $620d: $00
    adc h                                         ; $620e: $8c
    ld c, $0e                                     ; $620f: $0e $0e
    add hl, de                                    ; $6211: $19
    ld de, $2020                                  ; $6212: $11 $20 $20
    ld h, b                                       ; $6215: $60
    ld b, b                                       ; $6216: $40
    ld c, [hl]                                    ; $6217: $4e
    ld b, b                                       ; $6218: $40
    rst RST_18                                    ; $6219: $df
    add b                                         ; $621a: $80
    ld [de], a                                    ; $621b: $12
    nop                                           ; $621c: $00
    xor b                                         ; $621d: $a8
    ret z                                         ; $621e: $c8

    nop                                           ; $621f: $00
    inc h                                         ; $6220: $24
    nop                                           ; $6221: $00
    sub b                                         ; $6222: $90
    add b                                         ; $6223: $80
    ld c, b                                       ; $6224: $48
    ld b, b                                       ; $6225: $40
    jr nz, jr_006_6248                            ; $6226: $20 $20

    jr nc, jr_006_623a                            ; $6228: $30 $10

    sbc b                                         ; $622a: $98
    db $10                                        ; $622b: $10
    sbc a                                         ; $622c: $9f
    add b                                         ; $622d: $80
    cp a                                          ; $622e: $bf
    add b                                         ; $622f: $80
    or c                                          ; $6230: $b1

jr_006_6231:
    adc [hl]                                      ; $6231: $8e
    and h                                         ; $6232: $a4
    sbc a                                         ; $6233: $9f
    adc $bf                                       ; $6234: $ce $bf
    rst RST_18                                    ; $6236: $df
    cp a                                          ; $6237: $bf
    rst RST_18                                    ; $6238: $df
    cp a                                          ; $6239: $bf

jr_006_623a:
    rst RST_18                                    ; $623a: $df
    cp a                                          ; $623b: $bf
    rst RST_18                                    ; $623c: $df
    cp a                                          ; $623d: $bf
    ld l, [hl]                                    ; $623e: $6e
    ld e, a                                       ; $623f: $5f
    ld h, c                                       ; $6240: $61
    ld e, [hl]                                    ; $6241: $5e
    ccf                                           ; $6242: $3f
    ld hl, $1e1e                                  ; $6243: $21 $1e $1e
    inc b                                         ; $6246: $04
    nop                                           ; $6247: $00

jr_006_6248:
    sbc d                                         ; $6248: $9a
    rlca                                          ; $6249: $07
    nop                                           ; $624a: $00
    ret z                                         ; $624b: $c8

    ld [$04e6], sp                                ; $624c: $08 $e6 $04
    di                                            ; $624f: $f3
    inc bc                                        ; $6250: $03
    ld hl, sp+$00                                 ; $6251: $f8 $00
    ccf                                           ; $6253: $3f
    ret nz                                        ; $6254: $c0

    nop                                           ; $6255: $00
    rst RST_38                                    ; $6256: $ff
    rst RST_28                                    ; $6257: $ef
    rst RST_30                                    ; $6258: $f7
    call c, $b9e9                                 ; $6259: $dc $e9 $b9
    pop de                                        ; $625c: $d1
    ld h, b                                       ; $625d: $60
    and b                                         ; $625e: $a0
    ret nz                                        ; $625f: $c0

    ld b, b                                       ; $6260: $40
    add b                                         ; $6261: $80
    add b                                         ; $6262: $80
    add b                                         ; $6263: $80
    add c                                         ; $6264: $81
    inc b                                         ; $6265: $04
    db $10                                        ; $6266: $10
    jr nz, jr_006_6231                            ; $6267: $20 $c8

    db $10                                        ; $6269: $10
    ld c, $00                                     ; $626a: $0e $00
    sub d                                         ; $626c: $92
    inc bc                                        ; $626d: $03

jr_006_626e:
    inc bc                                        ; $626e: $03
    inc c                                         ; $626f: $0c
    inc c                                         ; $6270: $0c
    add hl, de                                    ; $6271: $19
    db $10                                        ; $6272: $10
    ld [hl-], a                                   ; $6273: $32
    jr nz, @+$31                                  ; $6274: $20 $2f

    cpl                                           ; $6276: $2f
    ld e, a                                       ; $6277: $5f
    ld d, b                                       ; $6278: $50
    ld h, c                                       ; $6279: $61
    ld h, b                                       ; $627a: $60
    ld h, b                                       ; $627b: $60
    ld b, b                                       ; $627c: $40
    ret nz                                        ; $627d: $c0

    ret nz                                        ; $627e: $c0

    inc c                                         ; $627f: $0c
    nop                                           ; $6280: $00
    call nc, $f8f8                                ; $6281: $d4 $f8 $f8
    adc $ce                                       ; $6284: $ce $ce
    ldh a, [c]                                    ; $6286: $f2
    ld [hl-], a                                   ; $6287: $32
    dec bc                                        ; $6288: $0b
    dec bc                                        ; $6289: $0b
    dec b                                         ; $628a: $05
    dec b                                         ; $628b: $05
    rra                                           ; $628c: $1f
    inc bc                                        ; $628d: $03
    cp a                                          ; $628e: $bf
    add e                                         ; $628f: $83
    rst RST_38                                    ; $6290: $ff
    ld b, c                                       ; $6291: $41
    rst RST_38                                    ; $6292: $ff
    ld hl, $21ff                                  ; $6293: $21 $ff $21
    ret nz                                        ; $6296: $c0

    add b                                         ; $6297: $80
    ret nz                                        ; $6298: $c0

    add b                                         ; $6299: $80
    pop bc                                        ; $629a: $c1
    add b                                         ; $629b: $80
    pop bc                                        ; $629c: $c1
    add b                                         ; $629d: $80
    db $e3                                        ; $629e: $e3
    add b                                         ; $629f: $80
    rst RST_18                                    ; $62a0: $df

jr_006_62a1:
    and b                                         ; $62a1: $a0
    cp $81                                        ; $62a2: $fe $81
    ldh [$ffdf], a                                ; $62a4: $e0 $df
    ld [hl], b                                    ; $62a6: $70
    ld c, a                                       ; $62a7: $4f
    ld a, b                                       ; $62a8: $78
    ld h, a                                       ; $62a9: $67
    ld a, a                                       ; $62aa: $7f
    ld d, b                                       ; $62ab: $50
    ld a, a                                       ; $62ac: $7f
    ld l, a                                       ; $62ad: $6f
    ld hl, sp-$19                                 ; $62ae: $f8 $e7
    sbc h                                         ; $62b0: $9c
    sub e                                         ; $62b1: $93
    call z, Call_006_7fcf                         ; $62b2: $cc $cf $7f
    ld a, a                                       ; $62b5: $7f
    ld hl, sp+$17                                 ; $62b6: $f8 $17
    or b                                          ; $62b8: $b0
    ld e, a                                       ; $62b9: $5f
    rst RST_38                                    ; $62ba: $ff
    db $10                                        ; $62bb: $10
    cp a                                          ; $62bc: $bf
    ld d, b                                       ; $62bd: $50
    cp a                                          ; $62be: $bf
    ld d, b                                       ; $62bf: $50
    jr nc, jr_006_62a1                            ; $62c0: $30 $df

    jr nc, @-$1f                                  ; $62c2: $30 $df

    ld h, c                                       ; $62c4: $61
    cp a                                          ; $62c5: $bf
    ld a, c                                       ; $62c6: $79
    and a                                         ; $62c7: $a7
    rst RST_08                                    ; $62c8: $cf
    ld [hl], c                                    ; $62c9: $71
    and d                                         ; $62ca: $a2
    cp $9a                                        ; $62cb: $fe $9a
    cp $e5                                        ; $62cd: $fe $e5
    db $fd                                        ; $62cf: $fd
    ld a, c                                       ; $62d0: $79
    ld sp, hl                                     ; $62d1: $f9
    inc sp                                        ; $62d2: $33
    di                                            ; $62d3: $f3
    cp $fe                                        ; $62d4: $fe $fe
    inc b                                         ; $62d6: $04
    nop                                           ; $62d7: $00
    add b                                         ; $62d8: $80
    add c                                         ; $62d9: $81
    dec b                                         ; $62da: $05
    inc b                                         ; $62db: $04
    ld b, h                                       ; $62dc: $44
    ld h, $38                                     ; $62dd: $26 $38
    jr nz, jr_006_626e                            ; $62df: $20 $8d

    jp Jump_006_4c03                              ; $62e1: $c3 $03 $4c


    inc c                                         ; $62e4: $0c
    sbc b                                         ; $62e5: $98
    db $10                                        ; $62e6: $10
    and b                                         ; $62e7: $a0
    jr nz, jr_006_6319                            ; $62e8: $20 $2f

    jr nz, jr_006_633c                            ; $62ea: $20 $50

    ld b, b                                       ; $62ec: $40
    ld h, b                                       ; $62ed: $60
    inc bc                                        ; $62ee: $03
    ld b, b                                       ; $62ef: $40
    add d                                         ; $62f0: $82
    ret nz                                        ; $62f1: $c0

    ret nz                                        ; $62f2: $c0

    inc b                                         ; $62f3: $04
    nop                                           ; $62f4: $00
    add l                                         ; $62f5: $85
    stop                                          ; $62f6: $10 $00
    stop                                          ; $62f8: $10 $00
    jr c, @+$05                                   ; $62fa: $38 $03

    nop                                           ; $62fc: $00
    sub h                                         ; $62fd: $94
    ld hl, sp-$08                                 ; $62fe: $f8 $f8
    adc $ce                                       ; $6300: $ce $ce
    ldh a, [c]                                    ; $6302: $f2
    ld [hl-], a                                   ; $6303: $32
    dec bc                                        ; $6304: $0b
    dec bc                                        ; $6305: $0b
    dec b                                         ; $6306: $05
    dec b                                         ; $6307: $05
    rra                                           ; $6308: $1f
    inc bc                                        ; $6309: $03
    add a                                         ; $630a: $87
    inc bc                                        ; $630b: $03
    rrca                                          ; $630c: $0f
    ld b, c                                       ; $630d: $41
    rlca                                          ; $630e: $07
    ld hl, $2103                                  ; $630f: $21 $03 $21
    ld c, $80                                     ; $6312: $0e $80
    or d                                          ; $6314: $b2
    ret nz                                        ; $6315: $c0

    ret nz                                        ; $6316: $c0

    ld b, b                                       ; $6317: $40
    ld b, b                                       ; $6318: $40

jr_006_6319:
    ld h, b                                       ; $6319: $60
    ld b, b                                       ; $631a: $40
    ld d, b                                       ; $631b: $50
    ld b, b                                       ; $631c: $40
    ld l, h                                       ; $631d: $6c
    ld h, e                                       ; $631e: $63
    ldh [$ffe0], a                                ; $631f: $e0 $e0
    sbc c                                         ; $6321: $99
    sub d                                         ; $6322: $92
    call z, Call_006_7fcf                         ; $6323: $cc $cf $7f
    ld a, a                                       ; $6326: $7f
    nop                                           ; $6327: $00
    rla                                           ; $6328: $17
    nop                                           ; $6329: $00
    rla                                           ; $632a: $17
    inc de                                        ; $632b: $13
    db $10                                        ; $632c: $10
    inc bc                                        ; $632d: $03
    db $10                                        ; $632e: $10
    inc de                                        ; $632f: $13
    db $10                                        ; $6330: $10
    db $10                                        ; $6331: $10
    rla                                           ; $6332: $17
    db $10                                        ; $6333: $10

jr_006_6334:
    rla                                           ; $6334: $17
    add hl, hl                                    ; $6335: $29
    daa                                           ; $6336: $27
    add hl, hl                                    ; $6337: $29
    daa                                           ; $6338: $27
    ld c, e                                       ; $6339: $4b
    ld b, c                                       ; $633a: $41
    ld [bc], a                                    ; $633b: $02

jr_006_633c:
    sbc [hl]                                      ; $633c: $9e
    ld a, [hl-]                                   ; $633d: $3a
    ld e, $65                                     ; $633e: $1e $65
    ld l, l                                       ; $6340: $6d
    ld a, c                                       ; $6341: $79
    ld a, c                                       ; $6342: $79
    di                                            ; $6343: $f3
    inc sp                                        ; $6344: $33
    cp $fe                                        ; $6345: $fe $fe
    ld b, $00                                     ; $6347: $06 $00
    sub b                                         ; $6349: $90
    rra                                           ; $634a: $1f
    rra                                           ; $634b: $1f
    inc e                                         ; $634c: $1c
    db $10                                        ; $634d: $10
    ld c, $08                                     ; $634e: $0e $08
    ld c, $08                                     ; $6350: $0e $08
    rlca                                          ; $6352: $07
    inc b                                         ; $6353: $04
    rlca                                          ; $6354: $07
    inc b                                         ; $6355: $04
    rrca                                          ; $6356: $0f
    ld c, $93                                     ; $6357: $0e $93
    sub d                                         ; $6359: $92
    add b                                         ; $635a: $80
    add e                                         ; $635b: $83
    ld a, [bc]                                    ; $635c: $0a
    ld h, a                                       ; $635d: $67
    add hl, bc                                    ; $635e: $09
    ld [$6010], sp                                ; $635f: $08 $10 $60
    inc bc                                        ; $6362: $03
    inc c                                         ; $6363: $0c
    ld [hl], b                                    ; $6364: $70
    add a                                         ; $6365: $87
    ld [$179b], sp                                ; $6366: $08 $9b $17
    db $10                                        ; $6369: $10
    rla                                           ; $636a: $17
    db $10                                        ; $636b: $10
    inc de                                        ; $636c: $13
    db $10                                        ; $636d: $10
    inc c                                         ; $636e: $0c
    inc c                                         ; $636f: $0c
    add e                                         ; $6370: $83
    inc bc                                        ; $6371: $03
    add b                                         ; $6372: $80
    nop                                           ; $6373: $00
    ret nz                                        ; $6374: $c0

    nop                                           ; $6375: $00
    ldh a, [rNR10]                                ; $6376: $f0 $10
    ldh a, [$ffb0]                                ; $6378: $f0 $b0
    ld a, b                                       ; $637a: $78
    ld l, b                                       ; $637b: $68
    rra                                           ; $637c: $1f
    rra                                           ; $637d: $1f
    ld l, $23                                     ; $637e: $2e $23
    ld e, [hl]                                    ; $6380: $5e
    ld b, e                                       ; $6381: $43
    ld e, a                                       ; $6382: $5f
    add b                                         ; $6383: $80
    add l                                         ; $6384: $85
    dec b                                         ; $6385: $05
    ld b, c                                       ; $6386: $41
    cp c                                          ; $6387: $b9
    ld l, c                                       ; $6388: $69
    reti                                          ; $6389: $d9


    ld [hl], c                                    ; $638a: $71
    add l                                         ; $638b: $85
    ld sp, $19f7                                  ; $638c: $31 $f7 $19
    rst RST_38                                    ; $638f: $ff
    rst RST_38                                    ; $6390: $ff
    inc b                                         ; $6391: $04
    nop                                           ; $6392: $00
    and e                                         ; $6393: $a3
    inc bc                                        ; $6394: $03
    inc bc                                        ; $6395: $03
    rrca                                          ; $6396: $0f
    inc c                                         ; $6397: $0c
    ld a, a                                       ; $6398: $7f
    ld [hl], b                                    ; $6399: $70
    ld hl, sp-$80                                 ; $639a: $f8 $80
    ld a, $02                                     ; $639c: $3e $02
    rra                                           ; $639e: $1f
    ld bc, $810f                                  ; $639f: $01 $0f $81
    ld b, [hl]                                    ; $63a2: $46
    add d                                         ; $63a3: $82
    ld h, d                                       ; $63a4: $62
    add d                                         ; $63a5: $82
    ld [hl], h                                    ; $63a6: $74
    add h                                         ; $63a7: $84
    inc a                                         ; $63a8: $3c
    add h                                         ; $63a9: $84
    jr jr_006_6334                                ; $63aa: $18 $88

    inc e                                         ; $63ac: $1c
    sub b                                         ; $63ad: $90
    ld a, $a0                                     ; $63ae: $3e $a0
    ld a, a                                       ; $63b0: $7f
    ld b, b                                       ; $63b1: $40
    cp $80                                        ; $63b2: $fe $80
    ld hl, sp+$00                                 ; $63b4: $f8 $00
    ldh [rTIMA], a                                ; $63b6: $e0 $05
    nop                                           ; $63b8: $00
    sub [hl]                                      ; $63b9: $96
    ld [$0c08], sp                                ; $63ba: $08 $08 $0c
    inc c                                         ; $63bd: $0c
    rrca                                          ; $63be: $0f
    dec bc                                        ; $63bf: $0b
    rrca                                          ; $63c0: $0f
    ld [$080f], sp                                ; $63c1: $08 $0f $08
    rrca                                          ; $63c4: $0f
    ld [$0407], sp                                ; $63c5: $08 $07 $04
    rlca                                          ; $63c8: $07
    inc b                                         ; $63c9: $04
    rlca                                          ; $63ca: $07
    inc b                                         ; $63cb: $04
    rrca                                          ; $63cc: $0f
    ld c, $93                                     ; $63cd: $0e $93
    sub d                                         ; $63cf: $92
    add b                                         ; $63d0: $80
    add e                                         ; $63d1: $83
    dec b                                         ; $63d2: $05
    ld h, a                                       ; $63d3: $67
    add hl, bc                                    ; $63d4: $09
    ld [$6010], sp                                ; $63d5: $08 $10 $60
    nop                                           ; $63d8: $00
    add e                                         ; $63d9: $83
    db $fc                                        ; $63da: $fc
    db $fc                                        ; $63db: $fc
    ld e, [hl]                                    ; $63dc: $5e
    inc bc                                        ; $63dd: $03
    cp $bd                                        ; $63de: $fe $bd
    ld d, [hl]                                    ; $63e0: $56
    cp $fe                                        ; $63e1: $fe $fe
    ld d, [hl]                                    ; $63e3: $56
    db $fc                                        ; $63e4: $fc
    ld d, h                                       ; $63e5: $54
    cp $8e                                        ; $63e6: $fe $8e
    rst RST_38                                    ; $63e8: $ff
    ei                                            ; $63e9: $fb
    ei                                            ; $63ea: $fb
    dec b                                         ; $63eb: $05
    ld [hl], a                                    ; $63ec: $77
    adc l                                         ; $63ed: $8d
    rst RST_38                                    ; $63ee: $ff
    rst RST_38                                    ; $63ef: $ff
    or h                                          ; $63f0: $b4
    ld l, h                                       ; $63f1: $6c
    db $fc                                        ; $63f2: $fc
    db $fc                                        ; $63f3: $fc
    xor b                                         ; $63f4: $a8
    ld hl, sp-$08                                 ; $63f5: $f8 $f8
    xor b                                         ; $63f7: $a8
    ld hl, sp-$08                                 ; $63f8: $f8 $f8
    rrca                                          ; $63fa: $0f
    rrca                                          ; $63fb: $0f
    ld b, $05                                     ; $63fc: $06 $05
    rrca                                          ; $63fe: $0f
    rrca                                          ; $63ff: $0f
    ld e, $1f                                     ; $6400: $1e $1f
    rra                                           ; $6402: $1f
    ld d, $1f                                     ; $6403: $16 $1f
    ld d, $0f                                     ; $6405: $16 $0f
    dec bc                                        ; $6407: $0b
    rlca                                          ; $6408: $07
    dec b                                         ; $6409: $05
    dec b                                         ; $640a: $05
    ld b, $22                                     ; $640b: $06 $22
    inc bc                                        ; $640d: $03
    inc hl                                        ; $640e: $23
    inc bc                                        ; $640f: $03
    ld [hl], e                                    ; $6410: $73
    ld [bc], a                                    ; $6411: $02
    inc hl                                        ; $6412: $23
    rlca                                          ; $6413: $07
    dec h                                         ; $6414: $25
    rlca                                          ; $6415: $07
    ld c, $0a                                     ; $6416: $0e $0a
    inc c                                         ; $6418: $0c
    ld c, $f8                                     ; $6419: $0e $f8
    ld hl, sp-$44                                 ; $641b: $f8 $bc
    inc bc                                        ; $641d: $03
    db $fc                                        ; $641e: $fc
    sbc [hl]                                      ; $641f: $9e
    xor a                                         ; $6420: $af
    rst RST_38                                    ; $6421: $ff
    rst RST_38                                    ; $6422: $ff
    xor l                                         ; $6423: $ad
    rst RST_38                                    ; $6424: $ff
    xor l                                         ; $6425: $ad
    cp $1a                                        ; $6426: $fe $1a
    db $fc                                        ; $6428: $fc
    db $f4                                        ; $6429: $f4
    db $f4                                        ; $642a: $f4
    inc c                                         ; $642b: $0c
    add sp, $18                                   ; $642c: $e8 $18
    ld hl, sp-$08                                 ; $642e: $f8 $f8
    ld l, b                                       ; $6430: $68
    ret c                                         ; $6431: $d8

    ld hl, sp-$04                                 ; $6432: $f8 $fc
    db $f4                                        ; $6434: $f4
    inc e                                         ; $6435: $1c
    ld c, $0a                                     ; $6436: $0e $0a
    ld b, $0e                                     ; $6438: $06 $0e
    rlca                                          ; $643a: $07
    rlca                                          ; $643b: $07
    inc bc                                        ; $643c: $03
    ld [bc], a                                    ; $643d: $02
    add b                                         ; $643e: $80
    add e                                         ; $643f: $83
    dec b                                         ; $6440: $05
    rlca                                          ; $6441: $07
    inc bc                                        ; $6442: $03
    inc bc                                        ; $6443: $03
    ld bc, $8d03                                  ; $6444: $01 $03 $8d
    rlca                                          ; $6447: $07
    ld b, $06                                     ; $6448: $06 $06
    dec b                                         ; $644a: $05
    rla                                           ; $644b: $17
    dec b                                         ; $644c: $05
    rla                                           ; $644d: $17
    rlca                                          ; $644e: $07
    add hl, sp                                    ; $644f: $39
    ld bc, $0111                                  ; $6450: $01 $11 $01
    db $10                                        ; $6453: $10
    dec b                                         ; $6454: $05
    nop                                           ; $6455: $00
    sbc [hl]                                      ; $6456: $9e
    ld a, a                                       ; $6457: $7f
    ld a, a                                       ; $6458: $7f
    push af                                       ; $6459: $f5
    cp a                                          ; $645a: $bf
    ccf                                           ; $645b: $3f
    ccf                                           ; $645c: $3f
    dec [hl]                                      ; $645d: $35
    ccf                                           ; $645e: $3f
    cp a                                          ; $645f: $bf
    dec [hl]                                      ; $6460: $35
    ccf                                           ; $6461: $3f
    db $e4                                        ; $6462: $e4
    xor [hl]                                      ; $6463: $ae
    ld [hl], c                                    ; $6464: $71
    cp a                                          ; $6465: $bf
    rst RST_38                                    ; $6466: $ff
    rst RST_28                                    ; $6467: $ef
    ldh a, [rNR22]                                ; $6468: $f0 $17
    jr @+$21                                      ; $646a: $18 $1f

    rra                                           ; $646c: $1f
    dec de                                        ; $646d: $1b
    ld d, $1f                                     ; $646e: $16 $1f
    rra                                           ; $6470: $1f
    ld a, [bc]                                    ; $6471: $0a
    rrca                                          ; $6472: $0f
    rrca                                          ; $6473: $0f
    ld a, [bc]                                    ; $6474: $0a
    add b                                         ; $6475: $80
    add e                                         ; $6476: $83
    dec b                                         ; $6477: $05
    rrca                                          ; $6478: $0f
    ret nz                                        ; $6479: $c0

    ldh [$ffe0], a                                ; $647a: $e0 $e0
    ldh [$ff8f], a                                ; $647c: $e0 $8f
    ldh [$ff60], a                                ; $647e: $e0 $60
    ldh [$ff60], a                                ; $6480: $e0 $60
    ldh [$ffc0], a                                ; $6482: $e0 $c0
    ld [hl], b                                    ; $6484: $70
    and b                                         ; $6485: $a0
    or b                                          ; $6486: $b0
    ld d, b                                       ; $6487: $50
    ld [hl], b                                    ; $6488: $70
    ret nc                                        ; $6489: $d0

    ldh a, [$fff0]                                ; $648a: $f0 $f0
    ld b, b                                       ; $648c: $40
    inc bc                                        ; $648d: $03
    ret nz                                        ; $648e: $c0

    ld b, $80                                     ; $648f: $06 $80
    call nc, Call_006_7f7f                        ; $6491: $d4 $7f $7f
    push af                                       ; $6494: $f5
    ld a, a                                       ; $6495: $7f
    cp a                                          ; $6496: $bf
    cp a                                          ; $6497: $bf
    dec [hl]                                      ; $6498: $35
    ccf                                           ; $6499: $3f
    cp a                                          ; $649a: $bf
    dec [hl]                                      ; $649b: $35
    ccf                                           ; $649c: $3f
    db $e4                                        ; $649d: $e4
    xor [hl]                                      ; $649e: $ae
    ld [hl], c                                    ; $649f: $71
    rst RST_38                                    ; $64a0: $ff
    ld a, a                                       ; $64a1: $7f
    rst RST_28                                    ; $64a2: $ef
    ldh a, [rNR22]                                ; $64a3: $f0 $17
    jr jr_006_64c6                                ; $64a5: $18 $1f

    rra                                           ; $64a7: $1f
    dec de                                        ; $64a8: $1b
    ld d, $1f                                     ; $64a9: $16 $1f
    rra                                           ; $64ab: $1f
    ld a, [bc]                                    ; $64ac: $0a
    rrca                                          ; $64ad: $0f
    rrca                                          ; $64ae: $0f
    ld a, [bc]                                    ; $64af: $0a
    rrca                                          ; $64b0: $0f
    rrca                                          ; $64b1: $0f
    rst RST_38                                    ; $64b2: $ff
    rst RST_38                                    ; $64b3: $ff
    db $eb                                        ; $64b4: $eb
    rst RST_18                                    ; $64b5: $df
    rst RST_38                                    ; $64b6: $ff
    rst RST_38                                    ; $64b7: $ff
    ld [$ffff], a                                 ; $64b8: $ea $ff $ff
    ld [$aabf], a                                 ; $64bb: $ea $bf $aa
    rst RST_38                                    ; $64be: $ff
    pop af                                        ; $64bf: $f1
    rst RST_38                                    ; $64c0: $ff
    sbc a                                         ; $64c1: $9f
    rst RST_18                                    ; $64c2: $df
    ldh [$ffae], a                                ; $64c3: $e0 $ae
    or c                                          ; $64c5: $b1

jr_006_64c6:
    cp a                                          ; $64c6: $bf
    cp a                                          ; $64c7: $bf
    or [hl]                                       ; $64c8: $b6
    xor l                                         ; $64c9: $ad
    cp a                                          ; $64ca: $bf
    cp a                                          ; $64cb: $bf
    dec d                                         ; $64cc: $15
    rra                                           ; $64cd: $1f
    rra                                           ; $64ce: $1f
    dec d                                         ; $64cf: $15
    rra                                           ; $64d0: $1f
    rra                                           ; $64d1: $1f
    rrca                                          ; $64d2: $0f
    rrca                                          ; $64d3: $0f
    ld b, $05                                     ; $64d4: $06 $05
    rrca                                          ; $64d6: $0f
    rrca                                          ; $64d7: $0f
    ld b, $07                                     ; $64d8: $06 $07
    rlca                                          ; $64da: $07
    ld b, $03                                     ; $64db: $06 $03
    ld [bc], a                                    ; $64dd: $02
    rlca                                          ; $64de: $07
    rlca                                          ; $64df: $07
    rrca                                          ; $64e0: $0f
    dec c                                         ; $64e1: $0d
    dec c                                         ; $64e2: $0d
    ld a, [bc]                                    ; $64e3: $0a
    ld c, $0b                                     ; $64e4: $0e $0b
    inc bc                                        ; $64e6: $03
    rrca                                          ; $64e7: $0f
    adc h                                         ; $64e8: $8c
    ld a, [bc]                                    ; $64e9: $0a
    inc de                                        ; $64ea: $13
    inc de                                        ; $64eb: $13
    ld sp, $7921                                  ; $64ec: $31 $21 $79
    ld b, c                                       ; $64ef: $41
    sbc l                                         ; $64f0: $9d
    sbc a                                         ; $64f1: $9f
    ld hl, sp-$08                                 ; $64f2: $f8 $f8
    cp h                                          ; $64f4: $bc
    inc bc                                        ; $64f5: $03
    db $fc                                        ; $64f6: $fc
    cp d                                          ; $64f7: $ba
    xor h                                         ; $64f8: $ac
    db $fc                                        ; $64f9: $fc
    db $fc                                        ; $64fa: $fc
    xor h                                         ; $64fb: $ac
    ld hl, sp-$58                                 ; $64fc: $f8 $a8
    db $fc                                        ; $64fe: $fc
    inc e                                         ; $64ff: $1c
    cp $f6                                        ; $6500: $fe $f6
    or $0a                                        ; $6502: $f6 $0a
    xor $1a                                       ; $6504: $ee $1a
    cp $fe                                        ; $6506: $fe $fe
    ld l, b                                       ; $6508: $68
    ret c                                         ; $6509: $d8

    ld hl, sp-$08                                 ; $650a: $f8 $f8
    ld d, b                                       ; $650c: $50
    ldh a, [$fff8]                                ; $650d: $f0 $f8
    ld e, b                                       ; $650f: $58
    db $fc                                        ; $6510: $fc
    db $f4                                        ; $6511: $f4
    rrca                                          ; $6512: $0f
    rrca                                          ; $6513: $0f
    ld b, $05                                     ; $6514: $06 $05
    rrca                                          ; $6516: $0f
    rrca                                          ; $6517: $0f
    ld b, $07                                     ; $6518: $06 $07
    scf                                           ; $651a: $37
    ld [hl], $3b                                  ; $651b: $36 $3b
    ld a, [hl+]                                   ; $651d: $2a
    dec sp                                        ; $651e: $3b
    cpl                                           ; $651f: $2f
    ccf                                           ; $6520: $3f
    ld hl, $1e1d                                  ; $6521: $21 $1d $1e
    ld b, $07                                     ; $6524: $06 $07
    rrca                                          ; $6526: $0f
    dec bc                                        ; $6527: $0b
    rrca                                          ; $6528: $0f
    ld a, [bc]                                    ; $6529: $0a
    inc de                                        ; $652a: $13
    inc de                                        ; $652b: $13
    ld sp, $7921                                  ; $652c: $31 $21 $79
    ld b, c                                       ; $652f: $41
    sbc l                                         ; $6530: $9d
    sbc a                                         ; $6531: $9f
    nop                                           ; $6532: $00
    sbc [hl]                                      ; $6533: $9e
    ld hl, sp-$10                                 ; $6534: $f8 $f0
    cp h                                          ; $6536: $bc
    ld hl, sp-$04                                 ; $6537: $f8 $fc
    db $fc                                        ; $6539: $fc
    xor [hl]                                      ; $653a: $ae
    cp $ff                                        ; $653b: $fe $ff
    xor [hl]                                      ; $653d: $ae
    rst RST_38                                    ; $653e: $ff
    xor e                                         ; $653f: $ab
    ei                                            ; $6540: $fb
    add hl, de                                    ; $6541: $19
    db $fd                                        ; $6542: $fd
    push af                                       ; $6543: $f5
    rst RST_30                                    ; $6544: $f7
    dec bc                                        ; $6545: $0b
    rst RST_28                                    ; $6546: $ef
    ld a, [de]                                    ; $6547: $1a
    cp $fe                                        ; $6548: $fe $fe
    ld l, b                                       ; $654a: $68
    ret c                                         ; $654b: $d8

    ld hl, sp-$08                                 ; $654c: $f8 $f8
    ld d, b                                       ; $654e: $50
    ldh a, [$fff0]                                ; $654f: $f0 $f0
    ld d, b                                       ; $6551: $50
    add b                                         ; $6552: $80
    add e                                         ; $6553: $83
    inc b                                         ; $6554: $04
    ldh a, [$ff03]                                ; $6555: $f0 $03
    rlca                                          ; $6557: $07
    rlca                                          ; $6558: $07
    sub l                                         ; $6559: $95
    ld e, $0f                                     ; $655a: $1e $0f
    rra                                           ; $655c: $1f
    ld d, $1f                                     ; $655d: $16 $1f
    ld d, $0f                                     ; $655f: $16 $0f
    dec bc                                        ; $6561: $0b
    rlca                                          ; $6562: $07
    dec b                                         ; $6563: $05
    dec b                                         ; $6564: $05
    ld b, $02                                     ; $6565: $06 $02
    inc bc                                        ; $6567: $03
    inc de                                        ; $6568: $13
    inc bc                                        ; $6569: $03
    dec sp                                        ; $656a: $3b
    ld [bc], a                                    ; $656b: $02
    inc de                                        ; $656c: $13
    inc bc                                        ; $656d: $03
    ld de, $0105                                  ; $656e: $11 $05 $01
    sbc [hl]                                      ; $6571: $9e
    ld hl, sp-$10                                 ; $6572: $f8 $f0
    cp h                                          ; $6574: $bc
    ld hl, sp-$04                                 ; $6575: $f8 $fc
    db $fc                                        ; $6577: $fc
    xor a                                         ; $6578: $af
    cp $ff                                        ; $6579: $fe $ff
    xor l                                         ; $657b: $ad
    rst RST_38                                    ; $657c: $ff
    xor l                                         ; $657d: $ad
    rst RST_38                                    ; $657e: $ff

jr_006_657f:
    dec de                                        ; $657f: $1b
    db $fd                                        ; $6580: $fd
    push af                                       ; $6581: $f5
    push af                                       ; $6582: $f5
    dec c                                         ; $6583: $0d
    jp hl                                         ; $6584: $e9


    jr jr_006_657f                                ; $6585: $18 $f8

    ld hl, sp+$68                                 ; $6587: $f8 $68
    ret c                                         ; $6589: $d8

    ld hl, sp-$08                                 ; $658a: $f8 $f8
    ld d, b                                       ; $658c: $50
    ldh a, [$fff0]                                ; $658d: $f0 $f0
    ld d, b                                       ; $658f: $50
    add b                                         ; $6590: $80
    add e                                         ; $6591: $83
    inc b                                         ; $6592: $04
    ldh a, [$ff03]                                ; $6593: $f0 $03
    rlca                                          ; $6595: $07
    rlca                                          ; $6596: $07
    sub l                                         ; $6597: $95
    ld b, $07                                     ; $6598: $06 $07
    rlca                                          ; $659a: $07
    ld b, $07                                     ; $659b: $06 $07
    ld b, $03                                     ; $659d: $06 $03
    inc bc                                        ; $659f: $03
    rlca                                          ; $65a0: $07
    dec b                                         ; $65a1: $05
    dec c                                         ; $65a2: $0d
    ld a, [bc]                                    ; $65a3: $0a
    ld c, $0b                                     ; $65a4: $0e $0b
    rra                                           ; $65a6: $1f
    rrca                                          ; $65a7: $0f
    dec sp                                        ; $65a8: $3b
    ld [bc], a                                    ; $65a9: $02
    inc de                                        ; $65aa: $13
    inc bc                                        ; $65ab: $03
    ld de, $0105                                  ; $65ac: $11 $05 $01
    or a                                          ; $65af: $b7
    ld a, a                                       ; $65b0: $7f
    ld e, a                                       ; $65b1: $5f
    rst RST_38                                    ; $65b2: $ff
    cp a                                          ; $65b3: $bf
    ld h, a                                       ; $65b4: $67
    ccf                                           ; $65b5: $3f
    ld [hl], e                                    ; $65b6: $73
    cpl                                           ; $65b7: $2f
    ld a, h                                       ; $65b8: $7c
    dec hl                                        ; $65b9: $2b
    ld a, $e9                                     ; $65ba: $3e $e9
    cp l                                          ; $65bc: $bd
    db $e3                                        ; $65bd: $e3
    rst RST_38                                    ; $65be: $ff
    cp a                                          ; $65bf: $bf
    rst RST_08                                    ; $65c0: $cf
    push af                                       ; $65c1: $f5
    ld [hl], a                                    ; $65c2: $77
    ld a, d                                       ; $65c3: $7a
    rra                                           ; $65c4: $1f
    rra                                           ; $65c5: $1f
    dec de                                        ; $65c6: $1b
    ld d, $1f                                     ; $65c7: $16 $1f
    rra                                           ; $65c9: $1f
    ld a, [bc]                                    ; $65ca: $0a
    rrca                                          ; $65cb: $0f
    rrca                                          ; $65cc: $0f
    ld a, [bc]                                    ; $65cd: $0a
    rrca                                          ; $65ce: $0f
    rrca                                          ; $65cf: $0f
    add b                                         ; $65d0: $80
    nop                                           ; $65d1: $00
    add b                                         ; $65d2: $80
    ret nz                                        ; $65d3: $c0

    ldh a, [$ffe0]                                ; $65d4: $f0 $e0
    ld hl, sp-$10                                 ; $65d6: $f8 $f0
    ld hl, sp-$28                                 ; $65d8: $f8 $d8
    sbc b                                         ; $65da: $98
    ret c                                         ; $65db: $d8

    ret z                                         ; $65dc: $c8

    ret z                                         ; $65dd: $c8

    add sp, $28                                   ; $65de: $e8 $28
    cp b                                          ; $65e0: $b8
    ld d, b                                       ; $65e1: $50
    ld [hl], b                                    ; $65e2: $70
    ret nc                                        ; $65e3: $d0

    ldh a, [$fff0]                                ; $65e4: $f0 $f0
    ld b, b                                       ; $65e6: $40
    inc bc                                        ; $65e7: $03
    ret nz                                        ; $65e8: $c0

    ld b, $80                                     ; $65e9: $06 $80
    and e                                         ; $65eb: $a3
    ccf                                           ; $65ec: $3f
    rra                                           ; $65ed: $1f
    rst RST_38                                    ; $65ee: $ff
    rst RST_38                                    ; $65ef: $ff
    rst RST_20                                    ; $65f0: $e7
    cp a                                          ; $65f1: $bf
    ld [hl], e                                    ; $65f2: $73
    cpl                                           ; $65f3: $2f
    ld a, h                                       ; $65f4: $7c
    dec hl                                        ; $65f5: $2b
    sbc $69                                       ; $65f6: $de $69
    ld e, l                                       ; $65f8: $5d
    db $e3                                        ; $65f9: $e3
    rst RST_38                                    ; $65fa: $ff
    ld a, a                                       ; $65fb: $7f
    rst RST_28                                    ; $65fc: $ef
    push de                                       ; $65fd: $d5
    ld [hl], a                                    ; $65fe: $77
    ld a, d                                       ; $65ff: $7a
    rra                                           ; $6600: $1f
    rra                                           ; $6601: $1f
    dec de                                        ; $6602: $1b
    ld d, $1f                                     ; $6603: $16 $1f
    rra                                           ; $6605: $1f
    ld a, [bc]                                    ; $6606: $0a
    rrca                                          ; $6607: $0f
    rrca                                          ; $6608: $0f
    ld a, [bc]                                    ; $6609: $0a
    rrca                                          ; $660a: $0f
    rrca                                          ; $660b: $0f
    cp a                                          ; $660c: $bf

jr_006_660d:
    cp a                                          ; $660d: $bf
    ei                                            ; $660e: $fb
    inc bc                                        ; $660f: $03
    rst RST_38                                    ; $6610: $ff
    sbc b                                         ; $6611: $98
    ld [$ffff], a                                 ; $6612: $ea $ff $ff
    ld [$eaff], a                                 ; $6615: $ea $ff $ea
    cp a                                          ; $6618: $bf
    or c                                          ; $6619: $b1
    rst RST_38                                    ; $661a: $ff
    rst RST_18                                    ; $661b: $df
    rst RST_18                                    ; $661c: $df
    jr nz, jr_006_660d                            ; $661d: $20 $ee

    pop af                                        ; $661f: $f1
    cp a                                          ; $6620: $bf
    cp a                                          ; $6621: $bf
    or [hl]                                       ; $6622: $b6
    xor l                                         ; $6623: $ad
    cp a                                          ; $6624: $bf
    cp a                                          ; $6625: $bf
    dec d                                         ; $6626: $15
    rra                                           ; $6627: $1f
    rra                                           ; $6628: $1f
    dec d                                         ; $6629: $15
    add b                                         ; $662a: $80
    add e                                         ; $662b: $83
    inc b                                         ; $662c: $04
    rra                                           ; $662d: $1f
    inc bc                                        ; $662e: $03
    rlca                                          ; $662f: $07
    rlca                                          ; $6630: $07
    adc [hl]                                      ; $6631: $8e
    ld b, $07                                     ; $6632: $06 $07
    rlca                                          ; $6634: $07
    ld b, $07                                     ; $6635: $06 $07
    rlca                                          ; $6637: $07
    inc bc                                        ; $6638: $03
    inc bc                                        ; $6639: $03
    rlca                                          ; $663a: $07
    dec b                                         ; $663b: $05
    dec c                                         ; $663c: $0d
    ld a, [bc]                                    ; $663d: $0a
    ld c, $0b                                     ; $663e: $0e $0b
    inc bc                                        ; $6640: $03
    rrca                                          ; $6641: $0f
    xor e                                         ; $6642: $ab
    ld a, [bc]                                    ; $6643: $0a
    inc de                                        ; $6644: $13
    inc de                                        ; $6645: $13
    ld sp, $7921                                  ; $6646: $31 $21 $79
    ld b, c                                       ; $6649: $41
    sbc l                                         ; $664a: $9d
    sbc a                                         ; $664b: $9f
    ld hl, sp-$10                                 ; $664c: $f8 $f0
    cp h                                          ; $664e: $bc
    ld hl, sp-$04                                 ; $664f: $f8 $fc
    db $fc                                        ; $6651: $fc
    xor [hl]                                      ; $6652: $ae
    cp $ff                                        ; $6653: $fe $ff
    xor [hl]                                      ; $6655: $ae
    rst RST_38                                    ; $6656: $ff
    xor e                                         ; $6657: $ab
    ei                                            ; $6658: $fb
    dec de                                        ; $6659: $1b
    db $fd                                        ; $665a: $fd
    push af                                       ; $665b: $f5
    rst RST_30                                    ; $665c: $f7
    dec bc                                        ; $665d: $0b
    rst RST_28                                    ; $665e: $ef
    ld a, [de]                                    ; $665f: $1a
    cp $fe                                        ; $6660: $fe $fe
    ld l, b                                       ; $6662: $68
    ret c                                         ; $6663: $d8

    ld hl, sp-$08                                 ; $6664: $f8 $f8
    ld d, b                                       ; $6666: $50
    ldh a, [$fff8]                                ; $6667: $f0 $f8
    ld e, b                                       ; $6669: $58
    db $fc                                        ; $666a: $fc
    db $f4                                        ; $666b: $f4
    inc bc                                        ; $666c: $03
    inc bc                                        ; $666d: $03
    inc b                                         ; $666e: $04
    rlca                                          ; $666f: $07
    sbc d                                         ; $6670: $9a
    ld b, $07                                     ; $6671: $06 $07
    rlca                                          ; $6673: $07
    ld b, $37                                     ; $6674: $06 $37
    scf                                           ; $6676: $37
    dec sp                                        ; $6677: $3b
    dec hl                                        ; $6678: $2b
    ccf                                           ; $6679: $3f
    dec l                                         ; $667a: $2d
    dec a                                         ; $667b: $3d
    ld [hl+], a                                   ; $667c: $22
    ld e, $1f                                     ; $667d: $1e $1f
    rrca                                          ; $667f: $0f
    dec bc                                        ; $6680: $0b
    rrca                                          ; $6681: $0f
    ld a, [bc]                                    ; $6682: $0a
    inc de                                        ; $6683: $13
    inc de                                        ; $6684: $13
    ld sp, $7921                                  ; $6685: $31 $21 $79
    ld b, c                                       ; $6688: $41
    sbc l                                         ; $6689: $9d
    sbc a                                         ; $668a: $9f
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    sbc b                                         ; $668d: $98
    sub h                                         ; $668e: $94
    ld bc, $0402                                  ; $668f: $01 $02 $04
    ld b, $02                                     ; $6692: $06 $02
    inc b                                         ; $6694: $04
    ld b, $02                                     ; $6695: $06 $02
    inc b                                         ; $6697: $04
    ld b, $02                                     ; $6698: $06 $02
    ld bc, $0402                                  ; $669a: $01 $02 $04
    ld b, $02                                     ; $669d: $06 $02
    inc b                                         ; $669f: $04
    ld b, $02                                     ; $66a0: $06 $02
    ld bc, $000c                                  ; $66a2: $01 $0c $00
    add d                                         ; $66a5: $82
    inc bc                                        ; $66a6: $03
    inc c                                         ; $66a7: $0c
    ld [$830e], sp                                ; $66a8: $08 $0e $83
    dec bc                                        ; $66ab: $0b
    inc bc                                        ; $66ac: $03
    inc c                                         ; $66ad: $0c
    dec b                                         ; $66ae: $05
    ld c, $82                                     ; $66af: $0e $82
    dec bc                                        ; $66b1: $0b
    inc bc                                        ; $66b2: $03
    inc c                                         ; $66b3: $0c
    nop                                           ; $66b4: $00
    add d                                         ; $66b5: $82
    rlca                                          ; $66b6: $07
    db $10                                        ; $66b7: $10
    ld [$8300], sp                                ; $66b8: $08 $00 $83
    rrca                                          ; $66bb: $0f
    rlca                                          ; $66bc: $07
    db $10                                        ; $66bd: $10
    dec b                                         ; $66be: $05
    nop                                           ; $66bf: $00
    add d                                         ; $66c0: $82
    rrca                                          ; $66c1: $0f
    rlca                                          ; $66c2: $07
    inc c                                         ; $66c3: $0c
    nop                                           ; $66c4: $00
    add d                                         ; $66c5: $82
    ld [$0810], sp                                ; $66c6: $08 $10 $08
    nop                                           ; $66c9: $00
    add e                                         ; $66ca: $83
    rrca                                          ; $66cb: $0f
    ld [$0510], sp                                ; $66cc: $08 $10 $05
    nop                                           ; $66cf: $00
    add d                                         ; $66d0: $82
    rrca                                          ; $66d1: $0f
    ld [$000c], sp                                ; $66d2: $08 $0c $00
    add d                                         ; $66d5: $82
    inc bc                                        ; $66d6: $03
    ld a, [bc]                                    ; $66d7: $0a
    ld [$830d], sp                                ; $66d8: $08 $0d $83
    add hl, bc                                    ; $66db: $09
    inc bc                                        ; $66dc: $03
    db $10                                        ; $66dd: $10
    dec b                                         ; $66de: $05
    nop                                           ; $66df: $00
    add d                                         ; $66e0: $82
    rrca                                          ; $66e1: $0f
    inc bc                                        ; $66e2: $03
    inc c                                         ; $66e3: $0c
    nop                                           ; $66e4: $00
    add d                                         ; $66e5: $82
    rlca                                          ; $66e6: $07
    inc c                                         ; $66e7: $0c
    ld [$830e], sp                                ; $66e8: $08 $0e $83
    dec bc                                        ; $66eb: $0b
    rlca                                          ; $66ec: $07
    db $10                                        ; $66ed: $10
    dec b                                         ; $66ee: $05
    nop                                           ; $66ef: $00
    add d                                         ; $66f0: $82
    rrca                                          ; $66f1: $0f
    rlca                                          ; $66f2: $07
    inc c                                         ; $66f3: $0c
    nop                                           ; $66f4: $00
    add h                                         ; $66f5: $84
    ld [$1710], sp                                ; $66f6: $08 $10 $17
    add hl, de                                    ; $66f9: $19
    inc bc                                        ; $66fa: $03
    nop                                           ; $66fb: $00
    add [hl]                                      ; $66fc: $86
    dec de                                        ; $66fd: $1b
    nop                                           ; $66fe: $00
    nop                                           ; $66ff: $00
    rrca                                          ; $6700: $0f
    ld [$0510], sp                                ; $6701: $08 $10 $05
    nop                                           ; $6704: $00
    add d                                         ; $6705: $82
    rrca                                          ; $6706: $0f
    ld [$000c], sp                                ; $6707: $08 $0c $00
    add h                                         ; $670a: $84
    inc bc                                        ; $670b: $03
    db $10                                        ; $670c: $10
    jr jr_006_6729                                ; $670d: $18 $1a

    inc bc                                        ; $670f: $03
    nop                                           ; $6710: $00
    add [hl]                                      ; $6711: $86
    inc e                                         ; $6712: $1c
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    rrca                                          ; $6715: $0f
    inc bc                                        ; $6716: $03
    ld a, [bc]                                    ; $6717: $0a
    dec b                                         ; $6718: $05
    dec c                                         ; $6719: $0d
    add d                                         ; $671a: $82
    add hl, bc                                    ; $671b: $09
    inc bc                                        ; $671c: $03

jr_006_671d:
    inc c                                         ; $671d: $0c
    nop                                           ; $671e: $00
    add d                                         ; $671f: $82
    rlca                                          ; $6720: $07
    ld a, [bc]                                    ; $6721: $0a
    ld [$8a0d], sp                                ; $6722: $08 $0d $8a
    add hl, bc                                    ; $6725: $09
    ld bc, $0402                                  ; $6726: $01 $02 $04

jr_006_6729:
    ld b, $02                                     ; $6729: $06 $02
    inc b                                         ; $672b: $04
    ld b, $02                                     ; $672c: $06 $02
    ld bc, $000c                                  ; $672e: $01 $0c $00
    add d                                         ; $6731: $82
    ld [$070c], sp                                ; $6732: $08 $0c $07
    ld c, $82                                     ; $6735: $0e $82
    dec bc                                        ; $6737: $0b
    inc c                                         ; $6738: $0c
    rlca                                          ; $6739: $07
    ld c, $82                                     ; $673a: $0e $82
    dec bc                                        ; $673c: $0b
    inc bc                                        ; $673d: $03
    inc c                                         ; $673e: $0c
    nop                                           ; $673f: $00
    add d                                         ; $6740: $82
    inc bc                                        ; $6741: $03
    db $10                                        ; $6742: $10
    add b                                         ; $6743: $80
    dec b                                         ; $6744: $05
    dec e                                         ; $6745: $1d
    add h                                         ; $6746: $84
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    rrca                                          ; $6749: $0f
    db $10                                        ; $674a: $10
    add b                                         ; $674b: $80
    inc b                                         ; $674c: $04
    jr nc, jr_006_6752                            ; $674d: $30 $03

    nop                                           ; $674f: $00
    add d                                         ; $6750: $82
    rrca                                          ; $6751: $0f

jr_006_6752:
    rlca                                          ; $6752: $07
    inc c                                         ; $6753: $0c
    nop                                           ; $6754: $00
    add d                                         ; $6755: $82
    rlca                                          ; $6756: $07
    db $10                                        ; $6757: $10
    add b                                         ; $6758: $80
    inc bc                                        ; $6759: $03
    ld [hl+], a                                   ; $675a: $22
    add [hl]                                      ; $675b: $86
    nop                                           ; $675c: $00
    dec h                                         ; $675d: $25
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    rrca                                          ; $6760: $0f
    db $10                                        ; $6761: $10
    add b                                         ; $6762: $80
    inc b                                         ; $6763: $04
    inc [hl]                                      ; $6764: $34
    inc bc                                        ; $6765: $03
    nop                                           ; $6766: $00
    add d                                         ; $6767: $82
    rrca                                          ; $6768: $0f
    ld de, $000c                                  ; $6769: $11 $0c $00
    add d                                         ; $676c: $82
    ld [$070a], sp                                ; $676d: $08 $0a $07
    dec c                                         ; $6770: $0d
    add d                                         ; $6771: $82
    add hl, bc                                    ; $6772: $09
    ld a, [bc]                                    ; $6773: $0a
    rlca                                          ; $6774: $07
    dec c                                         ; $6775: $0d
    add d                                         ; $6776: $82
    add hl, bc                                    ; $6777: $09
    ld [$000c], sp                                ; $6778: $08 $0c $00
    add d                                         ; $677b: $82
    inc bc                                        ; $677c: $03
    inc c                                         ; $677d: $0c
    rlca                                          ; $677e: $07
    ld c, $82                                     ; $677f: $0e $82
    dec bc                                        ; $6781: $0b
    inc c                                         ; $6782: $0c
    rlca                                          ; $6783: $07
    ld c, $82                                     ; $6784: $0e $82
    dec bc                                        ; $6786: $0b
    inc bc                                        ; $6787: $03
    inc c                                         ; $6788: $0c
    nop                                           ; $6789: $00
    add d                                         ; $678a: $82
    rlca                                          ; $678b: $07
    db $10                                        ; $678c: $10
    add b                                         ; $678d: $80
    dec b                                         ; $678e: $05
    ld h, $84                                     ; $678f: $26 $84
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    rrca                                          ; $6793: $0f
    db $10                                        ; $6794: $10
    add b                                         ; $6795: $80
    dec b                                         ; $6796: $05
    jr c, jr_006_671d                             ; $6797: $38 $84

    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    rrca                                          ; $679b: $0f
    rlca                                          ; $679c: $07
    inc c                                         ; $679d: $0c
    nop                                           ; $679e: $00
    add d                                         ; $679f: $82
    ld [$8010], sp                                ; $67a0: $08 $10 $80
    dec b                                         ; $67a3: $05
    dec hl                                        ; $67a4: $2b
    add h                                         ; $67a5: $84
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    rrca                                          ; $67a8: $0f
    db $10                                        ; $67a9: $10
    add b                                         ; $67aa: $80
    dec b                                         ; $67ab: $05
    ld [de], a                                    ; $67ac: $12
    add h                                         ; $67ad: $84
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    rrca                                          ; $67b0: $0f
    ld [$000c], sp                                ; $67b1: $08 $0c $00
    add d                                         ; $67b4: $82
    inc bc                                        ; $67b5: $03
    ld a, [bc]                                    ; $67b6: $0a
    rlca                                          ; $67b7: $07
    dec c                                         ; $67b8: $0d
    add d                                         ; $67b9: $82
    add hl, bc                                    ; $67ba: $09
    ld a, [bc]                                    ; $67bb: $0a
    rlca                                          ; $67bc: $07
    dec c                                         ; $67bd: $0d
    add d                                         ; $67be: $82
    add hl, bc                                    ; $67bf: $09
    inc bc                                        ; $67c0: $03
    inc c                                         ; $67c1: $0c
    nop                                           ; $67c2: $00
    add d                                         ; $67c3: $82
    ld bc, $8002                                  ; $67c4: $01 $02 $80
    inc bc                                        ; $67c7: $03
    inc b                                         ; $67c8: $04
    adc d                                         ; $67c9: $8a
    ld [bc], a                                    ; $67ca: $02
    inc b                                         ; $67cb: $04
    ld b, $02                                     ; $67cc: $06 $02
    inc b                                         ; $67ce: $04
    ld b, $02                                     ; $67cf: $06 $02
    inc b                                         ; $67d1: $04
    ld b, $02                                     ; $67d2: $06 $02
    add b                                         ; $67d4: $80
    inc bc                                        ; $67d5: $03
    inc b                                         ; $67d6: $04
    add d                                         ; $67d7: $82
    ld [bc], a                                    ; $67d8: $02
    ld bc, $000c                                  ; $67d9: $01 $0c $00
    nop                                           ; $67dc: $00
    ld bc, $448e                                  ; $67dd: $01 $8e $44
    add b                                         ; $67e0: $80
    nop                                           ; $67e1: $00
    ld bc, $45c4                                  ; $67e2: $01 $c4 $45
    sbc h                                         ; $67e5: $9c
    nop                                           ; $67e6: $00
    ld bc, $67ed                                  ; $67e7: $01 $ed $67
    add b                                         ; $67ea: $80
    ld bc, $1000                                  ; $67eb: $01 $00 $10
    nop                                           ; $67ee: $00
    sub b                                         ; $67ef: $90
    ld h, b                                       ; $67f0: $60
    nop                                           ; $67f1: $00
    ld a, b                                       ; $67f2: $78
    ld h, b                                       ; $67f3: $60
    ld a, a                                       ; $67f4: $7f
    ld e, b                                       ; $67f5: $58
    ld a, a                                       ; $67f6: $7f
    ld b, a                                       ; $67f7: $47
    ld h, a                                       ; $67f8: $67
    ld b, b                                       ; $67f9: $40
    ld h, b                                       ; $67fa: $60
    ld b, b                                       ; $67fb: $40
    ld h, b                                       ; $67fc: $60
    ld b, b                                       ; $67fd: $40
    ld h, b                                       ; $67fe: $60
    ld b, b                                       ; $67ff: $40
    ld b, $00                                     ; $6800: $06 $00
    add a                                         ; $6802: $87
    ldh [rP1], a                                  ; $6803: $e0 $00
    rst RST_38                                    ; $6805: $ff
    ldh [rIE], a                                  ; $6806: $e0 $ff
    rra                                           ; $6808: $1f
    rra                                           ; $6809: $1f
    stop                                          ; $680a: $10 $00
    add e                                         ; $680c: $83
    ccf                                           ; $680d: $3f
    nop                                           ; $680e: $00
    jr nz, jr_006_681b                            ; $680f: $20 $0a

    nop                                           ; $6811: $00
    add d                                         ; $6812: $82
    rst RST_38                                    ; $6813: $ff
    nop                                           ; $6814: $00
    inc bc                                        ; $6815: $03
    rst RST_38                                    ; $6816: $ff
    rlca                                          ; $6817: $07
    nop                                           ; $6818: $00
    add a                                         ; $6819: $87
    rlca                                          ; $681a: $07

jr_006_681b:
    nop                                           ; $681b: $00
    rst RST_38                                    ; $681c: $ff
    rlca                                          ; $681d: $07
    rst RST_38                                    ; $681e: $ff
    ld hl, sp-$08                                 ; $681f: $f8 $f8
    dec b                                         ; $6821: $05
    nop                                           ; $6822: $00
    add a                                         ; $6823: $87
    rra                                           ; $6824: $1f
    nop                                           ; $6825: $00
    rst RST_38                                    ; $6826: $ff
    rra                                           ; $6827: $1f
    rst RST_38                                    ; $6828: $ff
    ldh [$ffe0], a                                ; $6829: $e0 $e0
    rlca                                          ; $682b: $07
    nop                                           ; $682c: $00
    add d                                         ; $682d: $82
    rst RST_38                                    ; $682e: $ff
    nop                                           ; $682f: $00
    inc bc                                        ; $6830: $03
    rst RST_38                                    ; $6831: $ff
    dec c                                         ; $6832: $0d
    nop                                           ; $6833: $00
    add a                                         ; $6834: $87
    ld hl, sp+$00                                 ; $6835: $f8 $00
    rst RST_38                                    ; $6837: $ff
    ld hl, sp-$01                                 ; $6838: $f8 $ff
    rlca                                          ; $683a: $07
    rlca                                          ; $683b: $07
    dec c                                         ; $683c: $0d
    nop                                           ; $683d: $00
    add a                                         ; $683e: $87
    ldh [rP1], a                                  ; $683f: $e0 $00
    rst RST_38                                    ; $6841: $ff
    ldh [rIE], a                                  ; $6842: $e0 $ff
    rra                                           ; $6844: $1f
    rra                                           ; $6845: $1f
    dec b                                         ; $6846: $05
    nop                                           ; $6847: $00
    add c                                         ; $6848: $81
    ld b, h                                       ; $6849: $44
    inc bc                                        ; $684a: $03
    nop                                           ; $684b: $00
    add c                                         ; $684c: $81
    db $10                                        ; $684d: $10
    inc bc                                        ; $684e: $03
    nop                                           ; $684f: $00
    add c                                         ; $6850: $81
    ld b, c                                       ; $6851: $41
    inc bc                                        ; $6852: $03
    nop                                           ; $6853: $00
    jp nz, RST_08                                 ; $6854: $c2 $08 $00

    ld b, $00                                     ; $6857: $06 $00
    ld e, $06                                     ; $6859: $1e $06
    cp $1a                                        ; $685b: $fe $1a
    cp $e2                                        ; $685d: $fe $e2
    and $02                                       ; $685f: $e6 $02
    ld b, $02                                     ; $6861: $06 $02
    ld b, $02                                     ; $6863: $06 $02
    ld b, $02                                     ; $6865: $06 $02
    ld h, b                                       ; $6867: $60
    ld b, b                                       ; $6868: $40
    ld h, b                                       ; $6869: $60
    ld b, b                                       ; $686a: $40
    ld h, b                                       ; $686b: $60
    ld b, b                                       ; $686c: $40
    ld h, b                                       ; $686d: $60
    ld b, b                                       ; $686e: $40
    ld h, b                                       ; $686f: $60
    ld b, b                                       ; $6870: $40
    ld h, b                                       ; $6871: $60
    ld b, b                                       ; $6872: $40
    ld h, b                                       ; $6873: $60
    ld b, b                                       ; $6874: $40
    ld h, b                                       ; $6875: $60
    ld b, b                                       ; $6876: $40
    ld b, $02                                     ; $6877: $06 $02
    ld b, $02                                     ; $6879: $06 $02
    ld b, $02                                     ; $687b: $06 $02
    ld b, $02                                     ; $687d: $06 $02
    ld b, $02                                     ; $687f: $06 $02

jr_006_6881:
    ld b, $02                                     ; $6881: $06 $02
    ld b, $02                                     ; $6883: $06 $02
    ld b, $02                                     ; $6885: $06 $02
    ld h, b                                       ; $6887: $60
    ld b, b                                       ; $6888: $40
    ld h, b                                       ; $6889: $60
    ld b, b                                       ; $688a: $40
    ld h, b                                       ; $688b: $60
    ld b, b                                       ; $688c: $40
    ld h, b                                       ; $688d: $60
    ld b, b                                       ; $688e: $40
    ld h, b                                       ; $688f: $60
    ld b, b                                       ; $6890: $40
    ld h, c                                       ; $6891: $61
    ld b, c                                       ; $6892: $41
    ld h, [hl]                                    ; $6893: $66
    ld b, a                                       ; $6894: $47
    ld l, b                                       ; $6895: $68
    ld c, a                                       ; $6896: $4f
    ld a, [bc]                                    ; $6897: $0a
    nop                                           ; $6898: $00
    or e                                          ; $6899: $b3
    ldh a, [$fff0]                                ; $689a: $f0 $f0
    jr nz, @-$1e                                  ; $689c: $20 $e0

    jr nz, @-$1e                                  ; $689e: $20 $e0

    ld [hl], b                                    ; $68a0: $70
    ld e, a                                       ; $68a1: $5f
    ld h, b                                       ; $68a2: $60
    ccf                                           ; $68a3: $3f
    jr nz, jr_006_68e5                            ; $68a4: $20 $3f

    db $10                                        ; $68a6: $10
    rra                                           ; $68a7: $1f
    ld [$040f], sp                                ; $68a8: $08 $0f $04
    rlca                                          ; $68ab: $07
    ld [bc], a                                    ; $68ac: $02
    inc bc                                        ; $68ad: $03
    ld bc, $2001                                  ; $68ae: $01 $01 $20
    ldh [$ff2f], a                                ; $68b1: $e0 $2f
    ldh [$ff3f], a                                ; $68b3: $e0 $3f
    ldh [$ff1f], a                                ; $68b5: $e0 $1f
    ldh a, [$ff1f]                                ; $68b7: $f0 $1f
    ldh a, [$ff1f]                                ; $68b9: $f0 $1f
    ldh a, [$ff1f]                                ; $68bb: $f0 $1f
    ldh a, [rIF]                                  ; $68bd: $f0 $0f
    ld hl, sp-$71                                 ; $68bf: $f8 $8f
    ld hl, sp+$4f                                 ; $68c1: $f8 $4f
    ld a, b                                       ; $68c3: $78
    daa                                           ; $68c4: $27
    inc a                                         ; $68c5: $3c
    rla                                           ; $68c6: $17
    inc e                                         ; $68c7: $1c
    rrca                                          ; $68c8: $0f
    ld c, $07                                     ; $68c9: $0e $07
    inc bc                                        ; $68cb: $03
    ld bc, $0023                                  ; $68cc: $01 $23 $00
    adc c                                         ; $68cf: $89
    ld b, $02                                     ; $68d0: $06 $02
    ld e, $06                                     ; $68d2: $1e $06
    cp $18                                        ; $68d4: $fe $18
    ld hl, sp-$20                                 ; $68d6: $f8 $e0
    ldh [rNR11], a                                ; $68d8: $e0 $11
    nop                                           ; $68da: $00
    add b                                         ; $68db: $80
    add e                                         ; $68dc: $83
    inc b                                         ; $68dd: $04
    ld bc, $0202                                  ; $68de: $01 $02 $02
    inc bc                                        ; $68e1: $03
    add c                                         ; $68e2: $81
    ld b, $03                                     ; $68e3: $06 $03

jr_006_68e5:
    inc b                                         ; $68e5: $04
    adc l                                         ; $68e6: $8d
    ld [$0908], sp                                ; $68e7: $08 $08 $09
    ld [$8889], sp                                ; $68ea: $08 $89 $88
    ld d, c                                       ; $68ed: $51
    ld d, b                                       ; $68ee: $50
    ld d, e                                       ; $68ef: $53
    ld d, b                                       ; $68f0: $50
    ret nz                                        ; $68f1: $c0

    ret nz                                        ; $68f2: $c0

    ld h, b                                       ; $68f3: $60
    inc bc                                        ; $68f4: $03
    jr nz, jr_006_6881                            ; $68f5: $20 $8a

    ret nc                                        ; $68f7: $d0

    db $10                                        ; $68f8: $10
    ldh a, [rNR10]                                ; $68f9: $f0 $10
    ldh a, [rNR10]                                ; $68fb: $f0 $10
    adc b                                         ; $68fd: $88
    ld a, b                                       ; $68fe: $78
    adc b                                         ; $68ff: $88
    ld a, b                                       ; $6900: $78
    ld b, $04                                     ; $6901: $06 $04
    or a                                          ; $6903: $b7
    ld [$0908], sp                                ; $6904: $08 $08 $09
    ld [$0809], sp                                ; $6907: $08 $09 $08
    ld de, $1310                                  ; $690a: $11 $10 $13
    db $10                                        ; $690d: $10
    inc sp                                        ; $690e: $33
    jr nc, jr_006_6934                            ; $690f: $30 $23

    jr nz, @-$1b                                  ; $6911: $20 $e3

    jr nz, @-$07                                  ; $6913: $20 $f7

    db $10                                        ; $6915: $10
    rst RST_30                                    ; $6916: $f7
    db $10                                        ; $6917: $10
    sub $31                                       ; $6918: $d6 $31
    adc [hl]                                      ; $691a: $8e
    ld a, c                                       ; $691b: $79
    adc [hl]                                      ; $691c: $8e
    ld a, c                                       ; $691d: $79
    adc b                                         ; $691e: $88
    ld a, b                                       ; $691f: $78
    inc b                                         ; $6920: $04
    db $fc                                        ; $6921: $fc
    inc b                                         ; $6922: $04
    db $fc                                        ; $6923: $fc
    inc b                                         ; $6924: $04
    db $fc                                        ; $6925: $fc
    ld [bc], a                                    ; $6926: $02
    cp $02                                        ; $6927: $fe $02
    cp $01                                        ; $6929: $fe $01
    rst RST_38                                    ; $692b: $ff
    pop hl                                        ; $692c: $e1
    rst RST_38                                    ; $692d: $ff
    inc hl                                        ; $692e: $23
    jr nz, jr_006_6958                            ; $692f: $20 $27

    jr nz, @+$49                                  ; $6931: $20 $47

    ld b, b                                       ; $6933: $40

jr_006_6934:
    ld c, [hl]                                    ; $6934: $4e
    ld b, c                                       ; $6935: $41
    adc [hl]                                      ; $6936: $8e
    add c                                         ; $6937: $81
    adc a                                         ; $6938: $8f
    add b                                         ; $6939: $80
    rlca                                          ; $693a: $07
    inc bc                                        ; $693b: $03
    nop                                           ; $693c: $00
    adc l                                         ; $693d: $8d
    add a                                         ; $693e: $87
    ld a, l                                       ; $693f: $7d
    ld b, $fe                                     ; $6940: $06 $fe
    inc b                                         ; $6942: $04
    db $fc                                        ; $6943: $fc
    ld [$31f8], sp                                ; $6944: $08 $f8 $31
    ldh a, [$ffc3]                                ; $6947: $f0 $c3
    ret nz                                        ; $6949: $c0

    inc bc                                        ; $694a: $03
    inc bc                                        ; $694b: $03
    nop                                           ; $694c: $00
    and b                                         ; $694d: $a0
    db $10                                        ; $694e: $10
    rra                                           ; $694f: $1f
    jr c, jr_006_6961                             ; $6950: $38 $0f

    ld a, h                                       ; $6952: $7c
    rlca                                          ; $6953: $07
    di                                            ; $6954: $f3
    rrca                                          ; $6955: $0f

jr_006_6956:
    ldh [$ff1f], a                                ; $6956: $e0 $1f

jr_006_6958:
    ret nz                                        ; $6958: $c0

    ccf                                           ; $6959: $3f
    ldh [$ff1f], a                                ; $695a: $e0 $1f
    rst RST_38                                    ; $695c: $ff
    nop                                           ; $695d: $00
    add b                                         ; $695e: $80
    add b                                         ; $695f: $80
    ret nz                                        ; $6960: $c0

jr_006_6961:
    add b                                         ; $6961: $80
    ld h, b                                       ; $6962: $60
    ret nz                                        ; $6963: $c0

    jr nc, @-$1e                                  ; $6964: $30 $e0

    ret c                                         ; $6966: $d8

    ldh a, [$ff08]                                ; $6967: $f0 $08
    ldh a, [rNR23]                                ; $6969: $f0 $18
    ldh [$fff0], a                                ; $696b: $e0 $f0
    nop                                           ; $696d: $00
    add b                                         ; $696e: $80
    add e                                         ; $696f: $83
    dec b                                         ; $6970: $05
    ld bc, $0202                                  ; $6971: $01 $02 $02
    inc b                                         ; $6974: $04
    inc b                                         ; $6975: $04
    adc b                                         ; $6976: $88
    add hl, bc                                    ; $6977: $09
    ld [$0809], sp                                ; $6978: $08 $09 $08
    inc de                                        ; $697b: $13

jr_006_697c:
    db $10                                        ; $697c: $10
    add b                                         ; $697d: $80
    add b                                         ; $697e: $80
    inc b                                         ; $697f: $04
    ld b, b                                       ; $6980: $40
    sub c                                         ; $6981: $91
    ldh [rNR41], a                                ; $6982: $e0 $20
    ldh [rNR41], a                                ; $6984: $e0 $20
    ret nc                                        ; $6986: $d0

    jr nc, @-$6e                                  ; $6987: $30 $90

    ld [hl], b                                    ; $6989: $70
    adc b                                         ; $698a: $88
    ld a, b                                       ; $698b: $78
    inc hl                                        ; $698c: $23
    jr nz, jr_006_6956                            ; $698d: $20 $c7

    ret nz                                        ; $698f: $c0

    rlca                                          ; $6990: $07
    nop                                           ; $6991: $00
    inc bc                                        ; $6992: $03
    add hl, bc                                    ; $6993: $09
    nop                                           ; $6994: $00
    add a                                         ; $6995: $87
    inc b                                         ; $6996: $04
    db $fc                                        ; $6997: $fc
    inc bc                                        ; $6998: $03
    rst RST_38                                    ; $6999: $ff
    add e                                         ; $699a: $83
    ld a, h                                       ; $699b: $7c
    cp $09                                        ; $699c: $fe $09
    nop                                           ; $699e: $00
    add d                                         ; $699f: $82
    rrca                                          ; $69a0: $0f
    rrca                                          ; $69a1: $0f
    inc b                                         ; $69a2: $04
    db $10                                        ; $69a3: $10
    sbc b                                         ; $69a4: $98
    inc de                                        ; $69a5: $13
    db $10                                        ; $69a6: $10
    inc de                                        ; $69a7: $13
    db $10                                        ; $69a8: $10
    inc hl                                        ; $69a9: $23
    jr nz, jr_006_69ac                            ; $69aa: $20 $00

jr_006_69ac:
    rst RST_38                                    ; $69ac: $ff
    nop                                           ; $69ad: $00
    nop                                           ; $69ae: $00
    ldh [$ffe0], a                                ; $69af: $e0 $e0
    db $10                                        ; $69b1: $10
    db $10                                        ; $69b2: $10
    ldh a, [$fff0]                                ; $69b3: $f0 $f0
    sub b                                         ; $69b5: $90
    or b                                          ; $69b6: $b0
    sub b                                         ; $69b7: $90
    or b                                          ; $69b8: $b0
    db $fc                                        ; $69b9: $fc
    ld hl, sp+$00                                 ; $69ba: $f8 $00

jr_006_69bc:
    rst RST_38                                    ; $69bc: $ff
    rrca                                          ; $69bd: $0f
    nop                                           ; $69be: $00
    sub e                                         ; $69bf: $93
    db $fc                                        ; $69c0: $fc
    nop                                           ; $69c1: $00
    inc b                                         ; $69c2: $04
    inc bc                                        ; $69c3: $03
    inc hl                                        ; $69c4: $23
    rrca                                          ; $69c5: $0f
    cpl                                           ; $69c6: $2f
    inc bc                                        ; $69c7: $03
    inc hl                                        ; $69c8: $23
    rrca                                          ; $69c9: $0f
    cpl                                           ; $69ca: $2f
    inc bc                                        ; $69cb: $03
    inc hl                                        ; $69cc: $23
    inc bc                                        ; $69cd: $03
    inc hl                                        ; $69ce: $23
    nop                                           ; $69cf: $00
    jr nz, jr_006_69d2                            ; $69d0: $20 $00

jr_006_69d2:
    ccf                                           ; $69d2: $3f
    add b                                         ; $69d3: $80
    add e                                         ; $69d4: $83
    ld b, $2b                                     ; $69d5: $06 $2b
    db $eb                                        ; $69d7: $eb
    inc bc                                        ; $69d8: $03
    db $e3                                        ; $69d9: $e3
    inc bc                                        ; $69da: $03
    ld b, $03                                     ; $69db: $06 $03
    nop                                           ; $69dd: $00
    add c                                         ; $69de: $81
    rst RST_38                                    ; $69df: $ff
    ld b, $63                                     ; $69e0: $06 $63
    add [hl]                                      ; $69e2: $86
    ld l, e                                       ; $69e3: $6b
    ld l, e                                       ; $69e4: $6b
    ld a, e                                       ; $69e5: $7b
    ld a, e                                       ; $69e6: $7b
    ld [hl], e                                    ; $69e7: $73
    ld [hl], e                                    ; $69e8: $73
    inc bc                                        ; $69e9: $03
    nop                                           ; $69ea: $00
    add e                                         ; $69eb: $83
    rst RST_38                                    ; $69ec: $ff
    rra                                           ; $69ed: $1f
    rra                                           ; $69ee: $1f
    inc b                                         ; $69ef: $04
    jr nz, jr_006_697c                            ; $69f0: $20 $8a

    daa                                           ; $69f2: $27
    jr nz, jr_006_6a44                            ; $69f3: $20 $4f

    ld b, b                                       ; $69f5: $40
    ld c, a                                       ; $69f6: $4f
    ld b, b                                       ; $69f7: $40
    ld c, a                                       ; $69f8: $4f
    ld b, b                                       ; $69f9: $40
    sbc a                                         ; $69fa: $9f
    add b                                         ; $69fb: $80
    add b                                         ; $69fc: $80
    add e                                         ; $69fd: $83
    inc b                                         ; $69fe: $04
    ldh a, [$ff08]                                ; $69ff: $f0 $08
    ld [$aaf8], sp                                ; $6a01: $08 $f8 $aa
    sbc h                                         ; $6a04: $9c
    or h                                          ; $6a05: $b4
    db $fc                                        ; $6a06: $fc
    db $f4                                        ; $6a07: $f4
    sbc h                                         ; $6a08: $9c
    or h                                          ; $6a09: $b4
    sbc [hl]                                      ; $6a0a: $9e
    or d                                          ; $6a0b: $b2
    sbc a                                         ; $6a0c: $9f
    add b                                         ; $6a0d: $80
    sbc a                                         ; $6a0e: $9f
    add b                                         ; $6a0f: $80
    ld a, a                                       ; $6a10: $7f
    ld b, b                                       ; $6a11: $40
    ccf                                           ; $6a12: $3f
    ccf                                           ; $6a13: $3f
    ld h, b                                       ; $6a14: $60
    ld [hl-], a                                   ; $6a15: $32
    ld h, b                                       ; $6a16: $60
    ccf                                           ; $6a17: $3f
    ld a, a                                       ; $6a18: $7f
    rra                                           ; $6a19: $1f
    ccf                                           ; $6a1a: $3f
    nop                                           ; $6a1b: $00
    or $fa                                        ; $6a1c: $f6 $fa
    add d                                         ; $6a1e: $82
    ld a, [hl]                                    ; $6a1f: $7e
    db $e4                                        ; $6a20: $e4
    inc e                                         ; $6a21: $1c
    cp $f8                                        ; $6a22: $fe $f8
    dec bc                                        ; $6a24: $0b
    ld a, h                                       ; $6a25: $7c
    dec bc                                        ; $6a26: $0b
    db $fc                                        ; $6a27: $fc
    rst RST_30                                    ; $6a28: $f7
    ld hl, sp-$02                                 ; $6a29: $f8 $fe
    nop                                           ; $6a2b: $00
    rrca                                          ; $6a2c: $0f
    rrca                                          ; $6a2d: $0f
    inc b                                         ; $6a2e: $04
    db $10                                        ; $6a2f: $10
    adc d                                         ; $6a30: $8a
    inc de                                        ; $6a31: $13
    db $10                                        ; $6a32: $10
    inc de                                        ; $6a33: $13
    db $10                                        ; $6a34: $10
    inc hl                                        ; $6a35: $23
    jr nz, jr_006_6a5b                            ; $6a36: $20 $23

    jr nz, jr_006_6a61                            ; $6a38: $20 $27

    jr nz, jr_006_69bc                            ; $6a3a: $20 $80

    add e                                         ; $6a3c: $83
    inc b                                         ; $6a3d: $04
    ldh [rNR10], a                                ; $6a3e: $e0 $10
    db $10                                        ; $6a40: $10
    ldh a, [$ffd8]                                ; $6a41: $f0 $d8
    sub b                                         ; $6a43: $90

jr_006_6a44:
    or b                                          ; $6a44: $b0
    sbc b                                         ; $6a45: $98
    cp b                                          ; $6a46: $b8
    ld hl, sp-$08                                 ; $6a47: $f8 $f8
    sbc b                                         ; $6a49: $98
    cp b                                          ; $6a4a: $b8
    daa                                           ; $6a4b: $27
    jr nz, jr_006_6a95                            ; $6a4c: $20 $47

    ld b, b                                       ; $6a4e: $40
    ld b, a                                       ; $6a4f: $47
    ld b, b                                       ; $6a50: $40
    ld c, a                                       ; $6a51: $4f
    ld b, b                                       ; $6a52: $40
    ld c, a                                       ; $6a53: $4f
    ld b, b                                       ; $6a54: $40
    adc a                                         ; $6a55: $8f
    add b                                         ; $6a56: $80
    adc a                                         ; $6a57: $8f
    add b                                         ; $6a58: $80
    sbc a                                         ; $6a59: $9f
    add b                                         ; $6a5a: $80

jr_006_6a5b:
    sbc b                                         ; $6a5b: $98
    cp b                                          ; $6a5c: $b8
    sub h                                         ; $6a5d: $94
    cp h                                          ; $6a5e: $bc
    sub h                                         ; $6a5f: $94
    cp h                                          ; $6a60: $bc

jr_006_6a61:
    sub h                                         ; $6a61: $94
    cp h                                          ; $6a62: $bc
    sub h                                         ; $6a63: $94
    cp h                                          ; $6a64: $bc
    sub d                                         ; $6a65: $92
    cp [hl]                                       ; $6a66: $be
    ldh a, [c]                                    ; $6a67: $f2
    cp $82                                        ; $6a68: $fe $82
    ld a, [hl]                                    ; $6a6a: $7e
    rst RST_38                                    ; $6a6b: $ff
    rst RST_38                                    ; $6a6c: $ff
    add c                                         ; $6a6d: $81
    add b                                         ; $6a6e: $80
    cp [hl]                                       ; $6a6f: $be
    add c                                         ; $6a70: $81
    ret nz                                        ; $6a71: $c0

    cp a                                          ; $6a72: $bf
    rst RST_38                                    ; $6a73: $ff
    rst RST_38                                    ; $6a74: $ff
    sbc b                                         ; $6a75: $98
    adc b                                         ; $6a76: $88
    xor e                                         ; $6a77: $ab
    sbc b                                         ; $6a78: $98
    call z, $ffbb                                 ; $6a79: $cc $bb $ff
    rst RST_38                                    ; $6a7c: $ff
    add c                                         ; $6a7d: $81
    add b                                         ; $6a7e: $80
    cp [hl]                                       ; $6a7f: $be
    add c                                         ; $6a80: $81
    ret nz                                        ; $6a81: $c0

    cp a                                          ; $6a82: $bf
    rst RST_38                                    ; $6a83: $ff
    rst RST_38                                    ; $6a84: $ff
    jr jr_006_6a8f                                ; $6a85: $18 $08

    db $eb                                        ; $6a87: $eb
    jr @+$0e                                      ; $6a88: $18 $0c

    ei                                            ; $6a8a: $fb
    rst RST_38                                    ; $6a8b: $ff
    rst RST_38                                    ; $6a8c: $ff
    add e                                         ; $6a8d: $83
    add c                                         ; $6a8e: $81

jr_006_6a8f:
    cp l                                          ; $6a8f: $bd
    add e                                         ; $6a90: $83
    pop bc                                        ; $6a91: $c1
    cp a                                          ; $6a92: $bf
    rst RST_38                                    ; $6a93: $ff
    rst RST_38                                    ; $6a94: $ff

jr_006_6a95:
    ld e, $08                                     ; $6a95: $1e $08
    jp hl                                         ; $6a97: $e9


    ld de, $e717                                  ; $6a98: $11 $17 $e7
    ld a, [bc]                                    ; $6a9b: $0a
    nop                                           ; $6a9c: $00
    adc l                                         ; $6a9d: $8d
    ld [hl], b                                    ; $6a9e: $70
    ld [hl], b                                    ; $6a9f: $70
    ld hl, sp-$78                                 ; $6aa0: $f8 $88
    cp h                                          ; $6aa2: $bc
    ld b, h                                       ; $6aa3: $44
    ld d, b                                       ; $6aa4: $50
    ld d, h                                       ; $6aa5: $54
    ld d, b                                       ; $6aa6: $50
    ld d, h                                       ; $6aa7: $54
    nop                                           ; $6aa8: $00
    inc b                                         ; $6aa9: $04
    ldh [$ff80], a                                ; $6aaa: $e0 $80
    add c                                         ; $6aac: $81
    inc b                                         ; $6aad: $04
    db $e4                                        ; $6aae: $e4
    inc b                                         ; $6aaf: $04
    inc b                                         ; $6ab0: $04
    inc b                                         ; $6ab1: $04
    adc c                                         ; $6ab2: $89
    db $fc                                        ; $6ab3: $fc
    rst RST_38                                    ; $6ab4: $ff
    rst RST_38                                    ; $6ab5: $ff
    add c                                         ; $6ab6: $81
    add b                                         ; $6ab7: $80
    cp [hl]                                       ; $6ab8: $be
    add c                                         ; $6ab9: $81
    ret nz                                        ; $6aba: $c0

    cp a                                          ; $6abb: $bf
    ld b, $ff                                     ; $6abc: $06 $ff
    xor h                                         ; $6abe: $ac

jr_006_6abf:
    ldh [c], a                                    ; $6abf: $e2
    db $fc                                        ; $6ac0: $fc
    rst RST_28                                    ; $6ac1: $ef
    ret z                                         ; $6ac2: $c8

    ret c                                         ; $6ac3: $d8

    sub a                                         ; $6ac4: $97
    ret nc                                        ; $6ac5: $d0

    sbc a                                         ; $6ac6: $9f
    ret nc                                        ; $6ac7: $d0

    sbc a                                         ; $6ac8: $9f
    add sp, -$31                                  ; $6ac9: $e8 $cf
    rst RST_28                                    ; $6acb: $ef
    adc a                                         ; $6acc: $8f
    sbc [hl]                                      ; $6acd: $9e
    ld e, $63                                     ; $6ace: $1e $63
    ld h, c                                       ; $6ad0: $61
    inc a                                         ; $6ad1: $3c
    call nz, $e41c                                ; $6ad2: $c4 $1c $e4
    jr jr_006_6abf                                ; $6ad5: $18 $e8

    ld a, b                                       ; $6ad7: $78
    ld hl, sp-$68                                 ; $6ad8: $f8 $98
    add sp, -$64                                  ; $6ada: $e8 $9c
    ld l, h                                       ; $6adc: $6c
    sbc $2a                                       ; $6add: $de $2a
    ld e, d                                       ; $6adf: $5a
    ld l, $ff                                     ; $6ae0: $2e $ff
    rst RST_38                                    ; $6ae2: $ff
    add c                                         ; $6ae3: $81
    add b                                         ; $6ae4: $80
    cp [hl]                                       ; $6ae5: $be
    add c                                         ; $6ae6: $81
    ret nz                                        ; $6ae7: $c0

    cp a                                          ; $6ae8: $bf
    rst RST_38                                    ; $6ae9: $ff
    rst RST_38                                    ; $6aea: $ff
    ld b, $00                                     ; $6aeb: $06 $00
    sub d                                         ; $6aed: $92
    db $fd                                        ; $6aee: $fd
    pop hl                                        ; $6aef: $e1
    jp c, $f4e2                                   ; $6af0: $da $e2 $f4

    call nz, $c8a8                                ; $6af3: $c4 $a8 $c8
    ret z                                         ; $6af6: $c8

    adc b                                         ; $6af7: $88
    jr jr_006_6b0a                                ; $6af8: $18 $10

    jr @+$12                                      ; $6afa: $18 $10

    jr jr_006_6b0e                                ; $6afc: $18 $10

    add c                                         ; $6afe: $81
    add c                                         ; $6aff: $81
    inc bc                                        ; $6b00: $03
    ld bc, $0003                                  ; $6b01: $01 $03 $00
    xor b                                         ; $6b04: $a8
    ld a, a                                       ; $6b05: $7f
    ld a, a                                       ; $6b06: $7f
    rst RST_38                                    ; $6b07: $ff
    rst RST_38                                    ; $6b08: $ff
    db $e3                                        ; $6b09: $e3

jr_006_6b0a:
    db $e3                                        ; $6b0a: $e3
    ldh [$ffe0], a                                ; $6b0b: $e0 $e0
    or l                                          ; $6b0d: $b5

jr_006_6b0e:
    sub a                                         ; $6b0e: $97
    ld h, l                                       ; $6b0f: $65
    ld h, a                                       ; $6b10: $67
    adc c                                         ; $6b11: $89
    adc a                                         ; $6b12: $8f
    pop af                                        ; $6b13: $f1
    ld a, a                                       ; $6b14: $7f
    ld [hl], c                                    ; $6b15: $71
    rrca                                          ; $6b16: $0f
    cp c                                          ; $6b17: $b9
    add a                                         ; $6b18: $87
    cp c                                          ; $6b19: $b9
    add a                                         ; $6b1a: $87
    dec a                                         ; $6b1b: $3d
    inc bc                                        ; $6b1c: $03
    jr jr_006_6b2f                                ; $6b1d: $18 $10

    inc e                                         ; $6b1f: $1c
    db $10                                        ; $6b20: $10
    inc d                                         ; $6b21: $14
    jr jr_006_6b33                                ; $6b22: $18 $0f

    ld [$0c0b], sp                                ; $6b24: $08 $0b $0c
    inc b                                         ; $6b27: $04
    rlca                                          ; $6b28: $07
    inc bc                                        ; $6b29: $03
    inc bc                                        ; $6b2a: $03
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00
    inc b                                         ; $6b2d: $04
    rst RST_28                                    ; $6b2e: $ef

jr_006_6b2f:
    add d                                         ; $6b2f: $82
    db $e3                                        ; $6b30: $e3
    db $e3                                        ; $6b31: $e3
    inc bc                                        ; $6b32: $03

jr_006_6b33:
    rst RST_38                                    ; $6b33: $ff
    sub l                                         ; $6b34: $95
    ld a, a                                       ; $6b35: $7f
    rst RST_38                                    ; $6b36: $ff
    nop                                           ; $6b37: $00
    add b                                         ; $6b38: $80
    rst RST_38                                    ; $6b39: $ff
    ld a, a                                       ; $6b3a: $7f
    ld a, a                                       ; $6b3b: $7f
    db $fd                                        ; $6b3c: $fd
    jp $c3fd                                      ; $6b3d: $c3 $fd $c3


    ld sp, hl                                     ; $6b40: $f9
    add a                                         ; $6b41: $87
    ld a, [$f286]                                 ; $6b42: $fa $86 $f2
    adc [hl]                                      ; $6b45: $8e
    call nz, Call_000_183c                        ; $6b46: $c4 $3c $18
    ld hl, sp-$80                                 ; $6b49: $f8 $80
    add e                                         ; $6b4b: $83
    rlca                                          ; $6b4c: $07
    ldh [$ff03], a                                ; $6b4d: $e0 $03
    inc b                                         ; $6b4f: $04
    inc b                                         ; $6b50: $04
    inc b                                         ; $6b51: $04
    inc b                                         ; $6b52: $04
    inc bc                                        ; $6b53: $03
    adc b                                         ; $6b54: $88
    inc bc                                        ; $6b55: $03
    ld [bc], a                                    ; $6b56: $02
    inc bc                                        ; $6b57: $03
    ld [bc], a                                    ; $6b58: $02
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    add b                                         ; $6b5b: $80
    add b                                         ; $6b5c: $80
    inc bc                                        ; $6b5d: $03
    ld a, a                                       ; $6b5e: $7f
    adc c                                         ; $6b5f: $89
    ld b, c                                       ; $6b60: $41
    rst RST_38                                    ; $6b61: $ff
    add b                                         ; $6b62: $80
    rst RST_38                                    ; $6b63: $ff
    ld a, $d5                                     ; $6b64: $3e $d5
    ld d, l                                       ; $6b66: $55
    push de                                       ; $6b67: $d5
    ld d, l                                       ; $6b68: $55
    add b                                         ; $6b69: $80
    add e                                         ; $6b6a: $83
    dec b                                         ; $6b6b: $05
    ld h, b                                       ; $6b6c: $60
    sub b                                         ; $6b6d: $90
    db $10                                        ; $6b6e: $10
    db $10                                        ; $6b6f: $10
    sub b                                         ; $6b70: $90
    add [hl]                                      ; $6b71: $86
    ldh [$ff60], a                                ; $6b72: $e0 $60
    ldh [rNR41], a                                ; $6b74: $e0 $20
    ldh [rNR41], a                                ; $6b76: $e0 $20
    stop                                          ; $6b78: $10 $00
    add d                                         ; $6b7a: $82
    inc bc                                        ; $6b7b: $03
    ld [bc], a                                    ; $6b7c: $02
    add b                                         ; $6b7d: $80
    add e                                         ; $6b7e: $83
    inc b                                         ; $6b7f: $04
    inc bc                                        ; $6b80: $03
    inc b                                         ; $6b81: $04

jr_006_6b82:
    ld a, a                                       ; $6b82: $7f
    or b                                          ; $6b83: $b0
    sbc [hl]                                      ; $6b84: $9e
    and a                                         ; $6b85: $a7
    and b                                         ; $6b86: $a0
    db $ec                                        ; $6b87: $ec
    and e                                         ; $6b88: $a3
    add sp, -$59                                  ; $6b89: $e8 $a7
    db $e3                                        ; $6b8b: $e3
    ld [hl+], a                                   ; $6b8c: $22
    db $dd                                        ; $6b8d: $dd
    ld e, l                                       ; $6b8e: $5d
    and d                                         ; $6b8f: $a2
    and d                                         ; $6b90: $a2
    rst RST_18                                    ; $6b91: $df
    rst RST_18                                    ; $6b92: $df
    ld [hl], b                                    ; $6b93: $70
    ld [hl], b                                    ; $6b94: $70
    and a                                         ; $6b95: $a7
    jr nz, jr_006_6c00                            ; $6b96: $20 $68

    and a                                         ; $6b98: $a7
    jr z, jr_006_6b82                             ; $6b99: $28 $e7

    ldh [rNR41], a                                ; $6b9b: $e0 $20
    ret nz                                        ; $6b9d: $c0

    nop                                           ; $6b9e: $00
    or b                                          ; $6b9f: $b0
    jr nc, jr_006_6bf0                            ; $6ba0: $30 $4e

    ld c, [hl]                                    ; $6ba2: $4e
    inc bc                                        ; $6ba3: $03
    ld b, a                                       ; $6ba4: $47
    add l                                         ; $6ba5: $85
    ld b, h                                       ; $6ba6: $44
    ld c, a                                       ; $6ba7: $4f
    ld c, b                                       ; $6ba8: $48
    ld a, a                                       ; $6ba9: $7f
    ld [hl], e                                    ; $6baa: $73
    inc b                                         ; $6bab: $04
    nop                                           ; $6bac: $00
    add h                                         ; $6bad: $84
    ld b, $06                                     ; $6bae: $06 $06
    add hl, bc                                    ; $6bb0: $09
    add hl, bc                                    ; $6bb1: $09
    inc bc                                        ; $6bb2: $03
    pop af                                        ; $6bb3: $f1
    cp l                                          ; $6bb4: $bd
    ld de, $09f9                                  ; $6bb5: $11 $f9 $09
    cp $e6                                        ; $6bb8: $fe $e6
    add sp, -$59                                  ; $6bba: $e8 $a7
    ld hl, sp-$09                                 ; $6bbc: $f8 $f7
    ld e, a                                       ; $6bbe: $5f
    ld e, a                                       ; $6bbf: $5f
    sbc h                                         ; $6bc0: $9c
    adc h                                         ; $6bc1: $8c
    cp c                                          ; $6bc2: $b9

jr_006_6bc3:
    adc b                                         ; $6bc3: $88
    xor d                                         ; $6bc4: $aa
    sbc c                                         ; $6bc5: $99
    xor d                                         ; $6bc6: $aa
    sbc c                                         ; $6bc7: $99
    cp $dd                                        ; $6bc8: $fe $dd
    jr c, jr_006_6bc3                             ; $6bca: $38 $f7

    ld a, a                                       ; $6bcc: $7f
    rst RST_38                                    ; $6bcd: $ff
    db $e3                                        ; $6bce: $e3
    db $e3                                        ; $6bcf: $e3
    call $d3c1                                    ; $6bd0: $cd $c1 $d3
    ld c, l                                       ; $6bd3: $4d
    ld d, c                                       ; $6bd4: $51
    rst RST_08                                    ; $6bd5: $cf
    ld [hl], e                                    ; $6bd6: $73
    rst RST_28                                    ; $6bd7: $ef
    rst RST_38                                    ; $6bd8: $ff
    rst RST_38                                    ; $6bd9: $ff
    cp l                                          ; $6bda: $bd
    dec h                                         ; $6bdb: $25
    dec a                                         ; $6bdc: $3d
    and l                                         ; $6bdd: $a5
    ld a, $a2                                     ; $6bde: $3e $a2
    cp l                                          ; $6be0: $bd
    dec [hl]                                      ; $6be1: $35
    ld c, d                                       ; $6be2: $4a
    ld c, d                                       ; $6be3: $4a
    ld c, [hl]                                    ; $6be4: $4e
    ld c, [hl]                                    ; $6be5: $4e
    cp d                                          ; $6be6: $ba
    ld a, [hl-]                                   ; $6be7: $3a
    jp nz, Jump_006_5e82                          ; $6be8: $c2 $82 $5e

    ld d, d                                       ; $6beb: $52
    ld e, [hl]                                    ; $6bec: $5e
    ld d, d                                       ; $6bed: $52
    ld a, $22                                     ; $6bee: $3e $22

jr_006_6bf0:
    sbc $d6                                       ; $6bf0: $de $d6
    add b                                         ; $6bf2: $80
    add e                                         ; $6bf3: $83
    ld b, $29                                     ; $6bf4: $06 $29
    add hl, sp                                    ; $6bf6: $39
    xor [hl]                                      ; $6bf7: $ae
    and b                                         ; $6bf8: $a0
    ld a, a                                       ; $6bf9: $7f
    pop bc                                        ; $6bfa: $c1
    and b                                         ; $6bfb: $a0
    sbc [hl]                                      ; $6bfc: $9e
    add b                                         ; $6bfd: $80
    or c                                          ; $6bfe: $b1
    adc [hl]                                      ; $6bff: $8e

jr_006_6c00:
    and b                                         ; $6c00: $a0
    sbc a                                         ; $6c01: $9f
    and b                                         ; $6c02: $a0
    sbc a                                         ; $6c03: $9f
    pop af                                        ; $6c04: $f1
    rst RST_08                                    ; $6c05: $cf
    ld a, a                                       ; $6c06: $7f
    ld a, a                                       ; $6c07: $7f
    jp nc, $d5ca                                  ; $6c08: $d2 $ca $d5

    ret                                           ; $6c0b: $c9


    ldh a, [c]                                    ; $6c0c: $f2
    db $ec                                        ; $6c0d: $ec
    cp $ff                                        ; $6c0e: $fe $ff
    jp $9dc3                                      ; $6c10: $c3 $c3 $9d


    add c                                         ; $6c13: $81
    db $e3                                        ; $6c14: $e3
    rst RST_18                                    ; $6c15: $df
    rst RST_38                                    ; $6c16: $ff
    rst RST_38                                    ; $6c17: $ff
    and b                                         ; $6c18: $a0
    and b                                         ; $6c19: $a0
    ret nz                                        ; $6c1a: $c0

    ld b, b                                       ; $6c1b: $40
    inc c                                         ; $6c1c: $0c
    nop                                           ; $6c1d: $00
    rst RST_38                                    ; $6c1e: $ff
    ld [hl], e                                    ; $6c1f: $73
    ld [hl], e                                    ; $6c20: $73
    adc [hl]                                      ; $6c21: $8e
    adc [hl]                                      ; $6c22: $8e
    di                                            ; $6c23: $f3
    db $e3                                        ; $6c24: $e3
    ld e, l                                       ; $6c25: $5d
    ld [hl], c                                    ; $6c26: $71
    cpl                                           ; $6c27: $2f
    add hl, sp                                    ; $6c28: $39
    ld d, $1e                                     ; $6c29: $16 $1e
    ld d, $1e                                     ; $6c2b: $16 $1e
    dec bc                                        ; $6c2d: $0b
    dec bc                                        ; $6c2e: $0b
    ld bc, $9e01                                  ; $6c2f: $01 $01 $9e
    sbc [hl]                                      ; $6c32: $9e
    ld l, l                                       ; $6c33: $6d
    ld h, h                                       ; $6c34: $64
    ld e, e                                       ; $6c35: $5b
    add hl, bc                                    ; $6c36: $09
    inc bc                                        ; $6c37: $03
    ld bc, $0007                                  ; $6c38: $01 $07 $00
    rrca                                          ; $6c3b: $0f
    nop                                           ; $6c3c: $00
    dec a                                         ; $6c3d: $3d
    ld [hl-], a                                   ; $6c3e: $32
    jp $c4c3                                      ; $6c3f: $c3 $c3 $c4


    ld b, h                                       ; $6c42: $44
    ld hl, sp-$08                                 ; $6c43: $f8 $f8
    inc e                                         ; $6c45: $1c
    db $10                                        ; $6c46: $10
    rst RST_08                                    ; $6c47: $cf
    ld [$0fef], sp                                ; $6c48: $08 $ef $0f
    or b                                          ; $6c4b: $b0
    ld b, b                                       ; $6c4c: $40
    ld a, a                                       ; $6c4d: $7f
    sbc [hl]                                      ; $6c4e: $9e
    ld hl, sp-$10                                 ; $6c4f: $f8 $f0
    inc c                                         ; $6c51: $0c
    inc c                                         ; $6c52: $0c
    cp $02                                        ; $6c53: $fe $02
    ccf                                           ; $6c55: $3f
    ld [bc], a                                    ; $6c56: $02
    sbc a                                         ; $6c57: $9f
    add hl, bc                                    ; $6c58: $09
    rst RST_38                                    ; $6c59: $ff
    dec h                                         ; $6c5a: $25
    rst RST_38                                    ; $6c5b: $ff
    sub l                                         ; $6c5c: $95
    ld a, a                                       ; $6c5d: $7f
    ld d, l                                       ; $6c5e: $55
    dec bc                                        ; $6c5f: $0b
    dec bc                                        ; $6c60: $0b
    ld e, $1a                                     ; $6c61: $1e $1a
    ld h, $26                                     ; $6c63: $26 $26
    inc l                                         ; $6c65: $2c
    inc h                                         ; $6c66: $24
    ld c, a                                       ; $6c67: $4f
    ld c, h                                       ; $6c68: $4c
    ld d, a                                       ; $6c69: $57
    ld c, h                                       ; $6c6a: $4c
    ld e, a                                       ; $6c6b: $5f
    ld b, a                                       ; $6c6c: $47
    ld e, [hl]                                    ; $6c6d: $5e
    ld c, [hl]                                    ; $6c6e: $4e
    ld a, a                                       ; $6c6f: $7f
    ld h, d                                       ; $6c70: $62
    ld a, $03                                     ; $6c71: $3e $03
    ld a, h                                       ; $6c73: $7c
    rlca                                          ; $6c74: $07
    rst RST_38                                    ; $6c75: $ff
    rra                                           ; $6c76: $1f
    ldh a, [$ff30]                                ; $6c77: $f0 $30
    rst RST_38                                    ; $6c79: $ff
    ld a, a                                       ; $6c7a: $7f
    ret nz                                        ; $6c7b: $c0

    add b                                         ; $6c7c: $80
    ld a, a                                       ; $6c7d: $7f
    nop                                           ; $6c7e: $00
    ld h, c                                       ; $6c7f: $61
    and c                                         ; $6c80: $a1
    ld b, [hl]                                    ; $6c81: $46
    pop bc                                        ; $6c82: $c1
    sbc [hl]                                      ; $6c83: $9e
    add c                                         ; $6c84: $81
    db $ed                                        ; $6c85: $ed
    db $db                                        ; $6c86: $db
    cp [hl]                                       ; $6c87: $be
    cp [hl]                                       ; $6c88: $be
    rst RST_38                                    ; $6c89: $ff
    rst RST_38                                    ; $6c8a: $ff
    ld bc, $fc00                                  ; $6c8b: $01 $00 $fc
    nop                                           ; $6c8e: $00
    rst RST_38                                    ; $6c8f: $ff
    dec [hl]                                      ; $6c90: $35
    rst RST_28                                    ; $6c91: $ef
    xor l                                         ; $6c92: $ad
    and a                                         ; $6c93: $a7
    push hl                                       ; $6c94: $e5
    rst RST_20                                    ; $6c95: $e7
    push hl                                       ; $6c96: $e5
    sub a                                         ; $6c97: $97
    sub l                                         ; $6c98: $95
    di                                            ; $6c99: $f3
    sub e                                         ; $6c9a: $93
    di                                            ; $6c9b: $f3
    db $d3                                        ; $6c9c: $d3
    di                                            ; $6c9d: $f3
    add e                                         ; $6c9e: $83
    ld [hl], e                                    ; $6c9f: $73
    dec sp                                        ; $6ca0: $3b
    dec hl                                        ; $6ca1: $2b
    add b                                         ; $6ca2: $80
    add e                                         ; $6ca3: $83
    rlca                                          ; $6ca4: $07
    ld a, [de]                                    ; $6ca5: $1a
    dec bc                                        ; $6ca6: $0b
    ld c, $0a                                     ; $6ca7: $0e $0a
    ld a, [bc]                                    ; $6ca9: $0a
    ld a, [bc]                                    ; $6caa: $0a
    ld c, $89                                     ; $6cab: $0e $89
    rst RST_38                                    ; $6cad: $ff
    rst RST_38                                    ; $6cae: $ff
    ld a, a                                       ; $6caf: $7f
    ld b, b                                       ; $6cb0: $40
    rst RST_38                                    ; $6cb1: $ff
    ret nz                                        ; $6cb2: $c0

    rst RST_38                                    ; $6cb3: $ff
    ld a, a                                       ; $6cb4: $7f
    ret z                                         ; $6cb5: $c8

    add b                                         ; $6cb6: $80
    add l                                         ; $6cb7: $85
    inc b                                         ; $6cb8: $04
    ld c, b                                       ; $6cb9: $48
    ld c, b                                       ; $6cba: $48
    ld c, b                                       ; $6cbb: $48
    ld a, a                                       ; $6cbc: $7f
    sbc a                                         ; $6cbd: $9f
    rst RST_38                                    ; $6cbe: $ff
    cp $82                                        ; $6cbf: $fe $82
    rst RST_38                                    ; $6cc1: $ff
    add e                                         ; $6cc2: $83
    cp $fe                                        ; $6cc3: $fe $fe
    ld a, [bc]                                    ; $6cc5: $0a
    ld a, [bc]                                    ; $6cc6: $0a
    cp $0a                                        ; $6cc7: $fe $0a
    cp $0a                                        ; $6cc9: $fe $0a
    cp $fe                                        ; $6ccb: $fe $fe
    pop af                                        ; $6ccd: $f1
    pop de                                        ; $6cce: $d1
    ld a, c                                       ; $6ccf: $79
    ld e, c                                       ; $6cd0: $59
    db $f4                                        ; $6cd1: $f4
    call nc, Call_006_74fc                        ; $6cd2: $d4 $fc $74
    ldh a, [c]                                    ; $6cd5: $f2
    ld e, d                                       ; $6cd6: $5a
    ldh a, [c]                                    ; $6cd7: $f2
    ld e, d                                       ; $6cd8: $5a
    cp $5a                                        ; $6cd9: $fe $5a
    ld sp, hl                                     ; $6cdb: $f9
    ld a, l                                       ; $6cdc: $7d
    inc b                                         ; $6cdd: $04
    ld a, [bc]                                    ; $6cde: $0a
    add b                                         ; $6cdf: $80
    add e                                         ; $6ce0: $83
    ld b, $0b                                     ; $6ce1: $06 $0b
    ld c, $0b                                     ; $6ce3: $0e $0b
    ld a, [bc]                                    ; $6ce5: $0a
    ld a, [bc]                                    ; $6ce6: $0a
    rrca                                          ; $6ce7: $0f
    ldh [$ffcf], a                                ; $6ce8: $e0 $cf
    ld c, a                                       ; $6cea: $4f
    rst RST_38                                    ; $6ceb: $ff
    ld c, a                                       ; $6cec: $4f
    cp $cf                                        ; $6ced: $fe $cf
    ld a, a                                       ; $6cef: $7f
    ld a, [hl]                                    ; $6cf0: $7e
    call $ffce                                    ; $6cf1: $cd $ce $ff
    ld c, h                                       ; $6cf4: $4c
    ld a, [$fc4c]                                 ; $6cf5: $fa $4c $fc
    ld hl, sp-$06                                 ; $6cf8: $f8 $fa
    ld a, [$fafe]                                 ; $6cfa: $fa $fe $fa
    rrca                                          ; $6cfd: $0f
    ei                                            ; $6cfe: $fb
    cp $0e                                        ; $6cff: $fe $0e
    ei                                            ; $6d01: $fb
    dec bc                                        ; $6d02: $0b
    ld c, $0a                                     ; $6d03: $0e $0a
    ld c, $0a                                     ; $6d05: $0e $0a
    rrca                                          ; $6d07: $0f
    rrca                                          ; $6d08: $0f
    push af                                       ; $6d09: $f5

jr_006_6d0a:
    ld d, l                                       ; $6d0a: $55
    rst RST_30                                    ; $6d0b: $f7

jr_006_6d0c:
    ld d, l                                       ; $6d0c: $55
    rst RST_30                                    ; $6d0d: $f7

jr_006_6d0e:
    push de                                       ; $6d0e: $d5
    ld [hl], a                                    ; $6d0f: $77
    ld [hl], l                                    ; $6d10: $75
    cp $da                                        ; $6d11: $fe $da
    ld a, [$fc5e]                                 ; $6d13: $fa $5e $fc
    ld e, h                                       ; $6d16: $5c
    ldh a, [$fff0]                                ; $6d17: $f0 $f0
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    rlca                                          ; $6d1b: $07
    inc bc                                        ; $6d1c: $03
    dec c                                         ; $6d1d: $0d
    ld [$1011], sp                                ; $6d1e: $08 $11 $10
    dec d                                         ; $6d21: $15
    dec d                                         ; $6d22: $15
    cpl                                           ; $6d23: $2f
    dec l                                         ; $6d24: $2d
    ld [hl+], a                                   ; $6d25: $22
    ld [hl+], a                                   ; $6d26: $22
    ld [hl], $22                                  ; $6d27: $36 $22
    rra                                           ; $6d29: $1f
    rra                                           ; $6d2a: $1f
    ld de, $9110                                  ; $6d2b: $11 $10 $91
    sub b                                         ; $6d2e: $90
    and e                                         ; $6d2f: $a3
    and b                                         ; $6d30: $a0
    inc hl                                        ; $6d31: $23
    jr nz, jr_006_6d57                            ; $6d32: $20 $23

    jr nz, @+$25                                  ; $6d34: $20 $23

    jr nz, jr_006_6d7b                            ; $6d36: $20 $43

    ld b, b                                       ; $6d38: $40
    ldh a, [$fff0]                                ; $6d39: $f0 $f0
    sub b                                         ; $6d3b: $90
    ld [hl], b                                    ; $6d3c: $70
    sub b                                         ; $6d3d: $90
    ld [hl], b                                    ; $6d3e: $70
    ret z                                         ; $6d3f: $c8

    jr c, jr_006_6d0a                             ; $6d40: $38 $c8

    jr c, jr_006_6d0c                             ; $6d42: $38 $c8

    jr c, jr_006_6d0e                             ; $6d44: $38 $c8

    jr c, jr_006_6d0c                             ; $6d46: $38 $c4

    inc a                                         ; $6d48: $3c
    ld [$d500], sp                                ; $6d49: $08 $00 $d5
    inc bc                                        ; $6d4c: $03
    inc bc                                        ; $6d4d: $03
    inc c                                         ; $6d4e: $0c
    inc c                                         ; $6d4f: $0c
    db $10                                        ; $6d50: $10
    db $10                                        ; $6d51: $10
    inc hl                                        ; $6d52: $23
    jr nz, jr_006_6d8c                            ; $6d53: $20 $37

    inc hl                                        ; $6d55: $23
    dec e                                         ; $6d56: $1d

jr_006_6d57:
    ld de, $0c0b                                  ; $6d57: $11 $0b $0c
    ld a, [hl]                                    ; $6d5a: $7e
    ld a, a                                       ; $6d5b: $7f
    add c                                         ; $6d5c: $81
    add c                                         ; $6d5d: $81
    ld a, $00                                     ; $6d5e: $3e $00
    rst RST_38                                    ; $6d60: $ff
    nop                                           ; $6d61: $00
    db $fd                                        ; $6d62: $fd
    ld [bc], a                                    ; $6d63: $02
    ld b, a                                       ; $6d64: $47
    ld b, b                                       ; $6d65: $40
    rst RST_00                                    ; $6d66: $c7
    ret nz                                        ; $6d67: $c0

    ld b, a                                       ; $6d68: $47
    ld b, b                                       ; $6d69: $40
    rst RST_08                                    ; $6d6a: $cf
    ld c, [hl]                                    ; $6d6b: $4e
    rst RST_08                                    ; $6d6c: $cf
    adc $47                                       ; $6d6d: $ce $47
    ld b, b                                       ; $6d6f: $40
    rst RST_20                                    ; $6d70: $e7
    ld b, b                                       ; $6d71: $40
    rst RST_20                                    ; $6d72: $e7
    ld b, b                                       ; $6d73: $40
    db $e4                                        ; $6d74: $e4
    inc e                                         ; $6d75: $1c
    db $e4                                        ; $6d76: $e4
    inc e                                         ; $6d77: $1c
    and $1c                                       ; $6d78: $e6 $1c
    db $f4                                        ; $6d7a: $f4

jr_006_6d7b:
    cp [hl]                                       ; $6d7b: $be
    or $be                                        ; $6d7c: $f6 $be
    xor $1a                                       ; $6d7e: $ee $1a
    cp $12                                        ; $6d80: $fe $12
    ld a, [$2726]                                 ; $6d82: $fa $26 $27
    jr nz, @+$4f                                  ; $6d85: $20 $4d

    ld b, b                                       ; $6d87: $40
    ld c, a                                       ; $6d88: $4f
    ld b, b                                       ; $6d89: $40
    ld c, e                                       ; $6d8a: $4b
    ld b, b                                       ; $6d8b: $40

jr_006_6d8c:
    sbc e                                         ; $6d8c: $9b
    add b                                         ; $6d8d: $80
    sub d                                         ; $6d8e: $92
    add c                                         ; $6d8f: $81
    sub h                                         ; $6d90: $94
    add e                                         ; $6d91: $83
    sub h                                         ; $6d92: $94
    add e                                         ; $6d93: $83
    rst RST_18                                    ; $6d94: $df
    nop                                           ; $6d95: $00
    ld [hl], $09                                  ; $6d96: $36 $09
    ld [hl], $09                                  ; $6d98: $36 $09
    ld [hl-], a                                   ; $6d9a: $32
    dec c                                         ; $6d9b: $0d
    ldh a, [c]                                    ; $6d9c: $f2
    dec c                                         ; $6d9d: $0d
    nop                                           ; $6d9e: $00
    rst RST_38                                    ; $6d9f: $ff
    nop                                           ; $6da0: $00
    inc bc                                        ; $6da1: $03
    rst RST_38                                    ; $6da2: $ff
    sbc b                                         ; $6da3: $98
    cp a                                          ; $6da4: $bf
    ld h, b                                       ; $6da5: $60
    cp a                                          ; $6da6: $bf
    ld h, e                                       ; $6da7: $63
    rst RST_18                                    ; $6da8: $df
    inc a                                         ; $6da9: $3c
    ld d, l                                       ; $6daa: $55
    cp b                                          ; $6dab: $b8
    ld [hl], e                                    ; $6dac: $73
    and e                                         ; $6dad: $a3
    cpl                                           ; $6dae: $2f
    ld h, $6f                                     ; $6daf: $26 $6f
    jp z, $decb                                   ; $6db1: $ca $cb $de

    db $f4                                        ; $6db4: $f4
    call nz, $08d8                                ; $6db5: $c4 $d8 $08
    ld d, b                                       ; $6db8: $50
    jr nc, jr_006_6e1b                            ; $6db9: $30 $60

    ret nz                                        ; $6dbb: $c0

    ld [$8e80], sp                                ; $6dbc: $08 $80 $8e
    sub h                                         ; $6dbf: $94
    add e                                         ; $6dc0: $83
    sbc h                                         ; $6dc1: $9c
    add e                                         ; $6dc2: $83
    sbc h                                         ; $6dc3: $9c
    add e                                         ; $6dc4: $83
    sbc h                                         ; $6dc5: $9c
    add e                                         ; $6dc6: $83
    sbc h                                         ; $6dc7: $9c
    add e                                         ; $6dc8: $83
    sbc h                                         ; $6dc9: $9c
    add e                                         ; $6dca: $83
    ldh [$ff9f], a                                ; $6dcb: $e0 $9f
    ld b, $ff                                     ; $6dcd: $06 $ff
    xor h                                         ; $6dcf: $ac
    ldh [rIE], a                                  ; $6dd0: $e0 $ff
    rst RST_38                                    ; $6dd2: $ff
    ldh [$ffdf], a                                ; $6dd3: $e0 $df
    ldh [$fff0], a                                ; $6dd5: $e0 $f0
    ret nz                                        ; $6dd7: $c0

    and b                                         ; $6dd8: $a0
    ret nz                                        ; $6dd9: $c0

    ret nz                                        ; $6dda: $c0

    add b                                         ; $6ddb: $80
    set 3, [hl]                                   ; $6ddc: $cb $de
    db $db                                        ; $6dde: $db
    adc $e7                                       ; $6ddf: $ce $e7
    adc $af                                       ; $6de1: $ce $af
    and [hl]                                      ; $6de3: $a6
    sub l                                         ; $6de4: $95
    sbc h                                         ; $6de5: $9c
    cp b                                          ; $6de6: $b8
    cp b                                          ; $6de7: $b8
    rst RST_18                                    ; $6de8: $df
    ret nz                                        ; $6de9: $c0

    rst RST_38                                    ; $6dea: $ff
    rst RST_38                                    ; $6deb: $ff
    add [hl]                                      ; $6dec: $86
    add [hl]                                      ; $6ded: $86
    sbc d                                         ; $6dee: $9a
    sbc d                                         ; $6def: $9a
    db $ec                                        ; $6df0: $ec
    db $e4                                        ; $6df1: $e4
    cp b                                          ; $6df2: $b8
    adc b                                         ; $6df3: $88
    ld [hl], b                                    ; $6df4: $70
    ldh a, [$ffb8]                                ; $6df5: $f0 $b8
    ld a, b                                       ; $6df7: $78
    call nz, $fc3c                                ; $6df8: $c4 $3c $fc
    db $fc                                        ; $6dfb: $fc
    inc b                                         ; $6dfc: $04
    nop                                           ; $6dfd: $00
    inc b                                         ; $6dfe: $04
    ccf                                           ; $6dff: $3f
    inc b                                         ; $6e00: $04
    inc sp                                        ; $6e01: $33
    add h                                         ; $6e02: $84
    ld h, e                                       ; $6e03: $63
    ld [hl], e                                    ; $6e04: $73
    ld h, e                                       ; $6e05: $63
    ld h, e                                       ; $6e06: $63
    inc b                                         ; $6e07: $04
    nop                                           ; $6e08: $00
    inc b                                         ; $6e09: $04
    ld a, [hl]                                    ; $6e0a: $7e
    ld [$0418], sp                                ; $6e0b: $08 $18 $04
    nop                                           ; $6e0e: $00
    inc b                                         ; $6e0f: $04
    ld a, [hl]                                    ; $6e10: $7e
    add b                                         ; $6e11: $80
    add e                                         ; $6e12: $83
    inc b                                         ; $6e13: $04
    ld b, $0e                                     ; $6e14: $06 $0e
    inc c                                         ; $6e16: $0c
    inc e                                         ; $6e17: $1c
    inc b                                         ; $6e18: $04
    nop                                           ; $6e19: $00
    ld a, [bc]                                    ; $6e1a: $0a

jr_006_6e1b:
    ld h, b                                       ; $6e1b: $60
    add b                                         ; $6e1c: $80
    add e                                         ; $6e1d: $83
    rlca                                          ; $6e1e: $07
    ld a, b                                       ; $6e1f: $78
    inc bc                                        ; $6e20: $03
    rlca                                          ; $6e21: $07
    ld b, $0e                                     ; $6e22: $06 $0e
    inc a                                         ; $6e24: $3c
    jr c, jr_006_6e2b                             ; $6e25: $38 $04

    nop                                           ; $6e27: $00
    ld [$0418], sp                                ; $6e28: $08 $18 $04

jr_006_6e2b:
    rst RST_38                                    ; $6e2b: $ff
    inc b                                         ; $6e2c: $04
    nop                                           ; $6e2d: $00
    add b                                         ; $6e2e: $80
    add e                                         ; $6e2f: $83
    ld b, $1c                                     ; $6e30: $06 $1c
    ld a, $36                                     ; $6e32: $3e $36
    ld [hl], a                                    ; $6e34: $77
    ld h, e                                       ; $6e35: $63
    ld h, e                                       ; $6e36: $63
    inc b                                         ; $6e37: $04
    nop                                           ; $6e38: $00
    add b                                         ; $6e39: $80
    add e                                         ; $6e3a: $83
    ld b, $7e                                     ; $6e3b: $06 $7e
    ld l, [hl]                                    ; $6e3d: $6e
    ld h, b                                       ; $6e3e: $60
    ld h, b                                       ; $6e3f: $60
    ld h, b                                       ; $6e40: $60
    ld h, b                                       ; $6e41: $60
    ld [$0a00], sp                                ; $6e42: $08 $00 $0a
    ld h, b                                       ; $6e45: $60
    add d                                         ; $6e46: $82
    ld h, e                                       ; $6e47: $63
    ld h, e                                       ; $6e48: $63
    inc b                                         ; $6e49: $04
    nop                                           ; $6e4a: $00
    inc b                                         ; $6e4b: $04
    ld bc, $1d88                                  ; $6e4c: $01 $88 $1d
    add hl, de                                    ; $6e4f: $19
    dec a                                         ; $6e50: $3d
    dec e                                         ; $6e51: $1d
    inc a                                         ; $6e52: $3c
    ld a, $3e                                     ; $6e53: $3e $3e
    ld [hl], $04                                  ; $6e55: $36 $04
    nop                                           ; $6e57: $00
    inc b                                         ; $6e58: $04
    or b                                          ; $6e59: $b0
    inc b                                         ; $6e5a: $04
    or [hl]                                       ; $6e5b: $b6
    inc b                                         ; $6e5c: $04
    ld b, $04                                     ; $6e5d: $06 $04
    nop                                           ; $6e5f: $00
    inc c                                         ; $6e60: $0c
    ret nz                                        ; $6e61: $c0

    adc h                                         ; $6e62: $8c
    ld h, e                                       ; $6e63: $63
    ld h, e                                       ; $6e64: $63
    ld h, [hl]                                    ; $6e65: $66
    ld h, a                                       ; $6e66: $67
    ld l, [hl]                                    ; $6e67: $6e
    ld l, [hl]                                    ; $6e68: $6e
    ld a, h                                       ; $6e69: $7c
    ld a, h                                       ; $6e6a: $7c
    ld a, b                                       ; $6e6b: $78
    ld a, b                                       ; $6e6c: $78
    ld h, b                                       ; $6e6d: $60
    ld [hl], b                                    ; $6e6e: $70
    inc b                                         ; $6e6f: $04
    nop                                           ; $6e70: $00
    add e                                         ; $6e71: $83
    halt                                          ; $6e72: $76
    scf                                           ; $6e73: $37
    ld [hl], e                                    ; $6e74: $73
    inc bc                                        ; $6e75: $03
    ld h, e                                       ; $6e76: $63
    inc b                                         ; $6e77: $04
    ld bc, $0006                                  ; $6e78: $01 $06 $00
    dec b                                         ; $6e7b: $05
    ld b, $87                                     ; $6e7c: $06 $87
    add [hl]                                      ; $6e7e: $86
    adc h                                         ; $6e7f: $8c
    add [hl]                                      ; $6e80: $86
    adc $8c                                       ; $6e81: $ce $8c
    ld [$040c], sp                                ; $6e83: $08 $0c $04
    nop                                           ; $6e86: $00
    ld b, $d8                                     ; $6e87: $06 $d8
    add [hl]                                      ; $6e89: $86
    ldh a, [$fff8]                                ; $6e8a: $f0 $f8
    ldh a, [$fff0]                                ; $6e8c: $f0 $f0
    ret nz                                        ; $6e8e: $c0

    ldh [rDIV], a                                 ; $6e8f: $e0 $04
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    sbc b                                         ; $6e94: $98
    add d                                         ; $6e95: $82
    ld bc, $8002                                  ; $6e96: $01 $02 $80
    inc b                                         ; $6e99: $04
    inc b                                         ; $6e9a: $04
    add b                                         ; $6e9b: $80
    inc bc                                        ; $6e9c: $03
    rlca                                          ; $6e9d: $07
    add c                                         ; $6e9e: $81
    inc b                                         ; $6e9f: $04
    add b                                         ; $6ea0: $80
    ld b, $04                                     ; $6ea1: $06 $04
    add h                                         ; $6ea3: $84
    inc b                                         ; $6ea4: $04
    inc b                                         ; $6ea5: $04
    dec b                                         ; $6ea6: $05
    dec bc                                        ; $6ea7: $0b
    inc c                                         ; $6ea8: $0c
    nop                                           ; $6ea9: $00
    add c                                         ; $6eaa: $81
    inc c                                         ; $6eab: $0c
    add b                                         ; $6eac: $80
    inc bc                                        ; $6ead: $03
    ld d, $84                                     ; $6eae: $16 $84
    ld a, [bc]                                    ; $6eb0: $0a
    jr nz, jr_006_6ed4                            ; $6eb1: $20 $21

    ld a, [bc]                                    ; $6eb3: $0a
    add b                                         ; $6eb4: $80
    inc bc                                        ; $6eb5: $03
    ld d, $83                                     ; $6eb6: $16 $83
    jr nz, jr_006_6edb                            ; $6eb8: $20 $21

    ld a, [bc]                                    ; $6eba: $0a
    add b                                         ; $6ebb: $80
    inc bc                                        ; $6ebc: $03
    ld d, $83                                     ; $6ebd: $16 $83
    ld a, [bc]                                    ; $6ebf: $0a
    ld a, [bc]                                    ; $6ec0: $0a
    dec c                                         ; $6ec1: $0d
    inc c                                         ; $6ec2: $0c
    nop                                           ; $6ec3: $00
    add c                                         ; $6ec4: $81
    inc c                                         ; $6ec5: $0c
    add b                                         ; $6ec6: $80
    inc bc                                        ; $6ec7: $03
    add hl, de                                    ; $6ec8: $19
    add h                                         ; $6ec9: $84
    ld a, [bc]                                    ; $6eca: $0a
    ld [hl+], a                                   ; $6ecb: $22
    inc hl                                        ; $6ecc: $23
    ld a, [bc]                                    ; $6ecd: $0a
    add b                                         ; $6ece: $80
    inc bc                                        ; $6ecf: $03
    add hl, de                                    ; $6ed0: $19
    add e                                         ; $6ed1: $83
    ld [hl+], a                                   ; $6ed2: $22
    inc hl                                        ; $6ed3: $23

jr_006_6ed4:
    ld a, [bc]                                    ; $6ed4: $0a
    add b                                         ; $6ed5: $80
    inc bc                                        ; $6ed6: $03
    add hl, de                                    ; $6ed7: $19
    add e                                         ; $6ed8: $83
    ld a, [bc]                                    ; $6ed9: $0a
    ld a, [bc]                                    ; $6eda: $0a

jr_006_6edb:
    dec c                                         ; $6edb: $0d
    inc c                                         ; $6edc: $0c
    nop                                           ; $6edd: $00
    add c                                         ; $6ede: $81
    inc c                                         ; $6edf: $0c
    add b                                         ; $6ee0: $80
    inc b                                         ; $6ee1: $04
    inc e                                         ; $6ee2: $1c
    add e                                         ; $6ee3: $83
    ld a, [bc]                                    ; $6ee4: $0a
    jr nz, jr_006_6f08                            ; $6ee5: $20 $21

    add b                                         ; $6ee7: $80
    ld b, $1c                                     ; $6ee8: $06 $1c
    add b                                         ; $6eea: $80
    inc b                                         ; $6eeb: $04
    inc e                                         ; $6eec: $1c
    add d                                         ; $6eed: $82
    ld a, [bc]                                    ; $6eee: $0a
    dec c                                         ; $6eef: $0d
    inc c                                         ; $6ef0: $0c
    nop                                           ; $6ef1: $00
    add c                                         ; $6ef2: $81
    inc c                                         ; $6ef3: $0c
    dec b                                         ; $6ef4: $05
    ld a, [bc]                                    ; $6ef5: $0a
    add e                                         ; $6ef6: $83
    ld [hl+], a                                   ; $6ef7: $22
    inc hl                                        ; $6ef8: $23
    inc bc                                        ; $6ef9: $03
    add b                                         ; $6efa: $80
    inc bc                                        ; $6efb: $03
    inc h                                         ; $6efc: $24
    add d                                         ; $6efd: $82
    ld [hl+], a                                   ; $6efe: $22
    inc hl                                        ; $6eff: $23
    dec b                                         ; $6f00: $05
    ld a, [bc]                                    ; $6f01: $0a
    add c                                         ; $6f02: $81
    dec c                                         ; $6f03: $0d
    inc c                                         ; $6f04: $0c
    nop                                           ; $6f05: $00
    add c                                         ; $6f06: $81
    inc c                                         ; $6f07: $0c

jr_006_6f08:
    add b                                         ; $6f08: $80
    inc b                                         ; $6f09: $04
    ld [hl-], a                                   ; $6f0a: $32
    add e                                         ; $6f0b: $83
    jr nz, jr_006_6f2f                            ; $6f0c: $20 $21

    ld a, [bc]                                    ; $6f0e: $0a
    add b                                         ; $6f0f: $80
    inc bc                                        ; $6f10: $03
    daa                                           ; $6f11: $27
    add c                                         ; $6f12: $81
    ld [hl], $03                                  ; $6f13: $36 $03
    ld a, [bc]                                    ; $6f15: $0a
    add b                                         ; $6f16: $80
    inc bc                                        ; $6f17: $03
    ld h, b                                       ; $6f18: $60
    add d                                         ; $6f19: $82
    ld a, [bc]                                    ; $6f1a: $0a
    dec c                                         ; $6f1b: $0d
    inc c                                         ; $6f1c: $0c
    nop                                           ; $6f1d: $00
    add d                                         ; $6f1e: $82
    inc c                                         ; $6f1f: $0c
    ld [hl-], a                                   ; $6f20: $32
    add b                                         ; $6f21: $80
    inc bc                                        ; $6f22: $03
    scf                                           ; $6f23: $37
    adc c                                         ; $6f24: $89
    ld [hl+], a                                   ; $6f25: $22
    inc hl                                        ; $6f26: $23
    ld a, [bc]                                    ; $6f27: $0a
    ld a, [bc]                                    ; $6f28: $0a
    inc l                                         ; $6f29: $2c
    dec l                                         ; $6f2a: $2d
    ld a, [hl+]                                   ; $6f2b: $2a
    dec hl                                        ; $6f2c: $2b
    ld a, [bc]                                    ; $6f2d: $0a
    add b                                         ; $6f2e: $80

jr_006_6f2f:
    inc b                                         ; $6f2f: $04
    ld h, e                                       ; $6f30: $63
    add d                                         ; $6f31: $82
    ld a, [bc]                                    ; $6f32: $0a
    dec c                                         ; $6f33: $0d
    inc c                                         ; $6f34: $0c
    nop                                           ; $6f35: $00
    add c                                         ; $6f36: $81
    inc c                                         ; $6f37: $0c
    add b                                         ; $6f38: $80
    inc b                                         ; $6f39: $04
    ld a, [hl-]                                   ; $6f3a: $3a
    adc c                                         ; $6f3b: $89
    ld a, [bc]                                    ; $6f3c: $0a
    ld a, [bc]                                    ; $6f3d: $0a
    ld a, [hl+]                                   ; $6f3e: $2a
    dec hl                                        ; $6f3f: $2b
    ld a, [bc]                                    ; $6f40: $0a
    ld a, [bc]                                    ; $6f41: $0a
    inc l                                         ; $6f42: $2c
    dec l                                         ; $6f43: $2d
    ld a, [bc]                                    ; $6f44: $0a
    add b                                         ; $6f45: $80
    inc b                                         ; $6f46: $04
    ld h, a                                       ; $6f47: $67
    add d                                         ; $6f48: $82
    ld a, [bc]                                    ; $6f49: $0a

jr_006_6f4a:
    dec c                                         ; $6f4a: $0d
    inc c                                         ; $6f4b: $0c
    nop                                           ; $6f4c: $00
    add d                                         ; $6f4d: $82
    inc c                                         ; $6f4e: $0c
    ld a, [bc]                                    ; $6f4f: $0a
    add b                                         ; $6f50: $80
    inc bc                                        ; $6f51: $03
    ld a, $82                                     ; $6f52: $3e $82
    ld a, [bc]                                    ; $6f54: $0a
    ld a, [bc]                                    ; $6f55: $0a
    add b                                         ; $6f56: $80
    inc b                                         ; $6f57: $04
    inc l                                         ; $6f58: $2c
    add e                                         ; $6f59: $83
    ld a, [hl+]                                   ; $6f5a: $2a
    dec hl                                        ; $6f5b: $2b
    ld a, [bc]                                    ; $6f5c: $0a
    add b                                         ; $6f5d: $80
    inc b                                         ; $6f5e: $04
    ld l, e                                       ; $6f5f: $6b
    add d                                         ; $6f60: $82
    ld a, [bc]                                    ; $6f61: $0a
    dec c                                         ; $6f62: $0d
    inc c                                         ; $6f63: $0c
    nop                                           ; $6f64: $00
    add c                                         ; $6f65: $81
    inc c                                         ; $6f66: $0c
    ld [$840a], sp                                ; $6f67: $08 $0a $84
    jr nc, jr_006_6f9d                            ; $6f6a: $30 $31

    inc l                                         ; $6f6c: $2c
    dec l                                         ; $6f6d: $2d
    inc b                                         ; $6f6e: $04
    ld a, [bc]                                    ; $6f6f: $0a
    add e                                         ; $6f70: $83
    jr nz, jr_006_6f94                            ; $6f71: $20 $21

    dec c                                         ; $6f73: $0d
    inc c                                         ; $6f74: $0c
    nop                                           ; $6f75: $00
    add e                                         ; $6f76: $83
    inc c                                         ; $6f77: $0c
    jr nz, jr_006_6f9b                            ; $6f78: $20 $21

    add b                                         ; $6f7a: $80
    inc b                                         ; $6f7b: $04
    ld d, b                                       ; $6f7c: $50
    add [hl]                                      ; $6f7d: $86
    ld a, [bc]                                    ; $6f7e: $0a
    ld a, [bc]                                    ; $6f7f: $0a
    inc l                                         ; $6f80: $2c
    dec l                                         ; $6f81: $2d
    ld a, [bc]                                    ; $6f82: $0a
    ld a, [bc]                                    ; $6f83: $0a
    add b                                         ; $6f84: $80
    inc b                                         ; $6f85: $04
    ld b, c                                       ; $6f86: $41
    add e                                         ; $6f87: $83
    ld [hl+], a                                   ; $6f88: $22
    inc hl                                        ; $6f89: $23
    dec c                                         ; $6f8a: $0d
    inc c                                         ; $6f8b: $0c
    nop                                           ; $6f8c: $00
    add e                                         ; $6f8d: $83
    inc c                                         ; $6f8e: $0c
    ld [hl+], a                                   ; $6f8f: $22
    inc hl                                        ; $6f90: $23
    add b                                         ; $6f91: $80
    inc b                                         ; $6f92: $04
    ld d, h                                       ; $6f93: $54

jr_006_6f94:
    ld b, $0a                                     ; $6f94: $06 $0a
    add b                                         ; $6f96: $80
    inc b                                         ; $6f97: $04
    ld b, l                                       ; $6f98: $45
    add e                                         ; $6f99: $83
    ld a, [bc]                                    ; $6f9a: $0a

jr_006_6f9b:
    ld a, [bc]                                    ; $6f9b: $0a
    dec c                                         ; $6f9c: $0d

jr_006_6f9d:
    inc c                                         ; $6f9d: $0c
    nop                                           ; $6f9e: $00
    add e                                         ; $6f9f: $83
    inc c                                         ; $6fa0: $0c
    ld a, [bc]                                    ; $6fa1: $0a
    ld a, [bc]                                    ; $6fa2: $0a
    add b                                         ; $6fa3: $80
    inc b                                         ; $6fa4: $04
    ld e, b                                       ; $6fa5: $58
    inc bc                                        ; $6fa6: $03
    ld a, [bc]                                    ; $6fa7: $0a
    add e                                         ; $6fa8: $83
    jr nz, jr_006_6fcc                            ; $6fa9: $20 $21

    ld a, [bc]                                    ; $6fab: $0a
    add b                                         ; $6fac: $80
    inc b                                         ; $6fad: $04
    ld c, c                                       ; $6fae: $49
    add e                                         ; $6faf: $83
    ld a, [bc]                                    ; $6fb0: $0a
    ld a, [bc]                                    ; $6fb1: $0a
    dec c                                         ; $6fb2: $0d
    inc c                                         ; $6fb3: $0c
    nop                                           ; $6fb4: $00
    add e                                         ; $6fb5: $83
    ld c, $0f                                     ; $6fb6: $0e $0f
    ld a, [bc]                                    ; $6fb8: $0a
    add b                                         ; $6fb9: $80
    inc b                                         ; $6fba: $04
    ld e, h                                       ; $6fbb: $5c
    add c                                         ; $6fbc: $81
    ld a, [bc]                                    ; $6fbd: $0a
    add b                                         ; $6fbe: $80
    inc b                                         ; $6fbf: $04
    jr nz, jr_006_6f4a                            ; $6fc0: $20 $88

    ld a, [bc]                                    ; $6fc2: $0a
    ld c, l                                       ; $6fc3: $4d
    ld l, h                                       ; $6fc4: $6c
    ld c, [hl]                                    ; $6fc5: $4e
    ld c, a                                       ; $6fc6: $4f
    jr nz, jr_006_6fea                            ; $6fc7: $20 $21

    dec c                                         ; $6fc9: $0d
    inc c                                         ; $6fca: $0c
    nop                                           ; $6fcb: $00

jr_006_6fcc:
    add d                                         ; $6fcc: $82
    db $10                                        ; $6fcd: $10
    ld de, $0a06                                  ; $6fce: $11 $06 $0a
    add d                                         ; $6fd1: $82
    ld [hl+], a                                   ; $6fd2: $22
    inc hl                                        ; $6fd3: $23
    rlca                                          ; $6fd4: $07
    ld a, [bc]                                    ; $6fd5: $0a
    add e                                         ; $6fd6: $83
    ld [hl+], a                                   ; $6fd7: $22
    inc hl                                        ; $6fd8: $23
    dec c                                         ; $6fd9: $0d
    dec c                                         ; $6fda: $0d
    nop                                           ; $6fdb: $00
    add c                                         ; $6fdc: $81
    ld [de], a                                    ; $6fdd: $12
    add b                                         ; $6fde: $80
    inc b                                         ; $6fdf: $04
    inc b                                         ; $6fe0: $04
    add b                                         ; $6fe1: $80
    inc bc                                        ; $6fe2: $03
    rlca                                          ; $6fe3: $07
    add c                                         ; $6fe4: $81
    inc b                                         ; $6fe5: $04
    add b                                         ; $6fe6: $80
    ld b, $04                                     ; $6fe7: $06 $04
    add h                                         ; $6fe9: $84

jr_006_6fea:
    inc b                                         ; $6fea: $04
    inc b                                         ; $6feb: $04
    dec b                                         ; $6fec: $05
    dec d                                         ; $6fed: $15
    stop                                          ; $6fee: $10 $00
    add b                                         ; $6ff0: $80
    inc b                                         ; $6ff1: $04
    ld l, a                                       ; $6ff2: $6f
    inc b                                         ; $6ff3: $04
    nop                                           ; $6ff4: $00
    add b                                         ; $6ff5: $80
    inc b                                         ; $6ff6: $04
    ld [hl], a                                    ; $6ff7: $77
    inc d                                         ; $6ff8: $14
    nop                                           ; $6ff9: $00
    add b                                         ; $6ffa: $80
    inc b                                         ; $6ffb: $04
    ld [hl], e                                    ; $6ffc: $73
    inc b                                         ; $6ffd: $04
    nop                                           ; $6ffe: $00
    add b                                         ; $6fff: $80
    inc b                                         ; $7000: $04
    ld a, e                                       ; $7001: $7b
    stop                                          ; $7002: $10 $00
    nop                                           ; $7004: $00
    ld bc, $448e                                  ; $7005: $01 $8e $44
    add b                                         ; $7008: $80
    nop                                           ; $7009: $00
    ld bc, $45c4                                  ; $700a: $01 $c4 $45
    sbc b                                         ; $700d: $98
    nop                                           ; $700e: $00
    ld bc, $701a                                  ; $700f: $01 $1a $70
    add b                                         ; $7012: $80
    ld bc, $7c01                                  ; $7013: $01 $01 $7c
    ld [hl], l                                    ; $7016: $75
    nop                                           ; $7017: $00
    ld bc, $1400                                  ; $7018: $01 $00 $14
    nop                                           ; $701b: $00
    inc b                                         ; $701c: $04
    ld a, a                                       ; $701d: $7f
    ld [$0403], sp                                ; $701e: $08 $03 $04
    nop                                           ; $7021: $00
    ld [$086c], sp                                ; $7022: $08 $6c $08
    nop                                           ; $7025: $00
    inc c                                         ; $7026: $0c
    ret c                                         ; $7027: $d8

    inc b                                         ; $7028: $04
    nop                                           ; $7029: $00
    ld [$8463], sp                                ; $702a: $08 $63 $84
    ld h, b                                       ; $702d: $60
    ld h, b                                       ; $702e: $60
    ld a, b                                       ; $702f: $78
    ld a, b                                       ; $7030: $78
    inc b                                         ; $7031: $04
    nop                                           ; $7032: $00
    add d                                         ; $7033: $82
    ld h, e                                       ; $7034: $63
    ld h, e                                       ; $7035: $63
    inc b                                         ; $7036: $04
    ld l, a                                       ; $7037: $6f
    add [hl]                                      ; $7038: $86
    ld h, a                                       ; $7039: $67
    ld h, e                                       ; $703a: $63
    ld c, $06                                     ; $703b: $0e $06
    rrca                                          ; $703d: $0f
    rrca                                          ; $703e: $0f
    ld b, $00                                     ; $703f: $06 $00
    adc d                                         ; $7041: $8a
    ldh [$ffe0], a                                ; $7042: $e0 $e0
    rst RST_20                                    ; $7044: $e7
    rst RST_20                                    ; $7045: $e7
    rlca                                          ; $7046: $07
    rlca                                          ; $7047: $07
    ldh [$ff60], a                                ; $7048: $e0 $60
    pop hl                                        ; $704a: $e1
    ldh [rDIV], a                                 ; $704b: $e0 $04
    nop                                           ; $704d: $00
    add d                                         ; $704e: $82
    ret nz                                        ; $704f: $c0

    ret nz                                        ; $7050: $c0

    inc b                                         ; $7051: $04
    ld hl, sp-$7a                                 ; $7052: $f8 $86
    pop hl                                        ; $7054: $e1
    pop bc                                        ; $7055: $c1
    reti                                          ; $7056: $d9


    reti                                          ; $7057: $d9


    ld hl, sp-$08                                 ; $7058: $f8 $f8
    ld [$8800], sp                                ; $705a: $08 $00 $88
    inc a                                         ; $705d: $3c
    ld a, b                                       ; $705e: $78
    cp $fc                                        ; $705f: $fe $fc
    xor $c6                                       ; $7061: $ee $c6
    ld b, $06                                     ; $7063: $06 $06
    inc b                                         ; $7065: $04
    nop                                           ; $7066: $00
    add d                                         ; $7067: $82
    inc c                                         ; $7068: $0c
    inc c                                         ; $7069: $0c
    inc b                                         ; $706a: $04
    ld l, h                                       ; $706b: $6c
    add [hl]                                      ; $706c: $86
    ld a, [hl]                                    ; $706d: $7e
    ld l, h                                       ; $706e: $6c
    ld a, a                                       ; $706f: $7f
    ld a, [hl]                                    ; $7070: $7e
    ld a, a                                       ; $7071: $7f
    rst RST_38                                    ; $7072: $ff
    inc b                                         ; $7073: $04
    nop                                           ; $7074: $00
    inc b                                         ; $7075: $04
    ld a, [hl]                                    ; $7076: $7e
    adc b                                         ; $7077: $88
    ld b, $06                                     ; $7078: $06 $06
    inc c                                         ; $707a: $0c
    inc c                                         ; $707b: $0c
    ld a, $3c                                     ; $707c: $3e $3c
    ccf                                           ; $707e: $3f
    ld a, $08                                     ; $707f: $3e $08
    inc bc                                        ; $7081: $03
    inc b                                         ; $7082: $04
    ld a, a                                       ; $7083: $7f
    inc b                                         ; $7084: $04
    nop                                           ; $7085: $00
    inc b                                         ; $7086: $04
    ld a, [hl]                                    ; $7087: $7e
    inc c                                         ; $7088: $0c
    nop                                           ; $7089: $00
    ld b, $db                                     ; $708a: $06 $db
    add [hl]                                      ; $708c: $86
    rst RST_18                                    ; $708d: $df
    db $db                                        ; $708e: $db
    rst RST_18                                    ; $708f: $df
    sbc $de                                       ; $7090: $de $de
    call c, Call_000_0004                         ; $7092: $dc $04 $00
    add b                                         ; $7095: $80
    add e                                         ; $7096: $83
    ld b, $7e                                     ; $7097: $06 $7e
    ld l, a                                       ; $7099: $6f
    ld h, e                                       ; $709a: $63
    ld h, b                                       ; $709b: $60
    ld h, b                                       ; $709c: $60
    ld h, b                                       ; $709d: $60
    inc b                                         ; $709e: $04
    nop                                           ; $709f: $00
    add b                                         ; $70a0: $80
    add e                                         ; $70a1: $83
    ld b, $03                                     ; $70a2: $06 $03
    rlca                                          ; $70a4: $07
    ld c, $0c                                     ; $70a5: $0e $0c
    rrca                                          ; $70a7: $0f
    rlca                                          ; $70a8: $07
    inc b                                         ; $70a9: $04
    nop                                           ; $70aa: $00
    adc h                                         ; $70ab: $8c
    add c                                         ; $70ac: $81
    add e                                         ; $70ad: $83
    jp $c7c7                                      ; $70ae: $c3 $c7 $c7


    add $06                                       ; $70b1: $c6 $06
    ld b, $e7                                     ; $70b3: $06 $e7
    rst RST_20                                    ; $70b5: $e7
    db $e3                                        ; $70b6: $e3
    db $e3                                        ; $70b7: $e3
    inc b                                         ; $70b8: $04
    nop                                           ; $70b9: $00
    adc h                                         ; $70ba: $8c
    ld hl, sp-$04                                 ; $70bb: $f8 $fc
    db $ec                                        ; $70bd: $ec
    cp h                                          ; $70be: $bc
    db $ec                                        ; $70bf: $ec
    db $ec                                        ; $70c0: $ec
    call z, $dcec                                 ; $70c1: $cc $ec $dc
    ret c                                         ; $70c4: $d8

    sbc b                                         ; $70c5: $98
    jr jr_006_70cc                                ; $70c6: $18 $04

    nop                                           ; $70c8: $00
    adc h                                         ; $70c9: $8c
    ld b, $06                                     ; $70ca: $06 $06

jr_006_70cc:
    inc b                                         ; $70cc: $04
    ld c, $0e                                     ; $70cd: $0e $0e
    inc c                                         ; $70cf: $0c
    jr jr_006_70ee                                ; $70d0: $18 $1c

    ld a, h                                       ; $70d2: $7c
    ld a, b                                       ; $70d3: $78
    ld [hl], b                                    ; $70d4: $70
    ld [hl], b                                    ; $70d5: $70
    inc b                                         ; $70d6: $04
    nop                                           ; $70d7: $00
    adc h                                         ; $70d8: $8c
    ei                                            ; $70d9: $fb
    ei                                            ; $70da: $fb
    db $db                                        ; $70db: $db
    db $db                                        ; $70dc: $db
    di                                            ; $70dd: $f3
    db $db                                        ; $70de: $db
    di                                            ; $70df: $f3
    di                                            ; $70e0: $f3
    rst RST_20                                    ; $70e1: $e7
    halt                                          ; $70e2: $76
    ld b, [hl]                                    ; $70e3: $46
    ld h, $04                                     ; $70e4: $26 $04
    nop                                           ; $70e6: $00
    adc h                                         ; $70e7: $8c
    inc bc                                        ; $70e8: $03
    inc bc                                        ; $70e9: $03
    dec sp                                        ; $70ea: $3b
    dec sp                                        ; $70eb: $3b
    ld a, a                                       ; $70ec: $7f
    ld a, e                                       ; $70ed: $7b

jr_006_70ee:
    ld l, a                                       ; $70ee: $6f
    ld l, [hl]                                    ; $70ef: $6e
    ld a, [hl]                                    ; $70f0: $7e
    ld a, [hl]                                    ; $70f1: $7e
    inc a                                         ; $70f2: $3c
    jr c, @+$06                                   ; $70f3: $38 $04

    nop                                           ; $70f5: $00
    add b                                         ; $70f6: $80
    add e                                         ; $70f7: $83
    ld b, $3c                                     ; $70f8: $06 $3c
    ld a, [hl]                                    ; $70fa: $7e
    ld h, [hl]                                    ; $70fb: $66
    ld h, [hl]                                    ; $70fc: $66
    ld a, [hl]                                    ; $70fd: $7e
    inc a                                         ; $70fe: $3c
    ld [$0400], sp                                ; $70ff: $08 $00 $04
    ld b, $04                                     ; $7102: $06 $04
    rst RST_38                                    ; $7104: $ff
    inc b                                         ; $7105: $04
    ld c, $14                                     ; $7106: $0e $14
    nop                                           ; $7108: $00
    inc b                                         ; $7109: $04
    ld a, a                                       ; $710a: $7f
    ld [$0403], sp                                ; $710b: $08 $03 $04
    nop                                           ; $710e: $00
    add b                                         ; $710f: $80
    add e                                         ; $7110: $83
    inc b                                         ; $7111: $04
    ld l, h                                       ; $7112: $6c
    ld l, l                                       ; $7113: $6d
    ld l, l                                       ; $7114: $6d
    ld l, h                                       ; $7115: $6c
    add h                                         ; $7116: $84
    ld bc, $0100                                  ; $7117: $01 $00 $01
    ld bc, $0004                                  ; $711a: $01 $04 $00
    add d                                         ; $711d: $82
    ld h, b                                       ; $711e: $60
    ld h, b                                       ; $711f: $60
    inc b                                         ; $7120: $04
    db $fc                                        ; $7121: $fc
    add [hl]                                      ; $7122: $86
    ldh [$ff60], a                                ; $7123: $e0 $60
    call c, $fccc                                 ; $7125: $dc $cc $fc
    db $fc                                        ; $7128: $fc
    ld [$8800], sp                                ; $7129: $08 $00 $88
    rrca                                          ; $712c: $0f
    ld e, $7f                                     ; $712d: $1e $7f
    ld a, a                                       ; $712f: $7f
    ld a, e                                       ; $7130: $7b
    ld [hl], c                                    ; $7131: $71
    ld bc, $0401                                  ; $7132: $01 $01 $04
    nop                                           ; $7135: $00
    inc b                                         ; $7136: $04
    ld b, $84                                     ; $7137: $06 $84
    rra                                           ; $7139: $1f
    rra                                           ; $713a: $1f
    sbc a                                         ; $713b: $9f
    rra                                           ; $713c: $1f
    inc b                                         ; $713d: $04
    add e                                         ; $713e: $83
    inc b                                         ; $713f: $04
    nop                                           ; $7140: $00
    inc b                                         ; $7141: $04
    inc c                                         ; $7142: $0c
    inc b                                         ; $7143: $04
    rst RST_18                                    ; $7144: $df
    add h                                         ; $7145: $84
    dec c                                         ; $7146: $0d
    dec c                                         ; $7147: $0d
    adc l                                         ; $7148: $8d
    dec c                                         ; $7149: $0d
    inc b                                         ; $714a: $04
    nop                                           ; $714b: $00
    adc h                                         ; $714c: $8c
    and $46                                       ; $714d: $e6 $46
    or $66                                        ; $714f: $f6 $66
    and $36                                       ; $7151: $e6 $36
    or [hl]                                       ; $7153: $b6
    or [hl]                                       ; $7154: $b6
    or b                                          ; $7155: $b0
    or b                                          ; $7156: $b0
    and b                                         ; $7157: $a0
    or b                                          ; $7158: $b0
    inc b                                         ; $7159: $04
    nop                                           ; $715a: $00
    inc b                                         ; $715b: $04
    ret nz                                        ; $715c: $c0

    inc b                                         ; $715d: $04
    rst RST_18                                    ; $715e: $df
    add h                                         ; $715f: $84
    inc bc                                        ; $7160: $03
    inc bc                                        ; $7161: $03
    rlca                                          ; $7162: $07
    rlca                                          ; $7163: $07
    inc b                                         ; $7164: $04
    nop                                           ; $7165: $00
    inc b                                         ; $7166: $04
    ret nz                                        ; $7167: $c0

    inc b                                         ; $7168: $04
    ldh [rDIV], a                                 ; $7169: $e0 $04
    ret nz                                        ; $716b: $c0

    inc b                                         ; $716c: $04
    ld e, $88                                     ; $716d: $1e $88
    ld a, $36                                     ; $716f: $3e $36
    halt                                          ; $7171: $76
    halt                                          ; $7172: $76
    xor $ee                                       ; $7173: $ee $ee
    adc $ce                                       ; $7175: $ce $ce
    inc b                                         ; $7177: $04
    nop                                           ; $7178: $00
    inc b                                         ; $7179: $04
    ld a, a                                       ; $717a: $7f
    inc c                                         ; $717b: $0c
    nop                                           ; $717c: $00
    add c                                         ; $717d: $81
    rlca                                          ; $717e: $07
    inc bc                                        ; $717f: $03
    ld b, $88                                     ; $7180: $06 $88
    ld c, $0c                                     ; $7182: $0e $0c
    inc e                                         ; $7184: $1c
    inc e                                         ; $7185: $1c
    ld a, b                                       ; $7186: $78
    ld a, b                                       ; $7187: $78
    ld [hl], b                                    ; $7188: $70
    ld h, b                                       ; $7189: $60
    ld [$0600], sp                                ; $718a: $08 $00 $06
    ld bc, $0006                                  ; $718d: $01 $06 $00
    add b                                         ; $7190: $80
    add e                                         ; $7191: $83
    ld b, $70                                     ; $7192: $06 $70
    ld hl, sp-$28                                 ; $7194: $f8 $d8
    add b                                         ; $7196: $80
    db $fc                                        ; $7197: $fc
    db $fc                                        ; $7198: $fc
    inc b                                         ; $7199: $04
    nop                                           ; $719a: $00
    inc bc                                        ; $719b: $03
    ld bc, $0303                                  ; $719c: $01 $03 $03
    add [hl]                                      ; $719f: $86
    ld b, $07                                     ; $71a0: $06 $07
    rra                                           ; $71a2: $1f
    ld e, $1c                                     ; $71a3: $1e $1c
    inc e                                         ; $71a5: $1c
    inc b                                         ; $71a6: $04
    nop                                           ; $71a7: $00
    adc h                                         ; $71a8: $8c
    add c                                         ; $71a9: $81
    add c                                         ; $71aa: $81
    inc bc                                        ; $71ab: $03
    add e                                         ; $71ac: $83
    or e                                          ; $71ad: $b3
    inc sp                                        ; $71ae: $33
    jr nc, jr_006_71e1                            ; $71af: $30 $30

    ld a, $3e                                     ; $71b1: $3e $3e
    ld e, $1e                                     ; $71b3: $1e $1e
    inc b                                         ; $71b5: $04
    nop                                           ; $71b6: $00
    inc b                                         ; $71b7: $04
    adc l                                         ; $71b8: $8d
    adc b                                         ; $71b9: $88
    add hl, de                                    ; $71ba: $19
    adc l                                         ; $71bb: $8d
    dec e                                         ; $71bc: $1d
    add hl, de                                    ; $71bd: $19
    inc de                                        ; $71be: $13
    dec de                                        ; $71bf: $1b
    inc bc                                        ; $71c0: $03
    inc bc                                        ; $71c1: $03
    inc b                                         ; $71c2: $04
    nop                                           ; $71c3: $00
    ld [$8380], sp                                ; $71c4: $08 $80 $83
    nop                                           ; $71c7: $00
    add b                                         ; $71c8: $80
    add b                                         ; $71c9: $80
    dec b                                         ; $71ca: $05
    nop                                           ; $71cb: $00
    inc b                                         ; $71cc: $04
    ld b, $88                                     ; $71cd: $06 $88
    rlca                                          ; $71cf: $07
    inc bc                                        ; $71d0: $03
    inc bc                                        ; $71d1: $03
    ld bc, $0707                                  ; $71d2: $01 $07 $07
    ld b, $07                                     ; $71d5: $06 $07
    inc b                                         ; $71d7: $04
    nop                                           ; $71d8: $00
    adc h                                         ; $71d9: $8c
    rst RST_00                                    ; $71da: $c7
    rst RST_00                                    ; $71db: $c7
    rst RST_08                                    ; $71dc: $cf
    rst RST_08                                    ; $71dd: $cf
    call z, $8ccc                                 ; $71de: $cc $cc $8c

jr_006_71e1:
    call z, $8f8f                                 ; $71e1: $cc $8f $8f
    rlca                                          ; $71e4: $07
    rlca                                          ; $71e5: $07
    inc b                                         ; $71e6: $04
    nop                                           ; $71e7: $00
    add b                                         ; $71e8: $80
    add e                                         ; $71e9: $83
    ld b, $80                                     ; $71ea: $06 $80
    ret nz                                        ; $71ec: $c0

    ret nz                                        ; $71ed: $c0

    ret nz                                        ; $71ee: $c0

    ret nz                                        ; $71ef: $c0

    add b                                         ; $71f0: $80
    ld [$0400], sp                                ; $71f1: $08 $00 $04
    ld a, a                                       ; $71f4: $7f
    add b                                         ; $71f5: $80
    add e                                         ; $71f6: $83
    inc b                                         ; $71f7: $04
    inc bc                                        ; $71f8: $03
    dec de                                        ; $71f9: $1b
    dec de                                        ; $71fa: $1b
    rra                                           ; $71fb: $1f
    inc b                                         ; $71fc: $04
    nop                                           ; $71fd: $00
    inc c                                         ; $71fe: $0c
    ld h, e                                       ; $71ff: $63
    inc b                                         ; $7200: $04
    nop                                           ; $7201: $00
    add b                                         ; $7202: $80
    add e                                         ; $7203: $83
    inc b                                         ; $7204: $04
    jr jr_006_7285                                ; $7205: $18 $7e

    ld a, [hl]                                    ; $7207: $7e
    jr nc, @-$7c                                  ; $7208: $30 $82

    ld [hl], a                                    ; $720a: $77
    ld h, e                                       ; $720b: $63
    add b                                         ; $720c: $80
    add e                                         ; $720d: $83
    rlca                                          ; $720e: $07
    ld a, a                                       ; $720f: $7f
    ld a, [hl]                                    ; $7210: $7e
    ld a, [hl]                                    ; $7211: $7e
    jr jr_006_722c                                ; $7212: $18 $18

    ld a, [hl]                                    ; $7214: $7e
    ld a, [hl]                                    ; $7215: $7e
    inc b                                         ; $7216: $04
    nop                                           ; $7217: $00
    adc h                                         ; $7218: $8c
    ld e, $1e                                     ; $7219: $1e $1e
    jr jr_006_7235                                ; $721b: $18 $18

    jr c, jr_006_7237                             ; $721d: $38 $18

    jr nc, jr_006_7251                            ; $721f: $30 $30

    ld [hl], b                                    ; $7221: $70
    ld [hl], b                                    ; $7222: $70
    ld h, b                                       ; $7223: $60
    ld h, b                                       ; $7224: $60
    inc b                                         ; $7225: $04
    nop                                           ; $7226: $00
    add e                                         ; $7227: $83
    inc bc                                        ; $7228: $03
    inc bc                                        ; $7229: $03
    rlca                                          ; $722a: $07
    inc bc                                        ; $722b: $03

jr_006_722c:
    ld b, $86                                     ; $722c: $06 $86
    ld c, $0c                                     ; $722e: $0e $0c
    inc e                                         ; $7230: $1c
    inc e                                         ; $7231: $1c
    jr jr_006_724c                                ; $7232: $18 $18

    inc b                                         ; $7234: $04

jr_006_7235:
    nop                                           ; $7235: $00
    inc b                                         ; $7236: $04

jr_006_7237:
    ld a, [hl]                                    ; $7237: $7e
    inc c                                         ; $7238: $0c
    nop                                           ; $7239: $00
    adc h                                         ; $723a: $8c
    inc a                                         ; $723b: $3c
    jr c, jr_006_72ac                             ; $723c: $38 $6e

    ld a, h                                       ; $723e: $7c
    ld h, [hl]                                    ; $723f: $66
    ld h, [hl]                                    ; $7240: $66
    ld [hl], b                                    ; $7241: $70
    ld h, b                                       ; $7242: $60
    ld a, a                                       ; $7243: $7f
    ccf                                           ; $7244: $3f
    ccf                                           ; $7245: $3f
    rra                                           ; $7246: $1f
    ld [$0400], sp                                ; $7247: $08 $00 $04
    ld a, b                                       ; $724a: $78
    adc b                                         ; $724b: $88

jr_006_724c:
    jr nc, jr_006_727e                            ; $724c: $30 $30

    ld [hl], a                                    ; $724e: $77
    scf                                           ; $724f: $37
    ld h, a                                       ; $7250: $67

jr_006_7251:
    ld h, a                                       ; $7251: $67
    ld h, [hl]                                    ; $7252: $66
    ld h, [hl]                                    ; $7253: $66
    inc b                                         ; $7254: $04
    nop                                           ; $7255: $00
    add b                                         ; $7256: $80
    add e                                         ; $7257: $83
    ld b, $18                                     ; $7258: $06 $18
    ld a, [hl]                                    ; $725a: $7e
    ld a, [hl]                                    ; $725b: $7e
    inc c                                         ; $725c: $0c
    ccf                                           ; $725d: $3f
    ccf                                           ; $725e: $3f
    inc b                                         ; $725f: $04
    nop                                           ; $7260: $00
    inc b                                         ; $7261: $04
    ld h, b                                       ; $7262: $60
    inc b                                         ; $7263: $04
    ld hl, sp-$7c                                 ; $7264: $f8 $84
    ld h, b                                       ; $7266: $60
    ld h, b                                       ; $7267: $60
    ld l, a                                       ; $7268: $6f
    ld l, [hl]                                    ; $7269: $6e
    inc b                                         ; $726a: $04
    nop                                           ; $726b: $00
    inc b                                         ; $726c: $04
    inc c                                         ; $726d: $0c
    inc b                                         ; $726e: $04
    cp $84                                        ; $726f: $fe $84
    inc a                                         ; $7271: $3c
    inc a                                         ; $7272: $3c
    ld a, h                                       ; $7273: $7c
    ld a, h                                       ; $7274: $7c
    inc b                                         ; $7275: $04
    nop                                           ; $7276: $00
    inc b                                         ; $7277: $04
    add $04                                       ; $7278: $c6 $04
    rst RST_18                                    ; $727a: $df
    inc b                                         ; $727b: $04
    add $04                                       ; $727c: $c6 $04

jr_006_727e:
    nop                                           ; $727e: $00
    add h                                         ; $727f: $84
    ld a, b                                       ; $7280: $78
    ld a, b                                       ; $7281: $78
    ld a, e                                       ; $7282: $7b
    ld a, d                                       ; $7283: $7a
    inc b                                         ; $7284: $04

jr_006_7285:
    dec de                                        ; $7285: $1b
    add h                                         ; $7286: $84
    dec sp                                        ; $7287: $3b
    inc de                                        ; $7288: $13
    inc sp                                        ; $7289: $33
    inc sp                                        ; $728a: $33
    inc b                                         ; $728b: $04
    nop                                           ; $728c: $00
    add d                                         ; $728d: $82
    inc bc                                        ; $728e: $03
    inc bc                                        ; $728f: $03
    inc b                                         ; $7290: $04
    rrca                                          ; $7291: $0f
    add d                                         ; $7292: $82
    pop bc                                        ; $7293: $c1
    add c                                         ; $7294: $81
    inc bc                                        ; $7295: $03
    rst RST_08                                    ; $7296: $cf
    add c                                         ; $7297: $81
    ld c, a                                       ; $7298: $4f
    inc b                                         ; $7299: $04
    nop                                           ; $729a: $00
    add b                                         ; $729b: $80
    add e                                         ; $729c: $83
    ld b, $0f                                     ; $729d: $06 $0f
    rst RST_08                                    ; $729f: $cf
    add $86                                       ; $72a0: $c6 $86
    rst RST_28                                    ; $72a2: $ef
    rst RST_28                                    ; $72a3: $ef
    inc b                                         ; $72a4: $04
    nop                                           ; $72a5: $00
    adc b                                         ; $72a6: $88
    ret nz                                        ; $72a7: $c0

    ret nz                                        ; $72a8: $c0

    rst RST_08                                    ; $72a9: $cf
    rst RST_08                                    ; $72aa: $cf
    rrca                                          ; $72ab: $0f

jr_006_72ac:
    rrca                                          ; $72ac: $0f
    nop                                           ; $72ad: $00
    nop                                           ; $72ae: $00
    inc b                                         ; $72af: $04
    ret nz                                        ; $72b0: $c0

    inc b                                         ; $72b1: $04
    nop                                           ; $72b2: $00
    inc b                                         ; $72b3: $04
    rrca                                          ; $72b4: $0f
    add d                                         ; $72b5: $82
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    inc b                                         ; $72b8: $04
    ld h, c                                       ; $72b9: $61
    add d                                         ; $72ba: $82
    ld h, e                                       ; $72bb: $63
    ld h, e                                       ; $72bc: $63
    inc b                                         ; $72bd: $04
    nop                                           ; $72be: $00
    inc b                                         ; $72bf: $04
    rst RST_00                                    ; $72c0: $c7
    adc b                                         ; $72c1: $88
    add $c6                                       ; $72c2: $c6 $c6
    adc $cc                                       ; $72c4: $ce $cc
    adc h                                         ; $72c6: $8c
    adc h                                         ; $72c7: $8c
    add e                                         ; $72c8: $83
    add e                                         ; $72c9: $83
    inc b                                         ; $72ca: $04
    nop                                           ; $72cb: $00
    inc b                                         ; $72cc: $04
    ldh [rTMA], a                                 ; $72cd: $e0 $06
    ld h, b                                       ; $72cf: $60
    add d                                         ; $72d0: $82
    ldh [$ff60], a                                ; $72d1: $e0 $60
    inc b                                         ; $72d3: $04
    nop                                           ; $72d4: $00
    add d                                         ; $72d5: $82
    ld b, $06                                     ; $72d6: $06 $06
    inc b                                         ; $72d8: $04
    rra                                           ; $72d9: $1f
    add [hl]                                      ; $72da: $86
    ld c, $06                                     ; $72db: $0e $06
    dec e                                         ; $72dd: $1d
    inc c                                         ; $72de: $0c
    rra                                           ; $72df: $1f
    rra                                           ; $72e0: $1f
    ld b, $00                                     ; $72e1: $06 $00
    inc b                                         ; $72e3: $04
    ret nz                                        ; $72e4: $c0

    add d                                         ; $72e5: $82
    nop                                           ; $72e6: $00
    nop                                           ; $72e7: $00
    inc b                                         ; $72e8: $04
    ret nz                                        ; $72e9: $c0

    inc b                                         ; $72ea: $04
    nop                                           ; $72eb: $00
    inc b                                         ; $72ec: $04
    ld bc, $0704                                  ; $72ed: $01 $04 $07
    add h                                         ; $72f0: $84
    ld bc, $e101                                  ; $72f1: $01 $01 $e1
    pop bc                                        ; $72f4: $c1
    inc b                                         ; $72f5: $04
    nop                                           ; $72f6: $00
    add b                                         ; $72f7: $80
    add e                                         ; $72f8: $83
    dec b                                         ; $72f9: $05
    sbc b                                         ; $72fa: $98
    sbc h                                         ; $72fb: $9c
    db $ed                                        ; $72fc: $ed
    db $ed                                        ; $72fd: $ed
    add b                                         ; $72fe: $80
    add d                                         ; $72ff: $82
    ldh [$fff0], a                                ; $7300: $e0 $f0
    inc b                                         ; $7302: $04
    nop                                           ; $7303: $00
    inc b                                         ; $7304: $04
    call z, $fe04                                 ; $7305: $cc $04 $fe
    inc b                                         ; $7308: $04
    call z, Call_000_3306                         ; $7309: $cc $06 $33
    add [hl]                                      ; $730c: $86
    ccf                                           ; $730d: $3f
    inc sp                                        ; $730e: $33
    ccf                                           ; $730f: $3f
    ld e, $1e                                     ; $7310: $1e $1e
    inc c                                         ; $7312: $0c
    ld b, $00                                     ; $7313: $06 $00
    add b                                         ; $7315: $80
    add e                                         ; $7316: $83
    dec b                                         ; $7317: $05
    ld bc, $1819                                  ; $7318: $01 $19 $18
    rra                                           ; $731b: $1f
    rrca                                          ; $731c: $0f
    inc b                                         ; $731d: $04
    nop                                           ; $731e: $00
    ld b, $c6                                     ; $731f: $06 $c6
    add [hl]                                      ; $7321: $86
    ld b, $06                                     ; $7322: $06 $06
    add a                                         ; $7324: $87
    add a                                         ; $7325: $87
    add e                                         ; $7326: $83
    add e                                         ; $7327: $83
    ld [$8800], sp                                ; $7328: $08 $00 $88
    ld h, b                                       ; $732b: $60
    ld h, b                                       ; $732c: $60
    ld h, e                                       ; $732d: $63
    ld h, c                                       ; $732e: $61
    rst RST_28                                    ; $732f: $ef
    rst RST_28                                    ; $7330: $ef
    rst RST_08                                    ; $7331: $cf
    rst RST_08                                    ; $7332: $cf
    inc b                                         ; $7333: $04
    nop                                           ; $7334: $00
    adc h                                         ; $7335: $8c
    ld h, e                                       ; $7336: $63
    ld h, e                                       ; $7337: $63
    rst RST_20                                    ; $7338: $e7
    ld h, a                                       ; $7339: $67
    and $c6                                       ; $733a: $e6 $c6
    adc $ce                                       ; $733c: $ce $ce
    adc h                                         ; $733e: $8c
    adc h                                         ; $733f: $8c
    inc c                                         ; $7340: $0c
    inc c                                         ; $7341: $0c
    inc b                                         ; $7342: $04

jr_006_7343:
    nop                                           ; $7343: $00
    add d                                         ; $7344: $82
    add e                                         ; $7345: $83
    add e                                         ; $7346: $83
    inc b                                         ; $7347: $04
    ret nz                                        ; $7348: $c0

    add d                                         ; $7349: $82
    db $e3                                        ; $734a: $e3
    pop hl                                        ; $734b: $e1
    inc bc                                        ; $734c: $03
    ld h, a                                       ; $734d: $67
    add c                                         ; $734e: $81
    ld h, [hl]                                    ; $734f: $66
    inc b                                         ; $7350: $04
    nop                                           ; $7351: $00
    add l                                         ; $7352: $85
    rst RST_28                                    ; $7353: $ef
    rst RST_28                                    ; $7354: $ef
    rst RST_08                                    ; $7355: $cf
    rst RST_28                                    ; $7356: $ef
    ldh [$ff03], a                                ; $7357: $e0 $03
    ret nz                                        ; $7359: $c0

    add d                                         ; $735a: $82
    add b                                         ; $735b: $80
    add b                                         ; $735c: $80
    ld b, $00                                     ; $735d: $06 $00
    add b                                         ; $735f: $80
    add e                                         ; $7360: $83
    ld b, $c7                                     ; $7361: $06 $c7
    rst RST_08                                    ; $7363: $cf
    dec e                                         ; $7364: $1d
    jr jr_006_7386                                ; $7365: $18 $1f

    rrca                                          ; $7367: $0f
    ld b, $00                                     ; $7368: $06 $00
    inc b                                         ; $736a: $04
    add b                                         ; $736b: $80
    add d                                         ; $736c: $82
    nop                                           ; $736d: $00
    nop                                           ; $736e: $00
    inc b                                         ; $736f: $04
    ret nz                                        ; $7370: $c0

    inc b                                         ; $7371: $04
    nop                                           ; $7372: $00
    add l                                         ; $7373: $85
    rst RST_20                                    ; $7374: $e7
    db $e3                                        ; $7375: $e3
    cpl                                           ; $7376: $2f
    daa                                           ; $7377: $27
    rrca                                          ; $7378: $0f
    inc bc                                        ; $7379: $03
    dec c                                         ; $737a: $0d
    add h                                         ; $737b: $84
    rst RST_28                                    ; $737c: $ef
    rst RST_28                                    ; $737d: $ef
    and $e7                                       ; $737e: $e6 $e7
    inc b                                         ; $7380: $04
    nop                                           ; $7381: $00
    add e                                         ; $7382: $83
    ldh a, [$fff8]                                ; $7383: $f0 $f8
    cp b                                          ; $7385: $b8

jr_006_7386:
    dec b                                         ; $7386: $05
    sbc b                                         ; $7387: $98
    add h                                         ; $7388: $84
    jr c, jr_006_7343                             ; $7389: $38 $b8

    jr nc, jr_006_73bd                            ; $738b: $30 $30

    inc b                                         ; $738d: $04
    nop                                           ; $738e: $00
    add d                                         ; $738f: $82
    call z, Call_000_04cc                         ; $7390: $cc $cc $04
    ret nz                                        ; $7393: $c0

    add [hl]                                      ; $7394: $86
    xor $e6                                       ; $7395: $ee $e6
    cp $7e                                        ; $7397: $fe $7e
    ld a, h                                       ; $7399: $7c
    inc a                                         ; $739a: $3c
    inc b                                         ; $739b: $04
    nop                                           ; $739c: $00
    add b                                         ; $739d: $80
    add e                                         ; $739e: $83
    ld b, $78                                     ; $739f: $06 $78
    db $fc                                        ; $73a1: $fc
    call z, $fccc                                 ; $73a2: $cc $cc $fc
    ld a, b                                       ; $73a5: $78
    ld [$0800], sp                                ; $73a6: $08 $00 $08
    ld h, e                                       ; $73a9: $63
    add h                                         ; $73aa: $84
    ld h, b                                       ; $73ab: $60
    ld h, b                                       ; $73ac: $60
    ld a, b                                       ; $73ad: $78
    ld a, b                                       ; $73ae: $78
    inc b                                         ; $73af: $04
    nop                                           ; $73b0: $00
    inc b                                         ; $73b1: $04
    ld l, a                                       ; $73b2: $6f
    add [hl]                                      ; $73b3: $86
    ld h, b                                       ; $73b4: $60
    ld h, b                                       ; $73b5: $60
    ld l, a                                       ; $73b6: $6f
    ld l, a                                       ; $73b7: $6f
    rrca                                          ; $73b8: $0f
    rrca                                          ; $73b9: $0f
    ld b, $00                                     ; $73ba: $06 $00
    inc b                                         ; $73bc: $04

jr_006_73bd:
    rst RST_20                                    ; $73bd: $e7
    add d                                         ; $73be: $82
    nop                                           ; $73bf: $00
    nop                                           ; $73c0: $00
    inc b                                         ; $73c1: $04
    ldh [$ff82], a                                ; $73c2: $e0 $82
    ld h, b                                       ; $73c4: $60
    ld h, b                                       ; $73c5: $60
    inc b                                         ; $73c6: $04
    nop                                           ; $73c7: $00
    inc b                                         ; $73c8: $04
    or $04                                        ; $73c9: $f6 $04
    ld [hl], $04                                  ; $73cb: $36 $04
    jr nc, jr_006_73d3                            ; $73cd: $30 $04

    nop                                           ; $73cf: $00
    add b                                         ; $73d0: $80
    add e                                         ; $73d1: $83
    inc b                                         ; $73d2: $04

jr_006_73d3:
    ret nz                                        ; $73d3: $c0

    sbc $de                                       ; $73d4: $de $de
    ret nz                                        ; $73d6: $c0

    ld [$8200], sp                                ; $73d7: $08 $00 $82
    ld b, $06                                     ; $73da: $06 $06
    inc b                                         ; $73dc: $04
    rra                                           ; $73dd: $1f
    add [hl]                                      ; $73de: $86
    adc $c6                                       ; $73df: $ce $c6
    db $dd                                        ; $73e1: $dd
    call z, $dfdf                                 ; $73e2: $cc $df $df
    inc b                                         ; $73e5: $04
    nop                                           ; $73e6: $00
    inc b                                         ; $73e7: $04
    inc c                                         ; $73e8: $0c
    inc b                                         ; $73e9: $04
    rra                                           ; $73ea: $1f
    add h                                         ; $73eb: $84
    inc c                                         ; $73ec: $0c
    inc c                                         ; $73ed: $0c
    dec c                                         ; $73ee: $0d
    dec c                                         ; $73ef: $0d
    inc b                                         ; $73f0: $04
    nop                                           ; $73f1: $00
    inc b                                         ; $73f2: $04
    ld bc, $0704                                  ; $73f3: $01 $04 $07
    add h                                         ; $73f6: $84
    ld bc, $e101                                  ; $73f7: $01 $01 $e1
    pop bc                                        ; $73fa: $c1
    inc b                                         ; $73fb: $04
    nop                                           ; $73fc: $00
    add b                                         ; $73fd: $80
    add e                                         ; $73fe: $83
    dec b                                         ; $73ff: $05
    sbc b                                         ; $7400: $98
    sbc h                                         ; $7401: $9c
    db $ed                                        ; $7402: $ed
    db $ed                                        ; $7403: $ed
    add b                                         ; $7404: $80
    add d                                         ; $7405: $82
    ldh [$fff0], a                                ; $7406: $e0 $f0
    inc b                                         ; $7408: $04
    nop                                           ; $7409: $00
    inc b                                         ; $740a: $04
    call z, $fe04                                 ; $740b: $cc $04 $fe
    inc b                                         ; $740e: $04
    call z, $8380                                 ; $740f: $cc $80 $83
    ld b, $7e                                     ; $7412: $06 $7e
    ld l, a                                       ; $7414: $6f
    ld h, e                                       ; $7415: $63
    ld h, b                                       ; $7416: $60
    ld h, b                                       ; $7417: $60
    ld h, b                                       ; $7418: $60
    ld a, [bc]                                    ; $7419: $0a
    nop                                           ; $741a: $00
    add d                                         ; $741b: $82
    inc bc                                        ; $741c: $03
    ld bc, $0703                                  ; $741d: $01 $03 $07
    add c                                         ; $7420: $81
    ld b, $04                                     ; $7421: $06 $04
    nop                                           ; $7423: $00
    add l                                         ; $7424: $85
    ld h, b                                       ; $7425: $60
    ld h, b                                       ; $7426: $60
    ldh [$ff60], a                                ; $7427: $e0 $60
    ldh [$ff03], a                                ; $7429: $e0 $03
    ret nz                                        ; $742b: $c0

    add h                                         ; $742c: $84
    add a                                         ; $742d: $87
    add a                                         ; $742e: $87
    rlca                                          ; $742f: $07
    rlca                                          ; $7430: $07
    inc b                                         ; $7431: $04

jr_006_7432:
    nop                                           ; $7432: $00
    ld [$0430], sp                                ; $7433: $08 $30 $04
    ldh a, [rTMA]                                 ; $7436: $f0 $06
    nop                                           ; $7438: $00
    adc d                                         ; $7439: $8a
    ld bc, $0100                                  ; $743a: $01 $00 $01
    ld bc, $0307                                  ; $743d: $01 $07 $03
    rra                                           ; $7440: $1f
    rra                                           ; $7441: $1f
    ld e, $1e                                     ; $7442: $1e $1e
    inc b                                         ; $7444: $04
    nop                                           ; $7445: $00
    adc h                                         ; $7446: $8c
    rst RST_00                                    ; $7447: $c7
    rst RST_00                                    ; $7448: $c7
    rst RST_08                                    ; $7449: $cf
    rst RST_08                                    ; $744a: $cf
    db $dd                                        ; $744b: $dd
    sbc l                                         ; $744c: $9d
    sbc b                                         ; $744d: $98
    sbc b                                         ; $744e: $98
    rra                                           ; $744f: $1f
    rra                                           ; $7450: $1f
    rrca                                          ; $7451: $0f
    rrca                                          ; $7452: $0f
    inc b                                         ; $7453: $04
    nop                                           ; $7454: $00
    add b                                         ; $7455: $80
    add e                                         ; $7456: $83
    dec b                                         ; $7457: $05
    dec c                                         ; $7458: $0d
    inc c                                         ; $7459: $0c
    inc c                                         ; $745a: $0c
    dec c                                         ; $745b: $0d
    dec c                                         ; $745c: $0d
    add d                                         ; $745d: $82
    dec c                                         ; $745e: $0d
    inc c                                         ; $745f: $0c
    inc b                                         ; $7460: $04
    nop                                           ; $7461: $00
    add l                                         ; $7462: $85
    rst RST_20                                    ; $7463: $e7
    db $e3                                        ; $7464: $e3
    cpl                                           ; $7465: $2f
    daa                                           ; $7466: $27
    rrca                                          ; $7467: $0f
    inc bc                                        ; $7468: $03
    dec c                                         ; $7469: $0d
    add h                                         ; $746a: $84
    rst RST_28                                    ; $746b: $ef
    rst RST_28                                    ; $746c: $ef
    and $e7                                       ; $746d: $e6 $e7
    inc b                                         ; $746f: $04
    nop                                           ; $7470: $00
    add e                                         ; $7471: $83
    ldh a, [$fff8]                                ; $7472: $f0 $f8
    cp b                                          ; $7474: $b8
    dec b                                         ; $7475: $05
    sbc b                                         ; $7476: $98
    add h                                         ; $7477: $84
    jr c, jr_006_7432                             ; $7478: $38 $b8

    jr nc, jr_006_74ac                            ; $747a: $30 $30

    inc b                                         ; $747c: $04
    nop                                           ; $747d: $00
    add d                                         ; $747e: $82
    call z, Call_000_04cc                         ; $747f: $cc $cc $04
    ret nz                                        ; $7482: $c0

    add [hl]                                      ; $7483: $86
    xor $e6                                       ; $7484: $ee $e6
    cp $7e                                        ; $7486: $fe $7e
    ld a, h                                       ; $7488: $7c
    inc a                                         ; $7489: $3c
    inc b                                         ; $748a: $04
    nop                                           ; $748b: $00
    add b                                         ; $748c: $80
    add e                                         ; $748d: $83
    ld b, $78                                     ; $748e: $06 $78
    db $fc                                        ; $7490: $fc
    call z, $fccc                                 ; $7491: $cc $cc $fc
    ld a, b                                       ; $7494: $78
    ld [$0400], sp                                ; $7495: $08 $00 $04
    ccf                                           ; $7498: $3f
    inc b                                         ; $7499: $04
    inc sp                                        ; $749a: $33
    add h                                         ; $749b: $84
    ld h, e                                       ; $749c: $63
    ld [hl], e                                    ; $749d: $73
    ld h, e                                       ; $749e: $63
    ld h, e                                       ; $749f: $63
    inc b                                         ; $74a0: $04
    nop                                           ; $74a1: $00
    inc b                                         ; $74a2: $04
    ld a, [hl]                                    ; $74a3: $7e
    ld [$0418], sp                                ; $74a4: $08 $18 $04
    nop                                           ; $74a7: $00
    inc b                                         ; $74a8: $04
    ld a, [hl]                                    ; $74a9: $7e
    add b                                         ; $74aa: $80
    add e                                         ; $74ab: $83

jr_006_74ac:
    inc b                                         ; $74ac: $04
    ld b, $0e                                     ; $74ad: $06 $0e
    inc c                                         ; $74af: $0c
    inc e                                         ; $74b0: $1c
    inc b                                         ; $74b1: $04
    nop                                           ; $74b2: $00
    ld a, [bc]                                    ; $74b3: $0a
    ld h, b                                       ; $74b4: $60
    add b                                         ; $74b5: $80
    add e                                         ; $74b6: $83
    rlca                                          ; $74b7: $07
    ld a, b                                       ; $74b8: $78
    inc bc                                        ; $74b9: $03
    rlca                                          ; $74ba: $07
    ld b, $0e                                     ; $74bb: $06 $0e
    inc a                                         ; $74bd: $3c
    jr c, jr_006_74c4                             ; $74be: $38 $04

    nop                                           ; $74c0: $00
    ld [$0418], sp                                ; $74c1: $08 $18 $04

jr_006_74c4:
    rst RST_38                                    ; $74c4: $ff
    inc b                                         ; $74c5: $04
    nop                                           ; $74c6: $00
    add b                                         ; $74c7: $80
    add e                                         ; $74c8: $83
    ld b, $1c                                     ; $74c9: $06 $1c
    ld a, $36                                     ; $74cb: $3e $36
    ld [hl], a                                    ; $74cd: $77
    ld h, e                                       ; $74ce: $63
    ld h, e                                       ; $74cf: $63
    inc b                                         ; $74d0: $04
    nop                                           ; $74d1: $00
    add b                                         ; $74d2: $80
    add e                                         ; $74d3: $83
    ld b, $7e                                     ; $74d4: $06 $7e
    ld l, [hl]                                    ; $74d6: $6e
    ld h, b                                       ; $74d7: $60
    ld h, b                                       ; $74d8: $60
    ld h, b                                       ; $74d9: $60
    ld h, b                                       ; $74da: $60
    ld [$0c00], sp                                ; $74db: $08 $00 $0c
    inc bc                                        ; $74de: $03
    ld a, [bc]                                    ; $74df: $0a
    nop                                           ; $74e0: $00
    add [hl]                                      ; $74e1: $86
    ld bc, $0100                                  ; $74e2: $01 $00 $01
    ld bc, $1919                                  ; $74e5: $01 $19 $19
    inc b                                         ; $74e8: $04
    nop                                           ; $74e9: $00
    inc b                                         ; $74ea: $04
    dec c                                         ; $74eb: $0d
    adc b                                         ; $74ec: $88
    db $ed                                        ; $74ed: $ed
    call $eded                                    ; $74ee: $cd $ed $ed
    ldh [$fff0], a                                ; $74f1: $e0 $f0
    ldh a, [$ffb0]                                ; $74f3: $f0 $b0
    inc b                                         ; $74f5: $04
    nop                                           ; $74f6: $00
    inc b                                         ; $74f7: $04
    add [hl]                                      ; $74f8: $86
    inc b                                         ; $74f9: $04
    or [hl]                                       ; $74fa: $b6
    inc b                                         ; $74fb: $04

Call_006_74fc:
    ld [hl], $0c                                  ; $74fc: $36 $0c
    inc bc                                        ; $74fe: $03
    inc b                                         ; $74ff: $04
    nop                                           ; $7500: $00
    adc h                                         ; $7501: $8c
    dec de                                        ; $7502: $1b
    add hl, de                                    ; $7503: $19
    inc sp                                        ; $7504: $33
    dec sp                                        ; $7505: $3b
    ld [hl], e                                    ; $7506: $73
    ld [hl], e                                    ; $7507: $73
    ldh [$ffe0], a                                ; $7508: $e0 $e0
    ret nz                                        ; $750a: $c0

    ret nz                                        ; $750b: $c0

    nop                                           ; $750c: $00
    add b                                         ; $750d: $80
    inc b                                         ; $750e: $04
    nop                                           ; $750f: $00
    adc d                                         ; $7510: $8a
    or b                                          ; $7511: $b0
    cp b                                          ; $7512: $b8
    sbc b                                         ; $7513: $98
    jr jr_006_752e                                ; $7514: $18 $18

    inc e                                         ; $7516: $1c
    inc c                                         ; $7517: $0c
    inc c                                         ; $7518: $0c
    ld c, $0c                                     ; $7519: $0e $0c
    ld b, $00                                     ; $751b: $06 $00
    ld b, $36                                     ; $751d: $06 $36
    add [hl]                                      ; $751f: $86
    ld h, a                                       ; $7520: $67
    scf                                           ; $7521: $37
    ld [hl], a                                    ; $7522: $77
    ld h, a                                       ; $7523: $67
    ld b, [hl]                                    ; $7524: $46
    ld h, a                                       ; $7525: $67
    inc b                                         ; $7526: $04
    nop                                           ; $7527: $00
    ld b, $c0                                     ; $7528: $06 $c0
    add h                                         ; $752a: $84
    add b                                         ; $752b: $80
    ret nz                                        ; $752c: $c0

    add b                                         ; $752d: $80

jr_006_752e:
    add b                                         ; $752e: $80
    ld a, [bc]                                    ; $752f: $0a
    nop                                           ; $7530: $00
    adc h                                         ; $7531: $8c
    ld h, e                                       ; $7532: $63
    ld h, e                                       ; $7533: $63
    ld h, a                                       ; $7534: $67
    ld h, e                                       ; $7535: $63
    ld h, [hl]                                    ; $7536: $66
    ld h, a                                       ; $7537: $67
    ld l, [hl]                                    ; $7538: $6e
    ld h, [hl]                                    ; $7539: $66
    ld l, h                                       ; $753a: $6c
    ld l, [hl]                                    ; $753b: $6e
    ld a, h                                       ; $753c: $7c
    ld a, h                                       ; $753d: $7c
    inc b                                         ; $753e: $04
    nop                                           ; $753f: $00
    inc b                                         ; $7540: $04
    ld h, e                                       ; $7541: $63
    inc b                                         ; $7542: $04
    ld [hl], e                                    ; $7543: $73
    inc b                                         ; $7544: $04
    ld a, e                                       ; $7545: $7b
    inc b                                         ; $7546: $04
    nop                                           ; $7547: $00
    add l                                         ; $7548: $85
    ld a, $3e                                     ; $7549: $3e $3e
    ld a, a                                       ; $754b: $7f
    ld a, a                                       ; $754c: $7f
    ld [hl], a                                    ; $754d: $77
    rlca                                          ; $754e: $07
    ld h, e                                       ; $754f: $63
    add e                                         ; $7550: $83
    ld a, h                                       ; $7551: $7c
    ld a, h                                       ; $7552: $7c
    ld l, h                                       ; $7553: $6c
    add b                                         ; $7554: $80
    add e                                         ; $7555: $83
    inc b                                         ; $7556: $04
    ld l, [hl]                                    ; $7557: $6e
    ld h, [hl]                                    ; $7558: $66
    ld h, a                                       ; $7559: $67
    ld h, e                                       ; $755a: $63
    add c                                         ; $755b: $81
    ld h, e                                       ; $755c: $63
    inc b                                         ; $755d: $04
    nop                                           ; $755e: $00
    inc b                                         ; $755f: $04
    ld l, a                                       ; $7560: $6f
    inc b                                         ; $7561: $04
    ld h, a                                       ; $7562: $67
    inc b                                         ; $7563: $04
    ld h, e                                       ; $7564: $63
    inc b                                         ; $7565: $04
    nop                                           ; $7566: $00
    ld b, $63                                     ; $7567: $06 $63
    add [hl]                                      ; $7569: $86
    ld [hl], a                                    ; $756a: $77
    ld h, e                                       ; $756b: $63
    ld a, a                                       ; $756c: $7f
    ld a, a                                       ; $756d: $7f
    ld a, $3e                                     ; $756e: $3e $3e
    inc c                                         ; $7570: $0c
    nop                                           ; $7571: $00
    adc b                                         ; $7572: $88
    inc bc                                        ; $7573: $03
    inc bc                                        ; $7574: $03
    rrca                                          ; $7575: $0f
    inc c                                         ; $7576: $0c
    inc a                                         ; $7577: $3c
    jr nc, jr_006_75aa                            ; $7578: $30 $30

    jr nz, jr_006_757c                            ; $757a: $20 $00

jr_006_757c:
    ld b, $00                                     ; $757c: $06 $00
    adc d                                         ; $757e: $8a
    ld a, e                                       ; $757f: $7b
    ld a, e                                       ; $7580: $7b
    ei                                            ; $7581: $fb
    adc d                                         ; $7582: $8a
    sbc e                                         ; $7583: $9b
    ld a, [bc]                                    ; $7584: $0a
    rrca                                          ; $7585: $0f
    ld b, $0f                                     ; $7586: $06 $0f
    ld b, $06                                     ; $7588: $06 $06
    nop                                           ; $758a: $00
    adc c                                         ; $758b: $89
    ldh a, [$fff0]                                ; $758c: $f0 $f0
    cp $0e                                        ; $758e: $fe $0e
    dec e                                         ; $7590: $1d
    inc bc                                        ; $7591: $03
    rlca                                          ; $7592: $07
    nop                                           ; $7593: $00
    rlca                                          ; $7594: $07
    dec bc                                        ; $7595: $0b
    nop                                           ; $7596: $00
    xor a                                         ; $7597: $af
    add b                                         ; $7598: $80
    add b                                         ; $7599: $80
    ld b, b                                       ; $759a: $40
    ret nz                                        ; $759b: $c0

    and b                                         ; $759c: $a0
    ld h, b                                       ; $759d: $60
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    ld bc, $0301                                  ; $75a0: $01 $01 $03
    ld [bc], a                                    ; $75a3: $02
    inc bc                                        ; $75a4: $03
    ld [bc], a                                    ; $75a5: $02
    rlca                                          ; $75a6: $07
    inc b                                         ; $75a7: $04
    rlca                                          ; $75a8: $07
    inc b                                         ; $75a9: $04

jr_006_75aa:
    rlca                                          ; $75aa: $07
    inc b                                         ; $75ab: $04
    rrca                                          ; $75ac: $0f
    ld [$a0b0], sp                                ; $75ad: $08 $b0 $a0
    ldh [$ffc0], a                                ; $75b0: $e0 $c0
    ldh [$ffc0], a                                ; $75b2: $e0 $c0
    ldh [$ffc0], a                                ; $75b4: $e0 $c0
    ret nz                                        ; $75b6: $c0

    add b                                         ; $75b7: $80
    ret nz                                        ; $75b8: $c0

    add b                                         ; $75b9: $80
    ret nz                                        ; $75ba: $c0

    add b                                         ; $75bb: $80
    ret nz                                        ; $75bc: $c0

    add b                                         ; $75bd: $80
    rrca                                          ; $75be: $0f
    ld b, $07                                     ; $75bf: $06 $07
    ld [bc], a                                    ; $75c1: $02
    rlca                                          ; $75c2: $07
    ld [bc], a                                    ; $75c3: $02
    rlca                                          ; $75c4: $07
    ld [bc], a                                    ; $75c5: $02
    inc bc                                        ; $75c6: $03
    rlca                                          ; $75c7: $07
    nop                                           ; $75c8: $00
    add b                                         ; $75c9: $80
    add c                                         ; $75ca: $81
    ld [$0303], sp                                ; $75cb: $08 $03 $03
    inc bc                                        ; $75ce: $03
    inc bc                                        ; $75cf: $03
    inc bc                                        ; $75d0: $03
    inc bc                                        ; $75d1: $03
    inc bc                                        ; $75d2: $03
    inc bc                                        ; $75d3: $03
    sub b                                         ; $75d4: $90
    or b                                          ; $75d5: $b0
    ld [hl], b                                    ; $75d6: $70
    ldh a, [$ff30]                                ; $75d7: $f0 $30
    add sp, $38                                   ; $75d9: $e8 $38
    add sp, $38                                   ; $75db: $e8 $38
    add sp, $18                                   ; $75dd: $e8 $18
    db $e4                                        ; $75df: $e4
    inc e                                         ; $75e0: $1c
    db $e4                                        ; $75e1: $e4
    inc e                                         ; $75e2: $1c
    db $e4                                        ; $75e3: $e4
    inc e                                         ; $75e4: $1c
    ld [$8800], sp                                ; $75e5: $08 $00 $88
    ld bc, $0301                                  ; $75e8: $01 $01 $03
    ld [bc], a                                    ; $75eb: $02
    ld b, $04                                     ; $75ec: $06 $04
    inc bc                                        ; $75ee: $03
    ld [bc], a                                    ; $75ef: $02
    ld b, $00                                     ; $75f0: $06 $00
    adc c                                         ; $75f2: $89
    ld a, [hl]                                    ; $75f3: $7e
    ld a, [hl]                                    ; $75f4: $7e
    rst RST_38                                    ; $75f5: $ff
    add c                                         ; $75f6: $81
    add a                                         ; $75f7: $87
    nop                                           ; $75f8: $00
    rlca                                          ; $75f9: $07
    nop                                           ; $75fa: $00
    inc bc                                        ; $75fb: $03
    add hl, bc                                    ; $75fc: $09
    nop                                           ; $75fd: $00
    sbc c                                         ; $75fe: $99
    add b                                         ; $75ff: $80
    add b                                         ; $7600: $80
    ret nz                                        ; $7601: $c0

    ld b, b                                       ; $7602: $40
    and b                                         ; $7603: $a0
    ld h, b                                       ; $7604: $60
    sub b                                         ; $7605: $90
    ld [hl], b                                    ; $7606: $70
    rrca                                          ; $7607: $0f
    ld [$080e], sp                                ; $7608: $08 $0e $08
    ld c, $08                                     ; $760b: $0e $08
    ld c, $08                                     ; $760d: $0e $08
    ld c, $08                                     ; $760f: $0e $08
    ld c, $08                                     ; $7611: $0e $08
    ld c, $08                                     ; $7613: $0e $08
    ld c, $08                                     ; $7615: $0e $08
    add b                                         ; $7617: $80
    rrca                                          ; $7618: $0f
    nop                                           ; $7619: $00
    add b                                         ; $761a: $80
    add c                                         ; $761b: $81
    ld [$0303], sp                                ; $761c: $08 $03 $03
    inc bc                                        ; $761f: $03
    rlca                                          ; $7620: $07
    rlca                                          ; $7621: $07
    rlca                                          ; $7622: $07
    rlca                                          ; $7623: $07
    rlca                                          ; $7624: $07
    sub b                                         ; $7625: $90
    db $e4                                        ; $7626: $e4
    inc e                                         ; $7627: $1c
    db $e4                                        ; $7628: $e4
    inc e                                         ; $7629: $1c
    db $e4                                        ; $762a: $e4
    inc e                                         ; $762b: $1c
    db $e4                                        ; $762c: $e4
    inc e                                         ; $762d: $1c
    rst RST_20                                    ; $762e: $e7
    rra                                           ; $762f: $1f
    rst RST_20                                    ; $7630: $e7
    inc e                                         ; $7631: $1c
    rst RST_20                                    ; $7632: $e7
    inc e                                         ; $7633: $1c
    rst RST_08                                    ; $7634: $cf
    jr c, @+$06                                   ; $7635: $38 $04

    nop                                           ; $7637: $00
    adc c                                         ; $7638: $89
    ld bc, $1f01                                  ; $7639: $01 $01 $1f
    ld e, $fe                                     ; $763c: $1e $fe
    ldh [$ffe0], a                                ; $763e: $e0 $e0
    nop                                           ; $7640: $00
    add b                                         ; $7641: $80
    dec b                                         ; $7642: $05
    nop                                           ; $7643: $00
    sub b                                         ; $7644: $90
    rrca                                          ; $7645: $0f
    rrca                                          ; $7646: $0f
    rst RST_28                                    ; $7647: $ef
    add sp, -$14                                  ; $7648: $e8 $ec
    jr z, jr_006_76b8                             ; $764a: $28 $6c

    jr z, jr_006_76ba                             ; $764c: $28 $6c

    jr z, @+$3e                                   ; $764e: $28 $3c

    jr jr_006_768e                                ; $7650: $18 $3c

    jr jr_006_7654                                ; $7652: $18 $00

jr_006_7654:
    nop                                           ; $7654: $00
    inc bc                                        ; $7655: $03
    rst RST_38                                    ; $7656: $ff
    dec c                                         ; $7657: $0d
    nop                                           ; $7658: $00
    adc c                                         ; $7659: $89
    add b                                         ; $765a: $80
    add b                                         ; $765b: $80
    rst RST_38                                    ; $765c: $ff
    ld a, a                                       ; $765d: $7f
    ld a, a                                       ; $765e: $7f
    nop                                           ; $765f: $00
    ld bc, $0100                                  ; $7660: $01 $00 $01
    dec bc                                        ; $7663: $0b
    nop                                           ; $7664: $00
    adc d                                         ; $7665: $8a
    cp b                                          ; $7666: $b8
    cp b                                          ; $7667: $b8
    cp a                                          ; $7668: $bf
    and a                                         ; $7669: $a7
    or a                                          ; $766a: $b7
    and b                                         ; $766b: $a0
    ldh [rLCDC], a                                ; $766c: $e0 $40
    ldh [rLCDC], a                                ; $766e: $e0 $40
    ld [$8700], sp                                ; $7670: $08 $00 $87

jr_006_7673:
    add b                                         ; $7673: $80
    add b                                         ; $7674: $80
    db $fc                                        ; $7675: $fc
    ld a, h                                       ; $7676: $7c
    ld a, a                                       ; $7677: $7f
    inc bc                                        ; $7678: $03

jr_006_7679:
    inc bc                                        ; $7679: $03
    dec c                                         ; $767a: $0d
    nop                                           ; $767b: $00
    inc bc                                        ; $767c: $03
    rst RST_38                                    ; $767d: $ff
    add hl, bc                                    ; $767e: $09
    nop                                           ; $767f: $00
    add a                                         ; $7680: $87
    ld bc, $3f01                                  ; $7681: $01 $01 $3f
    ld a, $fe                                     ; $7684: $3e $fe
    ret nz                                        ; $7686: $c0

    ret nz                                        ; $7687: $c0

    dec b                                         ; $7688: $05
    nop                                           ; $7689: $00
    add a                                         ; $768a: $87
    ld bc, $1f01                                  ; $768b: $01 $01 $1f

jr_006_768e:
    ld e, $fe                                     ; $768e: $1e $fe
    ldh [$ffe0], a                                ; $7690: $e0 $e0
    dec b                                         ; $7692: $05
    nop                                           ; $7693: $00
    add b                                         ; $7694: $80
    add c                                         ; $7695: $81
    inc b                                         ; $7696: $04
    inc bc                                        ; $7697: $03
    add e                                         ; $7698: $83
    add e                                         ; $7699: $83
    add c                                         ; $769a: $81
    xor b                                         ; $769b: $a8
    pop bc                                        ; $769c: $c1
    add b                                         ; $769d: $80
    pop bc                                        ; $769e: $c1
    add b                                         ; $769f: $80
    pop bc                                        ; $76a0: $c1
    add b                                         ; $76a1: $80

jr_006_76a2:
    pop bc                                        ; $76a2: $c1
    add b                                         ; $76a3: $80

jr_006_76a4:
    sub b                                         ; $76a4: $90
    ld [hl], b                                    ; $76a5: $70

jr_006_76a6:
    ret z                                         ; $76a6: $c8

    jr c, @-$36                                   ; $76a7: $38 $c8

    jr c, jr_006_7673                             ; $76a9: $38 $c8

    jr c, @-$3a                                   ; $76ab: $38 $c4

    inc a                                         ; $76ad: $3c
    call nz, $c43c                                ; $76ae: $c4 $3c $c4
    inc a                                         ; $76b1: $3c
    call nz, $0e3c                                ; $76b2: $c4 $3c $0e
    ld [$080e], sp                                ; $76b5: $08 $0e $08

jr_006_76b8:
    ld c, $08                                     ; $76b8: $0e $08

jr_006_76ba:
    ld c, $08                                     ; $76ba: $0e $08
    ld c, $08                                     ; $76bc: $0e $08
    ld c, $08                                     ; $76be: $0e $08
    ld c, $08                                     ; $76c0: $0e $08
    ld c, $08                                     ; $76c2: $0e $08
    add b                                         ; $76c4: $80
    add c                                         ; $76c5: $81
    ld [$0707], sp                                ; $76c6: $08 $07 $07
    rlca                                          ; $76c9: $07
    rrca                                          ; $76ca: $0f
    rrca                                          ; $76cb: $0f
    rrca                                          ; $76cc: $0f
    rrca                                          ; $76cd: $0f
    rrca                                          ; $76ce: $0f
    sbc c                                         ; $76cf: $99
    rst RST_08                                    ; $76d0: $cf
    jr c, jr_006_76a2                             ; $76d1: $38 $cf

    jr c, jr_006_76a4                             ; $76d3: $38 $cf

    jr c, jr_006_76a6                             ; $76d5: $38 $cf

    jr c, @-$2f                                   ; $76d7: $38 $cf

    jr c, jr_006_7679                             ; $76d9: $38 $9e

    ld [hl], b                                    ; $76db: $70
    sbc [hl]                                      ; $76dc: $9e
    ld [hl], b                                    ; $76dd: $70
    sbc [hl]                                      ; $76de: $9e
    ld [hl], b                                    ; $76df: $70
    inc a                                         ; $76e0: $3c
    jr @+$1e                                      ; $76e1: $18 $1c

    ld [$081c], sp                                ; $76e3: $08 $1c $08
    inc e                                         ; $76e6: $1c
    ld [$070c], sp                                ; $76e7: $08 $0c $07
    nop                                           ; $76ea: $00
    add e                                         ; $76eb: $83
    ldh [rLCDC], a                                ; $76ec: $e0 $40
    ld b, b                                       ; $76ee: $40
    dec c                                         ; $76ef: $0d
    nop                                           ; $76f0: $00
    or b                                          ; $76f1: $b0
    ld h, c                                       ; $76f2: $61
    ld b, b                                       ; $76f3: $40
    ld h, b                                       ; $76f4: $60
    ld b, b                                       ; $76f5: $40
    ld h, b                                       ; $76f6: $60
    ld b, b                                       ; $76f7: $40
    ld h, b                                       ; $76f8: $60
    ld b, b                                       ; $76f9: $40
    ld h, b                                       ; $76fa: $60
    ld b, b                                       ; $76fb: $40
    jr nc, jr_006_771e                            ; $76fc: $30 $20

    jr nc, jr_006_7720                            ; $76fe: $30 $20

    jr nc, jr_006_7722                            ; $7700: $30 $20

    db $e4                                        ; $7702: $e4
    inc e                                         ; $7703: $1c
    db $e4                                        ; $7704: $e4
    inc e                                         ; $7705: $1c
    db $e4                                        ; $7706: $e4
    inc e                                         ; $7707: $1c
    db $e4                                        ; $7708: $e4
    inc e                                         ; $7709: $1c
    db $e4                                        ; $770a: $e4
    inc e                                         ; $770b: $1c
    db $e4                                        ; $770c: $e4
    inc e                                         ; $770d: $1c
    db $f4                                        ; $770e: $f4
    inc c                                         ; $770f: $0c
    db $f4                                        ; $7710: $f4
    inc c                                         ; $7711: $0c
    ld c, $08                                     ; $7712: $0e $08
    rlca                                          ; $7714: $07
    inc b                                         ; $7715: $04
    rlca                                          ; $7716: $07
    inc b                                         ; $7717: $04
    rlca                                          ; $7718: $07
    inc b                                         ; $7719: $04
    rlca                                          ; $771a: $07
    inc b                                         ; $771b: $04
    rlca                                          ; $771c: $07
    inc b                                         ; $771d: $04

jr_006_771e:
    rlca                                          ; $771e: $07
    inc b                                         ; $771f: $04

jr_006_7720:
    rlca                                          ; $7720: $07
    inc b                                         ; $7721: $04

jr_006_7722:
    add b                                         ; $7722: $80
    add c                                         ; $7723: $81
    ld [$1f1f], sp                                ; $7724: $08 $1f $1f
    rra                                           ; $7727: $1f
    rra                                           ; $7728: $1f
    rra                                           ; $7729: $1f
    rra                                           ; $772a: $1f
    rra                                           ; $772b: $1f
    ccf                                           ; $772c: $3f
    pop bc                                        ; $772d: $c1
    sbc [hl]                                      ; $772e: $9e
    ld [hl], b                                    ; $772f: $70
    inc a                                         ; $7730: $3c
    ldh [$ff3c], a                                ; $7731: $e0 $3c
    ldh [$ff3c], a                                ; $7733: $e0 $3c
    ldh [$ff3c], a                                ; $7735: $e0 $3c
    ldh [$ff3c], a                                ; $7737: $e0 $3c
    ldh [$ff3c], a                                ; $7739: $e0 $3c
    ldh [$ff3c], a                                ; $773b: $e0 $3c
    ldh [$ff30], a                                ; $773d: $e0 $30
    jr nz, jr_006_7771                            ; $773f: $20 $30

    jr nz, @+$32                                  ; $7741: $20 $30

    jr nz, jr_006_7775                            ; $7743: $20 $30

    jr nz, jr_006_7777                            ; $7745: $20 $30

    jr nz, jr_006_7761                            ; $7747: $20 $18

    db $10                                        ; $7749: $10
    jr jr_006_775c                                ; $774a: $18 $10

    jr jr_006_775e                                ; $774c: $18 $10

    ld [hl], h                                    ; $774e: $74
    inc c                                         ; $774f: $0c
    ld [hl], h                                    ; $7750: $74
    inc c                                         ; $7751: $0c
    ld [hl], h                                    ; $7752: $74
    inc c                                         ; $7753: $0c
    ld [hl], h                                    ; $7754: $74
    inc c                                         ; $7755: $0c
    ld [hl], h                                    ; $7756: $74
    inc c                                         ; $7757: $0c
    ld [hl], h                                    ; $7758: $74
    inc c                                         ; $7759: $0c
    ld [hl], h                                    ; $775a: $74
    inc c                                         ; $775b: $0c

jr_006_775c:
    ld [hl], h                                    ; $775c: $74
    inc c                                         ; $775d: $0c

jr_006_775e:
    rlca                                          ; $775e: $07
    inc b                                         ; $775f: $04
    inc bc                                        ; $7760: $03

jr_006_7761:
    ld [bc], a                                    ; $7761: $02
    inc bc                                        ; $7762: $03
    ld [bc], a                                    ; $7763: $02
    inc bc                                        ; $7764: $03
    ld [bc], a                                    ; $7765: $02
    inc bc                                        ; $7766: $03
    ld [bc], a                                    ; $7767: $02
    inc bc                                        ; $7768: $03
    ld [bc], a                                    ; $7769: $02
    inc bc                                        ; $776a: $03
    ld [bc], a                                    ; $776b: $02
    inc bc                                        ; $776c: $03
    ld [bc], a                                    ; $776d: $02
    nop                                           ; $776e: $00
    add b                                         ; $776f: $80
    add d                                         ; $7770: $82

jr_006_7771:
    ld [$8080], sp                                ; $7771: $08 $80 $80
    add b                                         ; $7774: $80

jr_006_7775:
    add b                                         ; $7775: $80
    add b                                         ; $7776: $80

jr_006_7777:
    add b                                         ; $7777: $80
    add b                                         ; $7778: $80
    ld a, $c5                                     ; $7779: $3e $c5
    ld bc, $013e                                  ; $777b: $01 $3e $01
    ld a, $01                                     ; $777e: $3e $01
    ld a, $01                                     ; $7780: $3e $01
    ld a, $01                                     ; $7782: $3e $01
    ld a, $01                                     ; $7784: $3e $01
    ld a, $01                                     ; $7786: $3e $01
    ld a, [hl]                                    ; $7788: $7e
    ld bc, $c078                                  ; $7789: $01 $78 $c0
    ld a, b                                       ; $778c: $78
    ret nz                                        ; $778d: $c0

    ld a, b                                       ; $778e: $78
    ret nz                                        ; $778f: $c0

    ld a, b                                       ; $7790: $78
    ret nz                                        ; $7791: $c0

    ld a, b                                       ; $7792: $78
    ret nz                                        ; $7793: $c0

    ld a, b                                       ; $7794: $78
    ret nz                                        ; $7795: $c0

    ld a, b                                       ; $7796: $78
    ret nz                                        ; $7797: $c0

    ld a, b                                       ; $7798: $78
    ret nz                                        ; $7799: $c0

    jr jr_006_77ac                                ; $779a: $18 $10

    jr jr_006_77ae                                ; $779c: $18 $10

    jr jr_006_77b0                                ; $779e: $18 $10

    jr jr_006_77b2                                ; $77a0: $18 $10

    jr jr_006_77b4                                ; $77a2: $18 $10

    jr jr_006_77b6                                ; $77a4: $18 $10

    jr jr_006_77b8                                ; $77a6: $18 $10

    jr jr_006_77ba                                ; $77a8: $18 $10

    ld [hl], h                                    ; $77aa: $74
    inc c                                         ; $77ab: $0c

jr_006_77ac:
    ld [hl], h                                    ; $77ac: $74
    inc c                                         ; $77ad: $0c

jr_006_77ae:
    inc [hl]                                      ; $77ae: $34
    inc c                                         ; $77af: $0c

jr_006_77b0:
    inc [hl]                                      ; $77b0: $34
    inc c                                         ; $77b1: $0c

jr_006_77b2:
    inc [hl]                                      ; $77b2: $34
    inc c                                         ; $77b3: $0c

jr_006_77b4:
    inc [hl]                                      ; $77b4: $34
    inc c                                         ; $77b5: $0c

jr_006_77b6:
    inc [hl]                                      ; $77b6: $34
    inc c                                         ; $77b7: $0c

jr_006_77b8:
    inc [hl]                                      ; $77b8: $34
    inc c                                         ; $77b9: $0c

jr_006_77ba:
    inc bc                                        ; $77ba: $03
    ld [bc], a                                    ; $77bb: $02
    inc bc                                        ; $77bc: $03
    ld [bc], a                                    ; $77bd: $02
    inc bc                                        ; $77be: $03
    ld [bc], a                                    ; $77bf: $02
    ld a, [bc]                                    ; $77c0: $0a
    ld bc, $8180                                  ; $77c1: $01 $80 $81
    ld [$8080], sp                                ; $77c4: $08 $80 $80
    add b                                         ; $77c7: $80
    ret nz                                        ; $77c8: $c0

    ret nz                                        ; $77c9: $c0

    ret nz                                        ; $77ca: $c0

    ret nz                                        ; $77cb: $c0

    ret nz                                        ; $77cc: $c0

    and d                                         ; $77cd: $a2
    ld a, h                                       ; $77ce: $7c
    inc bc                                        ; $77cf: $03
    ld a, h                                       ; $77d0: $7c
    inc bc                                        ; $77d1: $03
    ld a, h                                       ; $77d2: $7c
    inc bc                                        ; $77d3: $03
    ld a, h                                       ; $77d4: $7c
    inc bc                                        ; $77d5: $03
    ld a, h                                       ; $77d6: $7c
    inc bc                                        ; $77d7: $03
    ld a, h                                       ; $77d8: $7c
    inc bc                                        ; $77d9: $03
    ld a, h                                       ; $77da: $7c
    inc bc                                        ; $77db: $03
    ld a, h                                       ; $77dc: $7c
    inc bc                                        ; $77dd: $03
    ldh a, [$ff80]                                ; $77de: $f0 $80
    ldh a, [$ff80]                                ; $77e0: $f0 $80
    ldh a, [$ff80]                                ; $77e2: $f0 $80
    ldh a, [$ff80]                                ; $77e4: $f0 $80
    ldh a, [$ff80]                                ; $77e6: $f0 $80
    ldh a, [$ff80]                                ; $77e8: $f0 $80
    ldh a, [$ff80]                                ; $77ea: $f0 $80
    ldh a, [$ff80]                                ; $77ec: $f0 $80
    inc bc                                        ; $77ee: $03
    ld [bc], a                                    ; $77ef: $02
    inc b                                         ; $77f0: $04
    ld bc, $b9aa                                  ; $77f1: $01 $aa $b9
    cp c                                          ; $77f4: $b9
    cp a                                          ; $77f5: $bf
    and a                                         ; $77f6: $a7
    or a                                          ; $77f7: $b7
    and b                                         ; $77f8: $a0
    ldh [rLCDC], a                                ; $77f9: $e0 $40
    ldh [rLCDC], a                                ; $77fb: $e0 $40
    inc c                                         ; $77fd: $0c
    ld [$080c], sp                                ; $77fe: $08 $0c $08
    inc c                                         ; $7801: $0c
    ld [$080c], sp                                ; $7802: $08 $0c $08
    inc c                                         ; $7805: $0c
    ld [$080c], sp                                ; $7806: $08 $0c $08
    inc c                                         ; $7809: $0c
    ld [$080c], sp                                ; $780a: $08 $0c $08
    inc [hl]                                      ; $780d: $34
    inc c                                         ; $780e: $0c
    inc [hl]                                      ; $780f: $34
    inc c                                         ; $7810: $0c
    inc [hl]                                      ; $7811: $34
    inc c                                         ; $7812: $0c
    inc [hl]                                      ; $7813: $34
    inc c                                         ; $7814: $0c
    inc [hl]                                      ; $7815: $34
    inc c                                         ; $7816: $0c
    inc [hl]                                      ; $7817: $34
    inc c                                         ; $7818: $0c
    inc [hl]                                      ; $7819: $34
    inc c                                         ; $781a: $0c
    inc [hl]                                      ; $781b: $34
    inc c                                         ; $781c: $0c
    db $10                                        ; $781d: $10
    ld bc, $8180                                  ; $781e: $01 $80 $81
    ld [$c0c0], sp                                ; $7821: $08 $c0 $c0
    ret nz                                        ; $7824: $c0

    ret nz                                        ; $7825: $c0

    ret nz                                        ; $7826: $c0

    ret nz                                        ; $7827: $c0

    ret nz                                        ; $7828: $c0

    ret nz                                        ; $7829: $c0

    or h                                          ; $782a: $b4
    ld a, h                                       ; $782b: $7c
    inc bc                                        ; $782c: $03
    ld a, $01                                     ; $782d: $3e $01
    ld a, $01                                     ; $782f: $3e $01
    ld a, $01                                     ; $7831: $3e $01
    ld a, $01                                     ; $7833: $3e $01
    ld a, $01                                     ; $7835: $3e $01
    ld a, $01                                     ; $7837: $3e $01
    ld a, $01                                     ; $7839: $3e $01
    ldh a, [$ff80]                                ; $783b: $f0 $80
    ld a, b                                       ; $783d: $78
    ret nz                                        ; $783e: $c0

    ld a, b                                       ; $783f: $78
    ret nz                                        ; $7840: $c0

    ld a, b                                       ; $7841: $78
    ret nz                                        ; $7842: $c0

    ld a, b                                       ; $7843: $78
    ret nz                                        ; $7844: $c0

    ld a, b                                       ; $7845: $78
    ret nz                                        ; $7846: $c0

    ld a, b                                       ; $7847: $78
    ret nz                                        ; $7848: $c0

    ld a, b                                       ; $7849: $78
    ret nz                                        ; $784a: $c0

    jr jr_006_785d                                ; $784b: $18 $10

    jr jr_006_785f                                ; $784d: $18 $10

    jr jr_006_7861                                ; $784f: $18 $10

    jr jr_006_7863                                ; $7851: $18 $10

    jr jr_006_7865                                ; $7853: $18 $10

    jr jr_006_7867                                ; $7855: $18 $10

    jr jr_006_7869                                ; $7857: $18 $10

    jr jr_006_786b                                ; $7859: $18 $10

    ld a, $01                                     ; $785b: $3e $01

jr_006_785d:
    ld a, $01                                     ; $785d: $3e $01

jr_006_785f:
    add b                                         ; $785f: $80
    add c                                         ; $7860: $81

jr_006_7861:
    ld b, $1f                                     ; $7861: $06 $1f

jr_006_7863:
    rra                                           ; $7863: $1f
    rra                                           ; $7864: $1f

jr_006_7865:
    rra                                           ; $7865: $1f
    rra                                           ; $7866: $1f

jr_006_7867:
    rra                                           ; $7867: $1f
    and b                                         ; $7868: $a0

jr_006_7869:
    ld a, b                                       ; $7869: $78
    ret nz                                        ; $786a: $c0

jr_006_786b:
    ld a, b                                       ; $786b: $78
    ret nz                                        ; $786c: $c0

    inc a                                         ; $786d: $3c
    ldh [$ff3c], a                                ; $786e: $e0 $3c
    ldh [$ff3c], a                                ; $7870: $e0 $3c
    ldh [$ff3c], a                                ; $7872: $e0 $3c
    ldh [$ff3c], a                                ; $7874: $e0 $3c
    ldh [$ff3c], a                                ; $7876: $e0 $3c
    ldh [rNR23], a                                ; $7878: $e0 $18
    db $10                                        ; $787a: $10
    jr @+$12                                      ; $787b: $18 $10

    jr jr_006_788f                                ; $787d: $18 $10

    jr jr_006_7891                                ; $787f: $18 $10

    jr jr_006_7893                                ; $7881: $18 $10

    jr jr_006_7895                                ; $7883: $18 $10

    jr jr_006_7897                                ; $7885: $18 $10

    jr jr_006_7899                                ; $7887: $18 $10

    inc b                                         ; $7889: $04
    nop                                           ; $788a: $00
    adc h                                         ; $788b: $8c
    ld b, $00                                     ; $788c: $06 $00
    rlca                                          ; $788e: $07

jr_006_788f:
    ld [bc], a                                    ; $788f: $02
    rlca                                          ; $7890: $07

jr_006_7891:
    ld [bc], a                                    ; $7891: $02
    rlca                                          ; $7892: $07

jr_006_7893:
    ld [bc], a                                    ; $7893: $02
    rlca                                          ; $7894: $07

jr_006_7895:
    ld [bc], a                                    ; $7895: $02
    rlca                                          ; $7896: $07

jr_006_7897:
    inc bc                                        ; $7897: $03
    add b                                         ; $7898: $80

jr_006_7899:
    add c                                         ; $7899: $81
    ld [$0f0f], sp                                ; $789a: $08 $0f $0f
    rrca                                          ; $789d: $0f
    rrca                                          ; $789e: $0f
    rrca                                          ; $789f: $0f
    rlca                                          ; $78a0: $07
    rlca                                          ; $78a1: $07
    add a                                         ; $78a2: $87
    ret nz                                        ; $78a3: $c0

    sbc [hl]                                      ; $78a4: $9e
    ld [hl], b                                    ; $78a5: $70
    sbc [hl]                                      ; $78a6: $9e
    ld [hl], b                                    ; $78a7: $70
    sbc [hl]                                      ; $78a8: $9e
    ld [hl], b                                    ; $78a9: $70
    sbc [hl]                                      ; $78aa: $9e
    ld [hl], b                                    ; $78ab: $70
    rst RST_08                                    ; $78ac: $cf
    jr c, @-$2f                                   ; $78ad: $38 $cf

    jr c, @-$2f                                   ; $78af: $38 $cf

    jr c, @-$2f                                   ; $78b1: $38 $cf

    jr c, jr_006_78e5                             ; $78b3: $38 $30

    jr nz, @+$32                                  ; $78b5: $20 $30

    jr nz, jr_006_78e9                            ; $78b7: $20 $30

    jr nz, jr_006_78eb                            ; $78b9: $20 $30

    jr nz, jr_006_78ed                            ; $78bb: $20 $30

    jr nz, jr_006_78ef                            ; $78bd: $20 $30

    jr nz, jr_006_78f1                            ; $78bf: $20 $30

    jr nz, jr_006_78f3                            ; $78c1: $20 $30

    jr nz, jr_006_7939                            ; $78c3: $20 $74

    inc c                                         ; $78c5: $0c
    ld [hl], h                                    ; $78c6: $74
    inc c                                         ; $78c7: $0c
    ld [hl], h                                    ; $78c8: $74
    inc c                                         ; $78c9: $0c
    db $f4                                        ; $78ca: $f4
    inc c                                         ; $78cb: $0c
    db $e4                                        ; $78cc: $e4
    inc e                                         ; $78cd: $1c
    db $e4                                        ; $78ce: $e4
    inc e                                         ; $78cf: $1c
    db $e4                                        ; $78d0: $e4
    inc e                                         ; $78d1: $1c
    db $e4                                        ; $78d2: $e4
    inc e                                         ; $78d3: $1c
    ld bc, $0301                                  ; $78d4: $01 $01 $03
    ld [bc], a                                    ; $78d7: $02
    inc bc                                        ; $78d8: $03
    ld [bc], a                                    ; $78d9: $02
    inc bc                                        ; $78da: $03
    ld [bc], a                                    ; $78db: $02
    inc bc                                        ; $78dc: $03
    ld [bc], a                                    ; $78dd: $02
    inc bc                                        ; $78de: $03
    ld [bc], a                                    ; $78df: $02
    inc bc                                        ; $78e0: $03
    ld [bc], a                                    ; $78e1: $02
    rlca                                          ; $78e2: $07
    inc b                                         ; $78e3: $04
    add b                                         ; $78e4: $80

jr_006_78e5:
    add c                                         ; $78e5: $81
    ld b, $c0                                     ; $78e6: $06 $c0
    add b                                         ; $78e8: $80

jr_006_78e9:
    add b                                         ; $78e9: $80
    add b                                         ; $78ea: $80

jr_006_78eb:
    add b                                         ; $78eb: $80
    adc a                                         ; $78ec: $8f

jr_006_78ed:
    adc a                                         ; $78ed: $8f
    cp a                                          ; $78ee: $bf

jr_006_78ef:
    rrca                                          ; $78ef: $0f
    ld a, a                                       ; $78f0: $7f

jr_006_78f1:
    inc a                                         ; $78f1: $3c
    rlca                                          ; $78f2: $07

jr_006_78f3:
    inc bc                                        ; $78f3: $03
    rlca                                          ; $78f4: $07
    inc bc                                        ; $78f5: $03
    ld b, $03                                     ; $78f6: $06 $03
    ld b, $03                                     ; $78f8: $06 $03
    rst RST_38                                    ; $78fa: $ff
    ld [bc], a                                    ; $78fb: $02
    rst RST_38                                    ; $78fc: $ff
    add b                                         ; $78fd: $80
    inc bc                                        ; $78fe: $03
    cp $a2                                        ; $78ff: $fe $a2
    rst RST_38                                    ; $7901: $ff
    nop                                           ; $7902: $00
    add a                                         ; $7903: $87
    nop                                           ; $7904: $00
    add a                                         ; $7905: $87
    nop                                           ; $7906: $00
    rst RST_00                                    ; $7907: $c7
    add b                                         ; $7908: $80
    rst RST_00                                    ; $7909: $c7
    add b                                         ; $790a: $80
    rst RST_38                                    ; $790b: $ff
    add c                                         ; $790c: $81
    ld sp, hl                                     ; $790d: $f9
    rst RST_38                                    ; $790e: $ff
    push hl                                       ; $790f: $e5
    rra                                           ; $7910: $1f
    pop af                                        ; $7911: $f1
    rrca                                          ; $7912: $0f
    rst RST_20                                    ; $7913: $e7
    sbc h                                         ; $7914: $9c
    rst RST_20                                    ; $7915: $e7
    sbc h                                         ; $7916: $9c
    rst RST_20                                    ; $7917: $e7
    sbc h                                         ; $7918: $9c
    rst RST_20                                    ; $7919: $e7
    sbc h                                         ; $791a: $9c
    ld [hl], e                                    ; $791b: $73
    adc $73                                       ; $791c: $ce $73
    adc $53                                       ; $791e: $ce $53
    xor $63                                       ; $7920: $ee $63
    cp $80                                        ; $7922: $fe $80
    add c                                         ; $7924: $81
    ld [$8080], sp                                ; $7925: $08 $80 $80
    add b                                         ; $7928: $80
    add b                                         ; $7929: $80
    ret nz                                        ; $792a: $c0

    ret nz                                        ; $792b: $c0

    ret nz                                        ; $792c: $c0

    ret nz                                        ; $792d: $c0

    and [hl]                                      ; $792e: $a6
    ld h, b                                       ; $792f: $60
    ld b, b                                       ; $7930: $40
    ld h, b                                       ; $7931: $60
    ld b, b                                       ; $7932: $40
    ld h, b                                       ; $7933: $60
    ld b, b                                       ; $7934: $40
    ld h, b                                       ; $7935: $60
    ld b, b                                       ; $7936: $40
    ld h, b                                       ; $7937: $60
    ld b, b                                       ; $7938: $40

jr_006_7939:
    ld h, b                                       ; $7939: $60
    ld b, b                                       ; $793a: $40
    ld h, b                                       ; $793b: $60
    ld b, b                                       ; $793c: $40
    ld h, c                                       ; $793d: $61
    ld b, b                                       ; $793e: $40
    db $e4                                        ; $793f: $e4
    inc e                                         ; $7940: $1c
    db $e4                                        ; $7941: $e4
    inc e                                         ; $7942: $1c
    db $e4                                        ; $7943: $e4
    inc e                                         ; $7944: $1c
    db $e4                                        ; $7945: $e4
    inc e                                         ; $7946: $1c
    db $e4                                        ; $7947: $e4
    inc e                                         ; $7948: $1c
    db $e4                                        ; $7949: $e4
    inc e                                         ; $794a: $1c
    db $e4                                        ; $794b: $e4
    inc e                                         ; $794c: $1c
    db $e4                                        ; $794d: $e4
    inc e                                         ; $794e: $1c
    rlca                                          ; $794f: $07
    inc b                                         ; $7950: $04
    rlca                                          ; $7951: $07
    inc b                                         ; $7952: $04
    rlca                                          ; $7953: $07
    dec b                                         ; $7954: $05
    ld b, $07                                     ; $7955: $06 $07
    sub a                                         ; $7957: $97
    ld b, $07                                     ; $7958: $06 $07
    ld b, $07                                     ; $795a: $06 $07
    rst RST_38                                    ; $795c: $ff
    ld a, h                                       ; $795d: $7c
    rst RST_30                                    ; $795e: $f7
    db $fc                                        ; $795f: $fc
    add $fc                                       ; $7960: $c6 $fc
    add h                                         ; $7962: $84
    db $fc                                        ; $7963: $fc
    ld [$09f8], sp                                ; $7964: $08 $f8 $09
    ld sp, hl                                     ; $7967: $f9
    ld a, [bc]                                    ; $7968: $0a
    ei                                            ; $7969: $fb
    inc c                                         ; $796a: $0c
    rst RST_38                                    ; $796b: $ff
    rst RST_38                                    ; $796c: $ff
    nop                                           ; $796d: $00
    add b                                         ; $796e: $80
    dec b                                         ; $796f: $05
    nop                                           ; $7970: $00
    xor b                                         ; $7971: $a8
    ld a, a                                       ; $7972: $7f
    ld a, a                                       ; $7973: $7f
    rst RST_38                                    ; $7974: $ff
    pop bc                                        ; $7975: $c1
    ld a, a                                       ; $7976: $7f

jr_006_7977:
    pop bc                                        ; $7977: $c1
    ld b, a                                       ; $7978: $47
    pop bc                                        ; $7979: $c1
    ld sp, hl                                     ; $797a: $f9
    rlca                                          ; $797b: $07
    add hl, de                                    ; $797c: $19
    rlca                                          ; $797d: $07
    inc c                                         ; $797e: $0c
    inc bc                                        ; $797f: $03
    inc c                                         ; $7980: $0c
    inc bc                                        ; $7981: $03
    db $fc                                        ; $7982: $fc
    ei                                            ; $7983: $fb
    ld b, $ff                                     ; $7984: $06 $ff
    rrca                                          ; $7986: $0f
    pop af                                        ; $7987: $f1
    cp $00                                        ; $7988: $fe $00
    inc de                                        ; $798a: $13
    cp $09                                        ; $798b: $fe $09
    rst RST_38                                    ; $798d: $ff
    adc l                                         ; $798e: $8d
    rst RST_30                                    ; $798f: $f7
    adc l                                         ; $7990: $8d
    rst RST_30                                    ; $7991: $f7
    adc a                                         ; $7992: $8f
    di                                            ; $7993: $f3

jr_006_7994:
    ld c, a                                       ; $7994: $4f
    di                                            ; $7995: $f3
    ld e, l                                       ; $7996: $5d
    pop hl                                        ; $7997: $e1
    db $dd                                        ; $7998: $dd
    pop hl                                        ; $7999: $e1
    add b                                         ; $799a: $80
    add c                                         ; $799b: $81
    ld [$e0c0], sp                                ; $799c: $08 $c0 $e0
    ldh [$ffe0], a                                ; $799f: $e0 $e0
    ldh [$ffe0], a                                ; $79a1: $e0 $e0
    ldh [$ffe0], a                                ; $79a3: $e0 $e0
    ret nc                                        ; $79a5: $d0

    pop bc                                        ; $79a6: $c1
    add b                                         ; $79a7: $80
    pop bc                                        ; $79a8: $c1

jr_006_79a9:
    add b                                         ; $79a9: $80
    pop bc                                        ; $79aa: $c1
    add b                                         ; $79ab: $80
    pop bc                                        ; $79ac: $c1
    add b                                         ; $79ad: $80
    pop bc                                        ; $79ae: $c1
    add b                                         ; $79af: $80
    rst RST_18                                    ; $79b0: $df
    add b                                         ; $79b1: $80
    rst RST_38                                    ; $79b2: $ff
    sbc a                                         ; $79b3: $9f
    pop hl                                        ; $79b4: $e1
    ldh [$ffe4], a                                ; $79b5: $e0 $e4
    inc e                                         ; $79b7: $1c
    call nz, $c43c                                ; $79b8: $c4 $3c $c4
    inc a                                         ; $79bb: $3c
    call nz, $c43c                                ; $79bc: $c4 $3c $c4
    inc a                                         ; $79bf: $3c
    call nz, $843c                                ; $79c0: $c4 $3c $84
    db $fc                                        ; $79c3: $fc
    db $e4                                        ; $79c4: $e4
    ld a, h                                       ; $79c5: $7c
    ld b, $07                                     ; $79c6: $06 $07
    ld b, $07                                     ; $79c8: $06 $07
    inc b                                         ; $79ca: $04
    rlca                                          ; $79cb: $07
    inc b                                         ; $79cc: $04
    rlca                                          ; $79cd: $07
    inc b                                         ; $79ce: $04
    rlca                                          ; $79cf: $07
    inc b                                         ; $79d0: $04

jr_006_79d1:
    rlca                                          ; $79d1: $07
    ld [bc], a                                    ; $79d2: $02
    inc bc                                        ; $79d3: $03
    ld [bc], a                                    ; $79d4: $02
    inc bc                                        ; $79d5: $03
    inc c                                         ; $79d6: $0c
    rst RST_38                                    ; $79d7: $ff
    jr c, jr_006_79a9                             ; $79d8: $38 $cf

    ld a, c                                       ; $79da: $79
    adc [hl]                                      ; $79db: $8e
    ld a, c                                       ; $79dc: $79
    adc [hl]                                      ; $79dd: $8e
    ld a, c                                       ; $79de: $79
    adc [hl]                                      ; $79df: $8e
    ld sp, hl                                     ; $79e0: $f9
    ld c, $fd                                     ; $79e1: $0e $fd
    ld b, $fd                                     ; $79e3: $06 $fd
    ld b, $c7                                     ; $79e5: $06 $c7
    ld b, c                                       ; $79e7: $41
    rst RST_18                                    ; $79e8: $df
    ld e, l                                       ; $79e9: $5d
    rst RST_20                                    ; $79ea: $e7
    ld a, e                                       ; $79eb: $7b
    rst RST_08                                    ; $79ec: $cf
    ld [hl], c                                    ; $79ed: $71
    call $cc71                                    ; $79ee: $cd $71 $cc
    ld [hl], b                                    ; $79f1: $70
    db $ec                                        ; $79f2: $ec
    jr nc, jr_006_79d1                            ; $79f3: $30 $dc

    jr jr_006_7977                                ; $79f5: $18 $80

    add c                                         ; $79f7: $81
    ld b, $fc                                     ; $79f8: $06 $fc
    ldh [$ffe0], a                                ; $79fa: $e0 $e0
    ldh [$ff60], a                                ; $79fc: $e0 $60
    jr nz, jr_006_7994                            ; $79fe: $20 $94

    ld hl, $0f01                                  ; $7a00: $21 $01 $0f
    ld c, $d9                                     ; $7a03: $0e $d9
    pop hl                                        ; $7a05: $e1
    ld a, c                                       ; $7a06: $79
    ld b, c                                       ; $7a07: $41
    ld a, c                                       ; $7a08: $79
    ld b, c                                       ; $7a09: $41
    ld [hl], c                                    ; $7a0a: $71
    ld b, c                                       ; $7a0b: $41
    pop af                                        ; $7a0c: $f1
    add c                                         ; $7a0d: $81
    db $e3                                        ; $7a0e: $e3
    add d                                         ; $7a0f: $82
    jp Jump_000_0702                              ; $7a10: $c3 $02 $07


    inc b                                         ; $7a13: $04
    add b                                         ; $7a14: $80
    add c                                         ; $7a15: $81
    ld [$e0e0], sp                                ; $7a16: $08 $e0 $e0
    ldh [$ffe0], a                                ; $7a19: $e0 $e0
    ldh [$ffc0], a                                ; $7a1b: $e0 $c0
    ret nz                                        ; $7a1d: $c0

    add b                                         ; $7a1e: $80
    inc b                                         ; $7a1f: $04
    nop                                           ; $7a20: $00
    sbc [hl]                                      ; $7a21: $9e
    jr jr_006_7a24                                ; $7a22: $18 $00

jr_006_7a24:
    inc e                                         ; $7a24: $1c
    ld [$081c], sp                                ; $7a25: $08 $1c $08
    inc e                                         ; $7a28: $1c
    ld [$081c], sp                                ; $7a29: $08 $1c $08
    ld e, $0c                                     ; $7a2c: $1e $0c
    ld c, $04                                     ; $7a2e: $0e $04
    ld c, $04                                     ; $7a30: $0e $04
    ld c, $04                                     ; $7a32: $0e $04
    ld c, $04                                     ; $7a34: $0e $04
    ld e, $0c                                     ; $7a36: $1e $0c
    ld e, $0c                                     ; $7a38: $1e $0c
    ld e, $0c                                     ; $7a3a: $1e $0c
    ld e, $0c                                     ; $7a3c: $1e $0c
    add e                                         ; $7a3e: $83
    add b                                         ; $7a3f: $80
    add b                                         ; $7a40: $80
    add c                                         ; $7a41: $81
    rlca                                          ; $7a42: $07
    inc bc                                        ; $7a43: $03
    inc bc                                        ; $7a44: $03
    inc bc                                        ; $7a45: $03
    rlca                                          ; $7a46: $07
    rlca                                          ; $7a47: $07
    rlca                                          ; $7a48: $07
    ld c, $92                                     ; $7a49: $0e $92
    db $f4                                        ; $7a4b: $f4
    inc e                                         ; $7a4c: $1c
    db $fc                                        ; $7a4d: $fc
    inc c                                         ; $7a4e: $0c
    db $fc                                        ; $7a4f: $fc
    inc c                                         ; $7a50: $0c
    db $fc                                        ; $7a51: $fc
    inc b                                         ; $7a52: $04
    db $ec                                        ; $7a53: $ec
    inc b                                         ; $7a54: $04
    call z, $8c04                                 ; $7a55: $cc $04 $8c
    inc b                                         ; $7a58: $04
    inc c                                         ; $7a59: $0c
    inc b                                         ; $7a5a: $04
    ld [bc], a                                    ; $7a5b: $02
    inc bc                                        ; $7a5c: $03
    inc b                                         ; $7a5d: $04
    ld bc, $000a                                  ; $7a5e: $01 $0a $00
    add b                                         ; $7a61: $80
    add h                                         ; $7a62: $84
    inc b                                         ; $7a63: $04
    ld [bc], a                                    ; $7a64: $02
    add hl, bc                                    ; $7a65: $09
    ld [$c288], sp                                ; $7a66: $08 $88 $c2
    ld a, a                                       ; $7a69: $7f
    ld e, b                                       ; $7a6a: $58
    cpl                                           ; $7a6b: $2f
    jr z, jr_006_7a7d                             ; $7a6c: $28 $0f

    ld c, $01                                     ; $7a6e: $0e $01
    ld bc, $07d7                                  ; $7a70: $01 $d7 $07
    jp nc, $f280                                  ; $7a73: $d2 $80 $f2

    ld [hl], b                                    ; $7a76: $70
    rst RST_38                                    ; $7a77: $ff
    rrca                                          ; $7a78: $0f
    rst RST_38                                    ; $7a79: $ff
    nop                                           ; $7a7a: $00
    rst RST_38                                    ; $7a7b: $ff
    nop                                           ; $7a7c: $00

jr_006_7a7d:
    rst RST_38                                    ; $7a7d: $ff
    nop                                           ; $7a7e: $00
    rst RST_38                                    ; $7a7f: $ff
    rst RST_38                                    ; $7a80: $ff
    ldh a, [$fff0]                                ; $7a81: $f0 $f0
    nop                                           ; $7a83: $00
    nop                                           ; $7a84: $00
    inc bc                                        ; $7a85: $03
    inc bc                                        ; $7a86: $03
    rst RST_38                                    ; $7a87: $ff
    db $fc                                        ; $7a88: $fc
    rst RST_38                                    ; $7a89: $ff
    nop                                           ; $7a8a: $00
    rst RST_38                                    ; $7a8b: $ff
    nop                                           ; $7a8c: $00
    rst RST_38                                    ; $7a8d: $ff
    nop                                           ; $7a8e: $00
    rst RST_38                                    ; $7a8f: $ff
    rst RST_38                                    ; $7a90: $ff
    rrca                                          ; $7a91: $0f
    ld [$303f], sp                                ; $7a92: $08 $3f $30
    cp $c0                                        ; $7a95: $fe $c0
    ld hl, sp+$00                                 ; $7a97: $f8 $00
    rst RST_08                                    ; $7a99: $cf
    nop                                           ; $7a9a: $00
    rst RST_38                                    ; $7a9b: $ff
    rrca                                          ; $7a9c: $0f
    ldh a, [$fff0]                                ; $7a9d: $f0 $f0
    nop                                           ; $7a9f: $00
    nop                                           ; $7aa0: $00
    add b                                         ; $7aa1: $80
    nop                                           ; $7aa2: $00
    ld bc, $1f00                                  ; $7aa3: $01 $00 $1f
    ld bc, $1efe                                  ; $7aa6: $01 $fe $1e
    ldh [$ffe0], a                                ; $7aa9: $e0 $e0
    ld b, $00                                     ; $7aab: $06 $00
    add [hl]                                      ; $7aad: $86
    scf                                           ; $7aae: $37
    inc d                                         ; $7aaf: $14
    rst RST_30                                    ; $7ab0: $f7
    rla                                           ; $7ab1: $17
    ldh a, [$fff0]                                ; $7ab2: $f0 $f0
    ld a, [bc]                                    ; $7ab4: $0a
    nop                                           ; $7ab5: $00
    add h                                         ; $7ab6: $84
    rst RST_38                                    ; $7ab7: $ff
    nop                                           ; $7ab8: $00
    rst RST_38                                    ; $7ab9: $ff
    rst RST_38                                    ; $7aba: $ff
    inc c                                         ; $7abb: $0c
    nop                                           ; $7abc: $00
    add [hl]                                      ; $7abd: $86
    or [hl]                                       ; $7abe: $b6
    inc d                                         ; $7abf: $14
    rst RST_30                                    ; $7ac0: $f7
    sub h                                         ; $7ac1: $94
    ld [hl], a                                    ; $7ac2: $77
    ld [hl], a                                    ; $7ac3: $77
    ld c, $00                                     ; $7ac4: $0e $00
    add [hl]                                      ; $7ac6: $86
    ld hl, sp+$00                                 ; $7ac7: $f8 $00
    rst RST_38                                    ; $7ac9: $ff
    ld hl, sp+$07                                 ; $7aca: $f8 $07
    rlca                                          ; $7acc: $07
    inc c                                         ; $7acd: $0c
    nop                                           ; $7ace: $00
    adc b                                         ; $7acf: $88
    add b                                         ; $7ad0: $80
    nop                                           ; $7ad1: $00
    db $fc                                        ; $7ad2: $fc
    add b                                         ; $7ad3: $80
    ld a, a                                       ; $7ad4: $7f
    ld a, h                                       ; $7ad5: $7c
    inc bc                                        ; $7ad6: $03
    inc bc                                        ; $7ad7: $03
    inc c                                         ; $7ad8: $0c
    nop                                           ; $7ad9: $00
    add h                                         ; $7ada: $84
    rst RST_38                                    ; $7adb: $ff
    nop                                           ; $7adc: $00
    rst RST_38                                    ; $7add: $ff
    rst RST_38                                    ; $7ade: $ff
    ld [$8800], sp                                ; $7adf: $08 $00 $88
    ld bc, $3f00                                  ; $7ae2: $01 $00 $3f
    ld bc, $3efe                                  ; $7ae5: $01 $fe $3e
    ret nz                                        ; $7ae8: $c0

    ret nz                                        ; $7ae9: $c0

    inc b                                         ; $7aea: $04
    nop                                           ; $7aeb: $00
    adc b                                         ; $7aec: $88
    ld bc, $1f00                                  ; $7aed: $01 $00 $1f
    ld bc, $1efe                                  ; $7af0: $01 $fe $1e
    ldh [$ffe0], a                                ; $7af3: $e0 $e0
    inc c                                         ; $7af5: $0c
    nop                                           ; $7af6: $00
    add h                                         ; $7af7: $84
    rst RST_38                                    ; $7af8: $ff
    nop                                           ; $7af9: $00
    rst RST_38                                    ; $7afa: $ff
    rst RST_38                                    ; $7afb: $ff
    ld b, $00                                     ; $7afc: $06 $00
    adc d                                         ; $7afe: $8a
    jr jr_006_7b09                                ; $7aff: $18 $08

    jr jr_006_7b0b                                ; $7b01: $18 $08

    ld [hl], b                                    ; $7b03: $70
    db $10                                        ; $7b04: $10
    ldh [$ff60], a                                ; $7b05: $e0 $60
    add b                                         ; $7b07: $80
    add b                                         ; $7b08: $80

jr_006_7b09:
    ld b, $00                                     ; $7b09: $06 $00

jr_006_7b0b:
    ld b, $66                                     ; $7b0b: $06 $66
    add [hl]                                      ; $7b0d: $86
    ld [hl], $66                                  ; $7b0e: $36 $66
    ld a, [hl]                                    ; $7b10: $7e
    inc a                                         ; $7b11: $3c
    inc l                                         ; $7b12: $2c
    jr jr_006_7b19                                ; $7b13: $18 $04

    nop                                           ; $7b15: $00
    add d                                         ; $7b16: $82
    ld b, $06                                     ; $7b17: $06 $06

jr_006_7b19:
    inc b                                         ; $7b19: $04
    adc $86                                       ; $7b1a: $ce $86
    ld h, b                                       ; $7b1c: $60
    ret nz                                        ; $7b1d: $c0

    ld a, b                                       ; $7b1e: $78
    ld a, b                                       ; $7b1f: $78
    jr jr_006_7b5a                                ; $7b20: $18 $38

    inc b                                         ; $7b22: $04
    nop                                           ; $7b23: $00
    add e                                         ; $7b24: $83
    ld l, a                                       ; $7b25: $6f
    ld l, a                                       ; $7b26: $6f
    ld h, c                                       ; $7b27: $61
    inc bc                                        ; $7b28: $03
    ld h, b                                       ; $7b29: $60
    add d                                         ; $7b2a: $82
    ld l, b                                       ; $7b2b: $68
    ld h, b                                       ; $7b2c: $60
    inc bc                                        ; $7b2d: $03
    ld l, a                                       ; $7b2e: $6f
    add c                                         ; $7b2f: $81
    ld h, a                                       ; $7b30: $67
    inc b                                         ; $7b31: $04
    nop                                           ; $7b32: $00
    adc h                                         ; $7b33: $8c
    ld l, h                                       ; $7b34: $6c
    ld l, h                                       ; $7b35: $6c
    ld a, h                                       ; $7b36: $7c
    ld a, h                                       ; $7b37: $7c
    inc a                                         ; $7b38: $3c
    inc a                                         ; $7b39: $3c
    inc e                                         ; $7b3a: $1c
    inc c                                         ; $7b3b: $0c
    ld a, h                                       ; $7b3c: $7c
    ld a, b                                       ; $7b3d: $78
    ld a, b                                       ; $7b3e: $78
    ld [hl], b                                    ; $7b3f: $70
    inc b                                         ; $7b40: $04
    nop                                           ; $7b41: $00
    ld [$84c6], sp                                ; $7b42: $08 $c6 $84
    db $ec                                        ; $7b45: $ec
    ld l, [hl]                                    ; $7b46: $6e
    ld l, [hl]                                    ; $7b47: $6e
    inc l                                         ; $7b48: $2c
    inc b                                         ; $7b49: $04
    nop                                           ; $7b4a: $00
    nop                                           ; $7b4b: $00
    nop                                           ; $7b4c: $00
    sbc b                                         ; $7b4d: $98
    ld hl, $8000                                  ; $7b4e: $21 $00 $80
    inc b                                         ; $7b51: $04
    ld a, a                                       ; $7b52: $7f
    dec de                                        ; $7b53: $1b
    nop                                           ; $7b54: $00
    add b                                         ; $7b55: $80
    dec b                                         ; $7b56: $05
    add e                                         ; $7b57: $83
    inc c                                         ; $7b58: $0c
    nop                                           ; $7b59: $00

jr_006_7b5a:
    add b                                         ; $7b5a: $80
    inc bc                                        ; $7b5b: $03
    adc b                                         ; $7b5c: $88
    inc c                                         ; $7b5d: $0c
    nop                                           ; $7b5e: $00
    add e                                         ; $7b5f: $83
    adc e                                         ; $7b60: $8b
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    add b                                         ; $7b63: $80
    ld a, [bc]                                    ; $7b64: $0a
    adc l                                         ; $7b65: $8d
    add b                                         ; $7b66: $80
    inc b                                         ; $7b67: $04
    adc a                                         ; $7b68: $8f
    add e                                         ; $7b69: $83
    or b                                          ; $7b6a: $b0
    sbc b                                         ; $7b6b: $98
    sbc c                                         ; $7b6c: $99
    inc c                                         ; $7b6d: $0c
    nop                                           ; $7b6e: $00
    adc d                                         ; $7b6f: $8a
    and c                                         ; $7b70: $a1
    nop                                           ; $7b71: $00
    nop                                           ; $7b72: $00
    sbc e                                         ; $7b73: $9b
    sbc h                                         ; $7b74: $9c
    nop                                           ; $7b75: $00
    sbc l                                         ; $7b76: $9d
    nop                                           ; $7b77: $00
    nop                                           ; $7b78: $00
    sbc [hl]                                      ; $7b79: $9e
    inc b                                         ; $7b7a: $04
    nop                                           ; $7b7b: $00
    add e                                         ; $7b7c: $83
    sbc l                                         ; $7b7d: $9d
    nop                                           ; $7b7e: $00
    nop                                           ; $7b7f: $00
    add b                                         ; $7b80: $80
    inc bc                                        ; $7b81: $03
    sbc [hl]                                      ; $7b82: $9e
    inc c                                         ; $7b83: $0c
    nop                                           ; $7b84: $00
    add l                                         ; $7b85: $85
    and [hl]                                      ; $7b86: $a6
    and a                                         ; $7b87: $a7
    nop                                           ; $7b88: $00
    and d                                         ; $7b89: $a2
    and e                                         ; $7b8a: $a3
    add b                                         ; $7b8b: $80
    inc b                                         ; $7b8c: $04
    ld l, b                                       ; $7b8d: $68
    add d                                         ; $7b8e: $82
    nop                                           ; $7b8f: $00
    nop                                           ; $7b90: $00
    add b                                         ; $7b91: $80
    inc b                                         ; $7b92: $04
    ld [hl], b                                    ; $7b93: $70
    inc bc                                        ; $7b94: $03
    nop                                           ; $7b95: $00
    add d                                         ; $7b96: $82
    and h                                         ; $7b97: $a4
    and l                                         ; $7b98: $a5
    inc c                                         ; $7b99: $0c
    nop                                           ; $7b9a: $00
    add l                                         ; $7b9b: $85
    xor h                                         ; $7b9c: $ac
    xor l                                         ; $7b9d: $ad
    nop                                           ; $7b9e: $00
    xor b                                         ; $7b9f: $a8
    xor c                                         ; $7ba0: $a9
    add b                                         ; $7ba1: $80
    inc b                                         ; $7ba2: $04
    ld l, h                                       ; $7ba3: $6c
    add d                                         ; $7ba4: $82
    nop                                           ; $7ba5: $00
    nop                                           ; $7ba6: $00
    add b                                         ; $7ba7: $80
    dec b                                         ; $7ba8: $05
    ld [hl], h                                    ; $7ba9: $74
    add h                                         ; $7baa: $84
    nop                                           ; $7bab: $00
    nop                                           ; $7bac: $00
    xor d                                         ; $7bad: $aa
    xor e                                         ; $7bae: $ab
    inc c                                         ; $7baf: $0c
    nop                                           ; $7bb0: $00
    add l                                         ; $7bb1: $85
    or e                                          ; $7bb2: $b3
    or h                                          ; $7bb3: $b4
    nop                                           ; $7bb4: $00
    xor [hl]                                      ; $7bb5: $ae
    xor a                                         ; $7bb6: $af
    dec c                                         ; $7bb7: $0d
    nop                                           ; $7bb8: $00
    add d                                         ; $7bb9: $82
    or c                                          ; $7bba: $b1
    or d                                          ; $7bbb: $b2
    inc c                                         ; $7bbc: $0c
    nop                                           ; $7bbd: $00
    add l                                         ; $7bbe: $85
    or e                                          ; $7bbf: $b3
    or h                                          ; $7bc0: $b4
    nop                                           ; $7bc1: $00
    xor [hl]                                      ; $7bc2: $ae
    xor a                                         ; $7bc3: $af
    dec c                                         ; $7bc4: $0d
    nop                                           ; $7bc5: $00
    add d                                         ; $7bc6: $82
    or c                                          ; $7bc7: $b1
    or d                                          ; $7bc8: $b2
    inc c                                         ; $7bc9: $0c
    nop                                           ; $7bca: $00
    add l                                         ; $7bcb: $85
    or e                                          ; $7bcc: $b3
    or h                                          ; $7bcd: $b4
    nop                                           ; $7bce: $00
    xor [hl]                                      ; $7bcf: $ae
    xor a                                         ; $7bd0: $af
    dec c                                         ; $7bd1: $0d
    nop                                           ; $7bd2: $00
    add d                                         ; $7bd3: $82
    or c                                          ; $7bd4: $b1
    or d                                          ; $7bd5: $b2
    inc c                                         ; $7bd6: $0c
    nop                                           ; $7bd7: $00
    add l                                         ; $7bd8: $85
    or e                                          ; $7bd9: $b3
    or h                                          ; $7bda: $b4
    nop                                           ; $7bdb: $00
    xor [hl]                                      ; $7bdc: $ae
    xor a                                         ; $7bdd: $af
    dec c                                         ; $7bde: $0d
    nop                                           ; $7bdf: $00
    add d                                         ; $7be0: $82
    or c                                          ; $7be1: $b1
    or d                                          ; $7be2: $b2
    inc c                                         ; $7be3: $0c
    nop                                           ; $7be4: $00
    add l                                         ; $7be5: $85
    or e                                          ; $7be6: $b3
    or h                                          ; $7be7: $b4
    nop                                           ; $7be8: $00
    or l                                          ; $7be9: $b5
    or [hl]                                       ; $7bea: $b6
    dec c                                         ; $7beb: $0d
    nop                                           ; $7bec: $00
    add d                                         ; $7bed: $82
    cp d                                          ; $7bee: $ba
    or d                                          ; $7bef: $b2
    inc c                                         ; $7bf0: $0c
    nop                                           ; $7bf1: $00
    add l                                         ; $7bf2: $85
    or e                                          ; $7bf3: $b3
    or h                                          ; $7bf4: $b4
    nop                                           ; $7bf5: $00
    cp b                                          ; $7bf6: $b8
    cp c                                          ; $7bf7: $b9
    dec c                                         ; $7bf8: $0d
    nop                                           ; $7bf9: $00
    add d                                         ; $7bfa: $82
    cp [hl]                                       ; $7bfb: $be
    cp a                                          ; $7bfc: $bf
    inc c                                         ; $7bfd: $0c
    nop                                           ; $7bfe: $00
    add d                                         ; $7bff: $82
    or e                                          ; $7c00: $b3
    or h                                          ; $7c01: $b4
    add b                                         ; $7c02: $80
    inc bc                                        ; $7c03: $03
    cp e                                          ; $7c04: $bb
    inc bc                                        ; $7c05: $03
    nop                                           ; $7c06: $00
    add [hl]                                      ; $7c07: $86
    ld a, e                                       ; $7c08: $7b
    ld a, c                                       ; $7c09: $79
    nop                                           ; $7c0a: $00
    nop                                           ; $7c0b: $00
    ld a, d                                       ; $7c0c: $7a
    ld a, e                                       ; $7c0d: $7b
    inc b                                         ; $7c0e: $04
    nop                                           ; $7c0f: $00
    add d                                         ; $7c10: $82
    add $c7                                       ; $7c11: $c6 $c7
    inc c                                         ; $7c13: $0c
    nop                                           ; $7c14: $00
    add b                                         ; $7c15: $80
    ld b, $c0                                     ; $7c16: $06 $c0
    adc b                                         ; $7c18: $88
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    ld a, [hl]                                    ; $7c1b: $7e
    ld a, h                                       ; $7c1c: $7c
    nop                                           ; $7c1d: $00
    nop                                           ; $7c1e: $00
    ld a, l                                       ; $7c1f: $7d
    ld a, [hl]                                    ; $7c20: $7e
    inc b                                         ; $7c21: $04
    nop                                           ; $7c22: $00
    add d                                         ; $7c23: $82
    adc $cf                                       ; $7c24: $ce $cf
    inc c                                         ; $7c26: $0c
    nop                                           ; $7c27: $00
    add b                                         ; $7c28: $80
    rlca                                          ; $7c29: $07
    ret nc                                        ; $7c2a: $d0

    add d                                         ; $7c2b: $82
    nop                                           ; $7c2c: $00
    rst RST_10                                    ; $7c2d: $d7
    dec b                                         ; $7c2e: $05
    nop                                           ; $7c2f: $00
    add [hl]                                      ; $7c30: $86
    sub $00                                       ; $7c31: $d6 $00
    rst RST_10                                    ; $7c33: $d7
    nop                                           ; $7c34: $00
    ret c                                         ; $7c35: $d8

    reti                                          ; $7c36: $d9


    inc c                                         ; $7c37: $0c
    nop                                           ; $7c38: $00
    add b                                         ; $7c39: $80
    ld c, $da                                     ; $7c3a: $0e $da
    add b                                         ; $7c3c: $80
    inc b                                         ; $7c3d: $04
    ldh [$ff82], a                                ; $7c3e: $e0 $82
    add sp, -$17                                  ; $7c40: $e8 $e9
    jr nz, jr_006_7c44                            ; $7c42: $20 $00

jr_006_7c44:
    nop                                           ; $7c44: $00
    ret c                                         ; $7c45: $d8

    ld a, h                                       ; $7c46: $7c
    ld c, l                                       ; $7c47: $4d
    ld a, h                                       ; $7c48: $7c
    ld l, d                                       ; $7c49: $6a
    ld a, h                                       ; $7c4a: $7c
    and c                                         ; $7c4b: $a1
    ld a, h                                       ; $7c4c: $7c
    dec h                                         ; $7c4d: $25
    sbc c                                         ; $7c4e: $99
    ld [bc], a                                    ; $7c4f: $02
    nop                                           ; $7c50: $00
    nop                                           ; $7c51: $00
    ld bc, $0302                                  ; $7c52: $01 $02 $03
    inc b                                         ; $7c55: $04
    dec b                                         ; $7c56: $05
    ld b, $07                                     ; $7c57: $06 $07
    ld [$0a09], sp                                ; $7c59: $08 $09 $0a
    nop                                           ; $7c5c: $00
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    dec bc                                        ; $7c5f: $0b
    inc c                                         ; $7c60: $0c
    dec c                                         ; $7c61: $0d
    ld c, $0f                                     ; $7c62: $0e $0f
    db $10                                        ; $7c64: $10
    ld de, $1312                                  ; $7c65: $11 $12 $13
    inc d                                         ; $7c68: $14
    dec d                                         ; $7c69: $15
    dec b                                         ; $7c6a: $05
    sbc c                                         ; $7c6b: $99
    inc b                                         ; $7c6c: $04
    nop                                           ; $7c6d: $00
    nop                                           ; $7c6e: $00
    ld d, $17                                     ; $7c6f: $16 $17
    jr jr_006_7c8c                                ; $7c71: $18 $19

    ld a, [de]                                    ; $7c73: $1a
    nop                                           ; $7c74: $00
    nop                                           ; $7c75: $00
    nop                                           ; $7c76: $00
    nop                                           ; $7c77: $00
    nop                                           ; $7c78: $00
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    nop                                           ; $7c7b: $00
    ld hl, $2322                                  ; $7c7c: $21 $22 $23
    inc h                                         ; $7c7f: $24
    dec h                                         ; $7c80: $25
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    nop                                           ; $7c83: $00
    nop                                           ; $7c84: $00
    nop                                           ; $7c85: $00
    nop                                           ; $7c86: $00
    nop                                           ; $7c87: $00
    nop                                           ; $7c88: $00
    nop                                           ; $7c89: $00
    nop                                           ; $7c8a: $00
    nop                                           ; $7c8b: $00

jr_006_7c8c:
    dec de                                        ; $7c8c: $1b
    inc e                                         ; $7c8d: $1c
    dec e                                         ; $7c8e: $1d
    ld e, $1f                                     ; $7c8f: $1e $1f
    jr nz, jr_006_7c93                            ; $7c91: $20 $00

jr_006_7c93:
    nop                                           ; $7c93: $00
    nop                                           ; $7c94: $00
    nop                                           ; $7c95: $00
    nop                                           ; $7c96: $00
    nop                                           ; $7c97: $00
    nop                                           ; $7c98: $00
    ld h, $27                                     ; $7c99: $26 $27
    jr z, jr_006_7cc6                             ; $7c9b: $28 $29

    ld a, [hl+]                                   ; $7c9d: $2a
    dec hl                                        ; $7c9e: $2b
    inc l                                         ; $7c9f: $2c
    nop                                           ; $7ca0: $00
    dec b                                         ; $7ca1: $05
    sbc c                                         ; $7ca2: $99
    inc b                                         ; $7ca3: $04
    nop                                           ; $7ca4: $00
    jr jr_006_7ca7                                ; $7ca5: $18 $00

jr_006_7ca7:
    dec l                                         ; $7ca7: $2d
    ld l, $00                                     ; $7ca8: $2e $00
    cpl                                           ; $7caa: $2f
    nop                                           ; $7cab: $00
    nop                                           ; $7cac: $00
    nop                                           ; $7cad: $00
    nop                                           ; $7cae: $00
    nop                                           ; $7caf: $00
    nop                                           ; $7cb0: $00
    nop                                           ; $7cb1: $00
    inc hl                                        ; $7cb2: $23
    jr nc, jr_006_7ce6                            ; $7cb3: $30 $31

    ld [hl-], a                                   ; $7cb5: $32
    inc sp                                        ; $7cb6: $33
    inc [hl]                                      ; $7cb7: $34
    nop                                           ; $7cb8: $00
    nop                                           ; $7cb9: $00
    nop                                           ; $7cba: $00
    nop                                           ; $7cbb: $00
    nop                                           ; $7cbc: $00
    nop                                           ; $7cbd: $00
    nop                                           ; $7cbe: $00
    nop                                           ; $7cbf: $00
    nop                                           ; $7cc0: $00
    nop                                           ; $7cc1: $00
    nop                                           ; $7cc2: $00
    dec [hl]                                      ; $7cc3: $35
    ld [hl], $37                                  ; $7cc4: $36 $37

jr_006_7cc6:
    jr c, jr_006_7d01                             ; $7cc6: $38 $39

    ld a, [bc]                                    ; $7cc8: $0a
    nop                                           ; $7cc9: $00
    nop                                           ; $7cca: $00
    nop                                           ; $7ccb: $00
    nop                                           ; $7ccc: $00
    nop                                           ; $7ccd: $00
    nop                                           ; $7cce: $00
    nop                                           ; $7ccf: $00
    ld [$eceb], a                                 ; $7cd0: $ea $eb $ec
    db $ed                                        ; $7cd3: $ed
    xor $14                                       ; $7cd4: $ee $14
    dec d                                         ; $7cd6: $15
    nop                                           ; $7cd7: $00
    dec b                                         ; $7cd8: $05
    sbc c                                         ; $7cd9: $99
    inc b                                         ; $7cda: $04
    nop                                           ; $7cdb: $00
    nop                                           ; $7cdc: $00
    nop                                           ; $7cdd: $00
    ld a, [hl-]                                   ; $7cde: $3a
    dec sp                                        ; $7cdf: $3b
    inc a                                         ; $7ce0: $3c
    dec a                                         ; $7ce1: $3d
    ld a, $3f                                     ; $7ce2: $3e $3f
    ld b, b                                       ; $7ce4: $40
    ld b, c                                       ; $7ce5: $41

jr_006_7ce6:
    ld b, d                                       ; $7ce6: $42
    nop                                           ; $7ce7: $00
    nop                                           ; $7ce8: $00
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    ld b, [hl]                                    ; $7ceb: $46
    ld b, a                                       ; $7cec: $47
    ld c, b                                       ; $7ced: $48
    ld c, c                                       ; $7cee: $49
    ld c, d                                       ; $7cef: $4a
    ld c, e                                       ; $7cf0: $4b
    ld c, h                                       ; $7cf1: $4c
    ld c, l                                       ; $7cf2: $4d
    ld c, [hl]                                    ; $7cf3: $4e
    nop                                           ; $7cf4: $00
    nop                                           ; $7cf5: $00
    nop                                           ; $7cf6: $00
    nop                                           ; $7cf7: $00
    nop                                           ; $7cf8: $00
    nop                                           ; $7cf9: $00
    ld e, c                                       ; $7cfa: $59
    ld b, e                                       ; $7cfb: $43
    ld b, h                                       ; $7cfc: $44
    ld b, l                                       ; $7cfd: $45
    nop                                           ; $7cfe: $00
    nop                                           ; $7cff: $00
    nop                                           ; $7d00: $00

jr_006_7d01:
    nop                                           ; $7d01: $00
    nop                                           ; $7d02: $00
    nop                                           ; $7d03: $00
    nop                                           ; $7d04: $00
    nop                                           ; $7d05: $00
    nop                                           ; $7d06: $00
    ld h, e                                       ; $7d07: $63
    ld c, a                                       ; $7d08: $4f
    ld d, b                                       ; $7d09: $50
    ld d, c                                       ; $7d0a: $51
    ld d, d                                       ; $7d0b: $52
    nop                                           ; $7d0c: $00
    nop                                           ; $7d0d: $00
    nop                                           ; $7d0e: $00
    ld bc, $7d1b                                  ; $7d0f: $01 $1b $7d
    add b                                         ; $7d12: $80
    ld bc, $0100                                  ; $7d13: $01 $00 $01
    adc h                                         ; $7d16: $8c
    ld a, a                                       ; $7d17: $7f
    or e                                          ; $7d18: $b3
    ld bc, $1000                                  ; $7d19: $01 $00 $10
    nop                                           ; $7d1c: $00
    inc b                                         ; $7d1d: $04
    cp $80                                        ; $7d1e: $fe $80
    add e                                         ; $7d20: $83

jr_006_7d21:
    ld c, $61                                     ; $7d21: $0e $61
    ld a, a                                       ; $7d23: $7f
    ld a, [hl]                                    ; $7d24: $7e
    ld h, a                                       ; $7d25: $67
    ld h, a                                       ; $7d26: $67
    ld h, [hl]                                    ; $7d27: $66
    ld h, [hl]                                    ; $7d28: $66
    ld h, a                                       ; $7d29: $67
    ei                                            ; $7d2a: $fb
    ei                                            ; $7d2b: $fb
    ld h, b                                       ; $7d2c: $60
    ld hl, sp-$08                                 ; $7d2d: $f8 $f8
    ld h, b                                       ; $7d2f: $60
    add d                                         ; $7d30: $82
    ld bc, $8000                                  ; $7d31: $01 $00 $80
    add e                                         ; $7d34: $83
    dec b                                         ; $7d35: $05
    inc bc                                        ; $7d36: $03
    rrca                                          ; $7d37: $0f
    inc a                                         ; $7d38: $3c
    ccf                                           ; $7d39: $3f
    rrca                                          ; $7d3a: $0f
    add [hl]                                      ; $7d3b: $86
    nop                                           ; $7d3c: $00
    nop                                           ; $7d3d: $00
    rrca                                          ; $7d3e: $0f
    rrca                                          ; $7d3f: $0f
    ret nz                                        ; $7d40: $c0

    add b                                         ; $7d41: $80
    add b                                         ; $7d42: $80
    add e                                         ; $7d43: $83
    dec b                                         ; $7d44: $05
    ldh [$fff8], a                                ; $7d45: $e0 $f8
    ld e, $fe                                     ; $7d47: $1e $fe
    ld hl, sp-$76                                 ; $7d49: $f8 $8a
    nop                                           ; $7d4b: $00
    nop                                           ; $7d4c: $00
    ld hl, sp-$08                                 ; $7d4d: $f8 $f8
    ld a, a                                       ; $7d4f: $7f
    ld a, a                                       ; $7d50: $7f
    rst RST_38                                    ; $7d51: $ff
    rst RST_38                                    ; $7d52: $ff
    add $c6                                       ; $7d53: $c6 $c6
    inc b                                         ; $7d55: $04
    ld b, $86                                     ; $7d56: $06 $86
    ld c, $0c                                     ; $7d58: $0e $0c
    ld a, l                                       ; $7d5a: $7d
    ld a, l                                       ; $7d5b: $7d
    ld a, c                                       ; $7d5c: $79
    ld [hl], c                                    ; $7d5d: $71
    inc b                                         ; $7d5e: $04
    db $fc                                        ; $7d5f: $fc
    sub b                                         ; $7d60: $90
    ld h, [hl]                                    ; $7d61: $66
    ld h, [hl]                                    ; $7d62: $66
    ld l, [hl]                                    ; $7d63: $6e
    ld l, [hl]                                    ; $7d64: $6e
    ld a, h                                       ; $7d65: $7c
    ld a, h                                       ; $7d66: $7c
    ei                                            ; $7d67: $fb
    ld [hl], e                                    ; $7d68: $73
    rst RST_38                                    ; $7d69: $ff
    rst RST_38                                    ; $7d6a: $ff
    sbc $9e                                       ; $7d6b: $de $9e

jr_006_7d6d:
    rrca                                          ; $7d6d: $0f
    rrca                                          ; $7d6e: $0f
    nop                                           ; $7d6f: $00
    nop                                           ; $7d70: $00
    add b                                         ; $7d71: $80
    add e                                         ; $7d72: $83
    inc c                                         ; $7d73: $0c
    ld b, $36                                     ; $7d74: $06 $36
    ld [hl], $36                                  ; $7d76: $36 $36
    scf                                           ; $7d78: $37
    inc sp                                        ; $7d79: $33
    ld hl, sp+$38                                 ; $7d7a: $f8 $38
    ldh a, [$ffe0]                                ; $7d7c: $f0 $e0
    db $db                                        ; $7d7e: $db
    db $db                                        ; $7d7f: $db
    add d                                         ; $7d80: $82
    rst RST_38                                    ; $7d81: $ff
    rst RST_38                                    ; $7d82: $ff
    add b                                         ; $7d83: $80
    add e                                         ; $7d84: $83
    dec bc                                        ; $7d85: $0b
    cp $66                                        ; $7d86: $fe $66
    ld h, [hl]                                    ; $7d88: $66
    ld h, [hl]                                    ; $7d89: $66
    ld h, [hl]                                    ; $7d8a: $66
    ld h, [hl]                                    ; $7d8b: $66
    ld h, [hl]                                    ; $7d8c: $66
    ld h, [hl]                                    ; $7d8d: $66
    ld h, [hl]                                    ; $7d8e: $66
    ld h, [hl]                                    ; $7d8f: $66
    ld h, [hl]                                    ; $7d90: $66
    inc b                                         ; $7d91: $04
    nop                                           ; $7d92: $00
    ld b, $66                                     ; $7d93: $06 $66
    add d                                         ; $7d95: $82
    nop                                           ; $7d96: $00
    nop                                           ; $7d97: $00
    ld b, $18                                     ; $7d98: $06 $18
    inc b                                         ; $7d9a: $04
    ld a, a                                       ; $7d9b: $7f
    inc b                                         ; $7d9c: $04
    jr jr_006_7d21                                ; $7d9d: $18 $82

    ld a, a                                       ; $7d9f: $7f
    ld a, a                                       ; $7da0: $7f

jr_006_7da1:
    inc b                                         ; $7da1: $04
    ld bc, $0004                                  ; $7da2: $01 $04 $00
    inc b                                         ; $7da5: $04
    rlca                                          ; $7da6: $07
    inc b                                         ; $7da7: $04
    nop                                           ; $7da8: $00
    add b                                         ; $7da9: $80
    add e                                         ; $7daa: $83
    jr nz, jr_006_7d6d                            ; $7dab: $20 $c0

    ldh [$ff60], a                                ; $7dad: $e0 $60
    ld [hl], b                                    ; $7daf: $70
    ld hl, sp-$64                                 ; $7db0: $f8 $9c
    inc c                                         ; $7db2: $0c
    inc c                                         ; $7db3: $0c
    jr jr_006_7dee                                ; $7db4: $18 $38

    ld a, b                                       ; $7db6: $78
    ld a, b                                       ; $7db7: $78
    jr jr_006_7dd2                                ; $7db8: $18 $18

    jr jr_006_7dd4                                ; $7dba: $18 $18

    ld h, b                                       ; $7dbc: $60

jr_006_7dbd:
    ld a, a                                       ; $7dbd: $7f

jr_006_7dbe:
    ld a, a                                       ; $7dbe: $7f
    ld h, b                                       ; $7dbf: $60
    ld l, a                                       ; $7dc0: $6f
    ld l, a                                       ; $7dc1: $6f
    ld l, h                                       ; $7dc2: $6c
    ld l, h                                       ; $7dc3: $6c
    jr jr_006_7dbe                                ; $7dc4: $18 $f8

    ld hl, sp+$18                                 ; $7dc6: $f8 $18
    ret c                                         ; $7dc8: $d8

    ret c                                         ; $7dc9: $d8

    ret c                                         ; $7dca: $d8

    ret c                                         ; $7dcb: $d8

    add h                                         ; $7dcc: $84
    inc bc                                        ; $7dcd: $03
    ld bc, $0f1f                                  ; $7dce: $01 $1f $0f
    add b                                         ; $7dd1: $80

jr_006_7dd2:
    add e                                         ; $7dd2: $83
    inc b                                         ; $7dd3: $04

jr_006_7dd4:
    ld a, [hl]                                    ; $7dd4: $7e
    halt                                          ; $7dd5: $76
    ld b, $06                                     ; $7dd6: $06 $06
    inc b                                         ; $7dd8: $04
    rst RST_38                                    ; $7dd9: $ff
    inc b                                         ; $7dda: $04
    add b                                         ; $7ddb: $80
    ld b, $00                                     ; $7ddc: $06 $00
    add b                                         ; $7dde: $80
    add e                                         ; $7ddf: $83
    dec d                                         ; $7de0: $15
    ld bc, $e7e1                                  ; $7de1: $01 $e1 $e7
    ld bc, $0101                                  ; $7de4: $01 $01 $01
    ld bc, $8101                                  ; $7de7: $01 $01 $81
    add c                                         ; $7dea: $81
    ld sp, hl                                     ; $7deb: $f9
    add b                                         ; $7dec: $80
    add b                                         ; $7ded: $80

jr_006_7dee:
    add b                                         ; $7dee: $80
    add b                                         ; $7def: $80
    add b                                         ; $7df0: $80
    add b                                         ; $7df1: $80
    add c                                         ; $7df2: $81
    add c                                         ; $7df3: $81
    rra                                           ; $7df4: $1f
    rra                                           ; $7df5: $1f
    ld [$0400], sp                                ; $7df6: $08 $00 $04
    add b                                         ; $7df9: $80
    inc b                                         ; $7dfa: $04
    inc bc                                        ; $7dfb: $03
    add b                                         ; $7dfc: $80
    add e                                         ; $7dfd: $83
    ld [de], a                                    ; $7dfe: $12
    jr nc, @+$35                                  ; $7dff: $30 $33

    inc sp                                        ; $7e01: $33
    jr nc, @+$32                                  ; $7e02: $30 $30

    jr nc, @-$1e                                  ; $7e04: $30 $e0

    ldh [rTMA], a                                 ; $7e06: $e0 $06
    and $e6                                       ; $7e08: $e6 $e6
    ld b, $06                                     ; $7e0a: $06 $06
    ld b, $d8                                     ; $7e0c: $06 $d8
    ret c                                         ; $7e0e: $d8

    ret c                                         ; $7e0f: $d8

    ret c                                         ; $7e10: $d8

    ld [$8000], sp                                ; $7e11: $08 $00 $80
    add e                                         ; $7e14: $83
    inc b                                         ; $7e15: $04
    ld a, a                                       ; $7e16: $7f
    jr jr_006_7e31                                ; $7e17: $18 $18

    jr jr_006_7da1                                ; $7e19: $18 $86

    inc e                                         ; $7e1b: $1c
    jr jr_006_7e3d                                ; $7e1c: $18 $1f

    rrca                                          ; $7e1e: $0f
    rrca                                          ; $7e1f: $0f
    rlca                                          ; $7e20: $07
    ld b, $00                                     ; $7e21: $06 $00
    inc b                                         ; $7e23: $04
    ld h, b                                       ; $7e24: $60
    adc b                                         ; $7e25: $88
    ldh [$ff60], a                                ; $7e26: $e0 $60

jr_006_7e28:
    db $e3                                        ; $7e28: $e3
    jp $83c3                                      ; $7e29: $c3 $c3 $83


    nop                                           ; $7e2c: $00
    nop                                           ; $7e2d: $00
    inc b                                         ; $7e2e: $04
    inc c                                         ; $7e2f: $0c
    add c                                         ; $7e30: $81

jr_006_7e31:
    inc e                                         ; $7e31: $1c
    inc bc                                        ; $7e32: $03
    jr jr_006_7dbd                                ; $7e33: $18 $88

    ld a, b                                       ; $7e35: $78
    jr nc, jr_006_7e28                            ; $7e36: $30 $f0

    ldh a, [$ffc0]                                ; $7e38: $f0 $c0
    ret nz                                        ; $7e3a: $c0

    nop                                           ; $7e3b: $00
    nop                                           ; $7e3c: $00

jr_006_7e3d:
    ld a, [bc]                                    ; $7e3d: $0a
    jr jr_006_7e44                                ; $7e3e: $18 $04

    ld a, [hl]                                    ; $7e40: $7e
    add d                                         ; $7e41: $82

Jump_006_7e42:
    nop                                           ; $7e42: $00
    nop                                           ; $7e43: $00

jr_006_7e44:
    add b                                         ; $7e44: $80
    add e                                         ; $7e45: $83
    rlca                                          ; $7e46: $07
    ld l, h                                       ; $7e47: $6c
    ld l, a                                       ; $7e48: $6f
    ld l, a                                       ; $7e49: $6f
    ld h, b                                       ; $7e4a: $60
    ld a, a                                       ; $7e4b: $7f
    ld a, a                                       ; $7e4c: $7f
    ld h, b                                       ; $7e4d: $60
    add d                                         ; $7e4e: $82
    nop                                           ; $7e4f: $00

jr_006_7e50:
    nop                                           ; $7e50: $00
    ld b, $d8                                     ; $7e51: $06 $d8
    add b                                         ; $7e53: $80
    add e                                         ; $7e54: $83
    inc b                                         ; $7e55: $04
    jr jr_006_7e50                                ; $7e56: $18 $f8

    ld hl, sp+$18                                 ; $7e58: $f8 $18
    add d                                         ; $7e5a: $82
    nop                                           ; $7e5b: $00
    nop                                           ; $7e5c: $00
    ld [$8806], sp                                ; $7e5d: $08 $06 $88
    ld c, $0c                                     ; $7e60: $0e $0c
    inc a                                         ; $7e62: $3c
    inc a                                         ; $7e63: $3c
    jr c, jr_006_7e96                             ; $7e64: $38 $30

    nop                                           ; $7e66: $00
    nop                                           ; $7e67: $00

Call_006_7e68:
    add b                                         ; $7e68: $80
    add e                                         ; $7e69: $83
    rlca                                          ; $7e6a: $07
    rlca                                          ; $7e6b: $07
    ld bc, $0101                                  ; $7e6c: $01 $01 $01
    ld bc, $0101                                  ; $7e6f: $01 $01 $01
    add d                                         ; $7e72: $82
    nop                                           ; $7e73: $00
    nop                                           ; $7e74: $00
    add b                                         ; $7e75: $80
    add e                                         ; $7e76: $83
    rlca                                          ; $7e77: $07
    ld sp, hl                                     ; $7e78: $f9
    sbc c                                         ; $7e79: $99
    cp c                                          ; $7e7a: $b9
    or c                                          ; $7e7b: $b1
    add c                                         ; $7e7c: $81
    add c                                         ; $7e7d: $81
    add c                                         ; $7e7e: $81
    add d                                         ; $7e7f: $82
    nop                                           ; $7e80: $00
    nop                                           ; $7e81: $00
    inc b                                         ; $7e82: $04
    add c                                         ; $7e83: $81
    adc h                                         ; $7e84: $8c
    add e                                         ; $7e85: $83
    add c                                         ; $7e86: $81
    add e                                         ; $7e87: $83
    add e                                         ; $7e88: $83
    adc a                                         ; $7e89: $8f
    add [hl]                                      ; $7e8a: $86
    cp $fc                                        ; $7e8b: $fe $fc
    ld hl, sp-$10                                 ; $7e8d: $f8 $f0
    nop                                           ; $7e8f: $00
    nop                                           ; $7e90: $00
    dec b                                         ; $7e91: $05
    add b                                         ; $7e92: $80
    inc bc                                        ; $7e93: $03
    nop                                           ; $7e94: $00
    add d                                         ; $7e95: $82

jr_006_7e96:
    ld bc, $0301                                  ; $7e96: $01 $01 $03
    rra                                           ; $7e99: $1f
    add e                                         ; $7e9a: $83
    ld e, $00                                     ; $7e9b: $1e $00
    nop                                           ; $7e9d: $00
    inc b                                         ; $7e9e: $04
    jr nc, @-$7d                                  ; $7e9f: $30 $81

    ld [hl], b                                    ; $7ea1: $70
    inc bc                                        ; $7ea2: $03
    ld h, b                                       ; $7ea3: $60
    adc b                                         ; $7ea4: $88
    ldh [$ffc0], a                                ; $7ea5: $e0 $c0
    jp $0383                                      ; $7ea7: $c3 $83 $03


    inc bc                                        ; $7eaa: $03
    nop                                           ; $7eab: $00
    nop                                           ; $7eac: $00
    inc b                                         ; $7ead: $04
    ld b, $81                                     ; $7eae: $06 $81
    ld c, $03                                     ; $7eb0: $0e $03
    inc c                                         ; $7eb2: $0c
    add [hl]                                      ; $7eb3: $86
    inc a                                         ; $7eb4: $3c
    jr c, @-$06                                   ; $7eb5: $38 $f8

    ldh a, [$ffe0]                                ; $7eb7: $f0 $e0
    ret nz                                        ; $7eb9: $c0

    inc c                                         ; $7eba: $0c
    nop                                           ; $7ebb: $00
    add e                                         ; $7ebc: $83
    inc bc                                        ; $7ebd: $03
    nop                                           ; $7ebe: $00
    inc bc                                        ; $7ebf: $03
    inc bc                                        ; $7ec0: $03
    nop                                           ; $7ec1: $00
    add l                                         ; $7ec2: $85
    inc bc                                        ; $7ec3: $03
    nop                                           ; $7ec4: $00
    rra                                           ; $7ec5: $1f
    nop                                           ; $7ec6: $00
    ld a, a                                       ; $7ec7: $7f
    dec b                                         ; $7ec8: $05
    nop                                           ; $7ec9: $00
    add e                                         ; $7eca: $83
    rst RST_38                                    ; $7ecb: $ff
    nop                                           ; $7ecc: $00
    rst RST_38                                    ; $7ecd: $ff
    add b                                         ; $7ece: $80
    add d                                         ; $7ecf: $82
    inc b                                         ; $7ed0: $04
    ld a, a                                       ; $7ed1: $7f
    ret nz                                        ; $7ed2: $c0

    ld hl, sp-$02                                 ; $7ed3: $f8 $fe
    inc bc                                        ; $7ed5: $03
    nop                                           ; $7ed6: $00
    add a                                         ; $7ed7: $87
    ld bc, $ff00                                  ; $7ed8: $01 $00 $ff
    nop                                           ; $7edb: $00
    rst RST_38                                    ; $7edc: $ff
    nop                                           ; $7edd: $00
    cp $09                                        ; $7ede: $fe $09
    nop                                           ; $7ee0: $00
    add l                                         ; $7ee1: $85
    add b                                         ; $7ee2: $80
    nop                                           ; $7ee3: $00
    ret nz                                        ; $7ee4: $c0

    nop                                           ; $7ee5: $00
    ret nz                                        ; $7ee6: $c0

    rlca                                          ; $7ee7: $07
    nop                                           ; $7ee8: $00
    add b                                         ; $7ee9: $80
    add c                                         ; $7eea: $81
    inc b                                         ; $7eeb: $04
    rrca                                          ; $7eec: $0f
    rrca                                          ; $7eed: $0f
    rrca                                          ; $7eee: $0f
    rrca                                          ; $7eef: $0f
    inc b                                         ; $7ef0: $04
    nop                                           ; $7ef1: $00
    add c                                         ; $7ef2: $81
    inc bc                                        ; $7ef3: $03
    inc bc                                        ; $7ef4: $03
    nop                                           ; $7ef5: $00
    adc c                                         ; $7ef6: $89
    rst RST_38                                    ; $7ef7: $ff
    nop                                           ; $7ef8: $00
    rst RST_38                                    ; $7ef9: $ff
    nop                                           ; $7efa: $00
    rst RST_38                                    ; $7efb: $ff
    nop                                           ; $7efc: $00
    rst RST_38                                    ; $7efd: $ff
    nop                                           ; $7efe: $00
    rrca                                          ; $7eff: $0f
    inc bc                                        ; $7f00: $03
    nop                                           ; $7f01: $00
    add c                                         ; $7f02: $81
    ldh [$ff03], a                                ; $7f03: $e0 $03
    nop                                           ; $7f05: $00
    adc c                                         ; $7f06: $89
    rst RST_38                                    ; $7f07: $ff
    nop                                           ; $7f08: $00
    ldh [rP1], a                                  ; $7f09: $e0 $00
    rst RST_38                                    ; $7f0b: $ff
    nop                                           ; $7f0c: $00
    rst RST_38                                    ; $7f0d: $ff
    nop                                           ; $7f0e: $00
    rst RST_38                                    ; $7f0f: $ff
    rlca                                          ; $7f10: $07
    nop                                           ; $7f11: $00
    add c                                         ; $7f12: $81
    ldh a, [$ff03]                                ; $7f13: $f0 $03
    nop                                           ; $7f15: $00
    add l                                         ; $7f16: $85
    ldh a, [rP1]                                  ; $7f17: $f0 $00
    ldh a, [rP1]                                  ; $7f19: $f0 $00
    ldh [$ff03], a                                ; $7f1b: $e0 $03
    nop                                           ; $7f1d: $00
    add l                                         ; $7f1e: $85
    rlca                                          ; $7f1f: $07
    nop                                           ; $7f20: $00
    inc bc                                        ; $7f21: $03
    nop                                           ; $7f22: $00
    inc bc                                        ; $7f23: $03
    dec bc                                        ; $7f24: $0b
    nop                                           ; $7f25: $00
    add l                                         ; $7f26: $85
    cp $00                                        ; $7f27: $fe $00
    rst RST_38                                    ; $7f29: $ff
    nop                                           ; $7f2a: $00
    rst RST_38                                    ; $7f2b: $ff
    inc bc                                        ; $7f2c: $03
    nop                                           ; $7f2d: $00
    add b                                         ; $7f2e: $80
    add c                                         ; $7f2f: $81
    inc b                                         ; $7f30: $04
    ldh a, [$ff7f]                                ; $7f31: $f0 $7f
    rra                                           ; $7f33: $1f
    inc bc                                        ; $7f34: $03
    add l                                         ; $7f35: $85
    nop                                           ; $7f36: $00
    nop                                           ; $7f37: $00
    ldh a, [rP1]                                  ; $7f38: $f0 $00
    rst RST_38                                    ; $7f3a: $ff
    dec b                                         ; $7f3b: $05
    nop                                           ; $7f3c: $00
    add l                                         ; $7f3d: $85
    cp $00                                        ; $7f3e: $fe $00
    ld hl, sp+$00                                 ; $7f40: $f8 $00
    ret nz                                        ; $7f42: $c0

    dec b                                         ; $7f43: $05
    nop                                           ; $7f44: $00
    add c                                         ; $7f45: $81
    ret nz                                        ; $7f46: $c0

    add hl, de                                    ; $7f47: $19
    nop                                           ; $7f48: $00
    sub [hl]                                      ; $7f49: $96
    db $db                                        ; $7f4a: $db
    nop                                           ; $7f4b: $00
    rrca                                          ; $7f4c: $0f
    rrca                                          ; $7f4d: $0f
    dec de                                        ; $7f4e: $1b
    db $10                                        ; $7f4f: $10
    dec d                                         ; $7f50: $15
    inc de                                        ; $7f51: $13
    rra                                           ; $7f52: $1f
    rla                                           ; $7f53: $17
    rra                                           ; $7f54: $1f
    rla                                           ; $7f55: $17
    dec bc                                        ; $7f56: $0b
    rrca                                          ; $7f57: $0f
    rra                                           ; $7f58: $1f
    rra                                           ; $7f59: $1f
    ld sp, $fc20                                  ; $7f5a: $31 $20 $fc
    db $fc                                        ; $7f5d: $fc
    or b                                          ; $7f5e: $b0
    ld [hl], b                                    ; $7f5f: $70
    add b                                         ; $7f60: $80
    add e                                         ; $7f61: $83
    dec b                                         ; $7f62: $05
    db $fc                                        ; $7f63: $fc
    ldh a, [$fff0]                                ; $7f64: $f0 $f0
    ldh [$fff0], a                                ; $7f66: $e0 $f0
    and d                                         ; $7f68: $a2
    ld l, b                                       ; $7f69: $68
    jr jr_006_7f97                                ; $7f6a: $18 $2b

    jr z, @+$3d                                   ; $7f6c: $28 $3b

    jr z, jr_006_7faf                             ; $7f6e: $28 $3f

    rra                                           ; $7f70: $1f
    dec c                                         ; $7f71: $0d
    dec bc                                        ; $7f72: $0b
    rrca                                          ; $7f73: $0f
    rrca                                          ; $7f74: $0f
    rlca                                          ; $7f75: $07
    dec b                                         ; $7f76: $05
    rlca                                          ; $7f77: $07
    dec b                                         ; $7f78: $05
    rst RST_28                                    ; $7f79: $ef
    rra                                           ; $7f7a: $1f
    xor b                                         ; $7f7b: $a8
    ld a, b                                       ; $7f7c: $78
    xor b                                         ; $7f7d: $a8
    ld a, b                                       ; $7f7e: $78

Call_006_7f7f:
    ld hl, sp-$10                                 ; $7f7f: $f8 $f0
    or b                                          ; $7f81: $b0
    ld [hl], b                                    ; $7f82: $70
    add sp, -$08                                  ; $7f83: $e8 $f8
    call z, $c044                                 ; $7f85: $cc $44 $c0
    ld b, b                                       ; $7f88: $40
    di                                            ; $7f89: $f3
    db $fc                                        ; $7f8a: $fc
    nop                                           ; $7f8b: $00
    sub h                                         ; $7f8c: $94
    rlca                                          ; $7f8d: $07
    rlca                                          ; $7f8e: $07
    rrca                                          ; $7f8f: $0f
    add hl, bc                                    ; $7f90: $09
    dec bc                                        ; $7f91: $0b
    rrca                                          ; $7f92: $0f
    scf                                           ; $7f93: $37
    rla                                           ; $7f94: $17
    ld a, a                                       ; $7f95: $7f
    ld [hl], a                                    ; $7f96: $77

jr_006_7f97:
    rst RST_38                                    ; $7f97: $ff
    ld a, a                                       ; $7f98: $7f
    rst RST_30                                    ; $7f99: $f7
    rst RST_20                                    ; $7f9a: $e7
    db $ec                                        ; $7f9b: $ec
    db $ec                                        ; $7f9c: $ec
    ldh a, [$ffe0]                                ; $7f9d: $f0 $e0
    ld a, b                                       ; $7f9f: $78
    ldh a, [rTAC]                                 ; $7fa0: $f0 $07
    ld hl, sp-$5b                                 ; $7fa2: $f8 $a5
    ldh a, [$fff0]                                ; $7fa4: $f0 $f0
    ldh [$ffd8], a                                ; $7fa6: $e0 $d8
    jr c, @-$03                                   ; $7fa8: $38 $fb

    ret nc                                        ; $7faa: $d0

    push de                                       ; $7fab: $d5
    ld d, h                                       ; $7fac: $54
    ld e, l                                       ; $7fad: $5d
    ld d, h                                       ; $7fae: $54

jr_006_7faf:
    rrca                                          ; $7faf: $0f
    rrca                                          ; $7fb0: $0f
    dec b                                         ; $7fb1: $05
    inc b                                         ; $7fb2: $04
    rlca                                          ; $7fb3: $07
    rlca                                          ; $7fb4: $07
    inc bc                                        ; $7fb5: $03
    ld [bc], a                                    ; $7fb6: $02
    rst RST_10                                    ; $7fb7: $d7
    rrca                                          ; $7fb8: $0f
    db $e4                                        ; $7fb9: $e4
    inc e                                         ; $7fba: $1c
    call nc, $dc3c                                ; $7fbb: $d4 $3c $dc
    inc [hl]                                      ; $7fbe: $34
    ld hl, sp-$08                                 ; $7fbf: $f8 $f8
    cp b                                          ; $7fc1: $b8
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

Call_006_7fcf:
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
