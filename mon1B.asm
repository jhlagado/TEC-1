00000000 c3 f0 05                         jp 0x05f0
00000003 ff                               rst 0x38
00000004 ff                               rst 0x38
00000005 ff                               rst 0x38
00000006 ff                               rst 0x38
00000007 ff                               rst 0x38
00000008 c3 20 03                         jp 0x0320
0000000b ff                               rst 0x38
0000000c ff                               rst 0x38
0000000d ff                               rst 0x38
0000000e ff                               rst 0x38
0000000f ff                               rst 0x38
00000010 c3 e0 03                         jp 0x03e0
00000013 ff                               rst 0x38
00000014 ff                               rst 0x38
00000015 ff                               rst 0x38
00000016 ff                               rst 0x38
00000017 ff                               rst 0x38
00000018 c3 90 04                         jp 0x0490
0000001b ff                               rst 0x38
0000001c ff                               rst 0x38
0000001d ff                               rst 0x38
0000001e ff                               rst 0x38
0000001f ff                               rst 0x38
00000020 ff                               rst 0x38
00000021 ff                               rst 0x38
00000022 ff                               rst 0x38
00000023 ff                               rst 0x38
00000024 ff                               rst 0x38
00000025 ff                               rst 0x38
00000026 ff                               rst 0x38
00000027 ff                               rst 0x38
00000028 21 30 02                         ld hl,0x0230
0000002b c3 41 00                         jp 0x0041
0000002e ff                               rst 0x38
0000002f ff                               rst 0x38
00000030 21 30 05                         ld hl,0x0530
00000033 c3 41 00                         jp 0x0041
00000036 ff                               rst 0x38
00000037 ff                               rst 0x38
00000038 c7                               rst 0x00
00000039 ff                               rst 0x38
0000003a ff                               rst 0x38
0000003b ff                               rst 0x38
0000003c ff                               rst 0x38
0000003d ff                               rst 0x38
0000003e ff                               rst 0x38
0000003f ff                               rst 0x38
00000040 ff                               rst 0x38
00000041 22 00 08                         ld (0x0800),hl
00000044 c3 b0 01                         jp 0x01b0
00000047 ff                               rst 0x38
00000048 ff                               rst 0x38
00000049 ff                               rst 0x38
0000004a ff                               rst 0x38
0000004b ff                               rst 0x38
0000004c ff                               rst 0x38
0000004d ff                               rst 0x38
0000004e ff                               rst 0x38
0000004f ff                               rst 0x38
00000050 ff                               rst 0x38
00000051 ff                               rst 0x38
00000052 ff                               rst 0x38
00000053 ff                               rst 0x38
00000054 ff                               rst 0x38
00000055 ff                               rst 0x38
00000056 ff                               rst 0x38
00000057 ff                               rst 0x38
00000058 ff                               rst 0x38
00000059 ff                               rst 0x38
0000005a ff                               rst 0x38
0000005b ff                               rst 0x38
0000005c ff                               rst 0x38
0000005d ff                               rst 0x38
0000005e ff                               rst 0x38
0000005f ff                               rst 0x38
00000060 ff                               rst 0x38
00000061 ff                               rst 0x38
00000062 ff                               rst 0x38
00000063 ff                               rst 0x38
00000064 ff                               rst 0x38
00000065 ff                               rst 0x38
00000066 db 00                            in a,(0x00)
00000068 e6 1f                            and 0x1f
0000006a ed 47                            ld i,a
0000006c c9                               ret
0000006d 31 d0 0f                         ld sp,0x0fd0
00000070 cd 31 01                         call 0x0131
00000073 cd 8e 01                         call 0x018e
00000076 3a f9 0f                         ld a,(0x0ff9)
00000079 fe 00                            cp 0x00
0000007b c2 96 00                         jp nz,0x0096
0000007e ed 57                            ld a,i
00000080 fe 10                            cp 0x10
00000082 da 88 00                         jp c,0x0088
00000085 c3 e3 00                         jp 0x00e3
00000088 21 f7 0f                         ld hl,0x0ff7
0000008b cd 6f 01                         call 0x016f
0000008e ed 6f                            rld
00000090 23                               inc hl
00000091 ed 6f                            rld
00000093 c3 da 00                         jp 0x00da
00000096 ed 57                            ld a,i
00000098 fe 10                            cp 0x10
0000009a da b7 00                         jp c,0x00b7
0000009d af                               xor a
0000009e 32 fa 0f                         ld (0x0ffa),a
000000a1 ed 57                            ld a,i
000000a3 fe 13                            cp 0x13
000000a5 ca da 00                         jp z,0x00da
000000a8 fe 12                            cp 0x12
000000aa ca c2 00                         jp z,0x00c2
000000ad fe 11                            cp 0x11
000000af ca c6 00                         jp z,0x00c6
000000b2 fe 10                            cp 0x10
000000b4 ca d0 00                         jp z,0x00d0
000000b7 2a f7 0f                         ld hl,(0x0ff7)
000000ba cd 7b 01                         call 0x017b
000000bd ed 6f                            rld
000000bf c3 e3 00                         jp 0x00e3
000000c2 2a f7 0f                         ld hl,(0x0ff7)
000000c5 e9                               jp (hl)
000000c6 2a f7 0f                         ld hl,(0x0ff7)
000000c9 2b                               dec hl
000000ca 22 f7 0f                         ld (0x0ff7),hl
000000cd c3 e3 00                         jp 0x00e3
000000d0 2a f7 0f                         ld hl,(0x0ff7)
000000d3 23                               inc hl
000000d4 22 f7 0f                         ld (0x0ff7),hl
000000d7 c3 e3 00                         jp 0x00e3
000000da 3e 00                            ld a,0x00
000000dc 06 04                            ld b,0x04
000000de 21 f3 0f                         ld hl,0x0ff3
000000e1 18 07                            jr 0x00ea
000000e3 3e 67                            ld a,0x67
000000e5 06 02                            ld b,0x02
000000e7 21 f1 0f                         ld hl,0x0ff1
000000ea 32 f9 0f                         ld (0x0ff9),a
000000ed d9                               exx
000000ee ed 5b f7 0f                      ld de,(0x0ff7)
000000f2 cd 02 01                         call 0x0102
000000f5 1a                               ld a,(de)
000000f6 cd 0e 01                         call 0x010e
000000f9 d9                               exx
000000fa cb e6                            set 4,(hl)
000000fc 23                               inc hl
000000fd 10 fb                            djnz 0x00fa
000000ff c3 6d 00                         jp 0x006d
00000102 21 f3 0f                         ld hl,0x0ff3
00000105 7b                               ld a,e
00000106 cd 15 01                         call 0x0115
00000109 7a                               ld a,d
0000010a cd 15 01                         call 0x0115
0000010d c9                               ret
0000010e 21 f1 0f                         ld hl,0x0ff1
00000111 cd 15 01                         call 0x0115
00000114 c9                               ret
00000115 f5                               push af
00000116 cd 26 01                         call 0x0126
00000119 77                               ld (hl),a
0000011a 23                               inc hl
0000011b f1                               pop af
0000011c 0f                               rrca
0000011d 0f                               rrca
0000011e 0f                               rrca
0000011f 0f                               rrca
00000120 cd 26 01                         call 0x0126
00000123 77                               ld (hl),a
00000124 23                               inc hl
00000125 c9                               ret
00000126 e5                               push hl
00000127 21 5f 01                         ld hl,0x015f
0000012a e6 0f                            and 0x0f
0000012c 85                               add a,l
0000012d 6f                               ld l,a
0000012e 7e                               ld a,(hl)
0000012f e1                               pop hl
00000130 c9                               ret
00000131 3e ff                            ld a,0xff
00000133 ed 47                            ld i,a
00000135 cd 40 01                         call 0x0140
00000138 ed 57                            ld a,i
0000013a fe ff                            cp 0xff
0000013c c0                               ret nz
0000013d c3 31 01                         jp 0x0131
00000140 dd e5                            push ix
00000142 01 01 06                         ld bc,0x0601
00000145 dd 7e 00                         ld a,(ix+0)
00000148 d3 02                            out (0x02),a
0000014a dd 23                            inc ix
0000014c 79                               ld a,c
0000014d d3 01                            out (0x01),a
0000014f cb 27                            sla a
00000151 4f                               ld c,a
00000152 3e 0a                            ld a,0x0a
00000154 3d                               dec a
00000155 c2 54 01                         jp nz,0x0154
00000158 d3 01                            out (0x01),a
0000015a 10 e9                            djnz 0x0145
0000015c dd e1                            pop ix
0000015e c9                               ret
0000015f eb                               ex de,hl
00000160 28 cd                            jr z,0x012f
00000162 ad                               xor l
00000163 2e a7                            ld l,0xa7
00000165 e7                               rst 0x20
00000166 29                               add hl,hl
00000167 ef                               rst 0x28
00000168 2f                               cpl
00000169 6f                               ld l,a
0000016a e6 c3                            and 0xc3
0000016c ec c7 47                         call pe,0x47c7
0000016f cd 7b 01                         call 0x017b
00000172 c0                               ret nz
00000173 23                               inc hl
00000174 3e 00                            ld a,0x00
00000176 77                               ld (hl),a
00000177 2b                               dec hl
00000178 ed 57                            ld a,i
0000017a c9                               ret
0000017b ed 57                            ld a,i
0000017d 47                               ld b,a
0000017e 3a fa 0f                         ld a,(0x0ffa)
00000181 fe 00                            cp 0x00
00000183 78                               ld a,b
00000184 c0                               ret nz
00000185 af                               xor a
00000186 77                               ld (hl),a
00000187 3d                               dec a
00000188 32 fa 0f                         ld (0x0ffa),a
0000018b 78                               ld a,b
0000018c c9                               ret
0000018d 00                               nop
0000018e 0e 0a                            ld c,0x0a
00000190 21 50 00                         ld hl,0x0050
00000193 29                               add hl,hl
00000194 11 01 00                         ld de,0x0001
00000197 af                               xor a
00000198 d3 02                            out (0x02),a
0000019a 3d                               dec a
0000019b d3 01                            out (0x01),a
0000019d 41                               ld b,c
0000019e 10 fe                            djnz 0x019e
000001a0 ee 80                            xor 0x80
000001a2 ed 52                            sbc hl,de
000001a4 20 f5                            jr nz,0x019b
000001a6 c9                               ret
000001a7 ff                               rst 0x38
000001a8 ff                               rst 0x38
000001a9 ff                               rst 0x38
000001aa ff                               rst 0x38
000001ab ff                               rst 0x38
000001ac ff                               rst 0x38
000001ad ff                               rst 0x38
000001ae ff                               rst 0x38
000001af ff                               rst 0x38
000001b0 ed 5b 00 08                      ld de,(0x0800)
000001b4 1a                               ld a,(de)
000001b5 e6 1f                            and 0x1f
000001b7 fe 1f                            cp 0x1f
000001b9 c8                               ret z
000001ba 00                               nop
000001bb 00                               nop
000001bc fe 1e                            cp 0x1e
000001be ca b0 01                         jp z,0x01b0
000001c1 fe 00                            cp 0x00
000001c3 ca e9 01                         jp z,0x01e9
000001c6 47                               ld b,a
000001c7 13                               inc de
000001c8 d5                               push de
000001c9 21 f8 01                         ld hl,0x01f8
000001cc cd e3 01                         call 0x01e3
000001cf f5                               push af
000001d0 78                               ld a,b
000001d1 21 10 02                         ld hl,0x0210
000001d4 cd e3 01                         call 0x01e3
000001d7 6f                               ld l,a
000001d8 26 00                            ld h,0x00
000001da f1                               pop af
000001db 4f                               ld c,a
000001dc cd 93 01                         call 0x0193
000001df d1                               pop de
000001e0 c3 b4 01                         jp 0x01b4
000001e3 5f                               ld e,a
000001e4 16 00                            ld d,0x00
000001e6 19                               add hl,de
000001e7 7e                               ld a,(hl)
000001e8 c9                               ret
000001e9 d5                               push de
000001ea 11 00 10                         ld de,0x1000
000001ed 1b                               dec de
000001ee 7a                               ld a,d
000001ef b3                               or e
000001f0 c2 ed 01                         jp nz,0x01ed
000001f3 d1                               pop de
000001f4 13                               inc de
000001f5 c3 b4 01                         jp 0x01b4
000001f8 8c                               adc a,h
000001f9 83                               add a,e
000001fa 7c                               ld a,h
000001fb 75                               ld (hl),l
000001fc 70                               ld (hl),b
000001fd 67                               ld h,a
000001fe 62                               ld h,d
000001ff 5c                               ld e,h
00000200 57                               ld d,a
00000201 52                               ld d,d
00000202 4e                               ld c,(hl)
00000203 48                               ld c,b
00000204 45                               ld b,l
00000205 41                               ld b,c
00000206 3c                               inc a
00000207 39                               add hl,sp
00000208 36 32                            ld (hl),0x32
0000020a 2f                               cpl
0000020b 2c                               inc l
0000020c 2a 27 25                         ld hl,(0x2527)
0000020f 23                               inc hl
00000210 19                               add hl,de
00000211 1a                               ld a,(de)
00000212 1c                               inc e
00000213 1d                               dec e
00000214 1e 20                            ld e,0x20
00000216 23                               inc hl
00000217 25                               dec h
00000218 27                               daa
00000219 29                               add hl,hl
0000021a 2c                               inc l
0000021b 2e 31                            ld l,0x31
0000021d 33                               inc sp
0000021e 37                               scf
0000021f 3a 3d 41                         ld a,(0x413d)
00000222 45                               ld b,l
00000223 49                               ld c,c
00000224 4d                               ld c,l
00000225 52                               ld d,d
00000226 57                               ld d,a
00000227 5c                               ld e,h
00000228 10 ff                            djnz 0x0229
0000022a ff                               rst 0x38
0000022b ff                               rst 0x38
0000022c ff                               rst 0x38
0000022d ff                               rst 0x38
0000022e ff                               rst 0x38
0000022f ff                               rst 0x38
00000230 06 06                            ld b,0x06
00000232 0a                               ld a,(bc)
00000233 0d                               dec c
00000234 06 0d                            ld b,0x0d
00000236 0a                               ld a,(bc)
00000237 0d                               dec c
00000238 12                               ld (de),a
00000239 16 14                            ld d,0x14
0000023b 12                               ld (de),a
0000023c 0f                               rrca
0000023d 11 12 0f                         ld de,0x0f12
00000240 0d                               dec c
00000241 0d                               dec c
00000242 0d                               dec c
00000243 0a                               ld a,(bc)
00000244 12                               ld (de),a
00000245 0f                               rrca
00000246 0d                               dec c
00000247 0a                               ld a,(bc)
00000248 08                               ex af,af'
00000249 06 08                            ld b,0x08
0000024b 0a                               ld a,(bc)
0000024c 0f                               rrca
0000024d 0a                               ld a,(bc)
0000024e 0d                               dec c
0000024f 0f                               rrca
00000250 06 06                            ld b,0x06
00000252 0a                               ld a,(bc)
00000253 0d                               dec c
00000254 06 0d                            ld b,0x0d
00000256 0a                               ld a,(bc)
00000257 0d                               dec c
00000258 12                               ld (de),a
00000259 16 14                            ld d,0x14
0000025b 12                               ld (de),a
0000025c 0f                               rrca
0000025d 11 12 0f                         ld de,0x0f12
00000260 0d                               dec c
00000261 0d                               dec c
00000262 0d                               dec c
00000263 0a                               ld a,(bc)
00000264 12                               ld (de),a
00000265 0f                               rrca
00000266 0d                               dec c
00000267 0a                               ld a,(bc)
00000268 08                               ex af,af'
00000269 06 08                            ld b,0x08
0000026b 0a                               ld a,(bc)
0000026c 06 12                            ld b,0x12
0000026e 00                               nop
0000026f 1e                               db 0x1e
00000270 fd 2a 00 08                      ld iy,(0x0800)
00000274 dd 21 f1 0f                      ld ix,0x0ff1
00000278 06 06                            ld b,0x06
0000027a 21 f1 0f                         ld hl,0x0ff1
0000027d 36 00                            ld (hl),0x00
0000027f 23                               inc hl
00000280 10 fb                            djnz 0x027d
00000282 06 06                            ld b,0x06
00000284 11 f7 0f                         ld de,0x0ff7
00000287 21 f6 0f                         ld hl,0x0ff6
0000028a 7e                               ld a,(hl)
0000028b 12                               ld (de),a
0000028c 2b                               dec hl
0000028d 1b                               dec de
0000028e 10 fa                            djnz 0x028a
00000290 fd 7e 00                         ld a,(iy+0)
00000293 fd 23                            inc iy
00000295 e6 1f                            and 0x1f
00000297 fe 1f                            cp 0x1f
00000299 c8                               ret z
0000029a fe 1e                            cp 0x1e
0000029c 28 d2                            jr z,0x0270
0000029e 21 b3 02                         ld hl,0x02b3
000002a1 cd e3 01                         call 0x01e3
000002a4 32 f1 0f                         ld (0x0ff1),a
000002a7 3e 80                            ld a,0x80
000002a9 f5                               push af
000002aa cd 40 01                         call 0x0140
000002ad f1                               pop af
000002ae 3d                               dec a
000002af 20 f8                            jr nz,0x02a9
000002b1 18 cf                            jr 0x0282
000002b3 00                               nop
000002b4 6f                               ld l,a
000002b5 e6 c3                            and 0xc3
000002b7 ec c7 47                         call pe,0x47c7
000002ba e3                               ex (sp),hl
000002bb 6e                               ld l,(hl)
000002bc 28 e8                            jr z,0x02a6
000002be ce c2                            adc a,0xc2
000002c0 6b                               ld l,e
000002c1 eb                               ex de,hl
000002c2 4f                               ld c,a
000002c3 2f                               cpl
000002c4 43                               ld b,e
000002c5 a7                               and a
000002c6 46                               ld b,(hl)
000002c7 ea e0 ae                         jp pe,0xaee0
000002ca cd 04 10                         call 0x1004
000002cd 18 00                            jr 0x02cf
000002cf 00                               nop
000002d0 00                               nop
000002d1 08                               ex af,af'
000002d2 05                               dec b
000002d3 0c                               inc c
000002d4 0c                               inc c
000002d5 0e 00                            ld c,0x00
000002d7 13                               inc de
000002d8 08                               ex af,af'
000002d9 05                               dec b
000002da 11 05 00                         ld de,0x0005
000002dd 13                               inc de
000002de 08                               ex af,af'
000002df 09                               add hl,bc
000002e0 12                               ld (de),a
000002e1 00                               nop
000002e2 09                               add hl,bc
000002e3 12                               ld (de),a
000002e4 00                               nop
000002e5 13                               inc de
000002e6 08                               ex af,af'
000002e7 05                               dec b
000002e8 00                               nop
000002e9 13                               inc de
000002ea 05                               dec b
000002eb 03                               inc bc
000002ec 18 09                            jr 0x02f7
000002ee 19                               add hl,de
000002ef 19                               add hl,de
000002f0 19                               add hl,de
000002f1 19                               add hl,de
000002f2 04                               inc b
000002f3 05                               dec b
000002f4 12                               ld (de),a
000002f5 09                               add hl,bc
000002f6 07                               rlca
000002f7 0d                               dec c
000002f8 05                               dec b
000002f9 04                               inc b
000002fa 00                               nop
000002fb 02                               ld (bc),a
000002fc 16 00                            ld d,0x00
000002fe 0a                               ld a,(bc)
000002ff 0e 08                            ld c,0x08
00000301 0d                               dec c
00000302 00                               nop
00000303 08                               ex af,af'
00000304 01 11 04                         ld bc,0x0411
00000307 16 00                            ld d,0x00
00000309 06 0e                            ld b,0x0e
0000030b 11 00 13                         ld de,0x1300
0000030e 05                               dec b
0000030f 1a                               ld a,(de)
00000310 00                               nop
00000311 00                               nop
00000312 00                               nop
00000313 00                               nop
00000314 00                               nop
00000315 00                               nop
00000316 1e ff                            ld e,0xff
00000318 ff                               rst 0x38
00000319 ff                               rst 0x38
0000031a ff                               rst 0x38
0000031b ff                               rst 0x38
0000031c ff                               rst 0x38
0000031d ff                               rst 0x38
0000031e ff                               rst 0x38
0000031f ff                               rst 0x38
00000320 dd 21 f1 0f                      ld ix,0x0ff1
00000324 af                               xor a
00000325 32 fa 0f                         ld (0x0ffa),a
00000328 32 fb 0f                         ld (0x0ffb),a
0000032b 06 06                            ld b,0x06
0000032d 21 f1 0f                         ld hl,0x0ff1
00000330 36 00                            ld (hl),0x00
00000332 23                               inc hl
00000333 10 fb                            djnz 0x0330
00000335 3a f5 0f                         ld a,(0x0ff5)
00000338 fe 00                            cp 0x00
0000033a 20 37                            jr nz,0x0373
0000033c 11 f5 0f                         ld de,0x0ff5
0000033f 21 f4 0f                         ld hl,0x0ff4
00000342 06 04                            ld b,0x04
00000344 7e                               ld a,(hl)
00000345 12                               ld (de),a
00000346 2b                               dec hl
00000347 1b                               dec de
00000348 10 fa                            djnz 0x0344
0000034a ed 5f                            ld a,r
0000034c cd b5 03                         call 0x03b5
0000034f 32 f1 0f                         ld (0x0ff1),a
00000352 3e 00                            ld a,0x00
00000354 00                               nop
00000355 f5                               push af
00000356 3e ff                            ld a,0xff
00000358 ed 47                            ld i,a
0000035a 3a fb 0f                         ld a,(0x0ffb)
0000035d cd b5 03                         call 0x03b5
00000360 32 f6 0f                         ld (0x0ff6),a
00000363 cd 40 01                         call 0x0140
00000366 ed 57                            ld a,i
00000368 fe ff                            cp 0xff
0000036a c4 8e 03                         call nz,0x038e
0000036d f1                               pop af
0000036e 3d                               dec a
0000036f 20 e4                            jr nz,0x0355
00000371 18 c2                            jr 0x0335
00000373 cd 8e 01                         call 0x018e
00000376 06 06                            ld b,0x06
00000378 21 f1 0f                         ld hl,0x0ff1
0000037b 36 00                            ld (hl),0x00
0000037d 23                               inc hl
0000037e 10 fb                            djnz 0x037b
00000380 3a fa 0f                         ld a,(0x0ffa)
00000383 21 f3 0f                         ld hl,0x0ff3
00000386 cd 15 01                         call 0x0115
00000389 cd 31 01                         call 0x0131
0000038c 18 92                            jr 0x0320
0000038e fe 10                            cp 0x10
00000390 20 08                            jr nz,0x039a
00000392 3a fb 0f                         ld a,(0x0ffb)
00000395 3c                               inc a
00000396 32 fb 0f                         ld (0x0ffb),a
00000399 c9                               ret
0000039a 3a f6 0f                         ld a,(0x0ff6)
0000039d 4f                               ld c,a
0000039e 21 f5 0f                         ld hl,0x0ff5
000003a1 06 05                            ld b,0x05
000003a3 7e                               ld a,(hl)
000003a4 b9                               cp c
000003a5 20 0a                            jr nz,0x03b1
000003a7 36 00                            ld (hl),0x00
000003a9 3a fa 0f                         ld a,(0x0ffa)
000003ac 3c                               inc a
000003ad 27                               daa
000003ae 32 fa 0f                         ld (0x0ffa),a
000003b1 2b                               dec hl
000003b2 10 ef                            djnz 0x03a3
000003b4 c9                               ret
000003b5 e6 07                            and 0x07
000003b7 cd 26 01                         call 0x0126
000003ba c9                               ret
000003bb 16 0e                            ld d,0x0e
000003bd 14                               inc d
000003be 00                               nop
000003bf 0c                               inc c
000003c0 0e 12                            ld c,0x12
000003c2 05                               dec b
000003c3 00                               nop
000003c4 12                               ld (de),a
000003c5 13                               inc de
000003c6 14                               inc d
000003c7 0f                               rrca
000003c8 09                               add hl,bc
000003c9 04                               inc b
000003ca 1a                               ld a,(de)
000003cb 1f                               rra
000003cc 0e 08                            ld c,0x08
000003ce 00                               nop
000003cf 0d                               dec c
000003d0 0e 19                            ld c,0x19
000003d2 19                               add hl,de
000003d3 19                               add hl,de
000003d4 09                               add hl,bc
000003d5 00                               nop
000003d6 0c                               inc c
000003d7 0e 12                            ld c,0x12
000003d9 13                               inc de
000003da 1a                               ld a,(de)
000003db 1f                               rra
000003dc ff                               rst 0x38
000003dd ff                               rst 0x38
000003de ff                               rst 0x38
000003df ff                               rst 0x38
000003e0 dd 21 f1 0f                      ld ix,0x0ff1
000003e4 3e 23                            ld a,0x23
000003e6 32 fa 0f                         ld (0x0ffa),a
000003e9 21 f1 0f                         ld hl,0x0ff1
000003ec 06 06                            ld b,0x06
000003ee 36 00                            ld (hl),0x00
000003f0 23                               inc hl
000003f1 10 fb                            djnz 0x03ee
000003f3 1e 00                            ld e,0x00
000003f5 cd 66 04                         call 0x0466
000003f8 cd 31 01                         call 0x0131
000003fb ed 57                            ld a,i
000003fd fe 04                            cp 0x04
000003ff 30 f4                            jr nc,0x03f5
00000401 fe 00                            cp 0x00
00000403 28 f0                            jr z,0x03f5
00000405 5f                               ld e,a
00000406 3a fa 0f                         ld a,(0x0ffa)
00000409 bb                               cp e
0000040a 28 44                            jr z,0x0450
0000040c 38 42                            jr c,0x0450
0000040e 93                               sub e
0000040f 27                               daa
00000410 32 fa 0f                         ld (0x0ffa),a
00000413 cd 66 04                         call 0x0466
00000416 21 f6 0f                         ld hl,0x0ff6
00000419 36 ae                            ld (hl),0xae
0000041b 16 00                            ld d,0x00
0000041d cd 40 01                         call 0x0140
00000420 15                               dec d
00000421 20 fa                            jr nz,0x041d
00000423 3a fa 0f                         ld a,(0x0ffa)
00000426 fe 01                            cp 0x01
00000428 28 2c                            jr z,0x0456
0000042a 3d                               dec a
0000042b 27                               daa
0000042c d6 04                            sub 0x04
0000042e 27                               daa
0000042f 30 fb                            jr nc,0x042c
00000431 c6 04                            add a,0x04
00000433 27                               daa
00000434 fe 00                            cp 0x00
00000436 28 10                            jr z,0x0448
00000438 5f                               ld e,a
00000439 3a fa 0f                         ld a,(0x0ffa)
0000043c 93                               sub e
0000043d 27                               daa
0000043e 32 fa 0f                         ld (0x0ffa),a
00000441 21 f6 0f                         ld hl,0x0ff6
00000444 36 28                            ld (hl),0x28
00000446 18 ad                            jr 0x03f5
00000448 ed 5f                            ld a,r
0000044a e6 03                            and 0x03
0000044c 28 28                            jr z,0x0476
0000044e 18 e8                            jr 0x0438
00000450 11 bb 03                         ld de,0x03bb
00000453 c3 59 04                         jp 0x0459
00000456 11 cc 03                         ld de,0x03cc
00000459 ed 53 00 08                      ld (0x0800),de
0000045d cd 70 02                         call 0x0270
00000460 cd 31 01                         call 0x0131
00000463 c3 e0 03                         jp 0x03e0
00000466 21 f1 0f                         ld hl,0x0ff1
00000469 3a fa 0f                         ld a,(0x0ffa)
0000046c cd 15 01                         call 0x0115
0000046f 23                               inc hl
00000470 7b                               ld a,e
00000471 cd 26 01                         call 0x0126
00000474 77                               ld (hl),a
00000475 c9                               ret
00000476 3c                               inc a
00000477 c3 38 04                         jp 0x0438
0000047a ff                               rst 0x38
0000047b 14                               inc d
0000047c 12                               ld (de),a
0000047d 14                               inc d
0000047e 17                               rla
0000047f 17                               rla
00000480 12                               ld (de),a
00000481 14                               inc d
00000482 10 1f                            djnz 0x04a3
00000484 01 11 01                         ld bc,0x0111
00000487 11 01 11                         ld de,0x1101
0000048a 1f                               rra
0000048b ff                               rst 0x38
0000048c ff                               rst 0x38
0000048d ff                               rst 0x38
0000048e ff                               rst 0x38
0000048f ff                               rst 0x38
00000490 dd 21 f1 0f                      ld ix,0x0ff1
00000494 fd 21 00 08                      ld iy,0x0800
00000498 3e 50                            ld a,0x50
0000049a fd 77 00                         ld (iy+0),a
0000049d 3e 20                            ld a,0x20
0000049f fd 77 01                         ld (iy+1),a
000004a2 af                               xor a
000004a3 fd 77 02                         ld (iy+2),a
000004a6 21 f1 0f                         ld hl,0x0ff1
000004a9 06 06                            ld b,0x06
000004ab 36 00                            ld (hl),0x00
000004ad 23                               inc hl
000004ae 10 fb                            djnz 0x04ab
000004b0 16 80                            ld d,0x80
000004b2 fd 7e 01                         ld a,(iy+1)
000004b5 21 f1 0f                         ld hl,0x0ff1
000004b8 cd 15 01                         call 0x0115
000004bb 23                               inc hl
000004bc 23                               inc hl
000004bd fd 7e 00                         ld a,(iy+0)
000004c0 cd 15 01                         call 0x0115
000004c3 3e ff                            ld a,0xff
000004c5 ed 47                            ld i,a
000004c7 cd 40 01                         call 0x0140
000004ca ed 57                            ld a,i
000004cc fe ff                            cp 0xff
000004ce c4 f3 04                         call nz,0x04f3
000004d1 15                               dec d
000004d2 c2 b2 04                         jp nz,0x04b2
000004d5 fd 7e 02                         ld a,(iy+2)
000004d8 d6 01                            sub 0x01
000004da 27                               daa
000004db fd 77 02                         ld (iy+2),a
000004de 47                               ld b,a
000004df fd 7e 00                         ld a,(iy+0)
000004e2 80                               add a,b
000004e3 27                               daa
000004e4 fe 00                            cp 0x00
000004e6 ca 11 05                         jp z,0x0511
000004e9 fe 60                            cp 0x60
000004eb 30 1b                            jr nc,0x0508
000004ed fd 77 00                         ld (iy+0),a
000004f0 c3 b0 04                         jp 0x04b0
000004f3 fd 7e 01                         ld a,(iy+1)
000004f6 fe 00                            cp 0x00
000004f8 c8                               ret z
000004f9 3d                               dec a
000004fa 27                               daa
000004fb fd 77 01                         ld (iy+1),a
000004fe fd 7e 02                         ld a,(iy+2)
00000501 c6 02                            add a,0x02
00000503 27                               daa
00000504 fd 77 02                         ld (iy+2),a
00000507 c9                               ret
00000508 11 84 04                         ld de,0x0484
0000050b dd 21 00 00                      ld ix,0x0000
0000050f 18 03                            jr 0x0514
00000511 11 7b 04                         ld de,0x047b
00000514 ed 53 00 08                      ld (0x0800),de
00000518 cd b0 01                         call 0x01b0
0000051b cd 31 01                         call 0x0131
0000051e c3 90 04                         jp 0x0490
00000521 ff                               rst 0x38
00000522 ff                               rst 0x38
00000523 ff                               rst 0x38
00000524 ff                               rst 0x38
00000525 ff                               rst 0x38
00000526 ff                               rst 0x38
00000527 ff                               rst 0x38
00000528 ff                               rst 0x38
00000529 ff                               rst 0x38
0000052a ff                               rst 0x38
0000052b ff                               rst 0x38
0000052c ff                               rst 0x38
0000052d ff                               rst 0x38
0000052e ff                               rst 0x38
0000052f ff                               rst 0x38
00000530 0b                               dec bc
00000531 0a                               ld a,(bc)
00000532 08                               ex af,af'
00000533 0a                               ld a,(bc)
00000534 0a                               ld a,(bc)
00000535 0a                               ld a,(bc)
00000536 06 06                            ld b,0x06
00000538 06 0b                            ld b,0x0b
0000053a 0a                               ld a,(bc)
0000053b 08                               ex af,af'
0000053c 0a                               ld a,(bc)
0000053d 0a                               ld a,(bc)
0000053e 0a                               ld a,(bc)
0000053f 0a                               ld a,(bc)
00000540 0a                               ld a,(bc)
00000541 0a                               ld a,(bc)
00000542 0b                               dec bc
00000543 0a                               ld a,(bc)
00000544 08                               ex af,af'
00000545 0a                               ld a,(bc)
00000546 0a                               ld a,(bc)
00000547 0a                               ld a,(bc)
00000548 06 06                            ld b,0x06
0000054a 06 0a                            ld b,0x0a
0000054c 08                               ex af,af'
0000054d 0a                               ld a,(bc)
0000054e 0d                               dec c
0000054f 0d                               dec c
00000550 0d                               dec c
00000551 0d                               dec c
00000552 0d                               dec c
00000553 00                               nop
00000554 0d                               dec c
00000555 05                               dec b
00000556 08                               ex af,af'
00000557 0b                               dec bc
00000558 0b                               dec bc
00000559 0b                               dec bc
0000055a 06 06                            ld b,0x06
0000055c 06 0b                            ld b,0x0b
0000055e 0a                               ld a,(bc)
0000055f 08                               ex af,af'
00000560 0a                               ld a,(bc)
00000561 0a                               ld a,(bc)
00000562 0a                               ld a,(bc)
00000563 06 06                            ld b,0x06
00000565 06 0b                            ld b,0x0b
00000567 0a                               ld a,(bc)
00000568 06 08                            ld b,0x08
0000056a 08                               ex af,af'
0000056b 08                               ex af,af'
0000056c 08                               ex af,af'
0000056d 08                               ex af,af'
0000056e 0a                               ld a,(bc)
0000056f 0b                               dec bc
00000570 0a                               ld a,(bc)
00000571 08                               ex af,af'
00000572 06 06                            ld b,0x06
00000574 06 06                            ld b,0x06
00000576 06 06                            ld b,0x06
00000578 00                               nop
00000579 00                               nop
0000057a 00                               nop
0000057b 1e ff                            ld e,0xff
0000057d ff                               rst 0x38
0000057e ff                               rst 0x38
0000057f ff                               rst 0x38
00000580 21 00 08                         ld hl,0x0800
00000583 31 d0 0f                         ld sp,0x0fd0
00000586 dd 21 f1 0f                      ld ix,0x0ff1
0000058a 22 f7 0f                         ld (0x0ff7),hl
0000058d af                               xor a
0000058e 32 f9 0f                         ld (0x0ff9),a
00000591 32 fa 0f                         ld (0x0ffa),a
00000594 0e 0a                            ld c,0x0a
00000596 21 50 00                         ld hl,0x0050
00000599 cd 93 01                         call 0x0193
0000059c 0e 20                            ld c,0x20
0000059e 21 30 00                         ld hl,0x0030
000005a1 cd 93 01                         call 0x0193
000005a4 c3 e3 00                         jp 0x00e3
000005a7 ff                               rst 0x38
000005a8 ff                               rst 0x38
000005a9 ff                               rst 0x38
000005aa ff                               rst 0x38
000005ab ff                               rst 0x38
000005ac ff                               rst 0x38
000005ad ff                               rst 0x38
000005ae ff                               rst 0x38
000005af ff                               rst 0x38
000005b0 21 00 08                         ld hl,0x0800
000005b3 11 00 0b                         ld de,0x0b00
000005b6 7e                               ld a,(hl)
000005b7 fe ff                            cp 0xff
000005b9 c2 c2 05                         jp nz,0x05c2
000005bc 21 00 08                         ld hl,0x0800
000005bf c3 b6 05                         jp 0x05b6
000005c2 d3 03                            out (0x03),a
000005c4 1a                               ld a,(de)
000005c5 fe ff                            cp 0xff
000005c7 c2 d0 05                         jp nz,0x05d0
000005ca 11 00 0b                         ld de,0x0b00
000005cd c3 c4 05                         jp 0x05c4
000005d0 d3 04                            out (0x04),a
000005d2 cd e1 05                         call 0x05e1
000005d5 13                               inc de
000005d6 1a                               ld a,(de)
000005d7 d3 04                            out (0x04),a
000005d9 cd e1 05                         call 0x05e1
000005dc 13                               inc de
000005dd 23                               inc hl
000005de c3 b6 05                         jp 0x05b6
000005e1 01 ff 03                         ld bc,0x03ff
000005e4 0b                               dec bc
000005e5 78                               ld a,b
000005e6 b1                               or c
000005e7 c2 e4 05                         jp nz,0x05e4
000005ea c9                               ret
000005eb ff                               rst 0x38
000005ec ff                               rst 0x38
000005ed ff                               rst 0x38
000005ee ff                               rst 0x38
000005ef ff                               rst 0x38
000005f0 ed 73 d8 0f                      ld (0x0fd8),sp
000005f4 31 f0 0f                         ld sp,0x0ff0
000005f7 f5                               push af
000005f8 c5                               push bc
000005f9 d5                               push de
000005fa e5                               push hl
000005fb dd e5                            push ix
000005fd fd e5                            push iy
000005ff 08                               ex af,af'
00000600 d9                               exx
00000601 f5                               push af
00000602 c5                               push bc
00000603 d5                               push de
00000604 e5                               push hl
00000605 ed 57                            ld a,i
00000607 f5                               push af
00000608 c3 80 05                         jp 0x0580
0000060b ff                               rst 0x38
0000060c ff                               rst 0x38
0000060d ff                               rst 0x38
0000060e ff                               rst 0x38
0000060f ff                               rst 0x38
00000610 ff                               rst 0x38
00000611 ff                               rst 0x38
00000612 ff                               rst 0x38
00000613 ff                               rst 0x38
00000614 ff                               rst 0x38
00000615 ff                               rst 0x38
00000616 ff                               rst 0x38
00000617 ff                               rst 0x38
00000618 ff                               rst 0x38
00000619 ff                               rst 0x38
0000061a ff                               rst 0x38
0000061b ff                               rst 0x38
0000061c ff                               rst 0x38
0000061d ff                               rst 0x38
0000061e ff                               rst 0x38
0000061f ff                               rst 0x38
00000620 ff                               rst 0x38
00000621 ff                               rst 0x38
00000622 ff                               rst 0x38
00000623 ff                               rst 0x38
00000624 ff                               rst 0x38
00000625 ff                               rst 0x38
00000626 ff                               rst 0x38
00000627 ff                               rst 0x38
00000628 ff                               rst 0x38
00000629 ff                               rst 0x38
0000062a ff                               rst 0x38
0000062b ff                               rst 0x38
0000062c ff                               rst 0x38
0000062d ff                               rst 0x38
0000062e ff                               rst 0x38
0000062f ff                               rst 0x38
00000630 ff                               rst 0x38
00000631 ff                               rst 0x38
00000632 ff                               rst 0x38
00000633 ff                               rst 0x38
00000634 ff                               rst 0x38
00000635 ff                               rst 0x38
00000636 ff                               rst 0x38
00000637 ff                               rst 0x38
00000638 ff                               rst 0x38
00000639 ff                               rst 0x38
0000063a ff                               rst 0x38
0000063b ff                               rst 0x38
0000063c ff                               rst 0x38
0000063d ff                               rst 0x38
0000063e ff                               rst 0x38
0000063f ff                               rst 0x38
00000640 ff                               rst 0x38
00000641 ff                               rst 0x38
00000642 ff                               rst 0x38
00000643 ff                               rst 0x38
00000644 ff                               rst 0x38
00000645 ff                               rst 0x38
00000646 ff                               rst 0x38
00000647 ff                               rst 0x38
00000648 ff                               rst 0x38
00000649 ff                               rst 0x38
0000064a ff                               rst 0x38
0000064b ff                               rst 0x38
0000064c ff                               rst 0x38
0000064d ff                               rst 0x38
0000064e ff                               rst 0x38
0000064f ff                               rst 0x38
00000650 ff                               rst 0x38
00000651 ff                               rst 0x38
00000652 ff                               rst 0x38
00000653 ff                               rst 0x38
00000654 ff                               rst 0x38
00000655 ff                               rst 0x38
00000656 ff                               rst 0x38
00000657 ff                               rst 0x38
00000658 ff                               rst 0x38
00000659 ff                               rst 0x38
0000065a ff                               rst 0x38
0000065b ff                               rst 0x38
0000065c ff                               rst 0x38
0000065d ff                               rst 0x38
0000065e ff                               rst 0x38
0000065f ff                               rst 0x38
00000660 ff                               rst 0x38
00000661 ff                               rst 0x38
00000662 ff                               rst 0x38
00000663 ff                               rst 0x38
00000664 ff                               rst 0x38
00000665 ff                               rst 0x38
00000666 ff                               rst 0x38
00000667 ff                               rst 0x38
00000668 ff                               rst 0x38
00000669 ff                               rst 0x38
0000066a ff                               rst 0x38
0000066b ff                               rst 0x38
0000066c ff                               rst 0x38
0000066d ff                               rst 0x38
0000066e ff                               rst 0x38
0000066f ff                               rst 0x38
00000670 ff                               rst 0x38
00000671 ff                               rst 0x38
00000672 ff                               rst 0x38
00000673 ff                               rst 0x38
00000674 ff                               rst 0x38
00000675 ff                               rst 0x38
00000676 ff                               rst 0x38
00000677 ff                               rst 0x38
00000678 ff                               rst 0x38
00000679 ff                               rst 0x38
0000067a ff                               rst 0x38
0000067b ff                               rst 0x38
0000067c ff                               rst 0x38
0000067d ff                               rst 0x38
0000067e ff                               rst 0x38
0000067f ff                               rst 0x38
00000680 ff                               rst 0x38
00000681 ff                               rst 0x38
00000682 ff                               rst 0x38
00000683 ff                               rst 0x38
00000684 ff                               rst 0x38
00000685 ff                               rst 0x38
00000686 ff                               rst 0x38
00000687 ff                               rst 0x38
00000688 ff                               rst 0x38
00000689 ff                               rst 0x38
0000068a ff                               rst 0x38
0000068b ff                               rst 0x38
0000068c ff                               rst 0x38
0000068d ff                               rst 0x38
0000068e ff                               rst 0x38
0000068f ff                               rst 0x38
00000690 ff                               rst 0x38
00000691 ff                               rst 0x38
00000692 ff                               rst 0x38
00000693 ff                               rst 0x38
00000694 ff                               rst 0x38
00000695 ff                               rst 0x38
00000696 ff                               rst 0x38
00000697 ff                               rst 0x38
00000698 ff                               rst 0x38
00000699 ff                               rst 0x38
0000069a ff                               rst 0x38
0000069b ff                               rst 0x38
0000069c ff                               rst 0x38
0000069d ff                               rst 0x38
0000069e ff                               rst 0x38
0000069f ff                               rst 0x38
000006a0 ff                               rst 0x38
000006a1 ff                               rst 0x38
000006a2 ff                               rst 0x38
000006a3 ff                               rst 0x38
000006a4 ff                               rst 0x38
000006a5 ff                               rst 0x38
000006a6 ff                               rst 0x38
000006a7 ff                               rst 0x38
000006a8 ff                               rst 0x38
000006a9 ff                               rst 0x38
000006aa ff                               rst 0x38
000006ab ff                               rst 0x38
000006ac ff                               rst 0x38
000006ad ff                               rst 0x38
000006ae ff                               rst 0x38
000006af ff                               rst 0x38
000006b0 ff                               rst 0x38
000006b1 ff                               rst 0x38
000006b2 ff                               rst 0x38
000006b3 ff                               rst 0x38
000006b4 ff                               rst 0x38
000006b5 ff                               rst 0x38
000006b6 ff                               rst 0x38
000006b7 ff                               rst 0x38
000006b8 ff                               rst 0x38
000006b9 ff                               rst 0x38
000006ba ff                               rst 0x38
000006bb ff                               rst 0x38
000006bc ff                               rst 0x38
000006bd ff                               rst 0x38
000006be ff                               rst 0x38
000006bf ff                               rst 0x38
000006c0 ff                               rst 0x38
000006c1 ff                               rst 0x38
000006c2 ff                               rst 0x38
000006c3 ff                               rst 0x38
000006c4 ff                               rst 0x38
000006c5 ff                               rst 0x38
000006c6 ff                               rst 0x38
000006c7 ff                               rst 0x38
000006c8 ff                               rst 0x38
000006c9 ff                               rst 0x38
000006ca ff                               rst 0x38
000006cb ff                               rst 0x38
000006cc ff                               rst 0x38
000006cd ff                               rst 0x38
000006ce ff                               rst 0x38
000006cf ff                               rst 0x38
000006d0 ff                               rst 0x38
000006d1 ff                               rst 0x38
000006d2 ff                               rst 0x38
000006d3 ff                               rst 0x38
000006d4 ff                               rst 0x38
000006d5 ff                               rst 0x38
000006d6 ff                               rst 0x38
000006d7 ff                               rst 0x38
000006d8 ff                               rst 0x38
000006d9 ff                               rst 0x38
000006da ff                               rst 0x38
000006db ff                               rst 0x38
000006dc ff                               rst 0x38
000006dd ff                               rst 0x38
000006de ff                               rst 0x38
000006df ff                               rst 0x38
000006e0 ff                               rst 0x38
000006e1 ff                               rst 0x38
000006e2 ff                               rst 0x38
000006e3 ff                               rst 0x38
000006e4 ff                               rst 0x38
000006e5 ff                               rst 0x38
000006e6 ff                               rst 0x38
000006e7 ff                               rst 0x38
000006e8 ff                               rst 0x38
000006e9 ff                               rst 0x38
000006ea ff                               rst 0x38
000006eb ff                               rst 0x38
000006ec ff                               rst 0x38
000006ed ff                               rst 0x38
000006ee ff                               rst 0x38
000006ef ff                               rst 0x38
000006f0 ff                               rst 0x38
000006f1 ff                               rst 0x38
000006f2 ff                               rst 0x38
000006f3 ff                               rst 0x38
000006f4 ff                               rst 0x38
000006f5 ff                               rst 0x38
000006f6 ff                               rst 0x38
000006f7 ff                               rst 0x38
000006f8 ff                               rst 0x38
000006f9 ff                               rst 0x38
000006fa ff                               rst 0x38
000006fb ff                               rst 0x38
000006fc ff                               rst 0x38
000006fd ff                               rst 0x38
000006fe ff                               rst 0x38
000006ff ff                               rst 0x38
00000700 ff                               rst 0x38
00000701 ff                               rst 0x38
00000702 ff                               rst 0x38
00000703 ff                               rst 0x38
00000704 ff                               rst 0x38
00000705 ff                               rst 0x38
00000706 ff                               rst 0x38
00000707 ff                               rst 0x38
00000708 ff                               rst 0x38
00000709 ff                               rst 0x38
0000070a ff                               rst 0x38
0000070b ff                               rst 0x38
0000070c ff                               rst 0x38
0000070d ff                               rst 0x38
0000070e ff                               rst 0x38
0000070f ff                               rst 0x38
00000710 ff                               rst 0x38
00000711 ff                               rst 0x38
00000712 ff                               rst 0x38
00000713 ff                               rst 0x38
00000714 ff                               rst 0x38
00000715 ff                               rst 0x38
00000716 ff                               rst 0x38
00000717 ff                               rst 0x38
00000718 ff                               rst 0x38
00000719 ff                               rst 0x38
0000071a ff                               rst 0x38
0000071b ff                               rst 0x38
0000071c ff                               rst 0x38
0000071d ff                               rst 0x38
0000071e ff                               rst 0x38
0000071f ff                               rst 0x38
00000720 ff                               rst 0x38
00000721 ff                               rst 0x38
00000722 ff                               rst 0x38
00000723 ff                               rst 0x38
00000724 ff                               rst 0x38
00000725 ff                               rst 0x38
00000726 ff                               rst 0x38
00000727 ff                               rst 0x38
00000728 ff                               rst 0x38
00000729 ff                               rst 0x38
0000072a ff                               rst 0x38
0000072b ff                               rst 0x38
0000072c ff                               rst 0x38
0000072d ff                               rst 0x38
0000072e ff                               rst 0x38
0000072f ff                               rst 0x38
00000730 ff                               rst 0x38
00000731 ff                               rst 0x38
00000732 ff                               rst 0x38
00000733 ff                               rst 0x38
00000734 ff                               rst 0x38
00000735 ff                               rst 0x38
00000736 ff                               rst 0x38
00000737 ff                               rst 0x38
00000738 ff                               rst 0x38
00000739 ff                               rst 0x38
0000073a ff                               rst 0x38
0000073b ff                               rst 0x38
0000073c ff                               rst 0x38
0000073d ff                               rst 0x38
0000073e ff                               rst 0x38
0000073f ff                               rst 0x38
00000740 ff                               rst 0x38
00000741 ff                               rst 0x38
00000742 ff                               rst 0x38
00000743 ff                               rst 0x38
00000744 ff                               rst 0x38
00000745 ff                               rst 0x38
00000746 ff                               rst 0x38
00000747 ff                               rst 0x38
00000748 ff                               rst 0x38
00000749 ff                               rst 0x38
0000074a ff                               rst 0x38
0000074b ff                               rst 0x38
0000074c ff                               rst 0x38
0000074d ff                               rst 0x38
0000074e ff                               rst 0x38
0000074f ff                               rst 0x38
00000750 ff                               rst 0x38
00000751 ff                               rst 0x38
00000752 ff                               rst 0x38
00000753 ff                               rst 0x38
00000754 ff                               rst 0x38
00000755 ff                               rst 0x38
00000756 ff                               rst 0x38
00000757 ff                               rst 0x38
00000758 ff                               rst 0x38
00000759 ff                               rst 0x38
0000075a ff                               rst 0x38
0000075b ff                               rst 0x38
0000075c ff                               rst 0x38
0000075d ff                               rst 0x38
0000075e ff                               rst 0x38
0000075f ff                               rst 0x38
00000760 ff                               rst 0x38
00000761 ff                               rst 0x38
00000762 ff                               rst 0x38
00000763 ff                               rst 0x38
00000764 ff                               rst 0x38
00000765 ff                               rst 0x38
00000766 ff                               rst 0x38
00000767 ff                               rst 0x38
00000768 ff                               rst 0x38
00000769 ff                               rst 0x38
0000076a ff                               rst 0x38
0000076b ff                               rst 0x38
0000076c ff                               rst 0x38
0000076d ff                               rst 0x38
0000076e ff                               rst 0x38
0000076f ff                               rst 0x38
00000770 ff                               rst 0x38
00000771 ff                               rst 0x38
00000772 ff                               rst 0x38
00000773 ff                               rst 0x38
00000774 ff                               rst 0x38
00000775 ff                               rst 0x38
00000776 ff                               rst 0x38
00000777 ff                               rst 0x38
00000778 ff                               rst 0x38
00000779 ff                               rst 0x38
0000077a ff                               rst 0x38
0000077b ff                               rst 0x38
0000077c ff                               rst 0x38
0000077d ff                               rst 0x38
0000077e ff                               rst 0x38
0000077f ff                               rst 0x38
00000780 ff                               rst 0x38
00000781 ff                               rst 0x38
00000782 ff                               rst 0x38
00000783 ff                               rst 0x38
00000784 ff                               rst 0x38
00000785 ff                               rst 0x38
00000786 ff                               rst 0x38
00000787 ff                               rst 0x38
00000788 ff                               rst 0x38
00000789 ff                               rst 0x38
0000078a ff                               rst 0x38
0000078b ff                               rst 0x38
0000078c ff                               rst 0x38
0000078d ff                               rst 0x38
0000078e ff                               rst 0x38
0000078f ff                               rst 0x38
00000790 ff                               rst 0x38
00000791 ff                               rst 0x38
00000792 ff                               rst 0x38
00000793 ff                               rst 0x38
00000794 ff                               rst 0x38
00000795 ff                               rst 0x38
00000796 ff                               rst 0x38
00000797 ff                               rst 0x38
00000798 ff                               rst 0x38
00000799 ff                               rst 0x38
0000079a ff                               rst 0x38
0000079b ff                               rst 0x38
0000079c ff                               rst 0x38
0000079d ff                               rst 0x38
0000079e ff                               rst 0x38
0000079f ff                               rst 0x38
000007a0 ff                               rst 0x38
000007a1 ff                               rst 0x38
000007a2 ff                               rst 0x38
000007a3 ff                               rst 0x38
000007a4 ff                               rst 0x38
000007a5 ff                               rst 0x38
000007a6 ff                               rst 0x38
000007a7 ff                               rst 0x38
000007a8 ff                               rst 0x38
000007a9 ff                               rst 0x38
000007aa ff                               rst 0x38
000007ab ff                               rst 0x38
000007ac ff                               rst 0x38
000007ad ff                               rst 0x38
000007ae ff                               rst 0x38
000007af ff                               rst 0x38
000007b0 ff                               rst 0x38
000007b1 ff                               rst 0x38
000007b2 ff                               rst 0x38
000007b3 ff                               rst 0x38
000007b4 ff                               rst 0x38
000007b5 ff                               rst 0x38
000007b6 ff                               rst 0x38
000007b7 ff                               rst 0x38
000007b8 ff                               rst 0x38
000007b9 ff                               rst 0x38
000007ba ff                               rst 0x38
000007bb ff                               rst 0x38
000007bc ff                               rst 0x38
000007bd ff                               rst 0x38
000007be ff                               rst 0x38
000007bf ff                               rst 0x38
000007c0 ff                               rst 0x38
000007c1 ff                               rst 0x38
000007c2 ff                               rst 0x38
000007c3 ff                               rst 0x38
000007c4 ff                               rst 0x38
000007c5 ff                               rst 0x38
000007c6 ff                               rst 0x38
000007c7 ff                               rst 0x38
000007c8 ff                               rst 0x38
000007c9 ff                               rst 0x38
000007ca ff                               rst 0x38
000007cb ff                               rst 0x38
000007cc ff                               rst 0x38
000007cd ff                               rst 0x38
000007ce ff                               rst 0x38
000007cf ff                               rst 0x38
000007d0 ff                               rst 0x38
000007d1 ff                               rst 0x38
000007d2 ff                               rst 0x38
000007d3 ff                               rst 0x38
000007d4 ff                               rst 0x38
000007d5 ff                               rst 0x38
000007d6 ff                               rst 0x38
000007d7 ff                               rst 0x38
000007d8 ff                               rst 0x38
000007d9 ff                               rst 0x38
000007da ff                               rst 0x38
000007db ff                               rst 0x38
000007dc ff                               rst 0x38
000007dd ff                               rst 0x38
000007de ff                               rst 0x38
000007df ff                               rst 0x38
000007e0 ff                               rst 0x38
000007e1 ff                               rst 0x38
000007e2 ff                               rst 0x38
000007e3 ff                               rst 0x38
000007e4 ff                               rst 0x38
000007e5 ff                               rst 0x38
000007e6 ff                               rst 0x38
000007e7 ff                               rst 0x38
000007e8 ff                               rst 0x38
000007e9 ff                               rst 0x38
000007ea ff                               rst 0x38
000007eb ff                               rst 0x38
000007ec ff                               rst 0x38
000007ed ff                               rst 0x38
000007ee ff                               rst 0x38
000007ef ff                               rst 0x38
000007f0 ff                               rst 0x38
000007f1 ff                               rst 0x38
000007f2 ff                               rst 0x38
000007f3 ff                               rst 0x38
000007f4 ff                               rst 0x38
000007f5 ff                               rst 0x38
000007f6 ff                               rst 0x38
000007f7 ff                               rst 0x38
000007f8 ff                               rst 0x38
000007f9 ff                               rst 0x38
000007fa ff                               rst 0x38
000007fb ff                               rst 0x38
000007fc ff                               rst 0x38
000007fd ff                               rst 0x38
000007fe ff                               rst 0x38
000007ff ff                               rst 0x38
