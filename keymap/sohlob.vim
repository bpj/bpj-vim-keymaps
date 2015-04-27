" vim: set tw=0 noet ts=12 sts=12 list:
"
" Changed: 5 March 2014
"           In the unlikely event that anyone but myself has been using
"           this be aware that I have made some sweeping changes:
"
"           -  Removed punctuation-munging.
"           -  Changed diacritic triggers as follows:
"               -  , -> ;  Circumflex below
"               -  ; -> !  Acute above.                     Added ĺ ŕ ẃ ý ḿ ń ǵ
"               -  ! -> .  Dot below
"               -  . -> ,  Caron above
"               -  :       Dot above.                       Added ẏ ṫ ḋ ḣ ġ
"               -  : -> :: Diaeresis
"               -  $       Superscript/empty set            Added ʸ
"               -       %  Barred.                          Added ŧ đ ħ ꝁ ǥ ƚ ɍ
"               -       &  ligature/Greek letter            Added ꜧ ƕ.
"                                                           þ ð are &th &dh
"                                                           θ δ χ γ == &tt &dd &kk &gg
"           -  ŋ now maps to  ~g everywhere
"           -  ǧ now maps to ,g (not ,q!)

scriptencoding utf8
let b:keymap_name = "sohlob"
hi lcursor guibg=slateblue guifg=slateblue
loadkeymap

" Don't remove this line!


" --          –
" ---         —
" \"--        --
" \"---       ---

" \"\"        \"
" \"'         '
" \"`         `
" \"<lt>      <lt>
" \">         >

" '           ’
" ''          ”
" `           ‘
" ``          “
" ,,          „
" <lt><lt>    «
" >>          »

" `?          ¡
" `!          ¿
\"!                     !
\"?                     ?

\".                     .
\",                     ,
\":                     :
\";                     ;
\"$                     $
\"&                     &
\"%                     %

$0                      ∅

&hj                     ꜧ
&HJ                     Ꜧ
&Hj                     Ꜧ
&hv                     ƕ
&HV                     Ƕ
&Hv                     Ƕ
&th                     þ
&TH                     Þ
&Th                     Þ
&dh                     ð
&DH                     Ð
&Dh                     Ð
&tt                     θ
&TT                     Θ
&Tt                     Θ
&dd                     δ
&DD                     Δ
&Dd                     Δ
&kk                     χ
&KK                     Χ
&Kk                     Χ
&gg                     γ
&GG                     Γ
&Gg                     Γ

%t                      ŧ
%T                      Ŧ
%d                      đ
%D                      Đ
%h                      ħ
%H                      Ħ
%k                      ꝁ
%K                      Ꝁ
%g                      ǥ
%G                      Ǥ
%l                      ƚ
%L                      Ƚ
%r                      ɍ
%R                      Ɍ

!s                      ś
!S                      Ś
!z                      ź
!Z                      Ź
!c                      ć
!C                      Ć
!x                      ʒ́
!X                      Ʒ́
!l                      ĺ
!L                      Ĺ
!r                      ŕ
!R                      Ŕ
!w                      ẃ
!W                      Ẃ
!y                      ý
!Y                      Ý
!m                      ḿ
!M                      Ḿ
!n                      ń
!N                      Ń
!g                      ǵ
!G                      Ǵ

,s                      š
,S                      Š
,z                      ž
,Z                      Ž
,c                      č
,C                      Č
,x                      ǯ
,X                      Ǯ
,j                      ǰ
,J                      J̌
,j                      ǰ
,g                      ǧ
,G                      Ǧ
,h                      ȟ
,H                      Ȟ
,k                      ǩ
,K                      Ǩ
,b                      b̌
,B                      B̌
,d                      ď
,D                      Ď
,f                      f̌
,F                      F̌
,n                      ň
,N                      Ň
,~g                     ŋ̌
~,g                     ŋ̌
,~G                     Ŋ̌
~,G                     Ŋ̌
,r                      ř
,R                      Ř
,a                      ǎ
,A                      Ǎ
,i                      ǐ
,I                      Ǐ
,u                      ǔ
,U                      Ǔ
,y                      y̌
,Y                      Y̌

:z                      ż
:Z                      Ż
:x                      ʒ̇
:X                      Ʒ̇
:c                      ċ
:C                      Ċ
:t                      ṫ
:T                      Ṫ
:d                      ḋ
:D                      Ḋ
:h                      ḣ
:H                      Ḣ
:g                      ġ
:G                      Ġ
:y                      ẏ
:Y                      Ẏ

~g                      ŋ
~G                      Ŋ

,e                      ə
,E                      Ə
,c                      ç
,C                      Ç

;l                      ḽ
;L                      Ḽ
;r                      r̭
;R                      R̭
;m                      m̭
;M                      M̭
;n                      ṋ
;N                      Ṋ
;,n                     ṋ̌
,;n                     ṋ̌
;,N                     Ṋ̌
,;N                     Ṋ̌
;~g                     ŋ̭
~;g                     ŋ̭
;~G                     Ŋ̭
~;G                     Ŋ̭
;w                      w̭
;W                      W̭
;y                      y̭
;Y                      Y̭
;k                      k̭
;K                      K̭
;t                      ṱ
;T                      Ṱ
;f                      f̭
;F                      F̭

::a                     ä
::A                     Ä
::e                     ë
::E                     Ë
::i                     ï
::I                     Ï
::o                     ö
::O                     Ö
::u                     ü
::U                     Ü
::y                     ÿ
::Y                     Ÿ

$a                      ᵃ
$e                      ᵉ
$i                      ⁱ
$u                      ᵘ
$y                      ʸ


$I		ɪ  " U+026A LATIN LETTER SMALL CAPITAL I
$A		ᴀ  " U+1D00 LATIN LETTER SMALL CAPITAL A
$E		ᴇ  " U+1D07 LATIN LETTER SMALL CAPITAL E
$U		ᴜ  " U+1D1C LATIN LETTER SMALL CAPITAL U

.s                      ṣ
.S                      Ṣ
.z                      ẓ
.Z                      Ẓ
.c                      c̣
.C                      C̣
.x                      ʒ̣
.X                      Ʒ̣

;,k                     ǩ̭
,;k                     ǩ̭
;,K                     Ǩ̭
,;K                     Ǩ̭
;,c                     č̭
,;c                     č̭
;,C                     Č̭
,;C                     Č̭
;,l                     ḽ̌
,;l                     ḽ̌
;,L                     Ḽ̌
,;L                     Ḽ̌

