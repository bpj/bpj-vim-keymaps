" BXS to Unicode IPA keymap for Vim.
" BXS is a modification of CXS which in turn is a modification of X-SAMPA! 
" See <http://www.theiling.de/ipa/> for CXS.
"
" Maintainer: Benct Philip Jonsson <bpjonsson+bxs@gmail.com>
"
" Github: <https://github.com/bpj/vim-keymap/blob/master/keymap/bxs.vim>
"
" Changed: 14 feb 2014
"           *   Back from <char-nnn> notation to UTF-8 except for marks where
"               it doesn't work (at least it doesn't work with combining marks).
"           *   Changed 0\ to be the empty set symbol -- you can get ASCII 0
"               with "0.
"           *   Added notes on a couple of important differences from CXS.
" Changed: 2013
"           Now uses $<character> for small caps. NB that e.g. $i is ɪ
"           while $I is ᵻ and $d is ᴅ while $D is ᴆ.  Look at the bottom
"           of the file to see them.
" Changed: 9 dec 2012
"           Some bug cleanup.  Made , (comma) work for secondary
"           stress and added i\
" Changed: 13 aug 2012
"           Changed 4\` to U+F269, SIL PUA assignment for
"           LATIN SMALL LETTER TURNED R WITH LONG LEG AND HOOK
"           <http://scripts.sil.org/SILPUAassignments>
" Changed: 2 May 2012
"           Changed notation for literal ASCII characters to
"           "<character> (doublequote+character>
" Changed: 11 aug 2009
"           Changed to <Char-n> syntax.         
"           Added codes and names where the Unicode::UCD Perl module knew them.
" Changed: 6 aug 2009
"           Changed BXS notation for superscript letters
"           from $<letter> to _$<letter>, which latter
"           thus becomes a consistent notantion for
"           superscript letters, though old notations like
"           _h _j _l also remain available, while
"           $_<letter> becomes the notation for spacing
"           modifier letters as alternatives to combining
"           diacritics like $_c .           Now one can also type a
"           literal $ whithout gymnastics!         This change
"           also makes the notation here consistent with
"           that in my Perl BXS converter.
"           I also added `\ to allow typing an actual backtick 
"           without changing keymaps or hitting Esc.
"
" NOTES: important differences from CXS 
" =====================================

" (If you discover any differences -- as opposed to additions -- which
" I have missed to note please drop me a note by email or in the Github
" issue tracker!)
"
" ------------------------------------------------------------------------------
" Char  CXS     BXS     because
" ----- ------- ------- --------------------------------------------------------
" ɺ     l\      4\      see ȴ
"
" ȴ     n/a     l\      because ɪ want to be able to use the non˗IPA (why?)
"                       ȶ ȡ ȵ ȴ for alveopalatal consonants beside ɕ ʑ
"                       and since the latter are s\ z\ I naturally
"                       wanted to assign t\ d\ n\ l\ to them.  Because
"                       of Sohlob these see a lot more use by me than ɺ
"                       and I wanted a simple and consistent mapping for
"                       them.  I guess I could have assigned the whole
"                       ȶ ȡ ȵ ȴ ɕ ʑ gang to t; d; n; l; s; z; since
"                       there is always _j for ʲ and although I'm now
"                       used to t\ etc. I might do that and change l\
"                       back to ɺ if that mapping is important to
"                       someone.
"
" ɸ     p\      P       because that's what I always think it is anyway,
"                       based on the analogy of B for β anyway.  There is
"                       of course v\ for ʋ, and p\ for ɸ is still there too!
" ------------------------------------------------------------------------------


let b:keymap_name = "BXS"
scriptencoding utf8
hi lCursor guibg=blue guifg=blue

loadkeymap
" May need to type any [^a-z] ASCII char as itself sometime...
\"!             !
\"\"            \"
\"#             #
\"$             $
\"%             %
\"&             &
\"'             '
\"(             (
\")             )
\"*             *
\"+             +
\",             ,
\"-             -
\".             .
\"/             /
\"0             0
\"1             1
\"2             2
\"3             3
\"4             4
\"5             5
\"6             6
\"7             7
\"8             8
\"9             9
\":             :
\";             ;
\"<             <
\"=             =
\">             >
\"?             ?
\"@             @
\"A             A
\"B             B
\"C             C
\"D             D
\"E             E
\"F             F
\"G             G
\"H             H
\"I             I
\"J             J
\"K             K
\"L             L
\"M             M
\"N             N
\"O             O
\"P             P
\"Q             Q
\"R             R
\"S             S
\"T             T
\"U             U
\"V             V
\"W             W
\"X             X
\"Y             Y
\"Z             Z
\"[             [
\"\\            \\
\"]             ]
\"^             ^
\"_             _
\"`             `
\"{             {
\"|             |
\"}             }
\"~             ~
" Need to type zero in phono rules...
0\\             ∅               U+2205 EMPTY SET
" Convenience mapping
`\\             `               U+0060 GRAVE ACCENT

!               ↓               U+2193 DOWNWARDS ARROW
!\\             ǃ               U+01C3 LATIN LETTER RETROFLEX CLICK
" BXS addition, quasi ɾ with retroflex hook.
4`              ʗ               U+0297 LATIN LETTER STRETCHED C
\"              ˌ               U+02CC MODIFIER LETTER LOW VERTICAL LINE
%               ˌ               U+02CC MODIFIER LETTER LOW VERTICAL LINE
&               æ               U+00E6 LATIN SMALL LETTER AE
&\\             ɶ               U+0276 LATIN LETTER SMALL CAPITAL OE
" BXS addition
9\\             ʚ               U+029A LATIN SMALL LETTER CLOSED OPEN E
'               ˈ               U+02C8 MODIFIER LETTER VERTICAL LINE
(\\             <Char-0x0306>   U+0306 COMBINING BREVE
" BXS addition
(               (               U+0028 LEFT PARENTHESIS
" BXS addition
)               )               U+0029 RIGHT PARENTHESIS
,               ˌ               U+02CC MODIFIER LETTER LOW VERTICAL LINE
" ,             ,               U+002C COMMA
-\\             ‿               U+203F UNDERTIE
._d_d           ʭ               U+02AD LATIN LETTER BIDENTAL PERCUSSIVE
._w_w           ʬ               U+02AC LATIN LETTER BILABIAL PERCUSSIVE
1               ɨ               U+0268 LATIN SMALL LETTER I WITH STROKE
i\\             ɨ               U+0268 LATIN SMALL LETTER I WITH STROKE
2               ø               U+00F8 LATIN SMALL LETTER O WITH STROKE
3               ɜ               U+025C LATIN SMALL LETTER REVERSED OPEN E
3\\             ɞ               U+025E LATIN SMALL LETTER CLOSED REVERSED OPEN E
3`              ɝ               U+025D LATIN SMALL LETTER REVERSED OPEN E WITH HOOK
4               ɾ               U+027E LATIN SMALL LETTER R WITH FISHHOOK
" BXS change/addition
4\\             ɺ               U+027A LATIN SMALL LETTER TURNED R WITH LONG LEG
" BXS addition. Important to me as it's found in Swedish dialects!
4\\`            <Char-0xf269>   U+F269 (SIL PUA) LATIN SMALL LETTER TURNED R WITH LONG LEG AND HOOK
5               ɫ               U+026B LATIN SMALL LETTER L WITH MIDDLE TILDE
6               ɐ               U+0250 LATIN SMALL LETTER TURNED A
7               ɤ               U+0264 LATIN SMALL LETTER RAMS HORN
8               ɵ               U+0275 LATIN SMALL LETTER BARRED O
" BXS shorthand.                Needed for Swedish dialects.
" Should probably really be     U+0289 + U+031F + U+1DB9
8\\             ɵ<Char-0x031f>  U+0275 LATIN SMALL LETTER BARRED O, U+031F COMBINING PLUS SIGN BELOW
9               œ               U+0153 LATIN SMALL LIGATURE OE
:               ː               U+02D0 MODIFIER LETTER TRIANGULAR COLON
:\\             ˑ               U+02D1 MODIFIER LETTER HALF TRIANGULAR COLON
:\\\\           :
;               ʲ               U+02B2 MODIFIER LETTER SMALL J
;\\             ;
<\\             ʢ               U+02A2 LATIN LETTER REVERSED GLOTTAL STOP WITH STROKE
<F>             ↘               U+2198 SOUTH EAST ARROW
<R>             ↗               U+2197 NORTH EAST ARROW
" BXS change/addition
_=              <Char-0x030d>   U+030D COMBINING VERTICAL LINE ABOVE
=               <Char-0x0329>   U+0329 COMBINING VERTICAL LINE BELOW
=\\             ǂ               U+01C2 LATIN LETTER ALVEOLAR CLICK
>\\             ʡ               U+02A1 LATIN LETTER GLOTTAL STOP WITH STROKE
?               ʔ               U+0294 LATIN LETTER GLOTTAL STOP
?\\             ʕ               U+0295 LATIN LETTER PHARYNGEAL VOICED FRICATIVE
???             ?
@               ə               U+0259 LATIN SMALL LETTER SCHWA
@\\             ɘ               U+0258 LATIN SMALL LETTER REVERSED E
@`              ɚ               U+025A LATIN SMALL LETTER SCHWA WITH HOOK
^               ↑               U+2191 UPWARDS ARROW
_}              <Char-0x031a>   U+031A COMBINING LEFT ANGLE ABOVE
)\\             <Char-0x0361>   U+0361 COMBINING DOUBLE INVERTED BREVE
_\"             <Char-0x0308>   U+0308 COMBINING DIAERESIS
" The whole notation with _$ before a symbol to
" indicate a superscript is a BXS addition
_$&             ᵆ               U+1D46 MODIFIER LETTER SMALL TURNED AE
_$3             ᵌ               U+1D4C MODIFIER LETTER SMALL TURNED OPEN E
_$6             ᵄ               U+1D44 MODIFIER LETTER SMALL TURNED A
_$8             ᶱ               U+1DB1 MODIFIER LETTER SMALL BARRED O
_$?\\           ˤ               U+02E4 MODIFIER LETTER SMALL REVERSED GLOTTAL STOP
_$@             ᵊ               U+1D4A MODIFIER LETTER SMALL SCHWA
_$a             ᵃ               U+1D43 MODIFIER LETTER SMALL A
_$A             ᵅ               U+1D45 MODIFIER LETTER SMALL ALPHA
_$b             ᵇ               U+1D47 MODIFIER LETTER SMALL B
_$B             ᵝ               U+1D5D MODIFIER LETTER SMALL BETA
_$c             ᶜ               U+1D9C MODIFIER LETTER SMALL C
_$d             ᵈ               U+1D48 MODIFIER LETTER SMALL D
_$D             ᶞ               U+1D9E MODIFIER LETTER SMALL ETH
_$e             ᵉ               U+1D49 MODIFIER LETTER SMALL E
_$E             ᵋ               U+1D4B MODIFIER LETTER SMALL OPEN E
_$f             ᶠ               U+1DA0 MODIFIER LETTER SMALL F
_$G             ˠ               U+02E0 MODIFIER LETTER SMALL GAMMA
_$g             ᵍ               U+1D4D MODIFIER LETTER SMALL G
_$g\\           ᶢ               U+1DA2 MODIFIER LETTER SMALL SCRIPT G
_$h             ʰ               U+02B0 MODIFIER LETTER SMALL H
_$H             ᶣ               U+1DA3 MODIFIER LETTER SMALL TURNED H
_$h\\           ʱ               U+02B1 MODIFIER LETTER SMALL H WITH HOOK
_$I             ᶦ               U+1DA6 MODIFIER LETTER SMALL CAPITAL I
_$i             ⁱ               U+2071 SUPERSCRIPT LATIN SMALL LETTER I
_$i\\           ᶤ               U+1DA4 MODIFIER LETTER SMALL I WITH STROKE
_$I\\           ᶧ               U+1DA7 MODIFIER LETTER SMALL CAPITAL I WITH STROKE
" _$j           ʲ               U+02B2 MODIFIER LETTER SMALL J
_$j             <Char-0x2c7c>   U+2C7C LATIN SUBSCRIPT SMALL LETTER J
_$J             ᶮ               U+1DAE MODIFIER LETTER SMALL N WITH LEFT HOOK
_$J\\           ᶡ               U+1DA1 MODIFIER LETTER SMALL DOTLESS J WITH STROKE
_$j\\           ᶨ               U+1DA8 MODIFIER LETTER SMALL J WITH CROSSED-TAIL
_$k             ᵏ               U+1D4F MODIFIER LETTER SMALL K
_$l             ˡ               U+02E1 MODIFIER LETTER SMALL L
_$\"L           ᶫ               U+1DAB MODIFIER LETTER SMALL CAPITAL L
_$l`            ᶩ               U+1DA9 MODIFIER LETTER SMALL L WITH RETROFLEX HOOK
_$m             ᵐ               U+1D50 MODIFIER LETTER SMALL M
_$M             ᵚ               U+1D5A MODIFIER LETTER SMALL TURNED M
_$m\\           ᶭ               U+1DAD MODIFIER LETTER SMALL TURNED M WITH LONG LEG
_$N             ᵑ               U+1D51 MODIFIER LETTER SMALL ENG
_$n             ⁿ               U+207F SUPERSCRIPT LATIN SMALL LETTER N
_$N\\           ᶰ               U+1DB0 MODIFIER LETTER SMALL CAPITAL N
_$n`            ᶯ               U+1DAF MODIFIER LETTER SMALL N WITH RETROFLEX HOOK
_$o             ᵒ               U+1D52 MODIFIER LETTER SMALL O
_$O             ᵓ               U+1D53 MODIFIER LETTER SMALL OPEN O
_$p             ᵖ               U+1D56 MODIFIER LETTER SMALL P
_$P             ᶲ               U+1DB2 MODIFIER LETTER SMALL PHI
_$Q             ᶛ               U+1D9B MODIFIER LETTER SMALL TURNED ALPHA
_$r             ʳ               U+02B3 MODIFIER LETTER SMALL R
_$R             ʶ               U+02B6 MODIFIER LETTER SMALL CAPITAL INVERTED R
_$r\\           ʴ               U+02B4 MODIFIER LETTER SMALL TURNED R
_$r\\`          ʵ               U+02B5 MODIFIER LETTER SMALL TURNED R WITH HOOK
_$s             ˢ               U+02E2 MODIFIER LETTER SMALL S
_$S             ᶴ               U+1DB4 MODIFIER LETTER SMALL ESH
_$s\\           ᶝ               U+1D9D MODIFIER LETTER SMALL C WITH CURL
_$s`            ᶳ               U+1DB3 MODIFIER LETTER SMALL S WITH HOOK
_$t             ᵗ               U+1D57 MODIFIER LETTER SMALL T
_$T             ᶿ               U+1DBF MODIFIER LETTER SMALL THETA
_$u             ᵘ               U+1D58 MODIFIER LETTER SMALL U
_$U             ᶷ               U+1DB7 MODIFIER LETTER SMALL UPSILON
_$u\\           ᶶ               U+1DB6 MODIFIER LETTER SMALL U BAR
_$v             ᵛ               U+1D5B MODIFIER LETTER SMALL V
_$V             ᶺ               U+1DBA MODIFIER LETTER SMALL TURNED V
_$v\\           ᶹ               U+1DB9 MODIFIER LETTER SMALL V WITH HOOK
_$w             ʷ               U+02B7 MODIFIER LETTER SMALL W
_$x             ˣ               U+02E3 MODIFIER LETTER SMALL X
_$X             ᵡ               U+1D61 MODIFIER LETTER SMALL CHI
_$y             ʸ               U+02B8 MODIFIER LETTER SMALL Y
_$z             ᶻ               U+1DBB MODIFIER LETTER SMALL Z
_$Z             ᶾ               U+1DBE MODIFIER LETTER SMALL EZH
_$z\\           ᶽ               U+1DBD MODIFIER LETTER SMALL Z WITH CURL
_$z`            ᶼ               U+1DBC MODIFIER LETTER SMALL Z WITH RETROFLEX HOOK
+               ˖               U+02D6 MODIFIER LETTER PLUS SIGN
_+              <Char-0x031f>   U+031F COMBINING PLUS SIGN BELOW
-               ˗               U+02D7 MODIFIER LETTER MINUS SIGN
_-              <Char-0x0320>   U+0320 COMBINING MINUS SIGN BELOW
_0              <Char-0x030a>   U+030A COMBINING RING ABOVE
0               <Char-0x0325>   U+0325 COMBINING RING BELOW
_>              ʼ               U+02BC MODIFIER LETTER APOSTROPHE
_?              ˀ               U+02C0 MODIFIER LETTER GLOTTAL STOP
_$?             ˀ               U+02C0 MODIFIER LETTER GLOTTAL STOP
_?\\            ˤ               U+02E4 MODIFIER LETTER SMALL REVERSED GLOTTAL STOP
_\\             _               U+005F LOW LINE
_^              <Char-0x032f>   U+032F COMBINING INVERTED BREVE BELOW
" BXS addition
_(              <Char-0x032f>   U+032F COMBINING INVERTED BREVE BELOW
_A              <Char-0x0318>   U+0318 COMBINING LEFT TACK BELOW
_a              <Char-0x033a>   U+033A COMBINING INVERTED BRIDGE BELOW
_B              <Char-0x030f>   U+030F COMBINING DOUBLE GRAVE ACCENT
_B_L            ˏ               U+02CF MODIFIER LETTER LOW ACUTE ACCENT
" BXS addition
$_c             ˓               U+02D3 MODIFIER LETTER CENTRED LEFT HALF RING
_c              <Char-0x031c>   U+031C COMBINING LEFT HALF RING BELOW
_d              <Char-0x032a>   U+032A COMBINING BRIDGE BELOW
_e              <Char-0x0334>   U+0334 COMBINING TILDE OVERLAY
_F              <Char-0x0302>   U+0302 COMBINING CIRCUMFLEX ACCENT
_F_R            ˇ               U+02C7 CARON
_G              ˠ               U+02E0 MODIFIER LETTER SMALL GAMMA
_h              ʰ               U+02B0 MODIFIER LETTER SMALL H
_H              <Char-0x0301>   U+0301 COMBINING ACUTE ACCENT
_j              ʲ               U+02B2 MODIFIER LETTER SMALL J
_y              ʸ               U+02B8 MODIFIER LETTER SMALL Y
_;              <Char-0x0321>   U+0321 COMBINING PALATALIZED HOOK BELOW
_k              <Char-0x0330>   U+0330 COMBINING TILDE BELOW
_l              ˡ               U+02E1 MODIFIER LETTER SMALL L
_L              <Char-0x0300>   U+0300 COMBINING GRAVE ACCENT
_L_B            ˎ               U+02CE MODIFIER LETTER LOW GRAVE ACCENT
_M              <Char-0x0304>   U+0304 COMBINING MACRON
_m              <Char-0x033b>   U+033B COMBINING SQUARE BELOW
_N              <Char-0x033c>   U+033C COMBINING SEAGULL BELOW
_n              ⁿ               U+207F SUPERSCRIPT LATIN SMALL LETTER N
$_O             ˒               U+02D2 MODIFIER LETTER CENTRED RIGHT HALF RING
" BXS addition
$_o             ˕               U+02D5 MODIFIER LETTER DOWN TACK
_o              <Char-0x031e>   U+031E COMBINING DOWN TACK BELOW
_O              <Char-0x0339>   U+0339 COMBINING RIGHT HALF RING BELOW
_q              <Char-0x0319>   U+0319 COMBINING RIGHT TACK BELOW
" BXS addition
$_r             ˔               U+02D4 MODIFIER LETTER UP TACK
_R              <Char-0x030c>   U+030C COMBINING CARON
_r              <Char-0x031d>   U+031D COMBINING UP TACK BELOW
" BXS addition
_h\\            ʱ               U+02B1 MODIFIER LETTER SMALL H WITH HOOK
_T              <Char-0x030b>   U+030B COMBINING DOUBLE ACUTE ACCENT
_t              <Char-0x0324>   U+0324 COMBINING DIAERESIS BELOW
_v              <Char-0x032c>   U+032C COMBINING CARON BELOW
" BXS addition. Used for compressed rounding
" contrasting with _w for protruded rounding in Swedish
_v\\            ᶹ               U+1DB9 MODIFIER LETTER SMALL V WITH HOOK
" $M            ꟺ               "LATIN LETTER SMALL CAPITAL TURNED M
_w              ʷ               U+02B7 MODIFIER LETTER SMALL W
" BXS addition
_W              <Char-0x032b>   U+032B COMBINING INVERTED DOUBLE ARCH BELOW
_X              <Char-0x0306>   U+0306 COMBINING BREVE
_x              <Char-0x033d>   U+033D COMBINING X ABOVE
$`              ˞               U+02DE MODIFIER LETTER RHOTIC HOOK
`               <Char-0x0322>   U+0322 COMBINING RETROFLEX HOOK BELOW
_`              <Char-0x0322>   U+0322 COMBINING RETROFLEX HOOK BELOW
A               ɑ               U+0251 LATIN SMALL LETTER ALPHA
" BXS addition
b\\             ƀ               U+0180 LATIN SMALL LETTER B WITH STROKE
B               β               U+03B2 GREEK SMALL LETTER BETA
B\\             ʙ               U+0299 LATIN LETTER SMALL CAPITAL B
b_<             ɓ               U+0253 LATIN SMALL LETTER B WITH HOOK
C               ç               U+00E7 LATIN SMALL LETTER C WITH CEDILLA
C\\             C               U+0043 LATIN CAPITAL LETTER C
" BXS addition
" c\\           ɕ               U+0255 LATIN SMALL LETTER C WITH CURL
c\\             <Char-0x25cc>   U+25CC DOTTED CIRCLE
" S\\           <Char-0x21e7>   U+21E7 UPWARDS WHITE ARROW : shift
D               ð               U+00F0 LATIN SMALL LETTER ETH
" BXS addition
d\\             ȡ               U+0221 LATIN SMALL LETTER D WITH CURL
" BXS addition
D\\             ᴆ               U+1D06 LATIN LETTER SMALL CAPITAL ETH
d_<             ɗ               U+0257 LATIN SMALL LETTER D WITH HOOK
d_b             ȸ               U+0238 LATIN SMALL LETTER DB DIGRAPH
d_z             ʣ               U+02A3 LATIN SMALL LETTER DZ DIGRAPH
d_Z             ʤ               U+02A4 LATIN SMALL LETTER DEZH DIGRAPH
d_z\\           ʥ               U+02A5 LATIN SMALL LETTER DZ DIGRAPH WITH CURL
d`              ɖ               U+0256 LATIN SMALL LETTER D WITH TAIL
E               ɛ               U+025B LATIN SMALL LETTER OPEN E
F               ɱ               U+0271 LATIN SMALL LETTER M WITH HOOK
" BXS addition
m\\             ɱ               U+0271 LATIN SMALL LETTER M WITH HOOK
" BXS addition
F\\             ⱱ               U+              f_N             ʩ               U+02A9 LATIN SMALL LETTER FENG DIGRAPH
G               ɣ               U+0263 LATIN SMALL LETTER GAMMA
g\\             ǥ               U+01E5 LATIN SMALL LETTER G WITH STROKE
g\\\\           ɡ               U+0261 LATIN SMALL LETTER SCRIPT G
G\\             ɢ               U+0262 LATIN LETTER SMALL CAPITAL G
G\\_<           ʛ               U+029B LATIN LETTER SMALL CAPITAL G WITH HOOK
g_<             ɠ               U+0260 LATIN SMALL LETTER G WITH HOOK
H               ɥ               U+0265 LATIN SMALL LETTER TURNED H
h\\             ɦ               U+0266 LATIN SMALL LETTER H WITH HOOK
H\\             ʜ               U+029C LATIN LETTER SMALL CAPITAL H
I               ɪ               U+026A LATIN LETTER SMALL CAPITAL I
I\\             ᵻ               U+1D7B LATIN SMALL CAPITAL LETTER I WITH STROKE
J               ɲ               U+0272 LATIN SMALL LETTER N WITH LEFT HOOK
J\\             ɟ               U+025F LATIN SMALL LETTER DOTLESS J WITH STROKE
j\\             ʝ               U+029D LATIN SMALL LETTER J WITH CROSSED-TAIL
J\\_<           ʄ               U+0284 LATIN SMALL LETTER DOTLESS J WITH STROKE AND HOOK
K               ɬ               U+026C LATIN SMALL LETTER L WITH BELT
K\\             ɮ               U+026E LATIN SMALL LETTER LEZH
L               ʎ               U+028E LATIN SMALL LETTER TURNED Y
" BXS change
l\\             ȴ               U+0234 LATIN SMALL LETTER L WITH CURL
"l\\            ɺ               U+027A LATIN SMALL LETTER TURNED R WITH LONG LEG
L\\             ʟ               U+029F LAT$M    ꟺ               "LATIN LETTER SMALL CAPITAL TURNED MIN LETTER SMALL CAPITAL L
l_e             ɫ               U+026B LATIN SMALL LETTER L WITH MIDDLE TILDE
l_s             ʪ               U+02AA LATIN SMALL LETTER LS DIGRAPH
l_z             ʫ               U+02AB LATIN SMALL LETTER LZ DIGRAPH
l`              ɭ               U+026D LATIN SMALL LETTER L WITH RETROFLEX HOOK
M               ɯ               U+026F LATIN SMALL LETTER TURNED M
M\\             ɰ               U+0270 LATIN SMALL LETTER TURNED M WITH LONG LEG
N               ŋ               U+014B LATIN SMALL LETTER ENG
" BXS‑addition
n\\             ȵ               U+0235 LATIN SMALL LETTER N WITH CURL
N\\             ɴ               U+0274 LATIN LETTER SMALL CAPITAL N
n`              ɳ               U+0273 LATIN SMALL LETTER N WITH RETROFLEX HOOK
n_n             ƞ               U+019E LATIN SMALL LETTER N WITH LONG RIGHT LEG
O               ɔ               U+0254 LATIN SMALL LETTER OPEN O
O\\             ʘ               U+0298 LATIN LETTER BILABIAL CLICK
" BXS addition
P\\             ʘ               U+0298 LATIN LETTER BILABIAL CLICK
" BXS change/CXS alternate
P               ɸ               U+0278 LATIN SMALL LETTER PHI
p\\             ɸ               U+0278 LATIN SMALL LETTER PHI
p_<             ƥ               U+01A5 LATIN SMALL LETTER P WITH HOOK
Q               ɒ               U+0252 LATIN SMALL LETTER TURNED ALPHA
" BXS addition
q\\             ƣ               U+01A3 LATIN SMALL LETTER OI
q_<             ʠ               U+02A0 LATIN SMALL LETTER Q WITH HOOK
q_p             ȹ               U+0239 LATIN SMALL LETTER QP DIGRAPH
R               ʁ               U+0281 LATIN LETTER SMALL CAPITAL INVERTED R
r\\             ɹ               U+0279 LATIN SMALL LETTER TURNED R
R\\             ʀ               U+0280 LATIN LETTER SMALL CAPITAL R
r\\_r           ɼ               U+027C LATIN SMALL LETTER R WITH LONG LEG
r\\`            ɻ               U+027B LATIN SMALL LETTER TURNED R WITH HOOK
r`              ɽ               U+027D LATIN SMALL LETTER R WITH TAIL
S               ʃ               U+0283 LATIN SMALL LETTER ESH
s\\             ɕ               U+0255 LATIN SMALL LETTER C WITH CURL
S_j;            ʆ               U+0286 LATIN SMALL LETTER ESH WITH CURL
s`              ʂ               U+0282 LATIN SMALL LETTER S WITH HOOK
T               θ               U+03B8 GREEK SMALL LETTER THETA
t\\             ȶ               U+0236 LATIN SMALL LETTER T WITH CURL
t_<             ƭ               U+01AD LATIN SMALL LETTER T WITH HOOK
t_;             ƫ               U+01AB LATIN SMALL LETTER T WITH PALATAL HOOK
t_s             ʦ               U+02A6 LATIN SMALL LETTER TS DIGRAPH
t_S             ʧ               U+02A7 LATIN SMALL LETTER TESH DIGRAPH
t_s\\           ʨ               U+02A8 LATIN SMALL LETTER TC DIGRAPH WITH CURL
t`              ʈ               U+0288 LATIN SMALL LETTER T WITH RETROFLEX HOOK
" BXS addition
U_w             ɷ               U+0277 LATIN SMALL LETTER CLOSED OMEGA
" BXS addition
u\_w            ω               U+03C9 GREEK SMALL LETTER OMEGA
U               ʊ               U+028A LATIN SMALL LETTER UPSILON
u\\             ʉ               U+0289 LATIN SMALL LETTER U BAR
U\\             ᵿ               U+1D7F LATIN SMALL LETTER UPSILON WITH STROKE
V               ʌ               U+028C LATIN SMALL LETTER TURNED V
V\\             V               U+0056 LATIN CAPITAL LETTER V
v\\             ʋ               U+028B LATIN SMALL LETTER V WITH HOOK
W               ʍ               U+028D LATIN SMALL LETTER TURNED W

w\\             ψ               U+03C8 GREEK SMALL LETTER PSI
X               χ               U+03C7 GREEK SMALL LETTER CHI
X\\             ħ               U+0127 LATIN SMALL LETTER H WITH STROKE
x\\             ɧ               U+0267 LATIN SMALL LETTER HENG WITH HOOK
Y               ʏ               U+028F LATIN LETTER SMALL CAPITAL Y
Z               ʒ               U+0292 LATIN SMALL LETTER EZH
" BXS addition
i_z             ɿ               U+027F LATIN SMALL LETTER REVERSED R WITH FISHHOOK
z\\             ʑ               U+0291 LATIN SMALL LETTER Z WITH CURL
Z_j             ʓ               U+0293 LATIN SMALL LETTER EZH WITH CURL
z`              ʐ               U+0290 LATIN SMALL LETTER Z WITH RETROFLEX HOOK
" BXS addition
i`              ʅ               U+0285 LATIN SMALL LETTER SQUAT REVERSED ESH
|\\             ǀ               U+01C0 LATIN LETTER DENTAL CLICK
|\\|\\          ǁ               U+01C1 LATIN LETTER LATERAL CLICK
||              ‖               U+2016 DOUBLE VERTICAL LINE
~               <Char-0x0303>   U+0303 COMBINING TILDE
_~              <Char-0x0328>   U+0328 COMBINING OGONEK
~\\             ~               U+007E TILDE
__              <Char-0x034f>   U+034F COMBINING GRAPHEME JOINER

$a              ᴀ               "U+1D00 LATIN LETTER SMALL CAPITAL A
$b              ʙ               "U+0299 LATIN LETTER SMALL CAPITAL B
$c              ᴄ               "U+1D04 LATIN LETTER SMALL CAPITAL C
$d              ᴅ               "U+1D05 LATIN LETTER SMALL CAPITAL D
$e              ᴇ               "U+1D07 LATIN LETTER SMALL CAPITAL E
$f              ꜰ               "U+A730 LATIN LETTER SMALL CAPITAL F
$g              ɢ               "U+0262 LATIN LETTER SMALL CAPITAL G
$h              ʜ               "U+029C LATIN LETTER SMALL CAPITAL H
$i              ɪ               "U+026A LATIN LETTER SMALL CAPITAL I
$j              ᴊ               "U+1D0A LATIN LETTER SMALL CAPITAL J
$k              ᴋ               "U+1D0B LATIN LETTER SMALL CAPITAL K
$l              ʟ               "U+029F LATIN LETTER SMALL CAPITAL L
$m              ᴍ               "U+1D0D LATIN LETTER SMALL CAPITAL M
$n              ɴ               "U+0274 LATIN LETTER SMALL CAPITAL N
$o              ᴏ               "U+1D0F LATIN LETTER SMALL CAPITAL O
$p              ᴘ               "U+1D18 LATIN LETTER SMALL CAPITAL P
$r              ʀ               "U+0280 LATIN LETTER SMALL CAPITAL R
$s              ꜱ               "U+A731 LATIN LETTER SMALL CAPITAL S
$t              ᴛ               "U+1D1B LATIN LETTER SMALL CAPITAL T
$u              ᴜ               "U+1D1C LATIN LETTER SMALL CAPITAL U
$v              ᴠ               "U+1D20 LATIN LETTER SMALL CAPITAL V
$w              ᴡ               "U+1D21 LATIN LETTER SMALL CAPITAL W
$y              ʏ               "U+028F LATIN LETTER SMALL CAPITAL Y
$z              ᴢ               "U+1D22 LATIN LETTER SMALL CAPITAL Z
$9              ɶ               "U+0009 LATIN LETTER SMALL CAPITAL OE
$R              ʁ               "U+0281 LATIN LETTER SMALL CAPITAL INVERTED R
$g_>            ʛ               "U+029B LATIN LETTER SMALL CAPITAL G WITH HOOK
$@              ⱻ               "U+2C7B LATIN LETTER SMALL CAPITAL TURNED E
$&              ᴁ               "U+1D01 LATIN LETTER SMALL CAPITAL AE
$B              ᴃ               "U+1D03 LATIN LETTER SMALL CAPITAL BARRED B
$D              ᴆ               "U+1D06 LATIN LETTER SMALL CAPITAL ETH
$L              ᴌ               "U+1D0C LATIN LETTER SMALL CAPITAL L WITH STROKE
$N              ᴎ               "U+1D0E LATIN LETTER SMALL CAPITAL REVERSED N
$O              ᴐ               "U+1D10 LATIN LETTER SMALL CAPITAL OPEN O
$8              ᴕ               "U+0008 LATIN LETTER SMALL CAPITAL OU
$R\\            ᴙ               "U+1D19 LATIN LETTER SMALL CAPITAL REVERSED R
$r\\            ᴚ               "U+1D1A LATIN LETTER SMALL CAPITAL TURNED R
$Z\\            ᴣ               "U+1D23 LATIN LETTER SMALL CAPITAL EZH
$G              ᴦ               "U+1D26 GREEK LETTER SMALL CAPITAL GAMMA
$L\\            ᴧ               "U+1D27 GREEK LETTER SMALL CAPITAL LAMDA
$p\\            ᴨ               "U+1D28 GREEK LETTER SMALL CAPITAL PI
$P\\            ᴩ               "U+1D29 GREEK LETTER SMALL CAPITAL RHO
$P              ᴪ               "U+1D2A GREEK LETTER SMALL CAPITAL PSI
$l\\            ᴫ               "U+1D2B CYRILLIC LETTER SMALL CAPITAL EL
$I              ᵻ               "U+1D7B LATIN SMALL CAPITAL LETTER I WITH STROKE
$U              ᵾ               "U+1D7E LATIN SMALL CAPITAL LETTER U WITH STROKE
" $R\\          ꝶ               "U+A776 LATIN LETTER SMALL CAPITAL RUM
" $M            ꟺ               "U+A7FA LATIN LETTER SMALL CAPITAL TURNED M
$g\\            г               U+0433 CYRILLIC SMALL LETTER GHE
$k\\            к               U+043A CYRILLIC SMALL LETTER KA
