
                    ;LABEL:          OP         OPERAND         ;comment

                                    ORG         0x0000
0000   C3 00 02                     JP          0x0200
0003   FF                           DB          0xFF
0004   FF                           DB          0xFF
0005   FF                           DB          0xFF
0006   FF                           DB          0xFF
0007   FF                           DB          0xFF
0008   2A C0 08                     LD          hl,(0x08c0)
000B   E9                           JP          (hl)
000C   FF                           DB          0xFF
000D   FF                           DB          0xFF
000E   FF                           DB          0xFF
000F   FF                           DB          0xFF
0010   2A C2 08                     LD          hl,(0x08c2)
0013   E9                           JP          (hl)
0014   FF                           DB          0xFF
0015   FF                           DB          0xFF
0016   FF                           DB          0xFF
0017   FF                           DB          0xFF
0018   2A C4 08                     LD       hl,(0x08c4)
001B   E9                           JP       (hl)
001C   FF                           DB          0xFF
001D   FF                           DB          0xFF
001E   FF                           DB          0xFF
001F   FF                           DB          0xFF
0020   2A C6 08                     LD       hl,(0x08c6)
0023   E9                           JP       (hl)
0024   FF                           DB          0xFF
0025   FF                           DB          0xFF
0026   FF                           DB          0xFF
0027   FF                           DB          0xFF
0028   2A C8 08                     LD       hl,(0x08c8)
002B   E9                           JP       (hl)
002C   FF                           DB          0xFF
002D   FF                           DB          0xFF
002E   FF                           DB          0xFF
002F   FF                           DB          0xFF
0030   2A CA 08                     LD       hl,(0x08ca)
0033   E9                           JP       (hl)
0034   FF                           DB          0xFF
0035   FF                           DB          0xFF
0036   FF                           DB          0xFF
0037   FF                           DB          0xFF
0038   2A CC 08                     LD       hl,(0x08cc)
003B   E9                           JP       (hl)
003C   FF                           DB          0xFF
003D   FF                           DB          0xFF
003E   FF                           DB          0xFF
003F   FF                           DB          0xFF
0040   FF                           DB          0xFF
0041   FF                           DB          0xFF
0042   FF                           DB          0xFF
0043   FF                           DB          0xFF
0044   FF                           DB          0xFF
0045   FF                           DB          0xFF
0046   FF                           DB          0xFF
0047   FF                           DB          0xFF
0048   FF                           DB          0xFF
0049   FF                           DB          0xFF
004A   FF                           DB          0xFF
004B   FF                           DB          0xFF
004C   FF                           DB          0xFF
004D   FF                           DB          0xFF
004E   FF                           DB          0xFF
004F   FF                           DB          0xFF
0050   FF                           DB          0xFF
0051   FF                           DB          0xFF
0052   FF                           DB          0xFF
0053   FF                           DB          0xFF
0054   FF                           DB          0xFF
0055   FF                           DB          0xFF
0056   FF                           DB          0xFF
0057   FF                           DB          0xFF
0058   FF                           DB          0xFF
0059   FF                           DB          0xFF
005A   FF                           DB          0xFF
005B   FF                           DB          0xFF
005C   FF                           DB          0xFF
005D   FF                           DB          0xFF
005E   FF                           DB          0xFF
005F   FF                           DB          0xFF
0060   FF                           DB          0xFF
0061   FF                           DB          0xFF
0062   FF                           DB          0xFF
0063   FF                           DB          0xFF
0064   FF                           DB          0xFF
0065   FF                           DB          0xFF
0066   F5                           PUSH       af
0067   DB 00                        IN       a,(0x00)
0069   32 E0 08                     LD       (0x08e0),a
006C   F1                           POP       af
006D   ED 45                        RETN
006F   FF                           DB          0xFF
0070   FF                           DB          0xFF
0071   FF                           DB          0xFF
0072   FF                           DB          0xFF
0073   FF                           DB          0xFF
0074   FF                           DB          0xFF
0075   FF                           DB          0xFF
0076   FF                           DB          0xFF
0077   FF                           DB          0xFF
0078   FF                           DB          0xFF
0079   FF                           DB          0xFF
007A   FF                           DB          0xFF
007B   FF                           DB          0xFF
007C   FF                           DB          0xFF
007D   FF                           DB          0xFF
007E   FF                           DB          0xFF
007F   FF                           DB          0xFF
0080   EB                           EX       de,hl
0081   28 CD                        JR       z,0x0050
0083   AD                           XOR       l
0084   2E A7                        LD       l,0xa7
0086   E7                           RST       0x20
0087   29                           ADD       hl,hl
0088   EF                           RST       0x28
0089   2F                           CPL
008A   6F                           LD       l,a
008B   E6 C3                        AND       0xc3
008D   EC C7 47                     CALL       pe,0x47c7
0090   E3                           EX       (sp),hl
0091   66                           LD       h,(hl)
0092   28 E8                        JR       z,0x007c
0094   4E                           LD       c,(hl)
0095   C2 2D 6B                     JP       nz,0x6b2d
0098   EB                           EX       de,hl
0099   4F                           LD       c,a
009A   2F                           CPL
009B   4B                           LD       c,e
009C   A7                           AND       a
009D   46                           LD       b,(hl)
009E   EA E0 AC                     JP       pe,0xace0
00A1   A4                           AND       h
00A2   AE                           XOR       (hl)
00A3   C9                           RET
00A4   10 08                        DJNZ       0x00ae
00A6   18 04                        JR       0x00ac
00A8   2C                           INC       l
00A9   00                           NOP
00AA   FF                           DB          0xFF
00AB   FF                           DB          0xFF
00AC   FF                           DB          0xFF
00AD   FF                           DB          0xFF
00AE   FF                           DB          0xFF
00AF   FF                           DB          0xFF
00B0   00                           NOP
00B1   09                           ADD       hl,bc
00B2   00                           NOP
00B3   00                           NOP
00B4   FF                           DB          0xFF
00B5   FF                           DB          0xFF
00B6   FF                           DB          0xFF
00B7   FF                           DB          0xFF
00B8   FF                           DB          0xFF
00B9   FF                           DB          0xFF
00BA   FF                           DB          0xFF
00BB   FF                           DB          0xFF
00BC   F8                           RET       m
00BD   FF                           DB          0xFF
00BE   00                           NOP
00BF   00                           NOP
00C0   1B                           DEC       de
00C1   18 1E                        JR       0x00e1
00C3   1D                           DEC       e
00C4   12                           LD       (de),a
00C5   17                           RLA
00C6   0E 29                        LD       c,0x29
00C8   0B                           DEC       bc
00C9   22 29 17                     LD       (0x1729),hl
00CC   12                           LD       (de),a
00CD   0C                           INC       c
00CE   24                           INC       h
00CF   29                           ADD       hl,hl
00D0   29                           ADD       hl,hl
00D1   29                           ADD       hl,hl
00D2   29                           ADD       hl,hl
00D3   29                           ADD       hl,hl
00D4   FE 1C                        CP       0x1c
00D6   1D                           DEC       e
00D7   18 17                        JR       0x00f0
00D9   0A                           LD       a,(bc)
00DA   FF                           DB          0xFF
00DB   FF                           DB          0xFF
00DC   FF                           DB          0xFF
00DD   FF                           DB          0xFF
00DE   FF                           DB          0xFF
00DF   FF                           DB          0xFF
00E0   CD 89 02                     CALL       0x0289
00E3   03                           INC       bc
00E4   18 04                        JR       0x00ea
00E6   CD 89 02                     CALL       0x0289
00E9   0B                           DEC       bc
00EA   CD 90 04                     CALL       0x0490
00ED   CD 70 02                     CALL       0x0270
00F0   21 DF 08                     LD       hl,0x08df
00F3   CB C6                        SET       0,(hl)
00F5   CB 8E                        RES       1,(hl)
00F7   C3 78 03                     JP       0x0378
00FA   FF                           DB          0xFF
00FB   FF                           DB          0xFF
00FC   FF                           DB          0xFF
00FD   FF                           DB          0xFF
00FE   FF                           DB          0xFF
00FF   FF                           DB          0xFF
0100   FD                           DB       0xfd
0101   10 10                        DJNZ       0x0113
0103   FD                           DB       0xfd
0104   11 EF 12                     LD       de,0x12ef
0107   E1                           POP       hl
0108   13                           INC       de
0109   54                           LD       d,h
010A   14                           INC       d
010B   C9                           RET
010C   10 BE                        DJNZ       0x00cc
010E   10 B2                        DJNZ       0x00c2
0110   10 A9                        DJNZ       0x00bb
0112   19                           ADD       hl,de
0113   9F                           SBC       a,a
0114   1A                           LD       a,(de)
0115   96                           SUB       (hl)
0116   1C                           INC       e
0117   80                           ADD       a,b
0118   1E 86                        LD       e,0x86
011A   20 7F                        JR       nz,0x019b
011C   22 77 24                     LD       (0x2477),hl
011F   71                           LD       (hl),c
0120   26 6A                        LD       h,0x6a
0122   28 64                        JR       z,0x0188
0124   2A 5F 2D                     LD       hl,(0x2d5f)
0127   59                           LD       e,c
0128   2F                           CPL
0129   54                           LD       d,h
012A   32 50 35                     LD       (0x3550),a
012D   4B                           LD       c,e
012E   38 47                        JR       c,0x0177
0130   3C                           INC       a
0131   43                           LD       b,e
0132   3F                           CCF
0133   3F                           CCF
0134   43                           LD       b,e
0135   3C                           INC       a
0136   47                           LD       b,a
0137   38 4B                        JR       c,0x0184
0139   35                           DEC       (hl)
013A   50                           LD       d,b
013B   32 54 2F                     LD       (0x2f54),a
013E   59                           LD       e,c
013F   2D                           DEC       l
0140   5F                           LD       e,a
0141   2A 64 28                     LD       hl,(0x2864)
0144   6A                           LD       l,d
0145   26 71                        LD       h,0x71
0147   24                           INC       h
0148   77                           LD       (hl),a
0149   22 7F 20                     LD       (0x207f),hl
014C   86                           ADD       a,(hl)
014D   1E 8E                        LD       e,0x8e
014F   1C                           INC       e
0150   96                           SUB       (hl)
0151   1A                           LD       a,(de)
0152   94                           SUB       h
0153   19                           ADD       hl,de
0154   A9                           XOR       c
0155   18 B3                        JR       0x010a
0157   16 BE                        LD       d,0xbe
0159   15                           DEC       d
015A   C9                           RET
015B   14                           INC       d
015C   D5                           PUSH       de
015D   13                           INC       de
015E   E1                           POP       hl
015F   12                           LD       (de),a
0160   EF                           RST       0x28
0161   11 FD 10                     LD       de,0x10fd
0164   FF                           DB          0xFF
0165   FF                           DB          0xFF
0166   FF                           DB          0xFF
0167   FF                           DB          0xFF
0168   FF                           DB          0xFF
0169   FF                           DB          0xFF
016A   FF                           DB          0xFF
016B   FF                           DB          0xFF
016C   FF                           DB          0xFF
016D   FF                           DB          0xFF
016E   FF                           DB          0xFF
016F   FF                           DB          0xFF
0170   C5                           PUSH       bc
0171   D5                           PUSH       de
0172   E5                           PUSH       hl
0173   F5                           PUSH       af
0174   A7                           AND       a
0175   20 03                        JR       nz,0x017a
0177   5F                           LD       e,a
0178   18 02                        JR       0x017c
017A   1E 80                        LD       e,0x80
017C   21 00 01                     LD       hl,0x0100
017F   87                           ADD       a,a
0180   85                           ADD       a,l
0181   6F                           LD       l,a
0182   4E                           LD       c,(hl)
0183   23                           INC       hl
0184   46                           LD       b,(hl)
0185   7B                           LD       a,e
0186   D3 01                        OUT       (0x01),a
0188   10 FE                        DJNZ       0x0188
018A   46                           LD       b,(hl)
018B   AF                           XOR       a
018C   D3 01                        OUT       (0x01),a
018E   10 FE                        DJNZ       0x018e
0190   0D                           DEC       c
0191   20 F1                        JR       nz,0x0184
0193   F1                           POP       af
0194   E1                           POP       hl
0195   D1                           POP       de
0196   C1                           POP       bc
0197   C9                           RET
0198   FF                           DB          0xFF
0199   FF                           DB          0xFF
019A   FF                           DB          0xFF
019B   FF                           DB          0xFF
019C   FF                           DB          0xFF
019D   FF                           DB          0xFF
019E   FF                           DB          0xFF
019F   FF                           DB          0xFF
01A0   F5                           PUSH       af
01A1   E5                           PUSH       hl
01A2   2A D6 08                     LD       hl,(0x08d6)
01A5   7E                           LD       a,(hl)
01A6   FE FF                        CP       0xff
01A8   20 03                        JR       nz,0x01ad
01AA   E1                           POP       hl
01AB   F1                           POP       af
01AC   C9                           RET
01AD   FE FE                        CP       0xfe
01AF   28 F1                        JR       z,0x01a2
01B1   23                           INC       hl
01B2   CD 70 01                     CALL       0x0170
01B5   18 EE                        JR       0x01a5
01B7   FF                           DB          0xFF
01B8   FF                           DB          0xFF
01B9   FF                           DB          0xFF
01BA   FF                           DB          0xFF
01BB   FF                           DB          0xFF
01BC   FF                           DB          0xFF
01BD   FF                           DB          0xFF
01BE   FF                           DB          0xFF
01BF   FF                           DB          0xFF
01C0   21 DF 08                     LD       hl,0x08df
01C3   CB 46                        BIT       0,(hl)
01C5   20 07                        JR       nz,0x01ce
01C7   CB C6                        SET       0,(hl)
01C9   CB 8E                        RES       1,(hl)
01CB   C3 78 03                     JP       0x0378
01CE   CB 86                        RES       0,(hl)
01D0   CB CE                        SET       1,(hl)
01D2   C3 78 03                     JP       0x0378
01D5   FF                           DB          0xFF
01D6   FF                           DB          0xFF
01D7   FF                           DB          0xFF
01D8   C5                           PUSH       bc
01D9   06 80                        LD       b,0x80
01DB   CD A0 02                     CALL       0x02a0
01DE   10 FB                        DJNZ       0x01db
01E0   C1                           POP       bc
01E1   C9                           RET
01E2   FF                           DB          0xFF
01E3   FF                           DB          0xFF
01E4   ED 4B D2 08                  LD       bc,(0x08d2)
01E8   CD 90 04                     CALL       0x0490
01EB   CD 70 02                     CALL       0x0270
01EE   C3 78 03                     JP       0x0378
01F1   FF                           DB          0xFF
01F2   ED 4B D4 08                  LD       bc,(0x08d4)
01F6   CD 90 04                     CALL       0x0490
01F9   CD 70 02                     CALL       0x0270
01FC   C3 78 03                     JP       0x0378
01FF   FF                           DB          0xFF
0200   ED 73 E8 08                  LD       (0x08e8),sp
0204   31 00 09                     LD       sp,0x0900
0207   F5                           PUSH       af
0208   C5                           PUSH       bc
0209   D5                           PUSH       de
020A   E5                           PUSH       hl
020B   DD E5                        PUSH       ix
020D   FD E5                        PUSH       iy
020F   08                           EX       af,af'
0210   D9                           EXX
0211   F5                           PUSH       af
0212   C5                           PUSH       bc
0213   D5                           PUSH       de
0214   E5                           PUSH       hl
0215   ED 57                        LD       a,i
0217   F5                           PUSH       af
0218   AF                           XOR       a
0219   32 CC 08                     LD       (0x08cc),a
021C   32 CD 08                     LD       (0x08cd),a
021F   3E FF                        LD       a,0xff
0221   32 E0 08                     LD       (0x08e0),a
0224   C3 40 02                     JP       0x0240
0227   FF                           DB          0xFF
0228   FF                           DB          0xFF
0229   FF                           DB          0xFF
022A   FF                           DB          0xFF
022B   FF                           DB          0xFF
022C   FF                           DB          0xFF
022D   FF                           DB          0xFF
022E   FF                           DB          0xFF
022F   FF                           DB          0xFF
0230   FF                           DB          0xFF
0231   FF                           DB          0xFF
0232   FF                           DB          0xFF
0233   FF                           DB          0xFF
0234   FF                           DB          0xFF
0235   FF                           DB          0xFF
0236   FF                           DB          0xFF
0237   FF                           DB          0xFF
0238   FF                           DB          0xFF
0239   FF                           DB          0xFF
023A   FF                           DB          0xFF
023B   FF                           DB          0xFF
023C   FF                           DB          0xFF
023D   FF                           DB          0xFF
023E   FF                           DB          0xFF
023F   FF                           DB          0xFF
0240   31 C0 08                     LD       sp,0x08c0
0243   AF                           XOR       a
0244   D3 01                        OUT       (0x01),a
0246   D3 02                        OUT       (0x02),a
0248   21 B0 00                     LD       hl,0x00b0
024B   11 D8 08                     LD       de,0x08d8
024E   01 05 00                     LD       bc,0x0005
0251   ED B0                        LDIR
0253   CD 70 02                     CALL       0x0270
0256   3E 08                        LD       a,0x08
0258   CD 70 01                     CALL       0x0170
025B   3E 0F                        LD       a,0x0f
025D   CD 70 01                     CALL       0x0170
0260   3E 01                        LD       a,0x01
0262   32 DF 08                     LD       (0x08df),a
0265   CD A0 02                     CALL       0x02a0
0268   CD 60 03                     CALL       0x0360
026B   18 F8                        JR       0x0265
026D   FF                           DB          0xFF
026E   FF                           DB          0xFF
026F   FF                           DB          0xFF
0270   F5                           PUSH       af
0271   E5                           PUSH       hl
0272   C5                           PUSH       bc
0273   CD 89 02                     CALL       0x0289
0276   E6 F0                        AND       0xf0
0278   0F                           RRCA
0279   0F                           RRCA
027A   0F                           RRCA
027B   0F                           RRCA
027C   32 DC 08                     LD       (0x08dc),a
027F   0A                           LD       a,(bc)
0280   E6 0F                        AND       0x0f
0282   32 DD 08                     LD       (0x08dd),a
0285   C1                           POP       bc
0286   E1                           POP       hl
0287   F1                           POP       af
0288   C9                           RET
0289   21 D8 08                     LD       hl,0x08d8
028C   7E                           LD       a,(hl)
028D   07                           RLCA
028E   07                           RLCA
028F   07                           RLCA
0290   07                           RLCA
0291   23                           INC       hl
0292   86                           ADD       a,(hl)
0293   47                           LD       b,a
0294   23                           INC       hl
0295   7E                           LD       a,(hl)
0296   07                           RLCA
0297   07                           RLCA
0298   07                           RLCA
0299   07                           RLCA
029A   23                           INC       hl
029B   86                           ADD       a,(hl)
029C   4F                           LD       c,a
029D   0A                           LD       a,(bc)
029E   C9                           RET
029F   FF                           DB          0xFF
02A0   F5                           PUSH       af
02A1   E5                           PUSH       hl
02A2   D5                           PUSH       de
02A3   C5                           PUSH       bc
02A4   11 D8 08                     LD       de,0x08d8
02A7   AF                           XOR       a
02A8   D3 01                        OUT       (0x01),a
02AA   CD 50 03                     CALL       0x0350
02AD   CB 4E                        BIT       1,(hl)
02AF   28 02                        JR       z,0x02b3
02B1   CB E7                        SET       4,a
02B3   D3 02                        OUT       (0x02),a
02B5   3E 20                        LD       a,0x20
02B7   D3 01                        OUT       (0x01),a
02B9   06 20                        LD       b,0x20
02BB   10 FE                        DJNZ       0x02bb
02BD   AF                           XOR       a
02BE   D3 01                        OUT       (0x01),a
02C0   CD 50 03                     CALL       0x0350
02C3   CB 4E                        BIT       1,(hl)
02C5   28 02                        JR       z,0x02c9
02C7   CB E7                        SET       4,a
02C9   D3 02                        OUT       (0x02),a
02CB   3E 10                        LD       a,0x10
02CD   D3 01                        OUT       (0x01),a
02CF   06 20                        LD       b,0x20
02D1   10 FE                        DJNZ       0x02d1
02D3   AF                           XOR       a
02D4   D3 01                        OUT       (0x01),a
02D6   CD 50 03                     CALL       0x0350
02D9   CB 4E                        BIT       1,(hl)
02DB   28 02                        JR       z,0x02df
02DD   CB E7                        SET       4,a
02DF   D3 02                        OUT       (0x02),a
02E1   3E 08                        LD       a,0x08
02E3   D3 01                        OUT       (0x01),a
02E5   06 20                        LD       b,0x20
02E7   10 FE                        DJNZ       0x02e7
02E9   AF                           XOR       a
02EA   D3 01                        OUT       (0x01),a
02EC   CD 50 03                     CALL       0x0350
02EF   CB 4E                        BIT       1,(hl)
02F1   28 02                        JR       z,0x02f5
02F3   CB E7                        SET       4,a
02F5   D3 02                        OUT       (0x02),a
02F7   3E 04                        LD       a,0x04
02F9   D3 01                        OUT       (0x01),a
02FB   06 20                        LD       b,0x20
02FD   10 FE                        DJNZ       0x02fd
02FF   AF                           XOR       a
0300   D3 01                        OUT       (0x01),a
0302   00                           NOP
0303   C3 18 03                     JP       0x0318
0306   FF                           DB          0xFF
0307   FF                           DB          0xFF
0308   FF                           DB          0xFF
0309   FF                           DB          0xFF
030A   FF                           DB          0xFF
030B   FF                           DB          0xFF
030C   CD 89 02                     CALL       0x0289
030F   C5                           PUSH       bc
0310   E1                           POP       hl
0311   31 C0 08                     LD       sp,0x08c0
0314   E9                           JP       (hl)
0315   FF                           DB          0xFF
0316   FF                           DB          0xFF
0317   FF                           DB          0xFF
0318   CD 50 03                     CALL       0x0350
031B   CB 46                        BIT       0,(hl)
031D   28 02                        JR       z,0x0321
031F   CB E7                        SET       4,a
0321   D3 02                        OUT       (0x02),a
0323   3E 02                        LD       a,0x02
0325   D3 01                        OUT       (0x01),a
0327   06 20                        LD       b,0x20
0329   10 FE                        DJNZ       0x0329
032B   AF                           XOR       a
032C   D3 01                        OUT       (0x01),a
032E   CD 50 03                     CALL       0x0350
0331   CB 46                        BIT       0,(hl)
0333   28 02                        JR       z,0x0337
0335   CB E7                        SET       4,a
0337   D3 02                        OUT       (0x02),a
0339   3E 01                        LD       a,0x01
033B   D3 01                        OUT       (0x01),a
033D   06 20                        LD       b,0x20
033F   10 FE                        DJNZ       0x033f
0341   AF                           XOR       a
0342   D3 01                        OUT       (0x01),a
0344   C1                           POP       bc
0345   D1                           POP       de
0346   E1                           POP       hl
0347   F1                           POP       af
0348   C9                           RET
0349   FF                           DB          0xFF
034A   FF                           DB          0xFF
034B   FF                           DB          0xFF
034C   FF                           DB          0xFF
034D   FF                           DB          0xFF
034E   FF                           DB          0xFF
034F   FF                           DB          0xFF
0350   21 80 00                     LD       hl,0x0080
0353   1A                           LD       a,(de)
0354   85                           ADD       a,l
0355   6F                           LD       l,a
0356   7E                           LD       a,(hl)
0357   13                           INC       de
0358   21 DF 08                     LD       hl,0x08df
035B   C9                           RET
035C   FF                           DB          0xFF
035D   FF                           DB          0xFF
035E   FF                           DB          0xFF
035F   FF                           DB          0xFF
0360   F5                           PUSH       af
0361   E5                           PUSH       hl
0362   21 E0 08                     LD       hl,0x08e0
0365   3E FF                        LD       a,0xff
0367   BE                           CP       (hl)
0368   28 0E                        JR       z,0x0378
036A   7E                           LD       a,(hl)
036B   E6 1F                        AND       0x1f
036D   CB 6E                        BIT       5,(hl)
036F   20 02                        JR       nz,0x0373
0371   C6 14                        ADD       a,0x14
0373   C3 A8 03                     JP       0x03a8
0376   FF                           DB          0xFF
0377   FF                           DB          0xFF
0378   E1                           POP       hl
0379   F1                           POP       af
037A   C9                           RET
037B   FF                           DB          0xFF
037C   FF                           DB          0xFF
037D   E1                           POP       hl
037E   F1                           POP       af
037F   C9                           RET
0380   FF                           DB          0xFF
0381   FF                           DB          0xFF
0382   FF                           DB          0xFF
0383   FF                           DB          0xFF
0384   CD 89 02                     CALL       0x0289
0387   C5                           PUSH       bc
0388   DD E1                        POP       ix
038A   DD 23                        INC       ix
038C   DD E5                        PUSH       ix
038E   E1                           POP       hl
038F   7C                           LD       a,h
0390   FE 40                        CP       0x40
0392   28 08                        JR       z,0x039c
0394   DD 7E 00                     LD       a,(ix+0)
0397   DD 77 FF                     LD       (ix-1),a
039A   18 EE                        JR       0x038a
039C   3E 00                        LD       a,0x00
039E   32 FF 3F                     LD       (0x3fff),a
03A1   CD 70 02                     CALL       0x0270
03A4   C3 78 03                     JP       0x0378
03A7   FF                           DB          0xFF
03A8   C6 01                        ADD       a,0x01
03AA   CD 70 01                     CALL       0x0170
03AD   C3 21 04                     JP       0x0421
03B0   CD 89 02                     CALL       0x0289
03B3   0B                           DEC       bc
03B4   DD 21 FE 3F                  LD       ix,0x3ffe
03B8   DD 7E 00                     LD       a,(ix+0)
03BB   DD 77 01                     LD       (ix+1),a
03BE   DD 2B                        DEC       ix
03C0   DD E5                        PUSH       ix
03C2   E1                           POP       hl
03C3   79                           LD       a,c
03C4   BD                           CP       l
03C5   20 F1                        JR       nz,0x03b8
03C7   78                           LD       a,b
03C8   BC                           CP       h
03C9   20 ED                        JR       nz,0x03b8
03CB   DD 36 01 00                  LD       (ix+1),0x00
03CF   CD 70 02                     CALL       0x0270
03D2   C3 78 03                     JP       0x0378
03D5   FF                           DB          0xFF
03D6   FF                           DB          0xFF
03D7   FF                           DB          0xFF
03D8   E5                           PUSH       hl
03D9   F5                           PUSH       af
03DA   DD E5                        PUSH       ix
03DC   C5                           PUSH       bc
03DD   AF                           XOR       a
03DE   32 DF 08                     LD       (0x08df),a
03E1   06 06                        LD       b,0x06
03E3   21 D8 08                     LD       hl,0x08d8
03E6   3E 29                        LD       a,0x29
03E8   77                           LD       (hl),a
03E9   23                           INC       hl
03EA   10 FC                        DJNZ       0x03e8
03EC   2A D0 08                     LD       hl,(0x08d0)
03EF   7E                           LD       a,(hl)
03F0   FE FF                        CP       0xff
03F2   20 06                        JR       nz,0x03fa
03F4   C1                           POP       bc
03F5   DD E1                        POP       ix
03F7   F1                           POP       af
03F8   E1                           POP       hl
03F9   C9                           RET
03FA   FE FE                        CP       0xfe
03FC   28 EE                        JR       z,0x03ec
03FE   DD 21 D8 08                  LD       ix,0x08d8
0402   06 05                        LD       b,0x05
0404   DD 7E 01                     LD       a,(ix+1)
0407   DD 77 00                     LD       (ix+0),a
040A   DD 23                        INC       ix
040C   10 F6                        DJNZ       0x0404
040E   7E                           LD       a,(hl)
040F   32 DD 08                     LD       (0x08dd),a
0412   23                           INC       hl
0413   06 40                        LD       b,0x40
0415   CD A0 02                     CALL       0x02a0
0418   10 FB                        DJNZ       0x0415
041A   18 D3                        JR       0x03ef
041C   FF                           DB          0xFF
041D   FF                           DB          0xFF
041E   FF                           DB          0xFF
041F   FF                           DB          0xFF
0420   FF                           DB          0xFF
0421   D6 01                        SUB       0x01
0423   36 FF                        LD       (hl),0xff
0425   CB 67                        BIT       4,a
0427   C2 C0 04                     JP       nz,0x04c0
042A   CB 6F                        BIT       5,a
042C   C2 C0 04                     JP       nz,0x04c0
042F   21 DF 08                     LD       hl,0x08df
0432   CB 46                        BIT       0,(hl)
0434   CA 55 04                     JP       z,0x0455
0437   57                           LD       d,a
0438   CD 89 02                     CALL       0x0289
043B   21 DF 08                     LD       hl,0x08df
043E   CB 5E                        BIT       3,(hl)
0440   20 03                        JR       nz,0x0445
0442   AF                           XOR       a
0443   CB DE                        SET       3,(hl)
0445   07                           RLCA
0446   07                           RLCA
0447   07                           RLCA
0448   07                           RLCA
0449   E6 F0                        AND       0xf0
044B   82                           ADD       a,d
044C   02                           LD       (bc),a
044D   CD 70 02                     CALL       0x0270
0450   C3 7D 03                     JP       0x037d
0453   FF                           DB          0xFF
0454   FF                           DB          0xFF
0455   57                           LD       d,a
0456   21 DF 08                     LD       hl,0x08df
0459   CB 9E                        RES       3,(hl)
045B   CB 66                        BIT       4,(hl)
045D   20 08                        JR       nz,0x0467
045F   01 00 00                     LD       bc,0x0000
0462   CD 90 04                     CALL       0x0490
0465   CB E6                        SET       4,(hl)
0467   CD 89 02                     CALL       0x0289
046A   78                           LD       a,b
046B   07                           RLCA
046C   07                           RLCA
046D   07                           RLCA
046E   07                           RLCA
046F   E6 F0                        AND       0xf0
0471   5F                           LD       e,a
0472   79                           LD       a,c
0473   07                           RLCA
0474   07                           RLCA
0475   07                           RLCA
0476   07                           RLCA
0477   E6 0F                        AND       0x0f
0479   83                           ADD       a,e
047A   47                           LD       b,a
047B   79                           LD       a,c
047C   07                           RLCA
047D   07                           RLCA
047E   07                           RLCA
047F   07                           RLCA
0480   E6 F0                        AND       0xf0
0482   82                           ADD       a,d
0483   4F                           LD       c,a
0484   CD 90 04                     CALL       0x0490
0487   CD 70 02                     CALL       0x0270
048A   C3 7D 03                     JP       0x037d
048D   FF                           DB          0xFF
048E   FF                           DB          0xFF
048F   FF                           DB          0xFF
0490   F5                           PUSH       af
0491   E5                           PUSH       hl
0492   21 D8 08                     LD       hl,0x08d8
0495   78                           LD       a,b
0496   E6 F0                        AND       0xf0
0498   07                           RLCA
0499   07                           RLCA
049A   07                           RLCA
049B   07                           RLCA
049C   77                           LD       (hl),a
049D   23                           INC       hl
049E   78                           LD       a,b
049F   E6 0F                        AND       0x0f
04A1   77                           LD       (hl),a
04A2   23                           INC       hl
04A3   79                           LD       a,c
04A4   E6 F0                        AND       0xf0
04A6   07                           RLCA
04A7   07                           RLCA
04A8   07                           RLCA
04A9   07                           RLCA
04AA   77                           LD       (hl),a
04AB   23                           INC       hl
04AC   79                           LD       a,c
04AD   E6 0F                        AND       0x0f
04AF   77                           LD       (hl),a
04B0   E1                           POP       hl
04B1   F1                           POP       af
04B2   C9                           RET
04B3   FF                           DB          0xFF
04B4   FF                           DB          0xFF
04B5   FF                           DB          0xFF
04B6   FF                           DB          0xFF
04B7   FF                           DB          0xFF
04B8   FF                           DB          0xFF
04B9   FF                           DB          0xFF
04BA   FF                           DB          0xFF
04BB   FF                           DB          0xFF
04BC   FF                           DB          0xFF
04BD   FF                           DB          0xFF
04BE   FF                           DB          0xFF
04BF   FF                           DB          0xFF
04C0   21 DF 08                     LD       hl,0x08df
04C3   CB 9E                        RES       3,(hl)
04C5   CB A6                        RES       4,(hl)
04C7   FE 10                        CP       0x10
04C9   CA E0 00                     JP       z,0x00e0
04CC   FE 11                        CP       0x11
04CE   CA E6 00                     JP       z,0x00e6
04D1   FE 12                        CP       0x12
04D3   CA 0C 03                     JP       z,0x030c
04D6   FE 13                        CP       0x13
04D8   CA C0 01                     JP       z,0x01c0
04DB   FE 14                        CP       0x14
04DD   CA 50 05                     JP       z,0x0550
04E0   FE 15                        CP       0x15
04E2   CA FF FF                     JP       z,0xffff
04E5   FE 16                        CP       0x16
04E7   CA FF FF                     JP       z,0xffff
04EA   FE 17                        CP       0x17
04EC   CA F2 01                     JP       z,0x01f2
04EF   FE 18                        CP       0x18
04F1   CA 70 05                     JP       z,0x0570
04F4   FE 19                        CP       0x19
04F6   CA FF FF                     JP       z,0xffff
04F9   FE 1A                        CP       0x1a
04FB   CA FF FF                     JP       z,0xffff
04FE   FE 1B                        CP       0x1b
0500   CA FF FF                     JP       z,0xffff
0503   FE 1C                        CP       0x1c
0505   CA 60 06                     JP       z,0x0660
0508   FE 1D                        CP       0x1d
050A   CA FF FF                     JP       z,0xffff
050D   FE 1E                        CP       0x1e
050F   CA FF FF                     JP       z,0xffff
0512   FE 1F                        CP       0x1f
0514   CA FF FF                     JP       z,0xffff
0517   FE 20                        CP       0x20
0519   CA FF FF                     JP       z,0xffff
051C   FE 21                        CP       0x21
051E   CA FF FF                     JP       z,0xffff
0521   FE 22                        CP       0x22
0523   CA FF FF                     JP       z,0xffff
0526   FE 23                        CP       0x23
0528   CA FF FF                     JP       z,0xffff
052B   FE 24                        CP       0x24
052D   CA B0 03                     JP       z,0x03b0
0530   FE 25                        CP       0x25
0532   CA 84 03                     JP       z,0x0384
0535   FE 26                        CP       0x26
0537   CA FF FF                     JP       z,0xffff
053A   FE 27                        CP       0x27
053C   CA E4 01                     JP       z,0x01e4
053F   C3 78 03                     JP       0x0378
0542   FF                           DB          0xFF
0543   FF                           DB          0xFF
0544   FF                           DB          0xFF
0545   FF                           DB          0xFF
0546   FF                           DB          0xFF
0547   FF                           DB          0xFF
0548   FF                           DB          0xFF
0549   FF                           DB          0xFF
054A   FF                           DB          0xFF
054B   FF                           DB          0xFF
054C   FF                           DB          0xFF
054D   FF                           DB          0xFF
054E   FF                           DB          0xFF
054F   FF                           DB          0xFF
0550   CD 89 02                     CALL       0x0289
0553   60                           LD       h,b
0554   69                           LD       l,c
0555   3A E1 08                     LD       a,(0x08e1)
0558   23                           INC       hl
0559   BE                           CP       (hl)
055A   20 FC                        JR       nz,0x0558
055C   44                           LD       b,h
055D   4D                           LD       c,l
055E   CD 90 04                     CALL       0x0490
0561   C3 53 02                     JP       0x0253
0564   FF                           DB          0xFF
0565   FF                           DB          0xFF
0566   FF                           DB          0xFF
0567   FF                           DB          0xFF
0568   FF                           DB          0xFF
0569   FF                           DB          0xFF
056A   FF                           DB          0xFF
056B   FF                           DB          0xFF
056C   FF                           DB          0xFF
056D   FF                           DB          0xFF
056E   FF                           DB          0xFF
056F   FF                           DB          0xFF
0570   FF                           DB          0xFF
0571   FF                           DB          0xFF
0572   FF                           DB          0xFF
0573   FF                           DB          0xFF
0574   FF                           DB          0xFF
0575   FF                           DB          0xFF
0576   FF                           DB          0xFF
0577   FF                           DB          0xFF
0578   FF                           DB          0xFF
0579   FF                           DB          0xFF
057A   FF                           DB          0xFF
057B   FF                           DB          0xFF
057C   FF                           DB          0xFF
057D   FF                           DB          0xFF
057E   FF                           DB          0xFF
057F   FF                           DB          0xFF
0580   FF                           DB          0xFF
0581   FF                           DB          0xFF
0582   FF                           DB          0xFF
0583   FF                           DB          0xFF
0584   FF                           DB          0xFF
0585   FF                           DB          0xFF
0586   FF                           DB          0xFF
0587   FF                           DB          0xFF
0588   FF                           DB          0xFF
0589   FF                           DB          0xFF
058A   FF                           DB          0xFF
058B   FF                           DB          0xFF
058C   FF                           DB          0xFF
058D   FF                           DB          0xFF
058E   FF                           DB          0xFF
058F   FF                           DB          0xFF
0590   FF                           DB          0xFF
0591   FF                           DB          0xFF
0592   FF                           DB          0xFF
0593   FF                           DB          0xFF
0594   FF                           DB          0xFF
0595   FF                           DB          0xFF
0596   FF                           DB          0xFF
0597   FF                           DB          0xFF
0598   FF                           DB          0xFF
0599   FF                           DB          0xFF
059A   FF                           DB          0xFF
059B   FF                           DB          0xFF
059C   FF                           DB          0xFF
059D   FF                           DB          0xFF
059E   FF                           DB          0xFF
059F   FF                           DB          0xFF
05A0   FF                           DB          0xFF
05A1   FF                           DB          0xFF
05A2   FF                           DB          0xFF
05A3   FF                           DB          0xFF
05A4   FF                           DB          0xFF
05A5   FF                           DB          0xFF
05A6   FF                           DB          0xFF
05A7   FF                           DB          0xFF
05A8   FF                           DB          0xFF
05A9   FF                           DB          0xFF
05AA   FF                           DB          0xFF
05AB   FF                           DB          0xFF
05AC   FF                           DB          0xFF
05AD   FF                           DB          0xFF
05AE   FF                           DB          0xFF
05AF   FF                           DB          0xFF
05B0   FF                           DB          0xFF
05B1   FF                           DB          0xFF
05B2   FF                           DB          0xFF
05B3   FF                           DB          0xFF
05B4   FF                           DB          0xFF
05B5   FF                           DB          0xFF
05B6   FF                           DB          0xFF
05B7   FF                           DB          0xFF
05B8   FF                           DB          0xFF
05B9   FF                           DB          0xFF
05BA   FF                           DB          0xFF
05BB   FF                           DB          0xFF
05BC   FF                           DB          0xFF
05BD   FF                           DB          0xFF
05BE   FF                           DB          0xFF
05BF   FF                           DB          0xFF
05C0   FF                           DB          0xFF
05C1   FF                           DB          0xFF
05C2   FF                           DB          0xFF
05C3   FF                           DB          0xFF
05C4   FF                           DB          0xFF
05C5   FF                           DB          0xFF
05C6   FF                           DB          0xFF
05C7   FF                           DB          0xFF
05C8   FF                           DB          0xFF
05C9   FF                           DB          0xFF
05CA   FF                           DB          0xFF
05CB   FF                           DB          0xFF
05CC   FF                           DB          0xFF
05CD   FF                           DB          0xFF
05CE   FF                           DB          0xFF
05CF   FF                           DB          0xFF
05D0   FF                           DB          0xFF
05D1   FF                           DB          0xFF
05D2   FF                           DB          0xFF
05D3   FF                           DB          0xFF
05D4   FF                           DB          0xFF
05D5   FF                           DB          0xFF
05D6   FF                           DB          0xFF
05D7   FF                           DB          0xFF
05D8   FF                           DB          0xFF
05D9   FF                           DB          0xFF
05DA   FF                           DB          0xFF
05DB   FF                           DB          0xFF
05DC   FF                           DB          0xFF
05DD   FF                           DB          0xFF
05DE   FF                           DB          0xFF
05DF   FF                           DB          0xFF
05E0   FF                           DB          0xFF
05E1   FF                           DB          0xFF
05E2   FF                           DB          0xFF
05E3   FF                           DB          0xFF
05E4   FF                           DB          0xFF
05E5   FF                           DB          0xFF
05E6   FF                           DB          0xFF
05E7   FF                           DB          0xFF
05E8   FF                           DB          0xFF
05E9   FF                           DB          0xFF
05EA   FF                           DB          0xFF
05EB   FF                           DB          0xFF
05EC   FF                           DB          0xFF
05ED   FF                           DB          0xFF
05EE   FF                           DB          0xFF
05EF   FF                           DB          0xFF
05F0   FF                           DB          0xFF
05F1   FF                           DB          0xFF
05F2   FF                           DB          0xFF
05F3   FF                           DB          0xFF
05F4   FF                           DB          0xFF
05F5   FF                           DB          0xFF
05F6   FF                           DB          0xFF
05F7   FF                           DB          0xFF
05F8   FF                           DB          0xFF
05F9   FF                           DB          0xFF
05FA   FF                           DB          0xFF
05FB   FF                           DB          0xFF
05FC   FF                           DB          0xFF
05FD   FF                           DB          0xFF
05FE   FF                           DB          0xFF
05FF   FF                           DB          0xFF
0600   FF                           DB          0xFF
0601   FF                           DB          0xFF
0602   FF                           DB          0xFF
0603   FF                           DB          0xFF
0604   FF                           DB          0xFF
0605   FF                           DB          0xFF
0606   FF                           DB          0xFF
0607   FF                           DB          0xFF
0608   FF                           DB          0xFF
0609   FF                           DB          0xFF
060A   FF                           DB          0xFF
060B   FF                           DB          0xFF
060C   FF                           DB          0xFF
060D   FF                           DB          0xFF
060E   FF                           DB          0xFF
060F   FF                           DB          0xFF
0610   FF                           DB          0xFF
0611   FF                           DB          0xFF
0612   FF                           DB          0xFF
0613   FF                           DB          0xFF
0614   FF                           DB          0xFF
0615   FF                           DB          0xFF
0616   FF                           DB          0xFF
0617   FF                           DB          0xFF
0618   FF                           DB          0xFF
0619   FF                           DB          0xFF
061A   FF                           DB          0xFF
061B   FF                           DB          0xFF
061C   FF                           DB          0xFF
061D   FF                           DB          0xFF
061E   FF                           DB          0xFF
061F   FF                           DB          0xFF
0620   FF                           DB          0xFF
0621   FF                           DB          0xFF
0622   FF                           DB          0xFF
0623   FF                           DB          0xFF
0624   FF                           DB          0xFF
0625   FF                           DB          0xFF
0626   FF                           DB          0xFF
0627   FF                           DB          0xFF
0628   FF                           DB          0xFF
0629   FF                           DB          0xFF
062A   FF                           DB          0xFF
062B   FF                           DB          0xFF
062C   FF                           DB          0xFF
062D   FF                           DB          0xFF
062E   FF                           DB          0xFF
062F   FF                           DB          0xFF
0630   FF                           DB          0xFF
0631   FF                           DB          0xFF
0632   FF                           DB          0xFF
0633   FF                           DB          0xFF
0634   FF                           DB          0xFF
0635   FF                           DB          0xFF
0636   FF                           DB          0xFF
0637   FF                           DB          0xFF
0638   FF                           DB          0xFF
0639   FF                           DB          0xFF
063A   FF                           DB          0xFF
063B   FF                           DB          0xFF
063C   FF                           DB          0xFF
063D   FF                           DB          0xFF
063E   FF                           DB          0xFF
063F   FF                           DB          0xFF
0640   FF                           DB          0xFF
0641   FF                           DB          0xFF
0642   FF                           DB          0xFF
0643   FF                           DB          0xFF
0644   FF                           DB          0xFF
0645   FF                           DB          0xFF
0646   FF                           DB          0xFF
0647   FF                           DB          0xFF
0648   FF                           DB          0xFF
0649   FF                           DB          0xFF
064A   FF                           DB          0xFF
064B   FF                           DB          0xFF
064C   FF                           DB          0xFF
064D   FF                           DB          0xFF
064E   FF                           DB          0xFF
064F   FF                           DB          0xFF
0650   FF                           DB          0xFF
0651   FF                           DB          0xFF
0652   FF                           DB          0xFF
0653   FF                           DB          0xFF
0654   FF                           DB          0xFF
0655   FF                           DB          0xFF
0656   FF                           DB          0xFF
0657   FF                           DB          0xFF
0658   FF                           DB          0xFF
0659   FF                           DB          0xFF
065A   FF                           DB          0xFF
065B   FF                           DB          0xFF
065C   FF                           DB          0xFF
065D   FF                           DB          0xFF
065E   FF                           DB          0xFF
065F   FF                           DB          0xFF
0660   FF                           DB          0xFF
0661   FF                           DB          0xFF
0662   FF                           DB          0xFF
0663   FF                           DB          0xFF
0664   FF                           DB          0xFF
0665   FF                           DB          0xFF
0666   FF                           DB          0xFF
0667   FF                           DB          0xFF
0668   FF                           DB          0xFF
0669   FF                           DB          0xFF
066A   FF                           DB          0xFF
066B   FF                           DB          0xFF
066C   FF                           DB          0xFF
066D   FF                           DB          0xFF
066E   FF                           DB          0xFF
066F   FF                           DB          0xFF
0670   FF                           DB          0xFF
0671   FF                           DB          0xFF
0672   FF                           DB          0xFF
0673   FF                           DB          0xFF
0674   FF                           DB          0xFF
0675   FF                           DB          0xFF
0676   FF                           DB          0xFF
0677   FF                           DB          0xFF
0678   FF                           DB          0xFF
0679   FF                           DB          0xFF
067A   FF                           DB          0xFF
067B   FF                           DB          0xFF
067C   FF                           DB          0xFF
067D   FF                           DB          0xFF
067E   FF                           DB          0xFF
067F   FF                           DB          0xFF
0680   FF                           DB          0xFF
0681   FF                           DB          0xFF
0682   FF                           DB          0xFF
0683   FF                           DB          0xFF
0684   FF                           DB          0xFF
0685   FF                           DB          0xFF
0686   FF                           DB          0xFF
0687   FF                           DB          0xFF
0688   FF                           DB          0xFF
0689   FF                           DB          0xFF
068A   FF                           DB          0xFF
068B   FF                           DB          0xFF
068C   FF                           DB          0xFF
068D   FF                           DB          0xFF
068E   FF                           DB          0xFF
068F   FF                           DB          0xFF
0690   FF                           DB          0xFF
0691   FF                           DB          0xFF
0692   FF                           DB          0xFF
0693   FF                           DB          0xFF
0694   FF                           DB          0xFF
0695   FF                           DB          0xFF
0696   FF                           DB          0xFF
0697   FF                           DB          0xFF
0698   FF                           DB          0xFF
0699   FF                           DB          0xFF
069A   FF                           DB          0xFF
069B   FF                           DB          0xFF
069C   FF                           DB          0xFF
069D   FF                           DB          0xFF
069E   FF                           DB          0xFF
069F   FF                           DB          0xFF
06A0   FF                           DB          0xFF
06A1   FF                           DB          0xFF
06A2   FF                           DB          0xFF
06A3   FF                           DB          0xFF
06A4   FF                           DB          0xFF
06A5   FF                           DB          0xFF
06A6   FF                           DB          0xFF
06A7   FF                           DB          0xFF
06A8   FF                           DB          0xFF
06A9   FF                           DB          0xFF
06AA   FF                           DB          0xFF
06AB   FF                           DB          0xFF
06AC   FF                           DB          0xFF
06AD   FF                           DB          0xFF
06AE   FF                           DB          0xFF
06AF   FF                           DB          0xFF
06B0   FF                           DB          0xFF
06B1   FF                           DB          0xFF
06B2   FF                           DB          0xFF
06B3   FF                           DB          0xFF
06B4   FF                           DB          0xFF
06B5   FF                           DB          0xFF
06B6   FF                           DB          0xFF
06B7   FF                           DB          0xFF
06B8   FF                           DB          0xFF
06B9   FF                           DB          0xFF
06BA   FF                           DB          0xFF
06BB   FF                           DB          0xFF
06BC   FF                           DB          0xFF
06BD   FF                           DB          0xFF
06BE   FF                           DB          0xFF
06BF   FF                           DB          0xFF
06C0   FF                           DB          0xFF
06C1   FF                           DB          0xFF
06C2   FF                           DB          0xFF
06C3   FF                           DB          0xFF
06C4   FF                           DB          0xFF
06C5   FF                           DB          0xFF
06C6   FF                           DB          0xFF
06C7   FF                           DB          0xFF
06C8   FF                           DB          0xFF
06C9   FF                           DB          0xFF
06CA   FF                           DB          0xFF
06CB   FF                           DB          0xFF
06CC   FF                           DB          0xFF
06CD   FF                           DB          0xFF
06CE   FF                           DB          0xFF
06CF   FF                           DB          0xFF
06D0   FF                           DB          0xFF
06D1   FF                           DB          0xFF
06D2   FF                           DB          0xFF
06D3   FF                           DB          0xFF
06D4   FF                           DB          0xFF
06D5   FF                           DB          0xFF
06D6   FF                           DB          0xFF
06D7   FF                           DB          0xFF
06D8   FF                           DB          0xFF
06D9   FF                           DB          0xFF
06DA   FF                           DB          0xFF
06DB   FF                           DB          0xFF
06DC   FF                           DB          0xFF
06DD   FF                           DB          0xFF
06DE   FF                           DB          0xFF
06DF   FF                           DB          0xFF
06E0   FF                           DB          0xFF
06E1   FF                           DB          0xFF
06E2   FF                           DB          0xFF
06E3   FF                           DB          0xFF
06E4   FF                           DB          0xFF
06E5   FF                           DB          0xFF
06E6   FF                           DB          0xFF
06E7   FF                           DB          0xFF
06E8   FF                           DB          0xFF
06E9   FF                           DB          0xFF
06EA   FF                           DB          0xFF
06EB   FF                           DB          0xFF
06EC   FF                           DB          0xFF
06ED   FF                           DB          0xFF
06EE   FF                           DB          0xFF
06EF   FF                           DB          0xFF
06F0   FF                           DB          0xFF
06F1   FF                           DB          0xFF
06F2   FF                           DB          0xFF
06F3   FF                           DB          0xFF
06F4   FF                           DB          0xFF
06F5   FF                           DB          0xFF
06F6   FF                           DB          0xFF
06F7   FF                           DB          0xFF
06F8   FF                           DB          0xFF
06F9   FF                           DB          0xFF
06FA   FF                           DB          0xFF
06FB   FF                           DB          0xFF
06FC   FF                           DB          0xFF
06FD   FF                           DB          0xFF
06FE   FF                           DB          0xFF
06FF   FF                           DB          0xFF
0700   FF                           DB          0xFF
0701   FF                           DB          0xFF
0702   FF                           DB          0xFF
0703   FF                           DB          0xFF
0704   FF                           DB          0xFF
0705   FF                           DB          0xFF
0706   FF                           DB          0xFF
0707   FF                           DB          0xFF
0708   FF                           DB          0xFF
0709   FF                           DB          0xFF
070A   FF                           DB          0xFF
070B   FF                           DB          0xFF
070C   FF                           DB          0xFF
070D   FF                           DB          0xFF
070E   FF                           DB          0xFF
070F   FF                           DB          0xFF
0710   FF                           DB          0xFF
0711   FF                           DB          0xFF
0712   FF                           DB          0xFF
0713   FF                           DB          0xFF
0714   FF                           DB          0xFF
0715   FF                           DB          0xFF
0716   FF                           DB          0xFF
0717   FF                           DB          0xFF
0718   FF                           DB          0xFF
0719   FF                           DB          0xFF
071A   FF                           DB          0xFF
071B   FF                           DB          0xFF
071C   FF                           DB          0xFF
071D   FF                           DB          0xFF
071E   FF                           DB          0xFF
071F   FF                           DB          0xFF
0720   FF                           DB          0xFF
0721   FF                           DB          0xFF
0722   FF                           DB          0xFF
0723   FF                           DB          0xFF
0724   FF                           DB          0xFF
0725   FF                           DB          0xFF
0726   FF                           DB          0xFF
0727   FF                           DB          0xFF
0728   FF                           DB          0xFF
0729   FF                           DB          0xFF
072A   FF                           DB          0xFF
072B   FF                           DB          0xFF
072C   FF                           DB          0xFF
072D   FF                           DB          0xFF
072E   FF                           DB          0xFF
072F   FF                           DB          0xFF
0730   FF                           DB          0xFF
0731   FF                           DB          0xFF
0732   FF                           DB          0xFF
0733   FF                           DB          0xFF
0734   FF                           DB          0xFF
0735   FF                           DB          0xFF
0736   FF                           DB          0xFF
0737   FF                           DB          0xFF
0738   FF                           DB          0xFF
0739   FF                           DB          0xFF
073A   FF                           DB          0xFF
073B   FF                           DB          0xFF
073C   FF                           DB          0xFF
073D   FF                           DB          0xFF
073E   FF                           DB          0xFF
073F   FF                           DB          0xFF
0740   FF                           DB          0xFF
0741   FF                           DB          0xFF
0742   FF                           DB          0xFF
0743   FF                           DB          0xFF
0744   FF                           DB          0xFF
0745   FF                           DB          0xFF
0746   FF                           DB          0xFF
0747   FF                           DB          0xFF
0748   FF                           DB          0xFF
0749   FF                           DB          0xFF
074A   FF                           DB          0xFF
074B   FF                           DB          0xFF
074C   FF                           DB          0xFF
074D   FF                           DB          0xFF
074E   FF                           DB          0xFF
074F   FF                           DB          0xFF
0750   FF                           DB          0xFF
0751   FF                           DB          0xFF
0752   FF                           DB          0xFF
0753   FF                           DB          0xFF
0754   FF                           DB          0xFF
0755   FF                           DB          0xFF
0756   FF                           DB          0xFF
0757   FF                           DB          0xFF
0758   FF                           DB          0xFF
0759   FF                           DB          0xFF
075A   FF                           DB          0xFF
075B   FF                           DB          0xFF
075C   FF                           DB          0xFF
075D   FF                           DB          0xFF
075E   FF                           DB          0xFF
075F   FF                           DB          0xFF
0760   FF                           DB          0xFF
0761   FF                           DB          0xFF
0762   FF                           DB          0xFF
0763   FF                           DB          0xFF
0764   FF                           DB          0xFF
0765   FF                           DB          0xFF
0766   FF                           DB          0xFF
0767   FF                           DB          0xFF
0768   FF                           DB          0xFF
0769   FF                           DB          0xFF
076A   FF                           DB          0xFF
076B   FF                           DB          0xFF
076C   FF                           DB          0xFF
076D   FF                           DB          0xFF
076E   FF                           DB          0xFF
076F   FF                           DB          0xFF
0770   FF                           DB          0xFF
0771   FF                           DB          0xFF
0772   FF                           DB          0xFF
0773   FF                           DB          0xFF
0774   FF                           DB          0xFF
0775   FF                           DB          0xFF
0776   FF                           DB          0xFF
0777   FF                           DB          0xFF
0778   FF                           DB          0xFF
0779   FF                           DB          0xFF
077A   FF                           DB          0xFF
077B   FF                           DB          0xFF
077C   FF                           DB          0xFF
077D   FF                           DB          0xFF
077E   FF                           DB          0xFF
077F   FF                           DB          0xFF
0780   FF                           DB          0xFF
0781   FF                           DB          0xFF
0782   FF                           DB          0xFF
0783   FF                           DB          0xFF
0784   FF                           DB          0xFF
0785   FF                           DB          0xFF
0786   FF                           DB          0xFF
0787   FF                           DB          0xFF
0788   FF                           DB          0xFF
0789   FF                           DB          0xFF
078A   FF                           DB          0xFF
078B   FF                           DB          0xFF
078C   FF                           DB          0xFF
078D   FF                           DB          0xFF
078E   FF                           DB          0xFF
078F   FF                           DB          0xFF
0790   FF                           DB          0xFF
0791   FF                           DB          0xFF
0792   FF                           DB          0xFF
0793   FF                           DB          0xFF
0794   FF                           DB          0xFF
0795   FF                           DB          0xFF
0796   FF                           DB          0xFF
0797   FF                           DB          0xFF
0798   FF                           DB          0xFF
0799   FF                           DB          0xFF
079A   FF                           DB          0xFF
079B   FF                           DB          0xFF
079C   FF                           DB          0xFF
079D   FF                           DB          0xFF
079E   FF                           DB          0xFF
079F   FF                           DB          0xFF
07A0   FF                           DB          0xFF
07A1   FF                           DB          0xFF
07A2   FF                           DB          0xFF
07A3   FF                           DB          0xFF
07A4   FF                           DB          0xFF
07A5   FF                           DB          0xFF
07A6   FF                           DB          0xFF
07A7   FF                           DB          0xFF
07A8   FF                           DB          0xFF
07A9   FF                           DB          0xFF
07AA   FF                           DB          0xFF
07AB   FF                           DB          0xFF
07AC   FF                           DB          0xFF
07AD   FF                           DB          0xFF
07AE   FF                           DB          0xFF
07AF   FF                           DB          0xFF
07B0   FF                           DB          0xFF
07B1   FF                           DB          0xFF
07B2   FF                           DB          0xFF
07B3   FF                           DB          0xFF
07B4   FF                           DB          0xFF
07B5   FF                           DB          0xFF
07B6   FF                           DB          0xFF
07B7   FF                           DB          0xFF
07B8   FF                           DB          0xFF
07B9   FF                           DB          0xFF
07BA   FF                           DB          0xFF
07BB   FF                           DB          0xFF
07BC   FF                           DB          0xFF
07BD   FF                           DB          0xFF
07BE   FF                           DB          0xFF
07BF   FF                           DB          0xFF
07C0   FF                           DB          0xFF
07C1   FF                           DB          0xFF
07C2   FF                           DB          0xFF
07C3   FF                           DB          0xFF
07C4   FF                           DB          0xFF
07C5   FF                           DB          0xFF
07C6   FF                           DB          0xFF
07C7   FF                           DB          0xFF
07C8   FF                           DB          0xFF
07C9   FF                           DB          0xFF
07CA   FF                           DB          0xFF
07CB   FF                           DB          0xFF
07CC   FF                           DB          0xFF
07CD   FF                           DB          0xFF
07CE   FF                           DB          0xFF
07CF   FF                           DB          0xFF
07D0   FF                           DB          0xFF
07D1   FF                           DB          0xFF
07D2   FF                           DB          0xFF
07D3   FF                           DB          0xFF
07D4   FF                           DB          0xFF
07D5   FF                           DB          0xFF
07D6   FF                           DB          0xFF
07D7   FF                           DB          0xFF
07D8   FF                           DB          0xFF
07D9   FF                           DB          0xFF
07DA   FF                           DB          0xFF
07DB   FF                           DB          0xFF
07DC   FF                           DB          0xFF
07DD   FF                           DB          0xFF
07DE   FF                           DB          0xFF
07DF   FF                           DB          0xFF
07E0   FF                           DB          0xFF
07E1   FF                           DB          0xFF
07E2   FF                           DB          0xFF
07E3   FF                           DB          0xFF
07E4   FF                           DB          0xFF
07E5   FF                           DB          0xFF
07E6   FF                           DB          0xFF
07E7   FF                           DB          0xFF
07E8   FF                           DB          0xFF
07E9   FF                           DB          0xFF
07EA   FF                           DB          0xFF
07EB   FF                           DB          0xFF
07EC   FF                           DB          0xFF
07ED   FF                           DB          0xFF
07EE   FF                           DB          0xFF
07EF   FF                           DB          0xFF
07F0   FF                           DB          0xFF
07F1   FF                           DB          0xFF
07F2   FF                           DB          0xFF
07F3   FF                           DB          0xFF
07F4   FF                           DB          0xFF
07F5   FF                           DB          0xFF
07F6   FF                           DB          0xFF
07F7   FF                           DB          0xFF
07F8   FF                           DB          0xFF
07F9   FF                           DB          0xFF
07FA   FF                           DB          0xFF
07FB   FF                           DB          0xFF
07FC   FF                           DB          0xFF
07FD   FF                           DB          0xFF
07FE   FF                           DB          0xFF
07FF   FF                           DB          0xFF