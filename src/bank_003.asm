; Disassembly of "Cave Noire (Japan).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ld e, $40                                     ; $4000: $1e $40
    jr nz, jr_003_4044                            ; $4002: $20 $40

    ld [hl+], a                                   ; $4004: $22
    ld b, b                                       ; $4005: $40
    ld a, [hl+]                                   ; $4006: $2a
    ld b, b                                       ; $4007: $40
    ld a, [hl-]                                   ; $4008: $3a
    ld b, b                                       ; $4009: $40
    ld c, d                                       ; $400a: $4a
    ld b, b                                       ; $400b: $40
    ld e, d                                       ; $400c: $5a
    ld b, b                                       ; $400d: $40
    ld l, d                                       ; $400e: $6a
    ld b, b                                       ; $400f: $40
    ld a, d                                       ; $4010: $7a
    ld b, b                                       ; $4011: $40
    adc d                                         ; $4012: $8a
    ld b, b                                       ; $4013: $40
    ld bc, $0401                                  ; $4014: $01 $01 $04
    ld [$0808], sp                                ; $4017: $08 $08 $08
    ld [$0808], sp                                ; $401a: $08 $08 $08
    ld [$409a], sp                                ; $401d: $08 $9a $40
    sbc d                                         ; $4020: $9a
    ld b, b                                       ; $4021: $40
    xor e                                         ; $4022: $ab
    ld b, b                                       ; $4023: $40
    cp l                                          ; $4024: $bd
    ld b, b                                       ; $4025: $40
    rst RST_08                                    ; $4026: $cf
    ld b, b                                       ; $4027: $40
    pop hl                                        ; $4028: $e1
    ld b, b                                       ; $4029: $40
    di                                            ; $402a: $f3
    ld b, b                                       ; $402b: $40
    ld b, $41                                     ; $402c: $06 $41
    add hl, de                                    ; $402e: $19
    ld b, c                                       ; $402f: $41
    inc l                                         ; $4030: $2c
    ld b, c                                       ; $4031: $41
    ccf                                           ; $4032: $3f
    ld b, c                                       ; $4033: $41
    ld d, d                                       ; $4034: $52
    ld b, c                                       ; $4035: $41
    ld h, l                                       ; $4036: $65
    ld b, c                                       ; $4037: $41
    ld a, b                                       ; $4038: $78
    ld b, c                                       ; $4039: $41
    adc e                                         ; $403a: $8b
    ld b, c                                       ; $403b: $41
    sbc a                                         ; $403c: $9f
    ld b, c                                       ; $403d: $41
    or e                                          ; $403e: $b3
    ld b, c                                       ; $403f: $41
    rst RST_00                                    ; $4040: $c7
    ld b, c                                       ; $4041: $41
    db $db                                        ; $4042: $db
    ld b, c                                       ; $4043: $41

jr_003_4044:
    rst RST_28                                    ; $4044: $ef
    ld b, c                                       ; $4045: $41
    inc bc                                        ; $4046: $03
    ld b, d                                       ; $4047: $42
    rla                                           ; $4048: $17
    ld b, d                                       ; $4049: $42
    dec hl                                        ; $404a: $2b
    ld b, d                                       ; $404b: $42
    ld b, b                                       ; $404c: $40
    ld b, d                                       ; $404d: $42
    ld d, l                                       ; $404e: $55
    ld b, d                                       ; $404f: $42
    ld l, d                                       ; $4050: $6a
    ld b, d                                       ; $4051: $42
    ld a, a                                       ; $4052: $7f
    ld b, d                                       ; $4053: $42
    sub h                                         ; $4054: $94
    ld b, d                                       ; $4055: $42
    xor c                                         ; $4056: $a9
    ld b, d                                       ; $4057: $42
    cp [hl]                                       ; $4058: $be
    ld b, d                                       ; $4059: $42
    db $d3                                        ; $405a: $d3
    ld b, d                                       ; $405b: $42
    jp hl                                         ; $405c: $e9


    ld b, d                                       ; $405d: $42
    rst RST_38                                    ; $405e: $ff
    ld b, d                                       ; $405f: $42
    dec d                                         ; $4060: $15
    ld b, e                                       ; $4061: $43
    dec hl                                        ; $4062: $2b
    ld b, e                                       ; $4063: $43
    ld b, c                                       ; $4064: $41
    ld b, e                                       ; $4065: $43
    ld d, a                                       ; $4066: $57
    ld b, e                                       ; $4067: $43
    ld l, l                                       ; $4068: $6d
    ld b, e                                       ; $4069: $43
    add e                                         ; $406a: $83
    ld b, e                                       ; $406b: $43
    sbc d                                         ; $406c: $9a
    ld b, e                                       ; $406d: $43
    or c                                          ; $406e: $b1

Jump_003_406f:
    ld b, e                                       ; $406f: $43
    ret z                                         ; $4070: $c8

    ld b, e                                       ; $4071: $43
    rst RST_18                                    ; $4072: $df
    ld b, e                                       ; $4073: $43
    or $43                                        ; $4074: $f6 $43
    dec c                                         ; $4076: $0d
    ld b, h                                       ; $4077: $44
    inc h                                         ; $4078: $24
    ld b, h                                       ; $4079: $44
    dec sp                                        ; $407a: $3b
    ld b, h                                       ; $407b: $44
    ld d, e                                       ; $407c: $53
    ld b, h                                       ; $407d: $44
    ld l, e                                       ; $407e: $6b
    ld b, h                                       ; $407f: $44
    add e                                         ; $4080: $83
    ld b, h                                       ; $4081: $44
    sbc e                                         ; $4082: $9b
    ld b, h                                       ; $4083: $44
    or e                                          ; $4084: $b3
    ld b, h                                       ; $4085: $44
    bit 0, h                                      ; $4086: $cb $44
    db $e3                                        ; $4088: $e3
    ld b, h                                       ; $4089: $44
    ei                                            ; $408a: $fb
    ld b, h                                       ; $408b: $44
    inc d                                         ; $408c: $14
    ld b, l                                       ; $408d: $45
    dec l                                         ; $408e: $2d
    ld b, l                                       ; $408f: $45
    ld b, [hl]                                    ; $4090: $46
    ld b, l                                       ; $4091: $45
    ld e, a                                       ; $4092: $5f
    ld b, l                                       ; $4093: $45
    ld a, b                                       ; $4094: $78
    ld b, l                                       ; $4095: $45
    sub c                                         ; $4096: $91
    ld b, l                                       ; $4097: $45
    xor d                                         ; $4098: $aa
    ld b, l                                       ; $4099: $45
    ld bc, $0101                                  ; $409a: $01 $01 $01
    ld bc, $0101                                  ; $409d: $01 $01 $01
    rst RST_38                                    ; $40a0: $ff
    rst RST_38                                    ; $40a1: $ff
    add b                                         ; $40a2: $80
    nop                                           ; $40a3: $00
    nop                                           ; $40a4: $00
    nop                                           ; $40a5: $00
    nop                                           ; $40a6: $00
    nop                                           ; $40a7: $00
    nop                                           ; $40a8: $00
    nop                                           ; $40a9: $00
    nop                                           ; $40aa: $00
    ld [bc], a                                    ; $40ab: $02
    ld bc, $0202                                  ; $40ac: $01 $02 $02
    ld [bc], a                                    ; $40af: $02
    ld bc, $ffff                                  ; $40b0: $01 $ff $ff
    ret nz                                        ; $40b3: $c0

    nop                                           ; $40b4: $00
    nop                                           ; $40b5: $00
    nop                                           ; $40b6: $00
    nop                                           ; $40b7: $00
    nop                                           ; $40b8: $00
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00
    ld [hl+], a                                   ; $40bb: $22
    adc b                                         ; $40bc: $88
    ld [bc], a                                    ; $40bd: $02
    ld bc, $0202                                  ; $40be: $01 $02 $02
    ld [bc], a                                    ; $40c1: $02
    ld bc, $0201                                  ; $40c2: $01 $01 $02
    and b                                         ; $40c5: $a0
    nop                                           ; $40c6: $00
    nop                                           ; $40c7: $00
    nop                                           ; $40c8: $00
    nop                                           ; $40c9: $00
    nop                                           ; $40ca: $00
    nop                                           ; $40cb: $00
    nop                                           ; $40cc: $00
    nop                                           ; $40cd: $00
    nop                                           ; $40ce: $00
    ld [bc], a                                    ; $40cf: $02
    ld bc, $0102                                  ; $40d0: $01 $02 $01
    ld bc, $ff02                                  ; $40d3: $01 $02 $ff
    rst RST_38                                    ; $40d6: $ff
    ret nz                                        ; $40d7: $c0

    nop                                           ; $40d8: $00
    nop                                           ; $40d9: $00
    nop                                           ; $40da: $00
    nop                                           ; $40db: $00
    nop                                           ; $40dc: $00
    nop                                           ; $40dd: $00
    nop                                           ; $40de: $00
    ld [bc], a                                    ; $40df: $02
    ld [$0102], sp                                ; $40e0: $08 $02 $01
    ld [bc], a                                    ; $40e3: $02
    ld bc, $0102                                  ; $40e4: $01 $02 $01
    ld bc, $8002                                  ; $40e7: $01 $02 $80
    nop                                           ; $40ea: $00
    jr nz, jr_003_40ed                            ; $40eb: $20 $00

jr_003_40ed:
    nop                                           ; $40ed: $00
    nop                                           ; $40ee: $00
    nop                                           ; $40ef: $00
    nop                                           ; $40f0: $00
    nop                                           ; $40f1: $00
    nop                                           ; $40f2: $00
    inc bc                                        ; $40f3: $03
    inc bc                                        ; $40f4: $03
    ld bc, $0102                                  ; $40f5: $01 $02 $01
    ld [bc], a                                    ; $40f8: $02
    rst RST_38                                    ; $40f9: $ff
    rst RST_38                                    ; $40fa: $ff
    ldh [rP1], a                                  ; $40fb: $e0 $00
    nop                                           ; $40fd: $00
    nop                                           ; $40fe: $00
    nop                                           ; $40ff: $00
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    ld [hl+], a                                   ; $4103: $22
    xor d                                         ; $4104: $aa
    adc b                                         ; $4105: $88
    inc bc                                        ; $4106: $03
    inc bc                                        ; $4107: $03
    ld bc, $0102                                  ; $4108: $01 $02 $01
    inc bc                                        ; $410b: $03
    rst RST_38                                    ; $410c: $ff
    rst RST_38                                    ; $410d: $ff
    add b                                         ; $410e: $80
    ret nz                                        ; $410f: $c0

    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    ld b, h                                       ; $4116: $44
    inc sp                                        ; $4117: $33
    adc b                                         ; $4118: $88
    inc bc                                        ; $4119: $03
    inc bc                                        ; $411a: $03
    ld bc, $0202                                  ; $411b: $01 $02 $02
    inc bc                                        ; $411e: $03
    ld bc, $8002                                  ; $411f: $01 $02 $80
    nop                                           ; $4122: $00
    ret nz                                        ; $4123: $c0

    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    nop                                           ; $4127: $00
    nop                                           ; $4128: $00
    nop                                           ; $4129: $00
    ld [hl+], a                                   ; $412a: $22
    adc b                                         ; $412b: $88
    inc bc                                        ; $412c: $03
    ld [bc], a                                    ; $412d: $02
    inc bc                                        ; $412e: $03
    ld bc, $0201                                  ; $412f: $01 $01 $02
    rst RST_38                                    ; $4132: $ff
    rst RST_38                                    ; $4133: $ff
    ldh [rP1], a                                  ; $4134: $e0 $00
    nop                                           ; $4136: $00
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    nop                                           ; $413b: $00
    ld [bc], a                                    ; $413c: $02
    ld a, [hl+]                                   ; $413d: $2a
    adc b                                         ; $413e: $88
    inc bc                                        ; $413f: $03
    ld bc, $0301                                  ; $4140: $01 $01 $03
    inc bc                                        ; $4143: $03
    ld [bc], a                                    ; $4144: $02
    rst RST_38                                    ; $4145: $ff
    rst RST_38                                    ; $4146: $ff
    ret nz                                        ; $4147: $c0

    ld b, b                                       ; $4148: $40
    nop                                           ; $4149: $00
    nop                                           ; $414a: $00
    nop                                           ; $414b: $00
    nop                                           ; $414c: $00
    nop                                           ; $414d: $00
    nop                                           ; $414e: $00
    ld [hl+], a                                   ; $414f: $22
    adc h                                         ; $4150: $8c
    ld bc, $0103                                  ; $4151: $01 $03 $01
    inc bc                                        ; $4154: $03
    ld bc, $0203                                  ; $4155: $01 $03 $02
    ld bc, $8003                                  ; $4158: $01 $03 $80
    ld b, b                                       ; $415b: $40
    ld b, b                                       ; $415c: $40
    nop                                           ; $415d: $00
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    inc b                                         ; $4163: $04
    ld bc, $0103                                  ; $4164: $01 $03 $01
    ld [bc], a                                    ; $4167: $02
    ld [bc], a                                    ; $4168: $02
    ld [bc], a                                    ; $4169: $02
    inc bc                                        ; $416a: $03
    ld bc, $c003                                  ; $416b: $01 $03 $c0
    nop                                           ; $416e: $00
    ld b, b                                       ; $416f: $40
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    nop                                           ; $4174: $00
    ld [bc], a                                    ; $4175: $02
    ld [$0300], sp                                ; $4176: $08 $00 $03
    ld [bc], a                                    ; $4179: $02
    ld bc, $0103                                  ; $417a: $01 $03 $01
    inc bc                                        ; $417d: $03
    rst RST_38                                    ; $417e: $ff
    rst RST_38                                    ; $417f: $ff
    ldh [rP1], a                                  ; $4180: $e0 $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    ld [bc], a                                    ; $4188: $02
    ld a, [bc]                                    ; $4189: $0a
    ld [$0204], sp                                ; $418a: $08 $04 $02
    inc b                                         ; $418d: $04
    inc bc                                        ; $418e: $03
    ld bc, $ff03                                  ; $418f: $01 $03 $ff
    rst RST_38                                    ; $4192: $ff
    ldh a, [rP1]                                  ; $4193: $f0 $00
    nop                                           ; $4195: $00
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419a: $00
    ld [hl+], a                                   ; $419b: $22
    xor d                                         ; $419c: $aa
    xor d                                         ; $419d: $aa
    adc b                                         ; $419e: $88
    inc b                                         ; $419f: $04
    ld [bc], a                                    ; $41a0: $02
    ld bc, $0403                                  ; $41a1: $01 $03 $04
    ld [bc], a                                    ; $41a4: $02
    ld bc, $8004                                  ; $41a5: $01 $04 $80
    ldh [rP1], a                                  ; $41a8: $e0 $00
    nop                                           ; $41aa: $00
    nop                                           ; $41ab: $00
    nop                                           ; $41ac: $00
    nop                                           ; $41ad: $00
    nop                                           ; $41ae: $00
    ld b, h                                       ; $41af: $44
    inc sp                                        ; $41b0: $33
    xor d                                         ; $41b1: $aa
    adc b                                         ; $41b2: $88
    inc b                                         ; $41b3: $04
    ld [bc], a                                    ; $41b4: $02
    ld bc, HeaderLogo                             ; $41b5: $01 $04 $01
    inc b                                         ; $41b8: $04
    rst RST_38                                    ; $41b9: $ff
    rst RST_38                                    ; $41ba: $ff
    ld b, b                                       ; $41bb: $40
    ldh [rP1], a                                  ; $41bc: $e0 $00
    nop                                           ; $41be: $00
    nop                                           ; $41bf: $00
    nop                                           ; $41c0: $00
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    inc b                                         ; $41c3: $04
    ld [hl+], a                                   ; $41c4: $22
    xor e                                         ; $41c5: $ab
    adc b                                         ; $41c6: $88
    inc b                                         ; $41c7: $04
    inc bc                                        ; $41c8: $03
    ld bc, $0201                                  ; $41c9: $01 $01 $02
    inc b                                         ; $41cc: $04
    ld bc, $c003                                  ; $41cd: $01 $03 $c0
    ret nz                                        ; $41d0: $c0

    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    nop                                           ; $41d4: $00
    nop                                           ; $41d5: $00
    nop                                           ; $41d6: $00
    ld [hl+], a                                   ; $41d7: $22
    call z, $9922                                 ; $41d8: $cc $22 $99
    inc b                                         ; $41db: $04
    inc bc                                        ; $41dc: $03
    ld bc, $0102                                  ; $41dd: $01 $02 $01
    inc bc                                        ; $41e0: $03
    rst RST_38                                    ; $41e1: $ff
    rst RST_38                                    ; $41e2: $ff
    ret nz                                        ; $41e3: $c0

    ret nz                                        ; $41e4: $c0

    nop                                           ; $41e5: $00
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    nop                                           ; $41e8: $00
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    ld b, [hl]                                    ; $41eb: $46
    ld c, h                                       ; $41ec: $4c
    inc de                                        ; $41ed: $13
    add hl, de                                    ; $41ee: $19
    inc b                                         ; $41ef: $04
    ld bc, $0402                                  ; $41f0: $01 $02 $04
    ld bc, $ff03                                  ; $41f3: $01 $03 $ff
    rst RST_38                                    ; $41f6: $ff
    ret nz                                        ; $41f7: $c0

    ld h, b                                       ; $41f8: $60
    nop                                           ; $41f9: $00
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    nop                                           ; $41fc: $00
    nop                                           ; $41fd: $00
    nop                                           ; $41fe: $00
    ld [hl+], a                                   ; $41ff: $22
    adc h                                         ; $4200: $8c
    inc hl                                        ; $4201: $23
    adc b                                         ; $4202: $88
    inc b                                         ; $4203: $04
    inc bc                                        ; $4204: $03
    inc b                                         ; $4205: $04
    ld bc, HeaderLogo                             ; $4206: $01 $04 $01
    ld [bc], a                                    ; $4209: $02
    inc b                                         ; $420a: $04
    ret nz                                        ; $420b: $c0

    nop                                           ; $420c: $00
    jr nz, jr_003_422f                            ; $420d: $20 $20

    nop                                           ; $420f: $00
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    ld [bc], a                                    ; $4213: $02
    ld [$1144], sp                                ; $4214: $08 $44 $11
    inc b                                         ; $4217: $04
    ld bc, $0401                                  ; $4218: $01 $01 $04
    inc b                                         ; $421b: $04
    inc bc                                        ; $421c: $03
    ld bc, $8002                                  ; $421d: $01 $02 $80
    nop                                           ; $4220: $00
    jr nz, jr_003_4283                            ; $4221: $20 $60

    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    ld b, h                                       ; $4228: $44
    ld [bc], a                                    ; $4229: $02
    add hl, de                                    ; $422a: $19
    dec b                                         ; $422b: $05
    ld [bc], a                                    ; $422c: $02
    dec b                                         ; $422d: $05
    inc bc                                        ; $422e: $03

jr_003_422f:
    inc b                                         ; $422f: $04
    ld [bc], a                                    ; $4230: $02
    rst RST_38                                    ; $4231: $ff
    rst RST_38                                    ; $4232: $ff
    ldh [$ff80], a                                ; $4233: $e0 $80
    add b                                         ; $4235: $80
    nop                                           ; $4236: $00
    nop                                           ; $4237: $00
    nop                                           ; $4238: $00
    nop                                           ; $4239: $00
    nop                                           ; $423a: $00
    ld h, [hl]                                    ; $423b: $66
    xor d                                         ; $423c: $aa
    adc b                                         ; $423d: $88
    ld d, l                                       ; $423e: $55
    ld de, $0205                                  ; $423f: $11 $05 $02
    dec b                                         ; $4242: $05
    ld bc, $0403                                  ; $4243: $01 $03 $04
    rst RST_38                                    ; $4246: $ff
    rst RST_38                                    ; $4247: $ff
    ldh [rLCDC], a                                ; $4248: $e0 $40
    ld b, b                                       ; $424a: $40
    nop                                           ; $424b: $00
    nop                                           ; $424c: $00
    nop                                           ; $424d: $00
    nop                                           ; $424e: $00
    nop                                           ; $424f: $00
    ld [hl+], a                                   ; $4250: $22
    xor [hl]                                      ; $4251: $ae
    adc b                                         ; $4252: $88
    ld b, l                                       ; $4253: $45
    ld de, $0305                                  ; $4254: $11 $05 $03
    dec b                                         ; $4257: $05
    ld [bc], a                                    ; $4258: $02
    ld bc, $ff04                                  ; $4259: $01 $04 $ff
    rst RST_38                                    ; $425c: $ff
    ld b, b                                       ; $425d: $40
    ldh [rLCDC], a                                ; $425e: $e0 $40
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    nop                                           ; $4264: $00
    ld b, h                                       ; $4265: $44
    ld [bc], a                                    ; $4266: $02
    ld a, a                                       ; $4267: $7f
    adc b                                         ; $4268: $88
    ld de, $0405                                  ; $4269: $11 $05 $04
    ld bc, $0302                                  ; $426c: $01 $02 $03
    ld [bc], a                                    ; $426f: $02
    ld bc, $6003                                  ; $4270: $01 $03 $60
    ldh [rP1], a                                  ; $4273: $e0 $00
    nop                                           ; $4275: $00
    nop                                           ; $4276: $00
    nop                                           ; $4277: $00
    nop                                           ; $4278: $00
    nop                                           ; $4279: $00
    ld [hl+], a                                   ; $427a: $22
    call z, $aa22                                 ; $427b: $cc $22 $aa
    sbc c                                         ; $427e: $99
    dec b                                         ; $427f: $05
    inc bc                                        ; $4280: $03
    inc b                                         ; $4281: $04
    ld [bc], a                                    ; $4282: $02

jr_003_4283:
    ld bc, $0105                                  ; $4283: $01 $05 $01
    inc bc                                        ; $4286: $03
    add b                                         ; $4287: $80
    ldh [rNR41], a                                ; $4288: $e0 $20
    nop                                           ; $428a: $00
    nop                                           ; $428b: $00
    nop                                           ; $428c: $00
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    ld b, h                                       ; $428f: $44
    inc de                                        ; $4290: $13
    ld a, [bc]                                    ; $4291: $0a
    ld c, h                                       ; $4292: $4c
    ld de, $0205                                  ; $4293: $11 $05 $02
    inc b                                         ; $4296: $04
    dec b                                         ; $4297: $05
    inc bc                                        ; $4298: $03
    dec b                                         ; $4299: $05
    ld bc, $f805                                  ; $429a: $01 $05 $f8
    nop                                           ; $429d: $00
    nop                                           ; $429e: $00
    nop                                           ; $429f: $00
    nop                                           ; $42a0: $00
    nop                                           ; $42a1: $00
    nop                                           ; $42a2: $00
    nop                                           ; $42a3: $00
    ld [hl+], a                                   ; $42a4: $22
    xor d                                         ; $42a5: $aa
    xor d                                         ; $42a6: $aa
    adc d                                         ; $42a7: $8a
    ld [$0505], sp                                ; $42a8: $08 $05 $05
    ld [bc], a                                    ; $42ab: $02
    inc b                                         ; $42ac: $04
    ld bc, $ff05                                  ; $42ad: $01 $05 $ff
    rst RST_38                                    ; $42b0: $ff
    ldh a, [rNR41]                                ; $42b1: $f0 $20
    nop                                           ; $42b3: $00
    nop                                           ; $42b4: $00
    nop                                           ; $42b5: $00
    nop                                           ; $42b6: $00
    nop                                           ; $42b7: $00
    nop                                           ; $42b8: $00
    ld [hl+], a                                   ; $42b9: $22
    xor d                                         ; $42ba: $aa
    xor [hl]                                      ; $42bb: $ae
    adc b                                         ; $42bc: $88
    ld bc, $0505                                  ; $42bd: $01 $05 $05
    inc bc                                        ; $42c0: $03
    ld bc, HeaderLogo                             ; $42c1: $01 $04 $01
    rst RST_38                                    ; $42c4: $ff
    rst RST_38                                    ; $42c5: $ff
    ldh a, [rNR10]                                ; $42c6: $f0 $10
    nop                                           ; $42c8: $00
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    nop                                           ; $42cb: $00
    nop                                           ; $42cc: $00
    nop                                           ; $42cd: $00
    ld [hl+], a                                   ; $42ce: $22
    xor d                                         ; $42cf: $aa
    adc d                                         ; $42d0: $8a
    ld c, h                                       ; $42d1: $4c
    ld de, $0406                                  ; $42d2: $11 $06 $04
    ld [bc], a                                    ; $42d5: $02
    dec b                                         ; $42d6: $05
    ld b, $03                                     ; $42d7: $06 $03
    ld bc, $8006                                  ; $42d9: $01 $06 $80
    ret nz                                        ; $42dc: $c0

    ld h, b                                       ; $42dd: $60
    jr nz, jr_003_42e0                            ; $42de: $20 $00

jr_003_42e0:
    nop                                           ; $42e0: $00
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    ld b, h                                       ; $42e3: $44
    inc sp                                        ; $42e4: $33
    call z, $cc33                                 ; $42e5: $cc $33 $cc
    ld de, $0306                                  ; $42e8: $11 $06 $03
    ld b, $01                                     ; $42eb: $06 $01
    dec b                                         ; $42ed: $05
    ld [bc], a                                    ; $42ee: $02
    ld bc, $8006                                  ; $42ef: $01 $06 $80
    ldh [rLCDC], a                                ; $42f2: $e0 $40
    ld b, b                                       ; $42f4: $40
    nop                                           ; $42f5: $00
    nop                                           ; $42f6: $00
    nop                                           ; $42f7: $00
    nop                                           ; $42f8: $00
    inc b                                         ; $42f9: $04
    inc hl                                        ; $42fa: $23
    xor $88                                       ; $42fb: $ee $88
    ld d, l                                       ; $42fd: $55
    ld de, $0306                                  ; $42fe: $11 $06 $03
    inc b                                         ; $4301: $04
    ld [bc], a                                    ; $4302: $02
    ld b, $01                                     ; $4303: $06 $01
    rst RST_38                                    ; $4305: $ff
    rst RST_38                                    ; $4306: $ff
    ld b, b                                       ; $4307: $40
    ldh [rLCDC], a                                ; $4308: $e0 $40
    ld b, b                                       ; $430a: $40
    nop                                           ; $430b: $00
    nop                                           ; $430c: $00
    nop                                           ; $430d: $00
    nop                                           ; $430e: $00

jr_003_430f:
    ld b, h                                       ; $430f: $44
    ld [hl+], a                                   ; $4310: $22
    rst RST_38                                    ; $4311: $ff
    adc b                                         ; $4312: $88
    dec d                                         ; $4313: $15
    ld bc, $0406                                  ; $4314: $01 $06 $04
    inc bc                                        ; $4317: $03
    ld [bc], a                                    ; $4318: $02
    ld bc, $ff06                                  ; $4319: $01 $06 $ff
    rst RST_38                                    ; $431c: $ff
    jr nz, jr_003_430f                            ; $431d: $20 $f0

    ld b, b                                       ; $431f: $40
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    nop                                           ; $4323: $00
    nop                                           ; $4324: $00
    ld b, h                                       ; $4325: $44
    ld [hl+], a                                   ; $4326: $22
    adc $3b                                       ; $4327: $ce $3b
    adc b                                         ; $4329: $88
    ld de, $0506                                  ; $432a: $11 $06 $05
    ld b, $03                                     ; $432d: $06 $03
    ld bc, $ff04                                  ; $432f: $01 $04 $ff
    rst RST_38                                    ; $4332: $ff
    add b                                         ; $4333: $80
    ret nz                                        ; $4334: $c0

    ret nz                                        ; $4335: $c0

    ld b, b                                       ; $4336: $40
    nop                                           ; $4337: $00
    nop                                           ; $4338: $00
    nop                                           ; $4339: $00
    nop                                           ; $433a: $00
    ld b, h                                       ; $433b: $44
    ld d, a                                       ; $433c: $57
    ld c, h                                       ; $433d: $4c
    inc de                                        ; $433e: $13
    ld e, l                                       ; $433f: $5d
    ld de, $0106                                  ; $4340: $11 $06 $01
    inc bc                                        ; $4343: $03
    ld b, $04                                     ; $4344: $06 $04
    ld bc, $0502                                  ; $4346: $01 $02 $05
    ldh [rNR41], a                                ; $4349: $e0 $20
    jr nz, jr_003_436d                            ; $434b: $20 $20

    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    nop                                           ; $434f: $00
    nop                                           ; $4350: $00
    ld [hl+], a                                   ; $4351: $22
    adc d                                         ; $4352: $8a
    ld c, h                                       ; $4353: $4c
    ld d, l                                       ; $4354: $55
    ld d, l                                       ; $4355: $55
    ld de, $0106                                  ; $4356: $11 $06 $01
    ld b, $03                                     ; $4359: $06 $03
    inc bc                                        ; $435b: $03
    inc b                                         ; $435c: $04
    rst RST_38                                    ; $435d: $ff
    rst RST_38                                    ; $435e: $ff
    ldh [$ffe0], a                                ; $435f: $e0 $e0
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    nop                                           ; $4366: $00
    ld h, [hl]                                    ; $4367: $66
    xor $cc                                       ; $4368: $ee $cc
    inc sp                                        ; $436a: $33
    cp e                                          ; $436b: $bb
    sbc c                                         ; $436c: $99

jr_003_436d:
    ld b, $03                                     ; $436d: $06 $03
    dec b                                         ; $436f: $05
    ld [bc], a                                    ; $4370: $02
    ld b, $03                                     ; $4371: $06 $03
    ld bc, $8004                                  ; $4373: $01 $04 $80
    ldh a, [rNR10]                                ; $4376: $f0 $10
    nop                                           ; $4378: $00
    nop                                           ; $4379: $00
    nop                                           ; $437a: $00
    nop                                           ; $437b: $00
    nop                                           ; $437c: $00
    ld b, h                                       ; $437d: $44
    inc sp                                        ; $437e: $33
    adc b                                         ; $437f: $88
    ld [hl+], a                                   ; $4380: $22
    call z, $0711                                 ; $4381: $cc $11 $07
    inc b                                         ; $4384: $04
    inc bc                                        ; $4385: $03
    rlca                                          ; $4386: $07
    inc bc                                        ; $4387: $03
    rlca                                          ; $4388: $07
    ld [bc], a                                    ; $4389: $02
    ld b, $e0                                     ; $438a: $06 $e0
    add b                                         ; $438c: $80
    ldh [rP1], a                                  ; $438d: $e0 $00
    nop                                           ; $438f: $00
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    ld h, [hl]                                    ; $4393: $66
    xor d                                         ; $4394: $aa
    adc b                                         ; $4395: $88
    ld d, l                                       ; $4396: $55
    inc sp                                        ; $4397: $33
    xor d                                         ; $4398: $aa
    adc b                                         ; $4399: $88
    rlca                                          ; $439a: $07
    inc bc                                        ; $439b: $03
    dec b                                         ; $439c: $05
    ld bc, $0206                                  ; $439d: $01 $06 $02
    ld bc, $8007                                  ; $43a0: $01 $07 $80
    add b                                         ; $43a3: $80
    ldh a, [rNR41]                                ; $43a4: $f0 $20
    nop                                           ; $43a6: $00
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    nop                                           ; $43a9: $00
    ld b, h                                       ; $43aa: $44
    ld d, l                                       ; $43ab: $55
    inc de                                        ; $43ac: $13
    ld a, [hl+]                                   ; $43ad: $2a
    xor $88                                       ; $43ae: $ee $88
    ld de, $0607                                  ; $43b0: $11 $07 $06
    ld [bc], a                                    ; $43b3: $02
    rlca                                          ; $43b4: $07
    dec b                                         ; $43b5: $05
    ld bc, $0403                                  ; $43b6: $01 $03 $04
    ret nz                                        ; $43b9: $c0

    ld b, b                                       ; $43ba: $40
    ld b, b                                       ; $43bb: $40
    ldh [rP1], a                                  ; $43bc: $e0 $00
    nop                                           ; $43be: $00
    nop                                           ; $43bf: $00
    nop                                           ; $43c0: $00
    ld [hl+], a                                   ; $43c1: $22
    call z, Call_003_4411                         ; $43c2: $cc $11 $44
    ld [hl+], a                                   ; $43c5: $22
    cp e                                          ; $43c6: $bb
    adc b                                         ; $43c7: $88
    rlca                                          ; $43c8: $07
    ld bc, $0404                                  ; $43c9: $01 $04 $04
    inc bc                                        ; $43cc: $03
    dec b                                         ; $43cd: $05
    ld bc, $fe07                                  ; $43ce: $01 $07 $fe
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    nop                                           ; $43d7: $00
    ld [bc], a                                    ; $43d8: $02
    ld a, [bc]                                    ; $43d9: $0a
    ld a, [bc]                                    ; $43da: $0a
    ld a, [bc]                                    ; $43db: $0a
    ld a, [bc]                                    ; $43dc: $0a
    ld a, [bc]                                    ; $43dd: $0a
    ld [$0407], sp                                ; $43de: $08 $07 $04
    ld [bc], a                                    ; $43e1: $02
    ld b, $01                                     ; $43e2: $06 $01
    rlca                                          ; $43e4: $07
    dec b                                         ; $43e5: $05
    ld b, $20                                     ; $43e6: $06 $20
    ld hl, sp+$20                                 ; $43e8: $f8 $20
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    nop                                           ; $43ee: $00
    ld b, h                                       ; $43ef: $44
    ld [hl+], a                                   ; $43f0: $22
    xor d                                         ; $43f1: $aa
    rst RST_38                                    ; $43f2: $ff
    xor d                                         ; $43f3: $aa
    adc b                                         ; $43f4: $88
    ld de, $0407                                  ; $43f5: $11 $07 $04
    dec b                                         ; $43f8: $05
    inc bc                                        ; $43f9: $03
    ld bc, $0307                                  ; $43fa: $01 $07 $03
    dec b                                         ; $43fd: $05
    ldh [rLCDC], a                                ; $43fe: $e0 $40
    ldh [rP1], a                                  ; $4400: $e0 $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    ld [hl+], a                                   ; $4406: $22
    xor $88                                       ; $4407: $ee $88
    ld d, l                                       ; $4409: $55
    ld [hl+], a                                   ; $440a: $22
    cp e                                          ; $440b: $bb
    adc b                                         ; $440c: $88
    rlca                                          ; $440d: $07
    inc bc                                        ; $440e: $03
    dec b                                         ; $440f: $05
    ld [bc], a                                    ; $4410: $02

Call_003_4411:
    ld bc, $0307                                  ; $4411: $01 $07 $03
    ld b, $e0                                     ; $4414: $06 $e0
    ld h, b                                       ; $4416: $60
    and b                                         ; $4417: $a0
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    nop                                           ; $441b: $00
    nop                                           ; $441c: $00
    ld [hl+], a                                   ; $441d: $22
    adc $0c                                       ; $441e: $ce $0c
    inc sp                                        ; $4420: $33
    call $1100                                    ; $4421: $cd $00 $11
    rlca                                          ; $4424: $07
    inc bc                                        ; $4425: $03
    ld bc, $0206                                  ; $4426: $01 $06 $02
    inc b                                         ; $4429: $04
    rst RST_38                                    ; $442a: $ff
    rst RST_38                                    ; $442b: $ff
    ld b, b                                       ; $442c: $40
    ldh [$ffe0], a                                ; $442d: $e0 $e0
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    inc b                                         ; $4434: $04
    ld b, [hl]                                    ; $4435: $46
    rrca                                          ; $4436: $0f
    ld c, h                                       ; $4437: $4c
    inc sp                                        ; $4438: $33
    xor e                                         ; $4439: $ab
    sbc c                                         ; $443a: $99
    ld [$0601], sp                                ; $443b: $08 $01 $06
    inc bc                                        ; $443e: $03
    ld [bc], a                                    ; $443f: $02
    rlca                                          ; $4440: $07
    ld bc, $e008                                  ; $4441: $01 $08 $e0
    and b                                         ; $4444: $a0
    ldh [rP1], a                                  ; $4445: $e0 $00
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    ld h, [hl]                                    ; $444b: $66
    xor d                                         ; $444c: $aa
    call z, Call_003_5555                         ; $444d: $cc $55 $55
    inc sp                                        ; $4450: $33
    xor d                                         ; $4451: $aa
    sbc c                                         ; $4452: $99
    ld [$0802], sp                                ; $4453: $08 $02 $08
    inc b                                         ; $4456: $04
    ld bc, $ff07                                  ; $4457: $01 $07 $ff
    rst RST_38                                    ; $445a: $ff
    ld b, b                                       ; $445b: $40
    ld [hl], b                                    ; $445c: $70
    ldh [rNR41], a                                ; $445d: $e0 $20
    nop                                           ; $445f: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    ld b, h                                       ; $4463: $44
    ld [hl], a                                    ; $4464: $77
    xor $88                                       ; $4465: $ee $88
    ld [hl+], a                                   ; $4467: $22
    cp e                                          ; $4468: $bb
    db $dd                                        ; $4469: $dd
    ld de, $0508                                  ; $446a: $11 $08 $05
    inc b                                         ; $446d: $04
    ld [bc], a                                    ; $446e: $02
    ld b, $03                                     ; $446f: $06 $03
    ld bc, $f008                                  ; $4471: $01 $08 $f0
    ldh a, [rP1]                                  ; $4474: $f0 $00
    nop                                           ; $4476: $00
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    ld h, [hl]                                    ; $447b: $66
    adc $6e                                       ; $447c: $ce $6e
    call z, $9b33                                 ; $447e: $cc $33 $9b
    dec sp                                        ; $4481: $3b
    sbc c                                         ; $4482: $99
    ld [$0405], sp                                ; $4483: $08 $05 $04
    inc bc                                        ; $4486: $03
    ld [$0201], sp                                ; $4487: $08 $01 $02
    rlca                                          ; $448a: $07
    rst RST_38                                    ; $448b: $ff
    nop                                           ; $448c: $00
    nop                                           ; $448d: $00
    nop                                           ; $448e: $00
    nop                                           ; $448f: $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    ld [hl+], a                                   ; $4493: $22
    xor d                                         ; $4494: $aa
    xor d                                         ; $4495: $aa
    xor d                                         ; $4496: $aa
    xor d                                         ; $4497: $aa
    xor d                                         ; $4498: $aa
    xor d                                         ; $4499: $aa
    adc b                                         ; $449a: $88
    ld [$0804], sp                                ; $449b: $08 $04 $08
    ld bc, $0703                                  ; $449e: $01 $03 $07
    inc bc                                        ; $44a1: $03
    ld b, $70                                     ; $44a2: $06 $70
    ld h, b                                       ; $44a4: $60
    ldh [rP1], a                                  ; $44a5: $e0 $00
    nop                                           ; $44a7: $00
    nop                                           ; $44a8: $00
    nop                                           ; $44a9: $00
    nop                                           ; $44aa: $00
    ld b, h                                       ; $44ab: $44
    ld h, [hl]                                    ; $44ac: $66
    adc b                                         ; $44ad: $88
    ld [hl], a                                    ; $44ae: $77
    db $dd                                        ; $44af: $dd
    ld [hl+], a                                   ; $44b0: $22
    sbc c                                         ; $44b1: $99
    ld de, $0108                                  ; $44b2: $11 $08 $01
    inc bc                                        ; $44b5: $03
    ld [$0207], sp                                ; $44b6: $08 $07 $02
    ld bc, $1005                                  ; $44b9: $01 $05 $10
    ld h, b                                       ; $44bc: $60
    ldh [$ffc0], a                                ; $44bd: $e0 $c0
    nop                                           ; $44bf: $00
    nop                                           ; $44c0: $00
    nop                                           ; $44c1: $00
    nop                                           ; $44c2: $00
    nop                                           ; $44c3: $00
    ld h, $cc                                     ; $44c4: $26 $cc
    ld h, [hl]                                    ; $44c6: $66
    rst RST_08                                    ; $44c7: $cf
    add hl, de                                    ; $44c8: $19
    inc sp                                        ; $44c9: $33
    sbc c                                         ; $44ca: $99
    ld [$0207], sp                                ; $44cb: $08 $07 $02
    ld b, $04                                     ; $44ce: $06 $04
    dec b                                         ; $44d0: $05
    ld bc, $3008                                  ; $44d1: $01 $08 $30
    ld h, b                                       ; $44d4: $60
    ld h, b                                       ; $44d5: $60
    ret nz                                        ; $44d6: $c0

    nop                                           ; $44d7: $00
    nop                                           ; $44d8: $00
    nop                                           ; $44d9: $00
    nop                                           ; $44da: $00
    ld h, [hl]                                    ; $44db: $66
    adc b                                         ; $44dc: $88
    ld b, [hl]                                    ; $44dd: $46
    ld e, l                                       ; $44de: $5d
    ld d, a                                       ; $44df: $57
    add hl, de                                    ; $44e0: $19
    ld [hl+], a                                   ; $44e1: $22
    sbc c                                         ; $44e2: $99
    ld [$0603], sp                                ; $44e3: $08 $03 $06
    rlca                                          ; $44e6: $07
    ld [$ff02], sp                                ; $44e7: $08 $02 $ff
    rst RST_38                                    ; $44ea: $ff
    sub b                                         ; $44eb: $90
    ldh a, [$ff90]                                ; $44ec: $f0 $90
    nop                                           ; $44ee: $00
    nop                                           ; $44ef: $00
    nop                                           ; $44f0: $00
    nop                                           ; $44f1: $00
    nop                                           ; $44f2: $00
    ld b, h                                       ; $44f3: $44
    ld b, h                                       ; $44f4: $44
    ld [hl], a                                    ; $44f5: $77
    adc d                                         ; $44f6: $8a
    ld a, [hl+]                                   ; $44f7: $2a
    db $dd                                        ; $44f8: $dd
    ld de, $0911                                  ; $44f9: $11 $11 $09
    dec b                                         ; $44fc: $05
    ld bc, $0709                                  ; $44fd: $01 $09 $07
    inc bc                                        ; $4500: $03
    rst RST_38                                    ; $4501: $ff
    rst RST_38                                    ; $4502: $ff
    ldh [$ffe0], a                                ; $4503: $e0 $e0
    ldh [rP1], a                                  ; $4505: $e0 $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    nop                                           ; $450a: $00
    ld h, [hl]                                    ; $450b: $66
    xor $cc                                       ; $450c: $ee $cc
    ld [hl], a                                    ; $450e: $77
    rst RST_38                                    ; $450f: $ff
    db $dd                                        ; $4510: $dd
    inc sp                                        ; $4511: $33
    cp e                                          ; $4512: $bb
    sbc c                                         ; $4513: $99
    add hl, bc                                    ; $4514: $09
    dec b                                         ; $4515: $05
    ld bc, $0806                                  ; $4516: $01 $06 $08
    ld [bc], a                                    ; $4519: $02
    rst RST_38                                    ; $451a: $ff
    rst RST_38                                    ; $451b: $ff
    ldh [$ff38], a                                ; $451c: $e0 $38
    ldh [rP1], a                                  ; $451e: $e0 $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    ld [hl+], a                                   ; $4524: $22
    xor d                                         ; $4525: $aa
    adc h                                         ; $4526: $8c
    daa                                           ; $4527: $27
    xor d                                         ; $4528: $aa
    adc b                                         ; $4529: $88
    ld [hl+], a                                   ; $452a: $22
    xor d                                         ; $452b: $aa
    adc c                                         ; $452c: $89
    add hl, bc                                    ; $452d: $09
    inc b                                         ; $452e: $04
    rlca                                          ; $452f: $07
    dec b                                         ; $4530: $05
    inc bc                                        ; $4531: $03
    add hl, bc                                    ; $4532: $09
    rst RST_38                                    ; $4533: $ff
    rst RST_38                                    ; $4534: $ff
    jr nz, jr_003_4557                            ; $4535: $20 $20

    ld hl, sp+$20                                 ; $4537: $f8 $20
    jr nz, jr_003_453b                            ; $4539: $20 $00

jr_003_453b:
    nop                                           ; $453b: $00
    nop                                           ; $453c: $00
    inc b                                         ; $453d: $04
    ld b, l                                       ; $453e: $45
    ld [bc], a                                    ; $453f: $02
    ld a, [hl+]                                   ; $4540: $2a
    rst RST_38                                    ; $4541: $ff
    adc d                                         ; $4542: $8a
    ld [$0115], sp                                ; $4543: $08 $15 $01
    add hl, bc                                    ; $4546: $09
    dec b                                         ; $4547: $05
    inc bc                                        ; $4548: $03
    rlca                                          ; $4549: $07
    ld [bc], a                                    ; $454a: $02
    ld [$0901], sp                                ; $454b: $08 $01 $09
    ld d, b                                       ; $454e: $50
    ld hl, sp+$50                                 ; $454f: $f8 $50
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    ld b, h                                       ; $4556: $44

jr_003_4557:
    ld b, h                                       ; $4557: $44
    ld [bc], a                                    ; $4558: $02
    ld e, a                                       ; $4559: $5f
    ld a, [bc]                                    ; $455a: $0a
    ld e, a                                       ; $455b: $5f
    ld [$1111], sp                                ; $455c: $08 $11 $11
    add hl, bc                                    ; $455f: $09
    ld b, $03                                     ; $4560: $06 $03
    ld bc, $0409                                  ; $4562: $01 $09 $04
    ld [bc], a                                    ; $4565: $02
    ld [$f850], sp                                ; $4566: $08 $50 $f8
    jr nz, @+$22                                  ; $4569: $20 $20

    nop                                           ; $456b: $00
    nop                                           ; $456c: $00
    nop                                           ; $456d: $00
    nop                                           ; $456e: $00
    ld b, h                                       ; $456f: $44
    ld b, h                                       ; $4570: $44
    ld [hl+], a                                   ; $4571: $22
    cp e                                          ; $4572: $bb
    xor $bb                                       ; $4573: $ee $bb
    adc b                                         ; $4575: $88
    dec d                                         ; $4576: $15
    ld bc, $0509                                  ; $4577: $01 $09 $05
    inc bc                                        ; $457a: $03
    add hl, bc                                    ; $457b: $09
    ld b, $02                                     ; $457c: $06 $02
    ld bc, $6008                                  ; $457e: $01 $08 $60
    ldh a, [$ff30]                                ; $4581: $f0 $30
    jr nz, jr_003_4585                            ; $4583: $20 $00

jr_003_4585:
    nop                                           ; $4585: $00
    nop                                           ; $4586: $00
    nop                                           ; $4587: $00
    ld b, [hl]                                    ; $4588: $46
    ld [$bb22], sp                                ; $4589: $08 $22 $bb
    call z, Call_003_7704                         ; $458c: $cc $04 $77
    adc c                                         ; $458f: $89
    ld de, $0609                                  ; $4590: $11 $09 $06
    inc bc                                        ; $4593: $03
    inc b                                         ; $4594: $04
    add hl, bc                                    ; $4595: $09
    ld [bc], a                                    ; $4596: $02
    ld bc, $2007                                  ; $4597: $01 $07 $20
    xor b                                         ; $459a: $a8
    ld hl, sp+$00                                 ; $459b: $f8 $00
    nop                                           ; $459d: $00
    nop                                           ; $459e: $00
    nop                                           ; $459f: $00
    nop                                           ; $45a0: $00
    ld b, h                                       ; $45a1: $44
    ld b, h                                       ; $45a2: $44
    ld de, $3344                                  ; $45a3: $11 $44 $33
    xor d                                         ; $45a6: $aa
    xor d                                         ; $45a7: $aa
    xor d                                         ; $45a8: $aa
    sbc c                                         ; $45a9: $99
    add hl, bc                                    ; $45aa: $09
    ld [bc], a                                    ; $45ab: $02
    ld [$0305], sp                                ; $45ac: $08 $05 $03
    rlca                                          ; $45af: $07
    rst RST_38                                    ; $45b0: $ff
    rst RST_38                                    ; $45b1: $ff
    add b                                         ; $45b2: $80
    ret nz                                        ; $45b3: $c0

    ldh [$ff60], a                                ; $45b4: $e0 $60
    jr nz, jr_003_45b8                            ; $45b6: $20 $00

jr_003_45b8:
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    ld b, h                                       ; $45ba: $44
    ld [hl], a                                    ; $45bb: $77
    adc b                                         ; $45bc: $88
    inc de                                        ; $45bd: $13
    ld a, [bc]                                    ; $45be: $0a
    ld c, h                                       ; $45bf: $4c
    ld [hl+], a                                   ; $45c0: $22
    db $dd                                        ; $45c1: $dd
    ld de, $0019                                  ; $45c2: $11 $19 $00
    inc bc                                        ; $45c5: $03
    ld b, $07                                     ; $45c6: $06 $07
    ld [$140d], sp                                ; $45c8: $08 $0d $14
    dec d                                         ; $45cb: $15
    jr jr_003_45e7                                ; $45cc: $18 $19

    ld a, [de]                                    ; $45ce: $1a
    inc e                                         ; $45cf: $1c
    inc hl                                        ; $45d0: $23
    dec h                                         ; $45d1: $25
    daa                                           ; $45d2: $27
    add hl, hl                                    ; $45d3: $29
    ld a, [hl+]                                   ; $45d4: $2a
    dec l                                         ; $45d5: $2d
    ld l, $2f                                     ; $45d6: $2e $2f
    inc sp                                        ; $45d8: $33
    dec sp                                        ; $45d9: $3b
    inc a                                         ; $45da: $3c
    ld a, $3f                                     ; $45db: $3e $3f
    ld e, $00                                     ; $45dd: $1e $00
    ld [bc], a                                    ; $45df: $02
    inc bc                                        ; $45e0: $03
    dec b                                         ; $45e1: $05
    rlca                                          ; $45e2: $07
    ld [$0a09], sp                                ; $45e3: $08 $09 $0a
    dec c                                         ; $45e6: $0d

jr_003_45e7:
    db $10                                        ; $45e7: $10
    ld de, $1312                                  ; $45e8: $11 $12 $13
    ld d, $17                                     ; $45eb: $16 $17
    jr jr_003_4609                                ; $45ed: $18 $1a

    dec de                                        ; $45ef: $1b
    ld [hl+], a                                   ; $45f0: $22
    inc hl                                        ; $45f1: $23
    dec h                                         ; $45f2: $25
    daa                                           ; $45f3: $27
    jr z, jr_003_4620                             ; $45f4: $28 $2a

    inc l                                         ; $45f6: $2c
    dec l                                         ; $45f7: $2d
    ld l, $2f                                     ; $45f8: $2e $2f
    scf                                           ; $45fa: $37
    dec sp                                        ; $45fb: $3b
    dec e                                         ; $45fc: $1d
    ld bc, $0803                                  ; $45fd: $01 $03 $08
    inc c                                         ; $4600: $0c
    ld c, $10                                     ; $4601: $0e $10
    ld de, $1413                                  ; $4603: $11 $13 $14
    ld d, $18                                     ; $4606: $16 $18
    dec de                                        ; $4608: $1b

jr_003_4609:
    rra                                           ; $4609: $1f
    jr nz, jr_003_462d                            ; $460a: $20 $21

    inc hl                                        ; $460c: $23
    inc h                                         ; $460d: $24
    dec h                                         ; $460e: $25
    ld h, $28                                     ; $460f: $26 $28
    add hl, hl                                    ; $4611: $29
    ld a, [hl+]                                   ; $4612: $2a
    inc l                                         ; $4613: $2c
    ld l, $2f                                     ; $4614: $2e $2f
    ld sp, $3b37                                  ; $4616: $31 $37 $3b
    ld a, $1b                                     ; $4619: $3e $1b
    nop                                           ; $461b: $00
    ld [bc], a                                    ; $461c: $02
    rlca                                          ; $461d: $07
    add hl, bc                                    ; $461e: $09
    ld a, [bc]                                    ; $461f: $0a

jr_003_4620:
    dec bc                                        ; $4620: $0b
    dec c                                         ; $4621: $0d
    rrca                                          ; $4622: $0f
    db $10                                        ; $4623: $10
    ld [de], a                                    ; $4624: $12
    inc de                                        ; $4625: $13
    inc d                                         ; $4626: $14
    dec d                                         ; $4627: $15
    add hl, de                                    ; $4628: $19
    ld a, [de]                                    ; $4629: $1a
    dec de                                        ; $462a: $1b
    inc e                                         ; $462b: $1c
    dec e                                         ; $462c: $1d

jr_003_462d:
    ld [hl+], a                                   ; $462d: $22
    inc hl                                        ; $462e: $23
    dec h                                         ; $462f: $25
    daa                                           ; $4630: $27
    dec l                                         ; $4631: $2d
    ld l, $2f                                     ; $4632: $2e $2f
    scf                                           ; $4634: $37
    dec sp                                        ; $4635: $3b
    dec e                                         ; $4636: $1d
    ld bc, $0703                                  ; $4637: $01 $03 $07
    ld [$0e0d], sp                                ; $463a: $08 $0d $0e
    db $10                                        ; $463d: $10
    ld de, $1413                                  ; $463e: $11 $13 $14
    dec d                                         ; $4641: $15
    rla                                           ; $4642: $17
    add hl, de                                    ; $4643: $19
    dec de                                        ; $4644: $1b
    inc e                                         ; $4645: $1c
    dec e                                         ; $4646: $1d
    ld e, $1f                                     ; $4647: $1e $1f
    jr nz, jr_003_466e                            ; $4649: $20 $23

    dec h                                         ; $464b: $25
    add hl, hl                                    ; $464c: $29
    ld l, $2f                                     ; $464d: $2e $2f
    ld sp, $3733                                  ; $464f: $31 $33 $37
    dec sp                                        ; $4652: $3b
    ld a, $1b                                     ; $4653: $3e $1b
    inc b                                         ; $4655: $04
    ld b, $07                                     ; $4656: $06 $07
    ld [$150f], sp                                ; $4658: $08 $0f $15
    ld d, $18                                     ; $465b: $16 $18
    add hl, de                                    ; $465d: $19
    dec de                                        ; $465e: $1b
    inc e                                         ; $465f: $1c
    dec e                                         ; $4660: $1d
    ld e, $21                                     ; $4661: $1e $21
    ld [hl+], a                                   ; $4663: $22
    inc hl                                        ; $4664: $23
    inc h                                         ; $4665: $24
    dec h                                         ; $4666: $25
    ld h, $2a                                     ; $4667: $26 $2a
    dec hl                                        ; $4669: $2b
    inc l                                         ; $466a: $2c
    ld l, $2f                                     ; $466b: $2e $2f
    inc sp                                        ; $466d: $33

jr_003_466e:
    scf                                           ; $466e: $37
    dec sp                                        ; $466f: $3b
    add hl, de                                    ; $4670: $19
    inc bc                                        ; $4671: $03
    dec b                                         ; $4672: $05
    rlca                                          ; $4673: $07
    dec c                                         ; $4674: $0d
    ld de, $1513                                  ; $4675: $11 $13 $15
    rla                                           ; $4678: $17
    add hl, de                                    ; $4679: $19
    inc e                                         ; $467a: $1c
    dec e                                         ; $467b: $1d
    ld [hl+], a                                   ; $467c: $22
    inc hl                                        ; $467d: $23
    dec h                                         ; $467e: $25
    add hl, hl                                    ; $467f: $29
    ld l, $2f                                     ; $4680: $2e $2f
    jr nc, jr_003_46b9                            ; $4682: $30 $35

    ld [hl], $37                                  ; $4684: $36 $37
    add hl, sp                                    ; $4686: $39
    dec sp                                        ; $4687: $3b
    dec a                                         ; $4688: $3d
    ccf                                           ; $4689: $3f
    ld d, $07                                     ; $468a: $16 $07
    dec c                                         ; $468c: $0d
    inc de                                        ; $468d: $13
    dec d                                         ; $468e: $15
    add hl, de                                    ; $468f: $19
    inc e                                         ; $4690: $1c
    dec e                                         ; $4691: $1d
    ld hl, $2322                                  ; $4692: $21 $22 $23
    dec h                                         ; $4695: $25
    dec hl                                        ; $4696: $2b
    ld l, $2f                                     ; $4697: $2e $2f
    jr nc, jr_003_46d0                            ; $4699: $30 $35

    ld [hl], $37                                  ; $469b: $36 $37
    ld a, [hl-]                                   ; $469d: $3a
    dec sp                                        ; $469e: $3b
    dec a                                         ; $469f: $3d
    ccf                                           ; $46a0: $3f
    jr jr_003_46a5                                ; $46a1: $18 $02

    rlca                                          ; $46a3: $07
    dec c                                         ; $46a4: $0d

jr_003_46a5:
    rrca                                          ; $46a5: $0f
    db $10                                        ; $46a6: $10
    dec d                                         ; $46a7: $15
    add hl, de                                    ; $46a8: $19
    inc e                                         ; $46a9: $1c
    dec e                                         ; $46aa: $1d
    inc hl                                        ; $46ab: $23
    dec h                                         ; $46ac: $25
    ld l, $2f                                     ; $46ad: $2e $2f
    jr nc, jr_003_46e3                            ; $46af: $30 $32

    inc [hl]                                      ; $46b1: $34
    dec [hl]                                      ; $46b2: $35
    ld [hl], $37                                  ; $46b3: $36 $37
    jr c, @+$3d                                   ; $46b5: $38 $3b

    inc a                                         ; $46b7: $3c
    dec a                                         ; $46b8: $3d

jr_003_46b9:
    ccf                                           ; $46b9: $3f
    jr jr_003_46bc                                ; $46ba: $18 $00

jr_003_46bc:
    inc bc                                        ; $46bc: $03
    ld b, $07                                     ; $46bd: $06 $07
    ld [$140d], sp                                ; $46bf: $08 $0d $14
    dec d                                         ; $46c2: $15
    jr jr_003_46de                                ; $46c3: $18 $19

    ld a, [de]                                    ; $46c5: $1a
    inc e                                         ; $46c6: $1c
    inc hl                                        ; $46c7: $23
    dec h                                         ; $46c8: $25
    daa                                           ; $46c9: $27
    add hl, hl                                    ; $46ca: $29
    ld a, [hl+]                                   ; $46cb: $2a
    dec l                                         ; $46cc: $2d
    ld l, $2f                                     ; $46cd: $2e $2f
    inc sp                                        ; $46cf: $33

jr_003_46d0:
    inc a                                         ; $46d0: $3c
    ld a, $3f                                     ; $46d1: $3e $3f
    dec de                                        ; $46d3: $1b
    nop                                           ; $46d4: $00
    ld [bc], a                                    ; $46d5: $02
    inc bc                                        ; $46d6: $03
    dec b                                         ; $46d7: $05
    rlca                                          ; $46d8: $07
    ld [$100d], sp                                ; $46d9: $08 $0d $10
    ld [de], a                                    ; $46dc: $12
    inc de                                        ; $46dd: $13

jr_003_46de:
    ld d, $17                                     ; $46de: $16 $17
    jr jr_003_46fc                                ; $46e0: $18 $1a

    dec de                                        ; $46e2: $1b

jr_003_46e3:
    ld [hl+], a                                   ; $46e3: $22
    inc hl                                        ; $46e4: $23
    dec h                                         ; $46e5: $25
    daa                                           ; $46e6: $27
    jr z, jr_003_4713                             ; $46e7: $28 $2a

    inc l                                         ; $46e9: $2c
    dec l                                         ; $46ea: $2d
    ld l, $2f                                     ; $46eb: $2e $2f
    inc sp                                        ; $46ed: $33
    scf                                           ; $46ee: $37
    inc e                                         ; $46ef: $1c
    ld bc, $0803                                  ; $46f0: $01 $03 $08
    inc c                                         ; $46f3: $0c
    ld c, $10                                     ; $46f4: $0e $10
    inc de                                        ; $46f6: $13
    inc d                                         ; $46f7: $14
    ld d, $18                                     ; $46f8: $16 $18
    dec de                                        ; $46fa: $1b
    rra                                           ; $46fb: $1f

jr_003_46fc:
    jr nz, jr_003_471f                            ; $46fc: $20 $21

    inc hl                                        ; $46fe: $23
    inc h                                         ; $46ff: $24
    dec h                                         ; $4700: $25
    ld h, $28                                     ; $4701: $26 $28
    add hl, hl                                    ; $4703: $29
    ld a, [hl+]                                   ; $4704: $2a
    inc l                                         ; $4705: $2c
    ld l, $2f                                     ; $4706: $2e $2f
    ld sp, $3733                                  ; $4708: $31 $33 $37
    ld a, $18                                     ; $470b: $3e $18
    nop                                           ; $470d: $00
    ld [bc], a                                    ; $470e: $02
    rlca                                          ; $470f: $07
    dec bc                                        ; $4710: $0b
    dec c                                         ; $4711: $0d
    rrca                                          ; $4712: $0f

jr_003_4713:
    db $10                                        ; $4713: $10
    ld [de], a                                    ; $4714: $12
    inc de                                        ; $4715: $13
    inc d                                         ; $4716: $14
    dec d                                         ; $4717: $15
    add hl, de                                    ; $4718: $19
    ld a, [de]                                    ; $4719: $1a
    dec de                                        ; $471a: $1b
    inc e                                         ; $471b: $1c
    dec e                                         ; $471c: $1d
    ld [hl+], a                                   ; $471d: $22
    inc hl                                        ; $471e: $23

jr_003_471f:
    dec h                                         ; $471f: $25
    daa                                           ; $4720: $27
    dec l                                         ; $4721: $2d
    ld l, $2f                                     ; $4722: $2e $2f
    scf                                           ; $4724: $37
    dec de                                        ; $4725: $1b
    ld bc, $0703                                  ; $4726: $01 $03 $07
    ld [$0e0d], sp                                ; $4729: $08 $0d $0e
    db $10                                        ; $472c: $10
    inc de                                        ; $472d: $13
    inc d                                         ; $472e: $14
    dec d                                         ; $472f: $15
    rla                                           ; $4730: $17
    add hl, de                                    ; $4731: $19
    dec de                                        ; $4732: $1b
    inc e                                         ; $4733: $1c
    dec e                                         ; $4734: $1d
    ld e, $1f                                     ; $4735: $1e $1f
    jr nz, jr_003_475c                            ; $4737: $20 $23

    dec h                                         ; $4739: $25
    add hl, hl                                    ; $473a: $29
    ld l, $2f                                     ; $473b: $2e $2f
    ld sp, $3733                                  ; $473d: $31 $33 $37
    ld a, $1a                                     ; $4740: $3e $1a
    inc b                                         ; $4742: $04
    ld b, $07                                     ; $4743: $06 $07
    ld [$150f], sp                                ; $4745: $08 $0f $15
    ld d, $18                                     ; $4748: $16 $18
    add hl, de                                    ; $474a: $19
    dec de                                        ; $474b: $1b
    inc e                                         ; $474c: $1c
    dec e                                         ; $474d: $1d
    ld e, $21                                     ; $474e: $1e $21
    ld [hl+], a                                   ; $4750: $22
    inc hl                                        ; $4751: $23
    inc h                                         ; $4752: $24
    dec h                                         ; $4753: $25
    ld h, $2a                                     ; $4754: $26 $2a
    dec hl                                        ; $4756: $2b
    inc l                                         ; $4757: $2c
    ld l, $2f                                     ; $4758: $2e $2f
    inc sp                                        ; $475a: $33
    scf                                           ; $475b: $37

jr_003_475c:
    rla                                           ; $475c: $17
    inc bc                                        ; $475d: $03
    dec b                                         ; $475e: $05
    rlca                                          ; $475f: $07
    dec c                                         ; $4760: $0d
    inc de                                        ; $4761: $13
    dec d                                         ; $4762: $15
    rla                                           ; $4763: $17
    add hl, de                                    ; $4764: $19
    inc e                                         ; $4765: $1c
    dec e                                         ; $4766: $1d
    ld [hl+], a                                   ; $4767: $22
    inc hl                                        ; $4768: $23
    dec h                                         ; $4769: $25
    add hl, hl                                    ; $476a: $29
    ld l, $2f                                     ; $476b: $2e $2f
    jr nc, jr_003_47a4                            ; $476d: $30 $35

    ld [hl], $37                                  ; $476f: $36 $37
    add hl, sp                                    ; $4771: $39
    dec a                                         ; $4772: $3d
    ccf                                           ; $4773: $3f
    dec d                                         ; $4774: $15
    rlca                                          ; $4775: $07
    dec c                                         ; $4776: $0d
    inc de                                        ; $4777: $13
    dec d                                         ; $4778: $15
    add hl, de                                    ; $4779: $19
    inc e                                         ; $477a: $1c
    dec e                                         ; $477b: $1d
    ld hl, $2322                                  ; $477c: $21 $22 $23
    dec h                                         ; $477f: $25
    dec hl                                        ; $4780: $2b
    ld l, $2f                                     ; $4781: $2e $2f
    jr nc, jr_003_47ba                            ; $4783: $30 $35

    ld [hl], $37                                  ; $4785: $36 $37
    ld a, [hl-]                                   ; $4787: $3a
    dec a                                         ; $4788: $3d
    ccf                                           ; $4789: $3f
    inc d                                         ; $478a: $14
    ld [bc], a                                    ; $478b: $02
    rlca                                          ; $478c: $07
    dec c                                         ; $478d: $0d
    rrca                                          ; $478e: $0f
    db $10                                        ; $478f: $10
    dec d                                         ; $4790: $15
    add hl, de                                    ; $4791: $19
    inc e                                         ; $4792: $1c
    dec e                                         ; $4793: $1d
    inc hl                                        ; $4794: $23
    dec h                                         ; $4795: $25
    ld l, $2f                                     ; $4796: $2e $2f
    jr nc, @+$37                                  ; $4798: $30 $35

    ld [hl], $37                                  ; $479a: $36 $37
    inc a                                         ; $479c: $3c
    dec a                                         ; $479d: $3d
    ccf                                           ; $479e: $3f
    inc de                                        ; $479f: $13
    nop                                           ; $47a0: $00
    inc bc                                        ; $47a1: $03
    ld b, $07                                     ; $47a2: $06 $07

jr_003_47a4:
    inc d                                         ; $47a4: $14
    dec d                                         ; $47a5: $15
    add hl, de                                    ; $47a6: $19
    ld a, [de]                                    ; $47a7: $1a
    inc e                                         ; $47a8: $1c
    inc hl                                        ; $47a9: $23
    dec h                                         ; $47aa: $25
    daa                                           ; $47ab: $27
    add hl, hl                                    ; $47ac: $29
    ld a, [hl+]                                   ; $47ad: $2a
    dec l                                         ; $47ae: $2d
    ld l, $2f                                     ; $47af: $2e $2f
    dec sp                                        ; $47b1: $3b
    inc a                                         ; $47b2: $3c
    add hl, de                                    ; $47b3: $19
    nop                                           ; $47b4: $00
    ld [bc], a                                    ; $47b5: $02
    inc bc                                        ; $47b6: $03
    dec b                                         ; $47b7: $05
    rlca                                          ; $47b8: $07
    add hl, bc                                    ; $47b9: $09

jr_003_47ba:
    ld a, [bc]                                    ; $47ba: $0a
    ld de, $1312                                  ; $47bb: $11 $12 $13
    ld d, $17                                     ; $47be: $16 $17
    ld a, [de]                                    ; $47c0: $1a
    dec de                                        ; $47c1: $1b
    inc hl                                        ; $47c2: $23
    dec h                                         ; $47c3: $25
    daa                                           ; $47c4: $27
    jr z, jr_003_47f1                             ; $47c5: $28 $2a

    inc l                                         ; $47c7: $2c
    dec l                                         ; $47c8: $2d
    ld l, $2f                                     ; $47c9: $2e $2f
    scf                                           ; $47cb: $37
    dec sp                                        ; $47cc: $3b
    inc d                                         ; $47cd: $14
    ld bc, $1103                                  ; $47ce: $01 $03 $11
    inc de                                        ; $47d1: $13
    inc d                                         ; $47d2: $14
    ld d, $1b                                     ; $47d3: $16 $1b
    rra                                           ; $47d5: $1f
    jr nz, jr_003_47fb                            ; $47d6: $20 $23

    dec h                                         ; $47d8: $25
    ld h, $28                                     ; $47d9: $26 $28
    add hl, hl                                    ; $47db: $29
    ld a, [hl+]                                   ; $47dc: $2a
    inc l                                         ; $47dd: $2c
    ld l, $2f                                     ; $47de: $2e $2f
    scf                                           ; $47e0: $37
    dec sp                                        ; $47e1: $3b
    dec d                                         ; $47e2: $15
    nop                                           ; $47e3: $00
    ld [bc], a                                    ; $47e4: $02
    rlca                                          ; $47e5: $07
    add hl, bc                                    ; $47e6: $09
    ld a, [bc]                                    ; $47e7: $0a
    ld [de], a                                    ; $47e8: $12
    inc de                                        ; $47e9: $13
    inc d                                         ; $47ea: $14
    dec d                                         ; $47eb: $15
    add hl, de                                    ; $47ec: $19
    ld a, [de]                                    ; $47ed: $1a
    dec de                                        ; $47ee: $1b
    inc e                                         ; $47ef: $1c
    dec e                                         ; $47f0: $1d

jr_003_47f1:
    inc hl                                        ; $47f1: $23
    dec h                                         ; $47f2: $25
    daa                                           ; $47f3: $27
    dec l                                         ; $47f4: $2d
    ld l, $2f                                     ; $47f5: $2e $2f
    scf                                           ; $47f7: $37
    dec sp                                        ; $47f8: $3b
    ld d, $01                                     ; $47f9: $16 $01

jr_003_47fb:
    inc bc                                        ; $47fb: $03
    rlca                                          ; $47fc: $07
    ld de, $1413                                  ; $47fd: $11 $13 $14
    dec d                                         ; $4800: $15
    rla                                           ; $4801: $17
    add hl, de                                    ; $4802: $19
    dec de                                        ; $4803: $1b
    inc e                                         ; $4804: $1c
    dec e                                         ; $4805: $1d
    ld e, $1f                                     ; $4806: $1e $1f
    jr nz, jr_003_482d                            ; $4808: $20 $23

    dec h                                         ; $480a: $25
    add hl, hl                                    ; $480b: $29
    ld l, $2f                                     ; $480c: $2e $2f
    scf                                           ; $480e: $37
    dec sp                                        ; $480f: $3b
    inc de                                        ; $4810: $13
    inc b                                         ; $4811: $04
    rlca                                          ; $4812: $07
    dec d                                         ; $4813: $15
    ld d, $19                                     ; $4814: $16 $19
    dec de                                        ; $4816: $1b
    inc e                                         ; $4817: $1c
    dec e                                         ; $4818: $1d
    ld e, $23                                     ; $4819: $1e $23
    dec h                                         ; $481b: $25
    ld h, $2a                                     ; $481c: $26 $2a
    dec hl                                        ; $481e: $2b
    inc l                                         ; $481f: $2c
    ld l, $2f                                     ; $4820: $2e $2f
    scf                                           ; $4822: $37
    dec sp                                        ; $4823: $3b
    dec d                                         ; $4824: $15
    inc bc                                        ; $4825: $03
    dec b                                         ; $4826: $05
    ld b, $07                                     ; $4827: $06 $07
    ld de, $1513                                  ; $4829: $11 $13 $15
    rla                                           ; $482c: $17

jr_003_482d:
    add hl, de                                    ; $482d: $19
    inc e                                         ; $482e: $1c
    dec e                                         ; $482f: $1d
    inc hl                                        ; $4830: $23
    dec h                                         ; $4831: $25
    add hl, hl                                    ; $4832: $29
    ld l, $2f                                     ; $4833: $2e $2f
    jr nc, jr_003_486e                            ; $4835: $30 $37

    add hl, sp                                    ; $4837: $39
    dec sp                                        ; $4838: $3b
    dec a                                         ; $4839: $3d
    db $10                                        ; $483a: $10
    rlca                                          ; $483b: $07
    inc de                                        ; $483c: $13
    dec d                                         ; $483d: $15
    add hl, de                                    ; $483e: $19
    inc e                                         ; $483f: $1c
    dec e                                         ; $4840: $1d
    inc hl                                        ; $4841: $23
    dec h                                         ; $4842: $25
    dec hl                                        ; $4843: $2b
    ld l, $2f                                     ; $4844: $2e $2f
    jr nc, jr_003_487f                            ; $4846: $30 $37

    ld a, [hl-]                                   ; $4848: $3a
    dec sp                                        ; $4849: $3b
    dec a                                         ; $484a: $3d
    ld [de], a                                    ; $484b: $12
    ld [bc], a                                    ; $484c: $02
    rlca                                          ; $484d: $07
    dec d                                         ; $484e: $15
    add hl, de                                    ; $484f: $19
    inc e                                         ; $4850: $1c
    dec e                                         ; $4851: $1d
    inc hl                                        ; $4852: $23
    dec h                                         ; $4853: $25
    ld l, $2f                                     ; $4854: $2e $2f
    jr nc, jr_003_488a                            ; $4856: $30 $32

    inc [hl]                                      ; $4858: $34
    scf                                           ; $4859: $37
    jr c, jr_003_4897                             ; $485a: $38 $3b

    inc a                                         ; $485c: $3c
    dec a                                         ; $485d: $3d
    inc de                                        ; $485e: $13
    nop                                           ; $485f: $00
    inc bc                                        ; $4860: $03
    ld b, $07                                     ; $4861: $06 $07
    inc d                                         ; $4863: $14
    dec d                                         ; $4864: $15
    add hl, de                                    ; $4865: $19
    ld a, [de]                                    ; $4866: $1a
    inc e                                         ; $4867: $1c
    inc hl                                        ; $4868: $23
    dec h                                         ; $4869: $25
    daa                                           ; $486a: $27
    add hl, hl                                    ; $486b: $29
    ld a, [hl+]                                   ; $486c: $2a
    dec l                                         ; $486d: $2d

jr_003_486e:
    ld l, $2f                                     ; $486e: $2e $2f
    dec sp                                        ; $4870: $3b
    inc a                                         ; $4871: $3c
    add hl, de                                    ; $4872: $19
    nop                                           ; $4873: $00
    ld [bc], a                                    ; $4874: $02
    inc bc                                        ; $4875: $03
    dec b                                         ; $4876: $05
    rlca                                          ; $4877: $07
    add hl, bc                                    ; $4878: $09
    ld a, [bc]                                    ; $4879: $0a
    ld de, $1312                                  ; $487a: $11 $12 $13
    ld d, $17                                     ; $487d: $16 $17

jr_003_487f:
    ld a, [de]                                    ; $487f: $1a
    dec de                                        ; $4880: $1b
    inc hl                                        ; $4881: $23
    dec h                                         ; $4882: $25
    daa                                           ; $4883: $27
    jr z, jr_003_48b0                             ; $4884: $28 $2a

    inc l                                         ; $4886: $2c
    dec l                                         ; $4887: $2d
    ld l, $2f                                     ; $4888: $2e $2f

jr_003_488a:
    scf                                           ; $488a: $37
    dec sp                                        ; $488b: $3b
    inc d                                         ; $488c: $14
    ld bc, $1103                                  ; $488d: $01 $03 $11
    inc de                                        ; $4890: $13
    inc d                                         ; $4891: $14
    ld d, $1b                                     ; $4892: $16 $1b
    rra                                           ; $4894: $1f
    jr nz, jr_003_48ba                            ; $4895: $20 $23

jr_003_4897:
    dec h                                         ; $4897: $25
    ld h, $28                                     ; $4898: $26 $28
    add hl, hl                                    ; $489a: $29
    ld a, [hl+]                                   ; $489b: $2a
    inc l                                         ; $489c: $2c
    ld l, $2f                                     ; $489d: $2e $2f
    scf                                           ; $489f: $37
    dec sp                                        ; $48a0: $3b
    ld d, $00                                     ; $48a1: $16 $00
    ld [bc], a                                    ; $48a3: $02
    rlca                                          ; $48a4: $07
    add hl, bc                                    ; $48a5: $09
    ld a, [bc]                                    ; $48a6: $0a
    ld [de], a                                    ; $48a7: $12
    inc de                                        ; $48a8: $13
    inc d                                         ; $48a9: $14
    dec d                                         ; $48aa: $15
    add hl, de                                    ; $48ab: $19
    ld a, [de]                                    ; $48ac: $1a
    dec de                                        ; $48ad: $1b
    inc e                                         ; $48ae: $1c
    dec e                                         ; $48af: $1d

jr_003_48b0:
    inc hl                                        ; $48b0: $23
    dec h                                         ; $48b1: $25
    daa                                           ; $48b2: $27
    dec l                                         ; $48b3: $2d
    ld l, $2f                                     ; $48b4: $2e $2f
    scf                                           ; $48b6: $37
    dec sp                                        ; $48b7: $3b
    ld d, $01                                     ; $48b8: $16 $01

jr_003_48ba:
    inc bc                                        ; $48ba: $03
    rlca                                          ; $48bb: $07
    ld de, $1413                                  ; $48bc: $11 $13 $14
    dec d                                         ; $48bf: $15
    rla                                           ; $48c0: $17
    add hl, de                                    ; $48c1: $19
    dec de                                        ; $48c2: $1b
    inc e                                         ; $48c3: $1c
    dec e                                         ; $48c4: $1d
    ld e, $1f                                     ; $48c5: $1e $1f
    jr nz, jr_003_48ec                            ; $48c7: $20 $23

    dec h                                         ; $48c9: $25
    add hl, hl                                    ; $48ca: $29
    ld l, $2f                                     ; $48cb: $2e $2f
    scf                                           ; $48cd: $37
    dec sp                                        ; $48ce: $3b
    inc de                                        ; $48cf: $13
    inc b                                         ; $48d0: $04
    rlca                                          ; $48d1: $07
    dec d                                         ; $48d2: $15
    ld d, $19                                     ; $48d3: $16 $19
    dec de                                        ; $48d5: $1b
    inc e                                         ; $48d6: $1c
    dec e                                         ; $48d7: $1d
    ld e, $23                                     ; $48d8: $1e $23
    dec h                                         ; $48da: $25
    ld h, $2a                                     ; $48db: $26 $2a
    dec hl                                        ; $48dd: $2b
    inc l                                         ; $48de: $2c
    ld l, $2f                                     ; $48df: $2e $2f
    scf                                           ; $48e1: $37
    dec sp                                        ; $48e2: $3b
    dec d                                         ; $48e3: $15
    inc bc                                        ; $48e4: $03
    dec b                                         ; $48e5: $05
    ld b, $07                                     ; $48e6: $06 $07
    ld de, $1513                                  ; $48e8: $11 $13 $15
    rla                                           ; $48eb: $17

jr_003_48ec:
    add hl, de                                    ; $48ec: $19
    inc e                                         ; $48ed: $1c
    dec e                                         ; $48ee: $1d
    inc hl                                        ; $48ef: $23
    dec h                                         ; $48f0: $25
    add hl, hl                                    ; $48f1: $29
    ld l, $2f                                     ; $48f2: $2e $2f
    jr nc, jr_003_492d                            ; $48f4: $30 $37

    add hl, sp                                    ; $48f6: $39
    dec sp                                        ; $48f7: $3b
    dec a                                         ; $48f8: $3d
    db $10                                        ; $48f9: $10
    rlca                                          ; $48fa: $07
    inc de                                        ; $48fb: $13
    dec d                                         ; $48fc: $15
    add hl, de                                    ; $48fd: $19
    inc e                                         ; $48fe: $1c
    dec e                                         ; $48ff: $1d
    inc hl                                        ; $4900: $23
    dec h                                         ; $4901: $25
    dec hl                                        ; $4902: $2b
    ld l, $2f                                     ; $4903: $2e $2f
    jr nc, jr_003_493e                            ; $4905: $30 $37

    ld a, [hl-]                                   ; $4907: $3a
    dec sp                                        ; $4908: $3b
    dec a                                         ; $4909: $3d
    ld [de], a                                    ; $490a: $12
    ld [bc], a                                    ; $490b: $02
    rlca                                          ; $490c: $07
    dec d                                         ; $490d: $15
    add hl, de                                    ; $490e: $19
    inc e                                         ; $490f: $1c
    dec e                                         ; $4910: $1d
    inc hl                                        ; $4911: $23
    dec h                                         ; $4912: $25
    ld l, $2f                                     ; $4913: $2e $2f
    jr nc, jr_003_4949                            ; $4915: $30 $32

    inc [hl]                                      ; $4917: $34
    scf                                           ; $4918: $37
    jr c, jr_003_4956                             ; $4919: $38 $3b

    inc a                                         ; $491b: $3c
    dec a                                         ; $491c: $3d
    ret nz                                        ; $491d: $c0

    add b                                         ; $491e: $80
    ld b, b                                       ; $491f: $40
    nop                                           ; $4920: $00
    add c                                         ; $4921: $81
    ret nz                                        ; $4922: $c0

    ld bc, $4240                                  ; $4923: $01 $40 $42
    ld [bc], a                                    ; $4926: $02
    ret nz                                        ; $4927: $c0

    add b                                         ; $4928: $80
    inc bc                                        ; $4929: $03
    ld b, d                                       ; $492a: $42
    add c                                         ; $492b: $81
    ret nz                                        ; $492c: $c0

jr_003_492d:
    dec [hl]                                      ; $492d: $35
    ld c, c                                       ; $492e: $49
    ld d, l                                       ; $492f: $55
    ld c, c                                       ; $4930: $49
    ld [hl], l                                    ; $4931: $75
    ld c, c                                       ; $4932: $49
    sub l                                         ; $4933: $95
    ld c, c                                       ; $4934: $49
    jp $dd45                                      ; $4935: $c3 $45 $dd


    ld b, l                                       ; $4938: $45
    db $fc                                        ; $4939: $fc
    ld b, l                                       ; $493a: $45
    ld d, h                                       ; $493b: $54
    ld b, [hl]                                    ; $493c: $46
    db $dd                                        ; $493d: $dd

jr_003_493e:
    ld b, l                                       ; $493e: $45
    ld a, [de]                                    ; $493f: $1a
    ld b, [hl]                                    ; $4940: $46
    ld d, h                                       ; $4941: $54
    ld b, [hl]                                    ; $4942: $46
    adc d                                         ; $4943: $8a
    ld b, [hl]                                    ; $4944: $46
    db $fc                                        ; $4945: $fc
    ld b, l                                       ; $4946: $45
    ld d, h                                       ; $4947: $54
    ld b, [hl]                                    ; $4948: $46

jr_003_4949:
    ld [hl], $46                                  ; $4949: $36 $46
    ld [hl], b                                    ; $494b: $70
    ld b, [hl]                                    ; $494c: $46
    ld d, h                                       ; $494d: $54
    ld b, [hl]                                    ; $494e: $46
    adc d                                         ; $494f: $8a
    ld b, [hl]                                    ; $4950: $46
    ld [hl], b                                    ; $4951: $70
    ld b, [hl]                                    ; $4952: $46
    and c                                         ; $4953: $a1
    ld b, [hl]                                    ; $4954: $46
    cp d                                          ; $4955: $ba

jr_003_4956:
    ld b, [hl]                                    ; $4956: $46
    db $d3                                        ; $4957: $d3
    ld b, [hl]                                    ; $4958: $46
    rst RST_28                                    ; $4959: $ef
    ld b, [hl]                                    ; $495a: $46
    ld b, c                                       ; $495b: $41
    ld b, a                                       ; $495c: $47
    db $d3                                        ; $495d: $d3
    ld b, [hl]                                    ; $495e: $46
    inc c                                         ; $495f: $0c
    ld b, a                                       ; $4960: $47
    ld b, c                                       ; $4961: $41
    ld b, a                                       ; $4962: $47
    ld [hl], h                                    ; $4963: $74
    ld b, a                                       ; $4964: $47
    rst RST_28                                    ; $4965: $ef
    ld b, [hl]                                    ; $4966: $46
    ld b, c                                       ; $4967: $41
    ld b, a                                       ; $4968: $47
    dec h                                         ; $4969: $25
    ld b, a                                       ; $496a: $47
    ld e, h                                       ; $496b: $5c
    ld b, a                                       ; $496c: $47
    ld b, c                                       ; $496d: $41
    ld b, a                                       ; $496e: $47
    ld [hl], h                                    ; $496f: $74
    ld b, a                                       ; $4970: $47
    ld e, h                                       ; $4971: $5c
    ld b, a                                       ; $4972: $47
    adc d                                         ; $4973: $8a
    ld b, a                                       ; $4974: $47
    sbc a                                         ; $4975: $9f
    ld b, a                                       ; $4976: $47
    or e                                          ; $4977: $b3
    ld b, a                                       ; $4978: $47
    call $1047                                    ; $4979: $cd $47 $10
    ld c, b                                       ; $497c: $48
    or e                                          ; $497d: $b3
    ld b, a                                       ; $497e: $47
    ldh [c], a                                    ; $497f: $e2
    ld b, a                                       ; $4980: $47
    db $10                                        ; $4981: $10
    ld c, b                                       ; $4982: $48
    ld a, [hl-]                                   ; $4983: $3a
    ld c, b                                       ; $4984: $48
    call $1047                                    ; $4985: $cd $47 $10
    ld c, b                                       ; $4988: $48
    ld sp, hl                                     ; $4989: $f9
    ld b, a                                       ; $498a: $47
    inc h                                         ; $498b: $24
    ld c, b                                       ; $498c: $48
    db $10                                        ; $498d: $10
    ld c, b                                       ; $498e: $48
    ld a, [hl-]                                   ; $498f: $3a
    ld c, b                                       ; $4990: $48
    inc h                                         ; $4991: $24
    ld c, b                                       ; $4992: $48
    ld c, e                                       ; $4993: $4b
    ld c, b                                       ; $4994: $48
    ld e, [hl]                                    ; $4995: $5e
    ld c, b                                       ; $4996: $48
    ld [hl], d                                    ; $4997: $72
    ld c, b                                       ; $4998: $48
    adc h                                         ; $4999: $8c
    ld c, b                                       ; $499a: $48
    rst RST_08                                    ; $499b: $cf
    ld c, b                                       ; $499c: $48
    ld [hl], d                                    ; $499d: $72
    ld c, b                                       ; $499e: $48
    and c                                         ; $499f: $a1
    ld c, b                                       ; $49a0: $48
    rst RST_08                                    ; $49a1: $cf
    ld c, b                                       ; $49a2: $48
    ld sp, hl                                     ; $49a3: $f9
    ld c, b                                       ; $49a4: $48
    adc h                                         ; $49a5: $8c
    ld c, b                                       ; $49a6: $48
    rst RST_08                                    ; $49a7: $cf
    ld c, b                                       ; $49a8: $48
    cp b                                          ; $49a9: $b8
    ld c, b                                       ; $49aa: $48
    db $e3                                        ; $49ab: $e3
    ld c, b                                       ; $49ac: $48
    rst RST_08                                    ; $49ad: $cf
    ld c, b                                       ; $49ae: $48
    ld sp, hl                                     ; $49af: $f9
    ld c, b                                       ; $49b0: $48
    db $e3                                        ; $49b1: $e3
    ld c, b                                       ; $49b2: $48
    ld a, [bc]                                    ; $49b3: $0a
    ld c, c                                       ; $49b4: $49
    ld bc, $0505                                  ; $49b5: $01 $05 $05
    dec b                                         ; $49b8: $05
    dec b                                         ; $49b9: $05
    dec b                                         ; $49ba: $05
    dec b                                         ; $49bb: $05
    dec b                                         ; $49bc: $05
    dec b                                         ; $49bd: $05
    ld [bc], a                                    ; $49be: $02
    ld b, $09                                     ; $49bf: $06 $09
    add hl, bc                                    ; $49c1: $09
    add hl, bc                                    ; $49c2: $09
    add hl, bc                                    ; $49c3: $09
    add hl, bc                                    ; $49c4: $09
    add hl, bc                                    ; $49c5: $09
    add hl, bc                                    ; $49c6: $09
    add hl, bc                                    ; $49c7: $09
    ld [$0906], sp                                ; $49c8: $08 $06 $09
    add hl, bc                                    ; $49cb: $09
    add hl, bc                                    ; $49cc: $09
    add hl, bc                                    ; $49cd: $09
    add hl, bc                                    ; $49ce: $09
    add hl, bc                                    ; $49cf: $09
    add hl, bc                                    ; $49d0: $09
    add hl, bc                                    ; $49d1: $09
    ld [$0906], sp                                ; $49d2: $08 $06 $09
    add hl, bc                                    ; $49d5: $09
    add hl, bc                                    ; $49d6: $09
    add hl, bc                                    ; $49d7: $09
    add hl, bc                                    ; $49d8: $09
    add hl, bc                                    ; $49d9: $09
    dec c                                         ; $49da: $0d
    rlca                                          ; $49db: $07
    inc b                                         ; $49dc: $04
    inc bc                                        ; $49dd: $03
    rlca                                          ; $49de: $07
    dec bc                                        ; $49df: $0b
    add hl, bc                                    ; $49e0: $09
    add hl, bc                                    ; $49e1: $09
    add hl, bc                                    ; $49e2: $09
    add hl, bc                                    ; $49e3: $09
    inc c                                         ; $49e4: $0c
    dec b                                         ; $49e5: $05
    ld [bc], a                                    ; $49e6: $02
    ld bc, $0a05                                  ; $49e7: $01 $05 $0a
    add hl, bc                                    ; $49ea: $09
    add hl, bc                                    ; $49eb: $09
    add hl, bc                                    ; $49ec: $09
    add hl, bc                                    ; $49ed: $09
    add hl, bc                                    ; $49ee: $09
    add hl, bc                                    ; $49ef: $09
    ld [$0906], sp                                ; $49f0: $08 $06 $09
    add hl, bc                                    ; $49f3: $09
    add hl, bc                                    ; $49f4: $09
    add hl, bc                                    ; $49f5: $09
    add hl, bc                                    ; $49f6: $09
    add hl, bc                                    ; $49f7: $09
    add hl, bc                                    ; $49f8: $09
    add hl, bc                                    ; $49f9: $09
    ld [$0703], sp                                ; $49fa: $08 $03 $07
    rlca                                          ; $49fd: $07
    rlca                                          ; $49fe: $07
    rlca                                          ; $49ff: $07
    rlca                                          ; $4a00: $07
    rlca                                          ; $4a01: $07
    rlca                                          ; $4a02: $07
    rlca                                          ; $4a03: $07
    inc b                                         ; $4a04: $04
    ld bc, $0505                                  ; $4a05: $01 $05 $05
    dec b                                         ; $4a08: $05
    dec b                                         ; $4a09: $05
    ld [bc], a                                    ; $4a0a: $02
    nop                                           ; $4a0b: $00
    nop                                           ; $4a0c: $00
    nop                                           ; $4a0d: $00
    nop                                           ; $4a0e: $00
    ld b, $09                                     ; $4a0f: $06 $09
    add hl, bc                                    ; $4a11: $09
    add hl, bc                                    ; $4a12: $09
    add hl, bc                                    ; $4a13: $09
    inc c                                         ; $4a14: $0c
    dec b                                         ; $4a15: $05
    dec b                                         ; $4a16: $05
    dec b                                         ; $4a17: $05
    ld [bc], a                                    ; $4a18: $02
    inc bc                                        ; $4a19: $03
    dec bc                                        ; $4a1a: $0b
    add hl, bc                                    ; $4a1b: $09
    add hl, bc                                    ; $4a1c: $09
    add hl, bc                                    ; $4a1d: $09
    add hl, bc                                    ; $4a1e: $09
    add hl, bc                                    ; $4a1f: $09
    add hl, bc                                    ; $4a20: $09
    add hl, bc                                    ; $4a21: $09
    ld [$0600], sp                                ; $4a22: $08 $00 $06
    add hl, bc                                    ; $4a25: $09
    add hl, bc                                    ; $4a26: $09
    dec c                                         ; $4a27: $0d
    rlca                                          ; $4a28: $07
    dec bc                                        ; $4a29: $0b
    add hl, bc                                    ; $4a2a: $09
    add hl, bc                                    ; $4a2b: $09
    ld [$0600], sp                                ; $4a2c: $08 $00 $06
    add hl, bc                                    ; $4a2f: $09
    add hl, bc                                    ; $4a30: $09
    ld [$0600], sp                                ; $4a31: $08 $00 $06
    add hl, bc                                    ; $4a34: $09
    add hl, bc                                    ; $4a35: $09
    ld [$0600], sp                                ; $4a36: $08 $00 $06
    add hl, bc                                    ; $4a39: $09
    add hl, bc                                    ; $4a3a: $09
    ld [$0600], sp                                ; $4a3b: $08 $00 $06
    add hl, bc                                    ; $4a3e: $09
    add hl, bc                                    ; $4a3f: $09
    ld [$0600], sp                                ; $4a40: $08 $00 $06
    add hl, bc                                    ; $4a43: $09
    add hl, bc                                    ; $4a44: $09
    ld [$0600], sp                                ; $4a45: $08 $00 $06
    add hl, bc                                    ; $4a48: $09
    add hl, bc                                    ; $4a49: $09
    ld [$0300], sp                                ; $4a4a: $08 $00 $03
    rlca                                          ; $4a4d: $07
    rlca                                          ; $4a4e: $07
    inc b                                         ; $4a4f: $04
    nop                                           ; $4a50: $00
    inc bc                                        ; $4a51: $03
    rlca                                          ; $4a52: $07
    rlca                                          ; $4a53: $07
    inc b                                         ; $4a54: $04
    nop                                           ; $4a55: $00
    nop                                           ; $4a56: $00
    nop                                           ; $4a57: $00
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    nop                                           ; $4a5b: $00
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    nop                                           ; $4a5e: $00
    nop                                           ; $4a5f: $00
    ld bc, $0505                                  ; $4a60: $01 $05 $05
    dec b                                         ; $4a63: $05
    dec b                                         ; $4a64: $05
    dec b                                         ; $4a65: $05
    dec b                                         ; $4a66: $05
    ld [bc], a                                    ; $4a67: $02
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    ld b, $09                                     ; $4a6a: $06 $09
    add hl, bc                                    ; $4a6c: $09
    add hl, bc                                    ; $4a6d: $09
    add hl, bc                                    ; $4a6e: $09
    add hl, bc                                    ; $4a6f: $09
    add hl, bc                                    ; $4a70: $09
    ld [$0000], sp                                ; $4a71: $08 $00 $00
    inc bc                                        ; $4a74: $03
    dec bc                                        ; $4a75: $0b
    add hl, bc                                    ; $4a76: $09
    add hl, bc                                    ; $4a77: $09
    add hl, bc                                    ; $4a78: $09
    add hl, bc                                    ; $4a79: $09
    dec c                                         ; $4a7a: $0d
    inc b                                         ; $4a7b: $04
    nop                                           ; $4a7c: $00
    nop                                           ; $4a7d: $00
    nop                                           ; $4a7e: $00
    inc bc                                        ; $4a7f: $03
    dec bc                                        ; $4a80: $0b
    add hl, bc                                    ; $4a81: $09
    add hl, bc                                    ; $4a82: $09
    dec c                                         ; $4a83: $0d
    inc b                                         ; $4a84: $04
    nop                                           ; $4a85: $00
    nop                                           ; $4a86: $00
    nop                                           ; $4a87: $00
    nop                                           ; $4a88: $00
    nop                                           ; $4a89: $00
    ld b, $09                                     ; $4a8a: $06 $09
    add hl, bc                                    ; $4a8c: $09
    ld [$0000], sp                                ; $4a8d: $08 $00 $00
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    inc bc                                        ; $4a94: $03
    rlca                                          ; $4a95: $07
    rlca                                          ; $4a96: $07
    inc b                                         ; $4a97: $04
    nop                                           ; $4a98: $00
    nop                                           ; $4a99: $00
    nop                                           ; $4a9a: $00
    nop                                           ; $4a9b: $00
    nop                                           ; $4a9c: $00
    nop                                           ; $4a9d: $00
    nop                                           ; $4a9e: $00
    nop                                           ; $4a9f: $00
    nop                                           ; $4aa0: $00
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    nop                                           ; $4aa4: $00
    ld bc, $0205                                  ; $4aa5: $01 $05 $02
    nop                                           ; $4aa8: $00
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    nop                                           ; $4aab: $00
    ld bc, $0205                                  ; $4aac: $01 $05 $02
    ld b, $09                                     ; $4aaf: $06 $09
    inc c                                         ; $4ab1: $0c
    dec b                                         ; $4ab2: $05
    dec b                                         ; $4ab3: $05
    dec b                                         ; $4ab4: $05
    dec b                                         ; $4ab5: $05
    ld a, [bc]                                    ; $4ab6: $0a
    add hl, bc                                    ; $4ab7: $09
    ld [$0906], sp                                ; $4ab8: $08 $06 $09
    add hl, bc                                    ; $4abb: $09
    add hl, bc                                    ; $4abc: $09
    add hl, bc                                    ; $4abd: $09
    add hl, bc                                    ; $4abe: $09
    add hl, bc                                    ; $4abf: $09
    add hl, bc                                    ; $4ac0: $09
    add hl, bc                                    ; $4ac1: $09
    ld [$0906], sp                                ; $4ac2: $08 $06 $09
    dec c                                         ; $4ac5: $0d
    dec bc                                        ; $4ac6: $0b
    add hl, bc                                    ; $4ac7: $09
    add hl, bc                                    ; $4ac8: $09
    add hl, bc                                    ; $4ac9: $09
    add hl, bc                                    ; $4aca: $09
    add hl, bc                                    ; $4acb: $09
    ld [$0906], sp                                ; $4acc: $08 $06 $09
    inc c                                         ; $4acf: $0c
    ld a, [bc]                                    ; $4ad0: $0a
    add hl, bc                                    ; $4ad1: $09
    add hl, bc                                    ; $4ad2: $09
    add hl, bc                                    ; $4ad3: $09
    add hl, bc                                    ; $4ad4: $09
    add hl, bc                                    ; $4ad5: $09
    ld [$0906], sp                                ; $4ad6: $08 $06 $09
    add hl, bc                                    ; $4ad9: $09
    add hl, bc                                    ; $4ada: $09
    add hl, bc                                    ; $4adb: $09
    add hl, bc                                    ; $4adc: $09
    add hl, bc                                    ; $4add: $09
    add hl, bc                                    ; $4ade: $09
    add hl, bc                                    ; $4adf: $09
    ld [$0906], sp                                ; $4ae0: $08 $06 $09
    dec c                                         ; $4ae3: $0d
    rlca                                          ; $4ae4: $07
    rlca                                          ; $4ae5: $07
    rlca                                          ; $4ae6: $07
    rlca                                          ; $4ae7: $07
    dec bc                                        ; $4ae8: $0b
    add hl, bc                                    ; $4ae9: $09
    ld [$0703], sp                                ; $4aea: $08 $03 $07
    inc b                                         ; $4aed: $04
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    inc bc                                        ; $4af2: $03
    rlca                                          ; $4af3: $07
    inc b                                         ; $4af4: $04
    ld bc, $0505                                  ; $4af5: $01 $05 $05
    dec b                                         ; $4af8: $05
    dec b                                         ; $4af9: $05
    dec b                                         ; $4afa: $05
    dec b                                         ; $4afb: $05
    ld [bc], a                                    ; $4afc: $02
    nop                                           ; $4afd: $00
    nop                                           ; $4afe: $00
    ld b, $09                                     ; $4aff: $06 $09
    add hl, bc                                    ; $4b01: $09
    add hl, bc                                    ; $4b02: $09
    add hl, bc                                    ; $4b03: $09
    add hl, bc                                    ; $4b04: $09
    add hl, bc                                    ; $4b05: $09
    ld [$0000], sp                                ; $4b06: $08 $00 $00
    inc bc                                        ; $4b09: $03
    dec bc                                        ; $4b0a: $0b
    add hl, bc                                    ; $4b0b: $09
    dec c                                         ; $4b0c: $0d
    dec bc                                        ; $4b0d: $0b
    add hl, bc                                    ; $4b0e: $09
    add hl, bc                                    ; $4b0f: $09
    inc c                                         ; $4b10: $0c
    dec b                                         ; $4b11: $05
    ld [bc], a                                    ; $4b12: $02
    ld bc, $090a                                  ; $4b13: $01 $0a $09
    ld [$0906], sp                                ; $4b16: $08 $06 $09
    add hl, bc                                    ; $4b19: $09
    add hl, bc                                    ; $4b1a: $09
    add hl, bc                                    ; $4b1b: $09
    ld [$0906], sp                                ; $4b1c: $08 $06 $09
    add hl, bc                                    ; $4b1f: $09
    ld [$0703], sp                                ; $4b20: $08 $03 $07
    dec bc                                        ; $4b23: $0b
    add hl, bc                                    ; $4b24: $09
    add hl, bc                                    ; $4b25: $09
    ld [$0b03], sp                                ; $4b26: $08 $03 $0b
    add hl, bc                                    ; $4b29: $09
    inc c                                         ; $4b2a: $0c
    dec b                                         ; $4b2b: $05
    dec b                                         ; $4b2c: $05
    ld a, [bc]                                    ; $4b2d: $0a
    add hl, bc                                    ; $4b2e: $09
    add hl, bc                                    ; $4b2f: $09
    ld [$0600], sp                                ; $4b30: $08 $00 $06
    add hl, bc                                    ; $4b33: $09
    add hl, bc                                    ; $4b34: $09
    add hl, bc                                    ; $4b35: $09
    add hl, bc                                    ; $4b36: $09
    add hl, bc                                    ; $4b37: $09
    add hl, bc                                    ; $4b38: $09
    dec c                                         ; $4b39: $0d
    inc b                                         ; $4b3a: $04
    nop                                           ; $4b3b: $00
    inc bc                                        ; $4b3c: $03
    rlca                                          ; $4b3d: $07
    rlca                                          ; $4b3e: $07
    rlca                                          ; $4b3f: $07
    rlca                                          ; $4b40: $07
    rlca                                          ; $4b41: $07
    rlca                                          ; $4b42: $07
    inc b                                         ; $4b43: $04
    nop                                           ; $4b44: $00
    ld bc, $0505                                  ; $4b45: $01 $05 $05
    dec b                                         ; $4b48: $05
    dec b                                         ; $4b49: $05
    dec b                                         ; $4b4a: $05
    dec b                                         ; $4b4b: $05
    dec b                                         ; $4b4c: $05
    dec b                                         ; $4b4d: $05
    ld [bc], a                                    ; $4b4e: $02
    ld b, $09                                     ; $4b4f: $06 $09
    add hl, bc                                    ; $4b51: $09
    add hl, bc                                    ; $4b52: $09
    add hl, bc                                    ; $4b53: $09
    add hl, bc                                    ; $4b54: $09
    add hl, bc                                    ; $4b55: $09
    add hl, bc                                    ; $4b56: $09
    add hl, bc                                    ; $4b57: $09
    ld [$0906], sp                                ; $4b58: $08 $06 $09
    add hl, bc                                    ; $4b5b: $09
    add hl, bc                                    ; $4b5c: $09
    dec c                                         ; $4b5d: $0d
    dec bc                                        ; $4b5e: $0b
    add hl, bc                                    ; $4b5f: $09
    add hl, bc                                    ; $4b60: $09
    add hl, bc                                    ; $4b61: $09
    ld [$0906], sp                                ; $4b62: $08 $06 $09
    add hl, bc                                    ; $4b65: $09
    add hl, bc                                    ; $4b66: $09
    ld [$0906], sp                                ; $4b67: $08 $06 $09
    add hl, bc                                    ; $4b6a: $09
    add hl, bc                                    ; $4b6b: $09
    ld [$0906], sp                                ; $4b6c: $08 $06 $09
    dec c                                         ; $4b6f: $0d
    rlca                                          ; $4b70: $07
    inc b                                         ; $4b71: $04
    inc bc                                        ; $4b72: $03
    rlca                                          ; $4b73: $07
    dec bc                                        ; $4b74: $0b
    add hl, bc                                    ; $4b75: $09
    ld [$0906], sp                                ; $4b76: $08 $06 $09
    inc c                                         ; $4b79: $0c
    dec b                                         ; $4b7a: $05
    dec b                                         ; $4b7b: $05
    dec b                                         ; $4b7c: $05
    dec b                                         ; $4b7d: $05
    ld a, [bc]                                    ; $4b7e: $0a
    add hl, bc                                    ; $4b7f: $09
    ld [$0906], sp                                ; $4b80: $08 $06 $09
    add hl, bc                                    ; $4b83: $09
    add hl, bc                                    ; $4b84: $09
    add hl, bc                                    ; $4b85: $09
    add hl, bc                                    ; $4b86: $09
    add hl, bc                                    ; $4b87: $09
    add hl, bc                                    ; $4b88: $09
    add hl, bc                                    ; $4b89: $09
    ld [$0703], sp                                ; $4b8a: $08 $03 $07
    rlca                                          ; $4b8d: $07
    rlca                                          ; $4b8e: $07
    rlca                                          ; $4b8f: $07
    rlca                                          ; $4b90: $07
    rlca                                          ; $4b91: $07
    rlca                                          ; $4b92: $07
    rlca                                          ; $4b93: $07
    inc b                                         ; $4b94: $04
    nop                                           ; $4b95: $00
    ld bc, $0505                                  ; $4b96: $01 $05 $05
    dec b                                         ; $4b99: $05
    dec b                                         ; $4b9a: $05
    dec b                                         ; $4b9b: $05
    dec b                                         ; $4b9c: $05
    ld [bc], a                                    ; $4b9d: $02
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    ld b, $09                                     ; $4ba0: $06 $09
    add hl, bc                                    ; $4ba2: $09
    add hl, bc                                    ; $4ba3: $09
    add hl, bc                                    ; $4ba4: $09
    add hl, bc                                    ; $4ba5: $09
    add hl, bc                                    ; $4ba6: $09
    inc c                                         ; $4ba7: $0c
    ld [bc], a                                    ; $4ba8: $02
    nop                                           ; $4ba9: $00
    inc bc                                        ; $4baa: $03
    rlca                                          ; $4bab: $07
    rlca                                          ; $4bac: $07
    dec bc                                        ; $4bad: $0b
    add hl, bc                                    ; $4bae: $09
    add hl, bc                                    ; $4baf: $09
    add hl, bc                                    ; $4bb0: $09
    add hl, bc                                    ; $4bb1: $09
    ld [$0000], sp                                ; $4bb2: $08 $00 $00
    nop                                           ; $4bb5: $00
    nop                                           ; $4bb6: $00
    ld b, $09                                     ; $4bb7: $06 $09
    add hl, bc                                    ; $4bb9: $09
    add hl, bc                                    ; $4bba: $09
    add hl, bc                                    ; $4bbb: $09
    ld [$0100], sp                                ; $4bbc: $08 $00 $01
    dec b                                         ; $4bbf: $05
    dec b                                         ; $4bc0: $05
    ld a, [bc]                                    ; $4bc1: $0a
    add hl, bc                                    ; $4bc2: $09
    add hl, bc                                    ; $4bc3: $09
    add hl, bc                                    ; $4bc4: $09
    add hl, bc                                    ; $4bc5: $09
    ld [$0600], sp                                ; $4bc6: $08 $00 $06
    add hl, bc                                    ; $4bc9: $09
    add hl, bc                                    ; $4bca: $09
    add hl, bc                                    ; $4bcb: $09
    add hl, bc                                    ; $4bcc: $09
    add hl, bc                                    ; $4bcd: $09
    add hl, bc                                    ; $4bce: $09
    add hl, bc                                    ; $4bcf: $09
    ld [$0600], sp                                ; $4bd0: $08 $00 $06
    add hl, bc                                    ; $4bd3: $09
    add hl, bc                                    ; $4bd4: $09
    add hl, bc                                    ; $4bd5: $09
    add hl, bc                                    ; $4bd6: $09
    add hl, bc                                    ; $4bd7: $09
    add hl, bc                                    ; $4bd8: $09
    dec c                                         ; $4bd9: $0d
    inc b                                         ; $4bda: $04
    nop                                           ; $4bdb: $00
    inc bc                                        ; $4bdc: $03
    rlca                                          ; $4bdd: $07
    rlca                                          ; $4bde: $07
    rlca                                          ; $4bdf: $07
    rlca                                          ; $4be0: $07
    rlca                                          ; $4be1: $07
    rlca                                          ; $4be2: $07
    inc b                                         ; $4be3: $04
    nop                                           ; $4be4: $00
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    ld bc, $0505                                  ; $4be7: $01 $05 $05
    dec b                                         ; $4bea: $05
    dec b                                         ; $4beb: $05
    ld [bc], a                                    ; $4bec: $02
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    ld b, $09                                     ; $4bf1: $06 $09
    add hl, bc                                    ; $4bf3: $09
    add hl, bc                                    ; $4bf4: $09
    add hl, bc                                    ; $4bf5: $09
    ld [$0000], sp                                ; $4bf6: $08 $00 $00
    ld bc, $0a05                                  ; $4bf9: $01 $05 $0a
    add hl, bc                                    ; $4bfc: $09
    add hl, bc                                    ; $4bfd: $09
    add hl, bc                                    ; $4bfe: $09
    add hl, bc                                    ; $4bff: $09
    inc c                                         ; $4c00: $0c
    dec b                                         ; $4c01: $05
    ld [bc], a                                    ; $4c02: $02
    ld b, $09                                     ; $4c03: $06 $09
    add hl, bc                                    ; $4c05: $09
    add hl, bc                                    ; $4c06: $09
    add hl, bc                                    ; $4c07: $09
    add hl, bc                                    ; $4c08: $09
    add hl, bc                                    ; $4c09: $09
    add hl, bc                                    ; $4c0a: $09
    add hl, bc                                    ; $4c0b: $09
    ld [$0906], sp                                ; $4c0c: $08 $06 $09
    add hl, bc                                    ; $4c0f: $09
    add hl, bc                                    ; $4c10: $09
    add hl, bc                                    ; $4c11: $09
    add hl, bc                                    ; $4c12: $09
    add hl, bc                                    ; $4c13: $09
    add hl, bc                                    ; $4c14: $09
    add hl, bc                                    ; $4c15: $09
    ld [$0703], sp                                ; $4c16: $08 $03 $07
    dec bc                                        ; $4c19: $0b
    add hl, bc                                    ; $4c1a: $09
    add hl, bc                                    ; $4c1b: $09
    add hl, bc                                    ; $4c1c: $09
    add hl, bc                                    ; $4c1d: $09
    dec c                                         ; $4c1e: $0d
    rlca                                          ; $4c1f: $07
    inc b                                         ; $4c20: $04
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    ld b, $09                                     ; $4c23: $06 $09
    add hl, bc                                    ; $4c25: $09
    add hl, bc                                    ; $4c26: $09
    add hl, bc                                    ; $4c27: $09
    ld [$0000], sp                                ; $4c28: $08 $00 $00
    nop                                           ; $4c2b: $00
    nop                                           ; $4c2c: $00
    inc bc                                        ; $4c2d: $03
    rlca                                          ; $4c2e: $07
    rlca                                          ; $4c2f: $07
    rlca                                          ; $4c30: $07
    rlca                                          ; $4c31: $07
    inc b                                         ; $4c32: $04
    nop                                           ; $4c33: $00
    nop                                           ; $4c34: $00
    nop                                           ; $4c35: $00
    nop                                           ; $4c36: $00
    nop                                           ; $4c37: $00
    ld bc, $0505                                  ; $4c38: $01 $05 $05
    dec b                                         ; $4c3b: $05
    ld [de], a                                    ; $4c3c: $12
    dec b                                         ; $4c3d: $05
    ld [bc], a                                    ; $4c3e: $02
    ld bc, $0505                                  ; $4c3f: $01 $05 $05
    ld a, [bc]                                    ; $4c42: $0a
    add hl, bc                                    ; $4c43: $09
    add hl, bc                                    ; $4c44: $09
    add hl, bc                                    ; $4c45: $09
    inc de                                        ; $4c46: $13
    add hl, bc                                    ; $4c47: $09
    ld [$0906], sp                                ; $4c48: $08 $06 $09
    add hl, bc                                    ; $4c4b: $09
    add hl, bc                                    ; $4c4c: $09
    add hl, bc                                    ; $4c4d: $09
    add hl, bc                                    ; $4c4e: $09
    add hl, bc                                    ; $4c4f: $09
    inc de                                        ; $4c50: $13
    add hl, bc                                    ; $4c51: $09
    ld [$0906], sp                                ; $4c52: $08 $06 $09
    add hl, bc                                    ; $4c55: $09
    add hl, bc                                    ; $4c56: $09
    add hl, bc                                    ; $4c57: $09
    add hl, bc                                    ; $4c58: $09
    add hl, bc                                    ; $4c59: $09
    inc de                                        ; $4c5a: $13
    add hl, bc                                    ; $4c5b: $09
    ld [$0703], sp                                ; $4c5c: $08 $03 $07
    dec bc                                        ; $4c5f: $0b
    add hl, bc                                    ; $4c60: $09
    add hl, bc                                    ; $4c61: $09
    add hl, bc                                    ; $4c62: $09
    add hl, bc                                    ; $4c63: $09
    inc de                                        ; $4c64: $13
    add hl, bc                                    ; $4c65: $09
    ld [$0000], sp                                ; $4c66: $08 $00 $00
    ld b, $09                                     ; $4c69: $06 $09
    add hl, bc                                    ; $4c6b: $09
    add hl, bc                                    ; $4c6c: $09
    add hl, bc                                    ; $4c6d: $09
    inc de                                        ; $4c6e: $13
    add hl, bc                                    ; $4c6f: $09
    ld [$0000], sp                                ; $4c70: $08 $00 $00
    ld b, $09                                     ; $4c73: $06 $09
    add hl, bc                                    ; $4c75: $09
    add hl, bc                                    ; $4c76: $09
    add hl, bc                                    ; $4c77: $09
    inc de                                        ; $4c78: $13
    add hl, bc                                    ; $4c79: $09
    ld [$0000], sp                                ; $4c7a: $08 $00 $00
    inc bc                                        ; $4c7d: $03
    rlca                                          ; $4c7e: $07
    rlca                                          ; $4c7f: $07
    rlca                                          ; $4c80: $07
    rlca                                          ; $4c81: $07
    inc d                                         ; $4c82: $14
    rlca                                          ; $4c83: $07
    inc b                                         ; $4c84: $04
    ld bc, $0505                                  ; $4c85: $01 $05 $05
    dec b                                         ; $4c88: $05
    dec b                                         ; $4c89: $05
    dec b                                         ; $4c8a: $05
    dec b                                         ; $4c8b: $05
    dec b                                         ; $4c8c: $05
    dec b                                         ; $4c8d: $05
    ld [bc], a                                    ; $4c8e: $02
    ld b, $09                                     ; $4c8f: $06 $09
    add hl, bc                                    ; $4c91: $09
    add hl, bc                                    ; $4c92: $09
    add hl, bc                                    ; $4c93: $09
    add hl, bc                                    ; $4c94: $09
    add hl, bc                                    ; $4c95: $09
    add hl, bc                                    ; $4c96: $09
    add hl, bc                                    ; $4c97: $09
    ld [$0906], sp                                ; $4c98: $08 $06 $09
    add hl, de                                    ; $4c9b: $19
    add hl, de                                    ; $4c9c: $19
    add hl, de                                    ; $4c9d: $19
    dec d                                         ; $4c9e: $15
    add hl, de                                    ; $4c9f: $19
    add hl, de                                    ; $4ca0: $19
    add hl, bc                                    ; $4ca1: $09
    ld [$0b03], sp                                ; $4ca2: $08 $03 $0b
    add hl, de                                    ; $4ca5: $19
    add hl, de                                    ; $4ca6: $19
    add hl, de                                    ; $4ca7: $19
    dec d                                         ; $4ca8: $15
    add hl, de                                    ; $4ca9: $19
    add hl, de                                    ; $4caa: $19
    dec c                                         ; $4cab: $0d
    inc b                                         ; $4cac: $04
    ld bc, $190a                                  ; $4cad: $01 $0a $19
    rla                                           ; $4cb0: $17
    ld d, $17                                     ; $4cb1: $16 $17
    add hl, de                                    ; $4cb3: $19
    add hl, de                                    ; $4cb4: $19
    ld [$0600], sp                                ; $4cb5: $08 $00 $06
    add hl, bc                                    ; $4cb8: $09
    add hl, de                                    ; $4cb9: $19
    dec d                                         ; $4cba: $15
    add hl, de                                    ; $4cbb: $19
    add hl, de                                    ; $4cbc: $19
    add hl, de                                    ; $4cbd: $19
    add hl, de                                    ; $4cbe: $19
    inc c                                         ; $4cbf: $0c
    ld [bc], a                                    ; $4cc0: $02
    ld b, $09                                     ; $4cc1: $06 $09
    add hl, bc                                    ; $4cc3: $09
    add hl, bc                                    ; $4cc4: $09
    add hl, bc                                    ; $4cc5: $09
    add hl, bc                                    ; $4cc6: $09
    add hl, bc                                    ; $4cc7: $09
    add hl, bc                                    ; $4cc8: $09
    add hl, bc                                    ; $4cc9: $09
    ld [$0703], sp                                ; $4cca: $08 $03 $07
    ld a, [hl+]                                   ; $4ccd: $2a
    rlca                                          ; $4cce: $07
    rlca                                          ; $4ccf: $07
    rlca                                          ; $4cd0: $07
    rlca                                          ; $4cd1: $07
    ld a, [hl+]                                   ; $4cd2: $2a
    rlca                                          ; $4cd3: $07
    inc b                                         ; $4cd4: $04
    ld bc, $0505                                  ; $4cd5: $01 $05 $05
    dec b                                         ; $4cd8: $05
    dec b                                         ; $4cd9: $05
    dec b                                         ; $4cda: $05
    dec b                                         ; $4cdb: $05
    dec b                                         ; $4cdc: $05
    dec b                                         ; $4cdd: $05
    ld [bc], a                                    ; $4cde: $02
    ld b, $09                                     ; $4cdf: $06 $09
    add hl, bc                                    ; $4ce1: $09
    add hl, bc                                    ; $4ce2: $09
    add hl, bc                                    ; $4ce3: $09
    add hl, bc                                    ; $4ce4: $09
    add hl, bc                                    ; $4ce5: $09
    add hl, bc                                    ; $4ce6: $09
    add hl, de                                    ; $4ce7: $19
    ld [$0906], sp                                ; $4ce8: $08 $06 $09
    add hl, de                                    ; $4ceb: $19
    add hl, de                                    ; $4cec: $19
    add hl, de                                    ; $4ced: $19
    dec d                                         ; $4cee: $15
    add hl, de                                    ; $4cef: $19
    add hl, de                                    ; $4cf0: $19
    add hl, de                                    ; $4cf1: $19
    ld [$0b03], sp                                ; $4cf2: $08 $03 $0b
    add hl, de                                    ; $4cf5: $19
    add hl, de                                    ; $4cf6: $19
    add hl, de                                    ; $4cf7: $19
    dec d                                         ; $4cf8: $15
    add hl, de                                    ; $4cf9: $19
    dec c                                         ; $4cfa: $0d
    rlca                                          ; $4cfb: $07
    inc b                                         ; $4cfc: $04
    ld bc, $190a                                  ; $4cfd: $01 $0a $19
    rla                                           ; $4d00: $17
    ld d, $17                                     ; $4d01: $16 $17
    add hl, de                                    ; $4d03: $19
    inc c                                         ; $4d04: $0c
    dec b                                         ; $4d05: $05
    ld [bc], a                                    ; $4d06: $02
    ld b, $19                                     ; $4d07: $06 $19
    add hl, de                                    ; $4d09: $19
    dec d                                         ; $4d0a: $15
    add hl, de                                    ; $4d0b: $19
    add hl, de                                    ; $4d0c: $19
    add hl, de                                    ; $4d0d: $19
    add hl, bc                                    ; $4d0e: $09
    add hl, bc                                    ; $4d0f: $09
    ld [$0906], sp                                ; $4d10: $08 $06 $09
    add hl, bc                                    ; $4d13: $09
    add hl, bc                                    ; $4d14: $09
    add hl, bc                                    ; $4d15: $09
    add hl, bc                                    ; $4d16: $09
    add hl, bc                                    ; $4d17: $09
    add hl, bc                                    ; $4d18: $09
    add hl, bc                                    ; $4d19: $09
    ld [$0703], sp                                ; $4d1a: $08 $03 $07
    ld a, [hl+]                                   ; $4d1d: $2a
    rlca                                          ; $4d1e: $07
    rlca                                          ; $4d1f: $07
    rlca                                          ; $4d20: $07
    rlca                                          ; $4d21: $07
    ld a, [hl+]                                   ; $4d22: $2a
    rlca                                          ; $4d23: $07
    inc b                                         ; $4d24: $04
    ld bc, $0505                                  ; $4d25: $01 $05 $05
    dec b                                         ; $4d28: $05
    dec b                                         ; $4d29: $05
    dec b                                         ; $4d2a: $05
    dec b                                         ; $4d2b: $05
    dec b                                         ; $4d2c: $05
    ld [bc], a                                    ; $4d2d: $02
    nop                                           ; $4d2e: $00
    ld b, $09                                     ; $4d2f: $06 $09
    add hl, bc                                    ; $4d31: $09
    add hl, bc                                    ; $4d32: $09
    add hl, bc                                    ; $4d33: $09
    add hl, bc                                    ; $4d34: $09
    add hl, bc                                    ; $4d35: $09
    add hl, bc                                    ; $4d36: $09
    inc c                                         ; $4d37: $0c
    ld [bc], a                                    ; $4d38: $02
    ld b, $09                                     ; $4d39: $06 $09
    add hl, bc                                    ; $4d3b: $09
    rra                                           ; $4d3c: $1f
    ld e, $1f                                     ; $4d3d: $1e $1f
    rra                                           ; $4d3f: $1f
    add hl, bc                                    ; $4d40: $09
    add hl, bc                                    ; $4d41: $09
    ld [$0703], sp                                ; $4d42: $08 $03 $07
    dec bc                                        ; $4d45: $0b
    add hl, bc                                    ; $4d46: $09
    rra                                           ; $4d47: $1f
    add hl, bc                                    ; $4d48: $09
    rra                                           ; $4d49: $1f
    add hl, bc                                    ; $4d4a: $09
    add hl, bc                                    ; $4d4b: $09
    ld [$0000], sp                                ; $4d4c: $08 $00 $00
    ld b, $09                                     ; $4d4f: $06 $09
    rra                                           ; $4d51: $1f
    add hl, bc                                    ; $4d52: $09
    ld e, $09                                     ; $4d53: $1e $09
    dec c                                         ; $4d55: $0d
    inc b                                         ; $4d56: $04
    ld bc, $0a05                                  ; $4d57: $01 $05 $0a
    add hl, bc                                    ; $4d5a: $09
    rra                                           ; $4d5b: $1f
    ld e, $1e                                     ; $4d5c: $1e $1e
    add hl, bc                                    ; $4d5e: $09
    inc c                                         ; $4d5f: $0c
    ld [bc], a                                    ; $4d60: $02
    ld b, $09                                     ; $4d61: $06 $09
    add hl, bc                                    ; $4d63: $09
    add hl, bc                                    ; $4d64: $09
    add hl, bc                                    ; $4d65: $09
    add hl, bc                                    ; $4d66: $09
    add hl, bc                                    ; $4d67: $09
    add hl, bc                                    ; $4d68: $09
    add hl, bc                                    ; $4d69: $09
    ld [$0703], sp                                ; $4d6a: $08 $03 $07
    rlca                                          ; $4d6d: $07
    rlca                                          ; $4d6e: $07
    rlca                                          ; $4d6f: $07
    rlca                                          ; $4d70: $07
    rlca                                          ; $4d71: $07
    rlca                                          ; $4d72: $07
    rlca                                          ; $4d73: $07
    inc b                                         ; $4d74: $04
    nop                                           ; $4d75: $00
    ld bc, $0505                                  ; $4d76: $01 $05 $05
    dec b                                         ; $4d79: $05
    dec b                                         ; $4d7a: $05
    ld [bc], a                                    ; $4d7b: $02
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    nop                                           ; $4d7e: $00
    ld bc, $090a                                  ; $4d7f: $01 $0a $09
    add hl, bc                                    ; $4d82: $09
    add hl, bc                                    ; $4d83: $09
    add hl, bc                                    ; $4d84: $09
    inc c                                         ; $4d85: $0c
    dec b                                         ; $4d86: $05
    dec b                                         ; $4d87: $05
    ld [bc], a                                    ; $4d88: $02
    ld b, $09                                     ; $4d89: $06 $09
    add hl, bc                                    ; $4d8b: $09
    add hl, bc                                    ; $4d8c: $09
    ld e, $09                                     ; $4d8d: $1e $09
    add hl, bc                                    ; $4d8f: $09
    ld e, $09                                     ; $4d90: $1e $09
    ld [$0906], sp                                ; $4d92: $08 $06 $09
    ld e, $1f                                     ; $4d95: $1e $1f
    ld e, $1e                                     ; $4d97: $1e $1e
    add hl, bc                                    ; $4d99: $09
    ld e, $09                                     ; $4d9a: $1e $09
    ld [$0906], sp                                ; $4d9c: $08 $06 $09
    ld e, $09                                     ; $4d9f: $1e $09
    ld e, $09                                     ; $4da1: $1e $09
    add hl, bc                                    ; $4da3: $09
    ld e, $09                                     ; $4da4: $1e $09
    ld [$0906], sp                                ; $4da6: $08 $06 $09
    ld e, $09                                     ; $4da9: $1e $09
    rra                                           ; $4dab: $1f
    add hl, bc                                    ; $4dac: $09
    rra                                           ; $4dad: $1f
    ld e, $09                                     ; $4dae: $1e $09
    ld [$0b03], sp                                ; $4db0: $08 $03 $0b
    add hl, bc                                    ; $4db3: $09
    add hl, bc                                    ; $4db4: $09
    add hl, bc                                    ; $4db5: $09
    add hl, bc                                    ; $4db6: $09
    add hl, bc                                    ; $4db7: $09
    add hl, bc                                    ; $4db8: $09
    add hl, bc                                    ; $4db9: $09
    ld [$0300], sp                                ; $4dba: $08 $00 $03
    rlca                                          ; $4dbd: $07
    rlca                                          ; $4dbe: $07
    rlca                                          ; $4dbf: $07
    rlca                                          ; $4dc0: $07
    rlca                                          ; $4dc1: $07
    rlca                                          ; $4dc2: $07
    rlca                                          ; $4dc3: $07
    inc b                                         ; $4dc4: $04
    ld bc, $0505                                  ; $4dc5: $01 $05 $05
    dec b                                         ; $4dc8: $05
    dec b                                         ; $4dc9: $05
    dec b                                         ; $4dca: $05
    dec b                                         ; $4dcb: $05
    dec b                                         ; $4dcc: $05
    dec b                                         ; $4dcd: $05
    ld [bc], a                                    ; $4dce: $02
    ld b, $09                                     ; $4dcf: $06 $09
    add hl, bc                                    ; $4dd1: $09
    add hl, bc                                    ; $4dd2: $09
    add hl, bc                                    ; $4dd3: $09
    add hl, bc                                    ; $4dd4: $09
    add hl, bc                                    ; $4dd5: $09
    add hl, bc                                    ; $4dd6: $09
    add hl, bc                                    ; $4dd7: $09
    ld [$0906], sp                                ; $4dd8: $08 $06 $09
    add hl, bc                                    ; $4ddb: $09
    ld e, $1e                                     ; $4ddc: $1e $1e
    ld e, $1e                                     ; $4dde: $1e $1e
    add hl, bc                                    ; $4de0: $09
    add hl, bc                                    ; $4de1: $09
    ld [$0906], sp                                ; $4de2: $08 $06 $09
    add hl, bc                                    ; $4de5: $09
    rra                                           ; $4de6: $1f
    add hl, bc                                    ; $4de7: $09
    add hl, bc                                    ; $4de8: $09
    ld e, $09                                     ; $4de9: $1e $09
    add hl, bc                                    ; $4deb: $09
    ld [$0906], sp                                ; $4dec: $08 $06 $09
    add hl, bc                                    ; $4def: $09
    ld e, $09                                     ; $4df0: $1e $09
    add hl, bc                                    ; $4df2: $09
    add hl, bc                                    ; $4df3: $09
    add hl, bc                                    ; $4df4: $09
    add hl, bc                                    ; $4df5: $09
    ld [$0906], sp                                ; $4df6: $08 $06 $09
    add hl, bc                                    ; $4df9: $09
    ld e, $1e                                     ; $4dfa: $1e $1e
    ld e, $1e                                     ; $4dfc: $1e $1e
    add hl, bc                                    ; $4dfe: $09
    add hl, bc                                    ; $4dff: $09
    ld [$0906], sp                                ; $4e00: $08 $06 $09
    add hl, bc                                    ; $4e03: $09
    add hl, bc                                    ; $4e04: $09
    add hl, bc                                    ; $4e05: $09
    add hl, bc                                    ; $4e06: $09
    add hl, bc                                    ; $4e07: $09
    add hl, bc                                    ; $4e08: $09
    add hl, bc                                    ; $4e09: $09
    ld [$0703], sp                                ; $4e0a: $08 $03 $07
    rlca                                          ; $4e0d: $07
    rlca                                          ; $4e0e: $07
    rlca                                          ; $4e0f: $07
    rlca                                          ; $4e10: $07
    rlca                                          ; $4e11: $07
    rlca                                          ; $4e12: $07
    rlca                                          ; $4e13: $07
    inc b                                         ; $4e14: $04
    ld bc, $0505                                  ; $4e15: $01 $05 $05
    dec b                                         ; $4e18: $05
    ld [bc], a                                    ; $4e19: $02
    ld bc, $0505                                  ; $4e1a: $01 $05 $05
    dec b                                         ; $4e1d: $05
    ld [bc], a                                    ; $4e1e: $02
    ld b, $09                                     ; $4e1f: $06 $09
    add hl, bc                                    ; $4e21: $09
    add hl, bc                                    ; $4e22: $09
    ld [$0906], sp                                ; $4e23: $08 $06 $09
    add hl, bc                                    ; $4e26: $09
    add hl, bc                                    ; $4e27: $09
    ld [$0906], sp                                ; $4e28: $08 $06 $09
    add hl, bc                                    ; $4e2b: $09
    add hl, bc                                    ; $4e2c: $09
    inc c                                         ; $4e2d: $0c
    ld a, [bc]                                    ; $4e2e: $0a
    add hl, bc                                    ; $4e2f: $09
    add hl, bc                                    ; $4e30: $09
    add hl, bc                                    ; $4e31: $09
    ld [$0906], sp                                ; $4e32: $08 $06 $09
    add hl, bc                                    ; $4e35: $09
    add hl, bc                                    ; $4e36: $09
    add hl, bc                                    ; $4e37: $09
    add hl, bc                                    ; $4e38: $09
    add hl, bc                                    ; $4e39: $09
    add hl, bc                                    ; $4e3a: $09
    add hl, bc                                    ; $4e3b: $09
    ld [$0906], sp                                ; $4e3c: $08 $06 $09
    add hl, bc                                    ; $4e3f: $09
    add hl, bc                                    ; $4e40: $09
    dec c                                         ; $4e41: $0d
    dec bc                                        ; $4e42: $0b
    add hl, bc                                    ; $4e43: $09
    add hl, bc                                    ; $4e44: $09
    add hl, bc                                    ; $4e45: $09
    ld [$0906], sp                                ; $4e46: $08 $06 $09
    add hl, bc                                    ; $4e49: $09
    add hl, bc                                    ; $4e4a: $09
    ld [$0906], sp                                ; $4e4b: $08 $06 $09
    add hl, bc                                    ; $4e4e: $09
    add hl, bc                                    ; $4e4f: $09
    ld [$0906], sp                                ; $4e50: $08 $06 $09
    add hl, bc                                    ; $4e53: $09
    rra                                           ; $4e54: $1f
    ld [$1f06], sp                                ; $4e55: $08 $06 $1f
    add hl, bc                                    ; $4e58: $09
    add hl, bc                                    ; $4e59: $09
    ld [$0703], sp                                ; $4e5a: $08 $03 $07
    rlca                                          ; $4e5d: $07
    rlca                                          ; $4e5e: $07
    inc b                                         ; $4e5f: $04
    inc bc                                        ; $4e60: $03
    rlca                                          ; $4e61: $07
    rlca                                          ; $4e62: $07
    rlca                                          ; $4e63: $07
    inc b                                         ; $4e64: $04
    nop                                           ; $4e65: $00
    nop                                           ; $4e66: $00
    ld bc, $0505                                  ; $4e67: $01 $05 $05
    dec b                                         ; $4e6a: $05
    dec b                                         ; $4e6b: $05
    dec b                                         ; $4e6c: $05
    dec b                                         ; $4e6d: $05
    ld [bc], a                                    ; $4e6e: $02
    ld bc, $0a05                                  ; $4e6f: $01 $05 $0a
    add hl, bc                                    ; $4e72: $09
    add hl, bc                                    ; $4e73: $09
    add hl, bc                                    ; $4e74: $09
    add hl, bc                                    ; $4e75: $09
    ld e, $1e                                     ; $4e76: $1e $1e
    ld [$0906], sp                                ; $4e78: $08 $06 $09
    add hl, bc                                    ; $4e7b: $09
    add hl, bc                                    ; $4e7c: $09
    add hl, bc                                    ; $4e7d: $09
    add hl, bc                                    ; $4e7e: $09
    ld e, $1f                                     ; $4e7f: $1e $1f
    add hl, bc                                    ; $4e81: $09
    ld [$0906], sp                                ; $4e82: $08 $06 $09
    add hl, bc                                    ; $4e85: $09
    add hl, bc                                    ; $4e86: $09
    rra                                           ; $4e87: $1f
    add hl, bc                                    ; $4e88: $09
    add hl, bc                                    ; $4e89: $09
    add hl, bc                                    ; $4e8a: $09
    add hl, bc                                    ; $4e8b: $09
    ld [$0906], sp                                ; $4e8c: $08 $06 $09
    rra                                           ; $4e8f: $1f
    rra                                           ; $4e90: $1f
    ld e, $09                                     ; $4e91: $1e $09
    add hl, bc                                    ; $4e93: $09
    add hl, bc                                    ; $4e94: $09
    add hl, bc                                    ; $4e95: $09
    ld [$0906], sp                                ; $4e96: $08 $06 $09
    rra                                           ; $4e99: $1f
    ld e, $09                                     ; $4e9a: $1e $09
    add hl, bc                                    ; $4e9c: $09
    add hl, bc                                    ; $4e9d: $09
    add hl, bc                                    ; $4e9e: $09
    add hl, bc                                    ; $4e9f: $09
    ld [$1e06], sp                                ; $4ea0: $08 $06 $1e
    ld e, $09                                     ; $4ea3: $1e $09
    add hl, bc                                    ; $4ea5: $09
    add hl, bc                                    ; $4ea6: $09
    add hl, bc                                    ; $4ea7: $09
    add hl, bc                                    ; $4ea8: $09
    dec c                                         ; $4ea9: $0d
    inc b                                         ; $4eaa: $04
    inc bc                                        ; $4eab: $03
    rlca                                          ; $4eac: $07
    rlca                                          ; $4ead: $07
    rlca                                          ; $4eae: $07
    rlca                                          ; $4eaf: $07
    rlca                                          ; $4eb0: $07
    rlca                                          ; $4eb1: $07
    rlca                                          ; $4eb2: $07
    inc b                                         ; $4eb3: $04
    nop                                           ; $4eb4: $00
    ld bc, $1805                                  ; $4eb5: $01 $05 $18
    dec b                                         ; $4eb8: $05
    dec b                                         ; $4eb9: $05
    dec b                                         ; $4eba: $05
    dec b                                         ; $4ebb: $05
    jr jr_003_4ec3                                ; $4ebc: $18 $05

    ld [bc], a                                    ; $4ebe: $02
    ld b, $1e                                     ; $4ebf: $06 $1e
    ld e, $09                                     ; $4ec1: $1e $09

jr_003_4ec3:
    add hl, bc                                    ; $4ec3: $09
    add hl, bc                                    ; $4ec4: $09
    add hl, bc                                    ; $4ec5: $09
    ld e, $1e                                     ; $4ec6: $1e $1e
    ld [$1e06], sp                                ; $4ec8: $08 $06 $1e
    ld e, $09                                     ; $4ecb: $1e $09
    ld e, $1e                                     ; $4ecd: $1e $1e
    add hl, bc                                    ; $4ecf: $09
    ld e, $1e                                     ; $4ed0: $1e $1e
    ld [$0906], sp                                ; $4ed2: $08 $06 $09
    add hl, bc                                    ; $4ed5: $09
    add hl, bc                                    ; $4ed6: $09
    ld e, $1e                                     ; $4ed7: $1e $1e
    add hl, bc                                    ; $4ed9: $09
    rra                                           ; $4eda: $1f
    add hl, bc                                    ; $4edb: $09
    ld [$0906], sp                                ; $4edc: $08 $06 $09
    rra                                           ; $4edf: $1f
    add hl, bc                                    ; $4ee0: $09
    ld e, $1e                                     ; $4ee1: $1e $1e
    add hl, bc                                    ; $4ee3: $09
    add hl, bc                                    ; $4ee4: $09
    add hl, bc                                    ; $4ee5: $09
    ld [$1e06], sp                                ; $4ee6: $08 $06 $1e
    ld e, $09                                     ; $4ee9: $1e $09
    ld e, $1e                                     ; $4eeb: $1e $1e
    add hl, bc                                    ; $4eed: $09
    ld e, $1e                                     ; $4eee: $1e $1e
    ld [$1e06], sp                                ; $4ef0: $08 $06 $1e
    ld e, $09                                     ; $4ef3: $1e $09
    add hl, bc                                    ; $4ef5: $09
    add hl, bc                                    ; $4ef6: $09
    add hl, bc                                    ; $4ef7: $09
    ld e, $1e                                     ; $4ef8: $1e $1e
    ld [$0703], sp                                ; $4efa: $08 $03 $07
    ld a, [hl+]                                   ; $4efd: $2a
    rlca                                          ; $4efe: $07
    rlca                                          ; $4eff: $07
    rlca                                          ; $4f00: $07
    rlca                                          ; $4f01: $07
    ld a, [hl+]                                   ; $4f02: $2a
    rlca                                          ; $4f03: $07
    inc b                                         ; $4f04: $04
    ld bc, $0505                                  ; $4f05: $01 $05 $05
    dec b                                         ; $4f08: $05
    dec b                                         ; $4f09: $05
    dec b                                         ; $4f0a: $05
    dec b                                         ; $4f0b: $05
    dec b                                         ; $4f0c: $05
    dec b                                         ; $4f0d: $05
    ld [bc], a                                    ; $4f0e: $02
    ld b, $19                                     ; $4f0f: $06 $19
    add hl, bc                                    ; $4f11: $09
    add hl, bc                                    ; $4f12: $09
    add hl, bc                                    ; $4f13: $09
    add hl, bc                                    ; $4f14: $09
    add hl, bc                                    ; $4f15: $09
    add hl, bc                                    ; $4f16: $09
    add hl, de                                    ; $4f17: $19
    ld [$1906], sp                                ; $4f18: $08 $06 $19
    ld a, [de]                                    ; $4f1b: $1a
    add hl, bc                                    ; $4f1c: $09
    add hl, de                                    ; $4f1d: $19
    add hl, de                                    ; $4f1e: $19
    add hl, de                                    ; $4f1f: $19
    ld a, [de]                                    ; $4f20: $1a
    add hl, de                                    ; $4f21: $19
    ld [$0906], sp                                ; $4f22: $08 $06 $09
    add hl, bc                                    ; $4f25: $09
    add hl, bc                                    ; $4f26: $09
    add hl, bc                                    ; $4f27: $09
    ld a, [de]                                    ; $4f28: $1a
    add hl, bc                                    ; $4f29: $09
    add hl, bc                                    ; $4f2a: $09
    add hl, bc                                    ; $4f2b: $09
    ld [$0906], sp                                ; $4f2c: $08 $06 $09
    add hl, de                                    ; $4f2f: $19
    add hl, de                                    ; $4f30: $19
    add hl, bc                                    ; $4f31: $09
    add hl, de                                    ; $4f32: $19
    add hl, bc                                    ; $4f33: $09
    add hl, de                                    ; $4f34: $19
    add hl, bc                                    ; $4f35: $09
    ld [$0906], sp                                ; $4f36: $08 $06 $09
    ld a, [de]                                    ; $4f39: $1a
    add hl, de                                    ; $4f3a: $19
    add hl, bc                                    ; $4f3b: $09
    add hl, bc                                    ; $4f3c: $09
    add hl, bc                                    ; $4f3d: $09
    ld a, [de]                                    ; $4f3e: $1a
    add hl, bc                                    ; $4f3f: $09
    ld [$1906], sp                                ; $4f40: $08 $06 $19
    add hl, de                                    ; $4f43: $19
    add hl, de                                    ; $4f44: $19
    ld a, [de]                                    ; $4f45: $1a
    add hl, de                                    ; $4f46: $19
    add hl, de                                    ; $4f47: $19
    add hl, de                                    ; $4f48: $19
    add hl, de                                    ; $4f49: $19
    ld [$0703], sp                                ; $4f4a: $08 $03 $07
    rlca                                          ; $4f4d: $07
    rlca                                          ; $4f4e: $07
    rlca                                          ; $4f4f: $07
    rlca                                          ; $4f50: $07
    rlca                                          ; $4f51: $07
    rlca                                          ; $4f52: $07
    rlca                                          ; $4f53: $07
    inc b                                         ; $4f54: $04
    ld bc, $1805                                  ; $4f55: $01 $05 $18
    dec b                                         ; $4f58: $05
    dec b                                         ; $4f59: $05
    dec b                                         ; $4f5a: $05
    dec b                                         ; $4f5b: $05
    jr jr_003_4f63                                ; $4f5c: $18 $05

    ld [bc], a                                    ; $4f5e: $02
    ld b, $1e                                     ; $4f5f: $06 $1e
    ld e, $09                                     ; $4f61: $1e $09

jr_003_4f63:
    add hl, bc                                    ; $4f63: $09
    add hl, bc                                    ; $4f64: $09
    add hl, bc                                    ; $4f65: $09
    ld e, $1e                                     ; $4f66: $1e $1e
    ld [$1e06], sp                                ; $4f68: $08 $06 $1e
    ld e, $09                                     ; $4f6b: $1e $09
    ld e, $1e                                     ; $4f6d: $1e $1e
    add hl, bc                                    ; $4f6f: $09
    ld e, $1e                                     ; $4f70: $1e $1e
    ld [$0906], sp                                ; $4f72: $08 $06 $09
    ld e, $09                                     ; $4f75: $1e $09
    ld e, $1e                                     ; $4f77: $1e $1e
    add hl, bc                                    ; $4f79: $09
    ld e, $09                                     ; $4f7a: $1e $09
    ld [$0906], sp                                ; $4f7c: $08 $06 $09
    ld e, $09                                     ; $4f7f: $1e $09
    ld e, $1e                                     ; $4f81: $1e $1e
    add hl, bc                                    ; $4f83: $09
    ld e, $09                                     ; $4f84: $1e $09
    ld [$1e06], sp                                ; $4f86: $08 $06 $1e
    ld e, $09                                     ; $4f89: $1e $09
    ld e, $1e                                     ; $4f8b: $1e $1e
    add hl, bc                                    ; $4f8d: $09
    ld e, $1e                                     ; $4f8e: $1e $1e
    ld [$1e06], sp                                ; $4f90: $08 $06 $1e
    ld e, $09                                     ; $4f93: $1e $09
    add hl, bc                                    ; $4f95: $09
    add hl, bc                                    ; $4f96: $09
    add hl, bc                                    ; $4f97: $09
    ld e, $1e                                     ; $4f98: $1e $1e
    ld [$0703], sp                                ; $4f9a: $08 $03 $07
    ld a, [hl+]                                   ; $4f9d: $2a
    rlca                                          ; $4f9e: $07
    rlca                                          ; $4f9f: $07
    rlca                                          ; $4fa0: $07
    rlca                                          ; $4fa1: $07
    ld a, [hl+]                                   ; $4fa2: $2a
    rlca                                          ; $4fa3: $07
    inc b                                         ; $4fa4: $04
    ld bc, $0505                                  ; $4fa5: $01 $05 $05
    dec b                                         ; $4fa8: $05
    dec b                                         ; $4fa9: $05
    dec b                                         ; $4faa: $05
    dec b                                         ; $4fab: $05
    dec b                                         ; $4fac: $05
    dec b                                         ; $4fad: $05
    ld [bc], a                                    ; $4fae: $02
    ld b, $1e                                     ; $4faf: $06 $1e
    ld e, $09                                     ; $4fb1: $1e $09
    add hl, bc                                    ; $4fb3: $09
    add hl, bc                                    ; $4fb4: $09
    add hl, bc                                    ; $4fb5: $09
    ld e, $1e                                     ; $4fb6: $1e $1e
    ld [$0906], sp                                ; $4fb8: $08 $06 $09
    ld e, $1e                                     ; $4fbb: $1e $1e
    ld e, $09                                     ; $4fbd: $1e $09
    ld e, $1e                                     ; $4fbf: $1e $1e
    add hl, bc                                    ; $4fc1: $09
    ld [$0906], sp                                ; $4fc2: $08 $06 $09
    add hl, bc                                    ; $4fc5: $09
    ld e, $1e                                     ; $4fc6: $1e $1e
    add hl, bc                                    ; $4fc8: $09
    ld e, $09                                     ; $4fc9: $1e $09
    add hl, bc                                    ; $4fcb: $09
    ld [$0906], sp                                ; $4fcc: $08 $06 $09
    add hl, bc                                    ; $4fcf: $09
    add hl, bc                                    ; $4fd0: $09
    add hl, bc                                    ; $4fd1: $09
    add hl, bc                                    ; $4fd2: $09
    add hl, bc                                    ; $4fd3: $09
    add hl, bc                                    ; $4fd4: $09
    add hl, bc                                    ; $4fd5: $09
    ld [$1e06], sp                                ; $4fd6: $08 $06 $1e
    ld e, $1e                                     ; $4fd9: $1e $1e
    ld e, $09                                     ; $4fdb: $1e $09
    ld e, $1e                                     ; $4fdd: $1e $1e
    ld e, $08                                     ; $4fdf: $1e $08
    ld b, $1e                                     ; $4fe1: $06 $1e
    ld e, $09                                     ; $4fe3: $1e $09
    add hl, bc                                    ; $4fe5: $09
    add hl, bc                                    ; $4fe6: $09
    add hl, bc                                    ; $4fe7: $09
    ld e, $1e                                     ; $4fe8: $1e $1e
    ld [$0703], sp                                ; $4fea: $08 $03 $07
    rlca                                          ; $4fed: $07
    rlca                                          ; $4fee: $07
    rlca                                          ; $4fef: $07
    rlca                                          ; $4ff0: $07
    rlca                                          ; $4ff1: $07
    rlca                                          ; $4ff2: $07
    rlca                                          ; $4ff3: $07
    inc b                                         ; $4ff4: $04
    ld bc, $1805                                  ; $4ff5: $01 $05 $18
    dec b                                         ; $4ff8: $05
    dec b                                         ; $4ff9: $05
    dec b                                         ; $4ffa: $05
    dec b                                         ; $4ffb: $05
    jr jr_003_5003                                ; $4ffc: $18 $05

    ld [bc], a                                    ; $4ffe: $02
    ld b, $09                                     ; $4fff: $06 $09
    add hl, bc                                    ; $5001: $09
    add hl, bc                                    ; $5002: $09

jr_003_5003:
    add hl, bc                                    ; $5003: $09
    add hl, bc                                    ; $5004: $09
    add hl, bc                                    ; $5005: $09
    add hl, bc                                    ; $5006: $09
    add hl, bc                                    ; $5007: $09
    ld [$0906], sp                                ; $5008: $08 $06 $09
    ld e, $1e                                     ; $500b: $1e $1e
    ld e, $1e                                     ; $500d: $1e $1e
    ld e, $1e                                     ; $500f: $1e $1e
    add hl, bc                                    ; $5011: $09
    ld [$0906], sp                                ; $5012: $08 $06 $09
    ld e, $09                                     ; $5015: $1e $09
    add hl, bc                                    ; $5017: $09
    add hl, bc                                    ; $5018: $09
    add hl, bc                                    ; $5019: $09
    ld e, $09                                     ; $501a: $1e $09
    ld [$0906], sp                                ; $501c: $08 $06 $09
    ld e, $09                                     ; $501f: $1e $09
    add hl, bc                                    ; $5021: $09
    ld e, $09                                     ; $5022: $1e $09
    ld e, $09                                     ; $5024: $1e $09
    ld [$0906], sp                                ; $5026: $08 $06 $09
    ld e, $1e                                     ; $5029: $1e $1e
    ld e, $1e                                     ; $502b: $1e $1e
    add hl, bc                                    ; $502d: $09
    ld e, $09                                     ; $502e: $1e $09
    ld [$0906], sp                                ; $5030: $08 $06 $09
    add hl, bc                                    ; $5033: $09
    add hl, bc                                    ; $5034: $09
    add hl, bc                                    ; $5035: $09
    add hl, bc                                    ; $5036: $09
    add hl, bc                                    ; $5037: $09
    ld e, $09                                     ; $5038: $1e $09
    ld [$0703], sp                                ; $503a: $08 $03 $07
    ld a, [hl+]                                   ; $503d: $2a
    rlca                                          ; $503e: $07
    rlca                                          ; $503f: $07
    rlca                                          ; $5040: $07
    rlca                                          ; $5041: $07
    ld a, [hl+]                                   ; $5042: $2a
    rlca                                          ; $5043: $07
    inc b                                         ; $5044: $04
    ld bc, $1805                                  ; $5045: $01 $05 $18
    dec b                                         ; $5048: $05
    dec b                                         ; $5049: $05
    dec b                                         ; $504a: $05
    dec b                                         ; $504b: $05
    jr jr_003_5053                                ; $504c: $18 $05

    ld [bc], a                                    ; $504e: $02
    ld b, $1e                                     ; $504f: $06 $1e
    ld e, $1e                                     ; $5051: $1e $1e

jr_003_5053:
    add hl, bc                                    ; $5053: $09
    add hl, bc                                    ; $5054: $09
    ld e, $1e                                     ; $5055: $1e $1e
    ld e, $08                                     ; $5057: $1e $08
    ld b, $1e                                     ; $5059: $06 $1e
    add hl, bc                                    ; $505b: $09
    add hl, bc                                    ; $505c: $09
    add hl, bc                                    ; $505d: $09
    add hl, bc                                    ; $505e: $09
    add hl, bc                                    ; $505f: $09
    add hl, bc                                    ; $5060: $09
    ld e, $08                                     ; $5061: $1e $08
    ld b, $09                                     ; $5063: $06 $09
    add hl, bc                                    ; $5065: $09
    add hl, bc                                    ; $5066: $09
    add hl, bc                                    ; $5067: $09
    add hl, bc                                    ; $5068: $09
    add hl, bc                                    ; $5069: $09
    add hl, bc                                    ; $506a: $09
    add hl, bc                                    ; $506b: $09
    ld [$0906], sp                                ; $506c: $08 $06 $09
    add hl, bc                                    ; $506f: $09
    add hl, bc                                    ; $5070: $09
    add hl, bc                                    ; $5071: $09
    add hl, bc                                    ; $5072: $09
    add hl, bc                                    ; $5073: $09
    add hl, bc                                    ; $5074: $09
    add hl, bc                                    ; $5075: $09
    ld [$1e06], sp                                ; $5076: $08 $06 $1e
    add hl, bc                                    ; $5079: $09
    add hl, bc                                    ; $507a: $09
    add hl, bc                                    ; $507b: $09
    add hl, bc                                    ; $507c: $09
    add hl, bc                                    ; $507d: $09
    add hl, bc                                    ; $507e: $09
    ld e, $08                                     ; $507f: $1e $08
    ld b, $1e                                     ; $5081: $06 $1e
    ld e, $1e                                     ; $5083: $1e $1e
    add hl, bc                                    ; $5085: $09
    add hl, bc                                    ; $5086: $09
    ld e, $1e                                     ; $5087: $1e $1e
    ld e, $08                                     ; $5089: $1e $08
    inc bc                                        ; $508b: $03
    rlca                                          ; $508c: $07
    ld a, [hl+]                                   ; $508d: $2a
    rlca                                          ; $508e: $07
    rlca                                          ; $508f: $07
    rlca                                          ; $5090: $07
    rlca                                          ; $5091: $07
    ld a, [hl+]                                   ; $5092: $2a
    rlca                                          ; $5093: $07
    inc b                                         ; $5094: $04
    ld bc, $0505                                  ; $5095: $01 $05 $05
    dec b                                         ; $5098: $05
    dec b                                         ; $5099: $05
    dec b                                         ; $509a: $05
    dec b                                         ; $509b: $05
    dec b                                         ; $509c: $05
    dec b                                         ; $509d: $05
    ld [bc], a                                    ; $509e: $02
    ld b, $1e                                     ; $509f: $06 $1e
    add hl, bc                                    ; $50a1: $09
    add hl, bc                                    ; $50a2: $09
    add hl, bc                                    ; $50a3: $09
    add hl, bc                                    ; $50a4: $09
    add hl, bc                                    ; $50a5: $09
    add hl, bc                                    ; $50a6: $09
    add hl, bc                                    ; $50a7: $09
    ld [$1e06], sp                                ; $50a8: $08 $06 $1e
    add hl, bc                                    ; $50ab: $09
    add hl, bc                                    ; $50ac: $09
    add hl, bc                                    ; $50ad: $09
    add hl, bc                                    ; $50ae: $09
    add hl, bc                                    ; $50af: $09
    add hl, bc                                    ; $50b0: $09
    add hl, bc                                    ; $50b1: $09
    ld [$0906], sp                                ; $50b2: $08 $06 $09
    add hl, bc                                    ; $50b5: $09
    add hl, bc                                    ; $50b6: $09
    add hl, bc                                    ; $50b7: $09
    add hl, bc                                    ; $50b8: $09
    add hl, bc                                    ; $50b9: $09
    add hl, bc                                    ; $50ba: $09
    add hl, bc                                    ; $50bb: $09
    ld [$1e06], sp                                ; $50bc: $08 $06 $1e
    add hl, bc                                    ; $50bf: $09
    add hl, bc                                    ; $50c0: $09
    add hl, bc                                    ; $50c1: $09
    add hl, bc                                    ; $50c2: $09
    add hl, bc                                    ; $50c3: $09
    add hl, bc                                    ; $50c4: $09
    add hl, bc                                    ; $50c5: $09
    ld [$1e06], sp                                ; $50c6: $08 $06 $1e
    add hl, bc                                    ; $50c9: $09
    add hl, bc                                    ; $50ca: $09
    add hl, bc                                    ; $50cb: $09
    add hl, bc                                    ; $50cc: $09
    add hl, bc                                    ; $50cd: $09
    add hl, bc                                    ; $50ce: $09
    add hl, bc                                    ; $50cf: $09
    ld [$1e06], sp                                ; $50d0: $08 $06 $1e
    ld e, $1e                                     ; $50d3: $1e $1e
    ld e, $09                                     ; $50d5: $1e $09
    ld e, $1e                                     ; $50d7: $1e $1e
    ld e, $08                                     ; $50d9: $1e $08
    inc bc                                        ; $50db: $03
    rlca                                          ; $50dc: $07
    rlca                                          ; $50dd: $07
    rlca                                          ; $50de: $07
    rlca                                          ; $50df: $07
    rlca                                          ; $50e0: $07
    rlca                                          ; $50e1: $07
    rlca                                          ; $50e2: $07
    rlca                                          ; $50e3: $07
    inc b                                         ; $50e4: $04
    nop                                           ; $50e5: $00
    nop                                           ; $50e6: $00
    ld bc, $0505                                  ; $50e7: $01 $05 $05
    dec b                                         ; $50ea: $05
    dec b                                         ; $50eb: $05
    ld [bc], a                                    ; $50ec: $02
    nop                                           ; $50ed: $00
    nop                                           ; $50ee: $00
    nop                                           ; $50ef: $00
    ld bc, $090a                                  ; $50f0: $01 $0a $09
    add hl, bc                                    ; $50f3: $09
    add hl, bc                                    ; $50f4: $09
    add hl, bc                                    ; $50f5: $09
    inc c                                         ; $50f6: $0c
    ld [bc], a                                    ; $50f7: $02
    nop                                           ; $50f8: $00
    ld bc, $090a                                  ; $50f9: $01 $0a $09
    add hl, bc                                    ; $50fc: $09
    add hl, bc                                    ; $50fd: $09
    add hl, bc                                    ; $50fe: $09
    add hl, bc                                    ; $50ff: $09
    add hl, bc                                    ; $5100: $09
    inc c                                         ; $5101: $0c
    ld [bc], a                                    ; $5102: $02
    ld b, $09                                     ; $5103: $06 $09
    add hl, bc                                    ; $5105: $09
    add hl, bc                                    ; $5106: $09
    add hl, bc                                    ; $5107: $09
    add hl, bc                                    ; $5108: $09
    add hl, bc                                    ; $5109: $09
    add hl, bc                                    ; $510a: $09
    add hl, bc                                    ; $510b: $09
    ld [$0906], sp                                ; $510c: $08 $06 $09
    add hl, bc                                    ; $510f: $09
    add hl, bc                                    ; $5110: $09
    add hl, bc                                    ; $5111: $09
    add hl, bc                                    ; $5112: $09
    add hl, bc                                    ; $5113: $09
    add hl, bc                                    ; $5114: $09
    add hl, bc                                    ; $5115: $09
    ld [$0906], sp                                ; $5116: $08 $06 $09
    add hl, bc                                    ; $5119: $09
    dec c                                         ; $511a: $0d
    rlca                                          ; $511b: $07
    rlca                                          ; $511c: $07
    dec bc                                        ; $511d: $0b
    add hl, bc                                    ; $511e: $09
    add hl, bc                                    ; $511f: $09
    ld [$0906], sp                                ; $5120: $08 $06 $09
    dec c                                         ; $5123: $0d
    inc b                                         ; $5124: $04
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    inc bc                                        ; $5127: $03
    dec bc                                        ; $5128: $0b
    add hl, bc                                    ; $5129: $09
    ld [$0703], sp                                ; $512a: $08 $03 $07
    inc b                                         ; $512d: $04
    nop                                           ; $512e: $00
    nop                                           ; $512f: $00
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    inc bc                                        ; $5132: $03
    rlca                                          ; $5133: $07
    inc b                                         ; $5134: $04
    ld bc, $0505                                  ; $5135: $01 $05 $05
    dec b                                         ; $5138: $05
    dec b                                         ; $5139: $05
    dec b                                         ; $513a: $05
    dec b                                         ; $513b: $05
    dec b                                         ; $513c: $05
    dec b                                         ; $513d: $05
    ld [bc], a                                    ; $513e: $02
    ld b, $09                                     ; $513f: $06 $09
    add hl, bc                                    ; $5141: $09
    add hl, bc                                    ; $5142: $09
    add hl, bc                                    ; $5143: $09
    add hl, bc                                    ; $5144: $09
    add hl, bc                                    ; $5145: $09
    add hl, bc                                    ; $5146: $09
    add hl, bc                                    ; $5147: $09
    ld [$0906], sp                                ; $5148: $08 $06 $09
    add hl, bc                                    ; $514b: $09
    add hl, bc                                    ; $514c: $09
    add hl, bc                                    ; $514d: $09
    add hl, bc                                    ; $514e: $09
    add hl, bc                                    ; $514f: $09
    add hl, bc                                    ; $5150: $09
    add hl, bc                                    ; $5151: $09
    ld [$0906], sp                                ; $5152: $08 $06 $09
    dec c                                         ; $5155: $0d
    rlca                                          ; $5156: $07
    rlca                                          ; $5157: $07
    rlca                                          ; $5158: $07
    dec bc                                        ; $5159: $0b
    add hl, bc                                    ; $515a: $09
    add hl, bc                                    ; $515b: $09
    ld [$0906], sp                                ; $515c: $08 $06 $09
    ld [$0501], sp                                ; $515f: $08 $01 $05
    ld [bc], a                                    ; $5162: $02
    ld b, $09                                     ; $5163: $06 $09
    add hl, bc                                    ; $5165: $09
    ld [$0906], sp                                ; $5166: $08 $06 $09
    inc c                                         ; $5169: $0c
    ld a, [bc]                                    ; $516a: $0a
    add hl, bc                                    ; $516b: $09
    inc c                                         ; $516c: $0c
    ld a, [bc]                                    ; $516d: $0a
    add hl, bc                                    ; $516e: $09
    add hl, bc                                    ; $516f: $09
    ld [$0906], sp                                ; $5170: $08 $06 $09
    add hl, bc                                    ; $5173: $09
    add hl, bc                                    ; $5174: $09
    add hl, bc                                    ; $5175: $09
    rra                                           ; $5176: $1f
    add hl, bc                                    ; $5177: $09
    add hl, bc                                    ; $5178: $09
    add hl, bc                                    ; $5179: $09
    ld [$0703], sp                                ; $517a: $08 $03 $07
    rlca                                          ; $517d: $07
    rlca                                          ; $517e: $07
    rlca                                          ; $517f: $07
    rlca                                          ; $5180: $07
    rlca                                          ; $5181: $07
    rlca                                          ; $5182: $07
    rlca                                          ; $5183: $07
    inc b                                         ; $5184: $04
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    ld bc, $0505                                  ; $5187: $01 $05 $05
    dec b                                         ; $518a: $05
    dec b                                         ; $518b: $05
    dec b                                         ; $518c: $05
    dec b                                         ; $518d: $05
    ld [bc], a                                    ; $518e: $02
    ld bc, $0a05                                  ; $518f: $01 $05 $0a
    add hl, bc                                    ; $5192: $09
    add hl, bc                                    ; $5193: $09
    add hl, bc                                    ; $5194: $09
    add hl, bc                                    ; $5195: $09
    add hl, bc                                    ; $5196: $09
    add hl, bc                                    ; $5197: $09
    ld [$0906], sp                                ; $5198: $08 $06 $09
    add hl, bc                                    ; $519b: $09
    add hl, bc                                    ; $519c: $09
    add hl, bc                                    ; $519d: $09
    add hl, bc                                    ; $519e: $09
    dec c                                         ; $519f: $0d
    dec bc                                        ; $51a0: $0b
    add hl, bc                                    ; $51a1: $09
    ld [$0906], sp                                ; $51a2: $08 $06 $09
    add hl, bc                                    ; $51a5: $09
    add hl, bc                                    ; $51a6: $09
    add hl, bc                                    ; $51a7: $09
    add hl, bc                                    ; $51a8: $09
    inc c                                         ; $51a9: $0c
    ld a, [bc]                                    ; $51aa: $0a
    add hl, bc                                    ; $51ab: $09
    ld [$0906], sp                                ; $51ac: $08 $06 $09
    dec c                                         ; $51af: $0d
    dec bc                                        ; $51b0: $0b
    add hl, bc                                    ; $51b1: $09
    add hl, bc                                    ; $51b2: $09
    add hl, bc                                    ; $51b3: $09
    add hl, bc                                    ; $51b4: $09
    add hl, bc                                    ; $51b5: $09
    ld [$0906], sp                                ; $51b6: $08 $06 $09
    inc c                                         ; $51b9: $0c
    ld a, [bc]                                    ; $51ba: $0a
    add hl, bc                                    ; $51bb: $09
    add hl, bc                                    ; $51bc: $09
    add hl, bc                                    ; $51bd: $09
    add hl, bc                                    ; $51be: $09
    add hl, bc                                    ; $51bf: $09
    ld [$0906], sp                                ; $51c0: $08 $06 $09
    add hl, bc                                    ; $51c3: $09
    add hl, bc                                    ; $51c4: $09
    add hl, bc                                    ; $51c5: $09
    add hl, bc                                    ; $51c6: $09
    add hl, bc                                    ; $51c7: $09
    add hl, bc                                    ; $51c8: $09
    add hl, bc                                    ; $51c9: $09
    ld [$0703], sp                                ; $51ca: $08 $03 $07
    rlca                                          ; $51cd: $07
    rlca                                          ; $51ce: $07
    rlca                                          ; $51cf: $07
    rlca                                          ; $51d0: $07
    rlca                                          ; $51d1: $07
    rlca                                          ; $51d2: $07
    rlca                                          ; $51d3: $07
    inc b                                         ; $51d4: $04
    ld bc, $1805                                  ; $51d5: $01 $05 $18
    dec b                                         ; $51d8: $05
    dec b                                         ; $51d9: $05
    dec b                                         ; $51da: $05
    dec b                                         ; $51db: $05
    jr jr_003_51e3                                ; $51dc: $18 $05

    ld [bc], a                                    ; $51de: $02
    ld b, $09                                     ; $51df: $06 $09
    add hl, bc                                    ; $51e1: $09
    add hl, bc                                    ; $51e2: $09

jr_003_51e3:
    add hl, bc                                    ; $51e3: $09
    add hl, bc                                    ; $51e4: $09
    add hl, bc                                    ; $51e5: $09
    add hl, bc                                    ; $51e6: $09
    add hl, bc                                    ; $51e7: $09
    ld [$0906], sp                                ; $51e8: $08 $06 $09
    add hl, bc                                    ; $51eb: $09
    add hl, bc                                    ; $51ec: $09
    add hl, bc                                    ; $51ed: $09
    add hl, bc                                    ; $51ee: $09
    add hl, bc                                    ; $51ef: $09
    add hl, bc                                    ; $51f0: $09
    add hl, bc                                    ; $51f1: $09
    ld [$0703], sp                                ; $51f2: $08 $03 $07
    rlca                                          ; $51f5: $07
    dec bc                                        ; $51f6: $0b
    add hl, bc                                    ; $51f7: $09
    add hl, bc                                    ; $51f8: $09
    dec c                                         ; $51f9: $0d
    rlca                                          ; $51fa: $07
    rlca                                          ; $51fb: $07
    inc b                                         ; $51fc: $04
    ld bc, $0505                                  ; $51fd: $01 $05 $05
    ld a, [bc]                                    ; $5200: $0a
    add hl, bc                                    ; $5201: $09
    add hl, bc                                    ; $5202: $09
    inc c                                         ; $5203: $0c
    dec b                                         ; $5204: $05
    dec b                                         ; $5205: $05
    ld [bc], a                                    ; $5206: $02
    ld b, $09                                     ; $5207: $06 $09
    add hl, bc                                    ; $5209: $09
    add hl, bc                                    ; $520a: $09
    add hl, bc                                    ; $520b: $09
    add hl, bc                                    ; $520c: $09
    add hl, bc                                    ; $520d: $09
    add hl, bc                                    ; $520e: $09
    add hl, bc                                    ; $520f: $09
    ld [$0906], sp                                ; $5210: $08 $06 $09
    add hl, bc                                    ; $5213: $09
    add hl, bc                                    ; $5214: $09
    add hl, bc                                    ; $5215: $09
    add hl, bc                                    ; $5216: $09
    add hl, bc                                    ; $5217: $09
    add hl, bc                                    ; $5218: $09
    add hl, bc                                    ; $5219: $09
    ld [$0703], sp                                ; $521a: $08 $03 $07
    ld a, [hl+]                                   ; $521d: $2a
    rlca                                          ; $521e: $07
    rlca                                          ; $521f: $07
    rlca                                          ; $5220: $07
    rlca                                          ; $5221: $07
    ld a, [hl+]                                   ; $5222: $2a
    rlca                                          ; $5223: $07
    inc b                                         ; $5224: $04
    nop                                           ; $5225: $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    ld bc, $0505                                  ; $5228: $01 $05 $05
    ld [bc], a                                    ; $522b: $02
    nop                                           ; $522c: $00
    nop                                           ; $522d: $00
    nop                                           ; $522e: $00
    nop                                           ; $522f: $00
    nop                                           ; $5230: $00
    ld bc, $090a                                  ; $5231: $01 $0a $09
    add hl, bc                                    ; $5234: $09
    inc c                                         ; $5235: $0c
    ld [bc], a                                    ; $5236: $02
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    ld bc, $090a                                  ; $523a: $01 $0a $09
    add hl, bc                                    ; $523d: $09
    add hl, bc                                    ; $523e: $09
    add hl, bc                                    ; $523f: $09
    inc c                                         ; $5240: $0c
    ld [bc], a                                    ; $5241: $02
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    ld b, $09                                     ; $5244: $06 $09
    add hl, bc                                    ; $5246: $09
    add hl, bc                                    ; $5247: $09
    add hl, bc                                    ; $5248: $09
    add hl, bc                                    ; $5249: $09
    add hl, bc                                    ; $524a: $09
    ld [$0000], sp                                ; $524b: $08 $00 $00
    ld b, $09                                     ; $524e: $06 $09
    add hl, bc                                    ; $5250: $09
    add hl, bc                                    ; $5251: $09
    add hl, bc                                    ; $5252: $09
    add hl, bc                                    ; $5253: $09
    add hl, bc                                    ; $5254: $09
    ld [$0000], sp                                ; $5255: $08 $00 $00
    inc bc                                        ; $5258: $03
    dec bc                                        ; $5259: $0b
    add hl, bc                                    ; $525a: $09
    add hl, bc                                    ; $525b: $09
    add hl, bc                                    ; $525c: $09
    add hl, bc                                    ; $525d: $09
    dec c                                         ; $525e: $0d
    inc b                                         ; $525f: $04
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    inc bc                                        ; $5263: $03
    dec bc                                        ; $5264: $0b
    add hl, bc                                    ; $5265: $09
    add hl, bc                                    ; $5266: $09
    dec c                                         ; $5267: $0d
    inc b                                         ; $5268: $04
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    nop                                           ; $526b: $00
    nop                                           ; $526c: $00
    nop                                           ; $526d: $00
    inc bc                                        ; $526e: $03
    rlca                                          ; $526f: $07
    rlca                                          ; $5270: $07
    inc b                                         ; $5271: $04
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    ld bc, $0505                                  ; $5278: $01 $05 $05
    ld [bc], a                                    ; $527b: $02
    nop                                           ; $527c: $00
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    nop                                           ; $527f: $00
    ld bc, $0a18                                  ; $5280: $01 $18 $0a
    add hl, bc                                    ; $5283: $09
    add hl, bc                                    ; $5284: $09
    inc c                                         ; $5285: $0c
    jr @+$04                                      ; $5286: $18 $02

    nop                                           ; $5288: $00
    ld bc, $090a                                  ; $5289: $01 $0a $09
    add hl, bc                                    ; $528c: $09
    add hl, bc                                    ; $528d: $09
    add hl, bc                                    ; $528e: $09
    add hl, bc                                    ; $528f: $09
    add hl, bc                                    ; $5290: $09
    inc c                                         ; $5291: $0c
    ld [bc], a                                    ; $5292: $02
    ld b, $09                                     ; $5293: $06 $09
    add hl, bc                                    ; $5295: $09
    add hl, bc                                    ; $5296: $09
    add hl, bc                                    ; $5297: $09
    add hl, bc                                    ; $5298: $09
    add hl, bc                                    ; $5299: $09
    add hl, bc                                    ; $529a: $09
    add hl, bc                                    ; $529b: $09
    ld [$0906], sp                                ; $529c: $08 $06 $09
    add hl, bc                                    ; $529f: $09
    add hl, bc                                    ; $52a0: $09
    add hl, bc                                    ; $52a1: $09
    add hl, bc                                    ; $52a2: $09
    add hl, bc                                    ; $52a3: $09
    add hl, bc                                    ; $52a4: $09
    add hl, bc                                    ; $52a5: $09
    ld [$0b03], sp                                ; $52a6: $08 $03 $0b
    add hl, bc                                    ; $52a9: $09
    add hl, bc                                    ; $52aa: $09
    add hl, bc                                    ; $52ab: $09
    add hl, bc                                    ; $52ac: $09
    add hl, bc                                    ; $52ad: $09
    add hl, bc                                    ; $52ae: $09
    dec c                                         ; $52af: $0d
    inc b                                         ; $52b0: $04
    nop                                           ; $52b1: $00
    inc bc                                        ; $52b2: $03
    ld a, [hl+]                                   ; $52b3: $2a
    dec bc                                        ; $52b4: $0b
    add hl, bc                                    ; $52b5: $09
    add hl, bc                                    ; $52b6: $09
    dec c                                         ; $52b7: $0d
    ld a, [hl+]                                   ; $52b8: $2a
    inc b                                         ; $52b9: $04
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    nop                                           ; $52bc: $00
    nop                                           ; $52bd: $00
    inc bc                                        ; $52be: $03
    rlca                                          ; $52bf: $07
    rlca                                          ; $52c0: $07
    inc b                                         ; $52c1: $04
    nop                                           ; $52c2: $00
    nop                                           ; $52c3: $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    nop                                           ; $52c6: $00
    ld bc, $0505                                  ; $52c7: $01 $05 $05
    dec b                                         ; $52ca: $05
    dec b                                         ; $52cb: $05
    ld [bc], a                                    ; $52cc: $02
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00
    nop                                           ; $52cf: $00
    nop                                           ; $52d0: $00
    ld b, $09                                     ; $52d1: $06 $09
    add hl, bc                                    ; $52d3: $09
    add hl, bc                                    ; $52d4: $09
    add hl, bc                                    ; $52d5: $09
    ld [$0000], sp                                ; $52d6: $08 $00 $00
    nop                                           ; $52d9: $00
    nop                                           ; $52da: $00
    ld b, $09                                     ; $52db: $06 $09
    add hl, bc                                    ; $52dd: $09
    add hl, bc                                    ; $52de: $09
    add hl, bc                                    ; $52df: $09
    ld [$0000], sp                                ; $52e0: $08 $00 $00
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    ld b, $09                                     ; $52e5: $06 $09
    add hl, bc                                    ; $52e7: $09
    add hl, bc                                    ; $52e8: $09
    add hl, bc                                    ; $52e9: $09
    ld [$0000], sp                                ; $52ea: $08 $00 $00
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    ld b, $09                                     ; $52ef: $06 $09
    add hl, bc                                    ; $52f1: $09
    add hl, bc                                    ; $52f2: $09
    add hl, bc                                    ; $52f3: $09
    ld [$0000], sp                                ; $52f4: $08 $00 $00
    nop                                           ; $52f7: $00
    nop                                           ; $52f8: $00
    ld b, $09                                     ; $52f9: $06 $09
    add hl, bc                                    ; $52fb: $09
    add hl, bc                                    ; $52fc: $09
    add hl, bc                                    ; $52fd: $09
    ld [$0000], sp                                ; $52fe: $08 $00 $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    ld b, $09                                     ; $5303: $06 $09
    add hl, bc                                    ; $5305: $09
    add hl, bc                                    ; $5306: $09
    add hl, bc                                    ; $5307: $09
    ld [$0000], sp                                ; $5308: $08 $00 $00
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    inc bc                                        ; $530d: $03
    rlca                                          ; $530e: $07
    rlca                                          ; $530f: $07
    rlca                                          ; $5310: $07
    rlca                                          ; $5311: $07
    inc b                                         ; $5312: $04
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    ld bc, $0518                                  ; $531b: $01 $18 $05
    ld [bc], a                                    ; $531e: $02
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    ld bc, $0505                                  ; $5322: $01 $05 $05
    ld a, [bc]                                    ; $5325: $0a
    add hl, bc                                    ; $5326: $09
    add hl, bc                                    ; $5327: $09
    ld [$0501], sp                                ; $5328: $08 $01 $05
    jr jr_003_5337                                ; $532b: $18 $0a

    add hl, bc                                    ; $532d: $09
    add hl, bc                                    ; $532e: $09
    add hl, bc                                    ; $532f: $09
    add hl, bc                                    ; $5330: $09
    add hl, bc                                    ; $5331: $09
    ld [$0906], sp                                ; $5332: $08 $06 $09
    add hl, bc                                    ; $5335: $09
    add hl, bc                                    ; $5336: $09

jr_003_5337:
    add hl, bc                                    ; $5337: $09
    add hl, bc                                    ; $5338: $09
    add hl, bc                                    ; $5339: $09
    add hl, bc                                    ; $533a: $09
    add hl, bc                                    ; $533b: $09
    ld [$0906], sp                                ; $533c: $08 $06 $09
    add hl, bc                                    ; $533f: $09
    add hl, bc                                    ; $5340: $09
    add hl, bc                                    ; $5341: $09
    add hl, bc                                    ; $5342: $09
    add hl, bc                                    ; $5343: $09
    add hl, bc                                    ; $5344: $09
    add hl, bc                                    ; $5345: $09
    ld [$0906], sp                                ; $5346: $08 $06 $09
    add hl, bc                                    ; $5349: $09
    add hl, bc                                    ; $534a: $09
    add hl, bc                                    ; $534b: $09
    add hl, bc                                    ; $534c: $09
    dec c                                         ; $534d: $0d
    ld a, [hl+]                                   ; $534e: $2a
    rlca                                          ; $534f: $07
    inc b                                         ; $5350: $04
    ld b, $09                                     ; $5351: $06 $09
    add hl, bc                                    ; $5353: $09
    dec c                                         ; $5354: $0d
    rlca                                          ; $5355: $07
    rlca                                          ; $5356: $07
    inc b                                         ; $5357: $04
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    nop                                           ; $535a: $00
    inc bc                                        ; $535b: $03
    rlca                                          ; $535c: $07
    ld a, [hl+]                                   ; $535d: $2a
    inc b                                         ; $535e: $04
    nop                                           ; $535f: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    ld bc, $0505                                  ; $5365: $01 $05 $05
    ld [bc], a                                    ; $5368: $02
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    ld bc, $0505                                  ; $536b: $01 $05 $05
    ld [bc], a                                    ; $536e: $02
    ld b, $09                                     ; $536f: $06 $09
    add hl, bc                                    ; $5371: $09
    inc c                                         ; $5372: $0c
    ld [bc], a                                    ; $5373: $02
    ld bc, $090a                                  ; $5374: $01 $0a $09
    add hl, bc                                    ; $5377: $09
    ld [$0906], sp                                ; $5378: $08 $06 $09
    add hl, bc                                    ; $537b: $09
    add hl, bc                                    ; $537c: $09
    inc c                                         ; $537d: $0c
    ld a, [bc]                                    ; $537e: $0a
    add hl, bc                                    ; $537f: $09
    add hl, bc                                    ; $5380: $09
    add hl, bc                                    ; $5381: $09
    ld [$0906], sp                                ; $5382: $08 $06 $09
    add hl, bc                                    ; $5385: $09
    add hl, bc                                    ; $5386: $09
    add hl, bc                                    ; $5387: $09
    add hl, bc                                    ; $5388: $09
    add hl, bc                                    ; $5389: $09
    add hl, bc                                    ; $538a: $09
    add hl, bc                                    ; $538b: $09
    ld [$0906], sp                                ; $538c: $08 $06 $09
    add hl, bc                                    ; $538f: $09
    add hl, bc                                    ; $5390: $09
    add hl, bc                                    ; $5391: $09
    add hl, bc                                    ; $5392: $09
    add hl, bc                                    ; $5393: $09
    add hl, bc                                    ; $5394: $09
    add hl, bc                                    ; $5395: $09
    ld [$0906], sp                                ; $5396: $08 $06 $09
    add hl, bc                                    ; $5399: $09
    add hl, bc                                    ; $539a: $09
    dec c                                         ; $539b: $0d
    dec bc                                        ; $539c: $0b
    add hl, bc                                    ; $539d: $09
    add hl, bc                                    ; $539e: $09
    add hl, bc                                    ; $539f: $09
    ld [$0906], sp                                ; $53a0: $08 $06 $09
    add hl, bc                                    ; $53a3: $09
    dec c                                         ; $53a4: $0d
    inc b                                         ; $53a5: $04
    inc bc                                        ; $53a6: $03
    dec bc                                        ; $53a7: $0b
    add hl, bc                                    ; $53a8: $09
    add hl, bc                                    ; $53a9: $09
    ld [$0703], sp                                ; $53aa: $08 $03 $07
    rlca                                          ; $53ad: $07
    inc b                                         ; $53ae: $04
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    inc bc                                        ; $53b1: $03
    rlca                                          ; $53b2: $07
    rlca                                          ; $53b3: $07
    inc b                                         ; $53b4: $04
    add c                                         ; $53b5: $81
    add [hl]                                      ; $53b6: $86
    dec [hl]                                      ; $53b7: $35
    ld h, $75                                     ; $53b8: $26 $75
    ld de, $3576                                  ; $53ba: $11 $76 $35
    ld h, d                                       ; $53bd: $62
    ld b, c                                       ; $53be: $41
    ld b, l                                       ; $53bf: $45
    ld [hl], d                                    ; $53c0: $72
    ld [hl+], a                                   ; $53c1: $22
    ld h, e                                       ; $53c2: $63
    rst RST_38                                    ; $53c3: $ff
    ld h, d                                       ; $53c4: $62
    ld b, l                                       ; $53c5: $45
    ld [hl-], a                                   ; $53c6: $32
    ld d, $73                                     ; $53c7: $16 $73
    ld de, $4653                                  ; $53c9: $11 $53 $46
    inc hl                                        ; $53cc: $23
    inc d                                         ; $53cd: $14
    inc sp                                        ; $53ce: $33
    ld h, e                                       ; $53cf: $63
    ld d, [hl]                                    ; $53d0: $56
    ld de, $8246                                  ; $53d1: $11 $46 $82
    ld h, e                                       ; $53d4: $63
    ld h, h                                       ; $53d5: $64
    ld b, c                                       ; $53d6: $41
    dec [hl]                                      ; $53d7: $35
    ld b, [hl]                                    ; $53d8: $46
    inc h                                         ; $53d9: $24
    ld [hl], e                                    ; $53da: $73
    ld h, c                                       ; $53db: $61
    ld h, l                                       ; $53dc: $65
    inc [hl]                                      ; $53dd: $34
    ld d, l                                       ; $53de: $55
    ld h, e                                       ; $53df: $63
    ld [de], a                                    ; $53e0: $12
    ld b, h                                       ; $53e1: $44
    dec d                                         ; $53e2: $15
    add d                                         ; $53e3: $82
    ld [de], a                                    ; $53e4: $12
    ld h, [hl]                                    ; $53e5: $66
    add c                                         ; $53e6: $81
    ld [hl], l                                    ; $53e7: $75
    ld [de], a                                    ; $53e8: $12
    ld d, $11                                     ; $53e9: $16 $11
    ld [hl], c                                    ; $53eb: $71
    ld d, e                                       ; $53ec: $53
    inc sp                                        ; $53ed: $33
    ld [de], a                                    ; $53ee: $12
    ld d, $72                                     ; $53ef: $16 $72
    ld hl, $5234                                  ; $53f1: $21 $34 $52
    dec d                                         ; $53f4: $15
    dec [hl]                                      ; $53f5: $35
    ld [hl+], a                                   ; $53f6: $22
    ld [hl], l                                    ; $53f7: $75
    ld [hl], d                                    ; $53f8: $72
    ld b, h                                       ; $53f9: $44
    ld d, e                                       ; $53fa: $53
    ld d, e                                       ; $53fb: $53
    ld [hl], l                                    ; $53fc: $75
    ld sp, $4361                                  ; $53fd: $31 $61 $43
    ld d, e                                       ; $5400: $53
    inc sp                                        ; $5401: $33
    ld [hl], e                                    ; $5402: $73
    dec d                                         ; $5403: $15
    ld h, h                                       ; $5404: $64
    inc d                                         ; $5405: $14
    ld h, e                                       ; $5406: $63
    ld [hl-], a                                   ; $5407: $32
    ld d, [hl]                                    ; $5408: $56
    inc [hl]                                      ; $5409: $34
    inc sp                                        ; $540a: $33
    ld [hl], c                                    ; $540b: $71
    ld h, l                                       ; $540c: $65
    ld h, e                                       ; $540d: $63
    ld b, l                                       ; $540e: $45
    ld [hl], $63                                  ; $540f: $36 $63
    ld h, [hl]                                    ; $5411: $66
    inc sp                                        ; $5412: $33
    inc [hl]                                      ; $5413: $34
    ld d, h                                       ; $5414: $54
    ld [hl], $66                                  ; $5415: $36 $66
    add e                                         ; $5417: $83
    ld [hl], h                                    ; $5418: $74
    ld b, e                                       ; $5419: $43
    add [hl]                                      ; $541a: $86
    ld b, h                                       ; $541b: $44
    ld h, e                                       ; $541c: $63
    ld d, $44                                     ; $541d: $16 $44
    ld [hl+], a                                   ; $541f: $22
    ld d, e                                       ; $5420: $53
    dec h                                         ; $5421: $25
    ld [hl], l                                    ; $5422: $75
    inc [hl]                                      ; $5423: $34
    ld d, e                                       ; $5424: $53
    inc hl                                        ; $5425: $23
    inc de                                        ; $5426: $13
    ld d, [hl]                                    ; $5427: $56
    dec h                                         ; $5428: $25
    ld h, h                                       ; $5429: $64
    ld d, h                                       ; $542a: $54
    ld d, $86                                     ; $542b: $16 $86
    ld [hl-], a                                   ; $542d: $32
    ld [hl], l                                    ; $542e: $75
    ld [hl], e                                    ; $542f: $73
    ld d, $45                                     ; $5430: $16 $45
    ld b, h                                       ; $5432: $44
    ld [hl], c                                    ; $5433: $71
    inc sp                                        ; $5434: $33
    add c                                         ; $5435: $81
    ld d, $25                                     ; $5436: $16 $25
    ld [hl+], a                                   ; $5438: $22
    ld [de], a                                    ; $5439: $12
    ld [hl], l                                    ; $543a: $75
    ld [hl], d                                    ; $543b: $72
    ld b, [hl]                                    ; $543c: $46
    ld h, d                                       ; $543d: $62
    ld b, h                                       ; $543e: $44
    ld d, l                                       ; $543f: $55
    ld [hl-], a                                   ; $5440: $32
    ld b, l                                       ; $5441: $45
    ld [hl], d                                    ; $5442: $72
    ld h, d                                       ; $5443: $62
    dec [hl]                                      ; $5444: $35
    ld [hl], l                                    ; $5445: $75
    ld b, [hl]                                    ; $5446: $46
    ld b, e                                       ; $5447: $43
    ld d, d                                       ; $5448: $52
    ld sp, $1355                                  ; $5449: $31 $55 $13
    ld h, $53                                     ; $544c: $26 $53
    ld b, h                                       ; $544e: $44
    ld d, l                                       ; $544f: $55
    ld [hl], l                                    ; $5450: $75
    dec [hl]                                      ; $5451: $35
    ld [hl], c                                    ; $5452: $71
    ld h, $76                                     ; $5453: $26 $76
    ld d, $18                                     ; $5455: $16 $18
    ld h, $28                                     ; $5457: $26 $28
    dec h                                         ; $5459: $25
    ld b, l                                       ; $545a: $45
    dec h                                         ; $545b: $25
    jr jr_003_5493                                ; $545c: $18 $35

    dec [hl]                                      ; $545e: $35
    dec [hl]                                      ; $545f: $35
    ld b, l                                       ; $5460: $45
    dec h                                         ; $5461: $25
    daa                                           ; $5462: $27
    inc [hl]                                      ; $5463: $34
    ld [hl], $16                                  ; $5464: $36 $16
    dec d                                         ; $5466: $15
    inc [hl]                                      ; $5467: $34
    daa                                           ; $5468: $27
    inc [hl]                                      ; $5469: $34
    ld d, $25                                     ; $546a: $16 $25
    jr jr_003_5493                                ; $546c: $18 $25

    dec h                                         ; $546e: $25
    ld d, $18                                     ; $546f: $16 $18
    ld d, $18                                     ; $5471: $16 $18
    inc [hl]                                      ; $5473: $34
    ld b, l                                       ; $5474: $45
    inc [hl]                                      ; $5475: $34
    ld [hl], $34                                  ; $5476: $36 $34
    ld [hl], $34                                  ; $5478: $36 $34
    ld [hl], $34                                  ; $547a: $36 $34
    ld [hl], $25                                  ; $547c: $36 $25
    ld [hl], $34                                  ; $547e: $36 $34
    ld b, l                                       ; $5480: $45
    dec d                                         ; $5481: $15
    jr z, jr_003_54b9                             ; $5482: $28 $35

    ld [hl], $25                                  ; $5484: $36 $25
    daa                                           ; $5486: $27
    dec h                                         ; $5487: $25
    ld b, l                                       ; $5488: $45
    dec h                                         ; $5489: $25
    jr jr_003_54c0                                ; $548a: $18 $34

    ld b, l                                       ; $548c: $45
    inc [hl]                                      ; $548d: $34
    ld b, l                                       ; $548e: $45
    ld d, $36                                     ; $548f: $16 $36
    inc [hl]                                      ; $5491: $34
    ld b, l                                       ; $5492: $45

jr_003_5493:
    ld d, $45                                     ; $5493: $16 $45
    inc [hl]                                      ; $5495: $34
    ld b, l                                       ; $5496: $45
    inc [hl]                                      ; $5497: $34
    dec h                                         ; $5498: $25
    dec h                                         ; $5499: $25
    ld b, l                                       ; $549a: $45
    dec h                                         ; $549b: $25
    ld [hl], $25                                  ; $549c: $36 $25
    ld b, l                                       ; $549e: $45
    dec h                                         ; $549f: $25
    daa                                           ; $54a0: $27
    dec h                                         ; $54a1: $25
    ld b, l                                       ; $54a2: $45
    inc [hl]                                      ; $54a3: $34
    ld b, l                                       ; $54a4: $45
    inc [hl]                                      ; $54a5: $34
    ld b, l                                       ; $54a6: $45
    dec h                                         ; $54a7: $25
    daa                                           ; $54a8: $27
    dec h                                         ; $54a9: $25
    daa                                           ; $54aa: $27
    inc [hl]                                      ; $54ab: $34
    ld b, l                                       ; $54ac: $45
    inc [hl]                                      ; $54ad: $34
    ld b, l                                       ; $54ae: $45
    inc [hl]                                      ; $54af: $34
    ld b, l                                       ; $54b0: $45
    dec h                                         ; $54b1: $25
    ld [hl], $35                                  ; $54b2: $36 $35
    daa                                           ; $54b4: $27
    dec h                                         ; $54b5: $25
    daa                                           ; $54b6: $27
    dec h                                         ; $54b7: $25
    ld b, l                                       ; $54b8: $45

jr_003_54b9:
    dec h                                         ; $54b9: $25
    daa                                           ; $54ba: $27
    dec h                                         ; $54bb: $25
    ld b, l                                       ; $54bc: $45
    inc [hl]                                      ; $54bd: $34
    ld [hl], $34                                  ; $54be: $36 $34

jr_003_54c0:
    ld b, l                                       ; $54c0: $45
    dec h                                         ; $54c1: $25
    dec h                                         ; $54c2: $25
    inc [hl]                                      ; $54c3: $34
    ld b, l                                       ; $54c4: $45
    dec h                                         ; $54c5: $25
    daa                                           ; $54c6: $27
    dec [hl]                                      ; $54c7: $35
    ld b, l                                       ; $54c8: $45
    dec h                                         ; $54c9: $25
    daa                                           ; $54ca: $27
    dec h                                         ; $54cb: $25
    ld [hl], $25                                  ; $54cc: $36 $25
    ld b, l                                       ; $54ce: $45
    inc [hl]                                      ; $54cf: $34
    ld b, l                                       ; $54d0: $45
    dec h                                         ; $54d1: $25
    ld b, l                                       ; $54d2: $45
    dec h                                         ; $54d3: $25
    daa                                           ; $54d4: $27
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    nop                                           ; $54d9: $00
    nop                                           ; $54da: $00
    nop                                           ; $54db: $00
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    nop                                           ; $54e7: $00
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    nop                                           ; $54ec: $00
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    ld bc, $0002                                  ; $54f5: $01 $02 $00
    nop                                           ; $54f8: $00
    dec b                                         ; $54f9: $05
    nop                                           ; $54fa: $00
    inc b                                         ; $54fb: $04
    inc bc                                        ; $54fc: $03
    dec b                                         ; $54fd: $05
    nop                                           ; $54fe: $00
    inc b                                         ; $54ff: $04
    inc bc                                        ; $5500: $03
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
    nop                                           ; $550d: $00
    nop                                           ; $550e: $00
    nop                                           ; $550f: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    ld b, $07                                     ; $5515: $06 $07
    ld [$0509], sp                                ; $5517: $08 $09 $05
    nop                                           ; $551a: $00
    inc b                                         ; $551b: $04
    inc bc                                        ; $551c: $03
    ld b, $07                                     ; $551d: $06 $07
    ld [$0009], sp                                ; $551f: $08 $09 $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    ld b, $07                                     ; $5525: $06 $07
    ld [$0609], sp                                ; $5527: $08 $09 $06
    rlca                                          ; $552a: $07
    ld [$0009], sp                                ; $552b: $08 $09 $00
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    nop                                           ; $553b: $00
    nop                                           ; $553c: $00
    ld b, $07                                     ; $553d: $06 $07
    ld [$0009], sp                                ; $553f: $08 $09 $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    ld b, $07                                     ; $5545: $06 $07
    ld [$0009], sp                                ; $5547: $08 $09 $00
    nop                                           ; $554a: $00
    nop                                           ; $554b: $00
    nop                                           ; $554c: $00
    ld b, $07                                     ; $554d: $06 $07
    ld [$0009], sp                                ; $554f: $08 $09 $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00

Call_003_5555:
    ld b, $07                                     ; $5555: $06 $07
    ld [$0009], sp                                ; $5557: $08 $09 $00
    nop                                           ; $555a: $00
    nop                                           ; $555b: $00
    nop                                           ; $555c: $00
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    nop                                           ; $5560: $00
    ld b, $07                                     ; $5561: $06 $07
    ld [$0009], sp                                ; $5563: $08 $09 $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    nop                                           ; $556a: $00
    nop                                           ; $556b: $00
    nop                                           ; $556c: $00
    nop                                           ; $556d: $00
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557a: $00
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    nop                                           ; $557d: $00
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    ld b, $07                                     ; $5589: $06 $07
    ld [$0609], sp                                ; $558b: $08 $09 $06
    rlca                                          ; $558e: $07
    ld [$0009], sp                                ; $558f: $08 $09 $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    ld bc, $0002                                  ; $5599: $01 $02 $00
    nop                                           ; $559c: $00
    dec b                                         ; $559d: $05
    nop                                           ; $559e: $00
    inc b                                         ; $559f: $04
    inc bc                                        ; $55a0: $03
    ld bc, $0002                                  ; $55a1: $01 $02 $00
    nop                                           ; $55a4: $00
    dec b                                         ; $55a5: $05
    nop                                           ; $55a6: $00
    inc b                                         ; $55a7: $04
    inc bc                                        ; $55a8: $03
    ld bc, $0002                                  ; $55a9: $01 $02 $00
    nop                                           ; $55ac: $00
    ld bc, $0002                                  ; $55ad: $01 $02 $00
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    dec b                                         ; $55b5: $05
    nop                                           ; $55b6: $00
    inc b                                         ; $55b7: $04
    inc bc                                        ; $55b8: $03
    nop                                           ; $55b9: $00
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    nop                                           ; $55bf: $00
    nop                                           ; $55c0: $00
    dec b                                         ; $55c1: $05
    nop                                           ; $55c2: $00
    inc b                                         ; $55c3: $04
    inc bc                                        ; $55c4: $03
    nop                                           ; $55c5: $00
    nop                                           ; $55c6: $00
    nop                                           ; $55c7: $00
    nop                                           ; $55c8: $00
    nop                                           ; $55c9: $00
    nop                                           ; $55ca: $00
    nop                                           ; $55cb: $00
    nop                                           ; $55cc: $00
    ld bc, $0002                                  ; $55cd: $01 $02 $00
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    nop                                           ; $55d3: $00
    nop                                           ; $55d4: $00
    or l                                          ; $55d5: $b5
    ld c, c                                       ; $55d6: $49
    dec b                                         ; $55d7: $05
    ld c, d                                       ; $55d8: $4a
    ld d, l                                       ; $55d9: $55
    ld c, d                                       ; $55da: $4a
    and l                                         ; $55db: $a5
    ld c, d                                       ; $55dc: $4a
    push af                                       ; $55dd: $f5
    ld c, d                                       ; $55de: $4a
    ld b, l                                       ; $55df: $45
    ld c, e                                       ; $55e0: $4b
    sub l                                         ; $55e1: $95
    ld c, e                                       ; $55e2: $4b
    push hl                                       ; $55e3: $e5
    ld c, e                                       ; $55e4: $4b
    dec [hl]                                      ; $55e5: $35
    ld c, h                                       ; $55e6: $4c
    add l                                         ; $55e7: $85
    ld c, h                                       ; $55e8: $4c
    push de                                       ; $55e9: $d5
    ld c, h                                       ; $55ea: $4c
    dec h                                         ; $55eb: $25
    ld c, l                                       ; $55ec: $4d
    ld [hl], l                                    ; $55ed: $75
    ld c, l                                       ; $55ee: $4d
    push bc                                       ; $55ef: $c5
    ld c, l                                       ; $55f0: $4d
    dec d                                         ; $55f1: $15
    ld c, [hl]                                    ; $55f2: $4e
    ld h, l                                       ; $55f3: $65
    ld c, [hl]                                    ; $55f4: $4e
    or l                                          ; $55f5: $b5
    ld c, [hl]                                    ; $55f6: $4e
    dec b                                         ; $55f7: $05
    ld c, a                                       ; $55f8: $4f
    ld d, l                                       ; $55f9: $55
    ld c, a                                       ; $55fa: $4f
    and l                                         ; $55fb: $a5
    ld c, a                                       ; $55fc: $4f
    push af                                       ; $55fd: $f5
    ld c, a                                       ; $55fe: $4f
    ld b, l                                       ; $55ff: $45
    ld d, b                                       ; $5600: $50
    sub l                                         ; $5601: $95
    ld d, b                                       ; $5602: $50
    push hl                                       ; $5603: $e5
    ld d, b                                       ; $5604: $50
    dec [hl]                                      ; $5605: $35
    ld d, c                                       ; $5606: $51
    add l                                         ; $5607: $85
    ld d, c                                       ; $5608: $51
    push de                                       ; $5609: $d5
    ld d, c                                       ; $560a: $51
    dec h                                         ; $560b: $25
    ld d, d                                       ; $560c: $52
    ld [hl], l                                    ; $560d: $75
    ld d, d                                       ; $560e: $52
    push bc                                       ; $560f: $c5
    ld d, d                                       ; $5610: $52
    dec d                                         ; $5611: $15
    ld d, e                                       ; $5612: $53
    ld h, l                                       ; $5613: $65
    ld d, e                                       ; $5614: $53
    push de                                       ; $5615: $d5
    ld d, [hl]                                    ; $5616: $56
    dec h                                         ; $5617: $25
    ld d, a                                       ; $5618: $57
    ld [hl], l                                    ; $5619: $75
    ld d, a                                       ; $561a: $57
    push bc                                       ; $561b: $c5
    ld d, a                                       ; $561c: $57
    dec d                                         ; $561d: $15
    ld e, b                                       ; $561e: $58
    ld h, l                                       ; $561f: $65
    ld e, b                                       ; $5620: $58
    or l                                          ; $5621: $b5
    ld e, b                                       ; $5622: $58
    dec b                                         ; $5623: $05
    ld e, c                                       ; $5624: $59
    ld d, l                                       ; $5625: $55
    ld e, c                                       ; $5626: $59
    and l                                         ; $5627: $a5
    ld e, c                                       ; $5628: $59
    push af                                       ; $5629: $f5
    ld e, c                                       ; $562a: $59
    ld b, l                                       ; $562b: $45
    ld e, d                                       ; $562c: $5a
    sub l                                         ; $562d: $95
    ld e, d                                       ; $562e: $5a
    push hl                                       ; $562f: $e5
    ld e, d                                       ; $5630: $5a
    dec [hl]                                      ; $5631: $35
    ld e, e                                       ; $5632: $5b
    add l                                         ; $5633: $85
    ld e, e                                       ; $5634: $5b
    push de                                       ; $5635: $d5
    ld e, e                                       ; $5636: $5b
    dec h                                         ; $5637: $25
    ld e, h                                       ; $5638: $5c
    ld [hl], l                                    ; $5639: $75
    ld e, h                                       ; $563a: $5c
    push bc                                       ; $563b: $c5
    ld e, h                                       ; $563c: $5c
    dec d                                         ; $563d: $15
    ld e, l                                       ; $563e: $5d
    ld h, l                                       ; $563f: $65
    ld e, l                                       ; $5640: $5d
    or l                                          ; $5641: $b5
    ld e, l                                       ; $5642: $5d
    dec b                                         ; $5643: $05
    ld e, [hl]                                    ; $5644: $5e
    ld d, l                                       ; $5645: $55
    ld e, [hl]                                    ; $5646: $5e
    and l                                         ; $5647: $a5
    ld e, [hl]                                    ; $5648: $5e
    push af                                       ; $5649: $f5
    ld e, [hl]                                    ; $564a: $5e
    ld b, l                                       ; $564b: $45
    ld e, a                                       ; $564c: $5f
    sub l                                         ; $564d: $95
    ld e, a                                       ; $564e: $5f
    push hl                                       ; $564f: $e5
    ld e, a                                       ; $5650: $5f
    dec [hl]                                      ; $5651: $35
    ld h, b                                       ; $5652: $60
    add l                                         ; $5653: $85
    ld h, b                                       ; $5654: $60
    or l                                          ; $5655: $b5
    ld d, e                                       ; $5656: $53
    cp d                                          ; $5657: $ba
    ld d, e                                       ; $5658: $53
    cp a                                          ; $5659: $bf
    ld d, e                                       ; $565a: $53
    call nz, $c953                                ; $565b: $c4 $53 $c9
    ld d, e                                       ; $565e: $53
    adc $53                                       ; $565f: $ce $53
    db $d3                                        ; $5661: $d3
    ld d, e                                       ; $5662: $53
    ret c                                         ; $5663: $d8

    ld d, e                                       ; $5664: $53
    db $dd                                        ; $5665: $dd
    ld d, e                                       ; $5666: $53
    ldh [c], a                                    ; $5667: $e2
    ld d, e                                       ; $5668: $53
    rst RST_20                                    ; $5669: $e7
    ld d, e                                       ; $566a: $53
    db $ec                                        ; $566b: $ec
    ld d, e                                       ; $566c: $53
    pop af                                        ; $566d: $f1
    ld d, e                                       ; $566e: $53
    or $53                                        ; $566f: $f6 $53
    ei                                            ; $5671: $fb
    ld d, e                                       ; $5672: $53
    nop                                           ; $5673: $00
    ld d, h                                       ; $5674: $54
    dec b                                         ; $5675: $05
    ld d, h                                       ; $5676: $54
    ld a, [bc]                                    ; $5677: $0a
    ld d, h                                       ; $5678: $54
    rrca                                          ; $5679: $0f
    ld d, h                                       ; $567a: $54
    inc d                                         ; $567b: $14
    ld d, h                                       ; $567c: $54
    add hl, de                                    ; $567d: $19
    ld d, h                                       ; $567e: $54
    ld e, $54                                     ; $567f: $1e $54
    inc hl                                        ; $5681: $23
    ld d, h                                       ; $5682: $54
    jr z, jr_003_56d9                             ; $5683: $28 $54

    dec l                                         ; $5685: $2d
    ld d, h                                       ; $5686: $54
    ld [hl-], a                                   ; $5687: $32
    ld d, h                                       ; $5688: $54
    scf                                           ; $5689: $37
    ld d, h                                       ; $568a: $54
    inc a                                         ; $568b: $3c
    ld d, h                                       ; $568c: $54
    ld b, c                                       ; $568d: $41
    ld d, h                                       ; $568e: $54
    ld b, [hl]                                    ; $568f: $46
    ld d, h                                       ; $5690: $54
    ld c, e                                       ; $5691: $4b
    ld d, h                                       ; $5692: $54
    ld d, b                                       ; $5693: $50
    ld d, h                                       ; $5694: $54
    push de                                       ; $5695: $d5
    ld h, b                                       ; $5696: $60
    jp c, $df60                                   ; $5697: $da $60 $df

    ld h, b                                       ; $569a: $60
    db $e4                                        ; $569b: $e4
    ld h, b                                       ; $569c: $60
    jp hl                                         ; $569d: $e9


    ld h, b                                       ; $569e: $60
    xor $60                                       ; $569f: $ee $60
    di                                            ; $56a1: $f3
    ld h, b                                       ; $56a2: $60
    ld hl, sp+$60                                 ; $56a3: $f8 $60
    db $fd                                        ; $56a5: $fd
    ld h, b                                       ; $56a6: $60
    ld [bc], a                                    ; $56a7: $02
    ld h, c                                       ; $56a8: $61
    rlca                                          ; $56a9: $07
    ld h, c                                       ; $56aa: $61
    inc c                                         ; $56ab: $0c
    ld h, c                                       ; $56ac: $61
    ld de, $1661                                  ; $56ad: $11 $61 $16
    ld h, c                                       ; $56b0: $61
    dec de                                        ; $56b1: $1b
    ld h, c                                       ; $56b2: $61
    jr nz, jr_003_5716                            ; $56b3: $20 $61

    dec h                                         ; $56b5: $25
    ld h, c                                       ; $56b6: $61
    ld a, [hl+]                                   ; $56b7: $2a
    ld h, c                                       ; $56b8: $61
    cpl                                           ; $56b9: $2f
    ld h, c                                       ; $56ba: $61
    inc [hl]                                      ; $56bb: $34
    ld h, c                                       ; $56bc: $61
    add hl, sp                                    ; $56bd: $39
    ld h, c                                       ; $56be: $61
    ld a, $61                                     ; $56bf: $3e $61
    ld b, e                                       ; $56c1: $43
    ld h, c                                       ; $56c2: $61
    ld c, b                                       ; $56c3: $48
    ld h, c                                       ; $56c4: $61
    ld c, l                                       ; $56c5: $4d
    ld h, c                                       ; $56c6: $61
    ld d, d                                       ; $56c7: $52
    ld h, c                                       ; $56c8: $61
    ld d, a                                       ; $56c9: $57
    ld h, c                                       ; $56ca: $61
    ld e, h                                       ; $56cb: $5c
    ld h, c                                       ; $56cc: $61
    ld h, c                                       ; $56cd: $61
    ld h, c                                       ; $56ce: $61
    ld h, [hl]                                    ; $56cf: $66
    ld h, c                                       ; $56d0: $61
    ld l, e                                       ; $56d1: $6b
    ld h, c                                       ; $56d2: $61
    ld [hl], b                                    ; $56d3: $70
    ld h, c                                       ; $56d4: $61
    nop                                           ; $56d5: $00
    nop                                           ; $56d6: $00
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00

jr_003_56d9:
    nop                                           ; $56d9: $00
    nop                                           ; $56da: $00
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    nop                                           ; $56dd: $00
    nop                                           ; $56de: $00
    nop                                           ; $56df: $00
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    ld bc, $0505                                  ; $56e2: $01 $05 $05
    ld [bc], a                                    ; $56e5: $02
    nop                                           ; $56e6: $00
    nop                                           ; $56e7: $00
    nop                                           ; $56e8: $00
    ld bc, $1805                                  ; $56e9: $01 $05 $18
    ld a, [bc]                                    ; $56ec: $0a
    add hl, bc                                    ; $56ed: $09
    add hl, bc                                    ; $56ee: $09
    inc c                                         ; $56ef: $0c
    jr jr_003_56f7                                ; $56f0: $18 $05

    ld [bc], a                                    ; $56f2: $02
    ld b, $09                                     ; $56f3: $06 $09
    add hl, bc                                    ; $56f5: $09
    add hl, bc                                    ; $56f6: $09

jr_003_56f7:
    add hl, bc                                    ; $56f7: $09
    add hl, bc                                    ; $56f8: $09
    add hl, bc                                    ; $56f9: $09
    add hl, bc                                    ; $56fa: $09
    add hl, bc                                    ; $56fb: $09
    ld [$0906], sp                                ; $56fc: $08 $06 $09
    add hl, bc                                    ; $56ff: $09
    add hl, bc                                    ; $5700: $09
    add hl, bc                                    ; $5701: $09
    add hl, bc                                    ; $5702: $09
    add hl, bc                                    ; $5703: $09
    add hl, bc                                    ; $5704: $09
    add hl, bc                                    ; $5705: $09
    ld [$0703], sp                                ; $5706: $08 $03 $07
    ld a, [hl+]                                   ; $5709: $2a
    rlca                                          ; $570a: $07
    rlca                                          ; $570b: $07
    rlca                                          ; $570c: $07
    rlca                                          ; $570d: $07
    ld a, [hl+]                                   ; $570e: $2a
    rlca                                          ; $570f: $07
    inc b                                         ; $5710: $04
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00

jr_003_5716:
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    ld bc, $0505                                  ; $5725: $01 $05 $05
    dec b                                         ; $5728: $05
    dec b                                         ; $5729: $05
    dec b                                         ; $572a: $05
    ld [bc], a                                    ; $572b: $02
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    ld b, $1f                                     ; $572f: $06 $1f
    add hl, bc                                    ; $5731: $09
    add hl, bc                                    ; $5732: $09
    add hl, bc                                    ; $5733: $09
    add hl, bc                                    ; $5734: $09
    inc c                                         ; $5735: $0c
    ld [bc], a                                    ; $5736: $02
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    ld b, $09                                     ; $5739: $06 $09
    add hl, bc                                    ; $573b: $09
    add hl, bc                                    ; $573c: $09
    add hl, bc                                    ; $573d: $09
    add hl, bc                                    ; $573e: $09
    add hl, bc                                    ; $573f: $09
    inc c                                         ; $5740: $0c
    ld [bc], a                                    ; $5741: $02
    nop                                           ; $5742: $00
    inc bc                                        ; $5743: $03
    dec bc                                        ; $5744: $0b
    add hl, bc                                    ; $5745: $09
    add hl, bc                                    ; $5746: $09
    add hl, bc                                    ; $5747: $09
    add hl, bc                                    ; $5748: $09
    add hl, bc                                    ; $5749: $09
    add hl, bc                                    ; $574a: $09
    ld [$0100], sp                                ; $574b: $08 $00 $01
    ld a, [bc]                                    ; $574e: $0a
    add hl, bc                                    ; $574f: $09
    add hl, bc                                    ; $5750: $09
    add hl, bc                                    ; $5751: $09
    add hl, bc                                    ; $5752: $09
    add hl, bc                                    ; $5753: $09
    add hl, bc                                    ; $5754: $09
    ld [$0600], sp                                ; $5755: $08 $00 $06
    add hl, bc                                    ; $5758: $09
    add hl, bc                                    ; $5759: $09
    add hl, bc                                    ; $575a: $09
    add hl, bc                                    ; $575b: $09
    add hl, bc                                    ; $575c: $09
    add hl, bc                                    ; $575d: $09
    dec c                                         ; $575e: $0d
    inc b                                         ; $575f: $04
    nop                                           ; $5760: $00
    ld b, $09                                     ; $5761: $06 $09
    add hl, bc                                    ; $5763: $09
    add hl, bc                                    ; $5764: $09
    add hl, bc                                    ; $5765: $09
    add hl, bc                                    ; $5766: $09
    dec c                                         ; $5767: $0d
    inc b                                         ; $5768: $04
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    inc bc                                        ; $576b: $03
    rlca                                          ; $576c: $07
    rlca                                          ; $576d: $07
    rlca                                          ; $576e: $07
    rlca                                          ; $576f: $07
    rlca                                          ; $5770: $07
    inc b                                         ; $5771: $04
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    ld bc, $0505                                  ; $5775: $01 $05 $05
    dec b                                         ; $5778: $05
    dec b                                         ; $5779: $05
    dec b                                         ; $577a: $05
    dec b                                         ; $577b: $05
    dec b                                         ; $577c: $05
    dec b                                         ; $577d: $05
    ld [bc], a                                    ; $577e: $02
    ld b, $09                                     ; $577f: $06 $09
    add hl, bc                                    ; $5781: $09
    add hl, bc                                    ; $5782: $09
    add hl, bc                                    ; $5783: $09
    add hl, bc                                    ; $5784: $09
    add hl, bc                                    ; $5785: $09
    add hl, bc                                    ; $5786: $09
    add hl, bc                                    ; $5787: $09
    ld [$0906], sp                                ; $5788: $08 $06 $09
    ld e, $1e                                     ; $578b: $1e $1e
    rra                                           ; $578d: $1f
    ld e, $1e                                     ; $578e: $1e $1e
    ld e, $09                                     ; $5790: $1e $09
    ld [$0906], sp                                ; $5792: $08 $06 $09
    ld e, $09                                     ; $5795: $1e $09
    add hl, bc                                    ; $5797: $09
    add hl, bc                                    ; $5798: $09
    add hl, bc                                    ; $5799: $09
    ld e, $09                                     ; $579a: $1e $09
    ld [$0906], sp                                ; $579c: $08 $06 $09
    ld e, $09                                     ; $579f: $1e $09
    add hl, bc                                    ; $57a1: $09
    add hl, bc                                    ; $57a2: $09
    add hl, bc                                    ; $57a3: $09
    ld e, $09                                     ; $57a4: $1e $09
    ld [$0906], sp                                ; $57a6: $08 $06 $09
    ld e, $09                                     ; $57a9: $1e $09
    add hl, bc                                    ; $57ab: $09
    add hl, bc                                    ; $57ac: $09
    add hl, bc                                    ; $57ad: $09
    ld e, $09                                     ; $57ae: $1e $09
    ld [$0906], sp                                ; $57b0: $08 $06 $09
    add hl, bc                                    ; $57b3: $09
    inc hl                                        ; $57b4: $23
    add hl, bc                                    ; $57b5: $09
    add hl, bc                                    ; $57b6: $09
    inc hl                                        ; $57b7: $23
    add hl, bc                                    ; $57b8: $09
    add hl, bc                                    ; $57b9: $09
    ld [$0703], sp                                ; $57ba: $08 $03 $07
    rlca                                          ; $57bd: $07
    rlca                                          ; $57be: $07
    rlca                                          ; $57bf: $07
    rlca                                          ; $57c0: $07
    rlca                                          ; $57c1: $07
    rlca                                          ; $57c2: $07
    rlca                                          ; $57c3: $07
    inc b                                         ; $57c4: $04
    nop                                           ; $57c5: $00
    ld bc, $1805                                  ; $57c6: $01 $05 $18
    dec b                                         ; $57c9: $05
    dec b                                         ; $57ca: $05
    jr jr_003_57d2                                ; $57cb: $18 $05

    ld [bc], a                                    ; $57cd: $02
    nop                                           ; $57ce: $00
    ld bc, $090a                                  ; $57cf: $01 $0a $09

jr_003_57d2:
    add hl, bc                                    ; $57d2: $09
    add hl, bc                                    ; $57d3: $09
    add hl, bc                                    ; $57d4: $09
    add hl, bc                                    ; $57d5: $09
    add hl, bc                                    ; $57d6: $09
    inc c                                         ; $57d7: $0c
    ld [bc], a                                    ; $57d8: $02
    ld b, $09                                     ; $57d9: $06 $09
    add hl, bc                                    ; $57db: $09
    add hl, bc                                    ; $57dc: $09
    add hl, bc                                    ; $57dd: $09
    add hl, bc                                    ; $57de: $09
    add hl, bc                                    ; $57df: $09
    add hl, bc                                    ; $57e0: $09
    add hl, bc                                    ; $57e1: $09
    ld [$0906], sp                                ; $57e2: $08 $06 $09
    add hl, bc                                    ; $57e5: $09
    add hl, bc                                    ; $57e6: $09
    add hl, bc                                    ; $57e7: $09
    add hl, bc                                    ; $57e8: $09
    add hl, bc                                    ; $57e9: $09
    add hl, bc                                    ; $57ea: $09
    add hl, bc                                    ; $57eb: $09
    ld [$0906], sp                                ; $57ec: $08 $06 $09
    add hl, bc                                    ; $57ef: $09
    add hl, bc                                    ; $57f0: $09
    add hl, bc                                    ; $57f1: $09
    add hl, bc                                    ; $57f2: $09
    add hl, bc                                    ; $57f3: $09
    add hl, bc                                    ; $57f4: $09
    add hl, bc                                    ; $57f5: $09
    ld [$0906], sp                                ; $57f6: $08 $06 $09
    add hl, bc                                    ; $57f9: $09
    add hl, bc                                    ; $57fa: $09
    add hl, bc                                    ; $57fb: $09
    add hl, bc                                    ; $57fc: $09
    add hl, bc                                    ; $57fd: $09
    add hl, bc                                    ; $57fe: $09
    add hl, bc                                    ; $57ff: $09
    ld [$0b03], sp                                ; $5800: $08 $03 $0b
    add hl, bc                                    ; $5803: $09
    add hl, bc                                    ; $5804: $09
    add hl, bc                                    ; $5805: $09
    add hl, bc                                    ; $5806: $09
    add hl, bc                                    ; $5807: $09
    add hl, bc                                    ; $5808: $09
    dec c                                         ; $5809: $0d
    inc b                                         ; $580a: $04
    nop                                           ; $580b: $00
    inc bc                                        ; $580c: $03
    rlca                                          ; $580d: $07
    ld a, [hl+]                                   ; $580e: $2a
    rlca                                          ; $580f: $07
    rlca                                          ; $5810: $07
    ld a, [hl+]                                   ; $5811: $2a
    rlca                                          ; $5812: $07
    inc b                                         ; $5813: $04
    nop                                           ; $5814: $00
    ld bc, $0505                                  ; $5815: $01 $05 $05
    dec b                                         ; $5818: $05
    dec b                                         ; $5819: $05
    dec b                                         ; $581a: $05
    ld [bc], a                                    ; $581b: $02
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    ld b, $1e                                     ; $581f: $06 $1e
    add hl, bc                                    ; $5821: $09
    add hl, bc                                    ; $5822: $09
    add hl, bc                                    ; $5823: $09
    add hl, bc                                    ; $5824: $09
    inc c                                         ; $5825: $0c
    dec b                                         ; $5826: $05
    dec b                                         ; $5827: $05
    ld [bc], a                                    ; $5828: $02
    ld b, $1e                                     ; $5829: $06 $1e
    add hl, bc                                    ; $582b: $09
    ld e, $09                                     ; $582c: $1e $09
    add hl, bc                                    ; $582e: $09
    add hl, bc                                    ; $582f: $09
    add hl, bc                                    ; $5830: $09
    add hl, bc                                    ; $5831: $09
    ld [$1e06], sp                                ; $5832: $08 $06 $1e
    rra                                           ; $5835: $1f
    add hl, bc                                    ; $5836: $09
    add hl, bc                                    ; $5837: $09
    add hl, bc                                    ; $5838: $09
    add hl, bc                                    ; $5839: $09
    add hl, bc                                    ; $583a: $09
    add hl, bc                                    ; $583b: $09
    ld [$1e06], sp                                ; $583c: $08 $06 $1e
    ld e, $09                                     ; $583f: $1e $09
    add hl, bc                                    ; $5841: $09
    add hl, bc                                    ; $5842: $09
    add hl, bc                                    ; $5843: $09
    add hl, bc                                    ; $5844: $09
    add hl, bc                                    ; $5845: $09
    ld [$1e06], sp                                ; $5846: $08 $06 $1e
    add hl, bc                                    ; $5849: $09
    add hl, bc                                    ; $584a: $09
    add hl, bc                                    ; $584b: $09
    add hl, bc                                    ; $584c: $09
    add hl, bc                                    ; $584d: $09
    add hl, bc                                    ; $584e: $09
    add hl, bc                                    ; $584f: $09
    ld [$0906], sp                                ; $5850: $08 $06 $09
    add hl, bc                                    ; $5853: $09
    ld e, $09                                     ; $5854: $1e $09
    add hl, bc                                    ; $5856: $09
    add hl, bc                                    ; $5857: $09
    add hl, bc                                    ; $5858: $09
    dec c                                         ; $5859: $0d
    inc b                                         ; $585a: $04
    inc bc                                        ; $585b: $03
    rlca                                          ; $585c: $07
    rlca                                          ; $585d: $07
    rlca                                          ; $585e: $07
    rlca                                          ; $585f: $07
    rlca                                          ; $5860: $07
    rlca                                          ; $5861: $07
    rlca                                          ; $5862: $07
    inc b                                         ; $5863: $04
    nop                                           ; $5864: $00
    ld bc, $0505                                  ; $5865: $01 $05 $05
    dec b                                         ; $5868: $05
    dec b                                         ; $5869: $05
    dec b                                         ; $586a: $05
    dec b                                         ; $586b: $05
    dec b                                         ; $586c: $05
    dec b                                         ; $586d: $05
    ld [bc], a                                    ; $586e: $02
    ld b, $09                                     ; $586f: $06 $09
    add hl, bc                                    ; $5871: $09
    add hl, bc                                    ; $5872: $09
    add hl, bc                                    ; $5873: $09
    add hl, bc                                    ; $5874: $09
    add hl, bc                                    ; $5875: $09
    add hl, bc                                    ; $5876: $09
    add hl, bc                                    ; $5877: $09
    ld [$0906], sp                                ; $5878: $08 $06 $09
    add hl, bc                                    ; $587b: $09
    dec c                                         ; $587c: $0d
    dec bc                                        ; $587d: $0b
    add hl, bc                                    ; $587e: $09
    add hl, bc                                    ; $587f: $09
    add hl, bc                                    ; $5880: $09
    add hl, bc                                    ; $5881: $09
    ld [$0906], sp                                ; $5882: $08 $06 $09
    add hl, bc                                    ; $5885: $09
    ld [$0906], sp                                ; $5886: $08 $06 $09
    add hl, bc                                    ; $5889: $09
    add hl, bc                                    ; $588a: $09
    add hl, bc                                    ; $588b: $09
    ld [$0906], sp                                ; $588c: $08 $06 $09
    add hl, bc                                    ; $588f: $09
    ld [$0906], sp                                ; $5890: $08 $06 $09
    add hl, bc                                    ; $5893: $09
    add hl, bc                                    ; $5894: $09
    add hl, bc                                    ; $5895: $09
    ld [$0906], sp                                ; $5896: $08 $06 $09
    add hl, bc                                    ; $5899: $09
    inc c                                         ; $589a: $0c
    ld a, [bc]                                    ; $589b: $0a
    add hl, bc                                    ; $589c: $09
    add hl, bc                                    ; $589d: $09
    add hl, bc                                    ; $589e: $09
    add hl, bc                                    ; $589f: $09
    ld [$0906], sp                                ; $58a0: $08 $06 $09
    add hl, bc                                    ; $58a3: $09
    add hl, bc                                    ; $58a4: $09
    add hl, bc                                    ; $58a5: $09
    add hl, bc                                    ; $58a6: $09
    add hl, bc                                    ; $58a7: $09
    add hl, bc                                    ; $58a8: $09
    add hl, bc                                    ; $58a9: $09
    ld [$0703], sp                                ; $58aa: $08 $03 $07
    rlca                                          ; $58ad: $07
    rlca                                          ; $58ae: $07
    rlca                                          ; $58af: $07
    rlca                                          ; $58b0: $07
    rlca                                          ; $58b1: $07
    rlca                                          ; $58b2: $07
    rlca                                          ; $58b3: $07
    inc b                                         ; $58b4: $04
    ld bc, $0505                                  ; $58b5: $01 $05 $05
    dec b                                         ; $58b8: $05
    dec b                                         ; $58b9: $05
    dec b                                         ; $58ba: $05
    dec b                                         ; $58bb: $05
    dec b                                         ; $58bc: $05
    dec b                                         ; $58bd: $05
    ld [bc], a                                    ; $58be: $02
    ld b, $09                                     ; $58bf: $06 $09
    add hl, bc                                    ; $58c1: $09
    ld e, $09                                     ; $58c2: $1e $09
    add hl, bc                                    ; $58c4: $09
    add hl, bc                                    ; $58c5: $09
    ld e, $09                                     ; $58c6: $1e $09
    ld [$0906], sp                                ; $58c8: $08 $06 $09
    add hl, bc                                    ; $58cb: $09
    ld e, $09                                     ; $58cc: $1e $09
    add hl, bc                                    ; $58ce: $09
    add hl, bc                                    ; $58cf: $09
    ld e, $09                                     ; $58d0: $1e $09
    ld [$2306], sp                                ; $58d2: $08 $06 $23
    add hl, bc                                    ; $58d5: $09
    inc hl                                        ; $58d6: $23
    add hl, bc                                    ; $58d7: $09
    inc hl                                        ; $58d8: $23
    add hl, bc                                    ; $58d9: $09
    inc hl                                        ; $58da: $23
    add hl, bc                                    ; $58db: $09
    ld [$2306], sp                                ; $58dc: $08 $06 $23
    add hl, bc                                    ; $58df: $09
    inc hl                                        ; $58e0: $23
    add hl, bc                                    ; $58e1: $09
    inc hl                                        ; $58e2: $23
    add hl, bc                                    ; $58e3: $09
    inc hl                                        ; $58e4: $23
    add hl, bc                                    ; $58e5: $09
    ld [$1e06], sp                                ; $58e6: $08 $06 $1e
    add hl, bc                                    ; $58e9: $09
    add hl, bc                                    ; $58ea: $09
    add hl, bc                                    ; $58eb: $09
    ld e, $09                                     ; $58ec: $1e $09
    add hl, bc                                    ; $58ee: $09
    add hl, bc                                    ; $58ef: $09
    ld [$1e06], sp                                ; $58f0: $08 $06 $1e
    add hl, bc                                    ; $58f3: $09
    add hl, bc                                    ; $58f4: $09
    add hl, bc                                    ; $58f5: $09
    ld e, $09                                     ; $58f6: $1e $09
    add hl, bc                                    ; $58f8: $09
    add hl, bc                                    ; $58f9: $09
    ld [$0703], sp                                ; $58fa: $08 $03 $07
    rlca                                          ; $58fd: $07
    rlca                                          ; $58fe: $07
    rlca                                          ; $58ff: $07
    rlca                                          ; $5900: $07
    rlca                                          ; $5901: $07
    rlca                                          ; $5902: $07
    rlca                                          ; $5903: $07
    inc b                                         ; $5904: $04
    ld bc, $0505                                  ; $5905: $01 $05 $05
    dec b                                         ; $5908: $05
    dec b                                         ; $5909: $05
    dec b                                         ; $590a: $05
    dec b                                         ; $590b: $05
    dec b                                         ; $590c: $05
    dec b                                         ; $590d: $05
    ld [bc], a                                    ; $590e: $02
    ld b, $09                                     ; $590f: $06 $09
    add hl, bc                                    ; $5911: $09
    inc hl                                        ; $5912: $23
    add hl, bc                                    ; $5913: $09
    add hl, bc                                    ; $5914: $09
    add hl, bc                                    ; $5915: $09
    add hl, bc                                    ; $5916: $09
    add hl, bc                                    ; $5917: $09
    ld [$0906], sp                                ; $5918: $08 $06 $09
    inc hl                                        ; $591b: $23
    add hl, bc                                    ; $591c: $09
    add hl, bc                                    ; $591d: $09
    add hl, bc                                    ; $591e: $09
    add hl, bc                                    ; $591f: $09
    add hl, bc                                    ; $5920: $09
    add hl, bc                                    ; $5921: $09
    ld [$2306], sp                                ; $5922: $08 $06 $23
    add hl, bc                                    ; $5925: $09
    add hl, bc                                    ; $5926: $09
    add hl, bc                                    ; $5927: $09
    add hl, bc                                    ; $5928: $09
    add hl, bc                                    ; $5929: $09
    add hl, bc                                    ; $592a: $09
    add hl, bc                                    ; $592b: $09
    ld [$0906], sp                                ; $592c: $08 $06 $09
    add hl, bc                                    ; $592f: $09
    add hl, bc                                    ; $5930: $09
    add hl, bc                                    ; $5931: $09
    add hl, bc                                    ; $5932: $09
    add hl, bc                                    ; $5933: $09
    add hl, bc                                    ; $5934: $09
    ld e, $08                                     ; $5935: $1e $08
    ld b, $09                                     ; $5937: $06 $09
    add hl, bc                                    ; $5939: $09
    add hl, bc                                    ; $593a: $09
    add hl, bc                                    ; $593b: $09
    add hl, bc                                    ; $593c: $09
    add hl, bc                                    ; $593d: $09
    ld e, $09                                     ; $593e: $1e $09
    ld [$0906], sp                                ; $5940: $08 $06 $09
    add hl, bc                                    ; $5943: $09
    add hl, bc                                    ; $5944: $09
    add hl, bc                                    ; $5945: $09
    add hl, bc                                    ; $5946: $09
    ld e, $09                                     ; $5947: $1e $09
    add hl, bc                                    ; $5949: $09
    ld [$0703], sp                                ; $594a: $08 $03 $07
    rlca                                          ; $594d: $07
    rlca                                          ; $594e: $07
    rlca                                          ; $594f: $07
    rlca                                          ; $5950: $07
    rlca                                          ; $5951: $07
    rlca                                          ; $5952: $07
    rlca                                          ; $5953: $07
    inc b                                         ; $5954: $04
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595a: $00
    nop                                           ; $595b: $00
    nop                                           ; $595c: $00
    nop                                           ; $595d: $00
    nop                                           ; $595e: $00
    nop                                           ; $595f: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    nop                                           ; $596b: $00
    ld bc, $0505                                  ; $596c: $01 $05 $05
    ld [bc], a                                    ; $596f: $02
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    ld b, $09                                     ; $5976: $06 $09
    add hl, bc                                    ; $5978: $09
    ld [$0000], sp                                ; $5979: $08 $00 $00
    nop                                           ; $597c: $00
    nop                                           ; $597d: $00
    nop                                           ; $597e: $00
    nop                                           ; $597f: $00
    ld b, $09                                     ; $5980: $06 $09
    add hl, bc                                    ; $5982: $09
    ld [$0000], sp                                ; $5983: $08 $00 $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    inc bc                                        ; $598a: $03
    rlca                                          ; $598b: $07
    rlca                                          ; $598c: $07
    inc b                                         ; $598d: $04
    nop                                           ; $598e: $00
    nop                                           ; $598f: $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    nop                                           ; $599c: $00
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    nop                                           ; $59a3: $00
    nop                                           ; $59a4: $00
    ld bc, $0505                                  ; $59a5: $01 $05 $05
    dec b                                         ; $59a8: $05
    dec b                                         ; $59a9: $05
    dec b                                         ; $59aa: $05
    dec b                                         ; $59ab: $05
    dec b                                         ; $59ac: $05
    dec b                                         ; $59ad: $05
    ld [bc], a                                    ; $59ae: $02
    ld b, $09                                     ; $59af: $06 $09
    add hl, bc                                    ; $59b1: $09
    add hl, bc                                    ; $59b2: $09
    add hl, bc                                    ; $59b3: $09
    add hl, bc                                    ; $59b4: $09
    add hl, bc                                    ; $59b5: $09
    add hl, bc                                    ; $59b6: $09
    add hl, bc                                    ; $59b7: $09
    ld [$0906], sp                                ; $59b8: $08 $06 $09
    add hl, bc                                    ; $59bb: $09
    add hl, bc                                    ; $59bc: $09
    dec c                                         ; $59bd: $0d
    dec bc                                        ; $59be: $0b
    add hl, bc                                    ; $59bf: $09
    add hl, bc                                    ; $59c0: $09
    add hl, bc                                    ; $59c1: $09
    ld [$0906], sp                                ; $59c2: $08 $06 $09
    add hl, bc                                    ; $59c5: $09
    dec c                                         ; $59c6: $0d
    inc b                                         ; $59c7: $04
    inc bc                                        ; $59c8: $03
    dec bc                                        ; $59c9: $0b
    add hl, bc                                    ; $59ca: $09
    add hl, bc                                    ; $59cb: $09
    ld [$0906], sp                                ; $59cc: $08 $06 $09
    add hl, bc                                    ; $59cf: $09
    inc c                                         ; $59d0: $0c
    ld [bc], a                                    ; $59d1: $02
    ld bc, $090a                                  ; $59d2: $01 $0a $09
    add hl, bc                                    ; $59d5: $09
    ld [$0906], sp                                ; $59d6: $08 $06 $09
    add hl, bc                                    ; $59d9: $09
    add hl, bc                                    ; $59da: $09
    inc c                                         ; $59db: $0c
    ld a, [bc]                                    ; $59dc: $0a
    add hl, bc                                    ; $59dd: $09
    add hl, bc                                    ; $59de: $09
    add hl, bc                                    ; $59df: $09
    ld [$0906], sp                                ; $59e0: $08 $06 $09
    add hl, bc                                    ; $59e3: $09
    add hl, bc                                    ; $59e4: $09
    add hl, bc                                    ; $59e5: $09
    add hl, bc                                    ; $59e6: $09
    add hl, bc                                    ; $59e7: $09
    add hl, bc                                    ; $59e8: $09
    add hl, bc                                    ; $59e9: $09
    ld [$0703], sp                                ; $59ea: $08 $03 $07
    rlca                                          ; $59ed: $07
    rlca                                          ; $59ee: $07
    rlca                                          ; $59ef: $07
    rlca                                          ; $59f0: $07
    rlca                                          ; $59f1: $07
    rlca                                          ; $59f2: $07
    rlca                                          ; $59f3: $07
    inc b                                         ; $59f4: $04
    ld bc, $0505                                  ; $59f5: $01 $05 $05
    dec b                                         ; $59f8: $05
    dec b                                         ; $59f9: $05
    dec b                                         ; $59fa: $05
    dec b                                         ; $59fb: $05
    dec b                                         ; $59fc: $05
    ld [bc], a                                    ; $59fd: $02
    nop                                           ; $59fe: $00
    ld b, $09                                     ; $59ff: $06 $09
    add hl, bc                                    ; $5a01: $09
    add hl, bc                                    ; $5a02: $09
    add hl, bc                                    ; $5a03: $09
    add hl, bc                                    ; $5a04: $09
    add hl, bc                                    ; $5a05: $09
    add hl, bc                                    ; $5a06: $09
    inc c                                         ; $5a07: $0c
    ld [bc], a                                    ; $5a08: $02
    ld b, $09                                     ; $5a09: $06 $09
    add hl, bc                                    ; $5a0b: $09
    add hl, bc                                    ; $5a0c: $09
    add hl, bc                                    ; $5a0d: $09
    add hl, bc                                    ; $5a0e: $09
    add hl, bc                                    ; $5a0f: $09
    add hl, bc                                    ; $5a10: $09
    add hl, bc                                    ; $5a11: $09
    ld [$0906], sp                                ; $5a12: $08 $06 $09
    add hl, bc                                    ; $5a15: $09
    add hl, bc                                    ; $5a16: $09
    add hl, bc                                    ; $5a17: $09
    add hl, bc                                    ; $5a18: $09
    add hl, bc                                    ; $5a19: $09
    add hl, bc                                    ; $5a1a: $09
    add hl, bc                                    ; $5a1b: $09
    ld [$1e06], sp                                ; $5a1c: $08 $06 $1e
    ld e, $1e                                     ; $5a1f: $1e $1e
    ld e, $09                                     ; $5a21: $1e $09
    add hl, bc                                    ; $5a23: $09
    add hl, bc                                    ; $5a24: $09
    add hl, bc                                    ; $5a25: $09
    ld [$0906], sp                                ; $5a26: $08 $06 $09
    add hl, bc                                    ; $5a29: $09
    inc hl                                        ; $5a2a: $23
    add hl, bc                                    ; $5a2b: $09
    add hl, bc                                    ; $5a2c: $09
    add hl, bc                                    ; $5a2d: $09
    add hl, bc                                    ; $5a2e: $09
    add hl, bc                                    ; $5a2f: $09
    ld [$0906], sp                                ; $5a30: $08 $06 $09
    add hl, bc                                    ; $5a33: $09
    ld e, $1e                                     ; $5a34: $1e $1e
    add hl, bc                                    ; $5a36: $09
    add hl, bc                                    ; $5a37: $09
    add hl, bc                                    ; $5a38: $09
    add hl, bc                                    ; $5a39: $09
    ld [$0703], sp                                ; $5a3a: $08 $03 $07
    rlca                                          ; $5a3d: $07
    rlca                                          ; $5a3e: $07
    rlca                                          ; $5a3f: $07
    rlca                                          ; $5a40: $07
    rlca                                          ; $5a41: $07
    rlca                                          ; $5a42: $07
    rlca                                          ; $5a43: $07
    inc b                                         ; $5a44: $04
    nop                                           ; $5a45: $00
    nop                                           ; $5a46: $00
    nop                                           ; $5a47: $00
    ld bc, $0505                                  ; $5a48: $01 $05 $05
    ld [bc], a                                    ; $5a4b: $02
    nop                                           ; $5a4c: $00
    nop                                           ; $5a4d: $00
    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    ld b, $09                                     ; $5a52: $06 $09
    add hl, bc                                    ; $5a54: $09
    ld [$0000], sp                                ; $5a55: $08 $00 $00
    nop                                           ; $5a58: $00
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    ld b, $09                                     ; $5a5c: $06 $09
    add hl, bc                                    ; $5a5e: $09
    inc c                                         ; $5a5f: $0c
    dec b                                         ; $5a60: $05
    dec b                                         ; $5a61: $05
    ld [bc], a                                    ; $5a62: $02
    nop                                           ; $5a63: $00
    nop                                           ; $5a64: $00
    nop                                           ; $5a65: $00
    ld b, $09                                     ; $5a66: $06 $09
    add hl, bc                                    ; $5a68: $09
    add hl, bc                                    ; $5a69: $09
    add hl, bc                                    ; $5a6a: $09
    add hl, bc                                    ; $5a6b: $09
    ld [$0000], sp                                ; $5a6c: $08 $00 $00
    nop                                           ; $5a6f: $00
    ld b, $09                                     ; $5a70: $06 $09
    add hl, bc                                    ; $5a72: $09
    add hl, bc                                    ; $5a73: $09
    add hl, bc                                    ; $5a74: $09
    add hl, bc                                    ; $5a75: $09
    ld [$0000], sp                                ; $5a76: $08 $00 $00
    nop                                           ; $5a79: $00
    ld b, $09                                     ; $5a7a: $06 $09
    add hl, bc                                    ; $5a7c: $09
    dec c                                         ; $5a7d: $0d
    rlca                                          ; $5a7e: $07
    rlca                                          ; $5a7f: $07
    inc b                                         ; $5a80: $04
    nop                                           ; $5a81: $00
    nop                                           ; $5a82: $00
    nop                                           ; $5a83: $00
    ld b, $09                                     ; $5a84: $06 $09
    add hl, bc                                    ; $5a86: $09
    ld [$0000], sp                                ; $5a87: $08 $00 $00
    nop                                           ; $5a8a: $00
    nop                                           ; $5a8b: $00
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    inc bc                                        ; $5a8e: $03
    rlca                                          ; $5a8f: $07
    rlca                                          ; $5a90: $07
    inc b                                         ; $5a91: $04
    nop                                           ; $5a92: $00
    nop                                           ; $5a93: $00
    nop                                           ; $5a94: $00
    nop                                           ; $5a95: $00
    nop                                           ; $5a96: $00
    nop                                           ; $5a97: $00
    ld bc, $0505                                  ; $5a98: $01 $05 $05
    ld [bc], a                                    ; $5a9b: $02
    nop                                           ; $5a9c: $00
    nop                                           ; $5a9d: $00
    nop                                           ; $5a9e: $00
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    ld b, $09                                     ; $5aa2: $06 $09
    add hl, bc                                    ; $5aa4: $09
    ld [$0000], sp                                ; $5aa5: $08 $00 $00
    nop                                           ; $5aa8: $00
    nop                                           ; $5aa9: $00
    nop                                           ; $5aaa: $00
    nop                                           ; $5aab: $00
    ld b, $09                                     ; $5aac: $06 $09
    add hl, bc                                    ; $5aae: $09
    inc c                                         ; $5aaf: $0c
    dec b                                         ; $5ab0: $05
    dec b                                         ; $5ab1: $05
    ld [bc], a                                    ; $5ab2: $02
    nop                                           ; $5ab3: $00
    nop                                           ; $5ab4: $00
    nop                                           ; $5ab5: $00
    ld b, $09                                     ; $5ab6: $06 $09
    add hl, bc                                    ; $5ab8: $09
    add hl, bc                                    ; $5ab9: $09
    add hl, bc                                    ; $5aba: $09
    add hl, bc                                    ; $5abb: $09
    ld [$0000], sp                                ; $5abc: $08 $00 $00
    nop                                           ; $5abf: $00
    ld b, $09                                     ; $5ac0: $06 $09
    add hl, bc                                    ; $5ac2: $09
    add hl, bc                                    ; $5ac3: $09
    add hl, bc                                    ; $5ac4: $09
    add hl, bc                                    ; $5ac5: $09
    ld [$0000], sp                                ; $5ac6: $08 $00 $00
    nop                                           ; $5ac9: $00
    inc bc                                        ; $5aca: $03
    rlca                                          ; $5acb: $07
    rlca                                          ; $5acc: $07
    rlca                                          ; $5acd: $07
    rlca                                          ; $5ace: $07
    rlca                                          ; $5acf: $07
    inc b                                         ; $5ad0: $04
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    nop                                           ; $5ad6: $00
    nop                                           ; $5ad7: $00
    nop                                           ; $5ad8: $00
    nop                                           ; $5ad9: $00
    nop                                           ; $5ada: $00
    nop                                           ; $5adb: $00
    nop                                           ; $5adc: $00
    nop                                           ; $5add: $00
    nop                                           ; $5ade: $00
    nop                                           ; $5adf: $00
    nop                                           ; $5ae0: $00
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    ld bc, $0505                                  ; $5ae5: $01 $05 $05
    jr jr_003_5aef                                ; $5ae8: $18 $05

    dec b                                         ; $5aea: $05
    ld [bc], a                                    ; $5aeb: $02
    nop                                           ; $5aec: $00
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00

jr_003_5aef:
    ld b, $09                                     ; $5aef: $06 $09
    add hl, bc                                    ; $5af1: $09
    add hl, bc                                    ; $5af2: $09
    add hl, bc                                    ; $5af3: $09
    add hl, bc                                    ; $5af4: $09
    ld [$0000], sp                                ; $5af5: $08 $00 $00
    nop                                           ; $5af8: $00
    ld b, $09                                     ; $5af9: $06 $09
    add hl, bc                                    ; $5afb: $09
    add hl, bc                                    ; $5afc: $09
    add hl, bc                                    ; $5afd: $09
    add hl, bc                                    ; $5afe: $09
    ld [$0000], sp                                ; $5aff: $08 $00 $00
    nop                                           ; $5b02: $00
    ld b, $09                                     ; $5b03: $06 $09
    add hl, bc                                    ; $5b05: $09
    add hl, bc                                    ; $5b06: $09
    add hl, bc                                    ; $5b07: $09
    add hl, bc                                    ; $5b08: $09
    inc c                                         ; $5b09: $0c
    dec b                                         ; $5b0a: $05
    dec b                                         ; $5b0b: $05
    ld [bc], a                                    ; $5b0c: $02
    inc bc                                        ; $5b0d: $03
    rlca                                          ; $5b0e: $07
    rlca                                          ; $5b0f: $07
    dec bc                                        ; $5b10: $0b
    add hl, bc                                    ; $5b11: $09
    add hl, bc                                    ; $5b12: $09
    add hl, bc                                    ; $5b13: $09
    add hl, bc                                    ; $5b14: $09
    add hl, bc                                    ; $5b15: $09
    ld [$0000], sp                                ; $5b16: $08 $00 $00
    nop                                           ; $5b19: $00
    ld b, $09                                     ; $5b1a: $06 $09
    add hl, bc                                    ; $5b1c: $09
    add hl, bc                                    ; $5b1d: $09
    add hl, bc                                    ; $5b1e: $09
    add hl, bc                                    ; $5b1f: $09
    ld [$0000], sp                                ; $5b20: $08 $00 $00
    nop                                           ; $5b23: $00
    ld b, $09                                     ; $5b24: $06 $09
    add hl, bc                                    ; $5b26: $09
    add hl, bc                                    ; $5b27: $09
    add hl, bc                                    ; $5b28: $09
    add hl, bc                                    ; $5b29: $09
    ld [$0000], sp                                ; $5b2a: $08 $00 $00
    nop                                           ; $5b2d: $00
    inc bc                                        ; $5b2e: $03
    rlca                                          ; $5b2f: $07
    rlca                                          ; $5b30: $07
    ld a, [hl+]                                   ; $5b31: $2a
    rlca                                          ; $5b32: $07
    rlca                                          ; $5b33: $07
    inc b                                         ; $5b34: $04
    ld bc, $1805                                  ; $5b35: $01 $05 $18
    dec b                                         ; $5b38: $05
    dec b                                         ; $5b39: $05
    jr jr_003_5b41                                ; $5b3a: $18 $05

    ld [bc], a                                    ; $5b3c: $02
    nop                                           ; $5b3d: $00
    nop                                           ; $5b3e: $00
    ld b, $09                                     ; $5b3f: $06 $09

jr_003_5b41:
    add hl, bc                                    ; $5b41: $09
    add hl, bc                                    ; $5b42: $09
    add hl, bc                                    ; $5b43: $09
    add hl, bc                                    ; $5b44: $09
    add hl, bc                                    ; $5b45: $09
    inc c                                         ; $5b46: $0c
    dec b                                         ; $5b47: $05
    ld [bc], a                                    ; $5b48: $02
    ld b, $09                                     ; $5b49: $06 $09
    add hl, bc                                    ; $5b4b: $09
    add hl, bc                                    ; $5b4c: $09
    add hl, bc                                    ; $5b4d: $09
    add hl, bc                                    ; $5b4e: $09
    add hl, bc                                    ; $5b4f: $09
    add hl, bc                                    ; $5b50: $09
    add hl, bc                                    ; $5b51: $09
    ld [$0906], sp                                ; $5b52: $08 $06 $09
    add hl, bc                                    ; $5b55: $09
    add hl, bc                                    ; $5b56: $09
    add hl, bc                                    ; $5b57: $09
    add hl, bc                                    ; $5b58: $09
    add hl, bc                                    ; $5b59: $09
    add hl, bc                                    ; $5b5a: $09
    add hl, bc                                    ; $5b5b: $09
    ld [$0906], sp                                ; $5b5c: $08 $06 $09
    add hl, bc                                    ; $5b5f: $09
    add hl, bc                                    ; $5b60: $09
    add hl, bc                                    ; $5b61: $09
    add hl, bc                                    ; $5b62: $09
    add hl, bc                                    ; $5b63: $09
    add hl, bc                                    ; $5b64: $09
    add hl, bc                                    ; $5b65: $09
    ld [$0906], sp                                ; $5b66: $08 $06 $09
    add hl, bc                                    ; $5b69: $09
    add hl, bc                                    ; $5b6a: $09
    add hl, bc                                    ; $5b6b: $09
    add hl, bc                                    ; $5b6c: $09
    add hl, bc                                    ; $5b6d: $09
    add hl, bc                                    ; $5b6e: $09
    add hl, bc                                    ; $5b6f: $09
    ld [$0703], sp                                ; $5b70: $08 $03 $07
    dec bc                                        ; $5b73: $0b
    add hl, bc                                    ; $5b74: $09
    add hl, bc                                    ; $5b75: $09
    add hl, bc                                    ; $5b76: $09
    add hl, bc                                    ; $5b77: $09
    add hl, bc                                    ; $5b78: $09
    add hl, bc                                    ; $5b79: $09
    ld [$0000], sp                                ; $5b7a: $08 $00 $00
    inc bc                                        ; $5b7d: $03
    rlca                                          ; $5b7e: $07
    ld a, [hl+]                                   ; $5b7f: $2a
    rlca                                          ; $5b80: $07
    rlca                                          ; $5b81: $07
    ld a, [hl+]                                   ; $5b82: $2a
    rlca                                          ; $5b83: $07
    inc b                                         ; $5b84: $04
    nop                                           ; $5b85: $00
    nop                                           ; $5b86: $00
    nop                                           ; $5b87: $00
    nop                                           ; $5b88: $00
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    nop                                           ; $5b8b: $00
    nop                                           ; $5b8c: $00
    nop                                           ; $5b8d: $00
    nop                                           ; $5b8e: $00
    ld bc, $0505                                  ; $5b8f: $01 $05 $05
    dec b                                         ; $5b92: $05
    dec b                                         ; $5b93: $05
    dec b                                         ; $5b94: $05
    dec b                                         ; $5b95: $05
    dec b                                         ; $5b96: $05
    dec b                                         ; $5b97: $05
    ld [bc], a                                    ; $5b98: $02
    ld b, $09                                     ; $5b99: $06 $09
    add hl, bc                                    ; $5b9b: $09
    add hl, bc                                    ; $5b9c: $09
    add hl, bc                                    ; $5b9d: $09
    add hl, bc                                    ; $5b9e: $09
    add hl, bc                                    ; $5b9f: $09
    add hl, bc                                    ; $5ba0: $09
    add hl, bc                                    ; $5ba1: $09
    ld [$0906], sp                                ; $5ba2: $08 $06 $09
    ld e, $1e                                     ; $5ba5: $1e $1e
    add hl, bc                                    ; $5ba7: $09
    ld e, $1e                                     ; $5ba8: $1e $1e
    ld e, $09                                     ; $5baa: $1e $09
    ld [$0906], sp                                ; $5bac: $08 $06 $09
    add hl, bc                                    ; $5baf: $09
    add hl, bc                                    ; $5bb0: $09
    add hl, bc                                    ; $5bb1: $09
    add hl, bc                                    ; $5bb2: $09
    add hl, bc                                    ; $5bb3: $09
    add hl, bc                                    ; $5bb4: $09
    add hl, bc                                    ; $5bb5: $09
    ld [$0906], sp                                ; $5bb6: $08 $06 $09
    ld e, $1e                                     ; $5bb9: $1e $1e
    ld e, $09                                     ; $5bbb: $1e $09
    ld e, $1e                                     ; $5bbd: $1e $1e
    add hl, bc                                    ; $5bbf: $09
    ld [$0906], sp                                ; $5bc0: $08 $06 $09
    add hl, bc                                    ; $5bc3: $09
    add hl, bc                                    ; $5bc4: $09
    add hl, bc                                    ; $5bc5: $09
    add hl, bc                                    ; $5bc6: $09
    add hl, bc                                    ; $5bc7: $09
    add hl, bc                                    ; $5bc8: $09
    add hl, bc                                    ; $5bc9: $09
    ld [$0703], sp                                ; $5bca: $08 $03 $07
    rlca                                          ; $5bcd: $07
    rlca                                          ; $5bce: $07
    rlca                                          ; $5bcf: $07
    rlca                                          ; $5bd0: $07
    rlca                                          ; $5bd1: $07
    rlca                                          ; $5bd2: $07
    rlca                                          ; $5bd3: $07
    inc b                                         ; $5bd4: $04
    ld bc, $0505                                  ; $5bd5: $01 $05 $05
    dec b                                         ; $5bd8: $05
    dec b                                         ; $5bd9: $05
    dec b                                         ; $5bda: $05
    dec b                                         ; $5bdb: $05
    dec b                                         ; $5bdc: $05
    dec b                                         ; $5bdd: $05
    ld [bc], a                                    ; $5bde: $02
    ld b, $09                                     ; $5bdf: $06 $09
    add hl, bc                                    ; $5be1: $09
    add hl, bc                                    ; $5be2: $09
    add hl, bc                                    ; $5be3: $09
    add hl, bc                                    ; $5be4: $09
    add hl, bc                                    ; $5be5: $09
    add hl, bc                                    ; $5be6: $09
    add hl, bc                                    ; $5be7: $09
    ld [$0906], sp                                ; $5be8: $08 $06 $09
    add hl, bc                                    ; $5beb: $09
    ld e, $1e                                     ; $5bec: $1e $1e
    add hl, bc                                    ; $5bee: $09
    ld e, $09                                     ; $5bef: $1e $09
    add hl, bc                                    ; $5bf1: $09
    ld [$0906], sp                                ; $5bf2: $08 $06 $09
    ld e, $1e                                     ; $5bf5: $1e $1e
    ld e, $23                                     ; $5bf7: $1e $23
    ld e, $1e                                     ; $5bf9: $1e $1e
    add hl, bc                                    ; $5bfb: $09
    ld [$0906], sp                                ; $5bfc: $08 $06 $09
    ld e, $1e                                     ; $5bff: $1e $1e
    ld e, $23                                     ; $5c01: $1e $23
    ld e, $1e                                     ; $5c03: $1e $1e
    add hl, bc                                    ; $5c05: $09
    ld [$0906], sp                                ; $5c06: $08 $06 $09
    add hl, bc                                    ; $5c09: $09
    ld e, $1e                                     ; $5c0a: $1e $1e
    add hl, bc                                    ; $5c0c: $09
    ld e, $09                                     ; $5c0d: $1e $09
    add hl, bc                                    ; $5c0f: $09
    ld [$0906], sp                                ; $5c10: $08 $06 $09
    add hl, bc                                    ; $5c13: $09
    add hl, bc                                    ; $5c14: $09
    add hl, bc                                    ; $5c15: $09
    add hl, bc                                    ; $5c16: $09
    add hl, bc                                    ; $5c17: $09
    add hl, bc                                    ; $5c18: $09
    add hl, bc                                    ; $5c19: $09
    ld [$0703], sp                                ; $5c1a: $08 $03 $07
    rlca                                          ; $5c1d: $07
    rlca                                          ; $5c1e: $07
    rlca                                          ; $5c1f: $07
    rlca                                          ; $5c20: $07
    rlca                                          ; $5c21: $07
    rlca                                          ; $5c22: $07
    rlca                                          ; $5c23: $07
    inc b                                         ; $5c24: $04
    nop                                           ; $5c25: $00
    ld bc, $0505                                  ; $5c26: $01 $05 $05
    dec b                                         ; $5c29: $05
    dec b                                         ; $5c2a: $05
    ld [de], a                                    ; $5c2b: $12
    ld [de], a                                    ; $5c2c: $12
    dec b                                         ; $5c2d: $05
    ld [bc], a                                    ; $5c2e: $02
    ld bc, $090a                                  ; $5c2f: $01 $0a $09
    add hl, bc                                    ; $5c32: $09
    add hl, bc                                    ; $5c33: $09
    add hl, bc                                    ; $5c34: $09
    inc de                                        ; $5c35: $13
    inc de                                        ; $5c36: $13
    add hl, bc                                    ; $5c37: $09
    ld [$0906], sp                                ; $5c38: $08 $06 $09
    add hl, bc                                    ; $5c3b: $09
    add hl, bc                                    ; $5c3c: $09
    add hl, bc                                    ; $5c3d: $09
    add hl, bc                                    ; $5c3e: $09
    inc de                                        ; $5c3f: $13
    inc de                                        ; $5c40: $13
    add hl, bc                                    ; $5c41: $09
    ld [$0906], sp                                ; $5c42: $08 $06 $09
    add hl, bc                                    ; $5c45: $09
    dec c                                         ; $5c46: $0d
    dec bc                                        ; $5c47: $0b
    add hl, bc                                    ; $5c48: $09
    inc de                                        ; $5c49: $13
    inc de                                        ; $5c4a: $13
    add hl, bc                                    ; $5c4b: $09
    ld [$0906], sp                                ; $5c4c: $08 $06 $09
    dec c                                         ; $5c4f: $0d
    inc b                                         ; $5c50: $04
    ld b, $09                                     ; $5c51: $06 $09
    inc de                                        ; $5c53: $13
    inc de                                        ; $5c54: $13
    add hl, bc                                    ; $5c55: $09
    ld [$0906], sp                                ; $5c56: $08 $06 $09
    inc c                                         ; $5c59: $0c
    dec b                                         ; $5c5a: $05
    ld a, [bc]                                    ; $5c5b: $0a
    add hl, bc                                    ; $5c5c: $09
    inc de                                        ; $5c5d: $13
    inc de                                        ; $5c5e: $13
    add hl, bc                                    ; $5c5f: $09
    ld [$0b03], sp                                ; $5c60: $08 $03 $0b
    add hl, bc                                    ; $5c63: $09
    add hl, bc                                    ; $5c64: $09
    add hl, bc                                    ; $5c65: $09
    add hl, bc                                    ; $5c66: $09
    inc de                                        ; $5c67: $13
    inc de                                        ; $5c68: $13
    add hl, bc                                    ; $5c69: $09
    ld [$0300], sp                                ; $5c6a: $08 $00 $03
    rlca                                          ; $5c6d: $07
    rlca                                          ; $5c6e: $07
    rlca                                          ; $5c6f: $07
    rlca                                          ; $5c70: $07
    inc d                                         ; $5c71: $14
    inc d                                         ; $5c72: $14
    rlca                                          ; $5c73: $07
    inc b                                         ; $5c74: $04
    ld bc, $0505                                  ; $5c75: $01 $05 $05
    dec b                                         ; $5c78: $05
    dec b                                         ; $5c79: $05
    dec b                                         ; $5c7a: $05
    dec b                                         ; $5c7b: $05
    dec b                                         ; $5c7c: $05
    dec b                                         ; $5c7d: $05
    ld [bc], a                                    ; $5c7e: $02
    ld b, $09                                     ; $5c7f: $06 $09
    add hl, bc                                    ; $5c81: $09
    add hl, bc                                    ; $5c82: $09
    add hl, bc                                    ; $5c83: $09
    add hl, bc                                    ; $5c84: $09
    add hl, bc                                    ; $5c85: $09
    add hl, bc                                    ; $5c86: $09
    add hl, bc                                    ; $5c87: $09
    ld [$0906], sp                                ; $5c88: $08 $06 $09
    add hl, de                                    ; $5c8b: $19
    ld a, [de]                                    ; $5c8c: $1a
    add hl, bc                                    ; $5c8d: $09
    ld a, [de]                                    ; $5c8e: $1a
    add hl, de                                    ; $5c8f: $19
    ld a, [de]                                    ; $5c90: $1a
    add hl, bc                                    ; $5c91: $09
    ld [$0906], sp                                ; $5c92: $08 $06 $09
    ld a, [de]                                    ; $5c95: $1a
    add hl, bc                                    ; $5c96: $09
    add hl, bc                                    ; $5c97: $09
    add hl, bc                                    ; $5c98: $09
    add hl, bc                                    ; $5c99: $09
    add hl, de                                    ; $5c9a: $19
    add hl, bc                                    ; $5c9b: $09
    ld [$0906], sp                                ; $5c9c: $08 $06 $09
    add hl, de                                    ; $5c9f: $19
    add hl, bc                                    ; $5ca0: $09
    add hl, bc                                    ; $5ca1: $09
    add hl, bc                                    ; $5ca2: $09
    add hl, bc                                    ; $5ca3: $09
    ld a, [de]                                    ; $5ca4: $1a
    add hl, bc                                    ; $5ca5: $09
    ld [$0906], sp                                ; $5ca6: $08 $06 $09
    ld a, [de]                                    ; $5ca9: $1a
    add hl, de                                    ; $5caa: $19
    add hl, bc                                    ; $5cab: $09
    add hl, de                                    ; $5cac: $19
    ld a, [de]                                    ; $5cad: $1a
    add hl, de                                    ; $5cae: $19
    add hl, bc                                    ; $5caf: $09
    ld [$0906], sp                                ; $5cb0: $08 $06 $09
    add hl, bc                                    ; $5cb3: $09
    add hl, bc                                    ; $5cb4: $09
    add hl, bc                                    ; $5cb5: $09
    add hl, bc                                    ; $5cb6: $09
    add hl, bc                                    ; $5cb7: $09
    add hl, bc                                    ; $5cb8: $09
    add hl, bc                                    ; $5cb9: $09
    ld [$0703], sp                                ; $5cba: $08 $03 $07
    rlca                                          ; $5cbd: $07
    rlca                                          ; $5cbe: $07
    rlca                                          ; $5cbf: $07
    rlca                                          ; $5cc0: $07
    rlca                                          ; $5cc1: $07
    rlca                                          ; $5cc2: $07
    rlca                                          ; $5cc3: $07
    inc b                                         ; $5cc4: $04
    ld bc, $1205                                  ; $5cc5: $01 $05 $12
    dec b                                         ; $5cc8: $05
    dec b                                         ; $5cc9: $05
    dec b                                         ; $5cca: $05
    dec b                                         ; $5ccb: $05
    dec b                                         ; $5ccc: $05
    dec b                                         ; $5ccd: $05
    ld [bc], a                                    ; $5cce: $02
    ld b, $09                                     ; $5ccf: $06 $09
    inc de                                        ; $5cd1: $13
    add hl, bc                                    ; $5cd2: $09
    add hl, bc                                    ; $5cd3: $09
    add hl, bc                                    ; $5cd4: $09
    add hl, bc                                    ; $5cd5: $09
    add hl, bc                                    ; $5cd6: $09
    add hl, bc                                    ; $5cd7: $09
    ld [$0906], sp                                ; $5cd8: $08 $06 $09
    inc de                                        ; $5cdb: $13
    add hl, bc                                    ; $5cdc: $09
    add hl, bc                                    ; $5cdd: $09
    add hl, bc                                    ; $5cde: $09
    add hl, bc                                    ; $5cdf: $09
    add hl, bc                                    ; $5ce0: $09
    add hl, bc                                    ; $5ce1: $09
    ld [$0906], sp                                ; $5ce2: $08 $06 $09
    dec c                                         ; $5ce5: $0d
    dec bc                                        ; $5ce6: $0b
    add hl, bc                                    ; $5ce7: $09
    add hl, bc                                    ; $5ce8: $09
    dec c                                         ; $5ce9: $0d
    dec bc                                        ; $5cea: $0b
    add hl, bc                                    ; $5ceb: $09
    ld [$0906], sp                                ; $5cec: $08 $06 $09
    inc c                                         ; $5cef: $0c
    ld a, [bc]                                    ; $5cf0: $0a
    add hl, bc                                    ; $5cf1: $09
    add hl, bc                                    ; $5cf2: $09
    inc c                                         ; $5cf3: $0c
    ld a, [bc]                                    ; $5cf4: $0a
    add hl, bc                                    ; $5cf5: $09
    ld [$0906], sp                                ; $5cf6: $08 $06 $09
    add hl, bc                                    ; $5cf9: $09
    inc de                                        ; $5cfa: $13
    add hl, bc                                    ; $5cfb: $09
    add hl, bc                                    ; $5cfc: $09
    add hl, bc                                    ; $5cfd: $09
    add hl, bc                                    ; $5cfe: $09
    add hl, bc                                    ; $5cff: $09
    ld [$0906], sp                                ; $5d00: $08 $06 $09
    add hl, bc                                    ; $5d03: $09
    inc de                                        ; $5d04: $13
    add hl, bc                                    ; $5d05: $09
    add hl, bc                                    ; $5d06: $09
    add hl, bc                                    ; $5d07: $09
    add hl, bc                                    ; $5d08: $09
    add hl, bc                                    ; $5d09: $09
    ld [$0703], sp                                ; $5d0a: $08 $03 $07
    rlca                                          ; $5d0d: $07
    inc d                                         ; $5d0e: $14
    rlca                                          ; $5d0f: $07
    rlca                                          ; $5d10: $07
    rlca                                          ; $5d11: $07
    rlca                                          ; $5d12: $07
    rlca                                          ; $5d13: $07
    inc b                                         ; $5d14: $04
    ld bc, $0505                                  ; $5d15: $01 $05 $05
    dec b                                         ; $5d18: $05
    dec b                                         ; $5d19: $05
    dec b                                         ; $5d1a: $05
    dec b                                         ; $5d1b: $05
    dec b                                         ; $5d1c: $05
    ld [bc], a                                    ; $5d1d: $02
    nop                                           ; $5d1e: $00
    ld b, $19                                     ; $5d1f: $06 $19
    ld a, [de]                                    ; $5d21: $1a
    add hl, bc                                    ; $5d22: $09
    add hl, bc                                    ; $5d23: $09
    add hl, bc                                    ; $5d24: $09
    add hl, bc                                    ; $5d25: $09
    add hl, de                                    ; $5d26: $19
    inc c                                         ; $5d27: $0c
    ld [bc], a                                    ; $5d28: $02
    ld b, $09                                     ; $5d29: $06 $09
    add hl, bc                                    ; $5d2b: $09
    add hl, bc                                    ; $5d2c: $09
    add hl, bc                                    ; $5d2d: $09
    add hl, bc                                    ; $5d2e: $09
    add hl, bc                                    ; $5d2f: $09
    ld a, [de]                                    ; $5d30: $1a
    add hl, de                                    ; $5d31: $19
    ld [$0906], sp                                ; $5d32: $08 $06 $09
    add hl, bc                                    ; $5d35: $09
    add hl, bc                                    ; $5d36: $09
    add hl, bc                                    ; $5d37: $09
    add hl, bc                                    ; $5d38: $09
    add hl, bc                                    ; $5d39: $09
    add hl, bc                                    ; $5d3a: $09
    add hl, bc                                    ; $5d3b: $09
    ld [$0906], sp                                ; $5d3c: $08 $06 $09
    add hl, bc                                    ; $5d3f: $09
    add hl, bc                                    ; $5d40: $09
    add hl, bc                                    ; $5d41: $09
    add hl, bc                                    ; $5d42: $09
    add hl, bc                                    ; $5d43: $09
    add hl, bc                                    ; $5d44: $09
    add hl, bc                                    ; $5d45: $09
    ld [$1906], sp                                ; $5d46: $08 $06 $19
    add hl, bc                                    ; $5d49: $09
    add hl, bc                                    ; $5d4a: $09
    add hl, bc                                    ; $5d4b: $09
    add hl, bc                                    ; $5d4c: $09
    add hl, bc                                    ; $5d4d: $09
    add hl, bc                                    ; $5d4e: $09
    add hl, bc                                    ; $5d4f: $09
    ld [$1a06], sp                                ; $5d50: $08 $06 $1a
    add hl, bc                                    ; $5d53: $09
    add hl, bc                                    ; $5d54: $09
    add hl, bc                                    ; $5d55: $09
    add hl, bc                                    ; $5d56: $09
    add hl, bc                                    ; $5d57: $09
    add hl, bc                                    ; $5d58: $09
    add hl, de                                    ; $5d59: $19
    ld [$0703], sp                                ; $5d5a: $08 $03 $07
    rlca                                          ; $5d5d: $07
    rlca                                          ; $5d5e: $07
    rlca                                          ; $5d5f: $07
    rlca                                          ; $5d60: $07
    rlca                                          ; $5d61: $07
    rlca                                          ; $5d62: $07
    rlca                                          ; $5d63: $07
    inc b                                         ; $5d64: $04
    nop                                           ; $5d65: $00
    nop                                           ; $5d66: $00
    ld bc, $0505                                  ; $5d67: $01 $05 $05
    dec b                                         ; $5d6a: $05
    ld [bc], a                                    ; $5d6b: $02
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    ld bc, $090a                                  ; $5d70: $01 $0a $09
    add hl, bc                                    ; $5d73: $09
    add hl, bc                                    ; $5d74: $09
    inc c                                         ; $5d75: $0c
    ld [de], a                                    ; $5d76: $12
    dec b                                         ; $5d77: $05
    ld [bc], a                                    ; $5d78: $02
    ld bc, $1f0a                                  ; $5d79: $01 $0a $1f
    add hl, bc                                    ; $5d7c: $09
    add hl, bc                                    ; $5d7d: $09
    add hl, bc                                    ; $5d7e: $09
    add hl, bc                                    ; $5d7f: $09
    inc de                                        ; $5d80: $13
    add hl, bc                                    ; $5d81: $09
    ld [$0906], sp                                ; $5d82: $08 $06 $09
    add hl, bc                                    ; $5d85: $09
    add hl, bc                                    ; $5d86: $09
    add hl, bc                                    ; $5d87: $09
    add hl, bc                                    ; $5d88: $09
    add hl, bc                                    ; $5d89: $09
    inc de                                        ; $5d8a: $13
    add hl, bc                                    ; $5d8b: $09
    ld [$0906], sp                                ; $5d8c: $08 $06 $09
    add hl, bc                                    ; $5d8f: $09
    add hl, bc                                    ; $5d90: $09
    add hl, bc                                    ; $5d91: $09
    add hl, bc                                    ; $5d92: $09
    add hl, bc                                    ; $5d93: $09
    inc de                                        ; $5d94: $13
    add hl, bc                                    ; $5d95: $09
    ld [$0906], sp                                ; $5d96: $08 $06 $09
    add hl, bc                                    ; $5d99: $09
    add hl, bc                                    ; $5d9a: $09
    add hl, bc                                    ; $5d9b: $09
    add hl, bc                                    ; $5d9c: $09
    add hl, bc                                    ; $5d9d: $09
    inc de                                        ; $5d9e: $13
    dec c                                         ; $5d9f: $0d
    inc b                                         ; $5da0: $04
    inc bc                                        ; $5da1: $03
    rlca                                          ; $5da2: $07
    rlca                                          ; $5da3: $07
    dec bc                                        ; $5da4: $0b
    add hl, bc                                    ; $5da5: $09
    add hl, bc                                    ; $5da6: $09
    add hl, bc                                    ; $5da7: $09
    dec c                                         ; $5da8: $0d
    inc b                                         ; $5da9: $04
    nop                                           ; $5daa: $00
    nop                                           ; $5dab: $00
    nop                                           ; $5dac: $00
    nop                                           ; $5dad: $00
    inc bc                                        ; $5dae: $03
    rlca                                          ; $5daf: $07
    rlca                                          ; $5db0: $07
    rlca                                          ; $5db1: $07
    inc b                                         ; $5db2: $04
    nop                                           ; $5db3: $00
    nop                                           ; $5db4: $00
    ld bc, $0505                                  ; $5db5: $01 $05 $05
    dec b                                         ; $5db8: $05
    dec b                                         ; $5db9: $05
    dec b                                         ; $5dba: $05
    dec b                                         ; $5dbb: $05
    ld [de], a                                    ; $5dbc: $12
    ld [bc], a                                    ; $5dbd: $02
    nop                                           ; $5dbe: $00
    ld b, $1f                                     ; $5dbf: $06 $1f
    add hl, bc                                    ; $5dc1: $09
    add hl, bc                                    ; $5dc2: $09
    add hl, bc                                    ; $5dc3: $09
    add hl, bc                                    ; $5dc4: $09
    add hl, bc                                    ; $5dc5: $09
    inc de                                        ; $5dc6: $13
    inc c                                         ; $5dc7: $0c
    ld [bc], a                                    ; $5dc8: $02
    ld b, $09                                     ; $5dc9: $06 $09
    add hl, bc                                    ; $5dcb: $09
    add hl, bc                                    ; $5dcc: $09
    add hl, bc                                    ; $5dcd: $09
    add hl, bc                                    ; $5dce: $09
    add hl, bc                                    ; $5dcf: $09
    inc de                                        ; $5dd0: $13
    add hl, bc                                    ; $5dd1: $09
    ld [$0906], sp                                ; $5dd2: $08 $06 $09
    add hl, bc                                    ; $5dd5: $09
    add hl, bc                                    ; $5dd6: $09
    add hl, bc                                    ; $5dd7: $09
    add hl, bc                                    ; $5dd8: $09
    add hl, bc                                    ; $5dd9: $09
    inc de                                        ; $5dda: $13
    add hl, bc                                    ; $5ddb: $09
    ld [$0906], sp                                ; $5ddc: $08 $06 $09
    add hl, bc                                    ; $5ddf: $09
    add hl, bc                                    ; $5de0: $09
    add hl, bc                                    ; $5de1: $09
    ld e, $1e                                     ; $5de2: $1e $1e
    inc de                                        ; $5de4: $13
    add hl, bc                                    ; $5de5: $09
    ld [$0906], sp                                ; $5de6: $08 $06 $09
    add hl, bc                                    ; $5de9: $09
    add hl, bc                                    ; $5dea: $09
    add hl, bc                                    ; $5deb: $09
    ld e, $1f                                     ; $5dec: $1e $1f
    inc de                                        ; $5dee: $13
    add hl, bc                                    ; $5def: $09
    ld [$0b03], sp                                ; $5df0: $08 $03 $0b
    add hl, bc                                    ; $5df3: $09
    add hl, bc                                    ; $5df4: $09
    add hl, bc                                    ; $5df5: $09
    add hl, bc                                    ; $5df6: $09
    add hl, bc                                    ; $5df7: $09
    inc de                                        ; $5df8: $13
    dec c                                         ; $5df9: $0d
    inc b                                         ; $5dfa: $04
    nop                                           ; $5dfb: $00
    inc bc                                        ; $5dfc: $03
    rlca                                          ; $5dfd: $07
    rlca                                          ; $5dfe: $07
    rlca                                          ; $5dff: $07
    rlca                                          ; $5e00: $07
    rlca                                          ; $5e01: $07
    inc d                                         ; $5e02: $14
    inc b                                         ; $5e03: $04
    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    nop                                           ; $5e08: $00
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    nop                                           ; $5e0b: $00
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    nop                                           ; $5e0e: $00
    nop                                           ; $5e0f: $00
    nop                                           ; $5e10: $00
    nop                                           ; $5e11: $00
    ld bc, $0505                                  ; $5e12: $01 $05 $05
    ld [bc], a                                    ; $5e15: $02
    nop                                           ; $5e16: $00
    nop                                           ; $5e17: $00
    nop                                           ; $5e18: $00
    nop                                           ; $5e19: $00
    nop                                           ; $5e1a: $00
    ld bc, $090a                                  ; $5e1b: $01 $0a $09
    add hl, bc                                    ; $5e1e: $09
    inc c                                         ; $5e1f: $0c
    ld [bc], a                                    ; $5e20: $02
    nop                                           ; $5e21: $00
    nop                                           ; $5e22: $00
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    ld b, $09                                     ; $5e25: $06 $09
    add hl, bc                                    ; $5e27: $09
    add hl, bc                                    ; $5e28: $09
    add hl, bc                                    ; $5e29: $09
    ld [$0000], sp                                ; $5e2a: $08 $00 $00
    nop                                           ; $5e2d: $00
    nop                                           ; $5e2e: $00
    ld b, $09                                     ; $5e2f: $06 $09
    add hl, bc                                    ; $5e31: $09
    add hl, bc                                    ; $5e32: $09
    add hl, bc                                    ; $5e33: $09
    ld [$0000], sp                                ; $5e34: $08 $00 $00
    nop                                           ; $5e37: $00
    nop                                           ; $5e38: $00
    inc bc                                        ; $5e39: $03
    dec bc                                        ; $5e3a: $0b
    add hl, bc                                    ; $5e3b: $09
    add hl, bc                                    ; $5e3c: $09
    dec c                                         ; $5e3d: $0d
    inc b                                         ; $5e3e: $04
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    nop                                           ; $5e41: $00
    nop                                           ; $5e42: $00
    nop                                           ; $5e43: $00
    inc bc                                        ; $5e44: $03
    rlca                                          ; $5e45: $07
    rlca                                          ; $5e46: $07
    inc b                                         ; $5e47: $04
    nop                                           ; $5e48: $00
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    nop                                           ; $5e4b: $00
    nop                                           ; $5e4c: $00
    nop                                           ; $5e4d: $00
    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    nop                                           ; $5e53: $00
    nop                                           ; $5e54: $00
    ld bc, $0505                                  ; $5e55: $01 $05 $05
    dec b                                         ; $5e58: $05
    dec b                                         ; $5e59: $05
    dec b                                         ; $5e5a: $05
    dec b                                         ; $5e5b: $05
    dec b                                         ; $5e5c: $05
    dec b                                         ; $5e5d: $05
    ld [bc], a                                    ; $5e5e: $02
    ld b, $09                                     ; $5e5f: $06 $09
    add hl, bc                                    ; $5e61: $09
    add hl, bc                                    ; $5e62: $09
    add hl, bc                                    ; $5e63: $09
    add hl, bc                                    ; $5e64: $09
    add hl, bc                                    ; $5e65: $09
    add hl, bc                                    ; $5e66: $09
    add hl, bc                                    ; $5e67: $09
    ld [$0906], sp                                ; $5e68: $08 $06 $09
    add hl, bc                                    ; $5e6b: $09
    add hl, de                                    ; $5e6c: $19
    ld a, [de]                                    ; $5e6d: $1a
    add hl, bc                                    ; $5e6e: $09
    ld a, [de]                                    ; $5e6f: $1a
    add hl, bc                                    ; $5e70: $09
    add hl, bc                                    ; $5e71: $09
    ld [$0906], sp                                ; $5e72: $08 $06 $09
    add hl, bc                                    ; $5e75: $09
    add hl, bc                                    ; $5e76: $09
    add hl, bc                                    ; $5e77: $09
    add hl, bc                                    ; $5e78: $09
    add hl, de                                    ; $5e79: $19
    add hl, bc                                    ; $5e7a: $09
    add hl, bc                                    ; $5e7b: $09
    ld [$0906], sp                                ; $5e7c: $08 $06 $09
    add hl, bc                                    ; $5e7f: $09
    add hl, de                                    ; $5e80: $19
    add hl, bc                                    ; $5e81: $09
    add hl, bc                                    ; $5e82: $09
    add hl, bc                                    ; $5e83: $09
    add hl, bc                                    ; $5e84: $09
    add hl, bc                                    ; $5e85: $09
    ld [$0906], sp                                ; $5e86: $08 $06 $09
    add hl, bc                                    ; $5e89: $09
    ld a, [de]                                    ; $5e8a: $1a
    add hl, bc                                    ; $5e8b: $09
    ld a, [de]                                    ; $5e8c: $1a
    add hl, de                                    ; $5e8d: $19
    add hl, bc                                    ; $5e8e: $09
    add hl, bc                                    ; $5e8f: $09
    ld [$0906], sp                                ; $5e90: $08 $06 $09
    add hl, bc                                    ; $5e93: $09
    add hl, bc                                    ; $5e94: $09
    add hl, bc                                    ; $5e95: $09
    add hl, bc                                    ; $5e96: $09
    add hl, bc                                    ; $5e97: $09
    add hl, bc                                    ; $5e98: $09
    add hl, bc                                    ; $5e99: $09
    ld [$0703], sp                                ; $5e9a: $08 $03 $07
    rlca                                          ; $5e9d: $07
    rlca                                          ; $5e9e: $07
    rlca                                          ; $5e9f: $07
    rlca                                          ; $5ea0: $07
    rlca                                          ; $5ea1: $07
    rlca                                          ; $5ea2: $07
    rlca                                          ; $5ea3: $07
    inc b                                         ; $5ea4: $04
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    nop                                           ; $5ea7: $00
    ld bc, $0505                                  ; $5ea8: $01 $05 $05
    ld [bc], a                                    ; $5eab: $02
    nop                                           ; $5eac: $00
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    ld bc, $0a05                                  ; $5eb0: $01 $05 $0a
    add hl, bc                                    ; $5eb3: $09
    add hl, bc                                    ; $5eb4: $09
    inc c                                         ; $5eb5: $0c
    dec b                                         ; $5eb6: $05
    ld [bc], a                                    ; $5eb7: $02
    nop                                           ; $5eb8: $00
    ld bc, $090a                                  ; $5eb9: $01 $0a $09
    add hl, bc                                    ; $5ebc: $09
    add hl, bc                                    ; $5ebd: $09
    add hl, bc                                    ; $5ebe: $09
    add hl, bc                                    ; $5ebf: $09
    add hl, bc                                    ; $5ec0: $09
    inc c                                         ; $5ec1: $0c
    ld [bc], a                                    ; $5ec2: $02
    ld b, $09                                     ; $5ec3: $06 $09
    add hl, bc                                    ; $5ec5: $09
    add hl, bc                                    ; $5ec6: $09
    add hl, bc                                    ; $5ec7: $09
    add hl, bc                                    ; $5ec8: $09
    add hl, bc                                    ; $5ec9: $09
    add hl, bc                                    ; $5eca: $09
    add hl, bc                                    ; $5ecb: $09
    ld [$0906], sp                                ; $5ecc: $08 $06 $09
    add hl, bc                                    ; $5ecf: $09
    add hl, bc                                    ; $5ed0: $09
    add hl, bc                                    ; $5ed1: $09
    add hl, bc                                    ; $5ed2: $09
    add hl, bc                                    ; $5ed3: $09
    add hl, bc                                    ; $5ed4: $09
    add hl, bc                                    ; $5ed5: $09
    ld [$0906], sp                                ; $5ed6: $08 $06 $09
    add hl, bc                                    ; $5ed9: $09
    add hl, bc                                    ; $5eda: $09
    add hl, bc                                    ; $5edb: $09
    add hl, bc                                    ; $5edc: $09
    add hl, bc                                    ; $5edd: $09
    add hl, bc                                    ; $5ede: $09
    add hl, bc                                    ; $5edf: $09
    ld [$0b03], sp                                ; $5ee0: $08 $03 $0b
    add hl, bc                                    ; $5ee3: $09
    add hl, bc                                    ; $5ee4: $09
    dec c                                         ; $5ee5: $0d
    dec bc                                        ; $5ee6: $0b
    add hl, bc                                    ; $5ee7: $09
    add hl, bc                                    ; $5ee8: $09
    dec c                                         ; $5ee9: $0d
    inc b                                         ; $5eea: $04
    nop                                           ; $5eeb: $00
    inc bc                                        ; $5eec: $03
    rlca                                          ; $5eed: $07
    rlca                                          ; $5eee: $07
    inc b                                         ; $5eef: $04
    inc bc                                        ; $5ef0: $03
    rlca                                          ; $5ef1: $07
    rlca                                          ; $5ef2: $07
    inc b                                         ; $5ef3: $04
    nop                                           ; $5ef4: $00
    ld bc, $0505                                  ; $5ef5: $01 $05 $05
    dec b                                         ; $5ef8: $05
    dec b                                         ; $5ef9: $05
    dec b                                         ; $5efa: $05
    dec b                                         ; $5efb: $05
    dec b                                         ; $5efc: $05
    ld [bc], a                                    ; $5efd: $02
    nop                                           ; $5efe: $00
    ld b, $09                                     ; $5eff: $06 $09
    add hl, bc                                    ; $5f01: $09
    add hl, bc                                    ; $5f02: $09
    add hl, bc                                    ; $5f03: $09
    add hl, bc                                    ; $5f04: $09
    add hl, bc                                    ; $5f05: $09
    add hl, bc                                    ; $5f06: $09
    inc c                                         ; $5f07: $0c
    ld [bc], a                                    ; $5f08: $02
    inc bc                                        ; $5f09: $03
    dec bc                                        ; $5f0a: $0b
    add hl, bc                                    ; $5f0b: $09
    add hl, bc                                    ; $5f0c: $09
    add hl, bc                                    ; $5f0d: $09
    add hl, bc                                    ; $5f0e: $09
    add hl, bc                                    ; $5f0f: $09
    add hl, bc                                    ; $5f10: $09
    add hl, bc                                    ; $5f11: $09
    ld [$0600], sp                                ; $5f12: $08 $00 $06
    add hl, bc                                    ; $5f15: $09
    add hl, bc                                    ; $5f16: $09
    add hl, bc                                    ; $5f17: $09
    add hl, bc                                    ; $5f18: $09
    add hl, bc                                    ; $5f19: $09
    add hl, bc                                    ; $5f1a: $09
    add hl, bc                                    ; $5f1b: $09
    ld [$0600], sp                                ; $5f1c: $08 $00 $06
    add hl, bc                                    ; $5f1f: $09
    add hl, bc                                    ; $5f20: $09
    add hl, bc                                    ; $5f21: $09
    add hl, bc                                    ; $5f22: $09
    add hl, bc                                    ; $5f23: $09
    add hl, bc                                    ; $5f24: $09
    add hl, bc                                    ; $5f25: $09
    ld [$0a01], sp                                ; $5f26: $08 $01 $0a
    add hl, bc                                    ; $5f29: $09
    add hl, bc                                    ; $5f2a: $09
    add hl, bc                                    ; $5f2b: $09
    add hl, bc                                    ; $5f2c: $09
    add hl, bc                                    ; $5f2d: $09
    add hl, bc                                    ; $5f2e: $09
    add hl, bc                                    ; $5f2f: $09
    ld [$0906], sp                                ; $5f30: $08 $06 $09
    add hl, bc                                    ; $5f33: $09
    add hl, bc                                    ; $5f34: $09
    add hl, bc                                    ; $5f35: $09
    add hl, bc                                    ; $5f36: $09
    add hl, bc                                    ; $5f37: $09
    add hl, bc                                    ; $5f38: $09
    dec c                                         ; $5f39: $0d
    inc b                                         ; $5f3a: $04
    inc bc                                        ; $5f3b: $03
    rlca                                          ; $5f3c: $07
    rlca                                          ; $5f3d: $07
    rlca                                          ; $5f3e: $07
    rlca                                          ; $5f3f: $07
    rlca                                          ; $5f40: $07
    rlca                                          ; $5f41: $07
    rlca                                          ; $5f42: $07
    inc b                                         ; $5f43: $04
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    nop                                           ; $5f47: $00
    nop                                           ; $5f48: $00
    nop                                           ; $5f49: $00
    nop                                           ; $5f4a: $00
    nop                                           ; $5f4b: $00
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    nop                                           ; $5f4e: $00
    nop                                           ; $5f4f: $00
    nop                                           ; $5f50: $00
    ld bc, $0505                                  ; $5f51: $01 $05 $05
    dec b                                         ; $5f54: $05
    dec b                                         ; $5f55: $05
    ld [bc], a                                    ; $5f56: $02
    nop                                           ; $5f57: $00
    nop                                           ; $5f58: $00
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    ld b, $09                                     ; $5f5b: $06 $09
    add hl, bc                                    ; $5f5d: $09
    add hl, bc                                    ; $5f5e: $09
    add hl, bc                                    ; $5f5f: $09
    ld [$0000], sp                                ; $5f60: $08 $00 $00
    nop                                           ; $5f63: $00
    nop                                           ; $5f64: $00
    ld b, $09                                     ; $5f65: $06 $09
    add hl, de                                    ; $5f67: $19
    ld a, [de]                                    ; $5f68: $1a
    add hl, bc                                    ; $5f69: $09
    ld [$0000], sp                                ; $5f6a: $08 $00 $00
    nop                                           ; $5f6d: $00
    nop                                           ; $5f6e: $00
    ld b, $09                                     ; $5f6f: $06 $09
    ld a, [de]                                    ; $5f71: $1a
    add hl, de                                    ; $5f72: $19
    add hl, bc                                    ; $5f73: $09
    ld [$0000], sp                                ; $5f74: $08 $00 $00
    nop                                           ; $5f77: $00
    nop                                           ; $5f78: $00
    ld b, $09                                     ; $5f79: $06 $09
    add hl, bc                                    ; $5f7b: $09
    add hl, bc                                    ; $5f7c: $09
    add hl, bc                                    ; $5f7d: $09
    ld [$0000], sp                                ; $5f7e: $08 $00 $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    inc bc                                        ; $5f83: $03
    rlca                                          ; $5f84: $07
    rlca                                          ; $5f85: $07
    rlca                                          ; $5f86: $07
    rlca                                          ; $5f87: $07
    inc b                                         ; $5f88: $04
    nop                                           ; $5f89: $00
    nop                                           ; $5f8a: $00
    nop                                           ; $5f8b: $00
    nop                                           ; $5f8c: $00
    nop                                           ; $5f8d: $00
    nop                                           ; $5f8e: $00
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    nop                                           ; $5f94: $00
    ld bc, $0505                                  ; $5f95: $01 $05 $05
    dec b                                         ; $5f98: $05
    dec b                                         ; $5f99: $05
    dec b                                         ; $5f9a: $05
    dec b                                         ; $5f9b: $05
    dec b                                         ; $5f9c: $05
    dec b                                         ; $5f9d: $05
    ld [bc], a                                    ; $5f9e: $02
    ld b, $09                                     ; $5f9f: $06 $09
    ld e, $1e                                     ; $5fa1: $1e $1e
    add hl, bc                                    ; $5fa3: $09
    add hl, bc                                    ; $5fa4: $09
    add hl, bc                                    ; $5fa5: $09
    add hl, bc                                    ; $5fa6: $09
    add hl, bc                                    ; $5fa7: $09
    ld [$0906], sp                                ; $5fa8: $08 $06 $09
    add hl, bc                                    ; $5fab: $09
    add hl, bc                                    ; $5fac: $09
    add hl, bc                                    ; $5fad: $09
    add hl, bc                                    ; $5fae: $09
    ld e, $1e                                     ; $5faf: $1e $1e
    add hl, bc                                    ; $5fb1: $09
    ld [$0906], sp                                ; $5fb2: $08 $06 $09
    ld e, $1e                                     ; $5fb5: $1e $1e
    add hl, bc                                    ; $5fb7: $09
    add hl, bc                                    ; $5fb8: $09
    ld e, $1e                                     ; $5fb9: $1e $1e
    add hl, bc                                    ; $5fbb: $09
    ld [$0906], sp                                ; $5fbc: $08 $06 $09
    ld e, $1e                                     ; $5fbf: $1e $1e
    add hl, bc                                    ; $5fc1: $09
    add hl, bc                                    ; $5fc2: $09
    ld e, $1e                                     ; $5fc3: $1e $1e
    add hl, bc                                    ; $5fc5: $09
    ld [$0906], sp                                ; $5fc6: $08 $06 $09
    ld e, $1e                                     ; $5fc9: $1e $1e
    add hl, bc                                    ; $5fcb: $09
    add hl, bc                                    ; $5fcc: $09
    add hl, bc                                    ; $5fcd: $09
    add hl, bc                                    ; $5fce: $09
    add hl, bc                                    ; $5fcf: $09
    ld [$0906], sp                                ; $5fd0: $08 $06 $09
    add hl, bc                                    ; $5fd3: $09
    add hl, bc                                    ; $5fd4: $09
    add hl, bc                                    ; $5fd5: $09
    add hl, bc                                    ; $5fd6: $09
    ld e, $1e                                     ; $5fd7: $1e $1e
    add hl, bc                                    ; $5fd9: $09
    ld [$0703], sp                                ; $5fda: $08 $03 $07
    rlca                                          ; $5fdd: $07
    rlca                                          ; $5fde: $07
    rlca                                          ; $5fdf: $07
    rlca                                          ; $5fe0: $07
    rlca                                          ; $5fe1: $07
    rlca                                          ; $5fe2: $07
    rlca                                          ; $5fe3: $07
    inc b                                         ; $5fe4: $04
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    nop                                           ; $5fe7: $00
    ld bc, $0505                                  ; $5fe8: $01 $05 $05
    ld [bc], a                                    ; $5feb: $02
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    nop                                           ; $5fee: $00
    nop                                           ; $5fef: $00
    nop                                           ; $5ff0: $00
    nop                                           ; $5ff1: $00
    ld b, $09                                     ; $5ff2: $06 $09
    add hl, bc                                    ; $5ff4: $09
    ld [$0000], sp                                ; $5ff5: $08 $00 $00
    nop                                           ; $5ff8: $00
    ld bc, $0505                                  ; $5ff9: $01 $05 $05
    ld a, [bc]                                    ; $5ffc: $0a
    add hl, bc                                    ; $5ffd: $09
    add hl, bc                                    ; $5ffe: $09
    inc c                                         ; $5fff: $0c
    dec b                                         ; $6000: $05
    dec b                                         ; $6001: $05
    ld [bc], a                                    ; $6002: $02
    ld b, $09                                     ; $6003: $06 $09
    add hl, bc                                    ; $6005: $09
    add hl, bc                                    ; $6006: $09
    add hl, bc                                    ; $6007: $09
    add hl, bc                                    ; $6008: $09
    add hl, bc                                    ; $6009: $09
    add hl, bc                                    ; $600a: $09
    add hl, bc                                    ; $600b: $09
    ld [$0906], sp                                ; $600c: $08 $06 $09
    add hl, bc                                    ; $600f: $09
    add hl, bc                                    ; $6010: $09
    add hl, bc                                    ; $6011: $09
    add hl, bc                                    ; $6012: $09
    add hl, bc                                    ; $6013: $09
    add hl, bc                                    ; $6014: $09
    add hl, bc                                    ; $6015: $09
    ld [$0703], sp                                ; $6016: $08 $03 $07
    rlca                                          ; $6019: $07
    dec bc                                        ; $601a: $0b
    add hl, bc                                    ; $601b: $09
    add hl, bc                                    ; $601c: $09
    dec c                                         ; $601d: $0d
    rlca                                          ; $601e: $07
    rlca                                          ; $601f: $07
    inc b                                         ; $6020: $04
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    ld b, $09                                     ; $6024: $06 $09
    add hl, bc                                    ; $6026: $09
    ld [$0000], sp                                ; $6027: $08 $00 $00
    nop                                           ; $602a: $00
    nop                                           ; $602b: $00
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    inc bc                                        ; $602e: $03
    rlca                                          ; $602f: $07
    rlca                                          ; $6030: $07
    inc b                                         ; $6031: $04
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    ld bc, $1205                                  ; $6035: $01 $05 $12
    dec b                                         ; $6038: $05
    ld [de], a                                    ; $6039: $12
    dec b                                         ; $603a: $05
    ld [de], a                                    ; $603b: $12
    dec b                                         ; $603c: $05
    ld [bc], a                                    ; $603d: $02
    nop                                           ; $603e: $00
    ld b, $09                                     ; $603f: $06 $09
    inc de                                        ; $6041: $13
    add hl, bc                                    ; $6042: $09
    inc de                                        ; $6043: $13
    add hl, bc                                    ; $6044: $09
    inc de                                        ; $6045: $13
    add hl, bc                                    ; $6046: $09
    inc c                                         ; $6047: $0c
    ld [bc], a                                    ; $6048: $02
    ld b, $09                                     ; $6049: $06 $09
    inc de                                        ; $604b: $13
    add hl, bc                                    ; $604c: $09
    inc de                                        ; $604d: $13
    add hl, bc                                    ; $604e: $09
    inc de                                        ; $604f: $13
    add hl, bc                                    ; $6050: $09
    add hl, bc                                    ; $6051: $09
    ld [$0906], sp                                ; $6052: $08 $06 $09
    inc de                                        ; $6055: $13
    add hl, bc                                    ; $6056: $09
    inc de                                        ; $6057: $13
    add hl, bc                                    ; $6058: $09
    inc de                                        ; $6059: $13
    add hl, bc                                    ; $605a: $09
    add hl, bc                                    ; $605b: $09
    ld [$0906], sp                                ; $605c: $08 $06 $09
    inc de                                        ; $605f: $13
    add hl, bc                                    ; $6060: $09
    inc de                                        ; $6061: $13
    add hl, bc                                    ; $6062: $09
    inc de                                        ; $6063: $13
    add hl, bc                                    ; $6064: $09
    add hl, bc                                    ; $6065: $09
    ld [$0906], sp                                ; $6066: $08 $06 $09
    inc de                                        ; $6069: $13
    add hl, bc                                    ; $606a: $09
    inc de                                        ; $606b: $13
    add hl, bc                                    ; $606c: $09
    inc de                                        ; $606d: $13
    add hl, bc                                    ; $606e: $09
    add hl, bc                                    ; $606f: $09
    ld [$0906], sp                                ; $6070: $08 $06 $09
    inc de                                        ; $6073: $13
    add hl, bc                                    ; $6074: $09
    inc de                                        ; $6075: $13
    add hl, bc                                    ; $6076: $09
    inc de                                        ; $6077: $13
    add hl, bc                                    ; $6078: $09
    dec c                                         ; $6079: $0d
    inc b                                         ; $607a: $04
    inc bc                                        ; $607b: $03
    rlca                                          ; $607c: $07
    inc d                                         ; $607d: $14
    rlca                                          ; $607e: $07
    inc d                                         ; $607f: $14
    rlca                                          ; $6080: $07
    inc d                                         ; $6081: $14
    rlca                                          ; $6082: $07
    inc b                                         ; $6083: $04
    nop                                           ; $6084: $00
    ld bc, $0505                                  ; $6085: $01 $05 $05
    dec b                                         ; $6088: $05
    dec b                                         ; $6089: $05
    dec b                                         ; $608a: $05
    dec b                                         ; $608b: $05
    dec b                                         ; $608c: $05
    dec b                                         ; $608d: $05
    ld [bc], a                                    ; $608e: $02
    ld b, $09                                     ; $608f: $06 $09
    add hl, bc                                    ; $6091: $09
    add hl, bc                                    ; $6092: $09
    add hl, bc                                    ; $6093: $09
    add hl, bc                                    ; $6094: $09
    add hl, bc                                    ; $6095: $09
    add hl, bc                                    ; $6096: $09
    add hl, bc                                    ; $6097: $09
    ld [$0906], sp                                ; $6098: $08 $06 $09
    add hl, bc                                    ; $609b: $09
    rra                                           ; $609c: $1f
    add hl, bc                                    ; $609d: $09
    add hl, bc                                    ; $609e: $09
    add hl, bc                                    ; $609f: $09
    add hl, bc                                    ; $60a0: $09
    add hl, bc                                    ; $60a1: $09
    ld [$0906], sp                                ; $60a2: $08 $06 $09
    add hl, bc                                    ; $60a5: $09
    add hl, bc                                    ; $60a6: $09
    rra                                           ; $60a7: $1f
    add hl, bc                                    ; $60a8: $09
    add hl, bc                                    ; $60a9: $09
    add hl, bc                                    ; $60aa: $09
    add hl, bc                                    ; $60ab: $09
    ld [$0906], sp                                ; $60ac: $08 $06 $09
    add hl, bc                                    ; $60af: $09
    add hl, bc                                    ; $60b0: $09
    add hl, bc                                    ; $60b1: $09
    rra                                           ; $60b2: $1f
    add hl, bc                                    ; $60b3: $09
    add hl, bc                                    ; $60b4: $09
    add hl, bc                                    ; $60b5: $09
    ld [$0906], sp                                ; $60b6: $08 $06 $09
    add hl, bc                                    ; $60b9: $09
    add hl, bc                                    ; $60ba: $09
    add hl, bc                                    ; $60bb: $09
    add hl, bc                                    ; $60bc: $09
    rra                                           ; $60bd: $1f
    add hl, bc                                    ; $60be: $09
    add hl, bc                                    ; $60bf: $09
    ld [$0906], sp                                ; $60c0: $08 $06 $09
    add hl, bc                                    ; $60c3: $09
    add hl, bc                                    ; $60c4: $09
    add hl, bc                                    ; $60c5: $09
    add hl, bc                                    ; $60c6: $09
    add hl, bc                                    ; $60c7: $09
    add hl, bc                                    ; $60c8: $09
    add hl, bc                                    ; $60c9: $09
    ld [$0703], sp                                ; $60ca: $08 $03 $07
    rlca                                          ; $60cd: $07
    rlca                                          ; $60ce: $07
    rlca                                          ; $60cf: $07
    rlca                                          ; $60d0: $07
    rlca                                          ; $60d1: $07
    rlca                                          ; $60d2: $07
    rlca                                          ; $60d3: $07
    inc b                                         ; $60d4: $04
    ld b, h                                       ; $60d5: $44
    ld b, d                                       ; $60d6: $42
    ld h, h                                       ; $60d7: $64
    ld d, h                                       ; $60d8: $54
    ld d, d                                       ; $60d9: $52
    ld h, e                                       ; $60da: $63
    inc hl                                        ; $60db: $23
    inc h                                         ; $60dc: $24
    ld [de], a                                    ; $60dd: $12
    dec d                                         ; $60de: $15
    ld b, c                                       ; $60df: $41
    ld d, $86                                     ; $60e0: $16 $86
    ld h, e                                       ; $60e2: $63
    dec [hl]                                      ; $60e3: $35
    add h                                         ; $60e4: $84
    ld [hl], c                                    ; $60e5: $71
    ld b, h                                       ; $60e6: $44
    ld h, $21                                     ; $60e7: $26 $21
    ld d, d                                       ; $60e9: $52
    ld b, e                                       ; $60ea: $43
    dec h                                         ; $60eb: $25
    inc [hl]                                      ; $60ec: $34
    ld d, $81                                     ; $60ed: $16 $81
    ld d, $53                                     ; $60ef: $16 $53
    add [hl]                                      ; $60f1: $86
    ld de, $3675                                  ; $60f2: $11 $75 $36
    ld h, [hl]                                    ; $60f5: $66
    ld d, d                                       ; $60f6: $52
    ld de, $8116                                  ; $60f7: $11 $16 $81
    inc [hl]                                      ; $60fa: $34
    ld h, e                                       ; $60fb: $63
    ld de, $5343                                  ; $60fc: $11 $43 $53
    ld b, e                                       ; $60ff: $43
    ld b, h                                       ; $6100: $44
    ld d, h                                       ; $6101: $54
    ld h, d                                       ; $6102: $62
    ld h, l                                       ; $6103: $65
    dec h                                         ; $6104: $25
    ld [hl-], a                                   ; $6105: $32
    dec [hl]                                      ; $6106: $35
    ld [hl], e                                    ; $6107: $73
    ld h, d                                       ; $6108: $62
    ld de, $1686                                  ; $6109: $11 $86 $16
    ld d, e                                       ; $610c: $53
    ld b, h                                       ; $610d: $44
    ld b, d                                       ; $610e: $42
    ld b, l                                       ; $610f: $45
    rst RST_38                                    ; $6110: $ff
    ld d, e                                       ; $6111: $53
    ld b, h                                       ; $6112: $44
    ld h, h                                       ; $6113: $64
    ld d, h                                       ; $6114: $54
    rst RST_38                                    ; $6115: $ff
    ld [hl+], a                                   ; $6116: $22
    ld de, $8645                                  ; $6117: $11 $45 $86
    inc de                                        ; $611a: $13
    ld [hl+], a                                   ; $611b: $22
    dec h                                         ; $611c: $25
    ld d, e                                       ; $611d: $53
    add [hl]                                      ; $611e: $86
    ld de, $4412                                  ; $611f: $11 $12 $44
    ld d, $82                                     ; $6122: $16 $82
    inc [hl]                                      ; $6124: $34
    ld d, l                                       ; $6125: $55
    dec h                                         ; $6126: $25
    ld [hl], l                                    ; $6127: $75
    ld [hl], d                                    ; $6128: $72
    ld [hl+], a                                   ; $6129: $22
    ld [hl+], a                                   ; $612a: $22
    add c                                         ; $612b: $81
    add [hl]                                      ; $612c: $86
    ld h, $23                                     ; $612d: $26 $23
    add c                                         ; $612f: $81
    ld d, $63                                     ; $6130: $16 $63
    add [hl]                                      ; $6132: $86
    ld b, l                                       ; $6133: $45
    dec h                                         ; $6134: $25
    ld [hl], l                                    ; $6135: $75
    ld [hl], d                                    ; $6136: $72
    ld h, d                                       ; $6137: $62
    ld h, l                                       ; $6138: $65
    ld [hl], h                                    ; $6139: $74
    ld h, d                                       ; $613a: $62
    halt                                          ; $613b: $76
    ld d, l                                       ; $613c: $55
    ld h, $83                                     ; $613d: $26 $83
    ld h, l                                       ; $613f: $65
    ld h, d                                       ; $6140: $62
    dec d                                         ; $6141: $15
    ld sp, $2162                                  ; $6142: $31 $62 $21
    ld d, d                                       ; $6145: $52
    ld [de], a                                    ; $6146: $12
    ld h, $44                                     ; $6147: $26 $44
    ld d, h                                       ; $6149: $54
    ld h, h                                       ; $614a: $64
    ld b, e                                       ; $614b: $43
    ld d, e                                       ; $614c: $53
    ld [hl], h                                    ; $614d: $74
    ld b, e                                       ; $614e: $43
    ld de, $5416                                  ; $614f: $11 $16 $54
    ld d, c                                       ; $6152: $51
    ld h, [hl]                                    ; $6153: $66
    ld h, $76                                     ; $6154: $26 $76
    ld [hl], $84                                  ; $6156: $36 $84
    inc h                                         ; $6158: $24
    ld de, $1623                                  ; $6159: $11 $23 $16
    ld d, d                                       ; $615c: $52
    dec [hl]                                      ; $615d: $35
    ld [hl-], a                                   ; $615e: $32
    ld h, d                                       ; $615f: $62
    ld h, l                                       ; $6160: $65
    ld [hl], c                                    ; $6161: $71
    ld [hl], l                                    ; $6162: $75
    ld b, h                                       ; $6163: $44
    ld [hl+], a                                   ; $6164: $22
    ld d, $54                                     ; $6165: $16 $54
    ld d, d                                       ; $6167: $52
    ld b, l                                       ; $6168: $45
    ld h, h                                       ; $6169: $64
    inc sp                                        ; $616a: $33
    ld [hl], e                                    ; $616b: $73
    ld sp, $5136                                  ; $616c: $31 $36 $51
    ld d, [hl]                                    ; $616f: $56
    ld d, [hl]                                    ; $6170: $56
    ld b, h                                       ; $6171: $44
    ld de, $5386                                  ; $6172: $11 $86 $53
    ld [de], a                                    ; $6175: $12
    inc sp                                        ; $6176: $33
    ld d, d                                       ; $6177: $52
    ld b, c                                       ; $6178: $41
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    inc bc                                        ; $617b: $03
    nop                                           ; $617c: $00
    nop                                           ; $617d: $00
    ld [de], a                                    ; $617e: $12
    ld [de], a                                    ; $617f: $12
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    dec bc                                        ; $6184: $0b
    nop                                           ; $6185: $00
    add hl, bc                                    ; $6186: $09
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    add hl, de                                    ; $618a: $19
    ld [bc], a                                    ; $618b: $02
    nop                                           ; $618c: $00
    nop                                           ; $618d: $00
    nop                                           ; $618e: $00
    nop                                           ; $618f: $00
    ld c, $00                                     ; $6190: $0e $00
    nop                                           ; $6192: $00
    dec bc                                        ; $6193: $0b
    dec bc                                        ; $6194: $0b
    inc d                                         ; $6195: $14
    nop                                           ; $6196: $00
    add hl, de                                    ; $6197: $19
    nop                                           ; $6198: $00
    ld [hl], e                                    ; $6199: $73
    ld [hl-], a                                   ; $619a: $32
    inc [hl]                                      ; $619b: $34
    ld [hl], l                                    ; $619c: $75
    nop                                           ; $619d: $00
    nop                                           ; $619e: $00
    inc de                                        ; $619f: $13
    nop                                           ; $61a0: $00
    rlca                                          ; $61a1: $07
    rlca                                          ; $61a2: $07
    nop                                           ; $61a3: $00
    nop                                           ; $61a4: $00
    nop                                           ; $61a5: $00
    ld [bc], a                                    ; $61a6: $02
    nop                                           ; $61a7: $00
    nop                                           ; $61a8: $00
    ld d, $00                                     ; $61a9: $16 $00
    inc d                                         ; $61ab: $14
    nop                                           ; $61ac: $00
    add hl, de                                    ; $61ad: $19
    nop                                           ; $61ae: $00
    nop                                           ; $61af: $00
    ld [bc], a                                    ; $61b0: $02
    nop                                           ; $61b1: $00
    inc bc                                        ; $61b2: $03
    nop                                           ; $61b3: $00
    nop                                           ; $61b4: $00
    dec b                                         ; $61b5: $05
    nop                                           ; $61b6: $00
    dec b                                         ; $61b7: $05
    nop                                           ; $61b8: $00
    inc d                                         ; $61b9: $14
    nop                                           ; $61ba: $00
    inc b                                         ; $61bb: $04
    nop                                           ; $61bc: $00
    ld b, d                                       ; $61bd: $42
    ld d, d                                       ; $61be: $52
    ld b, e                                       ; $61bf: $43
    inc sp                                        ; $61c0: $33
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    inc de                                        ; $61c3: $13
    nop                                           ; $61c4: $00
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    dec b                                         ; $61c7: $05
    nop                                           ; $61c8: $00
    nop                                           ; $61c9: $00
    nop                                           ; $61ca: $00
    nop                                           ; $61cb: $00
    rla                                           ; $61cc: $17
    nop                                           ; $61cd: $00
    ld [$0000], sp                                ; $61ce: $08 $00 $00
    nop                                           ; $61d1: $00
    nop                                           ; $61d2: $00
    add hl, de                                    ; $61d3: $19
    nop                                           ; $61d4: $00
    nop                                           ; $61d5: $00
    nop                                           ; $61d6: $00
    nop                                           ; $61d7: $00
    nop                                           ; $61d8: $00
    nop                                           ; $61d9: $00
    dec b                                         ; $61da: $05
    nop                                           ; $61db: $00
    nop                                           ; $61dc: $00
    ld [bc], a                                    ; $61dd: $02
    nop                                           ; $61de: $00
    nop                                           ; $61df: $00
    nop                                           ; $61e0: $00
    ld b, e                                       ; $61e1: $43
    ld d, h                                       ; $61e2: $54
    ld h, l                                       ; $61e3: $65
    dec [hl]                                      ; $61e4: $35
    nop                                           ; $61e5: $00
    ld b, $00                                     ; $61e6: $06 $00
    nop                                           ; $61e8: $00
    rlca                                          ; $61e9: $07
    rlca                                          ; $61ea: $07
    nop                                           ; $61eb: $00
    nop                                           ; $61ec: $00
    nop                                           ; $61ed: $00
    dec bc                                        ; $61ee: $0b
    nop                                           ; $61ef: $00
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    nop                                           ; $61f2: $00
    nop                                           ; $61f3: $00
    inc d                                         ; $61f4: $14
    add hl, de                                    ; $61f5: $19
    add hl, de                                    ; $61f6: $19
    add hl, de                                    ; $61f7: $19
    nop                                           ; $61f8: $00
    nop                                           ; $61f9: $00
    ld de, $0016                                  ; $61fa: $11 $16 $00
    jr jr_003_6217                                ; $61fd: $18 $18

    jr jr_003_6201                                ; $61ff: $18 $00

jr_003_6201:
    nop                                           ; $6201: $00
    add hl, de                                    ; $6202: $19
    nop                                           ; $6203: $00
    inc d                                         ; $6204: $14
    ld d, e                                       ; $6205: $53
    ld [hl], h                                    ; $6206: $74
    ld h, $66                                     ; $6207: $26 $66
    nop                                           ; $6209: $00
    nop                                           ; $620a: $00
    inc b                                         ; $620b: $04
    inc b                                         ; $620c: $04
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    dec b                                         ; $620f: $05
    dec b                                         ; $6210: $05
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    ld [bc], a                                    ; $6214: $02
    inc b                                         ; $6215: $04
    nop                                           ; $6216: $00

jr_003_6217:
    nop                                           ; $6217: $00
    add hl, bc                                    ; $6218: $09
    nop                                           ; $6219: $00
    nop                                           ; $621a: $00
    add hl, de                                    ; $621b: $19
    add hl, de                                    ; $621c: $19
    inc de                                        ; $621d: $13
    ld d, $00                                     ; $621e: $16 $00
    nop                                           ; $6220: $00
    dec b                                         ; $6221: $05
    nop                                           ; $6222: $00
    dec b                                         ; $6223: $05
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    inc d                                         ; $6227: $14
    ld d, $22                                     ; $6228: $16 $22
    ld [hl], d                                    ; $622a: $72
    ld d, $86                                     ; $622b: $16 $86
    nop                                           ; $622d: $00
    inc de                                        ; $622e: $13
    nop                                           ; $622f: $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    rlca                                          ; $6233: $07
    rlca                                          ; $6234: $07
    nop                                           ; $6235: $00
    ld [bc], a                                    ; $6236: $02
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623a: $00
    add hl, bc                                    ; $623b: $09
    nop                                           ; $623c: $00
    nop                                           ; $623d: $00
    rla                                           ; $623e: $17
    ld [bc], a                                    ; $623f: $02
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    dec b                                         ; $6243: $05
    dec b                                         ; $6244: $05
    ld a, [bc]                                    ; $6245: $0a
    ld a, [bc]                                    ; $6246: $0a
    jr jr_003_6249                                ; $6247: $18 $00

jr_003_6249:
    inc de                                        ; $6249: $13
    inc de                                        ; $624a: $13
    jr jr_003_6265                                ; $624b: $18 $18

    ld h, e                                       ; $624d: $63
    ld hl, $7426                                  ; $624e: $21 $26 $74
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    inc de                                        ; $6254: $13
    dec b                                         ; $6255: $05
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    dec bc                                        ; $6259: $0b
    nop                                           ; $625a: $00
    add hl, de                                    ; $625b: $19
    nop                                           ; $625c: $00
    nop                                           ; $625d: $00
    nop                                           ; $625e: $00
    inc d                                         ; $625f: $14
    ld [$0000], sp                                ; $6260: $08 $00 $00
    ld [bc], a                                    ; $6263: $02
    add hl, de                                    ; $6264: $19

jr_003_6265:
    stop                                          ; $6265: $10 $00
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626a: $00
    ld a, [bc]                                    ; $626b: $0a
    ld a, [bc]                                    ; $626c: $0a
    nop                                           ; $626d: $00
    inc d                                         ; $626e: $14
    ld [bc], a                                    ; $626f: $02
    nop                                           ; $6270: $00
    inc sp                                        ; $6271: $33
    ld d, e                                       ; $6272: $53
    ld d, l                                       ; $6273: $55
    ld b, e                                       ; $6274: $43
    inc bc                                        ; $6275: $03
    inc bc                                        ; $6276: $03
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    dec b                                         ; $627a: $05
    nop                                           ; $627b: $00
    nop                                           ; $627c: $00
    dec bc                                        ; $627d: $0b
    nop                                           ; $627e: $00
    add hl, de                                    ; $627f: $19
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    inc d                                         ; $6284: $14
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    ld d, $1a                                     ; $6287: $16 $1a
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    ld d, $0f                                     ; $628b: $16 $0f
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    ld d, $11                                     ; $628f: $16 $11
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    inc c                                         ; $6294: $0c
    ld h, d                                       ; $6295: $62
    ld d, e                                       ; $6296: $53
    ld h, h                                       ; $6297: $64
    ld b, l                                       ; $6298: $45
    ld b, $06                                     ; $6299: $06 $06
    nop                                           ; $629b: $00
    nop                                           ; $629c: $00
    nop                                           ; $629d: $00
    ld [de], a                                    ; $629e: $12
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    dec bc                                        ; $62a1: $0b
    nop                                           ; $62a2: $00
    nop                                           ; $62a3: $00
    rla                                           ; $62a4: $17
    ld b, $00                                     ; $62a5: $06 $00
    add hl, bc                                    ; $62a7: $09
    nop                                           ; $62a8: $00
    ld [bc], a                                    ; $62a9: $02
    nop                                           ; $62aa: $00
    add hl, de                                    ; $62ab: $19
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    stop                                          ; $62ae: $10 $00
    ld d, $09                                     ; $62b0: $16 $09
    nop                                           ; $62b2: $00
    add hl, bc                                    ; $62b3: $09
    nop                                           ; $62b4: $00
    dec bc                                        ; $62b5: $0b
    dec bc                                        ; $62b6: $0b
    nop                                           ; $62b7: $00
    nop                                           ; $62b8: $00
    inc h                                         ; $62b9: $24
    ld d, h                                       ; $62ba: $54
    ld [hl], e                                    ; $62bb: $73
    add [hl]                                      ; $62bc: $86
    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00
    dec b                                         ; $62c1: $05
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    ld d, $00                                     ; $62c5: $16 $00
    dec c                                         ; $62c7: $0d
    nop                                           ; $62c8: $00
    nop                                           ; $62c9: $00
    inc b                                         ; $62ca: $04
    nop                                           ; $62cb: $00
    nop                                           ; $62cc: $00
    nop                                           ; $62cd: $00
    ld a, [bc]                                    ; $62ce: $0a
    ld a, [bc]                                    ; $62cf: $0a
    nop                                           ; $62d0: $00
    nop                                           ; $62d1: $00
    inc bc                                        ; $62d2: $03
    dec c                                         ; $62d3: $0d
    nop                                           ; $62d4: $00
    nop                                           ; $62d5: $00
    ld a, [bc]                                    ; $62d6: $0a
    nop                                           ; $62d7: $00
    add hl, de                                    ; $62d8: $19
    nop                                           ; $62d9: $00
    ld [bc], a                                    ; $62da: $02
    dec c                                         ; $62db: $0d
    nop                                           ; $62dc: $00
    add [hl]                                      ; $62dd: $86
    ld d, e                                       ; $62de: $53
    inc sp                                        ; $62df: $33
    ld [hl-], a                                   ; $62e0: $32
    add hl, de                                    ; $62e1: $19
    inc bc                                        ; $62e2: $03
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    ld d, $00                                     ; $62e6: $16 $00
    dec c                                         ; $62e8: $0d
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    nop                                           ; $62eb: $00
    dec c                                         ; $62ec: $0d
    nop                                           ; $62ed: $00
    inc d                                         ; $62ee: $14
    nop                                           ; $62ef: $00
    nop                                           ; $62f0: $00
    add hl, de                                    ; $62f1: $19
    ld [bc], a                                    ; $62f2: $02
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    nop                                           ; $62f7: $00
    dec c                                         ; $62f8: $0d
    inc de                                        ; $62f9: $13
    nop                                           ; $62fa: $00
    ld a, [de]                                    ; $62fb: $1a
    nop                                           ; $62fc: $00
    inc d                                         ; $62fd: $14
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    nop                                           ; $6300: $00
    ld d, h                                       ; $6301: $54
    dec [hl]                                      ; $6302: $35
    ld hl, $0062                                  ; $6303: $21 $62 $00
    inc b                                         ; $6306: $04
    inc b                                         ; $6307: $04
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    dec b                                         ; $630b: $05
    nop                                           ; $630c: $00
    ld d, $02                                     ; $630d: $16 $02
    nop                                           ; $630f: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    inc d                                         ; $6312: $14
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    ld a, [de]                                    ; $6315: $1a
    nop                                           ; $6316: $00
    inc bc                                        ; $6317: $03
    nop                                           ; $6318: $00
    dec de                                        ; $6319: $1b
    nop                                           ; $631a: $00
    ld d, $00                                     ; $631b: $16 $00
    nop                                           ; $631d: $00
    dec b                                         ; $631e: $05
    add hl, bc                                    ; $631f: $09
    nop                                           ; $6320: $00
    dec de                                        ; $6321: $1b
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    ld [bc], a                                    ; $6324: $02
    ld h, e                                       ; $6325: $63
    ld d, h                                       ; $6326: $54
    inc sp                                        ; $6327: $33
    ld d, l                                       ; $6328: $55
    rlca                                          ; $6329: $07
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    nop                                           ; $632c: $00
    dec b                                         ; $632d: $05
    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    dec d                                         ; $6330: $15
    ld [bc], a                                    ; $6331: $02
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    inc d                                         ; $6338: $14
    nop                                           ; $6339: $00
    nop                                           ; $633a: $00
    ld a, [de]                                    ; $633b: $1a
    add hl, de                                    ; $633c: $19
    ld d, $00                                     ; $633d: $16 $00
    dec de                                        ; $633f: $1b
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    dec b                                         ; $6343: $05
    dec b                                         ; $6344: $05
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    dec de                                        ; $6347: $1b
    inc b                                         ; $6348: $04
    ld h, [hl]                                    ; $6349: $66
    ld [hl], e                                    ; $634a: $73
    inc h                                         ; $634b: $24
    ld b, d                                       ; $634c: $42
    nop                                           ; $634d: $00
    inc de                                        ; $634e: $13
    nop                                           ; $634f: $00
    nop                                           ; $6350: $00
    dec b                                         ; $6351: $05
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    dec b                                         ; $6354: $05
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    dec bc                                        ; $6357: $0b
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    inc d                                         ; $635a: $14
    ld d, $00                                     ; $635b: $16 $00
    ld [bc], a                                    ; $635d: $02
    inc b                                         ; $635e: $04
    nop                                           ; $635f: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    dec de                                        ; $6363: $1b
    nop                                           ; $6364: $00
    inc bc                                        ; $6365: $03
    dec bc                                        ; $6366: $0b
    inc bc                                        ; $6367: $03
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    add hl, de                                    ; $636a: $19
    dec de                                        ; $636b: $1b
    nop                                           ; $636c: $00
    inc hl                                        ; $636d: $23
    ld [hl], e                                    ; $636e: $73
    inc [hl]                                      ; $636f: $34
    ld h, h                                       ; $6370: $64
    inc de                                        ; $6371: $13
    inc bc                                        ; $6372: $03
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    ld [de], a                                    ; $6375: $12
    rlca                                          ; $6376: $07
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637a: $00
    inc bc                                        ; $637b: $03
    dec bc                                        ; $637c: $0b
    ld [$0014], sp                                ; $637d: $08 $14 $00
    nop                                           ; $6380: $00
    ld [bc], a                                    ; $6381: $02
    nop                                           ; $6382: $00
    ld [bc], a                                    ; $6383: $02
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    dec bc                                        ; $6387: $0b
    dec bc                                        ; $6388: $0b
    ld [de], a                                    ; $6389: $12
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    ld [de], a                                    ; $638c: $12
    inc d                                         ; $638d: $14
    nop                                           ; $638e: $00
    inc b                                         ; $638f: $04
    nop                                           ; $6390: $00
    inc [hl]                                      ; $6391: $34
    ld [hl], h                                    ; $6392: $74
    ld h, d                                       ; $6393: $62
    inc hl                                        ; $6394: $23
    inc b                                         ; $6395: $04
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    ld b, $00                                     ; $6398: $06 $00
    rlca                                          ; $639a: $07
    dec b                                         ; $639b: $05
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    add hl, de                                    ; $639e: $19
    nop                                           ; $639f: $00
    ld [bc], a                                    ; $63a0: $02
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    ld d, $09                                     ; $63a3: $16 $09
    ld a, [de]                                    ; $63a5: $1a
    add hl, de                                    ; $63a6: $19
    nop                                           ; $63a7: $00
    nop                                           ; $63a8: $00
    dec de                                        ; $63a9: $1b
    nop                                           ; $63aa: $00
    ld d, $00                                     ; $63ab: $16 $00
    nop                                           ; $63ad: $00
    dec b                                         ; $63ae: $05
    dec b                                         ; $63af: $05
    jr jr_003_63cd                                ; $63b0: $18 $1b

    inc d                                         ; $63b2: $14
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    ld [hl], d                                    ; $63b5: $72
    ld b, e                                       ; $63b6: $43
    dec [hl]                                      ; $63b7: $35
    ld h, h                                       ; $63b8: $64
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00
    inc bc                                        ; $63bb: $03
    nop                                           ; $63bc: $00
    dec b                                         ; $63bd: $05
    dec b                                         ; $63be: $05
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    nop                                           ; $63c3: $00
    ld [bc], a                                    ; $63c4: $02
    nop                                           ; $63c5: $00
    ld d, $00                                     ; $63c6: $16 $00
    inc d                                         ; $63c8: $14
    nop                                           ; $63c9: $00
    ld a, [de]                                    ; $63ca: $1a
    nop                                           ; $63cb: $00
    nop                                           ; $63cc: $00

jr_003_63cd:
    nop                                           ; $63cd: $00
    dec de                                        ; $63ce: $1b
    nop                                           ; $63cf: $00
    nop                                           ; $63d0: $00
    dec b                                         ; $63d1: $05
    dec b                                         ; $63d2: $05
    inc bc                                        ; $63d3: $03
    nop                                           ; $63d4: $00
    dec b                                         ; $63d5: $05
    dec de                                        ; $63d6: $1b
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    ld hl, $2564                                  ; $63d9: $21 $64 $25
    ld d, d                                       ; $63dc: $52
    ld b, $00                                     ; $63dd: $06 $00
    nop                                           ; $63df: $00
    nop                                           ; $63e0: $00
    inc bc                                        ; $63e1: $03
    nop                                           ; $63e2: $00
    dec c                                         ; $63e3: $0d
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    ld [bc], a                                    ; $63e6: $02
    nop                                           ; $63e7: $00
    ld d, $00                                     ; $63e8: $16 $00
    ld [$000d], sp                                ; $63ea: $08 $0d $00
    nop                                           ; $63ed: $00
    ld [bc], a                                    ; $63ee: $02
    ld a, [bc]                                    ; $63ef: $0a
    nop                                           ; $63f0: $00
    ld [$0d00], sp                                ; $63f1: $08 $00 $0d
    nop                                           ; $63f4: $00
    ld d, $0a                                     ; $63f5: $16 $0a
    ld a, [bc]                                    ; $63f7: $0a
    nop                                           ; $63f8: $00
    dec b                                         ; $63f9: $05
    nop                                           ; $63fa: $00
    dec c                                         ; $63fb: $0d
    dec b                                         ; $63fc: $05
    ld h, l                                       ; $63fd: $65
    ld h, c                                       ; $63fe: $61
    ld sp, $0083                                  ; $63ff: $31 $83 $00
    nop                                           ; $6402: $00
    ld b, $04                                     ; $6403: $06 $04
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    rlca                                          ; $6407: $07
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    ld a, [bc]                                    ; $640a: $0a
    ld a, [bc]                                    ; $640b: $0a
    add hl, de                                    ; $640c: $19
    nop                                           ; $640d: $00
    inc d                                         ; $640e: $14
    nop                                           ; $640f: $00
    nop                                           ; $6410: $00
    ld a, [de]                                    ; $6411: $1a
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    add hl, de                                    ; $6414: $19
    dec de                                        ; $6415: $1b
    ld d, $00                                     ; $6416: $16 $00
    nop                                           ; $6418: $00
    dec b                                         ; $6419: $05
    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    dec b                                         ; $641c: $05
    dec de                                        ; $641d: $1b
    nop                                           ; $641e: $00
    ld [bc], a                                    ; $641f: $02
    add hl, de                                    ; $6420: $19
    inc [hl]                                      ; $6421: $34
    ld d, d                                       ; $6422: $52
    ld [hl+], a                                   ; $6423: $22
    ld [hl], l                                    ; $6424: $75
    ld b, $00                                     ; $6425: $06 $00
    ld d, $00                                     ; $6427: $16 $00
    nop                                           ; $6429: $00
    rlca                                          ; $642a: $07
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    ld [bc], a                                    ; $642d: $02
    ld d, $00                                     ; $642e: $16 $00
    nop                                           ; $6430: $00
    ld a, [bc]                                    ; $6431: $0a
    nop                                           ; $6432: $00
    ld a, [bc]                                    ; $6433: $0a
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    ld a, [de]                                    ; $6437: $1a
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    dec de                                        ; $643b: $1b
    ld d, $03                                     ; $643c: $16 $03
    nop                                           ; $643e: $00
    dec b                                         ; $643f: $05
    dec b                                         ; $6440: $05
    nop                                           ; $6441: $00
    inc d                                         ; $6442: $14
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    inc [hl]                                      ; $6445: $34
    ld [hl], d                                    ; $6446: $72
    ld hl, $1356                                  ; $6447: $21 $56 $13
    nop                                           ; $644a: $00
    inc bc                                        ; $644b: $03
    nop                                           ; $644c: $00
    nop                                           ; $644d: $00
    ld d, $05                                     ; $644e: $16 $05
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    ld a, [bc]                                    ; $6452: $0a
    ld a, [bc]                                    ; $6453: $0a
    nop                                           ; $6454: $00
    ld [bc], a                                    ; $6455: $02
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    ld a, [de]                                    ; $6459: $1a
    ld d, $00                                     ; $645a: $16 $00
    nop                                           ; $645c: $00
    dec de                                        ; $645d: $1b
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    dec b                                         ; $6461: $05
    dec b                                         ; $6462: $05
    dec b                                         ; $6463: $05
    nop                                           ; $6464: $00
    inc d                                         ; $6465: $14
    nop                                           ; $6466: $00
    ld a, [bc]                                    ; $6467: $0a
    nop                                           ; $6468: $00
    ld d, e                                       ; $6469: $53
    ld de, $4286                                  ; $646a: $11 $86 $42
    inc de                                        ; $646d: $13
    nop                                           ; $646e: $00
    ld d, $00                                     ; $646f: $16 $00
    nop                                           ; $6471: $00
    dec b                                         ; $6472: $05
    dec b                                         ; $6473: $05
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    dec bc                                        ; $6478: $0b
    add hl, bc                                    ; $6479: $09
    nop                                           ; $647a: $00
    nop                                           ; $647b: $00
    ld [$0002], sp                                ; $647c: $08 $02 $00
    nop                                           ; $647f: $00
    ld [bc], a                                    ; $6480: $02
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    ld c, $18                                     ; $6484: $0e $18
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    jr jr_003_649e                                ; $6488: $18 $14

    nop                                           ; $648a: $00
    nop                                           ; $648b: $00
    ld [bc], a                                    ; $648c: $02
    ld d, h                                       ; $648d: $54
    ld b, d                                       ; $648e: $42
    ld d, $81                                     ; $648f: $16 $81
    ld b, $06                                     ; $6491: $06 $06
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    rlca                                          ; $6495: $07
    rlca                                          ; $6496: $07
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    dec bc                                        ; $649a: $0b
    nop                                           ; $649b: $00
    add hl, de                                    ; $649c: $19
    add hl, bc                                    ; $649d: $09

jr_003_649e:
    ld b, $00                                     ; $649e: $06 $00
    nop                                           ; $64a0: $00
    ld a, [de]                                    ; $64a1: $1a
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    inc b                                         ; $64a4: $04
    nop                                           ; $64a5: $00
    ld de, $0016                                  ; $64a6: $11 $16 $00
    add hl, bc                                    ; $64a9: $09
    ld [de], a                                    ; $64aa: $12
    nop                                           ; $64ab: $00
    nop                                           ; $64ac: $00
    nop                                           ; $64ad: $00
    inc d                                         ; $64ae: $14
    dec b                                         ; $64af: $05
    nop                                           ; $64b0: $00
    ld d, e                                       ; $64b1: $53
    ld b, e                                       ; $64b2: $43
    ld [hl], l                                    ; $64b3: $75
    dec d                                         ; $64b4: $15
    ld b, $06                                     ; $64b5: $06 $06
    nop                                           ; $64b7: $00
    nop                                           ; $64b8: $00
    dec d                                         ; $64b9: $15
    nop                                           ; $64ba: $00
    dec b                                         ; $64bb: $05
    nop                                           ; $64bc: $00
    dec bc                                        ; $64bd: $0b
    nop                                           ; $64be: $00
    add hl, de                                    ; $64bf: $19
    nop                                           ; $64c0: $00
    add hl, bc                                    ; $64c1: $09
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    nop                                           ; $64c4: $00
    ld [bc], a                                    ; $64c5: $02
    nop                                           ; $64c6: $00
    add hl, de                                    ; $64c7: $19
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    ld de, $0000                                  ; $64ca: $11 $00 $00
    jr jr_003_64e7                                ; $64cd: $18 $18

    inc bc                                        ; $64cf: $03
    nop                                           ; $64d0: $00
    nop                                           ; $64d1: $00
    ld de, $0003                                  ; $64d2: $11 $03 $00
    ld h, d                                       ; $64d5: $62
    ld [hl], e                                    ; $64d6: $73
    ld h, $14                                     ; $64d7: $26 $14
    ld b, $00                                     ; $64d9: $06 $00
    ld b, $00                                     ; $64db: $06 $00
    inc bc                                        ; $64dd: $03
    nop                                           ; $64de: $00
    inc bc                                        ; $64df: $03
    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    dec bc                                        ; $64e2: $0b
    nop                                           ; $64e3: $00
    nop                                           ; $64e4: $00
    add hl, bc                                    ; $64e5: $09
    inc bc                                        ; $64e6: $03

jr_003_64e7:
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    add hl, de                                    ; $64eb: $19
    ld [bc], a                                    ; $64ec: $02
    nop                                           ; $64ed: $00
    dec bc                                        ; $64ee: $0b
    nop                                           ; $64ef: $00
    inc bc                                        ; $64f0: $03
    jr jr_003_64f6                                ; $64f1: $18 $03

    jr jr_003_64f5                                ; $64f3: $18 $00

jr_003_64f5:
    nop                                           ; $64f5: $00

jr_003_64f6:
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    inc d                                         ; $64f8: $14
    ld h, l                                       ; $64f9: $65
    ld h, $22                                     ; $64fa: $26 $22
    ld b, c                                       ; $64fc: $41
    inc de                                        ; $64fd: $13
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    nop                                           ; $6500: $00
    rla                                           ; $6501: $17
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    ld [de], a                                    ; $6504: $12
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    dec bc                                        ; $6508: $0b
    nop                                           ; $6509: $00
    inc d                                         ; $650a: $14
    nop                                           ; $650b: $00
    ld [$191a], sp                                ; $650c: $08 $1a $19
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    inc bc                                        ; $6512: $03
    nop                                           ; $6513: $00
    ld c, $02                                     ; $6514: $0e $02
    nop                                           ; $6516: $00
    ld [bc], a                                    ; $6517: $02
    nop                                           ; $6518: $00
    rrca                                          ; $6519: $0f
    add hl, de                                    ; $651a: $19
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    ld d, h                                       ; $651d: $54
    ld h, [hl]                                    ; $651e: $66
    add c                                         ; $651f: $81
    ld [hl+], a                                   ; $6520: $22
    inc de                                        ; $6521: $13
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    dec b                                         ; $6526: $05
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    add hl, de                                    ; $652b: $19
    ld [bc], a                                    ; $652c: $02
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    inc d                                         ; $652f: $14
    nop                                           ; $6530: $00
    ld [bc], a                                    ; $6531: $02
    nop                                           ; $6532: $00
    add hl, de                                    ; $6533: $19
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    rla                                           ; $6536: $17
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    rlca                                          ; $6539: $07
    nop                                           ; $653a: $00
    nop                                           ; $653b: $00
    ld [bc], a                                    ; $653c: $02
    nop                                           ; $653d: $00
    inc d                                         ; $653e: $14
    nop                                           ; $653f: $00
    inc bc                                        ; $6540: $03
    ld b, e                                       ; $6541: $43
    ld h, d                                       ; $6542: $62
    ld h, l                                       ; $6543: $65
    inc [hl]                                      ; $6544: $34
    ld b, $04                                     ; $6545: $06 $04
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    rlca                                          ; $6549: $07
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    nop                                           ; $654c: $00
    rlca                                          ; $654d: $07
    rla                                           ; $654e: $17
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    add hl, bc                                    ; $6554: $09
    ld a, [de]                                    ; $6555: $1a
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    ld c, $00                                     ; $6559: $0e $00
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    inc de                                        ; $655d: $13
    inc b                                         ; $655e: $04
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    ld c, $00                                     ; $6561: $0e $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    inc hl                                        ; $6565: $23
    ld d, e                                       ; $6566: $53
    ld b, d                                       ; $6567: $42
    ld h, l                                       ; $6568: $65
    ld b, $00                                     ; $6569: $06 $00
    ld b, $00                                     ; $656b: $06 $00
    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    ld [de], a                                    ; $656f: $12
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    dec bc                                        ; $6572: $0b
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    add hl, bc                                    ; $6575: $09
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    inc b                                         ; $6578: $04
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00
    inc d                                         ; $657b: $14
    nop                                           ; $657c: $00
    ld [$0e00], sp                                ; $657d: $08 $00 $0e
    nop                                           ; $6580: $00
    add hl, de                                    ; $6581: $19
    add hl, de                                    ; $6582: $19
    add hl, de                                    ; $6583: $19
    add hl, de                                    ; $6584: $19
    inc d                                         ; $6585: $14
    ld [bc], a                                    ; $6586: $02
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    ld d, c                                       ; $6589: $51
    ld b, d                                       ; $658a: $42
    inc sp                                        ; $658b: $33
    ld h, h                                       ; $658c: $64
    nop                                           ; $658d: $00
    inc de                                        ; $658e: $13
    nop                                           ; $658f: $00
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    rlca                                          ; $6593: $07
    rlca                                          ; $6594: $07
    nop                                           ; $6595: $00
    ld [de], a                                    ; $6596: $12
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659a: $00
    nop                                           ; $659b: $00
    inc d                                         ; $659c: $14
    nop                                           ; $659d: $00
    ld [bc], a                                    ; $659e: $02
    nop                                           ; $659f: $00
    nop                                           ; $65a0: $00
    nop                                           ; $65a1: $00
    nop                                           ; $65a2: $00
    jr jr_003_65bd                                ; $65a3: $18 $18

    ld b, $06                                     ; $65a5: $06 $06
    ld b, $06                                     ; $65a7: $06 $06
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    inc bc                                        ; $65ab: $03
    inc d                                         ; $65ac: $14
    ld h, e                                       ; $65ad: $63
    ld d, $35                                     ; $65ae: $16 $35
    ld [hl], c                                    ; $65b0: $71
    ld b, $00                                     ; $65b1: $06 $00
    ld b, $00                                     ; $65b3: $06 $00
    rlca                                          ; $65b5: $07
    nop                                           ; $65b6: $00
    rlca                                          ; $65b7: $07
    nop                                           ; $65b8: $00
    ld [bc], a                                    ; $65b9: $02
    nop                                           ; $65ba: $00
    nop                                           ; $65bb: $00
    nop                                           ; $65bc: $00

jr_003_65bd:
    add hl, bc                                    ; $65bd: $09
    nop                                           ; $65be: $00
    inc bc                                        ; $65bf: $03
    nop                                           ; $65c0: $00
    inc d                                         ; $65c1: $14
    nop                                           ; $65c2: $00
    add hl, de                                    ; $65c3: $19
    nop                                           ; $65c4: $00
    rla                                           ; $65c5: $17
    nop                                           ; $65c6: $00
    add hl, bc                                    ; $65c7: $09
    nop                                           ; $65c8: $00
    dec b                                         ; $65c9: $05
    inc bc                                        ; $65ca: $03
    nop                                           ; $65cb: $00
    ld [bc], a                                    ; $65cc: $02
    inc d                                         ; $65cd: $14
    rla                                           ; $65ce: $17
    nop                                           ; $65cf: $00
    nop                                           ; $65d0: $00
    inc sp                                        ; $65d1: $33
    add c                                         ; $65d2: $81
    ld d, h                                       ; $65d3: $54
    ld d, $00                                     ; $65d4: $16 $00
    inc b                                         ; $65d6: $04
    inc de                                        ; $65d7: $13
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    dec d                                         ; $65da: $15
    nop                                           ; $65db: $00
    ld [de], a                                    ; $65dc: $12
    ld [bc], a                                    ; $65dd: $02
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    rla                                           ; $65e0: $17
    add hl, bc                                    ; $65e1: $09
    inc b                                         ; $65e2: $04
    nop                                           ; $65e3: $00
    nop                                           ; $65e4: $00
    nop                                           ; $65e5: $00
    ld [bc], a                                    ; $65e6: $02
    nop                                           ; $65e7: $00
    ld [bc], a                                    ; $65e8: $02
    jr jr_003_65eb                                ; $65e9: $18 $00

jr_003_65eb:
    jr jr_003_65ed                                ; $65eb: $18 $00

jr_003_65ed:
    dec b                                         ; $65ed: $05
    inc bc                                        ; $65ee: $03
    dec b                                         ; $65ef: $05
    inc bc                                        ; $65f0: $03
    inc bc                                        ; $65f1: $03
    inc d                                         ; $65f2: $14
    nop                                           ; $65f3: $00
    nop                                           ; $65f4: $00
    inc hl                                        ; $65f5: $23
    ld [hl], h                                    ; $65f6: $74
    ld h, e                                       ; $65f7: $63
    ld b, d                                       ; $65f8: $42
    nop                                           ; $65f9: $00
    inc bc                                        ; $65fa: $03
    nop                                           ; $65fb: $00
    nop                                           ; $65fc: $00
    inc bc                                        ; $65fd: $03
    nop                                           ; $65fe: $00
    nop                                           ; $65ff: $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    rla                                           ; $6603: $17
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    ld b, $00                                     ; $6606: $06 $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    inc bc                                        ; $660a: $03
    nop                                           ; $660b: $00
    add hl, de                                    ; $660c: $19
    ld [$0003], sp                                ; $660d: $08 $03 $00
    nop                                           ; $6610: $00
    ld [bc], a                                    ; $6611: $02
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    inc d                                         ; $6617: $14
    nop                                           ; $6618: $00
    inc [hl]                                      ; $6619: $34
    ld d, $22                                     ; $661a: $16 $22
    ld d, d                                       ; $661c: $52
    ld b, $00                                     ; $661d: $06 $00
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    ld [de], a                                    ; $6621: $12
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    rla                                           ; $6626: $17
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
    add hl, bc                                    ; $6629: $09
    nop                                           ; $662a: $00
    inc bc                                        ; $662b: $03
    nop                                           ; $662c: $00
    ld a, [de]                                    ; $662d: $1a
    add hl, de                                    ; $662e: $19
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    stop                                          ; $6631: $10 $00
    ld [$0e00], sp                                ; $6633: $08 $00 $0e
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    inc c                                         ; $6639: $0c
    nop                                           ; $663a: $00
    dec b                                         ; $663b: $05
    nop                                           ; $663c: $00
    ld d, e                                       ; $663d: $53
    inc h                                         ; $663e: $24
    ld [hl], c                                    ; $663f: $71
    ld h, [hl]                                    ; $6640: $66
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    ld b, $00                                     ; $6644: $06 $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    ld b, $00                                     ; $6648: $06 $00
    ld d, $00                                     ; $664a: $16 $00
    inc bc                                        ; $664c: $03
    ld d, $00                                     ; $664d: $16 $00
    nop                                           ; $664f: $00
    add hl, bc                                    ; $6650: $09
    ld a, [de]                                    ; $6651: $1a
    nop                                           ; $6652: $00
    ld d, $00                                     ; $6653: $16 $00
    dec de                                        ; $6655: $1b
    ld d, $00                                     ; $6656: $16 $00
    nop                                           ; $6658: $00
    ld [de], a                                    ; $6659: $12
    nop                                           ; $665a: $00
    inc b                                         ; $665b: $04
    nop                                           ; $665c: $00
    dec de                                        ; $665d: $1b
    nop                                           ; $665e: $00
    inc bc                                        ; $665f: $03
    nop                                           ; $6660: $00
    inc h                                         ; $6661: $24
    ld d, e                                       ; $6662: $53
    halt                                          ; $6663: $76
    ld [hl-], a                                   ; $6664: $32
    nop                                           ; $6665: $00
    inc de                                        ; $6666: $13
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    rlca                                          ; $666b: $07
    nop                                           ; $666c: $00
    nop                                           ; $666d: $00
    dec bc                                        ; $666e: $0b
    nop                                           ; $666f: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    inc d                                         ; $6672: $14
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    ld [bc], a                                    ; $6677: $02
    rla                                           ; $6678: $17
    ld d, $0f                                     ; $6679: $16 $0f
    nop                                           ; $667b: $00
    nop                                           ; $667c: $00
    jr @+$1a                                      ; $667d: $18 $18

    jr jr_003_6699                                ; $667f: $18 $18

    inc c                                         ; $6681: $0c
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    jr jr_003_66d9                                ; $6684: $18 $53

    ld [hl+], a                                   ; $6686: $22
    dec [hl]                                      ; $6687: $35
    halt                                          ; $6688: $76
    inc b                                         ; $6689: $04
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    dec d                                         ; $668e: $15
    nop                                           ; $668f: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    add hl, de                                    ; $6692: $19
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    ld [$0016], sp                                ; $6695: $08 $16 $00
    nop                                           ; $6698: $00

jr_003_6699:
    ld a, [de]                                    ; $6699: $1a
    nop                                           ; $669a: $00
    ld d, $00                                     ; $669b: $16 $00
    inc c                                         ; $669d: $0c
    nop                                           ; $669e: $00
    nop                                           ; $669f: $00
    nop                                           ; $66a0: $00
    ld a, [bc]                                    ; $66a1: $0a
    nop                                           ; $66a2: $00
    nop                                           ; $66a3: $00
    nop                                           ; $66a4: $00
    stop                                          ; $66a5: $10 $00
    nop                                           ; $66a7: $00
    nop                                           ; $66a8: $00
    ld d, h                                       ; $66a9: $54
    inc hl                                        ; $66aa: $23
    ld [hl], $31                                  ; $66ab: $36 $31
    inc bc                                        ; $66ad: $03
    nop                                           ; $66ae: $00
    nop                                           ; $66af: $00
    nop                                           ; $66b0: $00
    rlca                                          ; $66b1: $07
    nop                                           ; $66b2: $00
    nop                                           ; $66b3: $00
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    nop                                           ; $66b6: $00
    nop                                           ; $66b7: $00
    rla                                           ; $66b8: $17
    nop                                           ; $66b9: $00
    inc b                                         ; $66ba: $04
    nop                                           ; $66bb: $00
    jr jr_003_66be                                ; $66bc: $18 $00

jr_003_66be:
    ld [bc], a                                    ; $66be: $02
    jr jr_003_66c1                                ; $66bf: $18 $00

jr_003_66c1:
    ld c, $00                                     ; $66c1: $0e $00
    nop                                           ; $66c3: $00
    nop                                           ; $66c4: $00
    nop                                           ; $66c5: $00
    nop                                           ; $66c6: $00
    jr jr_003_66e1                                ; $66c7: $18 $18

    inc c                                         ; $66c9: $0c
    nop                                           ; $66ca: $00
    nop                                           ; $66cb: $00
    nop                                           ; $66cc: $00
    ld [hl+], a                                   ; $66cd: $22
    ld b, h                                       ; $66ce: $44
    add c                                         ; $66cf: $81
    ld h, $00                                     ; $66d0: $26 $00
    nop                                           ; $66d2: $00
    inc bc                                        ; $66d3: $03
    nop                                           ; $66d4: $00
    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    nop                                           ; $66d7: $00
    inc bc                                        ; $66d8: $03

jr_003_66d9:
    nop                                           ; $66d9: $00
    ld b, $00                                     ; $66da: $06 $00
    nop                                           ; $66dc: $00
    nop                                           ; $66dd: $00
    ld d, $04                                     ; $66de: $16 $04
    nop                                           ; $66e0: $00

jr_003_66e1:
    ld d, $1a                                     ; $66e1: $16 $1a
    nop                                           ; $66e3: $00
    nop                                           ; $66e4: $00
    nop                                           ; $66e5: $00
    dec de                                        ; $66e6: $1b
    nop                                           ; $66e7: $00
    nop                                           ; $66e8: $00
    dec b                                         ; $66e9: $05
    nop                                           ; $66ea: $00
    dec b                                         ; $66eb: $05
    nop                                           ; $66ec: $00
    nop                                           ; $66ed: $00
    dec de                                        ; $66ee: $1b
    nop                                           ; $66ef: $00
    nop                                           ; $66f0: $00
    ld b, h                                       ; $66f1: $44
    inc h                                         ; $66f2: $24
    ld [de], a                                    ; $66f3: $12
    halt                                          ; $66f4: $76
    nop                                           ; $66f5: $00
    nop                                           ; $66f6: $00
    ld b, $00                                     ; $66f7: $06 $00
    ld d, $07                                     ; $66f9: $16 $07
    nop                                           ; $66fb: $00
    nop                                           ; $66fc: $00
    nop                                           ; $66fd: $00
    nop                                           ; $66fe: $00
    nop                                           ; $66ff: $00
    add hl, de                                    ; $6700: $19
    add hl, bc                                    ; $6701: $09
    ld d, $00                                     ; $6702: $16 $00
    nop                                           ; $6704: $00
    ld d, $00                                     ; $6705: $16 $00
    nop                                           ; $6707: $00
    add hl, de                                    ; $6708: $19
    rrca                                          ; $6709: $0f
    nop                                           ; $670a: $00
    nop                                           ; $670b: $00
    nop                                           ; $670c: $00
    inc de                                        ; $670d: $13
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
    nop                                           ; $6710: $00
    inc c                                         ; $6711: $0c
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    inc hl                                        ; $6715: $23
    ld [hl], h                                    ; $6716: $74
    ld h, e                                       ; $6717: $63
    ld b, d                                       ; $6718: $42
    nop                                           ; $6719: $00
    nop                                           ; $671a: $00
    nop                                           ; $671b: $00
    nop                                           ; $671c: $00
    nop                                           ; $671d: $00
    nop                                           ; $671e: $00
    nop                                           ; $671f: $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00
    nop                                           ; $672c: $00
    nop                                           ; $672d: $00
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    ld [de], a                                    ; $6739: $12
    ld [hl], h                                    ; $673a: $74
    ld b, c                                       ; $673b: $41
    ld d, [hl]                                    ; $673c: $56
    nop                                           ; $673d: $00
    nop                                           ; $673e: $00
    nop                                           ; $673f: $00
    ld b, $00                                     ; $6740: $06 $00
    rlca                                          ; $6742: $07
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    rla                                           ; $6745: $17
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    add hl, bc                                    ; $674b: $09
    nop                                           ; $674c: $00
    ld [bc], a                                    ; $674d: $02
    nop                                           ; $674e: $00
    nop                                           ; $674f: $00
    nop                                           ; $6750: $00
    ld [de], a                                    ; $6751: $12
    nop                                           ; $6752: $00
    ld d, $00                                     ; $6753: $16 $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    jr jr_003_6771                                ; $6757: $18 $18

    ld [bc], a                                    ; $6759: $02
    inc de                                        ; $675a: $13
    nop                                           ; $675b: $00
    nop                                           ; $675c: $00
    ld d, h                                       ; $675d: $54
    ld [hl-], a                                   ; $675e: $32
    dec d                                         ; $675f: $15
    ld [hl], c                                    ; $6760: $71
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    ld b, $00                                     ; $6763: $06 $00
    inc bc                                        ; $6765: $03
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    dec bc                                        ; $6769: $0b
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    ld d, $13                                     ; $676d: $16 $13
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00

jr_003_6771:
    ld [bc], a                                    ; $6771: $02
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    add hl, de                                    ; $6774: $19
    ld d, $11                                     ; $6775: $16 $11
    nop                                           ; $6777: $00
    nop                                           ; $6778: $00
    ld [de], a                                    ; $6779: $12
    nop                                           ; $677a: $00
    jr jr_003_677d                                ; $677b: $18 $00

jr_003_677d:
    inc c                                         ; $677d: $0c
    inc de                                        ; $677e: $13
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    ld [hl], h                                    ; $6781: $74
    ld b, l                                       ; $6782: $45
    ld h, e                                       ; $6783: $63
    ld b, d                                       ; $6784: $42
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    rlca                                          ; $678a: $07
    nop                                           ; $678b: $00
    nop                                           ; $678c: $00
    inc bc                                        ; $678d: $03
    nop                                           ; $678e: $00
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    ld [$0000], sp                                ; $6791: $08 $00 $00
    nop                                           ; $6794: $00
    ld [bc], a                                    ; $6795: $02
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    inc bc                                        ; $679a: $03
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    jr jr_003_67a2                                ; $679d: $18 $03

    nop                                           ; $679f: $00
    nop                                           ; $67a0: $00
    inc d                                         ; $67a1: $14

jr_003_67a2:
    nop                                           ; $67a2: $00
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    ld b, d                                       ; $67a5: $42
    ld [hl], h                                    ; $67a6: $74
    ld h, e                                       ; $67a7: $63
    ld b, d                                       ; $67a8: $42
    nop                                           ; $67a9: $00
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    nop                                           ; $67b0: $00
    rla                                           ; $67b1: $17
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    nop                                           ; $67b4: $00
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    nop                                           ; $67b8: $00
    nop                                           ; $67b9: $00
    ld [bc], a                                    ; $67ba: $02
    nop                                           ; $67bb: $00
    nop                                           ; $67bc: $00
    inc bc                                        ; $67bd: $03
    nop                                           ; $67be: $00
    nop                                           ; $67bf: $00
    nop                                           ; $67c0: $00
    nop                                           ; $67c1: $00
    inc bc                                        ; $67c2: $03
    nop                                           ; $67c3: $00
    nop                                           ; $67c4: $00
    ld [bc], a                                    ; $67c5: $02
    nop                                           ; $67c6: $00
    nop                                           ; $67c7: $00
    nop                                           ; $67c8: $00
    ld b, d                                       ; $67c9: $42
    ld h, l                                       ; $67ca: $65
    add h                                         ; $67cb: $84
    ld b, [hl]                                    ; $67cc: $46
    inc de                                        ; $67cd: $13
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    dec d                                         ; $67d3: $15
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    nop                                           ; $67d6: $00
    rla                                           ; $67d7: $17
    nop                                           ; $67d8: $00
    rlca                                          ; $67d9: $07
    nop                                           ; $67da: $00
    inc b                                         ; $67db: $04
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    nop                                           ; $67de: $00
    jr @+$04                                      ; $67df: $18 $02

    nop                                           ; $67e1: $00
    ld d, $00                                     ; $67e2: $16 $00
    nop                                           ; $67e4: $00
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    ld a, [bc]                                    ; $67e8: $0a
    inc d                                         ; $67e9: $14
    inc de                                        ; $67ea: $13
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    inc sp                                        ; $67ed: $33
    ld h, l                                       ; $67ee: $65
    ld [hl], d                                    ; $67ef: $72
    ld d, c                                       ; $67f0: $51
    nop                                           ; $67f1: $00
    inc bc                                        ; $67f2: $03
    nop                                           ; $67f3: $00
    nop                                           ; $67f4: $00
    rlca                                          ; $67f5: $07
    rlca                                          ; $67f6: $07
    nop                                           ; $67f7: $00
    nop                                           ; $67f8: $00
    nop                                           ; $67f9: $00
    nop                                           ; $67fa: $00
    nop                                           ; $67fb: $00
    dec bc                                        ; $67fc: $0b
    nop                                           ; $67fd: $00
    nop                                           ; $67fe: $00
    inc d                                         ; $67ff: $14
    nop                                           ; $6800: $00
    add hl, de                                    ; $6801: $19
    ld a, [bc]                                    ; $6802: $0a
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    db $10                                        ; $6805: $10
    ld d, $00                                     ; $6806: $16 $00
    nop                                           ; $6808: $00
    dec bc                                        ; $6809: $0b
    add hl, bc                                    ; $680a: $09
    nop                                           ; $680b: $00
    nop                                           ; $680c: $00
    rrca                                          ; $680d: $0f
    add hl, bc                                    ; $680e: $09
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    ld d, h                                       ; $6811: $54
    ld h, $33                                     ; $6812: $26 $33
    ld [hl], l                                    ; $6814: $75
    inc bc                                        ; $6815: $03
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    ld d, $00                                     ; $6819: $16 $00
    dec b                                         ; $681b: $05
    nop                                           ; $681c: $00
    inc bc                                        ; $681d: $03
    inc bc                                        ; $681e: $03
    nop                                           ; $681f: $00
    nop                                           ; $6820: $00
    ld [$1600], sp                                ; $6821: $08 $00 $16
    nop                                           ; $6824: $00
    ld a, [de]                                    ; $6825: $1a
    add hl, de                                    ; $6826: $19
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    dec de                                        ; $6829: $1b
    nop                                           ; $682a: $00
    ld d, $00                                     ; $682b: $16 $00
    ld [$0014], sp                                ; $682d: $08 $14 $00
    nop                                           ; $6830: $00
    inc d                                         ; $6831: $14
    ld [bc], a                                    ; $6832: $02
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    ld de, $8116                                  ; $6835: $11 $16 $81
    inc sp                                        ; $6838: $33
    nop                                           ; $6839: $00
    nop                                           ; $683a: $00
    inc bc                                        ; $683b: $03
    nop                                           ; $683c: $00
    rlca                                          ; $683d: $07
    nop                                           ; $683e: $00
    nop                                           ; $683f: $00
    ld d, $00                                     ; $6840: $16 $00
    nop                                           ; $6842: $00
    add hl, de                                    ; $6843: $19
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    add hl, bc                                    ; $6846: $09
    nop                                           ; $6847: $00
    ld d, $00                                     ; $6848: $16 $00
    nop                                           ; $684a: $00
    add hl, de                                    ; $684b: $19
    ld a, [de]                                    ; $684c: $1a
    nop                                           ; $684d: $00
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    dec de                                        ; $6850: $1b
    nop                                           ; $6851: $00
    ld a, [bc]                                    ; $6852: $0a
    nop                                           ; $6853: $00
    ld d, $02                                     ; $6854: $16 $02
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    ld a, [de]                                    ; $6858: $1a
    ld d, h                                       ; $6859: $54
    add d                                         ; $685a: $82
    ld [hl], $15                                  ; $685b: $36 $15
    ld b, $00                                     ; $685d: $06 $00
    nop                                           ; $685f: $00
    nop                                           ; $6860: $00
    dec d                                         ; $6861: $15
    ld b, $00                                     ; $6862: $06 $00
    nop                                           ; $6864: $00
    dec bc                                        ; $6865: $0b
    nop                                           ; $6866: $00
    ld d, $00                                     ; $6867: $16 $00
    inc b                                         ; $6869: $04
    nop                                           ; $686a: $00
    add hl, bc                                    ; $686b: $09
    nop                                           ; $686c: $00
    ld [bc], a                                    ; $686d: $02
    nop                                           ; $686e: $00
    nop                                           ; $686f: $00
    ld [$030e], sp                                ; $6870: $08 $0e $03
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    ld [de], a                                    ; $6875: $12
    inc de                                        ; $6876: $13
    jr jr_003_6879                                ; $6877: $18 $00

jr_003_6879:
    ld c, $00                                     ; $6879: $0e $00
    ld b, $00                                     ; $687b: $06 $00
    ld d, h                                       ; $687d: $54
    inc hl                                        ; $687e: $23
    ld [hl], $11                                  ; $687f: $36 $11
    inc de                                        ; $6881: $13
    ld d, $00                                     ; $6882: $16 $00
    nop                                           ; $6884: $00
    dec b                                         ; $6885: $05
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    add hl, de                                    ; $6889: $19
    nop                                           ; $688a: $00
    inc bc                                        ; $688b: $03
    nop                                           ; $688c: $00
    nop                                           ; $688d: $00
    ld d, $00                                     ; $688e: $16 $00
    add hl, bc                                    ; $6890: $09
    nop                                           ; $6891: $00
    ld a, [de]                                    ; $6892: $1a
    jr jr_003_6895                                ; $6893: $18 $00

jr_003_6895:
    nop                                           ; $6895: $00
    dec de                                        ; $6896: $1b
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    jr jr_003_689b                                ; $6899: $18 $00

jr_003_689b:
    nop                                           ; $689b: $00
    ld a, [bc]                                    ; $689c: $0a
    nop                                           ; $689d: $00
    ld a, [de]                                    ; $689e: $1a
    ld [bc], a                                    ; $689f: $02
    nop                                           ; $68a0: $00
    ld b, e                                       ; $68a1: $43
    ld [hl+], a                                   ; $68a2: $22
    add c                                         ; $68a3: $81
    inc d                                         ; $68a4: $14
    ld b, $00                                     ; $68a5: $06 $00
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    ld [de], a                                    ; $68a9: $12
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    ld [bc], a                                    ; $68ae: $02
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    add hl, bc                                    ; $68b2: $09
    ld [$0000], sp                                ; $68b3: $08 $00 $00
    jr @+$04                                      ; $68b6: $18 $02

    nop                                           ; $68b8: $00
    ld c, $00                                     ; $68b9: $0e $00
    ld [$1200], sp                                ; $68bb: $08 $00 $12
    nop                                           ; $68be: $00
    add hl, de                                    ; $68bf: $19
    nop                                           ; $68c0: $00
    ld c, $13                                     ; $68c1: $0e $13
    nop                                           ; $68c3: $00
    nop                                           ; $68c4: $00
    inc [hl]                                      ; $68c5: $34
    ld [hl+], a                                   ; $68c6: $22
    ld d, c                                       ; $68c7: $51
    dec d                                         ; $68c8: $15
    inc de                                        ; $68c9: $13
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    nop                                           ; $68cc: $00
    nop                                           ; $68cd: $00
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    dec b                                         ; $68d0: $05
    nop                                           ; $68d1: $00
    ld d, $0b                                     ; $68d2: $16 $0b
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    inc d                                         ; $68d7: $14
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    add hl, de                                    ; $68da: $19
    ld [bc], a                                    ; $68db: $02
    nop                                           ; $68dc: $00
    db $10                                        ; $68dd: $10
    ld d, $00                                     ; $68de: $16 $00
    nop                                           ; $68e0: $00
    inc de                                        ; $68e1: $13
    nop                                           ; $68e2: $00
    ld [de], a                                    ; $68e3: $12
    nop                                           ; $68e4: $00
    rrca                                          ; $68e5: $0f
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    dec b                                         ; $68e8: $05
    inc [hl]                                      ; $68e9: $34
    ld [hl+], a                                   ; $68ea: $22
    dec h                                         ; $68eb: $25
    ld [hl], l                                    ; $68ec: $75
    ld b, $00                                     ; $68ed: $06 $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    dec d                                         ; $68f2: $15
    nop                                           ; $68f3: $00
    dec d                                         ; $68f4: $15
    rla                                           ; $68f5: $17
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    add hl, bc                                    ; $68f9: $09
    ld [$0000], sp                                ; $68fa: $08 $00 $00
    ld [bc], a                                    ; $68fd: $02
    nop                                           ; $68fe: $00
    nop                                           ; $68ff: $00
    nop                                           ; $6900: $00
    rrca                                          ; $6901: $0f
    nop                                           ; $6902: $00
    ld d, $00                                     ; $6903: $16 $00
    nop                                           ; $6905: $00
    jr jr_003_690e                                ; $6906: $18 $06

    ld b, $10                                     ; $6908: $06 $10
    add hl, de                                    ; $690a: $19
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    inc [hl]                                      ; $690d: $34

jr_003_690e:
    ld h, l                                       ; $690e: $65
    ld [hl+], a                                   ; $690f: $22
    ld [hl], h                                    ; $6910: $74
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    ld b, $00                                     ; $6913: $06 $00
    dec b                                         ; $6915: $05
    ld d, $00                                     ; $6916: $16 $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    ld d, $17                                     ; $691a: $16 $17
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    inc b                                         ; $691e: $04
    add hl, bc                                    ; $691f: $09
    nop                                           ; $6920: $00
    ld a, [de]                                    ; $6921: $1a
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    ld d, $1b                                     ; $6924: $16 $1b
    nop                                           ; $6926: $00
    ld d, $00                                     ; $6927: $16 $00
    nop                                           ; $6929: $00
    add hl, de                                    ; $692a: $19
    nop                                           ; $692b: $00
    inc d                                         ; $692c: $14
    ld c, $0a                                     ; $692d: $0e $0a
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    ld b, l                                       ; $6931: $45
    ld d, $81                                     ; $6932: $16 $81
    inc sp                                        ; $6934: $33
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    inc bc                                        ; $693d: $03
    nop                                           ; $693e: $00
    nop                                           ; $693f: $00
    nop                                           ; $6940: $00
    inc bc                                        ; $6941: $03
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    inc bc                                        ; $6945: $03
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    inc bc                                        ; $6949: $03
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    inc bc                                        ; $694d: $03
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    inc bc                                        ; $6951: $03
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    ld d, e                                       ; $6955: $53
    dec h                                         ; $6956: $25
    add c                                         ; $6957: $81
    ld sp, $0006                                  ; $6958: $31 $06 $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    dec b                                         ; $695d: $05
    ld d, $00                                     ; $695e: $16 $00
    nop                                           ; $6960: $00
    ld d, $0b                                     ; $6961: $16 $0b
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    ld d, $00                                     ; $6965: $16 $00
    nop                                           ; $6967: $00
    add hl, bc                                    ; $6968: $09
    ld a, [de]                                    ; $6969: $1a
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    ld [$0000], sp                                ; $696d: $08 $00 $00
    jr jr_003_6977                                ; $6970: $18 $05

    inc de                                        ; $6972: $13
    nop                                           ; $6973: $00
    dec b                                         ; $6974: $05
    nop                                           ; $6975: $00
    inc d                                         ; $6976: $14

jr_003_6977:
    ld [bc], a                                    ; $6977: $02
    nop                                           ; $6978: $00
    ld b, h                                       ; $6979: $44
    inc hl                                        ; $697a: $23
    ld [hl], d                                    ; $697b: $72
    add l                                         ; $697c: $85
    inc b                                         ; $697d: $04
    nop                                           ; $697e: $00
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    rlca                                          ; $6981: $07
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    add hl, de                                    ; $6986: $19
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    add hl, bc                                    ; $6989: $09
    ld b, $00                                     ; $698a: $06 $00
    nop                                           ; $698c: $00
    ld d, $00                                     ; $698d: $16 $00
    nop                                           ; $698f: $00
    ld [bc], a                                    ; $6990: $02
    inc c                                         ; $6991: $0c
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    ld c, $00                                     ; $6995: $0e $00
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    rrca                                          ; $6999: $0f
    nop                                           ; $699a: $00
    dec b                                         ; $699b: $05
    nop                                           ; $699c: $00
    inc [hl]                                      ; $699d: $34
    ld h, d                                       ; $699e: $62
    halt                                          ; $699f: $76
    ld hl, $0013                                  ; $69a0: $21 $13 $00
    nop                                           ; $69a3: $00
    nop                                           ; $69a4: $00
    ld [de], a                                    ; $69a5: $12
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    nop                                           ; $69a8: $00
    nop                                           ; $69a9: $00
    dec bc                                        ; $69aa: $0b
    inc bc                                        ; $69ab: $03
    nop                                           ; $69ac: $00
    add hl, bc                                    ; $69ad: $09
    nop                                           ; $69ae: $00
    nop                                           ; $69af: $00
    inc bc                                        ; $69b0: $03
    ld d, $0a                                     ; $69b1: $16 $0a
    nop                                           ; $69b3: $00
    nop                                           ; $69b4: $00
    ld c, $00                                     ; $69b5: $0e $00
    nop                                           ; $69b7: $00
    nop                                           ; $69b8: $00
    ld c, $16                                     ; $69b9: $0e $16
    nop                                           ; $69bb: $00
    nop                                           ; $69bc: $00
    inc c                                         ; $69bd: $0c
    nop                                           ; $69be: $00
    nop                                           ; $69bf: $00
    nop                                           ; $69c0: $00
    ld de, $8116                                  ; $69c1: $11 $16 $81
    inc sp                                        ; $69c4: $33
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
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    nop                                           ; $69d6: $00
    nop                                           ; $69d7: $00
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    nop                                           ; $69db: $00
    nop                                           ; $69dc: $00
    nop                                           ; $69dd: $00
    nop                                           ; $69de: $00
    nop                                           ; $69df: $00
    nop                                           ; $69e0: $00
    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    nop                                           ; $69e3: $00
    nop                                           ; $69e4: $00
    ld b, e                                       ; $69e5: $43
    ld h, $86                                     ; $69e6: $26 $86
    ld h, h                                       ; $69e8: $64
    inc bc                                        ; $69e9: $03
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    nop                                           ; $69ec: $00
    rlca                                          ; $69ed: $07
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    ld [bc], a                                    ; $69f1: $02
    nop                                           ; $69f2: $00
    nop                                           ; $69f3: $00
    ld d, $00                                     ; $69f4: $16 $00
    ld [$0003], sp                                ; $69f6: $08 $03 $00
    ld a, [de]                                    ; $69f9: $1a
    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    ld c, $00                                     ; $69fd: $0e $00
    nop                                           ; $69ff: $00
    ld d, $00                                     ; $6a00: $16 $00
    jr jr_003_6a06                                ; $6a02: $18 $02

    nop                                           ; $6a04: $00
    dec b                                         ; $6a05: $05

jr_003_6a06:
    dec b                                         ; $6a06: $05
    dec b                                         ; $6a07: $05
    dec b                                         ; $6a08: $05
    inc h                                         ; $6a09: $24
    ld [hl], e                                    ; $6a0a: $73
    ld b, c                                       ; $6a0b: $41
    ld d, [hl]                                    ; $6a0c: $56
    nop                                           ; $6a0d: $00
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    rlca                                          ; $6a13: $07
    nop                                           ; $6a14: $00
    inc bc                                        ; $6a15: $03
    nop                                           ; $6a16: $00
    nop                                           ; $6a17: $00
    nop                                           ; $6a18: $00
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    nop                                           ; $6a1b: $00
    ld [$1800], sp                                ; $6a1c: $08 $00 $18
    nop                                           ; $6a1f: $00
    nop                                           ; $6a20: $00
    nop                                           ; $6a21: $00
    nop                                           ; $6a22: $00
    ld [$0000], sp                                ; $6a23: $08 $00 $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    ld [bc], a                                    ; $6a2a: $02
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    inc [hl]                                      ; $6a2d: $34
    ld [hl+], a                                   ; $6a2e: $22
    ld d, $65                                     ; $6a2f: $16 $65
    nop                                           ; $6a31: $00
    nop                                           ; $6a32: $00
    ld b, $00                                     ; $6a33: $06 $00
    jr jr_003_6a37                                ; $6a35: $18 $00

jr_003_6a37:
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    dec bc                                        ; $6a39: $0b
    nop                                           ; $6a3a: $00
    nop                                           ; $6a3b: $00
    nop                                           ; $6a3c: $00
    nop                                           ; $6a3d: $00
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    add hl, bc                                    ; $6a40: $09
    ld [bc], a                                    ; $6a41: $02
    nop                                           ; $6a42: $00
    add hl, de                                    ; $6a43: $19
    nop                                           ; $6a44: $00
    stop                                          ; $6a45: $10 $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    add hl, bc                                    ; $6a4a: $09
    add hl, de                                    ; $6a4b: $19
    add hl, bc                                    ; $6a4c: $09
    db $10                                        ; $6a4d: $10
    dec b                                         ; $6a4e: $05
    nop                                           ; $6a4f: $00
    nop                                           ; $6a50: $00
    dec h                                         ; $6a51: $25
    ld h, c                                       ; $6a52: $61
    ld b, d                                       ; $6a53: $42
    ld [hl], h                                    ; $6a54: $74
    inc de                                        ; $6a55: $13
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    dec b                                         ; $6a5b: $05
    nop                                           ; $6a5c: $00
    dec bc                                        ; $6a5d: $0b
    nop                                           ; $6a5e: $00
    ld d, $00                                     ; $6a5f: $16 $00
    add hl, bc                                    ; $6a61: $09
    inc bc                                        ; $6a62: $03
    nop                                           ; $6a63: $00
    nop                                           ; $6a64: $00
    ld a, [bc]                                    ; $6a65: $0a
    nop                                           ; $6a66: $00
    add hl, de                                    ; $6a67: $19
    nop                                           ; $6a68: $00
    inc de                                        ; $6a69: $13
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    inc de                                        ; $6a6c: $13
    ld [de], a                                    ; $6a6d: $12
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    dec b                                         ; $6a70: $05
    inc d                                         ; $6a71: $14
    ld b, $16                                     ; $6a72: $06 $16
    nop                                           ; $6a74: $00
    ld [hl], l                                    ; $6a75: $75
    ld h, c                                       ; $6a76: $61
    sbc c                                         ; $6a77: $99
    ld h, c                                       ; $6a78: $61
    cp l                                          ; $6a79: $bd
    ld h, c                                       ; $6a7a: $61
    pop hl                                        ; $6a7b: $e1
    ld h, c                                       ; $6a7c: $61
    dec b                                         ; $6a7d: $05
    ld h, d                                       ; $6a7e: $62
    add hl, hl                                    ; $6a7f: $29
    ld h, d                                       ; $6a80: $62
    ld c, l                                       ; $6a81: $4d
    ld h, d                                       ; $6a82: $62
    ld [hl], c                                    ; $6a83: $71
    ld h, d                                       ; $6a84: $62
    sub l                                         ; $6a85: $95
    ld h, d                                       ; $6a86: $62
    cp c                                          ; $6a87: $b9
    ld h, d                                       ; $6a88: $62
    db $dd                                        ; $6a89: $dd
    ld h, d                                       ; $6a8a: $62
    ld bc, $2563                                  ; $6a8b: $01 $63 $25
    ld h, e                                       ; $6a8e: $63
    ld c, c                                       ; $6a8f: $49
    ld h, e                                       ; $6a90: $63
    ld l, l                                       ; $6a91: $6d
    ld h, e                                       ; $6a92: $63
    sub c                                         ; $6a93: $91
    ld h, e                                       ; $6a94: $63
    or l                                          ; $6a95: $b5
    ld h, e                                       ; $6a96: $63
    reti                                          ; $6a97: $d9


    ld h, e                                       ; $6a98: $63
    db $fd                                        ; $6a99: $fd
    ld h, e                                       ; $6a9a: $63
    ld hl, $4564                                  ; $6a9b: $21 $64 $45
    ld h, h                                       ; $6a9e: $64
    ld l, c                                       ; $6a9f: $69
    ld h, h                                       ; $6aa0: $64
    adc l                                         ; $6aa1: $8d
    ld h, h                                       ; $6aa2: $64
    or c                                          ; $6aa3: $b1
    ld h, h                                       ; $6aa4: $64
    push de                                       ; $6aa5: $d5
    ld h, h                                       ; $6aa6: $64
    ld sp, hl                                     ; $6aa7: $f9
    ld h, h                                       ; $6aa8: $64
    dec e                                         ; $6aa9: $1d
    ld h, l                                       ; $6aaa: $65
    ld b, c                                       ; $6aab: $41
    ld h, l                                       ; $6aac: $65
    ld h, l                                       ; $6aad: $65
    ld h, l                                       ; $6aae: $65
    adc c                                         ; $6aaf: $89
    ld h, l                                       ; $6ab0: $65
    xor l                                         ; $6ab1: $ad
    ld h, l                                       ; $6ab2: $65
    pop de                                        ; $6ab3: $d1
    ld h, l                                       ; $6ab4: $65
    push af                                       ; $6ab5: $f5
    ld h, l                                       ; $6ab6: $65
    add hl, de                                    ; $6ab7: $19
    ld h, [hl]                                    ; $6ab8: $66
    dec a                                         ; $6ab9: $3d
    ld h, [hl]                                    ; $6aba: $66
    ld h, c                                       ; $6abb: $61
    ld h, [hl]                                    ; $6abc: $66
    add l                                         ; $6abd: $85
    ld h, [hl]                                    ; $6abe: $66
    xor c                                         ; $6abf: $a9
    ld h, [hl]                                    ; $6ac0: $66
    call $f166                                    ; $6ac1: $cd $66 $f1
    ld h, [hl]                                    ; $6ac4: $66
    dec d                                         ; $6ac5: $15
    ld h, a                                       ; $6ac6: $67
    add hl, sp                                    ; $6ac7: $39
    ld h, a                                       ; $6ac8: $67
    ld e, l                                       ; $6ac9: $5d
    ld h, a                                       ; $6aca: $67
    add c                                         ; $6acb: $81
    ld h, a                                       ; $6acc: $67
    and l                                         ; $6acd: $a5
    ld h, a                                       ; $6ace: $67
    ret                                           ; $6acf: $c9


    ld h, a                                       ; $6ad0: $67
    db $ed                                        ; $6ad1: $ed
    ld h, a                                       ; $6ad2: $67
    ld de, $3568                                  ; $6ad3: $11 $68 $35
    ld l, b                                       ; $6ad6: $68
    ld e, c                                       ; $6ad7: $59
    ld l, b                                       ; $6ad8: $68
    ld a, l                                       ; $6ad9: $7d
    ld l, b                                       ; $6ada: $68
    and c                                         ; $6adb: $a1
    ld l, b                                       ; $6adc: $68
    push bc                                       ; $6add: $c5
    ld l, b                                       ; $6ade: $68
    jp hl                                         ; $6adf: $e9


    ld l, b                                       ; $6ae0: $68
    dec c                                         ; $6ae1: $0d
    ld l, c                                       ; $6ae2: $69
    ld sp, $5569                                  ; $6ae3: $31 $69 $55
    ld l, c                                       ; $6ae6: $69
    ld a, c                                       ; $6ae7: $79
    ld l, c                                       ; $6ae8: $69
    sbc l                                         ; $6ae9: $9d
    ld l, c                                       ; $6aea: $69
    pop bc                                        ; $6aeb: $c1
    ld l, c                                       ; $6aec: $69
    push hl                                       ; $6aed: $e5
    ld l, c                                       ; $6aee: $69
    add hl, bc                                    ; $6aef: $09
    ld l, d                                       ; $6af0: $6a
    dec l                                         ; $6af1: $2d
    ld l, d                                       ; $6af2: $6a
    ld d, c                                       ; $6af3: $51
    ld l, d                                       ; $6af4: $6a
    ld a, [hl-]                                   ; $6af5: $3a
    inc c                                         ; $6af6: $0c
    ld [$132a], sp                                ; $6af7: $08 $2a $13
    dec l                                         ; $6afa: $2d
    ld a, [hl-]                                   ; $6afb: $3a
    ld a, [hl-]                                   ; $6afc: $3a
    ld a, [hl-]                                   ; $6afd: $3a
    rrca                                          ; $6afe: $0f
    jr z, jr_003_6b2e                             ; $6aff: $28 $2d

    db $10                                        ; $6b01: $10
    dec [hl]                                      ; $6b02: $35
    jr z, @+$3c                                   ; $6b03: $28 $3a

    ld a, [hl-]                                   ; $6b05: $3a
    add hl, de                                    ; $6b06: $19
    scf                                           ; $6b07: $37
    inc l                                         ; $6b08: $2c
    rlca                                          ; $6b09: $07
    inc c                                         ; $6b0a: $0c
    ld a, [hl-]                                   ; $6b0b: $3a
    ld a, [hl-]                                   ; $6b0c: $3a
    ld a, [hl-]                                   ; $6b0d: $3a
    ld a, [hl-]                                   ; $6b0e: $3a
    ld [de], a                                    ; $6b0f: $12
    scf                                           ; $6b10: $37
    inc c                                         ; $6b11: $0c
    ld a, [hl-]                                   ; $6b12: $3a
    ld a, [hl-]                                   ; $6b13: $3a
    ld a, [hl-]                                   ; $6b14: $3a
    ld a, [hl-]                                   ; $6b15: $3a
    rlca                                          ; $6b16: $07
    jr z, jr_003_6b34                             ; $6b17: $28 $1b

    scf                                           ; $6b19: $37
    inc c                                         ; $6b1a: $0c
    ld a, [hl-]                                   ; $6b1b: $3a
    ld a, [hl-]                                   ; $6b1c: $3a
    dec bc                                        ; $6b1d: $0b
    scf                                           ; $6b1e: $37
    ld [$0b37], sp                                ; $6b1f: $08 $37 $0b
    scf                                           ; $6b22: $37
    ld [$3a37], sp                                ; $6b23: $08 $37 $3a
    dec e                                         ; $6b26: $1d
    scf                                           ; $6b27: $37
    ld a, [de]                                    ; $6b28: $1a
    scf                                           ; $6b29: $37
    dec l                                         ; $6b2a: $2d
    ld a, [hl-]                                   ; $6b2b: $3a
    ld a, [hl-]                                   ; $6b2c: $3a
    ld a, [hl-]                                   ; $6b2d: $3a

jr_003_6b2e:
    rlca                                          ; $6b2e: $07
    jr z, @+$1d                                   ; $6b2f: $28 $1b

    scf                                           ; $6b31: $37
    dec de                                        ; $6b32: $1b
    scf                                           ; $6b33: $37

jr_003_6b34:
    ld a, [hl-]                                   ; $6b34: $3a
    ld a, [hl-]                                   ; $6b35: $3a
    add hl, bc                                    ; $6b36: $09
    scf                                           ; $6b37: $37
    add hl, sp                                    ; $6b38: $39
    inc c                                         ; $6b39: $0c
    inc de                                        ; $6b3a: $13
    ld a, [hl-]                                   ; $6b3b: $3a
    ld a, [hl-]                                   ; $6b3c: $3a
    ld a, [bc]                                    ; $6b3d: $0a
    ld bc, $2c07                                  ; $6b3e: $01 $07 $2c
    dec de                                        ; $6b41: $1b
    jr c, jr_003_6b50                             ; $6b42: $38 $0c

    ld a, [hl-]                                   ; $6b44: $3a
    dec de                                        ; $6b45: $1b
    scf                                           ; $6b46: $37
    ld a, [hl+]                                   ; $6b47: $2a
    add hl, sp                                    ; $6b48: $39
    inc de                                        ; $6b49: $13
    scf                                           ; $6b4a: $37
    jr z, jr_003_6b56                             ; $6b4b: $28 $09

    ld a, [bc]                                    ; $6b4d: $0a
    jr z, jr_003_6b6e                             ; $6b4e: $28 $1e

jr_003_6b50:
    dec l                                         ; $6b50: $2d
    rrca                                          ; $6b51: $0f
    scf                                           ; $6b52: $37
    add hl, sp                                    ; $6b53: $39
    ld a, [hl-]                                   ; $6b54: $3a
    dec bc                                        ; $6b55: $0b

jr_003_6b56:
    scf                                           ; $6b56: $37
    inc [hl]                                      ; $6b57: $34
    ld bc, $2d00                                  ; $6b58: $01 $00 $2d
    inc de                                        ; $6b5b: $13
    ld a, [hl-]                                   ; $6b5c: $3a
    rrca                                          ; $6b5d: $0f
    scf                                           ; $6b5e: $37
    add hl, sp                                    ; $6b5f: $39
    rlca                                          ; $6b60: $07
    inc de                                        ; $6b61: $13
    scf                                           ; $6b62: $37
    jr z, jr_003_6b6e                             ; $6b63: $28 $09

    dec e                                         ; $6b65: $1d
    ld h, $01                                     ; $6b66: $26 $01
    inc de                                        ; $6b68: $13
    inc de                                        ; $6b69: $13
    scf                                           ; $6b6a: $37
    jr z, jr_003_6b76                             ; $6b6b: $28 $09

    ld a, [hl-]                                   ; $6b6d: $3a

jr_003_6b6e:
    ld a, [hl-]                                   ; $6b6e: $3a
    ld a, [de]                                    ; $6b6f: $1a
    inc de                                        ; $6b70: $13
    scf                                           ; $6b71: $37
    jr z, jr_003_6bae                             ; $6b72: $28 $3a

    ld a, [hl-]                                   ; $6b74: $3a
    ld a, [hl-]                                   ; $6b75: $3a

jr_003_6b76:
    inc e                                         ; $6b76: $1c
    jr c, jr_003_6b85                             ; $6b77: $38 $0c

    rrca                                          ; $6b79: $0f
    add hl, sp                                    ; $6b7a: $39
    ld a, [hl-]                                   ; $6b7b: $3a
    ld a, [hl-]                                   ; $6b7c: $3a
    ld a, [hl-]                                   ; $6b7d: $3a
    rra                                           ; $6b7e: $1f
    jr jr_003_6b90                                ; $6b7f: $18 $0f

    ld [bc], a                                    ; $6b81: $02
    ld a, [hl+]                                   ; $6b82: $2a
    inc c                                         ; $6b83: $0c
    ld a, [hl-]                                   ; $6b84: $3a

jr_003_6b85:
    ld a, [hl-]                                   ; $6b85: $3a
    ld [de], a                                    ; $6b86: $12
    cpl                                           ; $6b87: $2f

jr_003_6b88:
    rrca                                          ; $6b88: $0f
    add hl, sp                                    ; $6b89: $39
    dec l                                         ; $6b8a: $2d
    ld a, [hl-]                                   ; $6b8b: $3a
    ld a, [hl-]                                   ; $6b8c: $3a
    ld a, [hl-]                                   ; $6b8d: $3a
    dec de                                        ; $6b8e: $1b
    scf                                           ; $6b8f: $37

jr_003_6b90:
    ld b, $29                                     ; $6b90: $06 $29
    dec b                                         ; $6b92: $05
    ld a, [hl-]                                   ; $6b93: $3a
    ld a, [hl-]                                   ; $6b94: $3a
    ld a, [hl-]                                   ; $6b95: $3a
    dec de                                        ; $6b96: $1b
    dec hl                                        ; $6b97: $2b
    ld bc, $0020                                  ; $6b98: $01 $20 $00
    ld bc, $3a3a                                  ; $6b9b: $01 $3a $3a
    ld a, [hl-]                                   ; $6b9e: $3a
    dec b                                         ; $6b9f: $05
    scf                                           ; $6ba0: $37
    inc c                                         ; $6ba1: $0c
    ld a, [hl-]                                   ; $6ba2: $3a
    ld a, [hl-]                                   ; $6ba3: $3a
    ld a, [hl-]                                   ; $6ba4: $3a
    dec de                                        ; $6ba5: $1b
    jr c, jr_003_6bd0                             ; $6ba6: $38 $28

    inc d                                         ; $6ba8: $14
    add hl, hl                                    ; $6ba9: $29
    nop                                           ; $6baa: $00
    dec l                                         ; $6bab: $2d
    ld a, [hl-]                                   ; $6bac: $3a
    ld a, [hl-]                                   ; $6bad: $3a

jr_003_6bae:
    ld a, [hl-]                                   ; $6bae: $3a
    rra                                           ; $6baf: $1f
    rra                                           ; $6bb0: $1f
    inc sp                                        ; $6bb1: $33
    rlca                                          ; $6bb2: $07
    ld a, [hl-]                                   ; $6bb3: $3a
    ld a, [hl-]                                   ; $6bb4: $3a
    ld b, $2d                                     ; $6bb5: $06 $2d
    rlca                                          ; $6bb7: $07
    scf                                           ; $6bb8: $37
    add hl, de                                    ; $6bb9: $19
    scf                                           ; $6bba: $37
    inc sp                                        ; $6bbb: $33
    inc de                                        ; $6bbc: $13
    ld a, [hl-]                                   ; $6bbd: $3a
    ld a, [hl-]                                   ; $6bbe: $3a
    ld a, [de]                                    ; $6bbf: $1a
    add hl, hl                                    ; $6bc0: $29
    dec [hl]                                      ; $6bc1: $35
    ld [bc], a                                    ; $6bc2: $02
    ld a, [hl-]                                   ; $6bc3: $3a
    ld a, [hl-]                                   ; $6bc4: $3a
    nop                                           ; $6bc5: $00
    ld b, b                                       ; $6bc6: $40
    jr jr_003_6bc9                                ; $6bc7: $18 $00

jr_003_6bc9:
    add b                                         ; $6bc9: $80
    jr nz, jr_003_6bcc                            ; $6bca: $20 $00

jr_003_6bcc:
    add l                                         ; $6bcc: $85
    add hl, de                                    ; $6bcd: $19
    nop                                           ; $6bce: $00
    halt                                          ; $6bcf: $76

jr_003_6bd0:
    jr nz, jr_003_6bd3                            ; $6bd0: $20 $01

    db $10                                        ; $6bd2: $10

jr_003_6bd3:
    ld hl, $4300                                  ; $6bd3: $21 $00 $43
    ld [de], a                                    ; $6bd6: $12
    nop                                           ; $6bd7: $00
    ld e, b                                       ; $6bd8: $58
    dec d                                         ; $6bd9: $15
    ld [bc], a                                    ; $6bda: $02
    jr nc, jr_003_6c32                            ; $6bdb: $30 $55

    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    inc d                                         ; $6bdf: $14
    ld [bc], a                                    ; $6be0: $02
    add b                                         ; $6be1: $80
    ld h, e                                       ; $6be2: $63
    dec b                                         ; $6be3: $05
    ld d, l                                       ; $6be4: $55
    sbc c                                         ; $6be5: $99
    ld [bc], a                                    ; $6be6: $02
    ld [hl], l                                    ; $6be7: $75
    ld e, b                                       ; $6be8: $58
    ld b, $30                                     ; $6be9: $06 $30
    sbc c                                         ; $6beb: $99
    dec b                                         ; $6bec: $05
    jr nc, jr_003_6b88                            ; $6bed: $30 $99

    dec b                                         ; $6bef: $05
    add b                                         ; $6bf0: $80
    sbc c                                         ; $6bf1: $99
    rlca                                          ; $6bf2: $07
    ld [hl], a                                    ; $6bf3: $77
    sbc c                                         ; $6bf4: $99
    inc bc                                        ; $6bf5: $03
    nop                                           ; $6bf6: $00
    ld d, l                                       ; $6bf7: $55
    ld bc, $2370                                  ; $6bf8: $01 $70 $23
    ld bc, $2020                                  ; $6bfb: $01 $20 $20
    nop                                           ; $6bfe: $00
    ld d, b                                       ; $6bff: $50

Call_003_6c00:
Jump_003_6c00:
    ld [$3000], sp                                ; $6c00: $08 $00 $30
    ld b, $00                                     ; $6c03: $06 $00
    nop                                           ; $6c05: $00
    stop                                          ; $6c06: $10 $00
    ld d, b                                       ; $6c08: $50
    ld de, $3000                                  ; $6c09: $11 $00 $30
    dec b                                         ; $6c0c: $05
    ld [bc], a                                    ; $6c0d: $02
    jr nc, jr_003_6c40                            ; $6c0e: $30 $30

    ld b, $10                                     ; $6c10: $06 $10
    sbc c                                         ; $6c12: $99
    ld a, [bc]                                    ; $6c13: $0a
    inc b                                         ; $6c14: $04
    inc d                                         ; $6c15: $14
    inc b                                         ; $6c16: $04
    inc d                                         ; $6c17: $14
    ld b, $10                                     ; $6c18: $06 $10
    ld b, $14                                     ; $6c1a: $06 $14
    ld b, $06                                     ; $6c1c: $06 $06
    inc b                                         ; $6c1e: $04
    ld b, $04                                     ; $6c1f: $06 $04
    jr z, jr_003_6c2d                             ; $6c21: $28 $0a

    nop                                           ; $6c23: $00
    inc b                                         ; $6c24: $04
    jr z, jr_003_6c31                             ; $6c25: $28 $0a

    inc l                                         ; $6c27: $2c
    db $10                                        ; $6c28: $10
    jr nz, jr_003_6c35                            ; $6c29: $20 $0a

    inc l                                         ; $6c2b: $2c
    db $10                                        ; $6c2c: $10

jr_003_6c2d:
    inc l                                         ; $6c2d: $2c
    db $10                                        ; $6c2e: $10
    inc l                                         ; $6c2f: $2c

jr_003_6c30:
    db $10                                        ; $6c30: $10

jr_003_6c31:
    inc l                                         ; $6c31: $2c

jr_003_6c32:
    db $10                                        ; $6c32: $10
    jr z, jr_003_6c3f                             ; $6c33: $28 $0a

jr_003_6c35:
    inc d                                         ; $6c35: $14
    inc b                                         ; $6c36: $04
    ld a, [bc]                                    ; $6c37: $0a
    inc b                                         ; $6c38: $04
    inc b                                         ; $6c39: $04
    ld [bc], a                                    ; $6c3a: $02
    ld [bc], a                                    ; $6c3b: $02
    ld [bc], a                                    ; $6c3c: $02
    nop                                           ; $6c3d: $00
    ld [bc], a                                    ; $6c3e: $02

jr_003_6c3f:
    ld a, [bc]                                    ; $6c3f: $0a

jr_003_6c40:
    inc b                                         ; $6c40: $04
    inc b                                         ; $6c41: $04
    nop                                           ; $6c42: $00
    jr nz, @+$0c                                  ; $6c43: $20 $0a

    inc l                                         ; $6c45: $2c
    db $10                                        ; $6c46: $10
    ld c, $40                                     ; $6c47: $0e $40
    ld hl, $6c69                                  ; $6c49: $21 $69 $6c
    jr jr_003_6c61                                ; $6c4c: $18 $13

    ld c, $3c                                     ; $6c4e: $0e $3c
    ld hl, $6ca9                                  ; $6c50: $21 $a9 $6c
    jr jr_003_6c61                                ; $6c53: $18 $0c

    ld c, $34                                     ; $6c55: $0e $34
    ld hl, $6ce5                                  ; $6c57: $21 $e5 $6c
    jr jr_003_6c61                                ; $6c5a: $18 $05

    ld c, $34                                     ; $6c5c: $0e $34
    ld hl, $6d19                                  ; $6c5e: $21 $19 $6d

jr_003_6c61:
    ld b, $00                                     ; $6c61: $06 $00
    ld de, $da00                                  ; $6c63: $11 $00 $da

jr_003_6c66:
    jp Jump_003_6ecf                              ; $6c66: $c3 $cf $6e


    ld l, h                                       ; $6c69: $6c
    jr nc, jr_003_6c30                            ; $6c6a: $30 $c4

    nop                                           ; $6c6c: $00
    ld l, h                                       ; $6c6d: $6c
    add hl, sp                                    ; $6c6e: $39
    jp nc, Jump_003_6c00                          ; $6c6f: $d2 $00 $6c

    ld b, d                                       ; $6c72: $42
    xor d                                         ; $6c73: $aa
    nop                                           ; $6c74: $00
    ld l, h                                       ; $6c75: $6c

jr_003_6c76:
    ld c, e                                       ; $6c76: $4b
    adc d                                         ; $6c77: $8a
    nop                                           ; $6c78: $00
    ld l, h                                       ; $6c79: $6c
    ld d, h                                       ; $6c7a: $54
    sub d                                         ; $6c7b: $92
    nop                                           ; $6c7c: $00
    ld l, h                                       ; $6c7d: $6c
    ld e, l                                       ; $6c7e: $5d
    cp h                                          ; $6c7f: $bc
    nop                                           ; $6c80: $00
    ld l, h                                       ; $6c81: $6c
    ld h, [hl]                                    ; $6c82: $66
    sub $00                                       ; $6c83: $d6 $00
    ld l, h                                       ; $6c85: $6c
    ld l, a                                       ; $6c86: $6f
    sbc [hl]                                      ; $6c87: $9e
    nop                                           ; $6c88: $00
    ld a, h                                       ; $6c89: $7c
    ld b, b                                       ; $6c8a: $40
    ret z                                         ; $6c8b: $c8

    nop                                           ; $6c8c: $00
    ld a, h                                       ; $6c8d: $7c
    ld c, c                                       ; $6c8e: $49
    and b                                         ; $6c8f: $a0
    nop                                           ; $6c90: $00
    ld a, h                                       ; $6c91: $7c
    ld d, d                                       ; $6c92: $52
    ldh a, [c]                                    ; $6c93: $f2
    nop                                           ; $6c94: $00
    ld a, h                                       ; $6c95: $7c
    ld e, e                                       ; $6c96: $5b
    jp z, Jump_003_7c00                           ; $6c97: $ca $00 $7c

    ld h, e                                       ; $6c9a: $63
    xor $00                                       ; $6c9b: $ee $00
    ld a, h                                       ; $6c9d: $7c

jr_003_6c9e:
    ld l, e                                       ; $6c9e: $6b
    or b                                          ; $6c9f: $b0
    nop                                           ; $6ca0: $00
    ld a, h                                       ; $6ca1: $7c
    ld [hl], h                                    ; $6ca2: $74
    ret nz                                        ; $6ca3: $c0

    nop                                           ; $6ca4: $00
    ld a, h                                       ; $6ca5: $7c
    ld a, l                                       ; $6ca6: $7d
    ret nc                                        ; $6ca7: $d0

    nop                                           ; $6ca8: $00
    ld l, h                                       ; $6ca9: $6c
    jr nc, jr_003_6c66                            ; $6caa: $30 $ba

    nop                                           ; $6cac: $00
    ld l, h                                       ; $6cad: $6c
    jr c, jr_003_6c9e                             ; $6cae: $38 $ee

    nop                                           ; $6cb0: $00
    ld l, h                                       ; $6cb1: $6c
    ld b, b                                       ; $6cb2: $40
    add h                                         ; $6cb3: $84

jr_003_6cb4:
    nop                                           ; $6cb4: $00
    ld l, h                                       ; $6cb5: $6c
    ld c, c                                       ; $6cb6: $49
    sub b                                         ; $6cb7: $90
    nop                                           ; $6cb8: $00
    ld l, h                                       ; $6cb9: $6c
    ld d, d                                       ; $6cba: $52
    jp c, Jump_003_6c00                           ; $6cbb: $da $00 $6c

    ld e, e                                       ; $6cbe: $5b
    sub [hl]                                      ; $6cbf: $96
    nop                                           ; $6cc0: $00
    ld l, h                                       ; $6cc1: $6c
    ld h, h                                       ; $6cc2: $64
    ret c                                         ; $6cc3: $d8

    nop                                           ; $6cc4: $00
    ld l, h                                       ; $6cc5: $6c
    ld l, l                                       ; $6cc6: $6d
    or d                                          ; $6cc7: $b2
    nop                                           ; $6cc8: $00
    ld a, h                                       ; $6cc9: $7c
    ld b, b                                       ; $6cca: $40
    sub [hl]                                      ; $6ccb: $96
    nop                                           ; $6ccc: $00
    ld a, h                                       ; $6ccd: $7c
    ld c, c                                       ; $6cce: $49
    or d                                          ; $6ccf: $b2
    nop                                           ; $6cd0: $00
    ld a, h                                       ; $6cd1: $7c
    ld d, c                                       ; $6cd2: $51
    xor $00                                       ; $6cd3: $ee $00
    ld a, h                                       ; $6cd5: $7c
    ld e, c                                       ; $6cd6: $59
    sub [hl]                                      ; $6cd7: $96
    nop                                           ; $6cd8: $00
    ld a, h                                       ; $6cd9: $7c
    ld h, d                                       ; $6cda: $62
    add $00                                       ; $6cdb: $c6 $00
    ld a, h                                       ; $6cdd: $7c
    ld l, e                                       ; $6cde: $6b
    sbc b                                         ; $6cdf: $98
    nop                                           ; $6ce0: $00
    ld a, h                                       ; $6ce1: $7c
    ld [hl], h                                    ; $6ce2: $74
    ret nz                                        ; $6ce3: $c0

    nop                                           ; $6ce4: $00
    ld l, h                                       ; $6ce5: $6c
    jr nc, jr_003_6c76                            ; $6ce6: $30 $8e

    nop                                           ; $6ce8: $00
    ld l, h                                       ; $6ce9: $6c
    add hl, sp                                    ; $6cea: $39
    ret nc                                        ; $6ceb: $d0

    nop                                           ; $6cec: $00
    ld l, h                                       ; $6ced: $6c
    ld b, d                                       ; $6cee: $42
    add $00                                       ; $6cef: $c6 $00
    ld l, h                                       ; $6cf1: $6c
    ld c, e                                       ; $6cf2: $4b
    cp [hl]                                       ; $6cf3: $be
    nop                                           ; $6cf4: $00
    ld l, h                                       ; $6cf5: $6c
    ld d, h                                       ; $6cf6: $54
    or b                                          ; $6cf7: $b0
    nop                                           ; $6cf8: $00
    ld l, h                                       ; $6cf9: $6c
    ld e, l                                       ; $6cfa: $5d
    call nz, Call_003_6c00                        ; $6cfb: $c4 $00 $6c
    ld h, [hl]                                    ; $6cfe: $66
    jp c, Jump_003_6c00                           ; $6cff: $da $00 $6c

    ld l, a                                       ; $6d02: $6f
    or d                                          ; $6d03: $b2
    nop                                           ; $6d04: $00
    ld a, h                                       ; $6d05: $7c
    ld b, b                                       ; $6d06: $40
    cp h                                          ; $6d07: $bc
    nop                                           ; $6d08: $00
    ld a, h                                       ; $6d09: $7c
    ld c, c                                       ; $6d0a: $49
    call z, Call_003_7c00                         ; $6d0b: $cc $00 $7c
    ld d, d                                       ; $6d0e: $52
    and h                                         ; $6d0f: $a4
    nop                                           ; $6d10: $00
    ld a, h                                       ; $6d11: $7c
    ld e, e                                       ; $6d12: $5b
    add d                                         ; $6d13: $82
    nop                                           ; $6d14: $00
    ld a, h                                       ; $6d15: $7c
    ld h, h                                       ; $6d16: $64
    call nc, Call_003_6c00                        ; $6d17: $d4 $00 $6c
    jr nc, jr_003_6cb4                            ; $6d1a: $30 $98

    nop                                           ; $6d1c: $00
    ld l, h                                       ; $6d1d: $6c
    add hl, sp                                    ; $6d1e: $39
    sbc b                                         ; $6d1f: $98
    nop                                           ; $6d20: $00
    ld l, h                                       ; $6d21: $6c
    ld b, d                                       ; $6d22: $42
    jp nz, Jump_003_6c00                          ; $6d23: $c2 $00 $6c

    ld d, e                                       ; $6d26: $53
    add b                                         ; $6d27: $80
    nop                                           ; $6d28: $00
    ld l, h                                       ; $6d29: $6c
    ld e, h                                       ; $6d2a: $5c
    ret nc                                        ; $6d2b: $d0

    nop                                           ; $6d2c: $00
    ld l, h                                       ; $6d2d: $6c
    ld h, l                                       ; $6d2e: $65
    sbc [hl]                                      ; $6d2f: $9e
    nop                                           ; $6d30: $00
    ld l, h                                       ; $6d31: $6c
    ld l, [hl]                                    ; $6d32: $6e
    xor b                                         ; $6d33: $a8
    nop                                           ; $6d34: $00
    ld a, h                                       ; $6d35: $7c
    ld b, b                                       ; $6d36: $40
    and [hl]                                      ; $6d37: $a6
    nop                                           ; $6d38: $00
    ld a, h                                       ; $6d39: $7c
    ld c, b                                       ; $6d3a: $48
    xor $00                                       ; $6d3b: $ee $00
    ld a, h                                       ; $6d3d: $7c
    ld d, b                                       ; $6d3e: $50
    add h                                         ; $6d3f: $84
    nop                                           ; $6d40: $00
    ld a, h                                       ; $6d41: $7c
    ld e, c                                       ; $6d42: $59
    adc [hl]                                      ; $6d43: $8e
    nop                                           ; $6d44: $00
    ld a, h                                       ; $6d45: $7c
    ld h, d                                       ; $6d46: $62
    and d                                         ; $6d47: $a2
    nop                                           ; $6d48: $00
    ld a, h                                       ; $6d49: $7c
    ld l, e                                       ; $6d4a: $6b
    cp b                                          ; $6d4b: $b8
    nop                                           ; $6d4c: $00
    ld b, b                                       ; $6d4d: $40
    ld d, b                                       ; $6d4e: $50
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    ld b, b                                       ; $6d51: $40
    ld e, b                                       ; $6d52: $58
    inc b                                         ; $6d53: $04
    nop                                           ; $6d54: $00
    ld d, b                                       ; $6d55: $50
    ld d, b                                       ; $6d56: $50
    ld [bc], a                                    ; $6d57: $02
    nop                                           ; $6d58: $00
    ld d, b                                       ; $6d59: $50
    ld e, b                                       ; $6d5a: $58
    ld b, $00                                     ; $6d5b: $06 $00
    ld b, b                                       ; $6d5d: $40
    ld d, b                                       ; $6d5e: $50
    ld [$4010], sp                                ; $6d5f: $08 $10 $40
    ld e, b                                       ; $6d62: $58
    inc c                                         ; $6d63: $0c
    db $10                                        ; $6d64: $10
    ld d, b                                       ; $6d65: $50
    ld d, b                                       ; $6d66: $50
    ld a, [bc]                                    ; $6d67: $0a
    db $10                                        ; $6d68: $10
    ld d, b                                       ; $6d69: $50
    ld e, b                                       ; $6d6a: $58
    ld c, $10                                     ; $6d6b: $0e $10
    jr nc, jr_003_6d83                            ; $6d6d: $30 $14

    nop                                           ; $6d6f: $00
    db $10                                        ; $6d70: $10
    jr nc, jr_003_6d8f                            ; $6d71: $30 $1c

    nop                                           ; $6d73: $00
    db $10                                        ; $6d74: $10
    jr nc, jr_003_6d93                            ; $6d75: $30 $1c

    nop                                           ; $6d77: $00
    db $10                                        ; $6d78: $10
    jr nc, jr_003_6d9f                            ; $6d79: $30 $24

    nop                                           ; $6d7b: $00
    db $10                                        ; $6d7c: $10
    jr nc, jr_003_6dc5                            ; $6d7d: $30 $46

    nop                                           ; $6d7f: $00
    db $10                                        ; $6d80: $10
    jr nc, jr_003_6dd1                            ; $6d81: $30 $4e

jr_003_6d83:
    nop                                           ; $6d83: $00
    db $10                                        ; $6d84: $10
    jr nc, jr_003_6dcf                            ; $6d85: $30 $48

    nop                                           ; $6d87: $00
    db $10                                        ; $6d88: $10
    jr nc, jr_003_6ddb                            ; $6d89: $30 $50

    nop                                           ; $6d8b: $00
    db $10                                        ; $6d8c: $10
    ld a, b                                       ; $6d8d: $78
    ld d, b                                       ; $6d8e: $50

jr_003_6d8f:
    ld b, b                                       ; $6d8f: $40
    nop                                           ; $6d90: $00
    ld a, b                                       ; $6d91: $78
    ld e, b                                       ; $6d92: $58

jr_003_6d93:
    ld b, d                                       ; $6d93: $42
    nop                                           ; $6d94: $00
    ld h, b                                       ; $6d95: $60
    ld b, b                                       ; $6d96: $40
    nop                                           ; $6d97: $00
    db $10                                        ; $6d98: $10
    ld h, b                                       ; $6d99: $60
    ld c, b                                       ; $6d9a: $48
    nop                                           ; $6d9b: $00
    db $10                                        ; $6d9c: $10
    ld l, b                                       ; $6d9d: $68
    ld e, b                                       ; $6d9e: $58

jr_003_6d9f:
    nop                                           ; $6d9f: $00
    db $10                                        ; $6da0: $10
    ld l, b                                       ; $6da1: $68
    ld h, b                                       ; $6da2: $60
    nop                                           ; $6da3: $00
    db $10                                        ; $6da4: $10
    ld l, b                                       ; $6da5: $68
    ld l, b                                       ; $6da6: $68
    nop                                           ; $6da7: $00
    db $10                                        ; $6da8: $10
    ld l, b                                       ; $6da9: $68
    add b                                         ; $6daa: $80
    nop                                           ; $6dab: $00
    db $10                                        ; $6dac: $10
    ld l, b                                       ; $6dad: $68
    adc b                                         ; $6dae: $88
    nop                                           ; $6daf: $00
    db $10                                        ; $6db0: $10
    ld a, b                                       ; $6db1: $78
    ld d, b                                       ; $6db2: $50
    ld d, b                                       ; $6db3: $50
    nop                                           ; $6db4: $00
    ld a, b                                       ; $6db5: $78
    ld e, b                                       ; $6db6: $58
    ld d, d                                       ; $6db7: $52
    nop                                           ; $6db8: $00
    ld a, b                                       ; $6db9: $78
    ld d, b                                       ; $6dba: $50
    ld d, [hl]                                    ; $6dbb: $56
    nop                                           ; $6dbc: $00
    ld a, b                                       ; $6dbd: $78
    ld e, b                                       ; $6dbe: $58
    ld e, b                                       ; $6dbf: $58
    nop                                           ; $6dc0: $00
    ld h, b                                       ; $6dc1: $60
    nop                                           ; $6dc2: $00
    ld d, b                                       ; $6dc3: $50
    nop                                           ; $6dc4: $00

jr_003_6dc5:
    ld h, b                                       ; $6dc5: $60
    nop                                           ; $6dc6: $00
    ld d, d                                       ; $6dc7: $52
    nop                                           ; $6dc8: $00
    ld a, b                                       ; $6dc9: $78
    ld d, b                                       ; $6dca: $50
    ld h, b                                       ; $6dcb: $60
    db $10                                        ; $6dcc: $10
    ld a, b                                       ; $6dcd: $78
    ld e, b                                       ; $6dce: $58

jr_003_6dcf:
    ld h, d                                       ; $6dcf: $62
    db $10                                        ; $6dd0: $10

jr_003_6dd1:
    call Call_003_6dfa                            ; $6dd1: $cd $fa $6d
    ld hl, $c138                                  ; $6dd4: $21 $38 $c1
    ld a, b                                       ; $6dd7: $78
    rst RST_30                                    ; $6dd8: $f7
    ld a, $08                                     ; $6dd9: $3e $08

jr_003_6ddb:
    sub b                                         ; $6ddb: $90
    ld b, a                                       ; $6ddc: $47

jr_003_6ddd:
    ld a, [hl+]                                   ; $6ddd: $2a
    cp $3a                                        ; $6dde: $fe $3a
    jr nz, jr_003_6de5                            ; $6de0: $20 $03

    xor a                                         ; $6de2: $af
    jr jr_003_6de8                                ; $6de3: $18 $03

jr_003_6de5:
    add a                                         ; $6de5: $87
    add $80                                       ; $6de6: $c6 $80

jr_003_6de8:
    ld [de], a                                    ; $6de8: $12
    push af                                       ; $6de9: $f5
    ld a, $20                                     ; $6dea: $3e $20
    rst RST_30                                    ; $6dec: $f7
    pop af                                        ; $6ded: $f1
    or a                                          ; $6dee: $b7
    jr z, jr_003_6df2                             ; $6def: $28 $01

    inc a                                         ; $6df1: $3c

jr_003_6df2:
    ld [de], a                                    ; $6df2: $12
    ld a, $1f                                     ; $6df3: $3e $1f
    rst RST_18                                    ; $6df5: $df
    dec b                                         ; $6df6: $05
    jr nz, jr_003_6ddd                            ; $6df7: $20 $e4

    ret                                           ; $6df9: $c9


Call_003_6dfa:
    ld hl, $c13f                                  ; $6dfa: $21 $3f $c1
    ld bc, $0008                                  ; $6dfd: $01 $08 $00

jr_003_6e00:
    ld a, [hl-]                                   ; $6e00: $3a
    cp $3a                                        ; $6e01: $fe $3a
    jr nz, jr_003_6e09                            ; $6e03: $20 $04

    inc b                                         ; $6e05: $04
    dec c                                         ; $6e06: $0d
    jr nz, jr_003_6e00                            ; $6e07: $20 $f7

jr_003_6e09:
    srl b                                         ; $6e09: $cb $38
    ret                                           ; $6e0b: $c9


    ld hl, $c02b                                  ; $6e0c: $21 $2b $c0
    ld a, [hl]                                    ; $6e0f: $7e
    xor $01                                       ; $6e10: $ee $01
    ld [hl], a                                    ; $6e12: $77
    ld hl, $da09                                  ; $6e13: $21 $09 $da
    ld b, $20                                     ; $6e16: $06 $20
    or a                                          ; $6e18: $b7
    jr z, jr_003_6e1d                             ; $6e19: $28 $02

    ld b, $60                                     ; $6e1b: $06 $60

jr_003_6e1d:
    ld a, b                                       ; $6e1d: $78
    ld [hl+], a                                   ; $6e1e: $22
    inc hl                                        ; $6e1f: $23
    inc hl                                        ; $6e20: $23
    inc hl                                        ; $6e21: $23
    add $08                                       ; $6e22: $c6 $08
    ld [hl], a                                    ; $6e24: $77
    ret                                           ; $6e25: $c9


    ld de, $6f38                                  ; $6e26: $11 $38 $6f
    ld a, [$c102]                                 ; $6e29: $fa $02 $c1
    cp $06                                        ; $6e2c: $fe $06
    jr z, jr_003_6e33                             ; $6e2e: $28 $03

    ld de, $6f42                                  ; $6e30: $11 $42 $6f

jr_003_6e33:
    ld hl, $9c42                                  ; $6e33: $21 $42 $9c
    ld c, $0a                                     ; $6e36: $0e $0a

jr_003_6e38:
    ld a, [de]                                    ; $6e38: $1a
    inc de                                        ; $6e39: $13
    ld [hl+], a                                   ; $6e3a: $22
    ld a, c                                       ; $6e3b: $79
    cp $06                                        ; $6e3c: $fe $06
    jr nz, jr_003_6e43                            ; $6e3e: $20 $03

    ld a, $1b                                     ; $6e40: $3e $1b
    rst RST_28                                    ; $6e42: $ef

jr_003_6e43:
    dec c                                         ; $6e43: $0d
    jr nz, jr_003_6e38                            ; $6e44: $20 $f2

    ret                                           ; $6e46: $c9


    add a                                         ; $6e47: $87
    add a                                         ; $6e48: $87
    add a                                         ; $6e49: $87
    ld b, a                                       ; $6e4a: $47
    ld c, $08                                     ; $6e4b: $0e $08
    ld hl, $da4d                                  ; $6e4d: $21 $4d $da

jr_003_6e50:
    ld a, [hl]                                    ; $6e50: $7e
    add b                                         ; $6e51: $80
    ld [hl], a                                    ; $6e52: $77
    ld a, $04                                     ; $6e53: $3e $04
    rst RST_28                                    ; $6e55: $ef
    dec c                                         ; $6e56: $0d
    jr nz, jr_003_6e50                            ; $6e57: $20 $f7

    ret                                           ; $6e59: $c9


    ld a, [$c039]                                 ; $6e5a: $fa $39 $c0
    and $3f                                       ; $6e5d: $e6 $3f
    jr z, jr_003_6e73                             ; $6e5f: $28 $12

    cp $20                                        ; $6e61: $fe $20
    ret nz                                        ; $6e63: $c0

    ld hl, $da0a                                  ; $6e64: $21 $0a $da
    ld a, [hl]                                    ; $6e67: $7e
    add $04                                       ; $6e68: $c6 $04
    ld [hl], a                                    ; $6e6a: $77
    ld hl, $da0e                                  ; $6e6b: $21 $0e $da
    ld a, [hl]                                    ; $6e6e: $7e
    add $04                                       ; $6e6f: $c6 $04
    ld [hl], a                                    ; $6e71: $77
    ret                                           ; $6e72: $c9


jr_003_6e73:
    ld hl, $da0a                                  ; $6e73: $21 $0a $da
    ld a, [hl]                                    ; $6e76: $7e
    sub $04                                       ; $6e77: $d6 $04
    ld [hl], a                                    ; $6e79: $77
    ld hl, $da0e                                  ; $6e7a: $21 $0e $da
    ld a, [hl]                                    ; $6e7d: $7e
    sub $04                                       ; $6e7e: $d6 $04
    ld [hl], a                                    ; $6e80: $77
    ret                                           ; $6e81: $c9


    ld a, [$c101]                                 ; $6e82: $fa $01 $c1
    dec a                                         ; $6e85: $3d
    rst RST_00                                    ; $6e86: $c7
    adc a                                         ; $6e87: $8f
    ld l, [hl]                                    ; $6e88: $6e
    sbc a                                         ; $6e89: $9f
    ld l, [hl]                                    ; $6e8a: $6e
    xor a                                         ; $6e8b: $af
    ld l, [hl]                                    ; $6e8c: $6e
    cp a                                          ; $6e8d: $bf
    ld l, [hl]                                    ; $6e8e: $6e
    ld hl, $6d6d                                  ; $6e8f: $21 $6d $6d
    ld de, $da00                                  ; $6e92: $11 $00 $da
    ld bc, $0008                                  ; $6e95: $01 $08 $00
    call Call_003_6ecf                            ; $6e98: $cd $cf $6e
    ld a, [$c16a]                                 ; $6e9b: $fa $6a $c1
    ret                                           ; $6e9e: $c9


    ld hl, $6d75                                  ; $6e9f: $21 $75 $6d
    ld de, $da00                                  ; $6ea2: $11 $00 $da
    ld bc, $0008                                  ; $6ea5: $01 $08 $00
    call Call_003_6ecf                            ; $6ea8: $cd $cf $6e
    ld a, [$c128]                                 ; $6eab: $fa $28 $c1
    ret                                           ; $6eae: $c9


    ld hl, $6d7d                                  ; $6eaf: $21 $7d $6d
    ld de, $da00                                  ; $6eb2: $11 $00 $da
    ld bc, $0008                                  ; $6eb5: $01 $08 $00
    call Call_003_6ecf                            ; $6eb8: $cd $cf $6e
    ld a, [$c16c]                                 ; $6ebb: $fa $6c $c1
    ret                                           ; $6ebe: $c9


    ld hl, $6d85                                  ; $6ebf: $21 $85 $6d
    ld de, $da00                                  ; $6ec2: $11 $00 $da
    ld bc, $0008                                  ; $6ec5: $01 $08 $00
    call Call_003_6ecf                            ; $6ec8: $cd $cf $6e
    ld a, [$c16f]                                 ; $6ecb: $fa $6f $c1
    ret                                           ; $6ece: $c9


Call_003_6ecf:
Jump_003_6ecf:
jr_003_6ecf:
    ld a, [hl+]                                   ; $6ecf: $2a
    ld [de], a                                    ; $6ed0: $12
    inc de                                        ; $6ed1: $13
    dec bc                                        ; $6ed2: $0b
    ld a, c                                       ; $6ed3: $79
    or b                                          ; $6ed4: $b0
    jr nz, jr_003_6ecf                            ; $6ed5: $20 $f8

    ret                                           ; $6ed7: $c9


    ld [hl], b                                    ; $6ed8: $70
    ld [hl], d                                    ; $6ed9: $72
    ld [hl], c                                    ; $6eda: $71
    ld [hl], e                                    ; $6edb: $73
    halt                                          ; $6edc: $76
    ld a, b                                       ; $6edd: $78
    ld [hl], a                                    ; $6ede: $77
    ld a, c                                       ; $6edf: $79
    add sp, $6e                                   ; $6ee0: $e8 $6e
    ld hl, sp+$6e                                 ; $6ee2: $f8 $6e
    ld [$186f], sp                                ; $6ee4: $08 $6f $18
    ld l, a                                       ; $6ee7: $6f
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    ld [hl], b                                    ; $6eeb: $70
    nop                                           ; $6eec: $00
    nop                                           ; $6eed: $00
    ld [hl], d                                    ; $6eee: $72
    nop                                           ; $6eef: $00
    nop                                           ; $6ef0: $00
    ld [hl], c                                    ; $6ef1: $71
    nop                                           ; $6ef2: $00
    nop                                           ; $6ef3: $00
    ld [hl], e                                    ; $6ef4: $73
    nop                                           ; $6ef5: $00
    nop                                           ; $6ef6: $00
    nop                                           ; $6ef7: $00
    nop                                           ; $6ef8: $00
    nop                                           ; $6ef9: $00
    ld [hl], b                                    ; $6efa: $70
    ld [hl], d                                    ; $6efb: $72
    nop                                           ; $6efc: $00
    nop                                           ; $6efd: $00
    ld [hl], h                                    ; $6efe: $74
    halt                                          ; $6eff: $76
    ld [hl], c                                    ; $6f00: $71
    ld [hl], e                                    ; $6f01: $73
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    ld [hl], l                                    ; $6f04: $75
    ld [hl], a                                    ; $6f05: $77
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    nop                                           ; $6f08: $00
    ld [hl], b                                    ; $6f09: $70
    nop                                           ; $6f0a: $00
    ld [hl], c                                    ; $6f0b: $71
    ld [hl], d                                    ; $6f0c: $72
    nop                                           ; $6f0d: $00
    ld [hl], e                                    ; $6f0e: $73
    nop                                           ; $6f0f: $00
    nop                                           ; $6f10: $00
    ld [hl], h                                    ; $6f11: $74
    nop                                           ; $6f12: $00
    ld [hl], l                                    ; $6f13: $75
    halt                                          ; $6f14: $76
    nop                                           ; $6f15: $00
    ld [hl], a                                    ; $6f16: $77
    nop                                           ; $6f17: $00
    ld [hl], b                                    ; $6f18: $70
    ld [hl], d                                    ; $6f19: $72
    ld [hl], c                                    ; $6f1a: $71
    ld [hl], e                                    ; $6f1b: $73
    ld [hl], h                                    ; $6f1c: $74
    halt                                          ; $6f1d: $76
    ld [hl], l                                    ; $6f1e: $75
    ld [hl], a                                    ; $6f1f: $77
    ld a, b                                       ; $6f20: $78
    ld a, d                                       ; $6f21: $7a
    ld a, c                                       ; $6f22: $79
    ld a, e                                       ; $6f23: $7b
    ld a, h                                       ; $6f24: $7c
    ld a, [hl]                                    ; $6f25: $7e
    ld a, l                                       ; $6f26: $7d
    ld a, a                                       ; $6f27: $7f
    nop                                           ; $6f28: $00
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    nop                                           ; $6f2c: $00
    nop                                           ; $6f2d: $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    nop                                           ; $6f36: $00
    nop                                           ; $6f37: $00
    adc h                                         ; $6f38: $8c
    xor $d4                                       ; $6f39: $ee $d4
    and [hl]                                      ; $6f3b: $a6
    xor $8d                                       ; $6f3c: $ee $8d
    rst RST_28                                    ; $6f3e: $ef
    push de                                       ; $6f3f: $d5
    and a                                         ; $6f40: $a7
    rst RST_28                                    ; $6f41: $ef
    cp h                                          ; $6f42: $bc
    sbc b                                         ; $6f43: $98
    sbc [hl]                                      ; $6f44: $9e
    ldh a, [c]                                    ; $6f45: $f2
    nop                                           ; $6f46: $00
    cp l                                          ; $6f47: $bd
    sbc c                                         ; $6f48: $99
    sbc a                                         ; $6f49: $9f
    di                                            ; $6f4a: $f3
    nop                                           ; $6f4b: $00
    ld e, [hl]                                    ; $6f4c: $5e
    ld l, a                                       ; $6f4d: $6f
    ld h, c                                       ; $6f4e: $61
    ld l, a                                       ; $6f4f: $6f
    ld h, a                                       ; $6f50: $67
    ld l, a                                       ; $6f51: $6f
    ld [hl], b                                    ; $6f52: $70
    ld l, a                                       ; $6f53: $6f
    ld a, h                                       ; $6f54: $7c
    ld l, a                                       ; $6f55: $6f
    adc e                                         ; $6f56: $8b
    ld l, a                                       ; $6f57: $6f
    sbc l                                         ; $6f58: $9d
    ld l, a                                       ; $6f59: $6f
    or d                                          ; $6f5a: $b2
    ld l, a                                       ; $6f5b: $6f
    jp z, Jump_003_406f                           ; $6f5c: $ca $6f $40

    nop                                           ; $6f5f: $00
    add b                                         ; $6f60: $80
    ld c, b                                       ; $6f61: $48
    rst RST_00                                    ; $6f62: $c7
    ld [hl], d                                    ; $6f63: $72
    ld c, b                                       ; $6f64: $48
    add hl, sp                                    ; $6f65: $39
    ld [hl], d                                    ; $6f66: $72
    ld c, b                                       ; $6f67: $48
    rst RST_00                                    ; $6f68: $c7
    ld [hl], d                                    ; $6f69: $72
    ld c, b                                       ; $6f6a: $48
    add hl, sp                                    ; $6f6b: $39
    ld [hl], d                                    ; $6f6c: $72
    jr nz, jr_003_6f6f                            ; $6f6d: $20 $00

jr_003_6f6f:
    add b                                         ; $6f6f: $80
    ld [hl], e                                    ; $6f70: $73
    sub l                                         ; $6f71: $95
    ld b, a                                       ; $6f72: $47
    ld c, b                                       ; $6f73: $48
    rst RST_00                                    ; $6f74: $c7
    ld [hl], d                                    ; $6f75: $72
    ld c, b                                       ; $6f76: $48
    add hl, sp                                    ; $6f77: $39
    ld [hl], d                                    ; $6f78: $72
    ld [hl], e                                    ; $6f79: $73
    ld l, e                                       ; $6f7a: $6b
    ld b, a                                       ; $6f7b: $47
    ld e, e                                       ; $6f7c: $5b
    and [hl]                                      ; $6f7d: $a6
    ld e, d                                       ; $6f7e: $5a
    ld b, b                                       ; $6f7f: $40
    nop                                           ; $6f80: $00
    add b                                         ; $6f81: $80
    ld e, e                                       ; $6f82: $5b
    ld e, d                                       ; $6f83: $5a
    ld e, d                                       ; $6f84: $5a
    dec l                                         ; $6f85: $2d
    and l                                         ; $6f86: $a5
    ld e, e                                       ; $6f87: $5b
    dec l                                         ; $6f88: $2d
    ld e, e                                       ; $6f89: $5b
    ld e, e                                       ; $6f8a: $5b
    ld [hl], e                                    ; $6f8b: $73
    sub l                                         ; $6f8c: $95
    ld b, a                                       ; $6f8d: $47
    ld c, b                                       ; $6f8e: $48
    rst RST_00                                    ; $6f8f: $c7
    ld [hl], d                                    ; $6f90: $72
    ld c, b                                       ; $6f91: $48
    adc [hl]                                      ; $6f92: $8e
    add hl, sp                                    ; $6f93: $39
    ld c, b                                       ; $6f94: $48
    add hl, sp                                    ; $6f95: $39
    ld [hl], d                                    ; $6f96: $72
    ld [hl], e                                    ; $6f97: $73
    ld l, e                                       ; $6f98: $6b
    ld b, a                                       ; $6f99: $47
    ld c, b                                       ; $6f9a: $48
    ld [hl], d                                    ; $6f9b: $72
    add hl, sp                                    ; $6f9c: $39
    ld [hl], e                                    ; $6f9d: $73
    sub l                                         ; $6f9e: $95
    ld c, b                                       ; $6f9f: $48
    ld c, b                                       ; $6fa0: $48
    rst RST_00                                    ; $6fa1: $c7
    ld [hl], d                                    ; $6fa2: $72
    ld c, b                                       ; $6fa3: $48
    add hl, sp                                    ; $6fa4: $39
    ld [hl], d                                    ; $6fa5: $72
    ld [hl], e                                    ; $6fa6: $73
    ld l, e                                       ; $6fa7: $6b
    ld b, a                                       ; $6fa8: $47
    ld c, b                                       ; $6fa9: $48
    adc [hl]                                      ; $6faa: $8e
    add hl, sp                                    ; $6fab: $39
    jr nz, jr_003_6fae                            ; $6fac: $20 $00

jr_003_6fae:
    add b                                         ; $6fae: $80
    ld c, b                                       ; $6faf: $48
    ld [hl], d                                    ; $6fb0: $72
    add hl, sp                                    ; $6fb1: $39
    add c                                         ; $6fb2: $81
    sub c                                         ; $6fb3: $91
    ld b, b                                       ; $6fb4: $40
    ld d, b                                       ; $6fb5: $50
    or e                                          ; $6fb6: $b3
    ld h, [hl]                                    ; $6fb7: $66
    ld b, d                                       ; $6fb8: $42
    rra                                           ; $6fb9: $1f
    ld a, h                                       ; $6fba: $7c
    ld h, [hl]                                    ; $6fbb: $66
    ld h, h                                       ; $6fbc: $64
    ld d, b                                       ; $6fbd: $50
    ld d, [hl]                                    ; $6fbe: $56
    adc c                                         ; $6fbf: $89
    jr nc, jr_003_6fe6                            ; $6fc0: $30 $24

    rst RST_00                                    ; $6fc2: $c7
    ld [hl], d                                    ; $6fc3: $72
    ld a, [hl-]                                   ; $6fc4: $3a
    ld l, d                                       ; $6fc5: $6a
    ld b, a                                       ; $6fc6: $47
    ld [hl], h                                    ; $6fc7: $74
    ld a, h                                       ; $6fc8: $7c
    inc hl                                        ; $6fc9: $23
    adc a                                         ; $6fca: $8f
    adc l                                         ; $6fcb: $8d
    add hl, sp                                    ; $6fcc: $39
    ld e, e                                       ; $6fcd: $5b
    and [hl]                                      ; $6fce: $a6
    ld e, d                                       ; $6fcf: $5a
    ld b, b                                       ; $6fd0: $40
    nop                                           ; $6fd1: $00
    add b                                         ; $6fd2: $80
    ld e, e                                       ; $6fd3: $5b
    ld e, d                                       ; $6fd4: $5a
    ld e, d                                       ; $6fd5: $5a
    adc a                                         ; $6fd6: $8f
    ld [hl], e                                    ; $6fd7: $73
    add hl, sp                                    ; $6fd8: $39
    ld h, l                                       ; $6fd9: $65
    add [hl]                                      ; $6fda: $86
    jr z, @+$2f                                   ; $6fdb: $28 $2d

    and l                                         ; $6fdd: $a5
    ld e, e                                       ; $6fde: $5b
    dec l                                         ; $6fdf: $2d
    ld e, e                                       ; $6fe0: $5b
    ld e, e                                       ; $6fe1: $5b
    ld h, l                                       ; $6fe2: $65
    ld a, d                                       ; $6fe3: $7a
    jr z, @+$5a                                   ; $6fe4: $28 $58

jr_003_6fe6:
    add b                                         ; $6fe6: $80
    jr nz, jr_003_6fe9                            ; $6fe7: $20 $00

jr_003_6fe9:
    jr nc, jr_003_7033                            ; $6fe9: $30 $48

    nop                                           ; $6feb: $00
    db $10                                        ; $6fec: $10
    adc b                                         ; $6fed: $88
    jr nz, jr_003_7044                            ; $6fee: $20 $54

    nop                                           ; $6ff0: $00
    adc b                                         ; $6ff1: $88
    jr z, @+$58                                   ; $6ff2: $28 $56

    nop                                           ; $6ff4: $00
    jr nz, jr_003_704f                            ; $6ff5: $20 $58

    ld h, $00                                     ; $6ff7: $26 $00
    jr nz, jr_003_705b                            ; $6ff9: $20 $60

    jr z, jr_003_6ffd                             ; $6ffb: $28 $00

jr_003_6ffd:
    jr nc, @+$22                                  ; $6ffd: $30 $20

    ld a, [hl+]                                   ; $6fff: $2a
    nop                                           ; $7000: $00
    jr nc, jr_003_702b                            ; $7001: $30 $28

    inc l                                         ; $7003: $2c
    nop                                           ; $7004: $00
    jr nc, jr_003_7037                            ; $7005: $30 $30

    ld l, $00                                     ; $7007: $2e $00
    jr nc, jr_003_7043                            ; $7009: $30 $38

    jr nc, jr_003_700d                            ; $700b: $30 $00

jr_003_700d:
    jr nc, @+$5a                                  ; $700d: $30 $58

    ld [hl-], a                                   ; $700f: $32
    nop                                           ; $7010: $00
    ld b, b                                       ; $7011: $40
    jr nz, jr_003_7048                            ; $7012: $20 $34

    nop                                           ; $7014: $00
    ld b, b                                       ; $7015: $40
    jr z, @+$38                                   ; $7016: $28 $36

    nop                                           ; $7018: $00
    ld b, b                                       ; $7019: $40
    jr nc, jr_003_7054                            ; $701a: $30 $38

    nop                                           ; $701c: $00
    ld b, b                                       ; $701d: $40
    jr c, @+$3c                                   ; $701e: $38 $3a

    nop                                           ; $7020: $00
    ld b, b                                       ; $7021: $40
    ld b, b                                       ; $7022: $40
    inc a                                         ; $7023: $3c
    nop                                           ; $7024: $00
    ld b, b                                       ; $7025: $40
    ld c, b                                       ; $7026: $48
    ld a, [hl-]                                   ; $7027: $3a
    nop                                           ; $7028: $00
    ld b, b                                       ; $7029: $40
    ld d, b                                       ; $702a: $50

jr_003_702b:
    ld a, $00                                     ; $702b: $3e $00
    ld b, b                                       ; $702d: $40
    ld e, b                                       ; $702e: $58
    ld b, b                                       ; $702f: $40
    nop                                           ; $7030: $00
    jr nz, jr_003_704b                            ; $7031: $20 $18

jr_003_7033:
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    jr nz, jr_003_7057                            ; $7035: $20 $20

jr_003_7037:
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    jr nz, jr_003_7063                            ; $7039: $20 $28

    nop                                           ; $703b: $00
    nop                                           ; $703c: $00
    jr nz, jr_003_706f                            ; $703d: $20 $30

    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    jr nz, jr_003_707b                            ; $7041: $20 $38

jr_003_7043:
    nop                                           ; $7043: $00

jr_003_7044:
    nop                                           ; $7044: $00
    jr nz, @+$42                                  ; $7045: $20 $40

    nop                                           ; $7047: $00

jr_003_7048:
    nop                                           ; $7048: $00
    jr nz, jr_003_7093                            ; $7049: $20 $48

jr_003_704b:
    nop                                           ; $704b: $00
    nop                                           ; $704c: $00
    jr nz, @+$52                                  ; $704d: $20 $50

jr_003_704f:
    nop                                           ; $704f: $00
    nop                                           ; $7050: $00
    jr nz, jr_003_70ab                            ; $7051: $20 $58

    nop                                           ; $7053: $00

jr_003_7054:
    nop                                           ; $7054: $00
    jr z, @+$3a                                   ; $7055: $28 $38

jr_003_7057:
    ld b, d                                       ; $7057: $42
    nop                                           ; $7058: $00
    jr z, @+$42                                   ; $7059: $28 $40

jr_003_705b:
    ld b, d                                       ; $705b: $42
    jr nz, jr_003_7096                            ; $705c: $20 $38

    jr c, jr_003_7060                             ; $705e: $38 $00

jr_003_7060:
    nop                                           ; $7060: $00
    jr c, @+$42                                   ; $7061: $38 $40

jr_003_7063:
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    add b                                         ; $7065: $80
    jr nz, jr_003_70bc                            ; $7066: $20 $54

    nop                                           ; $7068: $00
    add b                                         ; $7069: $80
    jr z, @+$58                                   ; $706a: $28 $56

    nop                                           ; $706c: $00
    ld b, b                                       ; $706d: $40
    ld d, b                                       ; $706e: $50

jr_003_706f:
    nop                                           ; $706f: $00
    nop                                           ; $7070: $00
    ld b, b                                       ; $7071: $40
    ld e, b                                       ; $7072: $58
    ld [bc], a                                    ; $7073: $02
    nop                                           ; $7074: $00
    ld b, b                                       ; $7075: $40
    ld d, b                                       ; $7076: $50
    inc c                                         ; $7077: $0c
    nop                                           ; $7078: $00
    ld b, b                                       ; $7079: $40
    ld e, b                                       ; $707a: $58

jr_003_707b:
    ld c, $00                                     ; $707b: $0e $00
    nop                                           ; $707d: $00
    jr nz, jr_003_7084                            ; $707e: $20 $04

    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    jr z, jr_003_708a                             ; $7082: $28 $06

jr_003_7084:
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    jr nz, jr_003_7098                            ; $7086: $20 $10

    nop                                           ; $7088: $00
    nop                                           ; $7089: $00

jr_003_708a:
    jr z, jr_003_709e                             ; $708a: $28 $12

    nop                                           ; $708c: $00
    db $10                                        ; $708d: $10
    ld [$1018], sp                                ; $708e: $08 $18 $10
    db $10                                        ; $7091: $10
    db $10                                        ; $7092: $10

jr_003_7093:
    ld a, [de]                                    ; $7093: $1a
    db $10                                        ; $7094: $10
    db $10                                        ; $7095: $10

jr_003_7096:
    jr @+$1c                                      ; $7096: $18 $1a

jr_003_7098:
    db $10                                        ; $7098: $10
    db $10                                        ; $7099: $10
    jr nz, @+$1c                                  ; $709a: $20 $1a

    db $10                                        ; $709c: $10
    db $10                                        ; $709d: $10

jr_003_709e:
    jr z, @+$1c                                   ; $709e: $28 $1a

    db $10                                        ; $70a0: $10
    db $10                                        ; $70a1: $10
    jr nc, @+$1c                                  ; $70a2: $30 $1a

    db $10                                        ; $70a4: $10
    db $10                                        ; $70a5: $10
    jr c, @+$1c                                   ; $70a6: $38 $1a

    db $10                                        ; $70a8: $10
    db $10                                        ; $70a9: $10
    ld b, b                                       ; $70aa: $40

jr_003_70ab:
    ld a, [de]                                    ; $70ab: $1a
    db $10                                        ; $70ac: $10
    db $10                                        ; $70ad: $10
    ld c, b                                       ; $70ae: $48
    jr jr_003_70e1                                ; $70af: $18 $30

    jr nz, jr_003_70bb                            ; $70b1: $20 $08

    inc e                                         ; $70b3: $1c
    db $10                                        ; $70b4: $10
    jr nz, jr_003_70c7                            ; $70b5: $20 $10

    jr nz, jr_003_70c9                            ; $70b7: $20 $10

    jr nz, jr_003_70d3                            ; $70b9: $20 $18

jr_003_70bb:
    ld [hl+], a                                   ; $70bb: $22

jr_003_70bc:
    db $10                                        ; $70bc: $10
    jr nz, jr_003_70df                            ; $70bd: $20 $20

    inc h                                         ; $70bf: $24
    db $10                                        ; $70c0: $10
    jr nz, jr_003_70eb                            ; $70c1: $20 $28

    ld h, $10                                     ; $70c3: $26 $10
    jr nz, jr_003_70f7                            ; $70c5: $20 $30

jr_003_70c7:
    jr z, jr_003_70d9                             ; $70c7: $28 $10

jr_003_70c9:
    jr nz, jr_003_7103                            ; $70c9: $20 $38

    ld a, [hl+]                                   ; $70cb: $2a
    db $10                                        ; $70cc: $10
    jr nz, jr_003_710f                            ; $70cd: $20 $40

    inc l                                         ; $70cf: $2c
    db $10                                        ; $70d0: $10
    jr nz, @+$4a                                  ; $70d1: $20 $48

jr_003_70d3:
    inc e                                         ; $70d3: $1c
    jr nc, jr_003_7106                            ; $70d4: $30 $30

    ld [$5018], sp                                ; $70d6: $08 $18 $50

jr_003_70d9:
    jr nc, jr_003_70eb                            ; $70d9: $30 $10

    ld a, [de]                                    ; $70db: $1a
    ld d, b                                       ; $70dc: $50
    jr nc, jr_003_70f7                            ; $70dd: $30 $18

jr_003_70df:
    ld a, [de]                                    ; $70df: $1a
    ld d, b                                       ; $70e0: $50

jr_003_70e1:
    jr nc, jr_003_7103                            ; $70e1: $30 $20

    ld a, [de]                                    ; $70e3: $1a
    ld d, b                                       ; $70e4: $50
    jr nc, jr_003_710f                            ; $70e5: $30 $28

    ld a, [de]                                    ; $70e7: $1a
    ld d, b                                       ; $70e8: $50
    jr nc, @+$32                                  ; $70e9: $30 $30

jr_003_70eb:
    ld a, [de]                                    ; $70eb: $1a
    ld d, b                                       ; $70ec: $50
    jr nc, jr_003_7127                            ; $70ed: $30 $38

    ld a, [de]                                    ; $70ef: $1a
    ld d, b                                       ; $70f0: $50
    jr nc, jr_003_7133                            ; $70f1: $30 $40

    ld a, [de]                                    ; $70f3: $1a
    ld d, b                                       ; $70f4: $50
    jr nc, jr_003_713f                            ; $70f5: $30 $48

jr_003_70f7:
    ld e, $10                                     ; $70f7: $1e $10
    stop                                          ; $70f9: $10 $00
    add b                                         ; $70fb: $80
    add c                                         ; $70fc: $81
    ld [$0101], sp                                ; $70fd: $08 $01 $01
    ld bc, $0101                                  ; $7100: $01 $01 $01

jr_003_7103:
    ld bc, $0101                                  ; $7103: $01 $01 $01

jr_003_7106:
    add d                                         ; $7106: $82
    rst RST_38                                    ; $7107: $ff
    rst RST_38                                    ; $7108: $ff
    ld [$8500], sp                                ; $7109: $08 $00 $85
    rst RST_38                                    ; $710c: $ff
    nop                                           ; $710d: $00
    rst RST_38                                    ; $710e: $ff

jr_003_710f:
    nop                                           ; $710f: $00
    nop                                           ; $7110: $00
    inc bc                                        ; $7111: $03
    rst RST_38                                    ; $7112: $ff
    add b                                         ; $7113: $80
    add d                                         ; $7114: $82
    inc b                                         ; $7115: $04
    ld bc, $0101                                  ; $7116: $01 $01 $01
    ld bc, $fe85                                  ; $7119: $01 $85 $fe
    ld bc, $01fe                                  ; $711c: $01 $fe $01
    ld bc, $ff03                                  ; $711f: $01 $03 $ff
    add h                                         ; $7122: $84
    ld d, l                                       ; $7123: $55
    rst RST_38                                    ; $7124: $ff
    ld d, l                                       ; $7125: $55
    rst RST_38                                    ; $7126: $ff

jr_003_7127:
    add b                                         ; $7127: $80
    add h                                         ; $7128: $84
    inc b                                         ; $7129: $04
    ld d, l                                       ; $712a: $55
    ld d, l                                       ; $712b: $55
    ld d, l                                       ; $712c: $55
    ld d, l                                       ; $712d: $55
    inc b                                         ; $712e: $04
    rst RST_38                                    ; $712f: $ff
    add b                                         ; $7130: $80
    add e                                         ; $7131: $83
    inc b                                         ; $7132: $04

jr_003_7133:
    xor d                                         ; $7133: $aa
    push af                                       ; $7134: $f5
    push af                                       ; $7135: $f5
    and l                                         ; $7136: $a5
    add e                                         ; $7137: $83
    rst RST_38                                    ; $7138: $ff
    rst RST_38                                    ; $7139: $ff
    ld d, l                                       ; $713a: $55
    dec b                                         ; $713b: $05
    rst RST_38                                    ; $713c: $ff
    add b                                         ; $713d: $80
    add e                                         ; $713e: $83

jr_003_713f:
    inc b                                         ; $713f: $04
    rla                                           ; $7140: $17
    inc de                                        ; $7141: $13
    ld e, e                                       ; $7142: $5b
    sub e                                         ; $7143: $93
    add e                                         ; $7144: $83
    rst RST_38                                    ; $7145: $ff
    rst RST_38                                    ; $7146: $ff
    ld d, l                                       ; $7147: $55
    inc bc                                        ; $7148: $03
    rst RST_38                                    ; $7149: $ff
    add c                                         ; $714a: $81
    add c                                         ; $714b: $81
    add hl, bc                                    ; $714c: $09
    nop                                           ; $714d: $00
    and [hl]                                      ; $714e: $a6
    rst RST_38                                    ; $714f: $ff
    nop                                           ; $7150: $00
    rst RST_38                                    ; $7151: $ff
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    rst RST_38                                    ; $7154: $ff
    add e                                         ; $7155: $83
    add c                                         ; $7156: $81
    add e                                         ; $7157: $83
    add c                                         ; $7158: $81
    add e                                         ; $7159: $83
    add c                                         ; $715a: $81
    add e                                         ; $715b: $83
    add c                                         ; $715c: $81
    add e                                         ; $715d: $83
    add c                                         ; $715e: $81
    add e                                         ; $715f: $83
    add c                                         ; $7160: $81
    add e                                         ; $7161: $83
    add c                                         ; $7162: $81
    add e                                         ; $7163: $83
    add c                                         ; $7164: $81
    ld bc, $0100                                  ; $7165: $01 $00 $01
    nop                                           ; $7168: $00
    ld bc, $7f00                                  ; $7169: $01 $00 $7f
    ld a, [hl]                                    ; $716c: $7e
    add e                                         ; $716d: $83
    add c                                         ; $716e: $81
    add e                                         ; $716f: $83
    add c                                         ; $7170: $81
    add e                                         ; $7171: $83
    add c                                         ; $7172: $81
    add e                                         ; $7173: $83
    add c                                         ; $7174: $81
    add b                                         ; $7175: $80
    add c                                         ; $7176: $81
    ld [$0101], sp                                ; $7177: $08 $01 $01
    ld b, c                                       ; $717a: $41
    ld h, c                                       ; $717b: $61
    ld [hl], c                                    ; $717c: $71
    ld a, c                                       ; $717d: $79
    ld a, l                                       ; $717e: $7d
    ld a, a                                       ; $717f: $7f
    ldh [$ff7e], a                                ; $7180: $e0 $7e
    ld bc, $017e                                  ; $7182: $01 $7e $01
    ld a, [hl]                                    ; $7185: $7e
    ld bc, $017e                                  ; $7186: $01 $7e $01
    ld a, [hl]                                    ; $7189: $7e
    ld bc, $017e                                  ; $718a: $01 $7e $01
    ld a, [hl]                                    ; $718d: $7e
    ld bc, $017e                                  ; $718e: $01 $7e $01
    ld a, [hl]                                    ; $7191: $7e
    ld bc, $017e                                  ; $7192: $01 $7e $01
    ld a, $01                                     ; $7195: $3e $01
    ld e, $01                                     ; $7197: $1e $01
    ld c, $01                                     ; $7199: $0e $01
    ld b, $01                                     ; $719b: $06 $01
    ld [bc], a                                    ; $719d: $02
    ld bc, $0001                                  ; $719e: $01 $01 $00
    rst RST_38                                    ; $71a1: $ff
    rst RST_38                                    ; $71a2: $ff
    add c                                         ; $71a3: $81
    add c                                         ; $71a4: $81
    cp a                                          ; $71a5: $bf
    cp l                                          ; $71a6: $bd
    and a                                         ; $71a7: $a7
    cp l                                          ; $71a8: $bd
    cp a                                          ; $71a9: $bf
    cp l                                          ; $71aa: $bd
    cp a                                          ; $71ab: $bf
    add c                                         ; $71ac: $81
    rst RST_38                                    ; $71ad: $ff
    rst RST_38                                    ; $71ae: $ff
    add c                                         ; $71af: $81
    add c                                         ; $71b0: $81
    add b                                         ; $71b1: $80
    add b                                         ; $71b2: $80
    rst RST_38                                    ; $71b3: $ff
    add b                                         ; $71b4: $80
    rst RST_38                                    ; $71b5: $ff
    add b                                         ; $71b6: $80
    rst RST_38                                    ; $71b7: $ff
    rst RST_38                                    ; $71b8: $ff
    add b                                         ; $71b9: $80
    rst RST_38                                    ; $71ba: $ff
    add b                                         ; $71bb: $80
    rst RST_38                                    ; $71bc: $ff
    or l                                          ; $71bd: $b5
    jp z, $88f7                                   ; $71be: $ca $f7 $88

    ld bc, $ff01                                  ; $71c1: $01 $01 $ff
    ld bc, $01ff                                  ; $71c4: $01 $ff $01
    rst RST_38                                    ; $71c7: $ff
    rst RST_38                                    ; $71c8: $ff
    ld bc, $01ff                                  ; $71c9: $01 $ff $01
    rst RST_38                                    ; $71cc: $ff
    or l                                          ; $71cd: $b5
    ld c, e                                       ; $71ce: $4b
    ld [hl], a                                    ; $71cf: $77
    adc c                                         ; $71d0: $89
    db $dd                                        ; $71d1: $dd
    and d                                         ; $71d2: $a2
    db $db                                        ; $71d3: $db
    and h                                         ; $71d4: $a4
    ei                                            ; $71d5: $fb
    add h                                         ; $71d6: $84
    xor e                                         ; $71d7: $ab
    call nc, $d5aa                                ; $71d8: $d4 $aa $d5
    cp d                                          ; $71db: $ba
    push bc                                       ; $71dc: $c5
    or $89                                        ; $71dd: $f6 $89
    rst RST_38                                    ; $71df: $ff
    rst RST_38                                    ; $71e0: $ff
    add b                                         ; $71e1: $80
    add [hl]                                      ; $71e2: $86
    rlca                                          ; $71e3: $07
    and d                                         ; $71e4: $a2
    and h                                         ; $71e5: $a4
    add h                                         ; $71e6: $84
    ld d, h                                       ; $71e7: $54
    ld d, l                                       ; $71e8: $55
    ld b, l                                       ; $71e9: $45
    add hl, bc                                    ; $71ea: $09
    sbc e                                         ; $71eb: $9b
    rst RST_38                                    ; $71ec: $ff
    rst RST_38                                    ; $71ed: $ff
    ld e, l                                       ; $71ee: $5d
    and e                                         ; $71ef: $a3
    ld e, e                                       ; $71f0: $5b
    and l                                         ; $71f1: $a5
    ld a, e                                       ; $71f2: $7b
    add l                                         ; $71f3: $85
    xor e                                         ; $71f4: $ab
    ld d, l                                       ; $71f5: $55
    xor e                                         ; $71f6: $ab
    ld d, l                                       ; $71f7: $55
    cp e                                          ; $71f8: $bb
    ld b, l                                       ; $71f9: $45
    rst RST_30                                    ; $71fa: $f7
    add hl, bc                                    ; $71fb: $09
    rst RST_38                                    ; $71fc: $ff
    rst RST_38                                    ; $71fd: $ff
    ld bc, $ff00                                  ; $71fe: $01 $00 $ff
    rst RST_38                                    ; $7201: $ff
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    rst RST_38                                    ; $7204: $ff
    rst RST_38                                    ; $7205: $ff
    nop                                           ; $7206: $00
    inc b                                         ; $7207: $04
    rst RST_38                                    ; $7208: $ff
    and e                                         ; $7209: $a3
    nop                                           ; $720a: $00
    rst RST_38                                    ; $720b: $ff
    rst RST_38                                    ; $720c: $ff
    nop                                           ; $720d: $00
    nop                                           ; $720e: $00
    rst RST_38                                    ; $720f: $ff
    nop                                           ; $7210: $00
    rst RST_38                                    ; $7211: $ff
    nop                                           ; $7212: $00
    rst RST_38                                    ; $7213: $ff
    rst RST_38                                    ; $7214: $ff
    nop                                           ; $7215: $00
    rst RST_38                                    ; $7216: $ff
    nop                                           ; $7217: $00
    rst RST_38                                    ; $7218: $ff
    or l                                          ; $7219: $b5
    ld c, d                                       ; $721a: $4a
    ld [hl], a                                    ; $721b: $77
    adc b                                         ; $721c: $88
    and a                                         ; $721d: $a7
    cp l                                          ; $721e: $bd
    and a                                         ; $721f: $a7
    cp l                                          ; $7220: $bd
    and a                                         ; $7221: $a7
    cp l                                          ; $7222: $bd
    and a                                         ; $7223: $a7
    cp l                                          ; $7224: $bd
    and a                                         ; $7225: $a7
    cp l                                          ; $7226: $bd
    and a                                         ; $7227: $a7
    cp l                                          ; $7228: $bd
    and a                                         ; $7229: $a7
    cp l                                          ; $722a: $bd
    and a                                         ; $722b: $a7
    cp l                                          ; $722c: $bd
    add b                                         ; $722d: $80
    add c                                         ; $722e: $81
    ld b, $01                                     ; $722f: $06 $01
    ld bc, $0101                                  ; $7231: $01 $01 $01
    ld bc, $ff01                                  ; $7234: $01 $01 $ff
    pop hl                                        ; $7237: $e1
    ld h, b                                       ; $7238: $60
    or c                                          ; $7239: $b1
    sub b                                         ; $723a: $90
    cp a                                          ; $723b: $bf
    sub b                                         ; $723c: $90
    cp a                                          ; $723d: $bf
    sbc d                                         ; $723e: $9a
    cp a                                          ; $723f: $bf
    sub b                                         ; $7240: $90
    cp a                                          ; $7241: $bf
    sbc d                                         ; $7242: $9a
    cp a                                          ; $7243: $bf
    sbc d                                         ; $7244: $9a
    cp a                                          ; $7245: $bf
    sub b                                         ; $7246: $90
    cp a                                          ; $7247: $bf
    sbc d                                         ; $7248: $9a
    cp a                                          ; $7249: $bf
    sub b                                         ; $724a: $90
    pop af                                        ; $724b: $f1
    ld d, b                                       ; $724c: $50
    pop af                                        ; $724d: $f1
    or b                                          ; $724e: $b0
    pop af                                        ; $724f: $f1
    ldh a, [$ffb1]                                ; $7250: $f0 $b1
    or b                                          ; $7252: $b0
    pop af                                        ; $7253: $f1
    or b                                          ; $7254: $b0
    pop af                                        ; $7255: $f1
    or b                                          ; $7256: $b0
    pop af                                        ; $7257: $f1
    or b                                          ; $7258: $b0
    pop af                                        ; $7259: $f1
    ld d, b                                       ; $725a: $50
    rst RST_38                                    ; $725b: $ff
    nop                                           ; $725c: $00
    rst RST_38                                    ; $725d: $ff
    nop                                           ; $725e: $00
    rst RST_38                                    ; $725f: $ff
    nop                                           ; $7260: $00
    rst RST_38                                    ; $7261: $ff
    nop                                           ; $7262: $00
    rst RST_38                                    ; $7263: $ff
    nop                                           ; $7264: $00
    rst RST_38                                    ; $7265: $ff
    nop                                           ; $7266: $00
    rst RST_38                                    ; $7267: $ff
    ld b, $fd                                     ; $7268: $06 $fd
    add hl, bc                                    ; $726a: $09
    db $fd                                        ; $726b: $fd
    add hl, bc                                    ; $726c: $09
    db $fd                                        ; $726d: $fd
    ld e, c                                       ; $726e: $59
    db $fd                                        ; $726f: $fd
    add hl, bc                                    ; $7270: $09
    db $fd                                        ; $7271: $fd
    ld e, c                                       ; $7272: $59
    db $fd                                        ; $7273: $fd
    ld e, c                                       ; $7274: $59
    db $fd                                        ; $7275: $fd
    add hl, bc                                    ; $7276: $09
    db $fd                                        ; $7277: $fd
    ld e, c                                       ; $7278: $59
    db $fd                                        ; $7279: $fd
    add hl, bc                                    ; $727a: $09
    rrca                                          ; $727b: $0f
    ld a, [bc]                                    ; $727c: $0a
    rrca                                          ; $727d: $0f
    dec c                                         ; $727e: $0d
    rrca                                          ; $727f: $0f
    rrca                                          ; $7280: $0f
    dec c                                         ; $7281: $0d
    dec c                                         ; $7282: $0d
    rrca                                          ; $7283: $0f
    dec c                                         ; $7284: $0d
    rrca                                          ; $7285: $0f
    dec c                                         ; $7286: $0d
    rrca                                          ; $7287: $0f
    dec c                                         ; $7288: $0d
    rrca                                          ; $7289: $0f
    ld a, [bc]                                    ; $728a: $0a
    rst RST_38                                    ; $728b: $ff
    nop                                           ; $728c: $00
    rst RST_38                                    ; $728d: $ff
    ld e, d                                       ; $728e: $5a
    rst RST_38                                    ; $728f: $ff
    nop                                           ; $7290: $00
    rst RST_38                                    ; $7291: $ff
    ld e, d                                       ; $7292: $5a
    rst RST_38                                    ; $7293: $ff
    ld e, d                                       ; $7294: $5a
    rst RST_38                                    ; $7295: $ff
    nop                                           ; $7296: $00
    rst RST_38                                    ; $7297: $ff
    ld e, d                                       ; $7298: $5a
    rst RST_38                                    ; $7299: $ff
    nop                                           ; $729a: $00
    rst RST_38                                    ; $729b: $ff
    nop                                           ; $729c: $00
    rst RST_38                                    ; $729d: $ff
    nop                                           ; $729e: $00
    rst RST_38                                    ; $729f: $ff
    nop                                           ; $72a0: $00
    rst RST_38                                    ; $72a1: $ff
    nop                                           ; $72a2: $00
    rst RST_38                                    ; $72a3: $ff
    nop                                           ; $72a4: $00
    rst RST_38                                    ; $72a5: $ff
    nop                                           ; $72a6: $00
    rst RST_38                                    ; $72a7: $ff
    nop                                           ; $72a8: $00
    rst RST_38                                    ; $72a9: $ff
    nop                                           ; $72aa: $00
    push af                                       ; $72ab: $f5
    or a                                          ; $72ac: $b7
    push af                                       ; $72ad: $f5
    or a                                          ; $72ae: $b7
    push af                                       ; $72af: $f5
    or a                                          ; $72b0: $b7
    db $fd                                        ; $72b1: $fd
    cp a                                          ; $72b2: $bf
    db $fd                                        ; $72b3: $fd
    cp a                                          ; $72b4: $bf
    rst RST_38                                    ; $72b5: $ff
    adc d                                         ; $72b6: $8a
    cp a                                          ; $72b7: $bf
    rst RST_38                                    ; $72b8: $ff
    add b                                         ; $72b9: $80
    rst RST_38                                    ; $72ba: $ff
    cp a                                          ; $72bb: $bf
    rst RST_18                                    ; $72bc: $df
    ld d, l                                       ; $72bd: $55
    rst RST_18                                    ; $72be: $df
    ld d, l                                       ; $72bf: $55
    rst RST_18                                    ; $72c0: $df
    add b                                         ; $72c1: $80
    add l                                         ; $72c2: $85
    dec b                                         ; $72c3: $05
    ld d, l                                       ; $72c4: $55
    ld [hl], l                                    ; $72c5: $75
    push af                                       ; $72c6: $f5
    db $fd                                        ; $72c7: $fd
    ld bc, $fd88                                  ; $72c8: $01 $88 $fd
    ei                                            ; $72cb: $fb
    xor d                                         ; $72cc: $aa
    ei                                            ; $72cd: $fb
    xor d                                         ; $72ce: $aa
    ei                                            ; $72cf: $fb
    xor d                                         ; $72d0: $aa
    ei                                            ; $72d1: $fb
    add b                                         ; $72d2: $80
    add l                                         ; $72d3: $85
    inc b                                         ; $72d4: $04
    xor d                                         ; $72d5: $aa
    xor [hl]                                      ; $72d6: $ae
    cp a                                          ; $72d7: $bf
    add b                                         ; $72d8: $80
    adc b                                         ; $72d9: $88
    rst RST_38                                    ; $72da: $ff
    xor a                                         ; $72db: $af
    db $ed                                        ; $72dc: $ed
    xor a                                         ; $72dd: $af
    db $ed                                        ; $72de: $ed
    xor a                                         ; $72df: $af
    db $ed                                        ; $72e0: $ed
    cp a                                          ; $72e1: $bf
    add b                                         ; $72e2: $80
    add l                                         ; $72e3: $85
    inc b                                         ; $72e4: $04
    db $fd                                        ; $72e5: $fd
    db $fd                                        ; $72e6: $fd
    db $fd                                        ; $72e7: $fd
    ld bc, $ff8a                                  ; $72e8: $01 $8a $ff
    rst RST_38                                    ; $72eb: $ff
    nop                                           ; $72ec: $00
    rst RST_38                                    ; $72ed: $ff
    rst RST_38                                    ; $72ee: $ff
    nop                                           ; $72ef: $00
    nop                                           ; $72f0: $00
    rst RST_38                                    ; $72f1: $ff
    rst RST_38                                    ; $72f2: $ff
    nop                                           ; $72f3: $00
    inc b                                         ; $72f4: $04
    rst RST_38                                    ; $72f5: $ff
    add e                                         ; $72f6: $83
    nop                                           ; $72f7: $00
    rst RST_38                                    ; $72f8: $ff
    rst RST_38                                    ; $72f9: $ff
    inc b                                         ; $72fa: $04
    nop                                           ; $72fb: $00
    add [hl]                                      ; $72fc: $86
    stop                                          ; $72fd: $10 $00
    ld d, d                                       ; $72ff: $52
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    ld d, d                                       ; $7302: $52
    ld b, $00                                     ; $7303: $06 $00
    adc [hl]                                      ; $7305: $8e
    rst RST_38                                    ; $7306: $ff
    nop                                           ; $7307: $00
    rst RST_38                                    ; $7308: $ff
    nop                                           ; $7309: $00
    rst RST_30                                    ; $730a: $f7
    ld [$4ab5], sp                                ; $730b: $08 $b5 $4a
    or l                                          ; $730e: $b5
    ld c, d                                       ; $730f: $4a
    rst RST_38                                    ; $7310: $ff
    nop                                           ; $7311: $00
    rst RST_38                                    ; $7312: $ff
    nop                                           ; $7313: $00
    add b                                         ; $7314: $80
    inc bc                                        ; $7315: $03

jr_003_7316:
    rst RST_38                                    ; $7316: $ff
    add b                                         ; $7317: $80
    add d                                         ; $7318: $82
    inc b                                         ; $7319: $04
    ld bc, $0101                                  ; $731a: $01 $01 $01
    ld bc, $8180                                  ; $731d: $01 $80 $81
    inc b                                         ; $7320: $04
    ld [bc], a                                    ; $7321: $02
    ld bc, $0305                                  ; $7322: $01 $05 $03
    add l                                         ; $7325: $85
    inc bc                                        ; $7326: $03
    inc b                                         ; $7327: $04
    rlca                                          ; $7328: $07
    ld c, $09                                     ; $7329: $0e $09
    add b                                         ; $732b: $80
    inc bc                                        ; $732c: $03
    dec c                                         ; $732d: $0d
    pop hl                                        ; $732e: $e1
    ld a, [bc]                                    ; $732f: $0a
    rrca                                          ; $7330: $0f
    ld a, [bc]                                    ; $7331: $0a
    ld [$1b08], sp                                ; $7332: $08 $08 $1b
    inc de                                        ; $7335: $13
    ld bc, $4180                                  ; $7336: $01 $80 $41
    ret nz                                        ; $7339: $c0

    pop hl                                        ; $733a: $e1
    jr nz, @+$63                                  ; $733b: $20 $61

    ldh [$ffe1], a                                ; $733d: $e0 $e1
    and b                                         ; $733f: $a0
    pop hl                                        ; $7340: $e1
    and b                                         ; $7341: $a0
    ld sp, $b930                                  ; $7342: $31 $30 $b9
    adc b                                         ; $7345: $88
    dec sp                                        ; $7346: $3b
    add hl, hl                                    ; $7347: $29
    dec sp                                        ; $7348: $3b
    inc a                                         ; $7349: $3c
    rrca                                          ; $734a: $0f
    rrca                                          ; $734b: $0f
    dec c                                         ; $734c: $0d
    dec bc                                        ; $734d: $0b
    rrca                                          ; $734e: $0f
    rrca                                          ; $734f: $0f
    dec b                                         ; $7350: $05
    rlca                                          ; $7351: $07
    rlca                                          ; $7352: $07
    dec b                                         ; $7353: $05
    rlca                                          ; $7354: $07
    rlca                                          ; $7355: $07
    cp c                                          ; $7356: $b9
    jr z, jr_003_7316                             ; $7357: $28 $bd

    ld [hl], h                                    ; $7359: $74
    db $fd                                        ; $735a: $fd
    db $f4                                        ; $735b: $f4
    db $ed                                        ; $735c: $ed
    add sp, -$3f                                  ; $735d: $e8 $c1
    ld b, b                                       ; $735f: $40
    pop bc                                        ; $7360: $c1
    ret nz                                        ; $7361: $c0

    ld bc, $0100                                  ; $7362: $01 $00 $01
    nop                                           ; $7365: $00
    scf                                           ; $7366: $37
    inc sp                                        ; $7367: $33
    ld a, a                                       ; $7368: $7f
    ld a, a                                       ; $7369: $7f
    ld e, a                                       ; $736a: $5f
    ld l, a                                       ; $736b: $6f
    ld e, a                                       ; $736c: $5f
    ld e, a                                       ; $736d: $5f
    ld e, d                                       ; $736e: $5a
    ld e, a                                       ; $736f: $5f
    sbc a                                         ; $7370: $9f
    sbc d                                         ; $7371: $9a
    rrca                                          ; $7372: $0f
    ld a, [bc]                                    ; $7373: $0a
    rlca                                          ; $7374: $07
    inc b                                         ; $7375: $04
    reti                                          ; $7376: $d9


    sbc b                                         ; $7377: $98
    db $fd                                        ; $7378: $fd
    db $fc                                        ; $7379: $fc
    push af                                       ; $737a: $f5
    db $ec                                        ; $737b: $ec
    push af                                       ; $737c: $f5
    db $f4                                        ; $737d: $f4
    or l                                          ; $737e: $b5
    db $f4                                        ; $737f: $f4
    di                                            ; $7380: $f3
    or d                                          ; $7381: $b2
    pop hl                                        ; $7382: $e1
    and b                                         ; $7383: $a0
    pop bc                                        ; $7384: $c1
    ld b, b                                       ; $7385: $40
    dec bc                                        ; $7386: $0b
    rrca                                          ; $7387: $0f
    rrca                                          ; $7388: $0f
    ld a, [bc]                                    ; $7389: $0a
    rrca                                          ; $738a: $0f
    add hl, bc                                    ; $738b: $09
    inc c                                         ; $738c: $0c
    rrca                                          ; $738d: $0f
    rlca                                          ; $738e: $07
    inc b                                         ; $738f: $04
    inc bc                                        ; $7390: $03
    inc bc                                        ; $7391: $03
    cp l                                          ; $7392: $bd
    ld [bc], a                                    ; $7393: $02
    ld bc, $a101                                  ; $7394: $01 $01 $a1
    ldh [$ffe1], a                                ; $7397: $e0 $e1
    and b                                         ; $7399: $a0
    pop hl                                        ; $739a: $e1
    jr nz, @+$63                                  ; $739b: $20 $61

    ldh [$ffc1], a                                ; $739d: $e0 $c1
    ld b, b                                       ; $739f: $40
    pop bc                                        ; $73a0: $c1
    add b                                         ; $73a1: $80
    add c                                         ; $73a2: $81
    add b                                         ; $73a3: $80
    add c                                         ; $73a4: $81
    add b                                         ; $73a5: $80
    inc bc                                        ; $73a6: $03
    rlca                                          ; $73a7: $07
    rrca                                          ; $73a8: $0f
    rrca                                          ; $73a9: $0f
    rra                                           ; $73aa: $1f
    rrca                                          ; $73ab: $0f
    rra                                           ; $73ac: $1f
    rra                                           ; $73ad: $1f
    ld a, [de]                                    ; $73ae: $1a
    rra                                           ; $73af: $1f
    ccf                                           ; $73b0: $3f
    ld a, [de]                                    ; $73b1: $1a
    ccf                                           ; $73b2: $3f
    ld a, [hl-]                                   ; $73b3: $3a
    ccf                                           ; $73b4: $3f
    inc a                                         ; $73b5: $3c
    add c                                         ; $73b6: $81
    ret nz                                        ; $73b7: $c0

    pop hl                                        ; $73b8: $e1
    ldh [$fff1], a                                ; $73b9: $e0 $f1
    ldh [$fff1], a                                ; $73bb: $e0 $f1
    ldh a, [$ffb1]                                ; $73bd: $f0 $b1
    ldh a, [$fff9]                                ; $73bf: $f0 $f9
    or b                                          ; $73c1: $b0
    ld sp, hl                                     ; $73c2: $f9
    cp b                                          ; $73c3: $b8
    ld sp, hl                                     ; $73c4: $f9
    ld a, b                                       ; $73c5: $78
    dec sp                                        ; $73c6: $3b
    ccf                                           ; $73c7: $3f
    rra                                           ; $73c8: $1f
    ld a, [bc]                                    ; $73c9: $0a
    rrca                                          ; $73ca: $0f
    add hl, bc                                    ; $73cb: $09
    inc c                                         ; $73cc: $0c
    rrca                                          ; $73cd: $0f
    rlca                                          ; $73ce: $07
    inc b                                         ; $73cf: $04
    inc bc                                        ; $73d0: $03
    inc bc                                        ; $73d1: $03
    sbc c                                         ; $73d2: $99
    ld [bc], a                                    ; $73d3: $02
    ld bc, $b901                                  ; $73d4: $01 $01 $b9
    ld hl, sp-$0f                                 ; $73d7: $f8 $f1
    and b                                         ; $73d9: $a0
    pop hl                                        ; $73da: $e1
    jr nz, @+$63                                  ; $73db: $20 $61

    ldh [$ffc1], a                                ; $73dd: $e0 $c1
    ld b, b                                       ; $73df: $40
    pop bc                                        ; $73e0: $c1
    add b                                         ; $73e1: $80
    add c                                         ; $73e2: $81
    add b                                         ; $73e3: $80
    add c                                         ; $73e4: $81
    add b                                         ; $73e5: $80
    rrca                                          ; $73e6: $0f
    ld a, [bc]                                    ; $73e7: $0a
    rrca                                          ; $73e8: $0f
    ld a, [bc]                                    ; $73e9: $0a
    rrca                                          ; $73ea: $0f
    ld [$1f03], sp                                ; $73eb: $08 $03 $1f
    rst RST_08                                    ; $73ee: $cf
    ld d, $0f                                     ; $73ef: $16 $0f
    inc c                                         ; $73f1: $0c
    dec e                                         ; $73f2: $1d
    inc de                                        ; $73f3: $13
    rra                                           ; $73f4: $1f
    rra                                           ; $73f5: $1f
    pop af                                        ; $73f6: $f1
    ld d, b                                       ; $73f7: $50
    pop af                                        ; $73f8: $f1
    ld d, b                                       ; $73f9: $50
    pop af                                        ; $73fa: $f1
    db $10                                        ; $73fb: $10
    ld sp, hl                                     ; $73fc: $f9
    ld hl, sp-$07                                 ; $73fd: $f8 $f9
    ld l, b                                       ; $73ff: $68
    pop af                                        ; $7400: $f1
    jr nc, @-$45                                  ; $7401: $30 $b9

    ret z                                         ; $7403: $c8

    ld sp, hl                                     ; $7404: $f9
    ld hl, sp+$01                                 ; $7405: $f8 $01
    nop                                           ; $7407: $00
    ld bc, $0100                                  ; $7408: $01 $00 $01
    nop                                           ; $740b: $00
    rlca                                          ; $740c: $07
    rlca                                          ; $740d: $07
    rrca                                          ; $740e: $0f
    rrca                                          ; $740f: $0f
    ld a, [de]                                    ; $7410: $1a
    rla                                           ; $7411: $17

jr_003_7412:
    rra                                           ; $7412: $1f
    rra                                           ; $7413: $1f

jr_003_7414:
    ld a, [de]                                    ; $7414: $1a
    rra                                           ; $7415: $1f
    ld bc, $0100                                  ; $7416: $01 $00 $01
    nop                                           ; $7419: $00
    ld bc, $c100                                  ; $741a: $01 $00 $c1
    add b                                         ; $741d: $80
    pop hl                                        ; $741e: $e1
    ldh [$fff1], a                                ; $741f: $e0 $f1
    ldh a, [$fff1]                                ; $7421: $f0 $f1
    ldh a, [$fff1]                                ; $7423: $f0 $f1
    ldh a, [$fff1]                                ; $7425: $f0 $f1
    ldh a, [$fff1]                                ; $7427: $f0 $f1
    ldh a, [$ffc1]                                ; $7429: $f0 $c1
    ret nz                                        ; $742b: $c0

    ld hl, $e1c0                                  ; $742c: $21 $c0 $e1
    jr nz, jr_003_7412                            ; $742f: $20 $e1

    jr nz, jr_003_7414                            ; $7431: $20 $e1

    jr nz, jr_003_7456                            ; $7433: $20 $21

    ldh [rDIV], a                                 ; $7435: $e0 $04
    inc b                                         ; $7437: $04
    rlca                                          ; $7438: $07
    rlca                                          ; $7439: $07
    rrca                                          ; $743a: $0f
    ld c, $00                                     ; $743b: $0e $00
    ld bc, $8180                                  ; $743d: $01 $80 $81
    inc b                                         ; $7440: $04
    ld bc, $0101                                  ; $7441: $01 $01 $01
    ld bc, $2188                                  ; $7444: $01 $88 $21
    jr nz, @-$1d                                  ; $7447: $20 $e1

    ldh [$ffe1], a                                ; $7449: $e0 $e1
    and b                                         ; $744b: $a0
    pop hl                                        ; $744c: $e1
    ldh [$ff80], a                                ; $744d: $e0 $80
    add c                                         ; $744f: $81
    ld [$0101], sp                                ; $7450: $08 $01 $01
    ld bc, $0101                                  ; $7453: $01 $01 $01

jr_003_7456:
    ld bc, $0101                                  ; $7456: $01 $01 $01
    adc b                                         ; $7459: $88
    rra                                           ; $745a: $1f
    rrca                                          ; $745b: $0f
    ld a, [de]                                    ; $745c: $1a
    rla                                           ; $745d: $17

jr_003_745e:
    rra                                           ; $745e: $1f
    rra                                           ; $745f: $1f

jr_003_7460:
    ld a, [bc]                                    ; $7460: $0a
    rrca                                          ; $7461: $0f
    add b                                         ; $7462: $80
    add c                                         ; $7463: $81
    inc b                                         ; $7464: $04
    ld bc, $0101                                  ; $7465: $01 $01 $01
    ld bc, $e1a0                                  ; $7468: $01 $a0 $e1
    ldh [$fff1], a                                ; $746b: $e0 $f1
    ldh a, [$fff1]                                ; $746d: $f0 $f1
    ldh a, [$fff1]                                ; $746f: $f0 $f1
    ldh a, [$fff1]                                ; $7471: $f0 $f1

jr_003_7473:
    or b                                          ; $7473: $b0
    pop hl                                        ; $7474: $e1
    ld h, b                                       ; $7475: $60
    pop bc                                        ; $7476: $c1
    ret nz                                        ; $7477: $c0

    ld hl, $e1c0                                  ; $7478: $21 $c0 $e1
    jr nz, jr_003_745e                            ; $747b: $20 $e1

    jr nz, jr_003_7460                            ; $747d: $20 $e1

    jr nz, @+$23                                  ; $747f: $20 $21

    ldh [rTAC], a                                 ; $7481: $e0 $07
    rlca                                          ; $7483: $07
    dec b                                         ; $7484: $05
    rlca                                          ; $7485: $07
    rrca                                          ; $7486: $0f
    ld c, $00                                     ; $7487: $0e $00
    ld bc, $8180                                  ; $7489: $01 $80 $81
    inc b                                         ; $748c: $04
    ld bc, $0101                                  ; $748d: $01 $01 $01
    ld bc, $2188                                  ; $7490: $01 $88 $21
    ldh [$ffa1], a                                ; $7493: $e0 $a1
    ldh [$ffa1], a                                ; $7495: $e0 $a1
    ldh [$ffe1], a                                ; $7497: $e0 $e1
    ldh [$ff80], a                                ; $7499: $e0 $80
    add c                                         ; $749b: $81
    rlca                                          ; $749c: $07
    ld bc, $0101                                  ; $749d: $01 $01 $01
    ld bc, $0101                                  ; $74a0: $01 $01 $01
    ld bc, $0fa2                                  ; $74a3: $01 $a2 $0f
    rrca                                          ; $74a6: $0f
    ld a, a                                       ; $74a7: $7f
    ld a, a                                       ; $74a8: $7f
    ld a, [hl-]                                   ; $74a9: $3a
    scf                                           ; $74aa: $37
    rra                                           ; $74ab: $1f
    rra                                           ; $74ac: $1f
    ld a, [bc]                                    ; $74ad: $0a
    rrca                                          ; $74ae: $0f
    ld bc, $0100                                  ; $74af: $01 $00 $01
    nop                                           ; $74b2: $00
    ld bc, $e100                                  ; $74b3: $01 $00 $e1
    ret nz                                        ; $74b6: $c0

    pop af                                        ; $74b7: $f1
    ldh [$fff1], a                                ; $74b8: $e0 $f1
    ldh a, [$fff1]                                ; $74ba: $f0 $f1
    ldh a, [$fff1]                                ; $74bc: $f0 $f1
    ldh a, [rTAC]                                 ; $74be: $f0 $07
    rlca                                          ; $74c0: $07
    dec b                                         ; $74c1: $05
    dec b                                         ; $74c2: $05
    rrca                                          ; $74c3: $0f
    ld c, $00                                     ; $74c4: $0e $00
    ld bc, $8180                                  ; $74c6: $01 $80 $81
    inc b                                         ; $74c9: $04
    ld bc, $0101                                  ; $74ca: $01 $01 $01
    ld bc, $2188                                  ; $74cd: $01 $88 $21
    jr nz, jr_003_7473                            ; $74d0: $20 $a1

    and b                                         ; $74d2: $a0
    and c                                         ; $74d3: $a1
    and b                                         ; $74d4: $a0
    pop hl                                        ; $74d5: $e1
    ldh [$ff80], a                                ; $74d6: $e0 $80
    add c                                         ; $74d8: $81
    rlca                                          ; $74d9: $07
    ld bc, $0101                                  ; $74da: $01 $01 $01
    ld bc, $0101                                  ; $74dd: $01 $01 $01
    ld bc, $0386                                  ; $74e0: $01 $86 $03
    ld bc, $0707                                  ; $74e3: $01 $07 $07
    rrca                                          ; $74e6: $0f
    rlca                                          ; $74e7: $07
    inc b                                         ; $74e8: $04
    rrca                                          ; $74e9: $0f
    xor b                                         ; $74ea: $a8
    ld bc, $0100                                  ; $74eb: $01 $00 $01
    nop                                           ; $74ee: $00

jr_003_74ef:
    ld bc, $e100                                  ; $74ef: $01 $00 $e1
    ldh [$fff1], a                                ; $74f2: $e0 $f1
    ldh a, [$ff59]                                ; $74f4: $f0 $59
    add sp, -$07                                  ; $74f6: $e8 $f9
    ld hl, sp+$59                                 ; $74f8: $f8 $59
    ld hl, sp+$7f                                 ; $74fa: $f8 $7f
    inc b                                         ; $74fc: $04
    ld a, a                                       ; $74fd: $7f
    rlca                                          ; $74fe: $07
    ld a, a                                       ; $74ff: $7f
    dec b                                         ; $7500: $05
    ld a, a                                       ; $7501: $7f
    rlca                                          ; $7502: $07
    ld a, [hl]                                    ; $7503: $7e
    ld bc, $017e                                  ; $7504: $01 $7e $01
    ld a, [hl]                                    ; $7507: $7e
    ld bc, $017e                                  ; $7508: $01 $7e $01
    pop hl                                        ; $750b: $e1
    jr nz, jr_003_74ef                            ; $750c: $20 $e1

    ldh [$ff71], a                                ; $750e: $e0 $71
    ld [hl], b                                    ; $7510: $70
    ld bc, $8080                                  ; $7511: $01 $80 $80
    add c                                         ; $7514: $81
    inc b                                         ; $7515: $04
    ld bc, $0101                                  ; $7516: $01 $01 $01
    ld bc, $0f04                                  ; $7519: $01 $04 $0f
    sbc b                                         ; $751c: $98
    ld c, a                                       ; $751d: $4f
    rrca                                          ; $751e: $0f
    ld l, a                                       ; $751f: $6f
    rlca                                          ; $7520: $07
    ld [hl], a                                    ; $7521: $77
    rlca                                          ; $7522: $07
    ld a, a                                       ; $7523: $7f
    rlca                                          ; $7524: $07
    ld a, a                                       ; $7525: $7f
    inc b                                         ; $7526: $04
    ld a, h                                       ; $7527: $7c
    rlca                                          ; $7528: $07
    ld bc, $0100                                  ; $7529: $01 $00 $01
    nop                                           ; $752c: $00
    ld bc, $0300                                  ; $752d: $01 $00 $03
    ld bc, $0707                                  ; $7530: $01 $07 $07
    rla                                           ; $7533: $17
    rra                                           ; $7534: $1f
    inc b                                         ; $7535: $04
    ccf                                           ; $7536: $3f
    sub c                                         ; $7537: $91
    ld bc, $0100                                  ; $7538: $01 $00 $01
    nop                                           ; $753b: $00
    ld bc, $e100                                  ; $753c: $01 $00 $e1
    ldh [$fff1], a                                ; $753f: $e0 $f1
    ldh a, [$ff59]                                ; $7541: $f0 $59
    add sp, -$07                                  ; $7543: $e8 $f9
    ld hl, sp+$59                                 ; $7545: $f8 $59
    ld hl, sp+$3f                                 ; $7547: $f8 $3f
    inc bc                                        ; $7549: $03
    scf                                           ; $754a: $37
    adc [hl]                                      ; $754b: $8e
    inc sp                                        ; $754c: $33
    inc sp                                        ; $754d: $33
    inc d                                         ; $754e: $14
    inc de                                        ; $754f: $13
    inc d                                         ; $7550: $14
    inc d                                         ; $7551: $14
    dec d                                         ; $7552: $15

jr_003_7553:
    inc d                                         ; $7553: $14
    dec b                                         ; $7554: $05
    inc b                                         ; $7555: $04
    inc b                                         ; $7556: $04
    rlca                                          ; $7557: $07
    rlca                                          ; $7558: $07
    inc b                                         ; $7559: $04
    inc bc                                        ; $755a: $03
    rlca                                          ; $755b: $07
    add e                                         ; $755c: $83
    dec b                                         ; $755d: $05
    rlca                                          ; $755e: $07
    rlca                                          ; $755f: $07
    add b                                         ; $7560: $80
    add c                                         ; $7561: $81
    inc b                                         ; $7562: $04
    ld bc, $0101                                  ; $7563: $01 $01 $01
    ld bc, $8700                                  ; $7566: $01 $00 $87
    rrca                                          ; $7569: $0f
    rrca                                          ; $756a: $0f
    inc d                                         ; $756b: $14
    dec de                                        ; $756c: $1b
    dec de                                        ; $756d: $1b
    rla                                           ; $756e: $17
    rla                                           ; $756f: $17
    inc bc                                        ; $7570: $03
    rra                                           ; $7571: $1f
    add d                                         ; $7572: $82
    rrca                                          ; $7573: $0f
    rrca                                          ; $7574: $0f
    inc bc                                        ; $7575: $03
    rra                                           ; $7576: $1f
    sub l                                         ; $7577: $95
    rla                                           ; $7578: $17
    scf                                           ; $7579: $37
    jr z, jr_003_75b7                             ; $757a: $28 $3b

    inc l                                         ; $757c: $2c
    ccf                                           ; $757d: $3f
    ccf                                           ; $757e: $3f
    dec c                                         ; $757f: $0d
    dec bc                                        ; $7580: $0b
    rrca                                          ; $7581: $0f
    rrca                                          ; $7582: $0f
    dec b                                         ; $7583: $05
    rlca                                          ; $7584: $07
    rlca                                          ; $7585: $07
    dec b                                         ; $7586: $05
    rlca                                          ; $7587: $07

jr_003_7588:
    rlca                                          ; $7588: $07
    db $fc                                        ; $7589: $fc
    db $fc                                        ; $758a: $fc
    or b                                          ; $758b: $b0
    ldh a, [$ff80]                                ; $758c: $f0 $80
    add e                                         ; $758e: $83
    dec b                                         ; $758f: $05
    db $fc                                        ; $7590: $fc
    ldh a, [$fff0]                                ; $7591: $f0 $f0
    ldh [$fff0], a                                ; $7593: $e0 $f0
    xor e                                         ; $7595: $ab
    ldh a, [$ffd0]                                ; $7596: $f0 $d0
    ret c                                         ; $7598: $d8

    jr z, jr_003_7553                             ; $7599: $28 $b8

    ld l, b                                       ; $759b: $68
    ld hl, sp-$08                                 ; $759c: $f8 $f8
    and b                                         ; $759e: $a0
    ld h, b                                       ; $759f: $60
    ldh [$ffe0], a                                ; $75a0: $e0 $e0
    ld b, b                                       ; $75a2: $40
    ret nz                                        ; $75a3: $c0

    ret nz                                        ; $75a4: $c0

    ld b, b                                       ; $75a5: $40
    ret nz                                        ; $75a6: $c0

    ret nz                                        ; $75a7: $c0

    ld a, a                                       ; $75a8: $7f
    ld a, a                                       ; $75a9: $7f
    ld a, [de]                                    ; $75aa: $1a
    rla                                           ; $75ab: $17
    ld a, a                                       ; $75ac: $7f
    ld a, a                                       ; $75ad: $7f
    ld a, [de]                                    ; $75ae: $1a
    rra                                           ; $75af: $1f
    rra                                           ; $75b0: $1f
    ld a, [de]                                    ; $75b1: $1a
    rrca                                          ; $75b2: $0f
    ld a, [bc]                                    ; $75b3: $0a
    rra                                           ; $75b4: $1f
    inc e                                         ; $75b5: $1c
    rra                                           ; $75b6: $1f

jr_003_75b7:
    rla                                           ; $75b7: $17
    scf                                           ; $75b8: $37
    jr z, jr_003_75f6                             ; $75b9: $28 $3b

    inc l                                         ; $75bb: $2c
    ccf                                           ; $75bc: $3f
    ccf                                           ; $75bd: $3f
    rrca                                          ; $75be: $0f
    rrca                                          ; $75bf: $0f
    dec b                                         ; $75c0: $05
    inc bc                                        ; $75c1: $03
    rlca                                          ; $75c2: $07
    inc b                                         ; $75c3: $04
    ld bc, $e082                                  ; $75c4: $01 $82 $e0
    ldh [rDIV], a                                 ; $75c7: $e0 $04
    ldh a, [$ffb8]                                ; $75c9: $f0 $b8
    or b                                          ; $75cb: $b0
    ldh a, [$fff0]                                ; $75cc: $f0 $f0
    or b                                          ; $75ce: $b0
    ldh [$ffa0], a                                ; $75cf: $e0 $a0
    ldh a, [rSVBK]                                ; $75d1: $f0 $70
    ldh a, [$ffd0]                                ; $75d3: $f0 $d0
    ret nc                                        ; $75d5: $d0

    jr nc, jr_003_7588                            ; $75d6: $30 $b0

    ld h, b                                       ; $75d8: $60
    ldh [$ffe0], a                                ; $75d9: $e0 $e0
    ld h, b                                       ; $75db: $60
    and b                                         ; $75dc: $a0
    ldh [$ffe0], a                                ; $75dd: $e0 $e0
    ld b, b                                       ; $75df: $40
    ret nz                                        ; $75e0: $c0

    ret nz                                        ; $75e1: $c0

    ld b, b                                       ; $75e2: $40
    ret nz                                        ; $75e3: $c0

    ret nz                                        ; $75e4: $c0

    ld a, a                                       ; $75e5: $7f
    ld a, a                                       ; $75e6: $7f
    ld a, [de]                                    ; $75e7: $1a
    rla                                           ; $75e8: $17
    ld a, a                                       ; $75e9: $7f
    ld a, a                                       ; $75ea: $7f
    ld a, [de]                                    ; $75eb: $1a
    rra                                           ; $75ec: $1f
    rra                                           ; $75ed: $1f
    ld a, [de]                                    ; $75ee: $1a
    rrca                                          ; $75ef: $0f
    ld a, [bc]                                    ; $75f0: $0a
    rra                                           ; $75f1: $1f
    inc e                                         ; $75f2: $1c
    rra                                           ; $75f3: $1f
    rla                                           ; $75f4: $17
    rla                                           ; $75f5: $17

jr_003_75f6:
    jr jr_003_7613                                ; $75f6: $18 $1b

    inc c                                         ; $75f8: $0c
    rrca                                          ; $75f9: $0f
    rrca                                          ; $75fa: $0f
    dec bc                                        ; $75fb: $0b
    dec c                                         ; $75fc: $0d
    rrca                                          ; $75fd: $0f
    rrca                                          ; $75fe: $0f
    dec b                                         ; $75ff: $05
    rlca                                          ; $7600: $07
    rlca                                          ; $7601: $07
    dec b                                         ; $7602: $05
    add b                                         ; $7603: $80
    add e                                         ; $7604: $83
    inc b                                         ; $7605: $04
    rlca                                          ; $7606: $07
    ldh [$fff0], a                                ; $7607: $e0 $f0
    ldh a, [$ff93]                                ; $7609: $f0 $93
    or b                                          ; $760b: $b0
    ldh a, [$fff0]                                ; $760c: $f0 $f0
    or b                                          ; $760e: $b0
    ldh [$ffa0], a                                ; $760f: $e0 $a0
    ldh a, [rSVBK]                                ; $7611: $f0 $70

jr_003_7613:
    ldh a, [$ffd0]                                ; $7613: $f0 $d0
    ret c                                         ; $7615: $d8

    jr z, @-$46                                   ; $7616: $28 $b8

    ld l, b                                       ; $7618: $68
    ld hl, sp-$08                                 ; $7619: $f8 $f8
    ldh [$ffe0], a                                ; $761b: $e0 $e0
    ld b, b                                       ; $761d: $40
    inc bc                                        ; $761e: $03
    ret nz                                        ; $761f: $c0

    inc b                                         ; $7620: $04
    nop                                           ; $7621: $00
    adc e                                         ; $7622: $8b
    rrca                                          ; $7623: $0f
    rlca                                          ; $7624: $07
    rra                                           ; $7625: $1f
    rrca                                          ; $7626: $0f
    rra                                           ; $7627: $1f
    dec bc                                        ; $7628: $0b
    ccf                                           ; $7629: $3f
    dec sp                                        ; $762a: $3b
    ld a, a                                       ; $762b: $7f
    ccf                                           ; $762c: $3f
    ld a, a                                       ; $762d: $7f
    inc bc                                        ; $762e: $03
    ld l, a                                       ; $762f: $6f
    sub b                                         ; $7630: $90
    ld e, a                                       ; $7631: $5f
    ld d, a                                       ; $7632: $57
    ld [hl], a                                    ; $7633: $77
    ld l, b                                       ; $7634: $68
    ld a, e                                       ; $7635: $7b
    inc l                                         ; $7636: $2c
    ccf                                           ; $7637: $3f
    ccf                                           ; $7638: $3f
    dec c                                         ; $7639: $0d
    dec bc                                        ; $763a: $0b
    rrca                                          ; $763b: $0f
    rrca                                          ; $763c: $0f
    dec b                                         ; $763d: $05
    rlca                                          ; $763e: $07
    rlca                                          ; $763f: $07
    dec b                                         ; $7640: $05
    add b                                         ; $7641: $80
    add e                                         ; $7642: $83
    ld [$e007], sp                                ; $7643: $08 $07 $e0
    ldh a, [$fff0]                                ; $7646: $f0 $f0
    ldh a, [$fff0]                                ; $7648: $f0 $f0
    ldh a, [$ffe0]                                ; $764a: $f0 $e0
    sub b                                         ; $764c: $90
    ldh a, [$ffd0]                                ; $764d: $f0 $d0
    ret c                                         ; $764f: $d8

    jr z, @-$46                                   ; $7650: $28 $b8

    ld l, b                                       ; $7652: $68
    ld hl, sp-$08                                 ; $7653: $f8 $f8
    and b                                         ; $7655: $a0
    ld h, b                                       ; $7656: $60
    ldh [$ffe0], a                                ; $7657: $e0 $e0
    ld b, b                                       ; $7659: $40
    ret nz                                        ; $765a: $c0

    ret nz                                        ; $765b: $c0

    ld b, b                                       ; $765c: $40
    add b                                         ; $765d: $80
    add e                                         ; $765e: $83
    inc b                                         ; $765f: $04
    ret nz                                        ; $7660: $c0

    rrca                                          ; $7661: $0f
    rra                                           ; $7662: $1f
    rra                                           ; $7663: $1f
    sub e                                         ; $7664: $93
    ld a, [de]                                    ; $7665: $1a
    rra                                           ; $7666: $1f
    rra                                           ; $7667: $1f
    ld a, [de]                                    ; $7668: $1a
    rra                                           ; $7669: $1f
    ld a, [de]                                    ; $766a: $1a
    rrca                                          ; $766b: $0f
    inc c                                         ; $766c: $0c
    rra                                           ; $766d: $1f
    rla                                           ; $766e: $17
    scf                                           ; $766f: $37
    jr z, jr_003_76ad                             ; $7670: $28 $3b

    inc l                                         ; $7672: $2c
    ccf                                           ; $7673: $3f
    ccf                                           ; $7674: $3f
    rrca                                          ; $7675: $0f
    rrca                                          ; $7676: $0f
    dec b                                         ; $7677: $05
    inc bc                                        ; $7678: $03
    rlca                                          ; $7679: $07
    inc b                                         ; $767a: $04
    ld bc, $e09e                                  ; $767b: $01 $9e $e0
    ret nz                                        ; $767e: $c0

    ldh a, [$ffe0]                                ; $767f: $f0 $e0
    ldh a, [$fff0]                                ; $7681: $f0 $f0
    cp b                                          ; $7683: $b8
    ld hl, sp-$04                                 ; $7684: $f8 $fc
    cp b                                          ; $7686: $b8
    db $fc                                        ; $7687: $fc
    xor h                                         ; $7688: $ac
    db $ec                                        ; $7689: $ec
    ld a, h                                       ; $768a: $7c
    db $f4                                        ; $768b: $f4
    call nc, Call_000_34d4                        ; $768c: $d4 $d4 $34
    or h                                          ; $768f: $b4
    ld h, b                                       ; $7690: $60
    ldh [$ffe0], a                                ; $7691: $e0 $e0
    ld h, b                                       ; $7693: $60
    and b                                         ; $7694: $a0
    ldh [$ffe0], a                                ; $7695: $e0 $e0
    ld b, b                                       ; $7697: $40
    ret nz                                        ; $7698: $c0

    ret nz                                        ; $7699: $c0

    ld b, b                                       ; $769a: $40
    add b                                         ; $769b: $80
    add e                                         ; $769c: $83
    inc b                                         ; $769d: $04
    ret nz                                        ; $769e: $c0

    rrca                                          ; $769f: $0f
    rra                                           ; $76a0: $1f
    rra                                           ; $76a1: $1f
    or e                                          ; $76a2: $b3
    ld a, [de]                                    ; $76a3: $1a
    rra                                           ; $76a4: $1f
    rra                                           ; $76a5: $1f
    ld a, [de]                                    ; $76a6: $1a
    rra                                           ; $76a7: $1f
    ld a, [de]                                    ; $76a8: $1a
    rrca                                          ; $76a9: $0f
    inc e                                         ; $76aa: $1c
    rra                                           ; $76ab: $1f
    rla                                           ; $76ac: $17

jr_003_76ad:
    rla                                           ; $76ad: $17
    jr jr_003_76cb                                ; $76ae: $18 $1b

    inc c                                         ; $76b0: $0c
    rrca                                          ; $76b1: $0f
    rrca                                          ; $76b2: $0f
    dec bc                                        ; $76b3: $0b
    dec c                                         ; $76b4: $0d
    rrca                                          ; $76b5: $0f
    rrca                                          ; $76b6: $0f
    dec b                                         ; $76b7: $05
    rlca                                          ; $76b8: $07
    rlca                                          ; $76b9: $07
    dec b                                         ; $76ba: $05
    rlca                                          ; $76bb: $07
    rlca                                          ; $76bc: $07
    ldh [$ffc0], a                                ; $76bd: $e0 $c0
    ldh a, [$ffe0]                                ; $76bf: $f0 $e0
    ldh a, [$fff0]                                ; $76c1: $f0 $f0
    cp b                                          ; $76c3: $b8
    ld hl, sp-$04                                 ; $76c4: $f8 $fc
    cp b                                          ; $76c6: $b8
    db $fc                                        ; $76c7: $fc
    xor h                                         ; $76c8: $ac
    db $ec                                        ; $76c9: $ec
    ld l, h                                       ; $76ca: $6c

jr_003_76cb:
    db $f4                                        ; $76cb: $f4
    call nc, Call_000_2cdc                        ; $76cc: $d4 $dc $2c
    cp h                                          ; $76cf: $bc
    ld l, b                                       ; $76d0: $68
    ld hl, sp-$08                                 ; $76d1: $f8 $f8
    ldh [$ffe0], a                                ; $76d3: $e0 $e0
    ld b, b                                       ; $76d5: $40
    inc bc                                        ; $76d6: $03
    ret nz                                        ; $76d7: $c0

    jr jr_003_76da                                ; $76d8: $18 $00

jr_003_76da:
    adc h                                         ; $76da: $8c
    inc bc                                        ; $76db: $03
    inc bc                                        ; $76dc: $03
    inc c                                         ; $76dd: $0c
    rrca                                          ; $76de: $0f
    db $10                                        ; $76df: $10
    rra                                           ; $76e0: $1f
    ld de, $231f                                  ; $76e1: $11 $1f $23
    ld a, $27                                     ; $76e4: $3e $27
    inc a                                         ; $76e6: $3c
    inc d                                         ; $76e7: $14
    nop                                           ; $76e8: $00
    add l                                         ; $76e9: $85
    rst RST_38                                    ; $76ea: $ff
    rst RST_38                                    ; $76eb: $ff
    nop                                           ; $76ec: $00
    rst RST_38                                    ; $76ed: $ff
    nop                                           ; $76ee: $00
    inc b                                         ; $76ef: $04
    rst RST_38                                    ; $76f0: $ff
    or e                                          ; $76f1: $b3
    nop                                           ; $76f2: $00
    rst RST_38                                    ; $76f3: $ff
    nop                                           ; $76f4: $00
    daa                                           ; $76f5: $27
    inc a                                         ; $76f6: $3c
    daa                                           ; $76f7: $27
    inc a                                         ; $76f8: $3c
    daa                                           ; $76f9: $27
    inc a                                         ; $76fa: $3c
    daa                                           ; $76fb: $27
    inc a                                         ; $76fc: $3c
    daa                                           ; $76fd: $27
    inc a                                         ; $76fe: $3c
    daa                                           ; $76ff: $27
    inc a                                         ; $7700: $3c
    daa                                           ; $7701: $27
    inc a                                         ; $7702: $3c
    daa                                           ; $7703: $27

Call_003_7704:
    inc a                                         ; $7704: $3c
    daa                                           ; $7705: $27
    inc a                                         ; $7706: $3c
    daa                                           ; $7707: $27
    inc a                                         ; $7708: $3c
    daa                                           ; $7709: $27
    inc a                                         ; $770a: $3c
    daa                                           ; $770b: $27
    inc a                                         ; $770c: $3c
    daa                                           ; $770d: $27
    inc a                                         ; $770e: $3c
    daa                                           ; $770f: $27
    inc a                                         ; $7710: $3c
    daa                                           ; $7711: $27
    inc a                                         ; $7712: $3c
    daa                                           ; $7713: $27
    inc a                                         ; $7714: $3c
    db $e4                                        ; $7715: $e4
    inc a                                         ; $7716: $3c
    ldh [c], a                                    ; $7717: $e2
    ld a, $f2                                     ; $7718: $3e $f2
    sbc $32                                       ; $771a: $de $32
    cp $01                                        ; $771c: $fe $01
    rst RST_38                                    ; $771e: $ff
    add c                                         ; $771f: $81
    rst RST_38                                    ; $7720: $ff
    ld [hl], c                                    ; $7721: $71
    ld a, a                                       ; $7722: $7f
    ld c, $0e                                     ; $7723: $0e $0e
    stop                                          ; $7725: $10 $00
    add h                                         ; $7727: $84
    rst RST_38                                    ; $7728: $ff
    nop                                           ; $7729: $00
    rst RST_38                                    ; $772a: $ff
    nop                                           ; $772b: $00
    add b                                         ; $772c: $80
    add h                                         ; $772d: $84
    dec b                                         ; $772e: $05
    ld a, a                                       ; $772f: $7f
    ld a, a                                       ; $7730: $7f
    inc bc                                        ; $7731: $03
    inc bc                                        ; $7732: $03
    inc bc                                        ; $7733: $03
    sbc a                                         ; $7734: $9f
    cp $07                                        ; $7735: $fe $07
    rst RST_38                                    ; $7737: $ff
    ld b, $fd                                     ; $7738: $06 $fd
    ld l, [hl]                                    ; $773a: $6e
    rst RST_38                                    ; $773b: $ff
    ld a, h                                       ; $773c: $7c
    ei                                            ; $773d: $fb
    inc e                                         ; $773e: $1c
    rst RST_38                                    ; $773f: $ff
    inc c                                         ; $7740: $0c
    rst RST_38                                    ; $7741: $ff
    inc c                                         ; $7742: $0c
    rst RST_38                                    ; $7743: $ff
    nop                                           ; $7744: $00
    rst RST_38                                    ; $7745: $ff
    nop                                           ; $7746: $00
    rst RST_38                                    ; $7747: $ff
    nop                                           ; $7748: $00
    rst RST_38                                    ; $7749: $ff
    nop                                           ; $774a: $00
    rst RST_38                                    ; $774b: $ff
    ld a, a                                       ; $774c: $7f
    rst RST_38                                    ; $774d: $ff
    ld a, a                                       ; $774e: $7f
    cp $07                                        ; $774f: $fe $07
    rst RST_38                                    ; $7751: $ff
    ld b, $fd                                     ; $7752: $06 $fd
    add b                                         ; $7754: $80
    add l                                         ; $7755: $85
    dec b                                         ; $7756: $05
    ld c, $0c                                     ; $7757: $0e $0c
    inc e                                         ; $7759: $1c

jr_003_775a:
    inc e                                         ; $775a: $1c
    ld [hl], $8d                                  ; $775b: $36 $8d
    ld [hl], $ef                                  ; $775d: $36 $ef
    ld [hl], e                                    ; $775f: $73
    rst RST_38                                    ; $7760: $ff
    ld h, e                                       ; $7761: $63
    rst RST_38                                    ; $7762: $ff
    nop                                           ; $7763: $00
    rst RST_38                                    ; $7764: $ff
    nop                                           ; $7765: $00
    rst RST_38                                    ; $7766: $ff
    nop                                           ; $7767: $00
    rst RST_38                                    ; $7768: $ff
    nop                                           ; $7769: $00
    add b                                         ; $776a: $80
    add h                                         ; $776b: $84
    rlca                                          ; $776c: $07
    ccf                                           ; $776d: $3f
    ccf                                           ; $776e: $3f
    inc sp                                        ; $776f: $33
    inc sp                                        ; $7770: $33
    ld a, e                                       ; $7771: $7b
    ld a, a                                       ; $7772: $7f
    rrca                                          ; $7773: $0f
    or d                                          ; $7774: $b2
    cp $07                                        ; $7775: $fe $07
    rst RST_38                                    ; $7777: $ff
    ld b, $fd                                     ; $7778: $06 $fd
    ld c, $ff                                     ; $777a: $0e $ff
    inc a                                         ; $777c: $3c
    rst RST_30                                    ; $777d: $f7
    jr c, @+$01                                   ; $777e: $38 $ff

    nop                                           ; $7780: $00
    rst RST_38                                    ; $7781: $ff
    nop                                           ; $7782: $00
    rst RST_38                                    ; $7783: $ff
    nop                                           ; $7784: $00
    rst RST_38                                    ; $7785: $ff
    nop                                           ; $7786: $00
    rst RST_38                                    ; $7787: $ff
    nop                                           ; $7788: $00
    rst RST_38                                    ; $7789: $ff
    nop                                           ; $778a: $00
    rst RST_38                                    ; $778b: $ff
    nop                                           ; $778c: $00
    rst RST_38                                    ; $778d: $ff
    nop                                           ; $778e: $00
    rst RST_38                                    ; $778f: $ff
    nop                                           ; $7790: $00
    rst RST_38                                    ; $7791: $ff
    ld a, a                                       ; $7792: $7f
    rst RST_38                                    ; $7793: $ff
    ld a, a                                       ; $7794: $7f
    rst RST_38                                    ; $7795: $ff
    nop                                           ; $7796: $00
    rst RST_38                                    ; $7797: $ff
    nop                                           ; $7798: $00
    rst RST_38                                    ; $7799: $ff
    nop                                           ; $779a: $00
    rst RST_38                                    ; $779b: $ff
    nop                                           ; $779c: $00
    rst RST_38                                    ; $779d: $ff
    nop                                           ; $779e: $00
    rst RST_38                                    ; $779f: $ff
    nop                                           ; $77a0: $00
    rst RST_38                                    ; $77a1: $ff
    nop                                           ; $77a2: $00
    rst RST_38                                    ; $77a3: $ff
    nop                                           ; $77a4: $00
    rst RST_38                                    ; $77a5: $ff
    nop                                           ; $77a6: $00
    add b                                         ; $77a7: $80
    add h                                         ; $77a8: $84
    add hl, bc                                    ; $77a9: $09
    ld l, l                                       ; $77aa: $6d
    ld l, l                                       ; $77ab: $6d
    ld h, [hl]                                    ; $77ac: $66
    ld h, [hl]                                    ; $77ad: $66
    ld h, b                                       ; $77ae: $60
    ld h, b                                       ; $77af: $60
    ld h, b                                       ; $77b0: $60
    ld h, e                                       ; $77b1: $63
    ld h, e                                       ; $77b2: $63
    adc [hl]                                      ; $77b3: $8e
    cp [hl]                                       ; $77b4: $be
    ld [hl], a                                    ; $77b5: $77
    rst RST_38                                    ; $77b6: $ff
    ld a, $eb                                     ; $77b7: $3e $eb
    inc e                                         ; $77b9: $1c
    rst RST_38                                    ; $77ba: $ff
    nop                                           ; $77bb: $00
    rst RST_38                                    ; $77bc: $ff
    nop                                           ; $77bd: $00
    rst RST_38                                    ; $77be: $ff
    nop                                           ; $77bf: $00
    rst RST_38                                    ; $77c0: $ff
    nop                                           ; $77c1: $00
    add b                                         ; $77c2: $80
    add h                                         ; $77c3: $84
    inc c                                         ; $77c4: $0c
    add b                                         ; $77c5: $80
    add b                                         ; $77c6: $80
    ret nz                                        ; $77c7: $c0

    ret nz                                        ; $77c8: $c0

    jr jr_003_77e9                                ; $77c9: $18 $1e

    ld a, a                                       ; $77cb: $7f
    ld a, e                                       ; $77cc: $7b
    rra                                           ; $77cd: $1f
    ld e, $18                                     ; $77ce: $1e $18
    jr jr_003_775a                                ; $77d0: $18 $88

    rst RST_38                                    ; $77d2: $ff
    nop                                           ; $77d3: $00
    rst RST_38                                    ; $77d4: $ff
    nop                                           ; $77d5: $00
    rst RST_38                                    ; $77d6: $ff
    nop                                           ; $77d7: $00
    rst RST_38                                    ; $77d8: $ff
    nop                                           ; $77d9: $00
    add b                                         ; $77da: $80
    add h                                         ; $77db: $84
    add hl, bc                                    ; $77dc: $09
    ld [hl], $36                                  ; $77dd: $36 $36
    ld [hl], $36                                  ; $77df: $36 $36
    ld [hl], $36                                  ; $77e1: $36 $36
    ld [hl], $36                                  ; $77e3: $36 $36
    ld [hl], $8a                                  ; $77e5: $36 $8a
    rst RST_38                                    ; $77e7: $ff
    nop                                           ; $77e8: $00

jr_003_77e9:
    rst RST_38                                    ; $77e9: $ff
    ld [hl], $ff                                  ; $77ea: $36 $ff
    ld [hl], $ff                                  ; $77ec: $36 $ff
    nop                                           ; $77ee: $00
    rst RST_38                                    ; $77ef: $ff
    nop                                           ; $77f0: $00
    nop                                           ; $77f1: $00
    ld [de], a                                    ; $77f2: $12
    nop                                           ; $77f3: $00
    sub l                                         ; $77f4: $95
    ld a, [bc]                                    ; $77f5: $0a
    nop                                           ; $77f6: $00
    rla                                           ; $77f7: $17
    ld [$1f60], sp                                ; $77f8: $08 $60 $1f
    nop                                           ; $77fb: $00
    nop                                           ; $77fc: $00
    ld h, $01                                     ; $77fd: $26 $01
    ld c, $21                                     ; $77ff: $0e $21
    ld b, b                                       ; $7801: $40
    scf                                           ; $7802: $37
    nop                                           ; $7803: $00
    db $10                                        ; $7804: $10
    rst RST_20                                    ; $7805: $e7
    db $10                                        ; $7806: $10
    rst RST_20                                    ; $7807: $e7
    stop                                          ; $7808: $10 $00
    add b                                         ; $780a: $80
    inc bc                                        ; $780b: $03
    rst RST_38                                    ; $780c: $ff
    sub [hl]                                      ; $780d: $96
    ld a, [hl]                                    ; $780e: $7e
    ld bc, $017e                                  ; $780f: $01 $7e $01
    nop                                           ; $7812: $00
    rst RST_38                                    ; $7813: $ff
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    ret z                                         ; $7816: $c8

    nop                                           ; $7817: $00
    cp b                                          ; $7818: $b8
    nop                                           ; $7819: $00
    dec d                                         ; $781a: $15
    add sp, $00                                   ; $781b: $e8 $00
    nop                                           ; $781d: $00
    ld [hl], h                                    ; $781e: $74
    nop                                           ; $781f: $00
    ld [hl], h                                    ; $7820: $74
    nop                                           ; $7821: $00
    ld a, [bc]                                    ; $7822: $0a
    db $f4                                        ; $7823: $f4
    ld b, $00                                     ; $7824: $06 $00
    add l                                         ; $7826: $85
    ld [$4a00], sp                                ; $7827: $08 $00 $4a
    nop                                           ; $782a: $00
    ld c, d                                       ; $782b: $4a
    dec b                                         ; $782c: $05
    nop                                           ; $782d: $00
    nop                                           ; $782e: $00
    nop                                           ; $782f: $00
    sbc b                                         ; $7830: $98
    add l                                         ; $7831: $85
    dec d                                         ; $7832: $15
    ld e, $1f                                     ; $7833: $1e $1f
    ld e, $1f                                     ; $7835: $1e $1f
    ld [$8711], sp                                ; $7837: $08 $11 $87
    ld e, $1f                                     ; $783a: $1e $1f
    ld e, $1f                                     ; $783c: $1e $1f
    ld e, $1f                                     ; $783e: $1e $1f
    dec d                                         ; $7840: $15
    inc c                                         ; $7841: $0c
    nop                                           ; $7842: $00
    add l                                         ; $7843: $85
    dec d                                         ; $7844: $15
    jr nz, @+$23                                  ; $7845: $20 $21

    jr nz, @+$23                                  ; $7847: $20 $21

    ld [$870b], sp                                ; $7849: $08 $0b $87
    jr nz, @+$23                                  ; $784c: $20 $21

    jr nz, jr_003_7871                            ; $784e: $20 $21

    jr nz, jr_003_7873                            ; $7850: $20 $21

    dec d                                         ; $7852: $15
    inc c                                         ; $7853: $0c
    nop                                           ; $7854: $00
    add c                                         ; $7855: $81
    dec d                                         ; $7856: $15
    dec b                                         ; $7857: $05
    dec bc                                        ; $7858: $0b
    rlca                                          ; $7859: $07
    ld bc, $0c81                                  ; $785a: $01 $81 $0c
    dec b                                         ; $785d: $05
    dec bc                                        ; $785e: $0b
    add c                                         ; $785f: $81
    dec d                                         ; $7860: $15
    inc c                                         ; $7861: $0c
    nop                                           ; $7862: $00
    add h                                         ; $7863: $84
    dec d                                         ; $7864: $15
    dec bc                                        ; $7865: $0b
    ld bc, $0509                                  ; $7866: $01 $09 $05
    ld bc, $2581                                  ; $7869: $01 $81 $25
    inc bc                                        ; $786c: $03
    ld bc, $2a83                                  ; $786d: $01 $83 $2a
    dec hl                                        ; $7870: $2b

jr_003_7871:
    add hl, bc                                    ; $7871: $09
    inc bc                                        ; $7872: $03

jr_003_7873:
    ld bc, $1581                                  ; $7873: $01 $81 $15
    inc c                                         ; $7876: $0c
    nop                                           ; $7877: $00
    add l                                         ; $7878: $85
    dec d                                         ; $7879: $15
    dec bc                                        ; $787a: $0b
    ld bc, $0a08                                  ; $787b: $01 $08 $0a
    inc b                                         ; $787e: $04
    ld bc, $268b                                  ; $787f: $01 $8b $26
    daa                                           ; $7882: $27
    ld bc, $2c01                                  ; $7883: $01 $01 $2c
    dec l                                         ; $7886: $2d
    ld [$010a], sp                                ; $7887: $08 $0a $01
    ld bc, $0c15                                  ; $788a: $01 $15 $0c
    nop                                           ; $788d: $00
    adc h                                         ; $788e: $8c
    dec d                                         ; $788f: $15
    ld [bc], a                                    ; $7890: $02
    inc bc                                        ; $7891: $03
    rlca                                          ; $7892: $07
    inc bc                                        ; $7893: $03
    ld [bc], a                                    ; $7894: $02
    inc bc                                        ; $7895: $03
    ld bc, $2801                                  ; $7896: $01 $01 $28
    add hl, hl                                    ; $7899: $29
    ld bc, $0380                                  ; $789a: $01 $80 $03
    ld bc, $0785                                  ; $789d: $01 $85 $07
    inc bc                                        ; $78a0: $03
    ld [bc], a                                    ; $78a1: $02
    inc bc                                        ; $78a2: $03
    dec d                                         ; $78a3: $15
    inc c                                         ; $78a4: $0c
    nop                                           ; $78a5: $00
    add d                                         ; $78a6: $82
    dec d                                         ; $78a7: $15
    inc b                                         ; $78a8: $04
    add b                                         ; $78a9: $80
    inc bc                                        ; $78aa: $03
    inc b                                         ; $78ab: $04
    add e                                         ; $78ac: $83
    inc b                                         ; $78ad: $04
    inc b                                         ; $78ae: $04
    ld a, [bc]                                    ; $78af: $0a
    dec b                                         ; $78b0: $05
    ld bc, $0406                                  ; $78b1: $01 $06 $04
    add c                                         ; $78b4: $81
    dec d                                         ; $78b5: $15
    inc c                                         ; $78b6: $0c
    nop                                           ; $78b7: $00
    add c                                         ; $78b8: $81
    dec d                                         ; $78b9: $15
    rlca                                          ; $78ba: $07
    dec bc                                        ; $78bb: $0b
    dec b                                         ; $78bc: $05
    ld bc, $0c81                                  ; $78bd: $01 $81 $0c
    dec b                                         ; $78c0: $05
    dec bc                                        ; $78c1: $0b
    add c                                         ; $78c2: $81
    dec d                                         ; $78c3: $15
    inc c                                         ; $78c4: $0c
    nop                                           ; $78c5: $00
    add l                                         ; $78c6: $85
    dec d                                         ; $78c7: $15
    dec bc                                        ; $78c8: $0b
    ld bc, $2f2e                                  ; $78c9: $01 $2e $2f
    ld c, $01                                     ; $78cc: $0e $01
    add c                                         ; $78ce: $81
    dec d                                         ; $78cf: $15
    inc c                                         ; $78d0: $0c
    nop                                           ; $78d1: $00
    add l                                         ; $78d2: $85
    dec d                                         ; $78d3: $15
    dec bc                                        ; $78d4: $0b
    ld bc, $3130                                  ; $78d5: $01 $30 $31
    ld a, [bc]                                    ; $78d8: $0a
    inc e                                         ; $78d9: $1c
    inc b                                         ; $78da: $04
    ld bc, $1581                                  ; $78db: $01 $81 $15
    inc c                                         ; $78de: $0c
    nop                                           ; $78df: $00
    add d                                         ; $78e0: $82
    dec d                                         ; $78e1: $15
    dec bc                                        ; $78e2: $0b
    inc bc                                        ; $78e3: $03
    ld bc, $1c8a                                  ; $78e4: $01 $8a $1c
    dec e                                         ; $78e7: $1d
    ld bc, $011d                                  ; $78e8: $01 $1d $01
    dec e                                         ; $78eb: $1d
    ld bc, $011d                                  ; $78ec: $01 $1d $01
    inc e                                         ; $78ef: $1c
    inc b                                         ; $78f0: $04
    ld bc, $1581                                  ; $78f1: $01 $81 $15
    inc c                                         ; $78f4: $0c
    nop                                           ; $78f5: $00
    add d                                         ; $78f6: $82
    dec d                                         ; $78f7: $15
    dec bc                                        ; $78f8: $0b
    inc bc                                        ; $78f9: $03
    ld bc, $1c8a                                  ; $78fa: $01 $8a $1c
    ld bc, $011d                                  ; $78fd: $01 $1d $01
    dec e                                         ; $7900: $1d
    ld bc, $011d                                  ; $7901: $01 $1d $01
    dec e                                         ; $7904: $1d
    inc e                                         ; $7905: $1c
    inc b                                         ; $7906: $04
    ld bc, $1581                                  ; $7907: $01 $81 $15
    inc c                                         ; $790a: $0c
    nop                                           ; $790b: $00
    sub h                                         ; $790c: $94
    dec c                                         ; $790d: $0d
    ld [hl+], a                                   ; $790e: $22
    inc de                                        ; $790f: $13
    dec c                                         ; $7910: $0d
    ld bc, $1d1c                                  ; $7911: $01 $1c $1d
    ld bc, $011d                                  ; $7914: $01 $1d $01
    dec e                                         ; $7917: $1d
    ld bc, $011d                                  ; $7918: $01 $1d $01
    inc e                                         ; $791b: $1c
    ld bc, $130d                                  ; $791c: $01 $0d $13
    inc de                                        ; $791f: $13
    dec c                                         ; $7920: $0d
    inc c                                         ; $7921: $0c
    nop                                           ; $7922: $00
    sub h                                         ; $7923: $94
    ld c, $14                                     ; $7924: $0e $14
    inc d                                         ; $7926: $14
    dec d                                         ; $7927: $15
    ld bc, $011c                                  ; $7928: $01 $1c $01
    dec e                                         ; $792b: $1d
    ld bc, $011d                                  ; $792c: $01 $1d $01
    dec e                                         ; $792f: $1d
    ld bc, $1c1d                                  ; $7930: $01 $1d $1c
    ld bc, $1415                                  ; $7933: $01 $15 $14
    inc d                                         ; $7936: $14
    rrca                                          ; $7937: $0f
    inc c                                         ; $7938: $0c
    nop                                           ; $7939: $00
    sub h                                         ; $793a: $94
    db $10                                        ; $793b: $10
    ld de, $1511                                  ; $793c: $11 $11 $15
    ld bc, $1d1c                                  ; $793f: $01 $1c $1d
    ld d, $1d                                     ; $7942: $16 $1d
    ld bc, $011d                                  ; $7944: $01 $1d $01
    add hl, de                                    ; $7947: $19
    ld bc, $011c                                  ; $7948: $01 $1c $01
    dec d                                         ; $794b: $15
    ld de, $1211                                  ; $794c: $11 $11 $12
    inc c                                         ; $794f: $0c
    nop                                           ; $7950: $00
    adc b                                         ; $7951: $88
    dec e                                         ; $7952: $1d
    inc h                                         ; $7953: $24
    dec e                                         ; $7954: $1d
    dec c                                         ; $7955: $0d
    inc de                                        ; $7956: $13
    ld [hl+], a                                   ; $7957: $22
    dec c                                         ; $7958: $0d
    rla                                           ; $7959: $17
    inc b                                         ; $795a: $04
    inc e                                         ; $795b: $1c
    adc b                                         ; $795c: $88
    ld a, [de]                                    ; $795d: $1a
    dec c                                         ; $795e: $0d
    ld [hl+], a                                   ; $795f: $22
    inc de                                        ; $7960: $13
    dec c                                         ; $7961: $0d
    inc h                                         ; $7962: $24
    dec e                                         ; $7963: $1d
    inc h                                         ; $7964: $24
    inc c                                         ; $7965: $0c
    nop                                           ; $7966: $00
    adc b                                         ; $7967: $88
    inc hl                                        ; $7968: $23
    nop                                           ; $7969: $00
    inc hl                                        ; $796a: $23
    ld c, $14                                     ; $796b: $0e $14
    inc d                                         ; $796d: $14
    rrca                                          ; $796e: $0f
    jr @+$06                                      ; $796f: $18 $04

    ld bc, $1b87                                  ; $7971: $01 $87 $1b
    ld c, $14                                     ; $7974: $0e $14
    inc d                                         ; $7976: $14
    rrca                                          ; $7977: $0f
    dec e                                         ; $7978: $1d
    inc hl                                        ; $7979: $23
    ld c, $00                                     ; $797a: $0e $00
    add a                                         ; $797c: $87
    inc hl                                        ; $797d: $23
    inc hl                                        ; $797e: $23
    db $10                                        ; $797f: $10
    ld de, $1211                                  ; $7980: $11 $11 $12
    jr jr_003_7989                                ; $7983: $18 $04

    ld bc, $1b88                                  ; $7985: $01 $88 $1b
    db $10                                        ; $7988: $10

jr_003_7989:
    ld de, $1211                                  ; $7989: $11 $11 $12
    inc h                                         ; $798c: $24
    nop                                           ; $798d: $00
    inc hl                                        ; $798e: $23
    inc c                                         ; $798f: $0c
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    sbc b                                         ; $7993: $98
    add l                                         ; $7994: $85
    dec d                                         ; $7995: $15
    ld e, $1f                                     ; $7996: $1e $1f
    ld e, $1f                                     ; $7998: $1e $1f
    ld [$8711], sp                                ; $799a: $08 $11 $87
    ld e, $1f                                     ; $799d: $1e $1f
    ld e, $1f                                     ; $799f: $1e $1f
    ld e, $1f                                     ; $79a1: $1e $1f
    dec d                                         ; $79a3: $15
    inc c                                         ; $79a4: $0c
    nop                                           ; $79a5: $00
    add l                                         ; $79a6: $85
    dec d                                         ; $79a7: $15
    jr nz, jr_003_79cb                            ; $79a8: $20 $21

    jr nz, @+$23                                  ; $79aa: $20 $21

    ld [$870b], sp                                ; $79ac: $08 $0b $87
    jr nz, jr_003_79d2                            ; $79af: $20 $21

    jr nz, @+$23                                  ; $79b1: $20 $21

    jr nz, @+$23                                  ; $79b3: $20 $21

    dec d                                         ; $79b5: $15
    inc c                                         ; $79b6: $0c
    nop                                           ; $79b7: $00
    add c                                         ; $79b8: $81
    dec d                                         ; $79b9: $15
    dec b                                         ; $79ba: $05
    dec bc                                        ; $79bb: $0b
    add d                                         ; $79bc: $82
    ld l, $2f                                     ; $79bd: $2e $2f
    dec b                                         ; $79bf: $05
    ld bc, $0c81                                  ; $79c0: $01 $81 $0c
    dec b                                         ; $79c3: $05
    dec bc                                        ; $79c4: $0b
    add c                                         ; $79c5: $81
    dec d                                         ; $79c6: $15
    inc c                                         ; $79c7: $0c
    nop                                           ; $79c8: $00
    adc d                                         ; $79c9: $8a
    dec d                                         ; $79ca: $15

jr_003_79cb:
    dec bc                                        ; $79cb: $0b
    ld bc, $0109                                  ; $79cc: $01 $09 $01
    ld bc, $3130                                  ; $79cf: $01 $30 $31

jr_003_79d2:
    ld bc, $0325                                  ; $79d2: $01 $25 $03
    ld bc, $2a83                                  ; $79d5: $01 $83 $2a
    dec hl                                        ; $79d8: $2b
    add hl, bc                                    ; $79d9: $09
    inc bc                                        ; $79da: $03
    ld bc, $1581                                  ; $79db: $01 $81 $15
    inc c                                         ; $79de: $0c
    nop                                           ; $79df: $00
    add l                                         ; $79e0: $85
    dec d                                         ; $79e1: $15
    dec bc                                        ; $79e2: $0b
    ld bc, $0a08                                  ; $79e3: $01 $08 $0a
    inc b                                         ; $79e6: $04
    ld bc, $268b                                  ; $79e7: $01 $8b $26
    daa                                           ; $79ea: $27
    ld bc, $2c01                                  ; $79eb: $01 $01 $2c
    dec l                                         ; $79ee: $2d
    ld [$010a], sp                                ; $79ef: $08 $0a $01
    ld bc, $0c15                                  ; $79f2: $01 $15 $0c
    nop                                           ; $79f5: $00
    adc h                                         ; $79f6: $8c
    dec d                                         ; $79f7: $15
    ld [bc], a                                    ; $79f8: $02
    inc bc                                        ; $79f9: $03
    rlca                                          ; $79fa: $07
    inc bc                                        ; $79fb: $03
    ld [bc], a                                    ; $79fc: $02
    inc bc                                        ; $79fd: $03
    ld b, d                                       ; $79fe: $42
    ld b, e                                       ; $79ff: $43
    jr z, @+$2b                                   ; $7a00: $28 $29

    ld bc, $0380                                  ; $7a02: $01 $80 $03
    ld bc, $0785                                  ; $7a05: $01 $85 $07
    inc bc                                        ; $7a08: $03
    ld [bc], a                                    ; $7a09: $02
    inc bc                                        ; $7a0a: $03
    dec d                                         ; $7a0b: $15
    inc c                                         ; $7a0c: $0c
    nop                                           ; $7a0d: $00
    add d                                         ; $7a0e: $82
    dec d                                         ; $7a0f: $15
    inc b                                         ; $7a10: $04
    add b                                         ; $7a11: $80
    inc bc                                        ; $7a12: $03
    inc b                                         ; $7a13: $04
    adc b                                         ; $7a14: $88
    inc b                                         ; $7a15: $04
    inc b                                         ; $7a16: $04
    ld b, [hl]                                    ; $7a17: $46
    inc sp                                        ; $7a18: $33
    ld bc, $3901                                  ; $7a19: $01 $01 $39
    ld a, [hl-]                                   ; $7a1c: $3a
    ld b, $04                                     ; $7a1d: $06 $04
    add c                                         ; $7a1f: $81
    dec d                                         ; $7a20: $15
    inc c                                         ; $7a21: $0c
    nop                                           ; $7a22: $00
    add c                                         ; $7a23: $81
    dec d                                         ; $7a24: $15
    ld b, $0b                                     ; $7a25: $06 $0b
    add a                                         ; $7a27: $87
    ld b, h                                       ; $7a28: $44
    ld b, l                                       ; $7a29: $45
    ld bc, $3201                                  ; $7a2a: $01 $01 $32
    dec sp                                        ; $7a2d: $3b
    inc c                                         ; $7a2e: $0c
    dec b                                         ; $7a2f: $05
    dec bc                                        ; $7a30: $0b
    add c                                         ; $7a31: $81
    dec d                                         ; $7a32: $15
    inc c                                         ; $7a33: $0c
    nop                                           ; $7a34: $00
    add l                                         ; $7a35: $85
    dec d                                         ; $7a36: $15
    dec bc                                        ; $7a37: $0b
    ld bc, $4847                                  ; $7a38: $01 $47 $48
    ld b, $01                                     ; $7a3b: $06 $01
    adc c                                         ; $7a3d: $89
    inc a                                         ; $7a3e: $3c
    dec a                                         ; $7a3f: $3d
    ld bc, $3401                                  ; $7a40: $01 $01 $34
    dec [hl]                                      ; $7a43: $35
    ld bc, $1501                                  ; $7a44: $01 $01 $15
    inc c                                         ; $7a47: $0c
    nop                                           ; $7a48: $00
    add l                                         ; $7a49: $85
    dec d                                         ; $7a4a: $15
    dec bc                                        ; $7a4b: $0b
    ld bc, $3349                                  ; $7a4c: $01 $49 $33
    ld a, [bc]                                    ; $7a4f: $0a
    inc e                                         ; $7a50: $1c
    add l                                         ; $7a51: $85
    ld [hl-], a                                   ; $7a52: $32
    ld [hl], $3e                                  ; $7a53: $36 $3e
    ccf                                           ; $7a55: $3f
    dec d                                         ; $7a56: $15
    inc c                                         ; $7a57: $0c
    nop                                           ; $7a58: $00
    sub h                                         ; $7a59: $94
    dec d                                         ; $7a5a: $15
    dec bc                                        ; $7a5b: $0b
    ld bc, $454a                                  ; $7a5c: $01 $4a $45
    inc e                                         ; $7a5f: $1c
    dec e                                         ; $7a60: $1d
    ld bc, $011d                                  ; $7a61: $01 $1d $01
    dec e                                         ; $7a64: $1d
    ld bc, $011d                                  ; $7a65: $01 $1d $01
    inc e                                         ; $7a68: $1c
    scf                                           ; $7a69: $37
    jr c, jr_003_7a9e                             ; $7a6a: $38 $32

    dec sp                                        ; $7a6c: $3b
    dec d                                         ; $7a6d: $15
    inc c                                         ; $7a6e: $0c
    nop                                           ; $7a6f: $00
    add d                                         ; $7a70: $82
    dec d                                         ; $7a71: $15
    dec bc                                        ; $7a72: $0b
    inc bc                                        ; $7a73: $03
    ld bc, $1c8f                                  ; $7a74: $01 $8f $1c
    ld bc, $011d                                  ; $7a77: $01 $1d $01
    dec e                                         ; $7a7a: $1d
    ld bc, $011d                                  ; $7a7b: $01 $1d $01
    dec e                                         ; $7a7e: $1d
    inc e                                         ; $7a7f: $1c
    ld bc, $4001                                  ; $7a80: $01 $01 $40
    ld b, c                                       ; $7a83: $41
    dec d                                         ; $7a84: $15
    inc c                                         ; $7a85: $0c
    nop                                           ; $7a86: $00
    sub h                                         ; $7a87: $94
    dec c                                         ; $7a88: $0d
    ld [hl+], a                                   ; $7a89: $22
    inc de                                        ; $7a8a: $13
    dec c                                         ; $7a8b: $0d
    ld bc, $1d1c                                  ; $7a8c: $01 $1c $1d
    ld bc, $011d                                  ; $7a8f: $01 $1d $01
    dec e                                         ; $7a92: $1d
    ld bc, $011d                                  ; $7a93: $01 $1d $01
    inc e                                         ; $7a96: $1c
    ld bc, $130d                                  ; $7a97: $01 $0d $13
    inc de                                        ; $7a9a: $13
    dec c                                         ; $7a9b: $0d
    inc c                                         ; $7a9c: $0c
    nop                                           ; $7a9d: $00

jr_003_7a9e:
    sub h                                         ; $7a9e: $94
    ld c, $14                                     ; $7a9f: $0e $14
    inc d                                         ; $7aa1: $14
    dec d                                         ; $7aa2: $15
    ld bc, $011c                                  ; $7aa3: $01 $1c $01
    dec e                                         ; $7aa6: $1d
    ld bc, $011d                                  ; $7aa7: $01 $1d $01
    dec e                                         ; $7aaa: $1d
    ld bc, $1c1d                                  ; $7aab: $01 $1d $1c
    ld bc, $1415                                  ; $7aae: $01 $15 $14
    inc d                                         ; $7ab1: $14
    rrca                                          ; $7ab2: $0f
    inc c                                         ; $7ab3: $0c
    nop                                           ; $7ab4: $00
    sub h                                         ; $7ab5: $94
    db $10                                        ; $7ab6: $10
    ld de, $1511                                  ; $7ab7: $11 $11 $15
    ld bc, $1d1c                                  ; $7aba: $01 $1c $1d
    ld d, $1d                                     ; $7abd: $16 $1d
    ld bc, $011d                                  ; $7abf: $01 $1d $01
    add hl, de                                    ; $7ac2: $19
    ld bc, $011c                                  ; $7ac3: $01 $1c $01
    dec d                                         ; $7ac6: $15
    ld de, $1211                                  ; $7ac7: $11 $11 $12
    inc c                                         ; $7aca: $0c
    nop                                           ; $7acb: $00
    adc b                                         ; $7acc: $88
    dec e                                         ; $7acd: $1d
    inc h                                         ; $7ace: $24
    dec e                                         ; $7acf: $1d
    dec c                                         ; $7ad0: $0d
    inc de                                        ; $7ad1: $13
    ld [hl+], a                                   ; $7ad2: $22
    dec c                                         ; $7ad3: $0d
    rla                                           ; $7ad4: $17
    inc b                                         ; $7ad5: $04
    inc e                                         ; $7ad6: $1c
    adc b                                         ; $7ad7: $88
    ld a, [de]                                    ; $7ad8: $1a
    dec c                                         ; $7ad9: $0d
    ld [hl+], a                                   ; $7ada: $22
    inc de                                        ; $7adb: $13
    dec c                                         ; $7adc: $0d
    inc h                                         ; $7add: $24
    dec e                                         ; $7ade: $1d
    inc h                                         ; $7adf: $24
    inc c                                         ; $7ae0: $0c
    nop                                           ; $7ae1: $00
    adc b                                         ; $7ae2: $88
    inc hl                                        ; $7ae3: $23
    nop                                           ; $7ae4: $00
    inc hl                                        ; $7ae5: $23
    ld c, $14                                     ; $7ae6: $0e $14
    inc d                                         ; $7ae8: $14
    rrca                                          ; $7ae9: $0f
    jr @+$06                                      ; $7aea: $18 $04

    ld bc, $1b87                                  ; $7aec: $01 $87 $1b
    ld c, $14                                     ; $7aef: $0e $14
    inc d                                         ; $7af1: $14
    rrca                                          ; $7af2: $0f
    dec e                                         ; $7af3: $1d
    inc hl                                        ; $7af4: $23
    ld c, $00                                     ; $7af5: $0e $00
    add a                                         ; $7af7: $87
    inc hl                                        ; $7af8: $23
    inc hl                                        ; $7af9: $23
    db $10                                        ; $7afa: $10
    ld de, $1211                                  ; $7afb: $11 $11 $12
    jr jr_003_7b04                                ; $7afe: $18 $04

    ld bc, $1b88                                  ; $7b00: $01 $88 $1b
    db $10                                        ; $7b03: $10

jr_003_7b04:
    ld de, $1211                                  ; $7b04: $11 $11 $12
    inc h                                         ; $7b07: $24
    nop                                           ; $7b08: $00
    inc hl                                        ; $7b09: $23
    nop                                           ; $7b0a: $00
    nop                                           ; $7b0b: $00
    sbc b                                         ; $7b0c: $98
    add b                                         ; $7b0d: $80
    inc bc                                        ; $7b0e: $03
    nop                                           ; $7b0f: $00
    inc bc                                        ; $7b10: $03
    ld [bc], a                                    ; $7b11: $02
    add d                                         ; $7b12: $82
    inc bc                                        ; $7b13: $03
    inc b                                         ; $7b14: $04
    jr jr_003_7b17                                ; $7b15: $18 $00

jr_003_7b17:
    add d                                         ; $7b17: $82
    inc b                                         ; $7b18: $04
    ld bc, $0204                                  ; $7b19: $01 $04 $02
    add c                                         ; $7b1c: $81
    inc bc                                        ; $7b1d: $03
    add hl, de                                    ; $7b1e: $19
    nop                                           ; $7b1f: $00
    nop                                           ; $7b20: $00
    ld bc, $70f9                                  ; $7b21: $01 $f9 $70
    add b                                         ; $7b24: $80
    ld bc, $6801                                  ; $7b25: $01 $01 $68
    ld [hl], l                                    ; $7b28: $75
    add b                                         ; $7b29: $80
    nop                                           ; $7b2a: $00
    nop                                           ; $7b2b: $00
    ld bc, $77f2                                  ; $7b2c: $01 $f2 $77
    add b                                         ; $7b2f: $80
    ld bc, $0300                                  ; $7b30: $01 $00 $03
    xor b                                         ; $7b33: $a8
    sbc d                                         ; $7b34: $9a
    inc de                                        ; $7b35: $13
    ld de, $1526                                  ; $7b36: $11 $26 $15
    db $10                                        ; $7b39: $10
    ld e, $1f                                     ; $7b3a: $1e $1f
    add hl, de                                    ; $7b3c: $19
    ld [hl+], a                                   ; $7b3d: $22
    dec d                                         ; $7b3e: $15
    rst RST_38                                    ; $7b3f: $ff
    dec bc                                        ; $7b40: $0b
    xor c                                         ; $7b41: $a9
    sbc e                                         ; $7b42: $9b
    db $10                                        ; $7b43: $10
    inc hl                                        ; $7b44: $23
    inc h                                         ; $7b45: $24
    ld de, $1616                                  ; $7b46: $11 $16 $16
    rst RST_38                                    ; $7b49: $ff
    db $10                                        ; $7b4a: $10
    ld c, b                                       ; $7b4b: $48
    sbc b                                         ; $7b4c: $98
    scf                                           ; $7b4d: $37
    ld sp, $353d                                  ; $7b4e: $31 $3d $35
    db $10                                        ; $7b51: $10
    inc [hl]                                      ; $7b52: $34
    dec [hl]                                      ; $7b53: $35
    ld b, e                                       ; $7b54: $43
    add hl, sp                                    ; $7b55: $39
    scf                                           ; $7b56: $37
    ld a, $fe                                     ; $7b57: $3e $fe
    adc c                                         ; $7b59: $89
    sbc b                                         ; $7b5a: $98
    dec de                                        ; $7b5b: $1b
    dec hl                                        ; $7b5c: $2b
    add hl, de                                    ; $7b5d: $19
    daa                                           ; $7b5e: $27
    ld de, $1123                                  ; $7b5f: $11 $23 $11
    dec de                                        ; $7b62: $1b
    add hl, de                                    ; $7b63: $19
    rst RST_38                                    ; $7b64: $ff
    dec d                                         ; $7b65: $15
    add sp, -$68                                  ; $7b66: $e8 $98

jr_003_7b68:
    ld sp, $4442                                  ; $7b68: $31 $42 $44
    add hl, sp                                    ; $7b6b: $39
    ld b, e                                       ; $7b6c: $43
    ld b, h                                       ; $7b6d: $44
    cp $29                                        ; $7b6e: $fe $29
    sbc c                                         ; $7b70: $99
    dec de                                        ; $7b71: $1b
    dec hl                                        ; $7b72: $2b
    inc h                                         ; $7b73: $24
    dec d                                         ; $7b74: $15
    ld [hl+], a                                   ; $7b75: $22
    ld de, $1114                                  ; $7b76: $11 $14 $11
    rst RST_38                                    ; $7b79: $ff
    ld a, [de]                                    ; $7b7a: $1a
    adc b                                         ; $7b7b: $88
    sbc c                                         ; $7b7c: $99
    ld b, e                                       ; $7b7d: $43
    ccf                                           ; $7b7e: $3f
    ld b, l                                       ; $7b7f: $45
    ld a, $34                                     ; $7b80: $3e $34
    cp $ac                                        ; $7b82: $fe $ac
    sbc c                                         ; $7b84: $99
    inc [hl]                                      ; $7b85: $34
    dec [hl]                                      ; $7b86: $35
    ld b, e                                       ; $7b87: $43
    add hl, sp                                    ; $7b88: $39
    scf                                           ; $7b89: $37
    ld a, $fe                                     ; $7b8a: $3e $fe
    jp hl                                         ; $7b8c: $e9


    sbc c                                         ; $7b8d: $99
    inc hl                                        ; $7b8e: $23
    dec hl                                        ; $7b8f: $2b
    inc h                                         ; $7b90: $24
    ld de, $1123                                  ; $7b91: $11 $23 $11
    dec de                                        ; $7b94: $1b
    ld de, $28fe                                  ; $7b95: $11 $fe $28
    sbc d                                         ; $7b98: $9a
    db $10                                        ; $7b99: $10
    add hl, hl                                    ; $7b9a: $29
    dec hl                                        ; $7b9b: $2b
    jr @+$13                                      ; $7b9c: $18 $11

    rla                                           ; $7b9e: $17
    add hl, de                                    ; $7b9f: $19
    daa                                           ; $7ba0: $27
    ld de, $1122                                  ; $7ba1: $11 $22 $11
    rst RST_38                                    ; $7ba4: $ff
    ld [hl+], a                                   ; $7ba5: $22
    adc b                                         ; $7ba6: $88
    sbc d                                         ; $7ba7: $9a
    ld b, b                                       ; $7ba8: $40
    ld b, d                                       ; $7ba9: $42
    ccf                                           ; $7baa: $3f
    scf                                           ; $7bab: $37
    ld b, d                                       ; $7bac: $42
    ld sp, $fe3d                                  ; $7bad: $31 $3d $fe
    xor b                                         ; $7bb0: $a8
    sbc d                                         ; $7bb1: $9a
    db $10                                        ; $7bb2: $10
    db $10                                        ; $7bb3: $10
    db $10                                        ; $7bb4: $10
    db $10                                        ; $7bb5: $10
    db $10                                        ; $7bb6: $10
    db $10                                        ; $7bb7: $10
    db $10                                        ; $7bb8: $10
    db $10                                        ; $7bb9: $10
    db $10                                        ; $7bba: $10
    db $10                                        ; $7bbb: $10
    cp $c8                                        ; $7bbc: $fe $c8
    sbc d                                         ; $7bbe: $9a
    db $10                                        ; $7bbf: $10
    dec de                                        ; $7bc0: $1b
    dec hl                                        ; $7bc1: $2b
    add hl, de                                    ; $7bc2: $19
    daa                                           ; $7bc3: $27
    ld de, $1123                                  ; $7bc4: $11 $23 $11
    dec de                                        ; $7bc7: $1b
    add hl, de                                    ; $7bc8: $19
    rst RST_38                                    ; $7bc9: $ff
    daa                                           ; $7bca: $27
    jr z, jr_003_7b68                             ; $7bcb: $28 $9b

    ld b, e                                       ; $7bcd: $43
    ld b, l                                       ; $7bce: $45
    ld [hl-], a                                   ; $7bcf: $32
    db $10                                        ; $7bd0: $10
    ld b, b                                       ; $7bd1: $40
    ld b, d                                       ; $7bd2: $42
    ccf                                           ; $7bd3: $3f
    scf                                           ; $7bd4: $37
    ld b, d                                       ; $7bd5: $42
    ld sp, $fe3d                                  ; $7bd6: $31 $3d $fe
    ld l, c                                       ; $7bd9: $69
    sbc e                                         ; $7bda: $9b
    inc h                                         ; $7bdb: $24
    dec hl                                        ; $7bdc: $2b
    rla                                           ; $7bdd: $17
    rra                                           ; $7bde: $1f
    inc h                                         ; $7bdf: $24

jr_003_7be0:
    rra                                           ; $7be0: $1f
    cp $a9                                        ; $7be1: $fe $a9
    sbc e                                         ; $7be3: $9b
    db $10                                        ; $7be4: $10
    db $10                                        ; $7be5: $10
    db $10                                        ; $7be6: $10
    db $10                                        ; $7be7: $10
    db $10                                        ; $7be8: $10
    db $10                                        ; $7be9: $10
    rst RST_38                                    ; $7bea: $ff
    inc l                                         ; $7beb: $2c
    ret z                                         ; $7bec: $c8

    sbc e                                         ; $7bed: $9b
    ld b, b                                       ; $7bee: $40
    ld sp, $3b33                                  ; $7bef: $31 $33 $3b
    ld sp, $3537                                  ; $7bf2: $31 $37 $35
    cp $ec                                        ; $7bf5: $fe $ec
    sbc e                                         ; $7bf7: $9b
    inc [hl]                                      ; $7bf8: $34
    dec [hl]                                      ; $7bf9: $35
    ld b, e                                       ; $7bfa: $43
    add hl, sp                                    ; $7bfb: $39
    scf                                           ; $7bfc: $37
    ld a, $fe                                     ; $7bfd: $3e $fe
    add hl, hl                                    ; $7bff: $29

Call_003_7c00:
Jump_003_7c00:
    sbc b                                         ; $7c00: $98
    inc hl                                        ; $7c01: $23
    dec h                                         ; $7c02: $25
    dec e                                         ; $7c03: $1d
    add hl, de                                    ; $7c04: $19
    inc de                                        ; $7c05: $13
    jr jr_003_7c19                                ; $7c06: $18 $11

    ld e, $fe                                     ; $7c08: $1e $fe
    ld c, b                                       ; $7c0a: $48
    sbc b                                         ; $7c0b: $98
    db $10                                        ; $7c0c: $10
    db $10                                        ; $7c0d: $10
    db $10                                        ; $7c0e: $10
    db $10                                        ; $7c0f: $10
    db $10                                        ; $7c10: $10
    db $10                                        ; $7c11: $10
    db $10                                        ; $7c12: $10
    db $10                                        ; $7c13: $10
    db $10                                        ; $7c14: $10
    db $10                                        ; $7c15: $10
    db $10                                        ; $7c16: $10
    cp $89                                        ; $7c17: $fe $89

jr_003_7c19:
    sbc b                                         ; $7c19: $98
    db $10                                        ; $7c1a: $10
    db $10                                        ; $7c1b: $10
    db $10                                        ; $7c1c: $10
    db $10                                        ; $7c1d: $10
    db $10                                        ; $7c1e: $10
    db $10                                        ; $7c1f: $10
    db $10                                        ; $7c20: $10
    db $10                                        ; $7c21: $10
    db $10                                        ; $7c22: $10
    rst RST_38                                    ; $7c23: $ff
    ld sp, $98a8                                  ; $7c24: $31 $a8 $98
    ld b, e                                       ; $7c27: $43
    ld b, b                                       ; $7c28: $40
    dec [hl]                                      ; $7c29: $35
    inc sp                                        ; $7c2a: $33
    add hl, sp                                    ; $7c2b: $39
    ld sp, $103c                                  ; $7c2c: $31 $3c $10
    db $10                                        ; $7c2f: $10
    db $10                                        ; $7c30: $10
    cp $cc                                        ; $7c31: $fe $cc
    sbc b                                         ; $7c33: $98
    ld b, h                                       ; $7c34: $44
    jr c, jr_003_7c68                             ; $7c35: $38 $31

    ld a, $3b                                     ; $7c37: $3e $3b
    ld b, e                                       ; $7c39: $43
    cp $e8                                        ; $7c3a: $fe $e8

jr_003_7c3c:
    sbc b                                         ; $7c3c: $98
    db $10                                        ; $7c3d: $10
    db $10                                        ; $7c3e: $10
    db $10                                        ; $7c3f: $10
    ld b, h                                       ; $7c40: $44
    ccf                                           ; $7c41: $3f
    db $10                                        ; $7c42: $10
    rst RST_38                                    ; $7c43: $ff
    dec [hl]                                      ; $7c44: $35
    jr z, jr_003_7be0                             ; $7c45: $28 $99

    db $10                                        ; $7c47: $10
    add hl, hl                                    ; $7c48: $29
    dec h                                         ; $7c49: $25
    dec e                                         ; $7c4a: $1d
    add hl, de                                    ; $7c4b: $19
    inc de                                        ; $7c4c: $13
    jr jr_003_7c60                                ; $7c4d: $18 $11

    ld e, $fe                                     ; $7c4f: $1e $fe
    ld l, c                                       ; $7c51: $69
    sbc c                                         ; $7c52: $99
    dec e                                         ; $7c53: $1d
    add hl, de                                    ; $7c54: $19
    ld e, $11                                     ; $7c55: $1e $11
    dec e                                         ; $7c57: $1d
    add hl, de                                    ; $7c58: $19
    inc hl                                        ; $7c59: $23
    ld de, $ff1e                                  ; $7c5a: $11 $1e $ff
    dec sp                                        ; $7c5d: $3b
    adc b                                         ; $7c5e: $88
    sbc c                                         ; $7c5f: $99

jr_003_7c60:
    db $10                                        ; $7c60: $10
    db $10                                        ; $7c61: $10
    db $10                                        ; $7c62: $10
    db $10                                        ; $7c63: $10
    db $10                                        ; $7c64: $10
    cp $ac                                        ; $7c65: $fe $ac
    sbc c                                         ; $7c67: $99

jr_003_7c68:
    db $10                                        ; $7c68: $10
    db $10                                        ; $7c69: $10
    db $10                                        ; $7c6a: $10
    db $10                                        ; $7c6b: $10
    db $10                                        ; $7c6c: $10
    db $10                                        ; $7c6d: $10
    cp $e9                                        ; $7c6e: $fe $e9
    sbc c                                         ; $7c70: $99
    db $10                                        ; $7c71: $10
    db $10                                        ; $7c72: $10
    db $10                                        ; $7c73: $10
    db $10                                        ; $7c74: $10
    db $10                                        ; $7c75: $10
    db $10                                        ; $7c76: $10
    db $10                                        ; $7c77: $10
    db $10                                        ; $7c78: $10
    cp $29                                        ; $7c79: $fe $29
    sbc d                                         ; $7c7b: $9a
    db $10                                        ; $7c7c: $10
    db $10                                        ; $7c7d: $10
    db $10                                        ; $7c7e: $10
    db $10                                        ; $7c7f: $10
    db $10                                        ; $7c80: $10
    db $10                                        ; $7c81: $10
    db $10                                        ; $7c82: $10
    db $10                                        ; $7c83: $10
    db $10                                        ; $7c84: $10
    db $10                                        ; $7c85: $10
    rst RST_38                                    ; $7c86: $ff
    ld b, d                                       ; $7c87: $42
    adc b                                         ; $7c88: $88
    sbc d                                         ; $7c89: $9a
    db $10                                        ; $7c8a: $10
    db $10                                        ; $7c8b: $10
    db $10                                        ; $7c8c: $10
    db $10                                        ; $7c8d: $10
    db $10                                        ; $7c8e: $10
    db $10                                        ; $7c8f: $10
    db $10                                        ; $7c90: $10
    cp $c9                                        ; $7c91: $fe $c9
    sbc d                                         ; $7c93: $9a
    db $10                                        ; $7c94: $10
    db $10                                        ; $7c95: $10
    db $10                                        ; $7c96: $10
    db $10                                        ; $7c97: $10
    db $10                                        ; $7c98: $10
    db $10                                        ; $7c99: $10
    db $10                                        ; $7c9a: $10
    db $10                                        ; $7c9b: $10
    db $10                                        ; $7c9c: $10
    rst RST_38                                    ; $7c9d: $ff
    ld b, a                                       ; $7c9e: $47
    jr z, jr_003_7c3c                             ; $7c9f: $28 $9b

    db $10                                        ; $7ca1: $10
    db $10                                        ; $7ca2: $10
    db $10                                        ; $7ca3: $10
    db $10                                        ; $7ca4: $10
    db $10                                        ; $7ca5: $10
    db $10                                        ; $7ca6: $10
    db $10                                        ; $7ca7: $10
    db $10                                        ; $7ca8: $10
    db $10                                        ; $7ca9: $10
    db $10                                        ; $7caa: $10
    db $10                                        ; $7cab: $10
    cp $68                                        ; $7cac: $fe $68
    sbc e                                         ; $7cae: $9b
    db $10                                        ; $7caf: $10
    db $10                                        ; $7cb0: $10
    db $10                                        ; $7cb1: $10
    db $10                                        ; $7cb2: $10
    db $10                                        ; $7cb3: $10
    db $10                                        ; $7cb4: $10
    db $10                                        ; $7cb5: $10
    db $10                                        ; $7cb6: $10
    db $10                                        ; $7cb7: $10
    db $10                                        ; $7cb8: $10
    rst RST_38                                    ; $7cb9: $ff
    ld c, e                                       ; $7cba: $4b
    ret z                                         ; $7cbb: $c8

    sbc e                                         ; $7cbc: $9b
    db $10                                        ; $7cbd: $10
    db $10                                        ; $7cbe: $10
    db $10                                        ; $7cbf: $10
    db $10                                        ; $7cc0: $10
    db $10                                        ; $7cc1: $10
    db $10                                        ; $7cc2: $10
    db $10                                        ; $7cc3: $10
    cp $e8                                        ; $7cc4: $fe $e8
    sbc e                                         ; $7cc6: $9b
    ld b, b                                       ; $7cc7: $40
    ld b, d                                       ; $7cc8: $42
    ccf                                           ; $7cc9: $3f
    inc [hl]                                      ; $7cca: $34
    ld b, l                                       ; $7ccb: $45
    inc sp                                        ; $7ccc: $33
    dec [hl]                                      ; $7ccd: $35
    inc [hl]                                      ; $7cce: $34
    db $10                                        ; $7ccf: $10
    db $10                                        ; $7cd0: $10
    cp $08                                        ; $7cd1: $fe $08
    sbc b                                         ; $7cd3: $98
    db $10                                        ; $7cd4: $10
    db $10                                        ; $7cd5: $10
    db $10                                        ; $7cd6: $10
    db $10                                        ; $7cd7: $10
    db $10                                        ; $7cd8: $10
    db $10                                        ; $7cd9: $10
    db $10                                        ; $7cda: $10
    cp $28                                        ; $7cdb: $fe $28
    sbc b                                         ; $7cdd: $98
    db $10                                        ; $7cde: $10
    db $10                                        ; $7cdf: $10
    db $10                                        ; $7ce0: $10
    ld [hl-], a                                   ; $7ce1: $32
    ld c, c                                       ; $7ce2: $49
    db $10                                        ; $7ce3: $10
    db $10                                        ; $7ce4: $10
    db $10                                        ; $7ce5: $10
    db $10                                        ; $7ce6: $10
    db $10                                        ; $7ce7: $10
    cp $68                                        ; $7ce8: $fe $68
    sbc b                                         ; $7cea: $98
    db $10                                        ; $7ceb: $10
    dec de                                        ; $7cec: $1b
    rra                                           ; $7ced: $1f
    ld e, $11                                     ; $7cee: $1e $11
    dec e                                         ; $7cf0: $1d
    add hl, de                                    ; $7cf1: $19
    db $10                                        ; $7cf2: $10
    db $10                                        ; $7cf3: $10
    db $10                                        ; $7cf4: $10
    rst RST_38                                    ; $7cf5: $ff
    ld d, c                                       ; $7cf6: $51
    xor b                                         ; $7cf7: $a8
    sbc b                                         ; $7cf8: $98
    db $10                                        ; $7cf9: $10
    db $10                                        ; $7cfa: $10
    db $10                                        ; $7cfb: $10
    db $10                                        ; $7cfc: $10
    db $10                                        ; $7cfd: $10
    db $10                                        ; $7cfe: $10
    db $10                                        ; $7cff: $10
    cp $cc                                        ; $7d00: $fe $cc
    sbc b                                         ; $7d02: $98
    db $10                                        ; $7d03: $10
    db $10                                        ; $7d04: $10
    db $10                                        ; $7d05: $10
    db $10                                        ; $7d06: $10
    db $10                                        ; $7d07: $10
    db $10                                        ; $7d08: $10
    cp $eb                                        ; $7d09: $fe $eb
    sbc b                                         ; $7d0b: $98
    db $10                                        ; $7d0c: $10
    db $10                                        ; $7d0d: $10
    cp $08                                        ; $7d0e: $fe $08
    sbc c                                         ; $7d10: $99
    db $10                                        ; $7d11: $10
    db $10                                        ; $7d12: $10
    db $10                                        ; $7d13: $10
    db $10                                        ; $7d14: $10
    db $10                                        ; $7d15: $10
    db $10                                        ; $7d16: $10
    db $10                                        ; $7d17: $10
    db $10                                        ; $7d18: $10
    db $10                                        ; $7d19: $10
    cp $29                                        ; $7d1a: $fe $29
    sbc c                                         ; $7d1c: $99
    db $10                                        ; $7d1d: $10
    db $10                                        ; $7d1e: $10
    db $10                                        ; $7d1f: $10
    db $10                                        ; $7d20: $10
    db $10                                        ; $7d21: $10
    db $10                                        ; $7d22: $10
    db $10                                        ; $7d23: $10
    db $10                                        ; $7d24: $10
    rst RST_38                                    ; $7d25: $ff
    nop                                           ; $7d26: $00
    ld b, b                                       ; $7d27: $40
    jr nc, jr_003_7d2a                            ; $7d28: $30 $00

jr_003_7d2a:
    db $10                                        ; $7d2a: $10
    ld b, b                                       ; $7d2b: $40
    jr c, jr_003_7d2e                             ; $7d2c: $38 $00

jr_003_7d2e:
    db $10                                        ; $7d2e: $10
    ld b, b                                       ; $7d2f: $40
    ld c, b                                       ; $7d30: $48
    nop                                           ; $7d31: $00
    db $10                                        ; $7d32: $10
    ld b, b                                       ; $7d33: $40
    ld d, b                                       ; $7d34: $50
    nop                                           ; $7d35: $00
    db $10                                        ; $7d36: $10
    ld h, b                                       ; $7d37: $60
    ld b, b                                       ; $7d38: $40
    nop                                           ; $7d39: $00
    db $10                                        ; $7d3a: $10
    ld h, b                                       ; $7d3b: $60
    ld c, b                                       ; $7d3c: $48
    nop                                           ; $7d3d: $00
    db $10                                        ; $7d3e: $10
    add b                                         ; $7d3f: $80
    ld b, b                                       ; $7d40: $40
    nop                                           ; $7d41: $00
    db $10                                        ; $7d42: $10
    add b                                         ; $7d43: $80
    ld c, b                                       ; $7d44: $48
    nop                                           ; $7d45: $00
    db $10                                        ; $7d46: $10
    ld h, b                                       ; $7d47: $60
    adc b                                         ; $7d48: $88
    nop                                           ; $7d49: $00
    db $10                                        ; $7d4a: $10
    ld h, b                                       ; $7d4b: $60
    sub b                                         ; $7d4c: $90
    nop                                           ; $7d4d: $00
    db $10                                        ; $7d4e: $10
    add b                                         ; $7d4f: $80
    adc b                                         ; $7d50: $88
    nop                                           ; $7d51: $00
    nop                                           ; $7d52: $00
    add b                                         ; $7d53: $80
    sub b                                         ; $7d54: $90
    nop                                           ; $7d55: $00
    nop                                           ; $7d56: $00
    jr nz, jr_003_7d71                            ; $7d57: $20 $18

    nop                                           ; $7d59: $00
    nop                                           ; $7d5a: $00
    jr nz, jr_003_7d7d                            ; $7d5b: $20 $20

    nop                                           ; $7d5d: $00
    nop                                           ; $7d5e: $00
    jr nz, jr_003_7d89                            ; $7d5f: $20 $28

    nop                                           ; $7d61: $00
    nop                                           ; $7d62: $00
    jr nz, jr_003_7d95                            ; $7d63: $20 $30

    nop                                           ; $7d65: $00
    nop                                           ; $7d66: $00
    jr nz, jr_003_7da1                            ; $7d67: $20 $38

    nop                                           ; $7d69: $00
    nop                                           ; $7d6a: $00
    jr nz, jr_003_7dad                            ; $7d6b: $20 $40

    nop                                           ; $7d6d: $00
    nop                                           ; $7d6e: $00
    jr nz, jr_003_7db9                            ; $7d6f: $20 $48

jr_003_7d71:
    nop                                           ; $7d71: $00
    nop                                           ; $7d72: $00
    jr nz, jr_003_7dc5                            ; $7d73: $20 $50

    nop                                           ; $7d75: $00
    nop                                           ; $7d76: $00
    inc l                                         ; $7d77: $2c
    ld a, h                                       ; $7d78: $7c
    ld [hl], b                                    ; $7d79: $70
    nop                                           ; $7d7a: $00
    inc l                                         ; $7d7b: $2c
    add h                                         ; $7d7c: $84

jr_003_7d7d:
    ld [hl], d                                    ; $7d7d: $72
    nop                                           ; $7d7e: $00
    adc l                                         ; $7d7f: $8d
    ld a, l                                       ; $7d80: $7d
    adc l                                         ; $7d81: $8d
    ld a, l                                       ; $7d82: $7d
    and l                                         ; $7d83: $a5
    ld a, l                                       ; $7d84: $7d
    cp l                                          ; $7d85: $bd
    ld a, l                                       ; $7d86: $7d
    push de                                       ; $7d87: $d5
    ld a, l                                       ; $7d88: $7d

jr_003_7d89:
    adc l                                         ; $7d89: $8d
    ld a, l                                       ; $7d8a: $7d
    db $ed                                        ; $7d8b: $ed
    ld a, l                                       ; $7d8c: $7d
    inc h                                         ; $7d8d: $24
    ld [hl], h                                    ; $7d8e: $74
    jr nc, jr_003_7d91                            ; $7d8f: $30 $00

jr_003_7d91:
    inc h                                         ; $7d91: $24
    ld a, h                                       ; $7d92: $7c
    ld [hl-], a                                   ; $7d93: $32
    nop                                           ; $7d94: $00

jr_003_7d95:
    inc [hl]                                      ; $7d95: $34
    ld [hl], h                                    ; $7d96: $74
    inc [hl]                                      ; $7d97: $34
    nop                                           ; $7d98: $00
    inc [hl]                                      ; $7d99: $34
    ld a, h                                       ; $7d9a: $7c
    ld [hl], $00                                  ; $7d9b: $36 $00
    inc [hl]                                      ; $7d9d: $34
    add h                                         ; $7d9e: $84
    ld h, d                                       ; $7d9f: $62
    nop                                           ; $7da0: $00

jr_003_7da1:
    inc [hl]                                      ; $7da1: $34
    adc h                                         ; $7da2: $8c
    ld h, h                                       ; $7da3: $64
    nop                                           ; $7da4: $00
    inc h                                         ; $7da5: $24
    ld a, b                                       ; $7da6: $78
    jr nz, jr_003_7da9                            ; $7da7: $20 $00

jr_003_7da9:
    inc h                                         ; $7da9: $24
    add b                                         ; $7daa: $80
    ld [hl+], a                                   ; $7dab: $22
    nop                                           ; $7dac: $00

jr_003_7dad:
    inc [hl]                                      ; $7dad: $34
    add b                                         ; $7dae: $80
    inc h                                         ; $7daf: $24
    nop                                           ; $7db0: $00
    inc [hl]                                      ; $7db1: $34
    adc b                                         ; $7db2: $88
    ld e, d                                       ; $7db3: $5a
    nop                                           ; $7db4: $00
    nop                                           ; $7db5: $00
    adc b                                         ; $7db6: $88
    nop                                           ; $7db7: $00
    nop                                           ; $7db8: $00

jr_003_7db9:
    nop                                           ; $7db9: $00
    adc h                                         ; $7dba: $8c
    nop                                           ; $7dbb: $00
    nop                                           ; $7dbc: $00
    inc h                                         ; $7dbd: $24
    add b                                         ; $7dbe: $80
    ld e, h                                       ; $7dbf: $5c
    nop                                           ; $7dc0: $00
    inc h                                         ; $7dc1: $24
    adc b                                         ; $7dc2: $88
    ld e, [hl]                                    ; $7dc3: $5e
    nop                                           ; $7dc4: $00

jr_003_7dc5:
    inc [hl]                                      ; $7dc5: $34
    ld a, b                                       ; $7dc6: $78
    ld a, [hl+]                                   ; $7dc7: $2a
    nop                                           ; $7dc8: $00
    inc [hl]                                      ; $7dc9: $34
    add b                                         ; $7dca: $80
    inc l                                         ; $7dcb: $2c
    nop                                           ; $7dcc: $00
    inc [hl]                                      ; $7dcd: $34
    adc b                                         ; $7dce: $88
    ld l, $00                                     ; $7dcf: $2e $00
    nop                                           ; $7dd1: $00
    adc h                                         ; $7dd2: $8c
    ld d, [hl]                                    ; $7dd3: $56
    nop                                           ; $7dd4: $00
    inc h                                         ; $7dd5: $24
    ld [hl], h                                    ; $7dd6: $74
    ld b, b                                       ; $7dd7: $40
    nop                                           ; $7dd8: $00
    inc h                                         ; $7dd9: $24
    ld a, h                                       ; $7dda: $7c
    ld b, d                                       ; $7ddb: $42
    nop                                           ; $7ddc: $00
    inc [hl]                                      ; $7ddd: $34
    ld [hl], h                                    ; $7dde: $74
    ld b, h                                       ; $7ddf: $44
    nop                                           ; $7de0: $00
    inc [hl]                                      ; $7de1: $34
    ld a, h                                       ; $7de2: $7c
    ld b, [hl]                                    ; $7de3: $46
    nop                                           ; $7de4: $00
    inc [hl]                                      ; $7de5: $34
    add h                                         ; $7de6: $84
    ld l, b                                       ; $7de7: $68
    nop                                           ; $7de8: $00
    inc [hl]                                      ; $7de9: $34
    adc h                                         ; $7dea: $8c
    ld h, h                                       ; $7deb: $64
    nop                                           ; $7dec: $00
    inc h                                         ; $7ded: $24
    add h                                         ; $7dee: $84
    ld l, d                                       ; $7def: $6a
    nop                                           ; $7df0: $00
    inc h                                         ; $7df1: $24
    adc h                                         ; $7df2: $8c
    ld l, h                                       ; $7df3: $6c
    nop                                           ; $7df4: $00
    inc [hl]                                      ; $7df5: $34
    ld [hl], h                                    ; $7df6: $74
    ld d, b                                       ; $7df7: $50
    nop                                           ; $7df8: $00
    inc [hl]                                      ; $7df9: $34
    ld a, h                                       ; $7dfa: $7c
    ld d, d                                       ; $7dfb: $52
    nop                                           ; $7dfc: $00
    inc [hl]                                      ; $7dfd: $34
    add h                                         ; $7dfe: $84
    ld d, h                                       ; $7dff: $54
    nop                                           ; $7e00: $00
    inc [hl]                                      ; $7e01: $34
    adc h                                         ; $7e02: $8c
    ld d, [hl]                                    ; $7e03: $56
    nop                                           ; $7e04: $00
    inc de                                        ; $7e05: $13
    ld a, [hl]                                    ; $7e06: $7e
    inc de                                        ; $7e07: $13
    ld a, [hl]                                    ; $7e08: $7e
    dec hl                                        ; $7e09: $2b
    ld a, [hl]                                    ; $7e0a: $7e
    ld b, e                                       ; $7e0b: $43
    ld a, [hl]                                    ; $7e0c: $7e
    ld e, e                                       ; $7e0d: $5b
    ld a, [hl]                                    ; $7e0e: $7e
    inc de                                        ; $7e0f: $13
    ld a, [hl]                                    ; $7e10: $7e
    ld [hl], e                                    ; $7e11: $73
    ld a, [hl]                                    ; $7e12: $7e
    inc h                                         ; $7e13: $24
    ld [hl], h                                    ; $7e14: $74
    jr c, jr_003_7e17                             ; $7e15: $38 $00

jr_003_7e17:
    inc h                                         ; $7e17: $24
    ld a, h                                       ; $7e18: $7c
    ld a, [hl-]                                   ; $7e19: $3a
    nop                                           ; $7e1a: $00
    inc [hl]                                      ; $7e1b: $34
    ld [hl], h                                    ; $7e1c: $74
    inc a                                         ; $7e1d: $3c
    nop                                           ; $7e1e: $00
    inc [hl]                                      ; $7e1f: $34
    ld a, h                                       ; $7e20: $7c
    ld a, $00                                     ; $7e21: $3e $00
    inc [hl]                                      ; $7e23: $34
    add h                                         ; $7e24: $84
    ld h, [hl]                                    ; $7e25: $66
    nop                                           ; $7e26: $00
    inc [hl]                                      ; $7e27: $34
    adc h                                         ; $7e28: $8c
    ld h, h                                       ; $7e29: $64
    nop                                           ; $7e2a: $00
    nop                                           ; $7e2b: $00
    ld a, b                                       ; $7e2c: $78
    nop                                           ; $7e2d: $00
    nop                                           ; $7e2e: $00
    inc h                                         ; $7e2f: $24
    add b                                         ; $7e30: $80
    ld h, $00                                     ; $7e31: $26 $00
    inc [hl]                                      ; $7e33: $34
    add b                                         ; $7e34: $80
    jr z, jr_003_7e37                             ; $7e35: $28 $00

jr_003_7e37:
    inc [hl]                                      ; $7e37: $34
    adc b                                         ; $7e38: $88
    ld e, d                                       ; $7e39: $5a
    nop                                           ; $7e3a: $00
    nop                                           ; $7e3b: $00
    adc b                                         ; $7e3c: $88
    nop                                           ; $7e3d: $00
    nop                                           ; $7e3e: $00
    nop                                           ; $7e3f: $00
    adc h                                         ; $7e40: $8c
    nop                                           ; $7e41: $00
    nop                                           ; $7e42: $00
    inc h                                         ; $7e43: $24
    add b                                         ; $7e44: $80
    ld h, b                                       ; $7e45: $60
    nop                                           ; $7e46: $00
    inc h                                         ; $7e47: $24
    adc b                                         ; $7e48: $88
    ld e, d                                       ; $7e49: $5a
    nop                                           ; $7e4a: $00
    inc [hl]                                      ; $7e4b: $34
    ld a, b                                       ; $7e4c: $78
    ld a, [hl+]                                   ; $7e4d: $2a
    nop                                           ; $7e4e: $00
    inc [hl]                                      ; $7e4f: $34
    add b                                         ; $7e50: $80
    inc l                                         ; $7e51: $2c
    nop                                           ; $7e52: $00
    inc [hl]                                      ; $7e53: $34
    adc b                                         ; $7e54: $88
    ld l, $00                                     ; $7e55: $2e $00
    nop                                           ; $7e57: $00
    adc h                                         ; $7e58: $8c
    ld d, [hl]                                    ; $7e59: $56
    nop                                           ; $7e5a: $00
    inc h                                         ; $7e5b: $24
    ld [hl], h                                    ; $7e5c: $74
    ld c, b                                       ; $7e5d: $48
    nop                                           ; $7e5e: $00
    inc h                                         ; $7e5f: $24
    ld a, h                                       ; $7e60: $7c
    ld c, d                                       ; $7e61: $4a
    nop                                           ; $7e62: $00
    inc [hl]                                      ; $7e63: $34
    ld [hl], h                                    ; $7e64: $74
    ld c, h                                       ; $7e65: $4c
    nop                                           ; $7e66: $00
    inc [hl]                                      ; $7e67: $34
    ld a, h                                       ; $7e68: $7c
    ld c, [hl]                                    ; $7e69: $4e
    nop                                           ; $7e6a: $00
    inc [hl]                                      ; $7e6b: $34
    add h                                         ; $7e6c: $84
    ld l, b                                       ; $7e6d: $68
    nop                                           ; $7e6e: $00
    inc [hl]                                      ; $7e6f: $34
    adc h                                         ; $7e70: $8c
    ld h, h                                       ; $7e71: $64
    nop                                           ; $7e72: $00
    inc h                                         ; $7e73: $24
    add h                                         ; $7e74: $84
    ld l, [hl]                                    ; $7e75: $6e
    nop                                           ; $7e76: $00
    inc h                                         ; $7e77: $24
    adc h                                         ; $7e78: $8c
    ld l, h                                       ; $7e79: $6c
    nop                                           ; $7e7a: $00
    inc [hl]                                      ; $7e7b: $34
    ld [hl], h                                    ; $7e7c: $74
    ld e, b                                       ; $7e7d: $58
    nop                                           ; $7e7e: $00
    inc [hl]                                      ; $7e7f: $34
    ld a, h                                       ; $7e80: $7c
    ld d, d                                       ; $7e81: $52
    nop                                           ; $7e82: $00
    inc [hl]                                      ; $7e83: $34
    add h                                         ; $7e84: $84
    ld d, h                                       ; $7e85: $54
    nop                                           ; $7e86: $00
    inc [hl]                                      ; $7e87: $34
    adc h                                         ; $7e88: $8c
    ld d, [hl]                                    ; $7e89: $56
    nop                                           ; $7e8a: $00
    ld d, b                                       ; $7e8b: $50
    ld d, b                                       ; $7e8c: $50
    ld d, h                                       ; $7e8d: $54
    nop                                           ; $7e8e: $00
    ld d, b                                       ; $7e8f: $50
    ld e, b                                       ; $7e90: $58
    ld d, [hl]                                    ; $7e91: $56
    nop                                           ; $7e92: $00
    ld d, b                                       ; $7e93: $50
    ld d, b                                       ; $7e94: $50
    ld d, [hl]                                    ; $7e95: $56
    jr nz, @+$52                                  ; $7e96: $20 $50

    ld e, b                                       ; $7e98: $58
    ld d, h                                       ; $7e99: $54
    jr nz, jr_003_7eec                            ; $7e9a: $20 $50

    ld d, b                                       ; $7e9c: $50
    ld d, b                                       ; $7e9d: $50
    db $10                                        ; $7e9e: $10
    ld d, b                                       ; $7e9f: $50
    ld e, b                                       ; $7ea0: $58
    ld d, d                                       ; $7ea1: $52
    stop                                          ; $7ea2: $10 $00
    jr nz, jr_003_7ea6                            ; $7ea4: $20 $00

jr_003_7ea6:
    nop                                           ; $7ea6: $00
    nop                                           ; $7ea7: $00
    jr z, jr_003_7eaa                             ; $7ea8: $28 $00

jr_003_7eaa:
    nop                                           ; $7eaa: $00
    nop                                           ; $7eab: $00
    ld b, b                                       ; $7eac: $40
    nop                                           ; $7ead: $00
    nop                                           ; $7eae: $00
    nop                                           ; $7eaf: $00
    ld c, b                                       ; $7eb0: $48
    nop                                           ; $7eb1: $00
    nop                                           ; $7eb2: $00
    nop                                           ; $7eb3: $00
    ld h, b                                       ; $7eb4: $60
    nop                                           ; $7eb5: $00
    nop                                           ; $7eb6: $00
    nop                                           ; $7eb7: $00
    ld l, b                                       ; $7eb8: $68
    nop                                           ; $7eb9: $00
    nop                                           ; $7eba: $00
    nop                                           ; $7ebb: $00
    add b                                         ; $7ebc: $80
    nop                                           ; $7ebd: $00
    nop                                           ; $7ebe: $00
    nop                                           ; $7ebf: $00
    adc b                                         ; $7ec0: $88
    nop                                           ; $7ec1: $00
    nop                                           ; $7ec2: $00
    ld a, b                                       ; $7ec3: $78
    ld d, b                                       ; $7ec4: $50
    nop                                           ; $7ec5: $00
    nop                                           ; $7ec6: $00
    adc b                                         ; $7ec7: $88
    ld d, b                                       ; $7ec8: $50
    nop                                           ; $7ec9: $00
    nop                                           ; $7eca: $00
    ld a, b                                       ; $7ecb: $78
    ld e, b                                       ; $7ecc: $58
    nop                                           ; $7ecd: $00
    nop                                           ; $7ece: $00
    adc b                                         ; $7ecf: $88
    ld e, b                                       ; $7ed0: $58
    nop                                           ; $7ed1: $00
    nop                                           ; $7ed2: $00
    inc h                                         ; $7ed3: $24
    nop                                           ; $7ed4: $00
    db $10                                        ; $7ed5: $10
    db $10                                        ; $7ed6: $10
    inc h                                         ; $7ed7: $24
    ld [$1012], sp                                ; $7ed8: $08 $12 $10
    inc h                                         ; $7edb: $24
    db $10                                        ; $7edc: $10
    inc d                                         ; $7edd: $14
    db $10                                        ; $7ede: $10
    inc h                                         ; $7edf: $24
    jr jr_003_7ef8                                ; $7ee0: $18 $16

    db $10                                        ; $7ee2: $10
    jr z, jr_003_7f25                             ; $7ee3: $28 $40

    jr jr_003_7ef7                                ; $7ee5: $18 $10

    jr z, jr_003_7f31                             ; $7ee7: $28 $48

    ld a, [de]                                    ; $7ee9: $1a
    db $10                                        ; $7eea: $10
    ld b, b                                       ; $7eeb: $40

jr_003_7eec:
    ld a, b                                       ; $7eec: $78
    inc e                                         ; $7eed: $1c
    nop                                           ; $7eee: $00
    ld b, b                                       ; $7eef: $40
    add b                                         ; $7ef0: $80
    ld e, $00                                     ; $7ef1: $1e $00
    ld b, b                                       ; $7ef3: $40
    ld a, b                                       ; $7ef4: $78
    jr nz, jr_003_7ef7                            ; $7ef5: $20 $00

jr_003_7ef7:
    ld b, b                                       ; $7ef7: $40

jr_003_7ef8:
    add b                                         ; $7ef8: $80
    ld [hl+], a                                   ; $7ef9: $22
    nop                                           ; $7efa: $00
    ld b, b                                       ; $7efb: $40
    ld l, b                                       ; $7efc: $68
    stop                                          ; $7efd: $10 $00
    ld b, b                                       ; $7eff: $40
    ld [hl], b                                    ; $7f00: $70
    ld [de], a                                    ; $7f01: $12
    nop                                           ; $7f02: $00
    ld b, b                                       ; $7f03: $40
    ld a, b                                       ; $7f04: $78
    inc d                                         ; $7f05: $14
    nop                                           ; $7f06: $00
    ld b, b                                       ; $7f07: $40
    add b                                         ; $7f08: $80
    ld d, $00                                     ; $7f09: $16 $00
    ld b, b                                       ; $7f0b: $40
    adc b                                         ; $7f0c: $88
    jr jr_003_7f0f                                ; $7f0d: $18 $00

jr_003_7f0f:
    ld d, b                                       ; $7f0f: $50
    ld l, b                                       ; $7f10: $68
    ld a, [de]                                    ; $7f11: $1a
    nop                                           ; $7f12: $00
    ld d, b                                       ; $7f13: $50
    ld [hl], b                                    ; $7f14: $70
    inc e                                         ; $7f15: $1c
    nop                                           ; $7f16: $00
    ld d, b                                       ; $7f17: $50
    ld a, b                                       ; $7f18: $78
    ld e, $00                                     ; $7f19: $1e $00
    ld d, b                                       ; $7f1b: $50
    add b                                         ; $7f1c: $80
    jr nz, jr_003_7f1f                            ; $7f1d: $20 $00

jr_003_7f1f:
    ld d, b                                       ; $7f1f: $50
    adc b                                         ; $7f20: $88
    ld [hl+], a                                   ; $7f21: $22
    nop                                           ; $7f22: $00
    ld h, b                                       ; $7f23: $60
    ld l, b                                       ; $7f24: $68

jr_003_7f25:
    inc h                                         ; $7f25: $24
    nop                                           ; $7f26: $00
    ld h, b                                       ; $7f27: $60
    ld [hl], b                                    ; $7f28: $70
    ld h, $00                                     ; $7f29: $26 $00
    ld h, b                                       ; $7f2b: $60
    ld a, b                                       ; $7f2c: $78
    jr z, jr_003_7f2f                             ; $7f2d: $28 $00

jr_003_7f2f:
    ld h, b                                       ; $7f2f: $60
    add b                                         ; $7f30: $80

jr_003_7f31:
    ld a, [hl+]                                   ; $7f31: $2a
    nop                                           ; $7f32: $00
    ld h, b                                       ; $7f33: $60
    adc b                                         ; $7f34: $88
    inc l                                         ; $7f35: $2c
    nop                                           ; $7f36: $00
    inc h                                         ; $7f37: $24
    nop                                           ; $7f38: $00
    ld c, [hl]                                    ; $7f39: $4e
    db $10                                        ; $7f3a: $10
    inc h                                         ; $7f3b: $24
    ld [$1050], sp                                ; $7f3c: $08 $50 $10
    inc h                                         ; $7f3f: $24
    db $10                                        ; $7f40: $10
    ld d, d                                       ; $7f41: $52
    db $10                                        ; $7f42: $10
    inc h                                         ; $7f43: $24
    jr jr_003_7f9a                                ; $7f44: $18 $54

    db $10                                        ; $7f46: $10
    inc [hl]                                      ; $7f47: $34
    nop                                           ; $7f48: $00
    ld d, [hl]                                    ; $7f49: $56
    db $10                                        ; $7f4a: $10
    inc [hl]                                      ; $7f4b: $34
    ld [$1058], sp                                ; $7f4c: $08 $58 $10
    inc [hl]                                      ; $7f4f: $34
    db $10                                        ; $7f50: $10
    ld e, d                                       ; $7f51: $5a
    db $10                                        ; $7f52: $10
    inc [hl]                                      ; $7f53: $34
    jr jr_003_7fb2                                ; $7f54: $18 $5c

    db $10                                        ; $7f56: $10
    jr z, jr_003_7f99                             ; $7f57: $28 $40

    ld [hl], d                                    ; $7f59: $72
    db $10                                        ; $7f5a: $10
    jr z, @+$4a                                   ; $7f5b: $28 $48

    ld [hl], h                                    ; $7f5d: $74
    db $10                                        ; $7f5e: $10
    ld b, b                                       ; $7f5f: $40
    ld l, b                                       ; $7f60: $68
    ld l, $00                                     ; $7f61: $2e $00
    ld b, b                                       ; $7f63: $40
    ld [hl], b                                    ; $7f64: $70
    jr nc, jr_003_7f67                            ; $7f65: $30 $00

jr_003_7f67:
    ld b, b                                       ; $7f67: $40
    ld a, b                                       ; $7f68: $78
    ld [hl-], a                                   ; $7f69: $32
    nop                                           ; $7f6a: $00
    ld b, b                                       ; $7f6b: $40
    add b                                         ; $7f6c: $80
    inc [hl]                                      ; $7f6d: $34
    nop                                           ; $7f6e: $00
    ld b, b                                       ; $7f6f: $40
    adc b                                         ; $7f70: $88
    ld [hl], $00                                  ; $7f71: $36 $00
    ld d, b                                       ; $7f73: $50
    ld l, b                                       ; $7f74: $68
    jr c, jr_003_7f77                             ; $7f75: $38 $00

jr_003_7f77:
    ld d, b                                       ; $7f77: $50
    ld [hl], b                                    ; $7f78: $70
    ld a, [hl-]                                   ; $7f79: $3a
    nop                                           ; $7f7a: $00
    ld d, b                                       ; $7f7b: $50
    ld a, b                                       ; $7f7c: $78
    inc a                                         ; $7f7d: $3c
    nop                                           ; $7f7e: $00
    ld d, b                                       ; $7f7f: $50
    add b                                         ; $7f80: $80
    ld a, $00                                     ; $7f81: $3e $00
    ld d, b                                       ; $7f83: $50
    adc b                                         ; $7f84: $88
    ld b, b                                       ; $7f85: $40
    nop                                           ; $7f86: $00
    ld d, b                                       ; $7f87: $50
    sub b                                         ; $7f88: $90
    ld b, d                                       ; $7f89: $42
    nop                                           ; $7f8a: $00
    ld h, b                                       ; $7f8b: $60
    ld [hl], b                                    ; $7f8c: $70
    ld b, h                                       ; $7f8d: $44
    nop                                           ; $7f8e: $00
    ld h, b                                       ; $7f8f: $60
    ld a, b                                       ; $7f90: $78
    ld b, [hl]                                    ; $7f91: $46
    nop                                           ; $7f92: $00
    ld h, b                                       ; $7f93: $60
    add b                                         ; $7f94: $80
    ld c, b                                       ; $7f95: $48
    nop                                           ; $7f96: $00
    ld h, b                                       ; $7f97: $60
    adc b                                         ; $7f98: $88

jr_003_7f99:
    ld c, d                                       ; $7f99: $4a

jr_003_7f9a:
    nop                                           ; $7f9a: $00
    ld h, b                                       ; $7f9b: $60
    sub b                                         ; $7f9c: $90
    ld c, h                                       ; $7f9d: $4c
    nop                                           ; $7f9e: $00
    inc h                                         ; $7f9f: $24
    nop                                           ; $7fa0: $00
    ld e, [hl]                                    ; $7fa1: $5e
    db $10                                        ; $7fa2: $10
    inc h                                         ; $7fa3: $24
    ld [$1060], sp                                ; $7fa4: $08 $60 $10
    inc h                                         ; $7fa7: $24
    db $10                                        ; $7fa8: $10
    ld h, d                                       ; $7fa9: $62
    db $10                                        ; $7faa: $10
    inc h                                         ; $7fab: $24
    jr @+$66                                      ; $7fac: $18 $64

    db $10                                        ; $7fae: $10
    inc h                                         ; $7faf: $24
    jr nz, @+$68                                  ; $7fb0: $20 $66

jr_003_7fb2:
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
    rst RST_38                                    ; $7fff: $ff
