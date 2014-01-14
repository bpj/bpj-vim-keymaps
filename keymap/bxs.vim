" BXS to Unicode IPA keymap.
" BXS is a modification of CXS which in turn is a
" modification of X-SAMPA! 
" See <http://www.theiling.de/ipa/> for CXS.
"
" Maintainer: Benct Philip Jonsson <bpjonsson+bxs@gmail.com>
"
"Changed: 9 dec 2012
"           Some bug cleanup.  Made , (comma) work for secondary
"           stress and added i\
"Changed: 13 aug 2012
"           Changed 4\` to U+F269, SIL PUA assignment for
"           LATIN SMALL LETTER TURNED R WITH LONG LEG AND HOOK
"           <http://scripts.sil.org/SILPUAassignments>
"Changed: 2 May 2012
"           Changed notation for literal ASCII characters to
"           "<character> (doublequote+character>
"Changed: 11 aug 2009
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
"
"           I also added `\ to allow typing an actual backtick 
"           without changing keymaps or hitting Esc.

let b:keymap_name = "BXS"
scriptencoding utf8
hi lCursor guibg=blue guifg=blue

loadkeymap
" May need to type any [^a-z] ASCII char as itself sometime...
\"!         !
\"\"            \"
\"#         #
\"$         $
\"%         %
\"&         &
\"'         '
\"(         (
\")         )
\"*         *
\"+         +
\",         ,
\"-         -
\".         .
\"/         /
\"0         0
\"1         1
\"2         2
\"3         3
\"4         4
\"5         5
\"6         6
\"7         7
\"8         8
\"9         9
\":         :
\";         ;
\"<         <
\"=         =
\">         >
\"?         ?
\"@         @
\"A         A
\"B         B
\"C         C
\"D         D
\"E         E
\"F         F
\"G         G
\"H         H
\"I         I
\"J         J
\"K         K
\"L         L
\"M         M
\"N         N
\"O         O
\"P         P
\"Q         Q
\"R         R
\"S         S
\"T         T
\"U         U
\"V         V
\"W         W
\"X         X
\"Y         Y
\"Z         Z
\"[         [
\"\\            \\
\"]         ]
\"^         ^
\"_         _
\"`         `
\"{         {
\"|         |
\"}         }
\"~         ~
" Need to type zero in phono rules...
0\\         0
" Convenience mapping
`\\         <Char-96>           U+0060 GRAVE ACCENT

!           <Char-8595>         U+2193 DOWNWARDS ARROW
!\\         <Char-451>          U+01C3 LATIN LETTER RETROFLEX CLICK
" BXS addition, quasi ɾ with retroflex hook.
4`          <Char-663>          U+0297 LATIN LETTER STRETCHED C
\"          <Char-716>          U+02CC MODIFIER LETTER LOW VERTICAL LINE
%           <Char-716>          U+02CC MODIFIER LETTER LOW VERTICAL LINE
&           <Char-230>          U+00E6 LATIN SMALL LETTER AE
&\\         <Char-630>          U+0276 LATIN LETTER SMALL CAPITAL OE
" BXS addition
9\\         <Char-666>          U+029A LATIN SMALL LETTER CLOSED OPEN E
'           <Char-712>          U+02C8 MODIFIER LETTER VERTICAL LINE
(\\         <Char-774>          U+0306 COMBINING BREVE
" BXS addition
(           <Char-40>           U+0028 LEFT PARENTHESIS
" BXS addition
)           <Char-41>           U+0029 RIGHT PARENTHESIS
,           <Char-716>          U+02CC MODIFIER LETTER LOW VERTICAL LINE
" ,           <Char-44>           U+002C COMMA
-\\         <Char-8255>         U+203F UNDERTIE
._d_d           <Char-685>          U+02AD LATIN LETTER BIDENTAL PERCUSSIVE
._w_w           <Char-684>          U+02AC LATIN LETTER BILABIAL PERCUSSIVE
1           <Char-616>          U+0268 LATIN SMALL LETTER I WITH STROKE
i\\         <Char-616>          U+0268 LATIN SMALL LETTER I WITH STROKE
2           <Char-248>          U+00F8 LATIN SMALL LETTER O WITH STROKE
3           <Char-604>          U+025C LATIN SMALL LETTER REVERSED OPEN E
3\\         <Char-606>          U+025E LATIN SMALL LETTER CLOSED REVERSED OPEN E
3`          <Char-605>          U+025D LATIN SMALL LETTER REVERSED OPEN E WITH HOOK
4           <Char-638>          U+027E LATIN SMALL LETTER R WITH FISHHOOK
" BXS change/addition
4\\         <Char-634>          U+027A LATIN SMALL LETTER TURNED R WITH LONG LEG
" BXS addition.  Important to me as it's found in Swedish dialects!
4\\`            <Char-0xf269>   U+F269 (SIL PUA) LATIN SMALL LETTER TURNED R WITH LONG LEG AND HOOK 
5           <Char-619>          U+026B LATIN SMALL LETTER L WITH MIDDLE TILDE
6           <Char-592>          U+0250 LATIN SMALL LETTER TURNED A
7           <Char-612>          U+0264 LATIN SMALL LETTER RAMS HORN
8           <Char-629>          U+0275 LATIN SMALL LETTER BARRED O
" BXS shorthand.  Needed for Swedish dialects.
" Should probably really be  U+0289 + U+031F + U+1DB9
8\\         <Char-629><Char-799>            U+0275 LATIN SMALL LETTER BARRED O, U+031F COMBINING PLUS SIGN BELOW
9           <Char-339>          U+0153 LATIN SMALL LIGATURE OE
:           <Char-720>          U+02D0 MODIFIER LETTER TRIANGULAR COLON
:\\         <Char-721>          U+02D1 MODIFIER LETTER HALF TRIANGULAR COLON
:\\\\           :
;           <Char-690>          U+02B2 MODIFIER LETTER SMALL J
;\\         ;
<\\         <Char-674>          U+02A2 LATIN LETTER REVERSED GLOTTAL STOP WITH STROKE
<F>         <Char-8600>         U+2198 SOUTH EAST ARROW
<R>         <Char-8599>         U+2197 NORTH EAST ARROW
" BXS change/addition
_=          <Char-781>          U+030D COMBINING VERTICAL LINE ABOVE
=           <Char-809>          U+0329 COMBINING VERTICAL LINE BELOW
=\\         <Char-450>          U+01C2 LATIN LETTER ALVEOLAR CLICK
>\\         <Char-673>          U+02A1 LATIN LETTER GLOTTAL STOP WITH STROKE
?           <Char-660>          U+0294 LATIN LETTER GLOTTAL STOP
?\\         <Char-661>          U+0295 LATIN LETTER PHARYNGEAL VOICED FRICATIVE
???         ?
@           <Char-601>          U+0259 LATIN SMALL LETTER SCHWA
@\\         <Char-600>          U+0258 LATIN SMALL LETTER REVERSED E
@`          <Char-602>          U+025A LATIN SMALL LETTER SCHWA WITH HOOK
^           <Char-8593>         U+2191 UPWARDS ARROW
_}          <Char-794>          U+031A COMBINING LEFT ANGLE ABOVE
)\\         <Char-865>          U+0361 COMBINING DOUBLE INVERTED BREVE
_\"         <Char-776>          U+0308 COMBINING DIAERESIS
" The whole notation with _$ before a symbol to
" indicate a superscript is a BXS addition
_$&         <Char-7494>         U+1D46 MODIFIER LETTER SMALL TURNED AE
_$3         <Char-7500>         U+1D4C MODIFIER LETTER SMALL TURNED OPEN E
_$6         <Char-7492>         U+1D44 MODIFIER LETTER SMALL TURNED A
_$8         <Char-7601>         U+1DB1 MODIFIER LETTER SMALL BARRED O
_$?\\           <Char-740>          U+02E4 MODIFIER LETTER SMALL REVERSED GLOTTAL STOP
_$@         <Char-7498>         U+1D4A MODIFIER LETTER SMALL SCHWA
_$a         <Char-7491>         U+1D43 MODIFIER LETTER SMALL A
_$A         <Char-7493>         U+1D45 MODIFIER LETTER SMALL ALPHA
_$b         <Char-7495>         U+1D47 MODIFIER LETTER SMALL B
_$B         <Char-7517>         U+1D5D MODIFIER LETTER SMALL BETA
_$c         <Char-7580>         U+1D9C MODIFIER LETTER SMALL C
_$d         <Char-7496>         U+1D48 MODIFIER LETTER SMALL D
_$D         <Char-7582>         U+1D9E MODIFIER LETTER SMALL ETH
_$e         <Char-7497>         U+1D49 MODIFIER LETTER SMALL E
_$E         <Char-7499>         U+1D4B MODIFIER LETTER SMALL OPEN E
_$f         <Char-7584>         U+1DA0 MODIFIER LETTER SMALL F
_$G         <Char-736>          U+02E0 MODIFIER LETTER SMALL GAMMA
_$g         <Char-7501>         U+1D4D MODIFIER LETTER SMALL G
_$g\\           <Char-7586>         U+1DA2 MODIFIER LETTER SMALL SCRIPT G
_$h         <Char-688>          U+02B0 MODIFIER LETTER SMALL H
_$H         <Char-7587>         U+1DA3 MODIFIER LETTER SMALL TURNED H
_$h\\           <Char-689>          U+02B1 MODIFIER LETTER SMALL H WITH HOOK
_$I         <Char-7590>         U+1DA6 MODIFIER LETTER SMALL CAPITAL I
_$i         <Char-8305>         U+2071 SUPERSCRIPT LATIN SMALL LETTER I
_$i\\           <Char-7588>         U+1DA4 MODIFIER LETTER SMALL I WITH STROKE
_$I\\           <Char-7591>         U+1DA7 MODIFIER LETTER SMALL CAPITAL I WITH STROKE
" _$j         <Char-690>          U+02B2 MODIFIER LETTER SMALL J
_$j         <Char-0x2c7c>       U+2C7C LATIN SUBSCRIPT SMALL LETTER J
_$J         <Char-7598>         U+1DAE MODIFIER LETTER SMALL N WITH LEFT HOOK
_$J\\           <Char-7585>         U+1DA1 MODIFIER LETTER SMALL DOTLESS J WITH STROKE
_$j\\           <Char-7592>         U+1DA8 MODIFIER LETTER SMALL J WITH CROSSED-TAIL
_$k         <Char-7503>         U+1D4F MODIFIER LETTER SMALL K
_$l         <Char-737>          U+02E1 MODIFIER LETTER SMALL L
_$\"L           <Char-7595>         U+1DAB MODIFIER LETTER SMALL CAPITAL L
_$l`            <Char-7593>         U+1DA9 MODIFIER LETTER SMALL L WITH RETROFLEX HOOK
_$m         <Char-7504>         U+1D50 MODIFIER LETTER SMALL M
_$M         <Char-7514>         U+1D5A MODIFIER LETTER SMALL TURNED M
_$m\\           <Char-7597>         U+1DAD MODIFIER LETTER SMALL TURNED M WITH LONG LEG
_$N         <Char-7505>         U+1D51 MODIFIER LETTER SMALL ENG
_$n         <Char-8319>         U+207F SUPERSCRIPT LATIN SMALL LETTER N
_$N\\           <Char-7600>         U+1DB0 MODIFIER LETTER SMALL CAPITAL N
_$n`            <Char-7599>         U+1DAF MODIFIER LETTER SMALL N WITH RETROFLEX HOOK
_$o         <Char-7506>         U+1D52 MODIFIER LETTER SMALL O
_$O         <Char-7507>         U+1D53 MODIFIER LETTER SMALL OPEN O
_$p         <Char-7510>         U+1D56 MODIFIER LETTER SMALL P
_$P         <Char-7602>         U+1DB2 MODIFIER LETTER SMALL PHI
_$Q         <Char-7579>         U+1D9B MODIFIER LETTER SMALL TURNED ALPHA
_$r         <Char-691>          U+02B3 MODIFIER LETTER SMALL R
_$R         <Char-694>          U+02B6 MODIFIER LETTER SMALL CAPITAL INVERTED R
_$r\\           <Char-692>          U+02B4 MODIFIER LETTER SMALL TURNED R
_$r\\`          <Char-693>          U+02B5 MODIFIER LETTER SMALL TURNED R WITH HOOK
_$s         <Char-738>          U+02E2 MODIFIER LETTER SMALL S
_$S         <Char-7604>         U+1DB4 MODIFIER LETTER SMALL ESH
_$s\\           <Char-7581>         U+1D9D MODIFIER LETTER SMALL C WITH CURL
_$s`            <Char-7603>         U+1DB3 MODIFIER LETTER SMALL S WITH HOOK
_$t         <Char-7511>         U+1D57 MODIFIER LETTER SMALL T
_$T         <Char-7615>         U+1DBF MODIFIER LETTER SMALL THETA
_$u         <Char-7512>         U+1D58 MODIFIER LETTER SMALL U
_$U         <Char-7607>         U+1DB7 MODIFIER LETTER SMALL UPSILON
_$u\\           <Char-7606>         U+1DB6 MODIFIER LETTER SMALL U BAR
_$v         <Char-7515>         U+1D5B MODIFIER LETTER SMALL V
_$V         <Char-7610>         U+1DBA MODIFIER LETTER SMALL TURNED V
_$v\\           <Char-7609>         U+1DB9 MODIFIER LETTER SMALL V WITH HOOK
_$w         <Char-695>          U+02B7 MODIFIER LETTER SMALL W
_$x         <Char-739>          U+02E3 MODIFIER LETTER SMALL X
_$X         <Char-7521>         U+1D61 MODIFIER LETTER SMALL CHI
_$y         <Char-696>          U+02B8 MODIFIER LETTER SMALL Y
_$z         <Char-7611>         U+1DBB MODIFIER LETTER SMALL Z
_$Z         <Char-7614>         U+1DBE MODIFIER LETTER SMALL EZH
_$z\\           <Char-7613>         U+1DBD MODIFIER LETTER SMALL Z WITH CURL
_$z`            <Char-7612>         U+1DBC MODIFIER LETTER SMALL Z WITH RETROFLEX HOOK
+           <Char-726>          U+02D6 MODIFIER LETTER PLUS SIGN
_+          <Char-799>          U+031F COMBINING PLUS SIGN BELOW
-           <Char-727>          U+02D7 MODIFIER LETTER MINUS SIGN
_-          <Char-800>          U+0320 COMBINING MINUS SIGN BELOW
_0          <Char-778>          U+030A COMBINING RING ABOVE
0           <Char-805>          U+0325 COMBINING RING BELOW
_>          <Char-700>          U+02BC MODIFIER LETTER APOSTROPHE
_?          <Char-704>          U+02C0 MODIFIER LETTER GLOTTAL STOP
_$?         <Char-704>          U+02C0 MODIFIER LETTER GLOTTAL STOP
_?\\            <Char-740>          U+02E4 MODIFIER LETTER SMALL REVERSED GLOTTAL STOP
_\\         <Char-95>           U+005F LOW LINE
_^          <Char-815>          U+032F COMBINING INVERTED BREVE BELOW
" BXS addition
_(          <Char-815>          U+032F COMBINING INVERTED BREVE BELOW
_A          <Char-792>          U+0318 COMBINING LEFT TACK BELOW
_a          <Char-826>          U+033A COMBINING INVERTED BRIDGE BELOW
_B          <Char-783>          U+030F COMBINING DOUBLE GRAVE ACCENT
_B_L            <Char-719>          U+02CF MODIFIER LETTER LOW ACUTE ACCENT
" BXS addition
$_c         <Char-723>          U+02D3 MODIFIER LETTER CENTRED LEFT HALF RING
_c          <Char-796>          U+031C COMBINING LEFT HALF RING BELOW
_d          <Char-810>          U+032A COMBINING BRIDGE BELOW
_e          <Char-820>          U+0334 COMBINING TILDE OVERLAY
_F          <Char-770>          U+0302 COMBINING CIRCUMFLEX ACCENT
_F_R            <Char-711>          U+02C7 CARON
_G          <Char-736>          U+02E0 MODIFIER LETTER SMALL GAMMA
_h          <Char-688>          U+02B0 MODIFIER LETTER SMALL H
_H          <Char-769>          U+0301 COMBINING ACUTE ACCENT
_j          <Char-690>          U+02B2 MODIFIER LETTER SMALL J
_y          <Char-696>          U+02B8 MODIFIER LETTER SMALL Y
_;          <Char-801>          U+0321 COMBINING PALATALIZED HOOK BELOW
_k          <Char-816>          U+0330 COMBINING TILDE BELOW
_l          <Char-737>          U+02E1 MODIFIER LETTER SMALL L
_L          <Char-768>          U+0300 COMBINING GRAVE ACCENT
_L_B            <Char-718>          U+02CE MODIFIER LETTER LOW GRAVE ACCENT
_M          <Char-772>          U+0304 COMBINING MACRON
_m          <Char-827>          U+033B COMBINING SQUARE BELOW
_N          <Char-828>          U+033C COMBINING SEAGULL BELOW
_n          <Char-8319>         U+207F SUPERSCRIPT LATIN SMALL LETTER N
$_O         <Char-722>          U+02D2 MODIFIER LETTER CENTRED RIGHT HALF RING
" BXS addition
$_o         <Char-725>          U+02D5 MODIFIER LETTER DOWN TACK
_o          <Char-798>          U+031E COMBINING DOWN TACK BELOW
_O          <Char-825>          U+0339 COMBINING RIGHT HALF RING BELOW
_q          <Char-793>          U+0319 COMBINING RIGHT TACK BELOW
" BXS addition
$_r         <Char-724>          U+02D4 MODIFIER LETTER UP TACK
_R          <Char-780>          U+030C COMBINING CARON
_r          <Char-797>          U+031D COMBINING UP TACK BELOW
" BXS addition
_h\\            <Char-689>          U+02B1 MODIFIER LETTER SMALL H WITH HOOK
_T          <Char-779>          U+030B COMBINING DOUBLE ACUTE ACCENT
_t          <Char-804>          U+0324 COMBINING DIAERESIS BELOW
_v          <Char-812>         U+032C COMBINING CARON BELOW
" BXS addition.  Used for compressed rounding
" contrasting with _w for protruded rounding in Swedish
_v\\        <Char-7609>         U+1DB9 MODIFIER LETTER SMALL V WITH HOOK
" $M          <Char-43002>            "LATIN LETTER SMALL CAPITAL TURNED M
_w          <Char-695>          U+02B7 MODIFIER LETTER SMALL W
" BXS addition
_W          <Char-811>          U+032B COMBINING INVERTED DOUBLE ARCH BELOW
_X          <Char-774>          U+0306 COMBINING BREVE
_x          <Char-829>          U+033D COMBINING X ABOVE
$`          <Char-734>          U+02DE MODIFIER LETTER RHOTIC HOOK
`           <Char-802>          U+0322 COMBINING RETROFLEX HOOK BELOW
_`          <Char-802>          U+0322 COMBINING RETROFLEX HOOK BELOW
A           <Char-593>          U+0251 LATIN SMALL LETTER ALPHA
" BXS addition
b\\         <Char-384>          U+0180 LATIN SMALL LETTER B WITH STROKE
B           <Char-946>          U+03B2 GREEK SMALL LETTER BETA
B\\         <Char-665>          U+0299 LATIN LETTER SMALL CAPITAL B
b_<         <Char-595>          U+0253 LATIN SMALL LETTER B WITH HOOK
C           <Char-231>          U+00E7 LATIN SMALL LETTER C WITH CEDILLA
C\\         <Char-67>           U+0043 LATIN CAPITAL LETTER C
" BXS addition
" c\\         <Char-597>         U+0255 LATIN SMALL LETTER C WITH CURL
c\\         <Char-0x25cc>         U+25CC DOTTED CIRCLE
" S\\         <Char-0x21e7>          U+21E7 UPWARDS WHITE ARROW : shift
D           <Char-240>          U+00F0 LATIN SMALL LETTER ETH
" BXS addition
d\\         <Char-545>          U+0221 LATIN SMALL LETTER D WITH CURL
" BXS addition
D\\         <Char-7430>         U+1D06 LATIN LETTER SMALL CAPITAL ETH
d_<         <Char-599>          U+0257 LATIN SMALL LETTER D WITH HOOK
d_b         <Char-568>          U+0238 LATIN SMALL LETTER DB DIGRAPH
d_z         <Char-675>          U+02A3 LATIN SMALL LETTER DZ DIGRAPH
d_Z         <Char-676>          U+02A4 LATIN SMALL LETTER DEZH DIGRAPH
d_z\\           <Char-677>          U+02A5 LATIN SMALL LETTER DZ DIGRAPH WITH CURL
d`          <Char-598>          U+0256 LATIN SMALL LETTER D WITH TAIL
E           <Char-603>          U+025B LATIN SMALL LETTER OPEN E
F           <Char-625>          U+0271 LATIN SMALL LETTER M WITH HOOK
" BXS addition
m\\         <Char-625>          U+0271 LATIN SMALL LETTER M WITH HOOK
" BXS addition
F\\         <Char-11377>            U+ 
f_N         <Char-681>          U+02A9 LATIN SMALL LETTER FENG DIGRAPH
G           <Char-611>          U+0263 LATIN SMALL LETTER GAMMA
g\\         <Char-485>          U+01E5 LATIN SMALL LETTER G WITH STROKE
g\\\\           <Char-609>          U+0261 LATIN SMALL LETTER SCRIPT G
G\\         <Char-610>          U+0262 LATIN LETTER SMALL CAPITAL G
G\\_<           <Char-667>          U+029B LATIN LETTER SMALL CAPITAL G WITH HOOK
g_<         <Char-608>          U+0260 LATIN SMALL LETTER G WITH HOOK
H           <Char-613>          U+0265 LATIN SMALL LETTER TURNED H
h\\         <Char-614>          U+0266 LATIN SMALL LETTER H WITH HOOK
H\\         <Char-668>          U+029C LATIN LETTER SMALL CAPITAL H
I           <Char-618>          U+026A LATIN LETTER SMALL CAPITAL I
I\\         <Char-7547>         U+1D7B LATIN SMALL CAPITAL LETTER I WITH STROKE
J           <Char-626>          U+0272 LATIN SMALL LETTER N WITH LEFT HOOK
J\\         <Char-607>          U+025F LATIN SMALL LETTER DOTLESS J WITH STROKE
j\\         <Char-669>          U+029D LATIN SMALL LETTER J WITH CROSSED-TAIL
J\\_<           <Char-644>          U+0284 LATIN SMALL LETTER DOTLESS J WITH STROKE AND HOOK
K           <Char-620>          U+026C LATIN SMALL LETTER L WITH BELT
K\\         <Char-622>          U+026E LATIN SMALL LETTER LEZH
L           <Char-654>          U+028E LATIN SMALL LETTER TURNED Y
" BXS change
l\\         <Char-564>          U+0234 LATIN SMALL LETTER L WITH CURL
"l\\            ɺ           U+027A LATIN SMALL LETTER TURNED R WITH LONG LEG
L\\         <Char-671>          U+029F LAT$M            <Char-43002>            "LATIN LETTER SMALL CAPITAL TURNED MIN LETTER SMALL CAPITAL L
l_e         <Char-619>          U+026B LATIN SMALL LETTER L WITH MIDDLE TILDE
l_s         <Char-682>          U+02AA LATIN SMALL LETTER LS DIGRAPH
l_z         <Char-683>          U+02AB LATIN SMALL LETTER LZ DIGRAPH
l`          <Char-621>          U+026D LATIN SMALL LETTER L WITH RETROFLEX HOOK
M           <Char-623>          U+026F LATIN SMALL LETTER TURNED M
M\\         <Char-624>          U+0270 LATIN SMALL LETTER TURNED M WITH LONG LEG
N           <Char-331>          U+014B LATIN SMALL LETTER ENG
" BXS‑addition
n\\         <Char-565>          U+0235 LATIN SMALL LETTER N WITH CURL
N\\         <Char-628>          U+0274 LATIN LETTER SMALL CAPITAL N
n`          <Char-627>          U+0273 LATIN SMALL LETTER N WITH RETROFLEX HOOK
n_n         <Char-414>          U+019E LATIN SMALL LETTER N WITH LONG RIGHT LEG
O           <Char-596>          U+0254 LATIN SMALL LETTER OPEN O
O\\         <Char-664>          U+0298 LATIN LETTER BILABIAL CLICK
" BXS addition
P\\         <Char-664>          U+0298 LATIN LETTER BILABIAL CLICK
" BXS change/CXS alternate
P           <Char-632>          U+0278 LATIN SMALL LETTER PHI
p\\         <Char-632>          U+0278 LATIN SMALL LETTER PHI
p_<         <Char-421>          U+01A5 LATIN SMALL LETTER P WITH HOOK
Q           <Char-594>          U+0252 LATIN SMALL LETTER TURNED ALPHA
" BXS addition
q\\         <Char-419>          U+01A3 LATIN SMALL LETTER OI
q_<         <Char-672>          U+02A0 LATIN SMALL LETTER Q WITH HOOK
q_p         <Char-569>          U+0239 LATIN SMALL LETTER QP DIGRAPH
R           <Char-641>          U+0281 LATIN LETTER SMALL CAPITAL INVERTED R
r\\         <Char-633>          U+0279 LATIN SMALL LETTER TURNED R
R\\         <Char-640>          U+0280 LATIN LETTER SMALL CAPITAL R
r\\_r           <Char-636>          U+027C LATIN SMALL LETTER R WITH LONG LEG
r\\`            <Char-635>          U+027B LATIN SMALL LETTER TURNED R WITH HOOK
r`          <Char-637>          U+027D LATIN SMALL LETTER R WITH TAIL
S           <Char-643>          U+0283 LATIN SMALL LETTER ESH
s\\         <Char-597>          U+0255 LATIN SMALL LETTER C WITH CURL
S_j;            <Char-646>          U+0286 LATIN SMALL LETTER ESH WITH CURL
s`          <Char-642>          U+0282 LATIN SMALL LETTER S WITH HOOK
T           <Char-952>          U+03B8 GREEK SMALL LETTER THETA
t\\         <Char-566>          U+0236 LATIN SMALL LETTER T WITH CURL
t_<         <Char-429>          U+01AD LATIN SMALL LETTER T WITH HOOK
t_;         <Char-427>          U+01AB LATIN SMALL LETTER T WITH PALATAL HOOK
t_s         <Char-678>          U+02A6 LATIN SMALL LETTER TS DIGRAPH
t_S         <Char-679>          U+02A7 LATIN SMALL LETTER TESH DIGRAPH
t_s\\           <Char-680>          U+02A8 LATIN SMALL LETTER TC DIGRAPH WITH CURL
t`          <Char-648>          U+0288 LATIN SMALL LETTER T WITH RETROFLEX HOOK
" BXS addition
U_w         <Char-631>          U+0277 LATIN SMALL LETTER CLOSED OMEGA
" BXS addition
u\_w            <Char-969>          U+03C9 GREEK SMALL LETTER OMEGA
U           <Char-650>          U+028A LATIN SMALL LETTER UPSILON
u\\         <Char-649>          U+0289 LATIN SMALL LETTER U BAR
U\\         <Char-7551>         U+1D7F LATIN SMALL LETTER UPSILON WITH STROKE
V           <Char-652>          U+028C LATIN SMALL LETTER TURNED V
V\\         <Char-86>           U+0056 LATIN CAPITAL LETTER V
v\\         <Char-651>          U+028B LATIN SMALL LETTER V WITH HOOK
W           <Char-653>          U+028D LATIN SMALL LETTER TURNED W

w\\         <Char-968>          U+03C8 GREEK SMALL LETTER PSI
X           <Char-967>          U+03C7 GREEK SMALL LETTER CHI
X\\         <Char-295>          U+0127 LATIN SMALL LETTER H WITH STROKE
x\\         <Char-615>          U+0267 LATIN SMALL LETTER HENG WITH HOOK
Y           <Char-655>          U+028F LATIN LETTER SMALL CAPITAL Y
Z           <Char-658>          U+0292 LATIN SMALL LETTER EZH
" BXS addition
i_z         <Char-639>          U+027F LATIN SMALL LETTER REVERSED R WITH FISHHOOK
z\\         <Char-657>          U+0291 LATIN SMALL LETTER Z WITH CURL
Z_j         <Char-659>          U+0293 LATIN SMALL LETTER EZH WITH CURL
z`          <Char-656>          U+0290 LATIN SMALL LETTER Z WITH RETROFLEX HOOK
" BXS addition
i`          <Char-645>          U+0285 LATIN SMALL LETTER SQUAT REVERSED ESH
|\\         <Char-448>          U+01C0 LATIN LETTER DENTAL CLICK
|\\|\\          <Char-449>          U+01C1 LATIN LETTER LATERAL CLICK
||          <Char-8214>         U+2016 DOUBLE VERTICAL LINE
~           <Char-771>          U+0303 COMBINING TILDE
_~          <Char-808>          U+0328 COMBINING OGONEK
~\\         <Char-126>          U+007E TILDE
__          <Char-847>          U+034F COMBINING GRAPHEME JOINER

$a          <Char-7424>         "U+1D00 LATIN LETTER SMALL CAPITAL A
$b          <Char-665>          "U+0299 LATIN LETTER SMALL CAPITAL B
$c          <Char-7428>         "U+1D04 LATIN LETTER SMALL CAPITAL C
$d          <Char-7429>         "U+1D05 LATIN LETTER SMALL CAPITAL D
$e          <Char-7431>         "U+1D07 LATIN LETTER SMALL CAPITAL E
$f          <Char-42800>            "U+A730 LATIN LETTER SMALL CAPITAL F
$g          <Char-610>          "U+0262 LATIN LETTER SMALL CAPITAL G
$h          <Char-668>          "U+029C LATIN LETTER SMALL CAPITAL H
$i          <Char-618>          "U+026A LATIN LETTER SMALL CAPITAL I
$j          <Char-7434>         "U+1D0A LATIN LETTER SMALL CAPITAL J
$k          <Char-7435>         "U+1D0B LATIN LETTER SMALL CAPITAL K
$l          <Char-671>          "U+029F LATIN LETTER SMALL CAPITAL L
$m          <Char-7437>         "U+1D0D LATIN LETTER SMALL CAPITAL M
$n          <Char-628>          "U+0274 LATIN LETTER SMALL CAPITAL N
$o          <Char-7439>         "U+1D0F LATIN LETTER SMALL CAPITAL O
$p          <Char-7448>         "U+1D18 LATIN LETTER SMALL CAPITAL P
$r          <Char-640>          "U+0280 LATIN LETTER SMALL CAPITAL R
$s          <Char-42801>            "U+A731 LATIN LETTER SMALL CAPITAL S
$t          <Char-7451>         "U+1D1B LATIN LETTER SMALL CAPITAL T
$u          <Char-7452>         "U+1D1C LATIN LETTER SMALL CAPITAL U
$v          <Char-7456>         "U+1D20 LATIN LETTER SMALL CAPITAL V
$w          <Char-7457>         "U+1D21 LATIN LETTER SMALL CAPITAL W
$y          <Char-655>          "U+028F LATIN LETTER SMALL CAPITAL Y
$z          <Char-7458>         "U+1D22 LATIN LETTER SMALL CAPITAL Z
$9          <Char-630>          "U+0009 LATIN LETTER SMALL CAPITAL OE
$R          <Char-641>          "U+0281 LATIN LETTER SMALL CAPITAL INVERTED R
$g_>            <Char-667>          "U+029B LATIN LETTER SMALL CAPITAL G WITH HOOK
$@          <Char-11387>            "U+2C7B LATIN LETTER SMALL CAPITAL TURNED E
$&          <Char-7425>         "U+1D01 LATIN LETTER SMALL CAPITAL AE
$B          <Char-7427>         "U+1D03 LATIN LETTER SMALL CAPITAL BARRED B
$D          <Char-7430>         "U+1D06 LATIN LETTER SMALL CAPITAL ETH
$L          <Char-7436>         "U+1D0C LATIN LETTER SMALL CAPITAL L WITH STROKE
$N          <Char-7438>         "U+1D0E LATIN LETTER SMALL CAPITAL REVERSED N
$O          <Char-7440>         "U+1D10 LATIN LETTER SMALL CAPITAL OPEN O
$8          <Char-7445>         "U+0008 LATIN LETTER SMALL CAPITAL OU
$R\\            <Char-7449>         "U+1D19 LATIN LETTER SMALL CAPITAL REVERSED R
$r\\            <Char-7450>         "U+1D1A LATIN LETTER SMALL CAPITAL TURNED R
$Z\\            <Char-7459>         "U+1D23 LATIN LETTER SMALL CAPITAL EZH
$G          <Char-7462>         "U+1D26 GREEK LETTER SMALL CAPITAL GAMMA
$L\\            <Char-7463>         "U+1D27 GREEK LETTER SMALL CAPITAL LAMDA
$p\\            <Char-7464>         "U+1D28 GREEK LETTER SMALL CAPITAL PI
$P\\            <Char-7465>         "U+1D29 GREEK LETTER SMALL CAPITAL RHO
$P          <Char-7466>         "U+1D2A GREEK LETTER SMALL CAPITAL PSI
$l\\            <Char-7467>         "U+1D2B CYRILLIC LETTER SMALL CAPITAL EL
$I          <Char-7547>         "U+1D7B LATIN SMALL CAPITAL LETTER I WITH STROKE
$U          <Char-7550>         "U+1D7E LATIN SMALL CAPITAL LETTER U WITH STROKE
" $R\\          <Char-42870>            "U+A776 LATIN LETTER SMALL CAPITAL RUM
" $M            <Char-43002>            "U+A7FA LATIN LETTER SMALL CAPITAL TURNED M
$g\\        <Char-1075>         U+0433 CYRILLIC SMALL LETTER GHE
$k\\        <Char-1082>         U+043A CYRILLIC SMALL LETTER KA
