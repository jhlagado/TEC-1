0000   C3 00 02               JP   0x0200   
0003   FF                     RST   0x38   
0004   FF                     RST   0x38   
0005   FF                     RST   0x38   
0006   FF                     RST   0x38   
0007   FF                     RST   0x38   
0008   2A C0 08               LD   hl,(0x08c0)   
000B   E9                     JP   (hl)   
000C   FF                     RST   0x38   
000D   FF                     RST   0x38   
000E   FF                     RST   0x38   
000F   FF                     RST   0x38   
0010   2A C2 08               LD   hl,(0x08c2)   
0013   E9                     JP   (hl)   
0014   FF                     RST   0x38   
0015   FF                     RST   0x38   
0016   FF                     RST   0x38   
0017   FF                     RST   0x38   
0018   2A C4 08               LD   hl,(0x08c4)   
001B   E9                     JP   (hl)   
001C   FF                     RST   0x38   
001D   FF                     RST   0x38   
001E   FF                     RST   0x38   
001F   FF                     RST   0x38   
0020   2A C6 08               LD   hl,(0x08c6)   
0023   E9                     JP   (hl)   
0024   FF                     RST   0x38   
0025   FF                     RST   0x38   
0026   FF                     RST   0x38   
0027   FF                     RST   0x38   
0028   2A C8 08               LD   hl,(0x08c8)   
002B   E9                     JP   (hl)   
002C   FF                     RST   0x38   
002D   FF                     RST   0x38   
002E   FF                     RST   0x38   
002F   FF                     RST   0x38   
0030   2A CA 08               LD   hl,(0x08ca)   
0033   E9                     JP   (hl)   
0034   FF                     RST   0x38   
0035   FF                     RST   0x38   
0036   FF                     RST   0x38   
0037   FF                     RST   0x38   
0038   2A CC 08               LD   hl,(0x08cc)   
003B   E9                     JP   (hl)   
003C   FF                     RST   0x38   
003D   FF                     RST   0x38   
003E   FF                     RST   0x38   
003F   FF                     RST   0x38   
0040   FF                     RST   0x38   
0041   FF                     RST   0x38   
0042   FF                     RST   0x38   
0043   FF                     RST   0x38   
0044   FF                     RST   0x38   
0045   FF                     RST   0x38   
0046   FF                     RST   0x38   
0047   FF                     RST   0x38   
0048   FF                     RST   0x38   
0049   FF                     RST   0x38   
004A   FF                     RST   0x38   
004B   FF                     RST   0x38   
004C   FF                     RST   0x38   
004D   FF                     RST   0x38   
004E   FF                     RST   0x38   
004F   FF                     RST   0x38   
0050   FF                     RST   0x38   
0051   FF                     RST   0x38   
0052   FF                     RST   0x38   
0053   FF                     RST   0x38   
0054   FF                     RST   0x38   
0055   FF                     RST   0x38   
0056   FF                     RST   0x38   
0057   FF                     RST   0x38   
0058   FF                     RST   0x38   
0059   FF                     RST   0x38   
005A   FF                     RST   0x38   
005B   FF                     RST   0x38   
005C   FF                     RST   0x38   
005D   FF                     RST   0x38   
005E   FF                     RST   0x38   
005F   FF                     RST   0x38   
0060   FF                     RST   0x38   
0061   FF                     RST   0x38   
0062   FF                     RST   0x38   
0063   FF                     RST   0x38   
0064   FF                     RST   0x38   
0065   FF                     RST   0x38   
0066   F5                     PUSH   af   
0067   DB 00                  IN   a,(0x00)   
0069   32 E0 08               LD   (0x08e0),a   
006C   F1                     POP   af   
006D   ED 45                  RETN   
006F   FF                     RST   0x38   
0070   FF                     RST   0x38   
0071   FF                     RST   0x38   
0072   FF                     RST   0x38   
0073   FF                     RST   0x38   
0074   FF                     RST   0x38   
0075   FF                     RST   0x38   
0076   FF                     RST   0x38   
0077   FF                     RST   0x38   
0078   FF                     RST   0x38   
0079   FF                     RST   0x38   
007A   FF                     RST   0x38   
007B   FF                     RST   0x38   
007C   FF                     RST   0x38   
007D   FF                     RST   0x38   
007E   FF                     RST   0x38   
007F   FF                     RST   0x38   
0080   EB                     EX   de,hl   
0081   28 CD                  JR   z,0x0050   
0083   AD                     XOR   l   
0084   2E A7                  LD   l,0xa7   
0086   E7                     RST   0x20   
0087   29                     ADD   hl,hl   
0088   EF                     RST   0x28   
0089   2F                     CPL   
008A   6F                     LD   l,a   
008B   E6 C3                  AND   0xc3   
008D   EC C7 47               CALL   pe,0x47c7   
0090   E3                     EX   (sp),hl   
0091   66                     LD   h,(hl)   
0092   28 E8                  JR   z,0x007c   
0094   4E                     LD   c,(hl)   
0095   C2 2D 6B               JP   nz,0x6b2d   
0098   EB                     EX   de,hl   
0099   4F                     LD   c,a   
009A   2F                     CPL   
009B   4B                     LD   c,e   
009C   A7                     AND   a   
009D   46                     LD   b,(hl)   
009E   EA E0 AC               JP   pe,0xace0   
00A1   A4                     AND   h   
00A2   AE                     XOR   (hl)   
00A3   C9                     RET   
00A4   10 08                  DJNZ   0x00ae   
00A6   18 04                  JR   0x00ac   
00A8   2C                     INC   l   
00A9   00                     NOP   
00AA   FF                     RST   0x38   
00AB   FF                     RST   0x38   
00AC   FF                     RST   0x38   
00AD   FF                     RST   0x38   
00AE   FF                     RST   0x38   
00AF   FF                     RST   0x38   
00B0   00                     NOP   
00B1   09                     ADD   hl,bc   
00B2   00                     NOP   
00B3   00                     NOP   
00B4   FF                     RST   0x38   
00B5   FF                     RST   0x38   
00B6   FF                     RST   0x38   
00B7   FF                     RST   0x38   
00B8   FF                     RST   0x38   
00B9   FF                     RST   0x38   
00BA   FF                     RST   0x38   
00BB   FF                     RST   0x38   
00BC   F8                     RET   m   
00BD   FF                     RST   0x38   
00BE   00                     NOP   
00BF   00                     NOP   
00C0   1B                     DEC   de   
00C1   18 1E                  JR   0x00e1   
00C3   1D                     DEC   e   
00C4   12                     LD   (de),a   
00C5   17                     RLA   
00C6   0E 29                  LD   c,0x29   
00C8   0B                     DEC   bc   
00C9   22 29 17               LD   (0x1729),hl   
00CC   12                     LD   (de),a   
00CD   0C                     INC   c   
00CE   24                     INC   h   
00CF   29                     ADD   hl,hl   
00D0   29                     ADD   hl,hl   
00D1   29                     ADD   hl,hl   
00D2   29                     ADD   hl,hl   
00D3   29                     ADD   hl,hl   
00D4   FE 1C                  CP   0x1c   
00D6   1D                     DEC   e   
00D7   18 17                  JR   0x00f0   
00D9   0A                     LD   a,(bc)   
00DA   FF                     RST   0x38   
00DB   FF                     RST   0x38   
00DC   FF                     RST   0x38   
00DD   FF                     RST   0x38   
00DE   FF                     RST   0x38   
00DF   FF                     RST   0x38   
00E0   CD 89 02               CALL   0x0289   
00E3   03                     INC   bc   
00E4   18 04                  JR   0x00ea   
00E6   CD 89 02               CALL   0x0289   
00E9   0B                     DEC   bc   
00EA   CD 90 04               CALL   0x0490   
00ED   CD 70 02               CALL   0x0270   
00F0   21 DF 08               LD   hl,0x08df   
00F3   CB C6                  SET   0,(hl)   
00F5   CB 8E                  RES   1,(hl)   
00F7   C3 78 03               JP   0x0378   
00FA   FF                     RST   0x38   
00FB   FF                     RST   0x38   
00FC   FF                     RST   0x38   
00FD   FF                     RST   0x38   
00FE   FF                     RST   0x38   
00FF   FF                     RST   0x38   
0100   FD                     DB   0xfd   
0101   10 10                  DJNZ   0x0113   
0103   FD                     DB   0xfd   
0104   11 EF 12               LD   de,0x12ef   
0107   E1                     POP   hl   
0108   13                     INC   de   
0109   54                     LD   d,h   
010A   14                     INC   d   
010B   C9                     RET   
010C   10 BE                  DJNZ   0x00cc   
010E   10 B2                  DJNZ   0x00c2   
0110   10 A9                  DJNZ   0x00bb   
0112   19                     ADD   hl,de   
0113   9F                     SBC   a,a   
0114   1A                     LD   a,(de)   
0115   96                     SUB   (hl)   
0116   1C                     INC   e   
0117   80                     ADD   a,b   
0118   1E 86                  LD   e,0x86   
011A   20 7F                  JR   nz,0x019b   
011C   22 77 24               LD   (0x2477),hl   
011F   71                     LD   (hl),c   
0120   26 6A                  LD   h,0x6a   
0122   28 64                  JR   z,0x0188   
0124   2A 5F 2D               LD   hl,(0x2d5f)   
0127   59                     LD   e,c   
0128   2F                     CPL   
0129   54                     LD   d,h   
012A   32 50 35               LD   (0x3550),a   
012D   4B                     LD   c,e   
012E   38 47                  JR   c,0x0177   
0130   3C                     INC   a   
0131   43                     LD   b,e   
0132   3F                     CCF   
0133   3F                     CCF   
0134   43                     LD   b,e   
0135   3C                     INC   a   
0136   47                     LD   b,a   
0137   38 4B                  JR   c,0x0184   
0139   35                     DEC   (hl)   
013A   50                     LD   d,b   
013B   32 54 2F               LD   (0x2f54),a   
013E   59                     LD   e,c   
013F   2D                     DEC   l   
0140   5F                     LD   e,a   
0141   2A 64 28               LD   hl,(0x2864)   
0144   6A                     LD   l,d   
0145   26 71                  LD   h,0x71   
0147   24                     INC   h   
0148   77                     LD   (hl),a   
0149   22 7F 20               LD   (0x207f),hl   
014C   86                     ADD   a,(hl)   
014D   1E 8E                  LD   e,0x8e   
014F   1C                     INC   e   
0150   96                     SUB   (hl)   
0151   1A                     LD   a,(de)   
0152   94                     SUB   h   
0153   19                     ADD   hl,de   
0154   A9                     XOR   c   
0155   18 B3                  JR   0x010a   
0157   16 BE                  LD   d,0xbe   
0159   15                     DEC   d   
015A   C9                     RET   
015B   14                     INC   d   
015C   D5                     PUSH   de   
015D   13                     INC   de   
015E   E1                     POP   hl   
015F   12                     LD   (de),a   
0160   EF                     RST   0x28   
0161   11 FD 10               LD   de,0x10fd   
0164   FF                     RST   0x38   
0165   FF                     RST   0x38   
0166   FF                     RST   0x38   
0167   FF                     RST   0x38   
0168   FF                     RST   0x38   
0169   FF                     RST   0x38   
016A   FF                     RST   0x38   
016B   FF                     RST   0x38   
016C   FF                     RST   0x38   
016D   FF                     RST   0x38   
016E   FF                     RST   0x38   
016F   FF                     RST   0x38   
0170   C5                     PUSH   bc   
0171   D5                     PUSH   de   
0172   E5                     PUSH   hl   
0173   F5                     PUSH   af   
0174   A7                     AND   a   
0175   20 03                  JR   nz,0x017a   
0177   5F                     LD   e,a   
0178   18 02                  JR   0x017c   
017A   1E 80                  LD   e,0x80   
017C   21 00 01               LD   hl,0x0100   
017F   87                     ADD   a,a   
0180   85                     ADD   a,l   
0181   6F                     LD   l,a   
0182   4E                     LD   c,(hl)   
0183   23                     INC   hl   
0184   46                     LD   b,(hl)   
0185   7B                     LD   a,e   
0186   D3 01                  OUT   (0x01),a   
0188   10 FE                  DJNZ   0x0188   
018A   46                     LD   b,(hl)   
018B   AF                     XOR   a   
018C   D3 01                  OUT   (0x01),a   
018E   10 FE                  DJNZ   0x018e   
0190   0D                     DEC   c   
0191   20 F1                  JR   nz,0x0184   
0193   F1                     POP   af   
0194   E1                     POP   hl   
0195   D1                     POP   de   
0196   C1                     POP   bc   
0197   C9                     RET   
0198   FF                     RST   0x38   
0199   FF                     RST   0x38   
019A   FF                     RST   0x38   
019B   FF                     RST   0x38   
019C   FF                     RST   0x38   
019D   FF                     RST   0x38   
019E   FF                     RST   0x38   
019F   FF                     RST   0x38   
01A0   F5                     PUSH   af   
01A1   E5                     PUSH   hl   
01A2   2A D6 08               LD   hl,(0x08d6)   
01A5   7E                     LD   a,(hl)   
01A6   FE FF                  CP   0xff   
01A8   20 03                  JR   nz,0x01ad   
01AA   E1                     POP   hl   
01AB   F1                     POP   af   
01AC   C9                     RET   
01AD   FE FE                  CP   0xfe   
01AF   28 F1                  JR   z,0x01a2   
01B1   23                     INC   hl   
01B2   CD 70 01               CALL   0x0170   
01B5   18 EE                  JR   0x01a5   
01B7   FF                     RST   0x38   
01B8   FF                     RST   0x38   
01B9   FF                     RST   0x38   
01BA   FF                     RST   0x38   
01BB   FF                     RST   0x38   
01BC   FF                     RST   0x38   
01BD   FF                     RST   0x38   
01BE   FF                     RST   0x38   
01BF   FF                     RST   0x38   
01C0   21 DF 08               LD   hl,0x08df   
01C3   CB 46                  BIT   0,(hl)   
01C5   20 07                  JR   nz,0x01ce   
01C7   CB C6                  SET   0,(hl)   
01C9   CB 8E                  RES   1,(hl)   
01CB   C3 78 03               JP   0x0378   
01CE   CB 86                  RES   0,(hl)   
01D0   CB CE                  SET   1,(hl)   
01D2   C3 78 03               JP   0x0378   
01D5   FF                     RST   0x38   
01D6   FF                     RST   0x38   
01D7   FF                     RST   0x38   
01D8   C5                     PUSH   bc   
01D9   06 80                  LD   b,0x80   
01DB   CD A0 02               CALL   0x02a0   
01DE   10 FB                  DJNZ   0x01db   
01E0   C1                     POP   bc   
01E1   C9                     RET   
01E2   FF                     RST   0x38   
01E3   FF                     RST   0x38   
01E4   ED 4B D2 08            LD   bc,(0x08d2)   
01E8   CD 90 04               CALL   0x0490   
01EB   CD 70 02               CALL   0x0270   
01EE   C3 78 03               JP   0x0378   
01F1   FF                     RST   0x38   
01F2   ED 4B D4 08            LD   bc,(0x08d4)   
01F6   CD 90 04               CALL   0x0490   
01F9   CD 70 02               CALL   0x0270   
01FC   C3 78 03               JP   0x0378   
01FF   FF                     RST   0x38   
0200   ED 73 E8 08            LD   (0x08e8),sp   
0204   31 00 09               LD   sp,0x0900   
0207   F5                     PUSH   af   
0208   C5                     PUSH   bc   
0209   D5                     PUSH   de   
020A   E5                     PUSH   hl   
020B   DD E5                  PUSH   ix   
020D   FD E5                  PUSH   iy   
020F   08                     EX   af,af'   
0210   D9                     EXX   
0211   F5                     PUSH   af   
0212   C5                     PUSH   bc   
0213   D5                     PUSH   de   
0214   E5                     PUSH   hl   
0215   ED 57                  LD   a,i   
0217   F5                     PUSH   af   
0218   AF                     XOR   a   
0219   32 CC 08               LD   (0x08cc),a   
021C   32 CD 08               LD   (0x08cd),a   
021F   3E FF                  LD   a,0xff   
0221   32 E0 08               LD   (0x08e0),a   
0224   C3 40 02               JP   0x0240   
0227   FF                     RST   0x38   
0228   FF                     RST   0x38   
0229   FF                     RST   0x38   
022A   FF                     RST   0x38   
022B   FF                     RST   0x38   
022C   FF                     RST   0x38   
022D   FF                     RST   0x38   
022E   FF                     RST   0x38   
022F   FF                     RST   0x38   
0230   FF                     RST   0x38   
0231   FF                     RST   0x38   
0232   FF                     RST   0x38   
0233   FF                     RST   0x38   
0234   FF                     RST   0x38   
0235   FF                     RST   0x38   
0236   FF                     RST   0x38   
0237   FF                     RST   0x38   
0238   FF                     RST   0x38   
0239   FF                     RST   0x38   
023A   FF                     RST   0x38   
023B   FF                     RST   0x38   
023C   FF                     RST   0x38   
023D   FF                     RST   0x38   
023E   FF                     RST   0x38   
023F   FF                     RST   0x38   
0240   31 C0 08               LD   sp,0x08c0   
0243   AF                     XOR   a   
0244   D3 01                  OUT   (0x01),a   
0246   D3 02                  OUT   (0x02),a   
0248   21 B0 00               LD   hl,0x00b0   
024B   11 D8 08               LD   de,0x08d8   
024E   01 05 00               LD   bc,0x0005   
0251   ED B0                  LDIR   
0253   CD 70 02               CALL   0x0270   
0256   3E 08                  LD   a,0x08   
0258   CD 70 01               CALL   0x0170   
025B   3E 0F                  LD   a,0x0f   
025D   CD 70 01               CALL   0x0170   
0260   3E 01                  LD   a,0x01   
0262   32 DF 08               LD   (0x08df),a   
0265   CD A0 02               CALL   0x02a0   
0268   CD 60 03               CALL   0x0360   
026B   18 F8                  JR   0x0265   
026D   FF                     RST   0x38   
026E   FF                     RST   0x38   
026F   FF                     RST   0x38   
0270   F5                     PUSH   af   
0271   E5                     PUSH   hl   
0272   C5                     PUSH   bc   
0273   CD 89 02               CALL   0x0289   
0276   E6 F0                  AND   0xf0   
0278   0F                     RRCA   
0279   0F                     RRCA   
027A   0F                     RRCA   
027B   0F                     RRCA   
027C   32 DC 08               LD   (0x08dc),a   
027F   0A                     LD   a,(bc)   
0280   E6 0F                  AND   0x0f   
0282   32 DD 08               LD   (0x08dd),a   
0285   C1                     POP   bc   
0286   E1                     POP   hl   
0287   F1                     POP   af   
0288   C9                     RET   
0289   21 D8 08               LD   hl,0x08d8   
028C   7E                     LD   a,(hl)   
028D   07                     RLCA   
028E   07                     RLCA   
028F   07                     RLCA   
0290   07                     RLCA   
0291   23                     INC   hl   
0292   86                     ADD   a,(hl)   
0293   47                     LD   b,a   
0294   23                     INC   hl   
0295   7E                     LD   a,(hl)   
0296   07                     RLCA   
0297   07                     RLCA   
0298   07                     RLCA   
0299   07                     RLCA   
029A   23                     INC   hl   
029B   86                     ADD   a,(hl)   
029C   4F                     LD   c,a   
029D   0A                     LD   a,(bc)   
029E   C9                     RET   
029F   FF                     RST   0x38   
02A0   F5                     PUSH   af   
02A1   E5                     PUSH   hl   
02A2   D5                     PUSH   de   
02A3   C5                     PUSH   bc   
02A4   11 D8 08               LD   de,0x08d8   
02A7   AF                     XOR   a   
02A8   D3 01                  OUT   (0x01),a   
02AA   CD 50 03               CALL   0x0350   
02AD   CB 4E                  BIT   1,(hl)   
02AF   28 02                  JR   z,0x02b3   
02B1   CB E7                  SET   4,a   
02B3   D3 02                  OUT   (0x02),a   
02B5   3E 20                  LD   a,0x20   
02B7   D3 01                  OUT   (0x01),a   
02B9   06 20                  LD   b,0x20   
02BB   10 FE                  DJNZ   0x02bb   
02BD   AF                     XOR   a   
02BE   D3 01                  OUT   (0x01),a   
02C0   CD 50 03               CALL   0x0350   
02C3   CB 4E                  BIT   1,(hl)   
02C5   28 02                  JR   z,0x02c9   
02C7   CB E7                  SET   4,a   
02C9   D3 02                  OUT   (0x02),a   
02CB   3E 10                  LD   a,0x10   
02CD   D3 01                  OUT   (0x01),a   
02CF   06 20                  LD   b,0x20   
02D1   10 FE                  DJNZ   0x02d1   
02D3   AF                     XOR   a   
02D4   D3 01                  OUT   (0x01),a   
02D6   CD 50 03               CALL   0x0350   
02D9   CB 4E                  BIT   1,(hl)   
02DB   28 02                  JR   z,0x02df   
02DD   CB E7                  SET   4,a   
02DF   D3 02                  OUT   (0x02),a   
02E1   3E 08                  LD   a,0x08   
02E3   D3 01                  OUT   (0x01),a   
02E5   06 20                  LD   b,0x20   
02E7   10 FE                  DJNZ   0x02e7   
02E9   AF                     XOR   a   
02EA   D3 01                  OUT   (0x01),a   
02EC   CD 50 03               CALL   0x0350   
02EF   CB 4E                  BIT   1,(hl)   
02F1   28 02                  JR   z,0x02f5   
02F3   CB E7                  SET   4,a   
02F5   D3 02                  OUT   (0x02),a   
02F7   3E 04                  LD   a,0x04   
02F9   D3 01                  OUT   (0x01),a   
02FB   06 20                  LD   b,0x20   
02FD   10 FE                  DJNZ   0x02fd   
02FF   AF                     XOR   a   
0300   D3 01                  OUT   (0x01),a   
0302   00                     NOP   
0303   C3 18 03               JP   0x0318   
0306   FF                     RST   0x38   
0307   FF                     RST   0x38   
0308   FF                     RST   0x38   
0309   FF                     RST   0x38   
030A   FF                     RST   0x38   
030B   FF                     RST   0x38   
030C   CD 89 02               CALL   0x0289   
030F   C5                     PUSH   bc   
0310   E1                     POP   hl   
0311   31 C0 08               LD   sp,0x08c0   
0314   E9                     JP   (hl)   
0315   FF                     RST   0x38   
0316   FF                     RST   0x38   
0317   FF                     RST   0x38   
0318   CD 50 03               CALL   0x0350   
031B   CB 46                  BIT   0,(hl)   
031D   28 02                  JR   z,0x0321   
031F   CB E7                  SET   4,a   
0321   D3 02                  OUT   (0x02),a   
0323   3E 02                  LD   a,0x02   
0325   D3 01                  OUT   (0x01),a   
0327   06 20                  LD   b,0x20   
0329   10 FE                  DJNZ   0x0329   
032B   AF                     XOR   a   
032C   D3 01                  OUT   (0x01),a   
032E   CD 50 03               CALL   0x0350   
0331   CB 46                  BIT   0,(hl)   
0333   28 02                  JR   z,0x0337   
0335   CB E7                  SET   4,a   
0337   D3 02                  OUT   (0x02),a   
0339   3E 01                  LD   a,0x01   
033B   D3 01                  OUT   (0x01),a   
033D   06 20                  LD   b,0x20   
033F   10 FE                  DJNZ   0x033f   
0341   AF                     XOR   a   
0342   D3 01                  OUT   (0x01),a   
0344   C1                     POP   bc   
0345   D1                     POP   de   
0346   E1                     POP   hl   
0347   F1                     POP   af   
0348   C9                     RET   
0349   FF                     RST   0x38   
034A   FF                     RST   0x38   
034B   FF                     RST   0x38   
034C   FF                     RST   0x38   
034D   FF                     RST   0x38   
034E   FF                     RST   0x38   
034F   FF                     RST   0x38   
0350   21 80 00               LD   hl,0x0080   
0353   1A                     LD   a,(de)   
0354   85                     ADD   a,l   
0355   6F                     LD   l,a   
0356   7E                     LD   a,(hl)   
0357   13                     INC   de   
0358   21 DF 08               LD   hl,0x08df   
035B   C9                     RET   
035C   FF                     RST   0x38   
035D   FF                     RST   0x38   
035E   FF                     RST   0x38   
035F   FF                     RST   0x38   
0360   F5                     PUSH   af   
0361   E5                     PUSH   hl   
0362   21 E0 08               LD   hl,0x08e0   
0365   3E FF                  LD   a,0xff   
0367   BE                     CP   (hl)   
0368   28 0E                  JR   z,0x0378   
036A   7E                     LD   a,(hl)   
036B   E6 1F                  AND   0x1f   
036D   CB 6E                  BIT   5,(hl)   
036F   20 02                  JR   nz,0x0373   
0371   C6 14                  ADD   a,0x14   
0373   C3 A8 03               JP   0x03a8   
0376   FF                     RST   0x38   
0377   FF                     RST   0x38   
0378   E1                     POP   hl   
0379   F1                     POP   af   
037A   C9                     RET   
037B   FF                     RST   0x38   
037C   FF                     RST   0x38   
037D   E1                     POP   hl   
037E   F1                     POP   af   
037F   C9                     RET   
0380   FF                     RST   0x38   
0381   FF                     RST   0x38   
0382   FF                     RST   0x38   
0383   FF                     RST   0x38   
0384   CD 89 02               CALL   0x0289   
0387   C5                     PUSH   bc   
0388   DD E1                  POP   ix   
038A   DD 23                  INC   ix   
038C   DD E5                  PUSH   ix   
038E   E1                     POP   hl   
038F   7C                     LD   a,h   
0390   FE 40                  CP   0x40   
0392   28 08                  JR   z,0x039c   
0394   DD 7E 00               LD   a,(ix+0)   
0397   DD 77 FF               LD   (ix-1),a   
039A   18 EE                  JR   0x038a   
039C   3E 00                  LD   a,0x00   
039E   32 FF 3F               LD   (0x3fff),a   
03A1   CD 70 02               CALL   0x0270   
03A4   C3 78 03               JP   0x0378   
03A7   FF                     RST   0x38   
03A8   C6 01                  ADD   a,0x01   
03AA   CD 70 01               CALL   0x0170   
03AD   C3 21 04               JP   0x0421   
03B0   CD 89 02               CALL   0x0289   
03B3   0B                     DEC   bc   
03B4   DD 21 FE 3F            LD   ix,0x3ffe   
03B8   DD 7E 00               LD   a,(ix+0)   
03BB   DD 77 01               LD   (ix+1),a   
03BE   DD 2B                  DEC   ix   
03C0   DD E5                  PUSH   ix   
03C2   E1                     POP   hl   
03C3   79                     LD   a,c   
03C4   BD                     CP   l   
03C5   20 F1                  JR   nz,0x03b8   
03C7   78                     LD   a,b   
03C8   BC                     CP   h   
03C9   20 ED                  JR   nz,0x03b8   
03CB   DD 36 01 00            LD   (ix+1),0x00   
03CF   CD 70 02               CALL   0x0270   
03D2   C3 78 03               JP   0x0378   
03D5   FF                     RST   0x38   
03D6   FF                     RST   0x38   
03D7   FF                     RST   0x38   
03D8   E5                     PUSH   hl   
03D9   F5                     PUSH   af   
03DA   DD E5                  PUSH   ix   
03DC   C5                     PUSH   bc   
03DD   AF                     XOR   a   
03DE   32 DF 08               LD   (0x08df),a   
03E1   06 06                  LD   b,0x06   
03E3   21 D8 08               LD   hl,0x08d8   
03E6   3E 29                  LD   a,0x29   
03E8   77                     LD   (hl),a   
03E9   23                     INC   hl   
03EA   10 FC                  DJNZ   0x03e8   
03EC   2A D0 08               LD   hl,(0x08d0)   
03EF   7E                     LD   a,(hl)   
03F0   FE FF                  CP   0xff   
03F2   20 06                  JR   nz,0x03fa   
03F4   C1                     POP   bc   
03F5   DD E1                  POP   ix   
03F7   F1                     POP   af   
03F8   E1                     POP   hl   
03F9   C9                     RET   
03FA   FE FE                  CP   0xfe   
03FC   28 EE                  JR   z,0x03ec   
03FE   DD 21 D8 08            LD   ix,0x08d8   
0402   06 05                  LD   b,0x05   
0404   DD 7E 01               LD   a,(ix+1)   
0407   DD 77 00               LD   (ix+0),a   
040A   DD 23                  INC   ix   
040C   10 F6                  DJNZ   0x0404   
040E   7E                     LD   a,(hl)   
040F   32 DD 08               LD   (0x08dd),a   
0412   23                     INC   hl   
0413   06 40                  LD   b,0x40   
0415   CD A0 02               CALL   0x02a0   
0418   10 FB                  DJNZ   0x0415   
041A   18 D3                  JR   0x03ef   
041C   FF                     RST   0x38   
041D   FF                     RST   0x38   
041E   FF                     RST   0x38   
041F   FF                     RST   0x38   
0420   FF                     RST   0x38   
0421   D6 01                  SUB   0x01   
0423   36 FF                  LD   (hl),0xff   
0425   CB 67                  BIT   4,a   
0427   C2 C0 04               JP   nz,0x04c0   
042A   CB 6F                  BIT   5,a   
042C   C2 C0 04               JP   nz,0x04c0   
042F   21 DF 08               LD   hl,0x08df   
0432   CB 46                  BIT   0,(hl)   
0434   CA 55 04               JP   z,0x0455   
0437   57                     LD   d,a   
0438   CD 89 02               CALL   0x0289   
043B   21 DF 08               LD   hl,0x08df   
043E   CB 5E                  BIT   3,(hl)   
0440   20 03                  JR   nz,0x0445   
0442   AF                     XOR   a   
0443   CB DE                  SET   3,(hl)   
0445   07                     RLCA   
0446   07                     RLCA   
0447   07                     RLCA   
0448   07                     RLCA   
0449   E6 F0                  AND   0xf0   
044B   82                     ADD   a,d   
044C   02                     LD   (bc),a   
044D   CD 70 02               CALL   0x0270   
0450   C3 7D 03               JP   0x037d   
0453   FF                     RST   0x38   
0454   FF                     RST   0x38   
0455   57                     LD   d,a   
0456   21 DF 08               LD   hl,0x08df   
0459   CB 9E                  RES   3,(hl)   
045B   CB 66                  BIT   4,(hl)   
045D   20 08                  JR   nz,0x0467   
045F   01 00 00               LD   bc,0x0000   
0462   CD 90 04               CALL   0x0490   
0465   CB E6                  SET   4,(hl)   
0467   CD 89 02               CALL   0x0289   
046A   78                     LD   a,b   
046B   07                     RLCA   
046C   07                     RLCA   
046D   07                     RLCA   
046E   07                     RLCA   
046F   E6 F0                  AND   0xf0   
0471   5F                     LD   e,a   
0472   79                     LD   a,c   
0473   07                     RLCA   
0474   07                     RLCA   
0475   07                     RLCA   
0476   07                     RLCA   
0477   E6 0F                  AND   0x0f   
0479   83                     ADD   a,e   
047A   47                     LD   b,a   
047B   79                     LD   a,c   
047C   07                     RLCA   
047D   07                     RLCA   
047E   07                     RLCA   
047F   07                     RLCA   
0480   E6 F0                  AND   0xf0   
0482   82                     ADD   a,d   
0483   4F                     LD   c,a   
0484   CD 90 04               CALL   0x0490   
0487   CD 70 02               CALL   0x0270   
048A   C3 7D 03               JP   0x037d   
048D   FF                     RST   0x38   
048E   FF                     RST   0x38   
048F   FF                     RST   0x38   
0490   F5                     PUSH   af   
0491   E5                     PUSH   hl   
0492   21 D8 08               LD   hl,0x08d8   
0495   78                     LD   a,b   
0496   E6 F0                  AND   0xf0   
0498   07                     RLCA   
0499   07                     RLCA   
049A   07                     RLCA   
049B   07                     RLCA   
049C   77                     LD   (hl),a   
049D   23                     INC   hl   
049E   78                     LD   a,b   
049F   E6 0F                  AND   0x0f   
04A1   77                     LD   (hl),a   
04A2   23                     INC   hl   
04A3   79                     LD   a,c   
04A4   E6 F0                  AND   0xf0   
04A6   07                     RLCA   
04A7   07                     RLCA   
04A8   07                     RLCA   
04A9   07                     RLCA   
04AA   77                     LD   (hl),a   
04AB   23                     INC   hl   
04AC   79                     LD   a,c   
04AD   E6 0F                  AND   0x0f   
04AF   77                     LD   (hl),a   
04B0   E1                     POP   hl   
04B1   F1                     POP   af   
04B2   C9                     RET   
04B3   FF                     RST   0x38   
04B4   FF                     RST   0x38   
04B5   FF                     RST   0x38   
04B6   FF                     RST   0x38   
04B7   FF                     RST   0x38   
04B8   FF                     RST   0x38   
04B9   FF                     RST   0x38   
04BA   FF                     RST   0x38   
04BB   FF                     RST   0x38   
04BC   FF                     RST   0x38   
04BD   FF                     RST   0x38   
04BE   FF                     RST   0x38   
04BF   FF                     RST   0x38   
04C0   21 DF 08               LD   hl,0x08df   
04C3   CB 9E                  RES   3,(hl)   
04C5   CB A6                  RES   4,(hl)   
04C7   FE 10                  CP   0x10   
04C9   CA E0 00               JP   z,0x00e0   
04CC   FE 11                  CP   0x11   
04CE   CA E6 00               JP   z,0x00e6   
04D1   FE 12                  CP   0x12   
04D3   CA 0C 03               JP   z,0x030c   
04D6   FE 13                  CP   0x13   
04D8   CA C0 01               JP   z,0x01c0   
04DB   FE 14                  CP   0x14   
04DD   CA 50 05               JP   z,0x0550   
04E0   FE 15                  CP   0x15   
04E2   CA FF FF               JP   z,0xffff   
04E5   FE 16                  CP   0x16   
04E7   CA FF FF               JP   z,0xffff   
04EA   FE 17                  CP   0x17   
04EC   CA F2 01               JP   z,0x01f2   
04EF   FE 18                  CP   0x18   
04F1   CA 70 05               JP   z,0x0570   
04F4   FE 19                  CP   0x19   
04F6   CA FF FF               JP   z,0xffff   
04F9   FE 1A                  CP   0x1a   
04FB   CA FF FF               JP   z,0xffff   
04FE   FE 1B                  CP   0x1b   
0500   CA FF FF               JP   z,0xffff   
0503   FE 1C                  CP   0x1c   
0505   CA 60 06               JP   z,0x0660   
0508   FE 1D                  CP   0x1d   
050A   CA FF FF               JP   z,0xffff   
050D   FE 1E                  CP   0x1e   
050F   CA FF FF               JP   z,0xffff   
0512   FE 1F                  CP   0x1f   
0514   CA FF FF               JP   z,0xffff   
0517   FE 20                  CP   0x20   
0519   CA FF FF               JP   z,0xffff   
051C   FE 21                  CP   0x21   
051E   CA FF FF               JP   z,0xffff   
0521   FE 22                  CP   0x22   
0523   CA FF FF               JP   z,0xffff   
0526   FE 23                  CP   0x23   
0528   CA FF FF               JP   z,0xffff   
052B   FE 24                  CP   0x24   
052D   CA B0 03               JP   z,0x03b0   
0530   FE 25                  CP   0x25   
0532   CA 84 03               JP   z,0x0384   
0535   FE 26                  CP   0x26   
0537   CA FF FF               JP   z,0xffff   
053A   FE 27                  CP   0x27   
053C   CA E4 01               JP   z,0x01e4   
053F   C3 78 03               JP   0x0378   
0542   FF                     RST   0x38   
0543   FF                     RST   0x38   
0544   FF                     RST   0x38   
0545   FF                     RST   0x38   
0546   FF                     RST   0x38   
0547   FF                     RST   0x38   
0548   FF                     RST   0x38   
0549   FF                     RST   0x38   
054A   FF                     RST   0x38   
054B   FF                     RST   0x38   
054C   FF                     RST   0x38   
054D   FF                     RST   0x38   
054E   FF                     RST   0x38   
054F   FF                     RST   0x38   
0550   CD 89 02               CALL   0x0289   
0553   60                     LD   h,b   
0554   69                     LD   l,c   
0555   3A E1 08               LD   a,(0x08e1)   
0558   23                     INC   hl   
0559   BE                     CP   (hl)   
055A   20 FC                  JR   nz,0x0558   
055C   44                     LD   b,h   
055D   4D                     LD   c,l   
055E   CD 90 04               CALL   0x0490   
0561   C3 53 02               JP   0x0253   
0564   FF                     RST   0x38   
0565   FF                     RST   0x38   
0566   FF                     RST   0x38   
0567   FF                     RST   0x38   
0568   FF                     RST   0x38   
0569   FF                     RST   0x38   
056A   FF                     RST   0x38   
056B   FF                     RST   0x38   
056C   FF                     RST   0x38   
056D   FF                     RST   0x38   
056E   FF                     RST   0x38   
056F   FF                     RST   0x38   
0570   FF                     RST   0x38   
0571   FF                     RST   0x38   
0572   FF                     RST   0x38   
0573   FF                     RST   0x38   
0574   FF                     RST   0x38   
0575   FF                     RST   0x38   
0576   FF                     RST   0x38   
0577   FF                     RST   0x38   
0578   FF                     RST   0x38   
0579   FF                     RST   0x38   
057A   FF                     RST   0x38   
057B   FF                     RST   0x38   
057C   FF                     RST   0x38   
057D   FF                     RST   0x38   
057E   FF                     RST   0x38   
057F   FF                     RST   0x38   
0580   FF                     RST   0x38   
0581   FF                     RST   0x38   
0582   FF                     RST   0x38   
0583   FF                     RST   0x38   
0584   FF                     RST   0x38   
0585   FF                     RST   0x38   
0586   FF                     RST   0x38   
0587   FF                     RST   0x38   
0588   FF                     RST   0x38   
0589   FF                     RST   0x38   
058A   FF                     RST   0x38   
058B   FF                     RST   0x38   
058C   FF                     RST   0x38   
058D   FF                     RST   0x38   
058E   FF                     RST   0x38   
058F   FF                     RST   0x38   
0590   FF                     RST   0x38   
0591   FF                     RST   0x38   
0592   FF                     RST   0x38   
0593   FF                     RST   0x38   
0594   FF                     RST   0x38   
0595   FF                     RST   0x38   
0596   FF                     RST   0x38   
0597   FF                     RST   0x38   
0598   FF                     RST   0x38   
0599   FF                     RST   0x38   
059A   FF                     RST   0x38   
059B   FF                     RST   0x38   
059C   FF                     RST   0x38   
059D   FF                     RST   0x38   
059E   FF                     RST   0x38   
059F   FF                     RST   0x38   
05A0   FF                     RST   0x38   
05A1   FF                     RST   0x38   
05A2   FF                     RST   0x38   
05A3   FF                     RST   0x38   
05A4   FF                     RST   0x38   
05A5   FF                     RST   0x38   
05A6   FF                     RST   0x38   
05A7   FF                     RST   0x38   
05A8   FF                     RST   0x38   
05A9   FF                     RST   0x38   
05AA   FF                     RST   0x38   
05AB   FF                     RST   0x38   
05AC   FF                     RST   0x38   
05AD   FF                     RST   0x38   
05AE   FF                     RST   0x38   
05AF   FF                     RST   0x38   
05B0   FF                     RST   0x38   
05B1   FF                     RST   0x38   
05B2   FF                     RST   0x38   
05B3   FF                     RST   0x38   
05B4   FF                     RST   0x38   
05B5   FF                     RST   0x38   
05B6   FF                     RST   0x38   
05B7   FF                     RST   0x38   
05B8   FF                     RST   0x38   
05B9   FF                     RST   0x38   
05BA   FF                     RST   0x38   
05BB   FF                     RST   0x38   
05BC   FF                     RST   0x38   
05BD   FF                     RST   0x38   
05BE   FF                     RST   0x38   
05BF   FF                     RST   0x38   
05C0   FF                     RST   0x38   
05C1   FF                     RST   0x38   
05C2   FF                     RST   0x38   
05C3   FF                     RST   0x38   
05C4   FF                     RST   0x38   
05C5   FF                     RST   0x38   
05C6   FF                     RST   0x38   
05C7   FF                     RST   0x38   
05C8   FF                     RST   0x38   
05C9   FF                     RST   0x38   
05CA   FF                     RST   0x38   
05CB   FF                     RST   0x38   
05CC   FF                     RST   0x38   
05CD   FF                     RST   0x38   
05CE   FF                     RST   0x38   
05CF   FF                     RST   0x38   
05D0   FF                     RST   0x38   
05D1   FF                     RST   0x38   
05D2   FF                     RST   0x38   
05D3   FF                     RST   0x38   
05D4   FF                     RST   0x38   
05D5   FF                     RST   0x38   
05D6   FF                     RST   0x38   
05D7   FF                     RST   0x38   
05D8   FF                     RST   0x38   
05D9   FF                     RST   0x38   
05DA   FF                     RST   0x38   
05DB   FF                     RST   0x38   
05DC   FF                     RST   0x38   
05DD   FF                     RST   0x38   
05DE   FF                     RST   0x38   
05DF   FF                     RST   0x38   
05E0   FF                     RST   0x38   
05E1   FF                     RST   0x38   
05E2   FF                     RST   0x38   
05E3   FF                     RST   0x38   
05E4   FF                     RST   0x38   
05E5   FF                     RST   0x38   
05E6   FF                     RST   0x38   
05E7   FF                     RST   0x38   
05E8   FF                     RST   0x38   
05E9   FF                     RST   0x38   
05EA   FF                     RST   0x38   
05EB   FF                     RST   0x38   
05EC   FF                     RST   0x38   
05ED   FF                     RST   0x38   
05EE   FF                     RST   0x38   
05EF   FF                     RST   0x38   
05F0   FF                     RST   0x38   
05F1   FF                     RST   0x38   
05F2   FF                     RST   0x38   
05F3   FF                     RST   0x38   
05F4   FF                     RST   0x38   
05F5   FF                     RST   0x38   
05F6   FF                     RST   0x38   
05F7   FF                     RST   0x38   
05F8   FF                     RST   0x38   
05F9   FF                     RST   0x38   
05FA   FF                     RST   0x38   
05FB   FF                     RST   0x38   
05FC   FF                     RST   0x38   
05FD   FF                     RST   0x38   
05FE   FF                     RST   0x38   
05FF   FF                     RST   0x38   
0600   FF                     RST   0x38   
0601   FF                     RST   0x38   
0602   FF                     RST   0x38   
0603   FF                     RST   0x38   
0604   FF                     RST   0x38   
0605   FF                     RST   0x38   
0606   FF                     RST   0x38   
0607   FF                     RST   0x38   
0608   FF                     RST   0x38   
0609   FF                     RST   0x38   
060A   FF                     RST   0x38   
060B   FF                     RST   0x38   
060C   FF                     RST   0x38   
060D   FF                     RST   0x38   
060E   FF                     RST   0x38   
060F   FF                     RST   0x38   
0610   FF                     RST   0x38   
0611   FF                     RST   0x38   
0612   FF                     RST   0x38   
0613   FF                     RST   0x38   
0614   FF                     RST   0x38   
0615   FF                     RST   0x38   
0616   FF                     RST   0x38   
0617   FF                     RST   0x38   
0618   FF                     RST   0x38   
0619   FF                     RST   0x38   
061A   FF                     RST   0x38   
061B   FF                     RST   0x38   
061C   FF                     RST   0x38   
061D   FF                     RST   0x38   
061E   FF                     RST   0x38   
061F   FF                     RST   0x38   
0620   FF                     RST   0x38   
0621   FF                     RST   0x38   
0622   FF                     RST   0x38   
0623   FF                     RST   0x38   
0624   FF                     RST   0x38   
0625   FF                     RST   0x38   
0626   FF                     RST   0x38   
0627   FF                     RST   0x38   
0628   FF                     RST   0x38   
0629   FF                     RST   0x38   
062A   FF                     RST   0x38   
062B   FF                     RST   0x38   
062C   FF                     RST   0x38   
062D   FF                     RST   0x38   
062E   FF                     RST   0x38   
062F   FF                     RST   0x38   
0630   FF                     RST   0x38   
0631   FF                     RST   0x38   
0632   FF                     RST   0x38   
0633   FF                     RST   0x38   
0634   FF                     RST   0x38   
0635   FF                     RST   0x38   
0636   FF                     RST   0x38   
0637   FF                     RST   0x38   
0638   FF                     RST   0x38   
0639   FF                     RST   0x38   
063A   FF                     RST   0x38   
063B   FF                     RST   0x38   
063C   FF                     RST   0x38   
063D   FF                     RST   0x38   
063E   FF                     RST   0x38   
063F   FF                     RST   0x38   
0640   FF                     RST   0x38   
0641   FF                     RST   0x38   
0642   FF                     RST   0x38   
0643   FF                     RST   0x38   
0644   FF                     RST   0x38   
0645   FF                     RST   0x38   
0646   FF                     RST   0x38   
0647   FF                     RST   0x38   
0648   FF                     RST   0x38   
0649   FF                     RST   0x38   
064A   FF                     RST   0x38   
064B   FF                     RST   0x38   
064C   FF                     RST   0x38   
064D   FF                     RST   0x38   
064E   FF                     RST   0x38   
064F   FF                     RST   0x38   
0650   FF                     RST   0x38   
0651   FF                     RST   0x38   
0652   FF                     RST   0x38   
0653   FF                     RST   0x38   
0654   FF                     RST   0x38   
0655   FF                     RST   0x38   
0656   FF                     RST   0x38   
0657   FF                     RST   0x38   
0658   FF                     RST   0x38   
0659   FF                     RST   0x38   
065A   FF                     RST   0x38   
065B   FF                     RST   0x38   
065C   FF                     RST   0x38   
065D   FF                     RST   0x38   
065E   FF                     RST   0x38   
065F   FF                     RST   0x38   
0660   FF                     RST   0x38   
0661   FF                     RST   0x38   
0662   FF                     RST   0x38   
0663   FF                     RST   0x38   
0664   FF                     RST   0x38   
0665   FF                     RST   0x38   
0666   FF                     RST   0x38   
0667   FF                     RST   0x38   
0668   FF                     RST   0x38   
0669   FF                     RST   0x38   
066A   FF                     RST   0x38   
066B   FF                     RST   0x38   
066C   FF                     RST   0x38   
066D   FF                     RST   0x38   
066E   FF                     RST   0x38   
066F   FF                     RST   0x38   
0670   FF                     RST   0x38   
0671   FF                     RST   0x38   
0672   FF                     RST   0x38   
0673   FF                     RST   0x38   
0674   FF                     RST   0x38   
0675   FF                     RST   0x38   
0676   FF                     RST   0x38   
0677   FF                     RST   0x38   
0678   FF                     RST   0x38   
0679   FF                     RST   0x38   
067A   FF                     RST   0x38   
067B   FF                     RST   0x38   
067C   FF                     RST   0x38   
067D   FF                     RST   0x38   
067E   FF                     RST   0x38   
067F   FF                     RST   0x38   
0680   FF                     RST   0x38   
0681   FF                     RST   0x38   
0682   FF                     RST   0x38   
0683   FF                     RST   0x38   
0684   FF                     RST   0x38   
0685   FF                     RST   0x38   
0686   FF                     RST   0x38   
0687   FF                     RST   0x38   
0688   FF                     RST   0x38   
0689   FF                     RST   0x38   
068A   FF                     RST   0x38   
068B   FF                     RST   0x38   
068C   FF                     RST   0x38   
068D   FF                     RST   0x38   
068E   FF                     RST   0x38   
068F   FF                     RST   0x38   
0690   FF                     RST   0x38   
0691   FF                     RST   0x38   
0692   FF                     RST   0x38   
0693   FF                     RST   0x38   
0694   FF                     RST   0x38   
0695   FF                     RST   0x38   
0696   FF                     RST   0x38   
0697   FF                     RST   0x38   
0698   FF                     RST   0x38   
0699   FF                     RST   0x38   
069A   FF                     RST   0x38   
069B   FF                     RST   0x38   
069C   FF                     RST   0x38   
069D   FF                     RST   0x38   
069E   FF                     RST   0x38   
069F   FF                     RST   0x38   
06A0   FF                     RST   0x38   
06A1   FF                     RST   0x38   
06A2   FF                     RST   0x38   
06A3   FF                     RST   0x38   
06A4   FF                     RST   0x38   
06A5   FF                     RST   0x38   
06A6   FF                     RST   0x38   
06A7   FF                     RST   0x38   
06A8   FF                     RST   0x38   
06A9   FF                     RST   0x38   
06AA   FF                     RST   0x38   
06AB   FF                     RST   0x38   
06AC   FF                     RST   0x38   
06AD   FF                     RST   0x38   
06AE   FF                     RST   0x38   
06AF   FF                     RST   0x38   
06B0   FF                     RST   0x38   
06B1   FF                     RST   0x38   
06B2   FF                     RST   0x38   
06B3   FF                     RST   0x38   
06B4   FF                     RST   0x38   
06B5   FF                     RST   0x38   
06B6   FF                     RST   0x38   
06B7   FF                     RST   0x38   
06B8   FF                     RST   0x38   
06B9   FF                     RST   0x38   
06BA   FF                     RST   0x38   
06BB   FF                     RST   0x38   
06BC   FF                     RST   0x38   
06BD   FF                     RST   0x38   
06BE   FF                     RST   0x38   
06BF   FF                     RST   0x38   
06C0   FF                     RST   0x38   
06C1   FF                     RST   0x38   
06C2   FF                     RST   0x38   
06C3   FF                     RST   0x38   
06C4   FF                     RST   0x38   
06C5   FF                     RST   0x38   
06C6   FF                     RST   0x38   
06C7   FF                     RST   0x38   
06C8   FF                     RST   0x38   
06C9   FF                     RST   0x38   
06CA   FF                     RST   0x38   
06CB   FF                     RST   0x38   
06CC   FF                     RST   0x38   
06CD   FF                     RST   0x38   
06CE   FF                     RST   0x38   
06CF   FF                     RST   0x38   
06D0   FF                     RST   0x38   
06D1   FF                     RST   0x38   
06D2   FF                     RST   0x38   
06D3   FF                     RST   0x38   
06D4   FF                     RST   0x38   
06D5   FF                     RST   0x38   
06D6   FF                     RST   0x38   
06D7   FF                     RST   0x38   
06D8   FF                     RST   0x38   
06D9   FF                     RST   0x38   
06DA   FF                     RST   0x38   
06DB   FF                     RST   0x38   
06DC   FF                     RST   0x38   
06DD   FF                     RST   0x38   
06DE   FF                     RST   0x38   
06DF   FF                     RST   0x38   
06E0   FF                     RST   0x38   
06E1   FF                     RST   0x38   
06E2   FF                     RST   0x38   
06E3   FF                     RST   0x38   
06E4   FF                     RST   0x38   
06E5   FF                     RST   0x38   
06E6   FF                     RST   0x38   
06E7   FF                     RST   0x38   
06E8   FF                     RST   0x38   
06E9   FF                     RST   0x38   
06EA   FF                     RST   0x38   
06EB   FF                     RST   0x38   
06EC   FF                     RST   0x38   
06ED   FF                     RST   0x38   
06EE   FF                     RST   0x38   
06EF   FF                     RST   0x38   
06F0   FF                     RST   0x38   
06F1   FF                     RST   0x38   
06F2   FF                     RST   0x38   
06F3   FF                     RST   0x38   
06F4   FF                     RST   0x38   
06F5   FF                     RST   0x38   
06F6   FF                     RST   0x38   
06F7   FF                     RST   0x38   
06F8   FF                     RST   0x38   
06F9   FF                     RST   0x38   
06FA   FF                     RST   0x38   
06FB   FF                     RST   0x38   
06FC   FF                     RST   0x38   
06FD   FF                     RST   0x38   
06FE   FF                     RST   0x38   
06FF   FF                     RST   0x38   
0700   FF                     RST   0x38   
0701   FF                     RST   0x38   
0702   FF                     RST   0x38   
0703   FF                     RST   0x38   
0704   FF                     RST   0x38   
0705   FF                     RST   0x38   
0706   FF                     RST   0x38   
0707   FF                     RST   0x38   
0708   FF                     RST   0x38   
0709   FF                     RST   0x38   
070A   FF                     RST   0x38   
070B   FF                     RST   0x38   
070C   FF                     RST   0x38   
070D   FF                     RST   0x38   
070E   FF                     RST   0x38   
070F   FF                     RST   0x38   
0710   FF                     RST   0x38   
0711   FF                     RST   0x38   
0712   FF                     RST   0x38   
0713   FF                     RST   0x38   
0714   FF                     RST   0x38   
0715   FF                     RST   0x38   
0716   FF                     RST   0x38   
0717   FF                     RST   0x38   
0718   FF                     RST   0x38   
0719   FF                     RST   0x38   
071A   FF                     RST   0x38   
071B   FF                     RST   0x38   
071C   FF                     RST   0x38   
071D   FF                     RST   0x38   
071E   FF                     RST   0x38   
071F   FF                     RST   0x38   
0720   FF                     RST   0x38   
0721   FF                     RST   0x38   
0722   FF                     RST   0x38   
0723   FF                     RST   0x38   
0724   FF                     RST   0x38   
0725   FF                     RST   0x38   
0726   FF                     RST   0x38   
0727   FF                     RST   0x38   
0728   FF                     RST   0x38   
0729   FF                     RST   0x38   
072A   FF                     RST   0x38   
072B   FF                     RST   0x38   
072C   FF                     RST   0x38   
072D   FF                     RST   0x38   
072E   FF                     RST   0x38   
072F   FF                     RST   0x38   
0730   FF                     RST   0x38   
0731   FF                     RST   0x38   
0732   FF                     RST   0x38   
0733   FF                     RST   0x38   
0734   FF                     RST   0x38   
0735   FF                     RST   0x38   
0736   FF                     RST   0x38   
0737   FF                     RST   0x38   
0738   FF                     RST   0x38   
0739   FF                     RST   0x38   
073A   FF                     RST   0x38   
073B   FF                     RST   0x38   
073C   FF                     RST   0x38   
073D   FF                     RST   0x38   
073E   FF                     RST   0x38   
073F   FF                     RST   0x38   
0740   FF                     RST   0x38   
0741   FF                     RST   0x38   
0742   FF                     RST   0x38   
0743   FF                     RST   0x38   
0744   FF                     RST   0x38   
0745   FF                     RST   0x38   
0746   FF                     RST   0x38   
0747   FF                     RST   0x38   
0748   FF                     RST   0x38   
0749   FF                     RST   0x38   
074A   FF                     RST   0x38   
074B   FF                     RST   0x38   
074C   FF                     RST   0x38   
074D   FF                     RST   0x38   
074E   FF                     RST   0x38   
074F   FF                     RST   0x38   
0750   FF                     RST   0x38   
0751   FF                     RST   0x38   
0752   FF                     RST   0x38   
0753   FF                     RST   0x38   
0754   FF                     RST   0x38   
0755   FF                     RST   0x38   
0756   FF                     RST   0x38   
0757   FF                     RST   0x38   
0758   FF                     RST   0x38   
0759   FF                     RST   0x38   
075A   FF                     RST   0x38   
075B   FF                     RST   0x38   
075C   FF                     RST   0x38   
075D   FF                     RST   0x38   
075E   FF                     RST   0x38   
075F   FF                     RST   0x38   
0760   FF                     RST   0x38   
0761   FF                     RST   0x38   
0762   FF                     RST   0x38   
0763   FF                     RST   0x38   
0764   FF                     RST   0x38   
0765   FF                     RST   0x38   
0766   FF                     RST   0x38   
0767   FF                     RST   0x38   
0768   FF                     RST   0x38   
0769   FF                     RST   0x38   
076A   FF                     RST   0x38   
076B   FF                     RST   0x38   
076C   FF                     RST   0x38   
076D   FF                     RST   0x38   
076E   FF                     RST   0x38   
076F   FF                     RST   0x38   
0770   FF                     RST   0x38   
0771   FF                     RST   0x38   
0772   FF                     RST   0x38   
0773   FF                     RST   0x38   
0774   FF                     RST   0x38   
0775   FF                     RST   0x38   
0776   FF                     RST   0x38   
0777   FF                     RST   0x38   
0778   FF                     RST   0x38   
0779   FF                     RST   0x38   
077A   FF                     RST   0x38   
077B   FF                     RST   0x38   
077C   FF                     RST   0x38   
077D   FF                     RST   0x38   
077E   FF                     RST   0x38   
077F   FF                     RST   0x38   
0780   FF                     RST   0x38   
0781   FF                     RST   0x38   
0782   FF                     RST   0x38   
0783   FF                     RST   0x38   
0784   FF                     RST   0x38   
0785   FF                     RST   0x38   
0786   FF                     RST   0x38   
0787   FF                     RST   0x38   
0788   FF                     RST   0x38   
0789   FF                     RST   0x38   
078A   FF                     RST   0x38   
078B   FF                     RST   0x38   
078C   FF                     RST   0x38   
078D   FF                     RST   0x38   
078E   FF                     RST   0x38   
078F   FF                     RST   0x38   
0790   FF                     RST   0x38   
0791   FF                     RST   0x38   
0792   FF                     RST   0x38   
0793   FF                     RST   0x38   
0794   FF                     RST   0x38   
0795   FF                     RST   0x38   
0796   FF                     RST   0x38   
0797   FF                     RST   0x38   
0798   FF                     RST   0x38   
0799   FF                     RST   0x38   
079A   FF                     RST   0x38   
079B   FF                     RST   0x38   
079C   FF                     RST   0x38   
079D   FF                     RST   0x38   
079E   FF                     RST   0x38   
079F   FF                     RST   0x38   
07A0   FF                     RST   0x38   
07A1   FF                     RST   0x38   
07A2   FF                     RST   0x38   
07A3   FF                     RST   0x38   
07A4   FF                     RST   0x38   
07A5   FF                     RST   0x38   
07A6   FF                     RST   0x38   
07A7   FF                     RST   0x38   
07A8   FF                     RST   0x38   
07A9   FF                     RST   0x38   
07AA   FF                     RST   0x38   
07AB   FF                     RST   0x38   
07AC   FF                     RST   0x38   
07AD   FF                     RST   0x38   
07AE   FF                     RST   0x38   
07AF   FF                     RST   0x38   
07B0   FF                     RST   0x38   
07B1   FF                     RST   0x38   
07B2   FF                     RST   0x38   
07B3   FF                     RST   0x38   
07B4   FF                     RST   0x38   
07B5   FF                     RST   0x38   
07B6   FF                     RST   0x38   
07B7   FF                     RST   0x38   
07B8   FF                     RST   0x38   
07B9   FF                     RST   0x38   
07BA   FF                     RST   0x38   
07BB   FF                     RST   0x38   
07BC   FF                     RST   0x38   
07BD   FF                     RST   0x38   
07BE   FF                     RST   0x38   
07BF   FF                     RST   0x38   
07C0   FF                     RST   0x38   
07C1   FF                     RST   0x38   
07C2   FF                     RST   0x38   
07C3   FF                     RST   0x38   
07C4   FF                     RST   0x38   
07C5   FF                     RST   0x38   
07C6   FF                     RST   0x38   
07C7   FF                     RST   0x38   
07C8   FF                     RST   0x38   
07C9   FF                     RST   0x38   
07CA   FF                     RST   0x38   
07CB   FF                     RST   0x38   
07CC   FF                     RST   0x38   
07CD   FF                     RST   0x38   
07CE   FF                     RST   0x38   
07CF   FF                     RST   0x38   
07D0   FF                     RST   0x38   
07D1   FF                     RST   0x38   
07D2   FF                     RST   0x38   
07D3   FF                     RST   0x38   
07D4   FF                     RST   0x38   
07D5   FF                     RST   0x38   
07D6   FF                     RST   0x38   
07D7   FF                     RST   0x38   
07D8   FF                     RST   0x38   
07D9   FF                     RST   0x38   
07DA   FF                     RST   0x38   
07DB   FF                     RST   0x38   
07DC   FF                     RST   0x38   
07DD   FF                     RST   0x38   
07DE   FF                     RST   0x38   
07DF   FF                     RST   0x38   
07E0   FF                     RST   0x38   
07E1   FF                     RST   0x38   
07E2   FF                     RST   0x38   
07E3   FF                     RST   0x38   
07E4   FF                     RST   0x38   
07E5   FF                     RST   0x38   
07E6   FF                     RST   0x38   
07E7   FF                     RST   0x38   
07E8   FF                     RST   0x38   
07E9   FF                     RST   0x38   
07EA   FF                     RST   0x38   
07EB   FF                     RST   0x38   
07EC   FF                     RST   0x38   
07ED   FF                     RST   0x38   
07EE   FF                     RST   0x38   
07EF   FF                     RST   0x38   
07F0   FF                     RST   0x38   
07F1   FF                     RST   0x38   
07F2   FF                     RST   0x38   
07F3   FF                     RST   0x38   
07F4   FF                     RST   0x38   
07F5   FF                     RST   0x38   
07F6   FF                     RST   0x38   
07F7   FF                     RST   0x38   
07F8   FF                     RST   0x38   
07F9   FF                     RST   0x38   
07FA   FF                     RST   0x38   
07FB   FF                     RST   0x38   
07FC   FF                     RST   0x38   
07FD   FF                     RST   0x38   
07FE   FF                     RST   0x38   
07FF   FF                     RST   0x38   


