" vim: set noet ts=16 sts=16 list:
scriptencoding utf8
let b:keymap_name = "latin"
hi lCursor guibg=magenta guifg=magenta
loadkeymap
" Don't remove this line!
\\              <Char-0x0300>   " -̀             COMBINING GRAVE ACCENT
/               <Char-0x0301>   " -́             COMBINING ACUTE ACCENT
>               <Char-0x0302>   " -̂             COMBINING CIRCUMFLEX ACCENT
~               <Char-0x0303>   " -̃             COMBINING TILDE
|               <Char-0x0304>   " -̄             COMBINING MACRON
"               <Char-0x0305>   " -̅             COMBINING OVERLINE
(               <Char-0x0306>   " -̆             COMBINING BREVE
.               <Char-0x0307>   " -̇             COMBINING DOT ABOVE
:               <Char-0x0308>   " -̈             COMBINING DIAERESIS
?               <Char-0x0309>   " -̉             COMBINING HOOK ABOVE
&               <Char-0x030a>   " -̊             COMBINING RING ABOVE
//              <Char-0x030b>   " -̋             COMBINING DOUBLE ACUTE ACCENT
<               <Char-0x030c>   " -̌             COMBINING CARON
                " <Char-0x030d> " -̍             COMBINING VERTICAL LINE ABOVE
                " <Char-0x030e> " -̎             COMBINING DOUBLE VERTICAL LINE ABOVE
\\\\            <Char-0x030f>   " -̏             COMBINING DOUBLE GRAVE ACCENT
(.              <Char-0x0310>   " -̐             COMBINING CANDRABINDU
)               <Char-0x0311>   " -̑             COMBINING INVERTED BREVE
^`              <Char-0x0312>   " -̒             COMBINING TURNED COMMA ABOVE
^,              <Char-0x0313>   " -̓             COMBINING COMMA ABOVE
                " <Char-0x0314> " -̔             COMBINING REVERSED COMMA ABOVE
                " <Char-0x0315> " -̕             COMBINING COMMA ABOVE RIGHT
                " <Char-0x0316> " -̖             COMBINING GRAVE ACCENT BELOW
                " <Char-0x0317> " -̗             COMBINING ACUTE ACCENT BELOW
                " <Char-0x0318> " -̘             COMBINING LEFT TACK BELOW
                " <Char-0x0319> " -̙             COMBINING RIGHT TACK BELOW
                " <Char-0x031a> " -̚             COMBINING LEFT ANGLE ABOVE
++              <Char-0x031b>   " -̛             COMBINING HORN
                " <Char-0x031c> " -̜             COMBINING LEFT HALF RING BELOW
                " <Char-0x031d> " -̝             COMBINING UP TACK BELOW
                " <Char-0x031e> " -̞             COMBINING DOWN TACK BELOW
                " <Char-0x031f> " -̟             COMBINING PLUS SIGN BELOW
                " <Char-0x0320> " -̠             COMBINING MINUS SIGN BELOW
                " <Char-0x0321> " -̡             COMBINING PALATALIZED HOOK BELOW
                " <Char-0x0322> " -̢             COMBINING RETROFLEX HOOK BELOW
!               <Char-0x0323>   " -̣             COMBINING DOT BELOW
!!              <Char-0x0324>   " -̤             COMBINING DIAERESIS BELOW
@               <Char-0x0325>   " -̥             COMBINING RING BELOW
_,              <Char-0x0326>   " -̦             COMBINING COMMA BELOW
,               <Char-0x0327>   " -̧             COMBINING CEDILLA
;               <Char-0x0328>   " -̨             COMBINING OGONEK
                " <Char-0x0329> " -̩             COMBINING VERTICAL LINE BELOW
                " <Char-0x032a> " -̪             COMBINING BRIDGE BELOW
                " <Char-0x032b> " -̫             COMBINING INVERTED DOUBLE ARCH BELOW
_>              <Char-0x032c>   " -̬             COMBINING CARON BELOW
_<              <Char-0x032d>   " -̭             COMBINING CIRCUMFLEX ACCENT BELOW
_)              <Char-0x032e>   " -̮             COMBINING BREVE BELOW
_(              <Char-0x032f>   " -̯             COMBINING INVERTED BREVE BELOW
_~              <Char-0x0330>   " -̰             COMBINING TILDE BELOW
_|              <Char-0x0331>   " -̱             COMBINING MACRON BELOW
                " <Char-0x0332> " -̲             COMBINING LOW LINE
                " <Char-0x0333> " -̳             COMBINING DOUBLE LOW LINE
                " <Char-0x0334> " -̴             COMBINING TILDE OVERLAY
                " <Char-0x0335> " -̵             COMBINING SHORT STROKE OVERLAY
                " <Char-0x0336> " -̶             COMBINING LONG STROKE OVERLAY
                " <Char-0x0337> " -̷             COMBINING SHORT SOLIDUS OVERLAY
%               <Char-0x0338>   " -̸             COMBINING LONG SOLIDUS OVERLAY
                " <Char-0x0339> " -̹             COMBINING RIGHT HALF RING BELOW
                " <Char-0x033a> " -̺             COMBINING INVERTED BRIDGE BELOW
                " <Char-0x033b> " -̻             COMBINING SQUARE BELOW
                " <Char-0x033c> " -̼             COMBINING SEAGULL BELOW
^x              <Char-0x033d>   " -̽             COMBINING X ABOVE
^~              <Char-0x033e>   " -̾             COMBINING VERTICAL TILDE
                " <Char-0x033f> " -̿             COMBINING DOUBLE OVERLINE
                " <Char-0x0340> " -̀             COMBINING GRAVE TONE MARK
                " <Char-0x0341> " -́             COMBINING ACUTE TONE MARK
                " <Char-0x0342> " -͂             COMBINING GREEK PERISPOMENI
                " <Char-0x0343> " -̓             COMBINING GREEK KORONIS
                " <Char-0x0344> " -̈́             COMBINING GREEK DIALYTIKA TONOS
                " <Char-0x0345> " -ͅ             COMBINING GREEK YPOGEGRAMMENI
                " <Char-0x0346> " -͆             COMBINING BRIDGE ABOVE
                " <Char-0x0347> " -͇             COMBINING EQUALS SIGN BELOW
                " <Char-0x0348> " -͈             COMBINING DOUBLE VERTICAL LINE BELOW
                " <Char-0x0349> " -͉             COMBINING LEFT ANGLE BELOW
                " <Char-0x034a> " -͊             COMBINING NOT TILDE ABOVE
                " <Char-0x034b> " -͋             COMBINING HOMOTHETIC ABOVE
                " <Char-0x034c> " -͌             COMBINING ALMOST EQUAL TO ABOVE
                " <Char-0x034d> " -͍             COMBINING LEFT RIGHT ARROW BELOW
                " <Char-0x034e> " -͎             COMBINING UPWARDS ARROW BELOW
                " <Char-0x034f> " -͏             COMBINING GRAPHEME JOINER
                " <Char-0x0350> " -͐             COMBINING RIGHT ARROWHEAD ABOVE
`(              <Char-0x0351>   " -͑             COMBINING LEFT HALF RING ABOVE
.)              <Char-0x0352>   " -͒             COMBINING FERMATA
_x              <Char-0x0353>   " -͓             COMBINING X BELOW
                " <Char-0x0354> " -͔             COMBINING LEFT ARROWHEAD BELOW
                " <Char-0x0355> " -͕             COMBINING RIGHT ARROWHEAD BELOW
                " <Char-0x0356> " -͖             COMBINING RIGHT ARROWHEAD AND UP ARROWHEAD BELOW
`)              <Char-0x0357>   " -͗             COMBINING RIGHT HALF RING ABOVE
                " <Char-0x0358> " -͘             COMBINING DOT ABOVE RIGHT
                " <Char-0x0359> " -͙             COMBINING ASTERISK BELOW
                " <Char-0x035a> " -͚             COMBINING DOUBLE RING BELOW
                " <Char-0x035b> " -͛             COMBINING ZIGZAG ABOVE
_))             <Char-0x035c>   " -͜             COMBINING DOUBLE BREVE BELOW
((              <Char-0x035d>   " -͝             COMBINING DOUBLE BREVE
||              <Char-0x035e>   " -͞             COMBINING DOUBLE MACRON
_||             <Char-0x035f>   " -͟             COMBINING DOUBLE MACRON BELOW
~~              <Char-0x0360>   " -͠             COMBINING DOUBLE TILDE
))              <Char-0x0361>   " -͡             COMBINING DOUBLE INVERTED BREVE
                " <Char-0x0362> " -͢             COMBINING DOUBLE RIGHTWARDS ARROW BELOW
                " <Char-0x0363> " -ͣ             COMBINING LATIN SMALL LETTER A
                " <Char-0x0364> " -ͤ             COMBINING LATIN SMALL LETTER E
                " <Char-0x0365> " -ͥ             COMBINING LATIN SMALL LETTER I
                " <Char-0x0366> " -ͦ             COMBINING LATIN SMALL LETTER O
                " <Char-0x0367> " -ͧ             COMBINING LATIN SMALL LETTER U
                " <Char-0x0368> " -ͨ             COMBINING LATIN SMALL LETTER C
                " <Char-0x0369> " -ͩ             COMBINING LATIN SMALL LETTER D
                " <Char-0x036a> " -ͪ             COMBINING LATIN SMALL LETTER H
                " <Char-0x036b> " -ͫ             COMBINING LATIN SMALL LETTER M
                " <Char-0x036c> " -ͬ             COMBINING LATIN SMALL LETTER R
                " <Char-0x036d> " -ͭ             COMBINING LATIN SMALL LETTER T
                " <Char-0x036e> " -ͮ             COMBINING LATIN SMALL LETTER V
                " <Char-0x036f> " -ͯ             COMBINING LATIN SMALL LETTER X
\"!             !               U+0021 EXCLAMATION MARK
\"\"            \"              U+0022 QUOTATION MARK
\"#             #               U+0023 NUMBER SIGN
\"$             $               U+0024 DOLLAR SIGN
\"%             %               U+0025 PERCENT SIGN
\"&             &               U+0026 AMPERSAND
\"'             '               U+0027 APOSTROPHE
\"(             (               U+0028 LEFT PARENTHESIS
\")             )               U+0029 RIGHT PARENTHESIS
\"*             *               U+002A ASTERISK
\"+             +               U+002B PLUS SIGN
\",             ,               U+002C COMMA
\"-             -               U+002D HYPHEN-MINUS
\".             .               U+002E FULL STOP
\"/             /               U+002F SOLIDUS
\":             :               U+003A COLON
\";             ;               U+003B SEMICOLON
\"<             <               U+003C LESS-THAN SIGN
\"=             =               U+003D EQUALS SIGN
\">             >               U+003E GREATER-THAN SIGN
\"?             ?               U+003F QUESTION MARK
\"@             @               U+0040 COMMERCIAL AT
\"[             [               U+005B LEFT SQUARE BRACKET
\"\\            \\              U+005C REVERSE SOLIDUS
\"]             ]               U+005D RIGHT SQUARE BRACKET
\"^             ^               U+005E CIRCUMFLEX ACCENT
\"`             `               U+0060 GRAVE ACCENT
\"{             {               U+007B LEFT CURLY BRACKET
\"|             |               U+007C VERTICAL LINE
\"}             }               U+007D RIGHT CURLY BRACKET
\"~             ~               U+007E TILDE
\"A             A               U+0041 LATIN CAPITAL LETTER A
\"a             a
\"B             B               U+0042 LATIN CAPITAL LETTER B
\"b             b
\"C             C               U+0043 LATIN CAPITAL LETTER C
\"c             c
\"D             D               U+0044 LATIN CAPITAL LETTER D
\"d             d
\"E             E               U+0045 LATIN CAPITAL LETTER E
\"e             e
\"F             F               U+0046 LATIN CAPITAL LETTER F
\"f             f
\"G             G               U+0047 LATIN CAPITAL LETTER G
\"g             g
\"H             H               U+0048 LATIN CAPITAL LETTER H
\"h             h
\"I             I               U+0049 LATIN CAPITAL LETTER I
\"i             i
\"J             J               U+004A LATIN CAPITAL LETTER J
\"j             j
\"K             K               U+004B LATIN CAPITAL LETTER K
\"k             k
\"L             L               U+004C LATIN CAPITAL LETTER L
\"l             l
\"M             M               U+004D LATIN CAPITAL LETTER M
\"m             m
\"N             N               U+004E LATIN CAPITAL LETTER N
\"n             n
\"O             O               U+004F LATIN CAPITAL LETTER O
\"o             o
\"P             P               U+0050 LATIN CAPITAL LETTER P
\"p             p
\"Q             Q               U+0051 LATIN CAPITAL LETTER Q
\"q             q
\"R             R               U+0052 LATIN CAPITAL LETTER R
\"r             r
\"S             S               U+0053 LATIN CAPITAL LETTER S
\"s             s
\"T             T               U+0054 LATIN CAPITAL LETTER T
\"t             t
\"U             U               U+0055 LATIN CAPITAL LETTER U
\"u             u
\"V             V               U+0056 LATIN CAPITAL LETTER V
\"v             v
\"W             W               U+0057 LATIN CAPITAL LETTER W
\"w             w
\"X             X               U+0058 LATIN CAPITAL LETTER X
\"x             x
\"Y             Y               U+0059 LATIN CAPITAL LETTER Y
\"y             y
\"Z             Z               U+005A LATIN CAPITAL LETTER Z
\"z             z
&AE             Æ               U+00C6 LATIN CAPITAL LETTER AE
&ae             æ
&Dh             Ð               U+00D0 LATIN CAPITAL LETTER ETH
&DH             Ð               U+00D0 LATIN CAPITAL LETTER ETH
&dh             ð
&O+/            Ø               U+00D8 LATIN CAPITAL LETTER O WITH STROKE
&o+/            ø
&Th             Þ               U+00DE LATIN CAPITAL LETTER THORN
&TH             Þ               U+00DE LATIN CAPITAL LETTER THORN
&th             þ
D-              Đ               U+0110 LATIN CAPITAL LETTER D WITH STROKE
d-              đ
H-              Ħ               U+0126 LATIN CAPITAL LETTER H WITH STROKE
h-              ħ
IJ              Ĳ               U+0132 LATIN CAPITAL LIGATURE IJ
ij              ĳ
L+.             Ŀ               U+013F LATIN CAPITAL LETTER L WITH MIDDLE DOT
l+.             ŀ
L+/             Ł               U+0141 LATIN CAPITAL LETTER L WITH STROKE
l+/             ł
&NG             Ŋ               U+014A LATIN CAPITAL LETTER ENG
&Ng             Ŋ               U+014A LATIN CAPITAL LETTER ENG
&ng             ŋ
&OE             Œ               U+0152 LATIN CAPITAL LIGATURE OE
&oe             œ
T+-             Ŧ               U+0166 LATIN CAPITAL LETTER T WITH STROKE
t+-             ŧ
B+?             Ɓ               U+0181 LATIN CAPITAL LETTER B WITH HOOK
b+?             ɓ
B^-             Ƃ               U+0182 LATIN CAPITAL LETTER B WITH TOPBAR
b^-             ƃ
&T6             Ƅ               U+0184 LATIN CAPITAL LETTER TONE SIX
&t6             ƅ
&Oh             Ɔ               U+0186 LATIN CAPITAL LETTER OPEN O
&OH             Ɔ               U+0186 LATIN CAPITAL LETTER OPEN O
&oh             ɔ
C+?             Ƈ               U+0187 LATIN CAPITAL LETTER C WITH HOOK
c+?             ƈ
D_!             Ɖ               U+0189 LATIN CAPITAL LETTER AFRICAN D
d_!             ɖ
D+?             Ɗ               U+018A LATIN CAPITAL LETTER D WITH HOOK
d+?             ɗ
D^-             Ƌ               U+018B LATIN CAPITAL LETTER D WITH TOPBAR
d^-             ƌ
E``             Ǝ               U+018E LATIN CAPITAL LETTER REVERSED E
e``             ǝ
&Eh             Ə               U+018F LATIN CAPITAL LETTER SCHWA
&EH             Ə               U+018F LATIN CAPITAL LETTER SCHWA
&eh             ə
&Ea             Ɛ               U+0190 LATIN CAPITAL LETTER OPEN E
&EA             Ɛ               U+0190 LATIN CAPITAL LETTER OPEN E
&ea             ɛ
F+?             Ƒ               U+0191 LATIN CAPITAL LETTER F WITH HOOK
f+?             ƒ
G+?             Ɠ               U+0193 LATIN CAPITAL LETTER G WITH HOOK
g+?             ɠ
&Gh             Ɣ               U+0194 LATIN CAPITAL LETTER GAMMA
&GH             Ɣ               U+0194 LATIN CAPITAL LETTER GAMMA
&gh             ɣ
I`              Ɩ               U+0196 LATIN CAPITAL LETTER IOTA
i`              ɩ
I+-             Ɨ               U+0197 LATIN CAPITAL LETTER I WITH STROKE
i+-             ɨ
K+?             Ƙ               U+0198 LATIN CAPITAL LETTER K WITH HOOK
k+?             ƙ
&Uu             Ɯ               U+019C LATIN CAPITAL LETTER TURNED M
&UU             Ɯ               U+019C LATIN CAPITAL LETTER TURNED M
&uu             ɯ
&GN             Ɲ               U+019D LATIN CAPITAL LETTER N WITH LEFT HOOK
&Gn             Ɲ               U+019D LATIN CAPITAL LETTER N WITH LEFT HOOK
&gn             ɲ
O+~             Ɵ               U+019F LATIN CAPITAL LETTER O WITH MIDDLE TILDE
o+~             ɵ
&Qh             Ƣ               U+01A2 LATIN CAPITAL LETTER GHA
&QH             Ƣ               U+01A2 LATIN CAPITAL LETTER GHA
&qh             ƣ
P+?             Ƥ               U+01A4 LATIN CAPITAL LETTER P WITH HOOK
p+?             ƥ
&Rz             Ʀ               U+01A6 LATIN LETTER YR
&RZ             Ʀ               U+01A6 LATIN LETTER YR
&rz             ʀ
&T2             Ƨ               U+01A7 LATIN CAPITAL LETTER TONE TWO
&t2             ƨ
&Sh             Ʃ               U+01A9 LATIN CAPITAL LETTER ESH
&SH             Ʃ               U+01A9 LATIN CAPITAL LETTER ESH
&sh             ʃ
T+?             Ƭ               U+01AC LATIN CAPITAL LETTER T WITH HOOK
t+?             ƭ
T_!             Ʈ               U+01AE LATIN CAPITAL LETTER T WITH RETROFLEX HOOK
t_!             ʈ
&Uh             Ʊ               U+01B1 LATIN CAPITAL LETTER UPSILON
&UH             Ʊ               U+01B1 LATIN CAPITAL LETTER UPSILON
&uh             ʊ
V+?             Ʋ               U+01B2 LATIN CAPITAL LETTER V WITH HOOK
v+?             ʋ
Y+?             Ƴ               U+01B3 LATIN CAPITAL LETTER Y WITH HOOK
y+?             ƴ
Z+-             Ƶ               U+01B5 LATIN CAPITAL LETTER Z WITH STROKE
z+-             ƶ
&Zh             Ʒ               U+01B7 LATIN CAPITAL LETTER EZH
&ZH             Ʒ               U+01B7 LATIN CAPITAL LETTER EZH
&zh             ʒ
&Dz             Ʒ               U+01B7 LATIN CAPITAL LETTER EZH
&DZ             Ʒ               U+01B7 LATIN CAPITAL LETTER EZH
&dz             ʒ
&ZH``           Ƹ               U+01B8 LATIN CAPITAL LETTER EZH REVERSED
&zh``           ƹ
&T5             Ƽ               U+01BC LATIN CAPITAL LETTER TONE FIVE
&t5             ƽ
G-              Ǥ               U+01E4 LATIN CAPITAL LETTER G WITH STROKE
g-              ǥ
&Hv             Ƕ               U+01F6 LATIN CAPITAL LETTER HWAIR
&HV             Ƕ               U+01F6 LATIN CAPITAL LETTER HWAIR
&hv             ƕ
W`              Ƿ               U+01F7 LATIN CAPITAL LETTER WYNN
w`              ƿ
&Yh             Ȝ               U+021C LATIN CAPITAL LETTER YOGH
&YH             Ȝ               U+021C LATIN CAPITAL LETTER YOGH
&yh             ȝ
&Nj             Ƞ               U+0220 LATIN CAPITAL LETTER N WITH LONG RIGHT LEG
&nj             ƞ
&OU             Ȣ               U+0222 LATIN CAPITAL LETTER OU
&ou             ȣ
Z+?             Ȥ               U+0224 LATIN CAPITAL LETTER Z WITH HOOK
z+?             ȥ
A+/             Ⱥ               U+023A LATIN CAPITAL LETTER A WITH STROKE
a+/             ⱥ
C+/             Ȼ               U+023B LATIN CAPITAL LETTER C WITH STROKE
c+/             ȼ
L+-             Ƚ               U+023D LATIN CAPITAL LETTER L WITH BAR
l+-             ƚ
T+/             Ⱦ               U+023E LATIN CAPITAL LETTER T WITH DIAGONAL STROKE
t+/             ⱦ
&Qg             Ɂ               U+0241 LATIN CAPITAL LETTER GLOTTAL STOP
&QG             Ɂ               U+0241 LATIN CAPITAL LETTER GLOTTAL STOP
&qg             ɂ
B+/             Ƀ               U+0243 LATIN CAPITAL LETTER B WITH STROKE
b+/             ƀ
U-              Ʉ               U+0244 LATIN CAPITAL LETTER U BAR
u-              ʉ
&Vu             Ʌ               U+0245 LATIN CAPITAL LETTER TURNED V
&VU             Ʌ               U+0245 LATIN CAPITAL LETTER TURNED V
&vu             ʌ
E+/             Ɇ               U+0246 LATIN CAPITAL LETTER E WITH STROKE
e+/             ɇ
J+-             Ɉ               U+0248 LATIN CAPITAL LETTER J WITH STROKE
j+-             ɉ
Q_?             Ɋ               U+024A LATIN CAPITAL LETTER SMALL Q WITH HOOK TAIL
q_?             ɋ
R+-             Ɍ               U+024C LATIN CAPITAL LETTER R WITH STROKE
r+-             ɍ
Y+-             Ɏ               U+024E LATIN CAPITAL LETTER Y WITH STROKE
y+-             ɏ
&SS             ẞ               U+1E9E LATIN CAPITAL LETTER SHARP S
&ss             ß
&LL             Ỻ               U+1EFA LATIN CAPITAL LETTER MIDDLE-WELSH LL
&ll             ỻ
&Vv             Ỽ               U+1EFC LATIN CAPITAL LETTER MIDDLE-WELSH V
&VV             Ỽ               U+1EFC LATIN CAPITAL LETTER MIDDLE-WELSH V
&vv             ỽ
Y+@             Ỿ               U+1EFE LATIN CAPITAL LETTER Y WITH LOOP
y+@             ỿ
F``             Ⅎ               U+2132 TURNED CAPITAL F
f``             ⅎ
C``             Ↄ               U+2183 ROMAN NUMERAL REVERSED ONE HUNDRED
c``             ↄ
L=              Ⱡ               U+2C60 LATIN CAPITAL LETTER L WITH DOUBLE BAR
l=              ⱡ
L+~             Ɫ               U+2C62 LATIN CAPITAL LETTER L WITH MIDDLE TILDE
l+~             ɫ
P+-             Ᵽ               U+2C63 LATIN CAPITAL LETTER P WITH STROKE
p+-             ᵽ
R_!             Ɽ               U+2C64 LATIN CAPITAL LETTER R WITH TAIL
r_!             ɽ
H_;             Ⱨ               U+2C67 LATIN CAPITAL LETTER H WITH DESCENDER
h_;             ⱨ
K_;             Ⱪ               U+2C69 LATIN CAPITAL LETTER K WITH DESCENDER
k_;             ⱪ
Z_;             Ⱬ               U+2C6B LATIN CAPITAL LETTER Z WITH DESCENDER
z_;             ⱬ
&Ah             Ɑ               U+2C6D LATIN CAPITAL LETTER ALPHA
&AH             Ɑ               U+2C6D LATIN CAPITAL LETTER ALPHA
&ah             ɑ
&M+?            Ɱ               U+2C6E LATIN CAPITAL LETTER M WITH HOOK
&m+?            ɱ
A``             Ɐ               U+2C6F LATIN CAPITAL LETTER TURNED A
a``             ɐ
A`              Ɒ               U+2C70 LATIN CAPITAL LETTER TURNED ALPHA
a`              ɒ
W+?             Ⱳ               U+2C72 LATIN CAPITAL LETTER W WITH HOOK
w+?             ⱳ
&Hh             Ⱶ               U+2C75 LATIN CAPITAL LETTER HALF H
&HH             Ⱶ               U+2C75 LATIN CAPITAL LETTER HALF H
&hh             ⱶ
S_~             Ȿ               U+2C7E LATIN CAPITAL LETTER S WITH SWASH TAIL
s_~             ȿ
Z_~             Ɀ               U+2C7F LATIN CAPITAL LETTER Z WITH SWASH TAIL
z_~             ɀ
&A3             Ꜣ               U+A722 LATIN CAPITAL LETTER EGYPTOLOGICAL ALEF
&a3             ꜣ
&A2             Ꜥ               U+A724 LATIN CAPITAL LETTER EGYPTOLOGICAL AIN
&a2             ꜥ
&Hj             Ꜧ               U+A726 LATIN CAPITAL LETTER HENG
&HJ             Ꜧ               U+A726 LATIN CAPITAL LETTER HENG
&hj             ꜧ
&TZ             Ꜩ               U+A728 LATIN CAPITAL LETTER TZ
&tz             ꜩ
&Q3             Ꜫ               U+A72A LATIN CAPITAL LETTER TRESILLO
&q3             ꜫ
&K4             Ꜭ               U+A72C LATIN CAPITAL LETTER CUATRILLO
&k4             ꜭ
&Z4             Ꜯ               U+A72E LATIN CAPITAL LETTER CUATRILLO WITH COMMA
&z4             ꜯ
&Aa             Ꜳ               U+A732 LATIN CAPITAL LETTER AA
&AA             Ꜳ               U+A732 LATIN CAPITAL LETTER AA
&aa             ꜳ
&Ao             Ꜵ               U+A734 LATIN CAPITAL LETTER AO
&AO             Ꜵ               U+A734 LATIN CAPITAL LETTER AO
&ao             ꜵ
&Au             Ꜷ               U+A736 LATIN CAPITAL LETTER AU
&AU             Ꜷ               U+A736 LATIN CAPITAL LETTER AU
&au             ꜷ
&Av             Ꜹ               U+A738 LATIN CAPITAL LETTER AV
&AV             Ꜹ               U+A738 LATIN CAPITAL LETTER AV
&av             ꜹ
&Av-            Ꜻ               U+A73A LATIN CAPITAL LETTER AV WITH HORIZONTAL BAR
&AV-            Ꜻ               U+A73A LATIN CAPITAL LETTER AV WITH HORIZONTAL BAR
&av-            ꜻ
&Ay             Ꜽ               U+A73C LATIN CAPITAL LETTER AY
&AY             Ꜽ               U+A73C LATIN CAPITAL LETTER AY
&ay             ꜽ
C``+.           Ꜿ               U+A73E LATIN CAPITAL LETTER REVERSED C WITH DOT
c``+.           ꜿ
K-              Ꝁ               U+A740 LATIN CAPITAL LETTER K WITH STROKE
k-              ꝁ
K_/             Ꝃ               U+A742 LATIN CAPITAL LETTER K WITH DIAGONAL STROKE
k_/             ꝃ
K-_/            Ꝅ               U+A744 LATIN CAPITAL LETTER K WITH STROKE AND DIAGONAL STROKE
k-_/            ꝅ
L`              Ꝇ               U+A746 LATIN CAPITAL LETTER BROKEN L
l`              ꝇ
L^-             Ꝉ               U+A748 LATIN CAPITAL LETTER L WITH HIGH STROKE
l^-             ꝉ
O+|             Ꝋ               U+A74A LATIN CAPITAL LETTER O WITH LONG STROKE OVERLAY
o+|             ꝋ
O+@             Ꝍ               U+A74C LATIN CAPITAL LETTER O WITH LOOP
o+@             ꝍ
&Oo             Ꝏ               U+A74E LATIN CAPITAL LETTER OO
&OO             Ꝏ               U+A74E LATIN CAPITAL LETTER OO
&oo             ꝏ
P_-             Ꝑ               U+A750 LATIN CAPITAL LETTER P WITH STROKE THROUGH DESCENDER
p_-             ꝑ
P+~             Ꝓ               U+A752 LATIN CAPITAL LETTER P WITH FLOURISH
p+~             ꝓ
P_~             Ꝕ               U+A754 LATIN CAPITAL LETTER P WITH SQUIRREL TAIL
p_~             ꝕ
Q_-             Ꝗ               U+A756 LATIN CAPITAL LETTER Q WITH STROKE THROUGH DESCENDER
q_-             ꝗ
Q+/             Ꝙ               U+A758 LATIN CAPITAL LETTER Q WITH DIAGONAL STROKE
q+/             ꝙ
&R2             Ꝛ               U+A75A LATIN CAPITAL LETTER R ROTUNDA
&r2             ꝛ
&R2+/           Ꝝ               U+A75C LATIN CAPITAL LETTER RUM ROTUNDA
&r2+/           ꝝ
&V+/            Ꝟ               U+A75E LATIN CAPITAL LETTER V WITH DIAGONAL STROKE
&v+/            ꝟ
&Vy             Ꝡ               U+A760 LATIN CAPITAL LETTER VY
&VY             Ꝡ               U+A760 LATIN CAPITAL LETTER VY
&vy             ꝡ
&Yy             Ꝡ               U+A760 LATIN CAPITAL LETTER VY
&YY             Ꝡ               U+A760 LATIN CAPITAL LETTER VY
&yy             ꝡ
&Zz             Ꝣ               U+A762 LATIN CAPITAL LETTER VISIGOTHIC Z
&ZZ             Ꝣ               U+A762 LATIN CAPITAL LETTER VISIGOTHIC Z
&zz             ꝣ
&Th+-           Ꝥ               U+A764 LATIN CAPITAL LETTER THORN WITH STROKE
&TH+-           Ꝥ               U+A764 LATIN CAPITAL LETTER THORN WITH STROKE
&th+-           ꝥ
&Th_-           Ꝧ               U+A766 LATIN CAPITAL LETTER THORN WITH STROKE THROUGH DESCENDER
&TH_-           Ꝧ               U+A766 LATIN CAPITAL LETTER THORN WITH STROKE THROUGH DESCENDER
&th_-           ꝧ
V`              Ꝩ               U+A768 LATIN CAPITAL LETTER VEND
v`              ꝩ
&Et             Ꝫ               U+A76A LATIN CAPITAL LETTER ET
&ET             Ꝫ               U+A76A LATIN CAPITAL LETTER ET
&et             ꝫ
&Is             Ꝭ               U+A76C LATIN CAPITAL LETTER IS
&IS             Ꝭ               U+A76C LATIN CAPITAL LETTER IS
&is             ꝭ
&Cn             Ꝯ               U+A76E LATIN CAPITAL LETTER CON
&CN             Ꝯ               U+A76E LATIN CAPITAL LETTER CON
&cn             ꝯ
D`              Ꝺ               U+A779 LATIN CAPITAL LETTER INSULAR D
d`              ꝺ
F`              Ꝼ               U+A77B LATIN CAPITAL LETTER INSULAR F
f`              ꝼ
G`              Ᵹ               U+A77D LATIN CAPITAL LETTER INSULAR G
g`              ᵹ
G``             Ꝿ               U+A77E LATIN CAPITAL LETTER TURNED INSULAR G
g``             ꝿ
L``             Ꞁ               U+A780 LATIN CAPITAL LETTER TURNED L
l``             ꞁ
R`              Ꞃ               U+A782 LATIN CAPITAL LETTER INSULAR R
r`              ꞃ
S`              Ꞅ               U+A784 LATIN CAPITAL LETTER INSULAR S
s`              ꞅ
T`              Ꞇ               U+A786 LATIN CAPITAL LETTER INSULAR T
t`              ꞇ
&Qs             Ꞌ               U+A78B LATIN CAPITAL LETTER SALTILLO
&QS             Ꞌ               U+A78B LATIN CAPITAL LETTER SALTILLO
&qs             ꞌ
Y``             Ɥ               U+A78D LATIN CAPITAL LETTER TURNED H
y``             ɥ
H``             Ɥ               U+A78D LATIN CAPITAL LETTER TURNED H
h``             ɥ
N_;             Ꞑ               U+A790 LATIN CAPITAL LETTER N WITH DESCENDER
n_;             ꞑ
C˗              Ꞓ               U+A792 LATIN CAPITAL LETTER C WITH BAR
c˗              ꞓ
G+/             Ꞡ               U+A7A0 LATIN CAPITAL LETTER G WITH OBLIQUE STROKE
g+/             ꞡ
K+/             Ꞣ               U+A7A2 LATIN CAPITAL LETTER K WITH OBLIQUE STROKE
k+/             ꞣ
N+/             Ꞥ               U+A7A4 LATIN CAPITAL LETTER N WITH OBLIQUE STROKE
n+/             ꞥ
R+/             Ꞧ               U+A7A6 LATIN CAPITAL LETTER R WITH OBLIQUE STROKE
r+/             ꞧ
S+/             Ꞩ               U+A7A8 LATIN CAPITAL LETTER S WITH OBLIQUE STROKE
s+/             ꞩ
H+?             Ɦ               U+A7AA LATIN CAPITAL LETTER H WITH HOOK
h+?             ɦ
i.              ı               U+0131 LATIN SMALL LETTER DOTLESS I
j.              ȷ               U+0237 LATIN SMALL LETTER DOTLESS J
$               ſ               U+017F LATIN SMALL LETTER LONG S
$.              ẛ               U+1E9B LATIN SMALL LETTER LONG S WITH DOT ABOVE
$%              ẜ               U+1E9C LATIN SMALL LETTER LONG S WITH DIAGONAL STROKE
$-              ẝ               U+1E9D LATIN SMALL LETTER LONG S WITH HIGH STROKE
&$t             ﬅ               U+FB05 LATIN SMALL LIGATURE LONG S T
