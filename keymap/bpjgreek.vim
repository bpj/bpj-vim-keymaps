" Vim keymap for inputting (Ancient) Greek through
" ASCII-Latin 'transliterations.
" 
" Maintained by: Benct Philip Jonsson
" <bpj@melroch.se>
" 
" 
" My take on entering Unicode (Ancient
" [polytonic](http://en.wikipedia.org/wiki/Greek_diacritics))
" Greek. Unlike Beta Code 1:1 character correspondence is neither a
" requirement nor a goal. If you want to type **χώρη** you type
" `kh/.or.e` -- or `ch/.or.i` or anything in between if that suits
" your pronunciation or orthographic habits --, and if you want to
" write **ξηρά** you type `x.er/a` or `ks.er/a` or...
" 
" So it's mainly a normal Latin-letter transcription with ASCII
" punctuation thrown in as diacritics, so that you normally type Greek
" words in such a way that if you remove those punctuation 'diacritics'
" you get a spelling which corresponds to the normal Latinized spelling of
" the Greek words. I can't even guesstimate the number of times I've
" mistyped **ξη** when I meant **χ** with a Beta Code mapping! (BTW what's
" up with `c` and `x` in Beta Code? Had they never heard of the
" [acrophonic principle](http://en.wikipedia.org/wiki/Acrophony)? So X
" looks like a cap **χ**? Maybe we shall be thankful they wrote BC Greek
" in `ALLCAPS` or they would have used `p` for **ρ**, `n` for **π** and
" `v` for **ν**, or wouldn't they?)
" 
" All punctuation 'diacritics' go before the letter they modify, so that
" punctuation characters which normally only are used at the end of words
" can usually be typed normally! Conveniently rough breathing (spiritus
" asper) is `h` or `H`. Less conveniently smooth breathing (spiritus
" lenis) has to be entered explicitly as `,`, which was the best match I
" could find not wanting to use parentheses as diacritics; there is
" nothing you can do about it the way vim keymaps work.
" 
" The input character sequences were choosen to suit me and my
" (Swedish) keyboard layout. If they don't suit you or your keybord
" layout don't come complaining with me; instead rename the file
" and edit it to suit you!
" 
" I have prepared the file to make it easy to use `~` instead of
" `<` for circumflex: just comment out all lines below the one
" where U+00BB RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK is
" defined which contain `<` and uncomment all lines which contain
" `~` with the following regular expressions:
" 
"     :.,$s/^\S*</" &/ 
"     :%s/^"\(\S*\~\)/\1/
" 
" Similarly you can use `_i` instead of `;i` for iota subscript by
" commenting lines with `;i` and uncommenting those with `_`:
" 
"     :%s/^\S*;i/" &/
"     :%s/^"\(\S*_\)/\1/
" 
" The input key combinations for Greek characters consist of Latin
" letters, combinations of Latin letters or combinations of
" punctuation characters and Latin letters. The combinations have
" been choosen by these principles:
" 
" 1.  Similarity to the standard Latin transliteration of the
"     respective Greek letters and diacritics (the latter
"     concerning only the rough breathing.
" 2.  Correspondence in meaning between Latin and Greek punctuation
"     marks (in the case of the Greek question mark and colon).
" 3.  Visual similarity between Greek diacritics and ASCII
"     punctuation characters.
" 4.  The fact that certain punctuation marks (notably `. , : ;`
"     are normally followed by whitespace and not by letters,
"     which makes them unambiguous as diacritics when they
"     precede letters.
" 5.  Ease of typing on my Swedish keyboard; that's why I avoid
"     `; :` which are both shifted characters on my keyboard.
" 
" In practice this means that you basically type Greek words as you
" would transliterate them into Latin. To indicate diacritics above
" letters you type certain punctuation characters which are
" visually similar to the respective Greek diacritics before you
" type the letter, just as you hit deadkeys before letter keys to
" get letters with diacritics with the ordinary keyboard. This
" principle of preceding diacritic punctuation characters has been
" extended to where the same Latin letter corresponds to more than
" one Greek letter -- notably with eta and omega, but also with
" archaic and old-style letter forms. Some examples:
" 
"     You type:     You get:
"     ------------  ------------
"     th            θ
"     ha            ἁ
"     ,a            ἀ
"     /a            ά 
"     \a            ὰ 
"     <a            ᾶ 
"     h/a           ἅ 
"     ,/a           ἄ 
"     h\a           ἃ 
"     e             ε
"     .e            η
"     ,/e
"     ,/.e
" 
" A list of simple letters entered with a preceding punctuation character:
" 
"     .H           Ͱ U+0370 GREEK CAPITAL LETTER HETA
"     .h           ͱ U+0371 GREEK SMALL LETTER HETA
"     .S           Ͳ U+0372 GREEK CAPITAL LETTER ARCHAIC SAMPI
"     .s           ͳ U+0373 GREEK SMALL LETTER ARCHAIC SAMPI
"     .W           Ͷ U+0376 GREEK CAPITAL LETTER PAMPHYLIAN DIGAMMA
"     .w           ͷ U+0377 GREEK SMALL LETTER PAMPHYLIAN DIGAMMA
"     ,c           ͻ U+037B GREEK SMALL REVERSED LUNATE SIGMA SYMBOL
"     .c           ͼ U+037C GREEK SMALL DOTTED LUNATE SIGMA SYMBOL
"     .E           Η U+0397 GREEK CAPITAL LETTER ETA
"     .I           Η U+0397 GREEK CAPITAL LETTER ETA
"     .O           Ω U+03A9 GREEK CAPITAL LETTER OMEGA
"     .e           η U+03B7 GREEK SMALL LETTER ETA
"     .i           η U+03B7 GREEK SMALL LETTER ETA
"     ,s            ς U+03C2 GREEK SMALL LETTER FINAL SIGMA
"     .o           ω U+03C9 GREEK SMALL LETTER OMEGA
"     .b           ϐ U+03D0 GREEK BETA SYMBOL
"     .v           ϐ U+03D0 GREEK BETA SYMBOL
"     .th          ϑ U+03D1 GREEK THETA SYMBOL
"     .U           ϒ U+03D2 GREEK UPSILON WITH HOOK SYMBOL
"     .Y           ϒ U+03D2 GREEK UPSILON WITH HOOK SYMBOL
"     .ph          ϕ U+03D5 GREEK PHI SYMBOL
"     .f           ϕ U+03D5 GREEK PHI SYMBOL
"     .p           ϖ U+03D6 GREEK PI SYMBOL
"     .Q           Ϙ U+03D8 GREEK LETTER ARCHAIC KOPPA
"     .q           ϙ U+03D9 GREEK SMALL LETTER ARCHAIC KOPPA
"     .St          Ϛ U+03DA GREEK LETTER STIGMA
"     .ST          Ϛ U+03DA GREEK LETTER STIGMA
"     .st          ϛ U+03DB GREEK SMALL LETTER STIGMA
"     .Sp          Ϡ U+03E0 GREEK LETTER SAMPI
"     .SP          Ϡ U+03E0 GREEK LETTER SAMPI
"     .sp          ϡ U+03E1 GREEK SMALL LETTER SAMPI
"     .k           ϰ U+03F0 GREEK KAPPA SYMBOL
"     .r           ϱ U+03F1 GREEK RHO SYMBOL
"     .Th          ϴ U+03F4 GREEK CAPITAL THETA SYMBOL
"     .TH          ϴ U+03F4 GREEK CAPITAL THETA SYMBOL
"     ,e           ϵ U+03F5 GREEK LUNATE EPSILON SYMBOL
"     ;e           ϶ U+03F6 GREEK REVERSED LUNATE EPSILON SYMBOL
"     ,r           ϼ U+03FC GREEK RHO WITH STROKE SYMBOL
"     ,C           Ͻ U+03FD GREEK CAPITAL REVERSED LUNATE SIGMA SYMBOL
"     .C           Ͼ U+03FE GREEK CAPITAL DOTTED LUNATE SIGMA SYMBOL
  
  
let b:keymap_name="bpjgrk"

scriptencoding utf-8

" I have difficulties seeing the difference
" between rough and smooth breathings in my normal
" gui font at normal size, so I colorcode them:
hi RoughBreathing guifg=red
hi SmoothBreathing guifg=blue
let w:mrb=matchadd('RoughBreathing','[ἁἃἅἇἉἋἍἏἑἓἕἙἛἝἡἣἥἧἩἫἭἯἱἳἵἷἹἻἽἿὁὃὅὉὋὍὑὓὕὗὙὛὝὟὡὣὥὧὩὫὭὯᾁᾃᾅᾇᾉᾋᾍᾏᾑᾓᾕᾗᾙᾛᾝᾟᾡᾣᾥᾧᾩᾫᾭᾯῥῬ]')
let w:msb=matchadd('SmoothBreathing','[ἀἂἄἆἈἊἌἎἐἒἔἘἚἜἠἢἤἦἨἪἬἮἰἲἴἶἸἺἼἾὀὂὄὈὊὌὐὒὔὖὠὢὤὦὨὪὬὮᾀᾂᾄᾆᾈᾊᾌᾎᾐᾒᾔᾖᾘᾚᾜᾞᾠᾢᾤᾦᾨᾪᾬᾮῤ]')

loadkeymap
//          /           " / is acute
\\\\        \\          " \ is grave
"~~         ~           " ~ is an alternative for circumflex
..          .           " . is used for letter variants (notably .e/.i eta and .o omega)
,,          ,           " , is used for smooth breathing and for letter variants
"__         _           " _i is used as an alternative for iota subscript
''          '           " ' is used for the monotonic tonos.  Use '9 to get a real apostrophe!
##          #           " #' and #, are used for the Greek number signs
&&          &           " &k and &K are used for the kai symbols
===         ==          " == is used for the quotation dash
.<          <           " < is used for circumflex 
<<<         <<          " << is used for the quotation mark
>>>         >>          " >> is used for the quotation mark
" :: and ;; both give a single Greek colon
" : is used for the diaeresis
" ; is used to distinguish iota subscript and letter variants
<<          <Char-171>          " « U+00AB LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
>>          <Char-187>          " » U+00BB RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
--          <Char-8211>         " – U+2013 EN DASH
---         <Char-8212>         " — U+2014 EM DASH
==          <Char-8213>         " ― U+2015 HORIZONTAL BAR -- the true quotation dash!

" Single 'comma' quotation marks obviously don't
" mix well with breathings.  It is advisable to
" use double angle quotation marks for outer
" quotes and double comma quotation marks 
" *separated from the text with spaces*
" for inner quotes. See
" <http://www.tlg.uci.edu/~opoudjis/unicode/punctuation.html#quot>

'6          <Char-8216>         " ‘ U+2018 LEFT SINGLE QUOTATION MARK
'9          <Char-8217>         " ’ U+2019 RIGHT SINGLE QUOTATION MARK
'66         <Char-8220>         " “ U+201C LEFT DOUBLE QUOTATION MARK
'99         <Char-8221>         " ” U+201D RIGHT DOUBLE QUOTATION MARK
,99         <Char-8222>         " „ U+201E DOUBLE LOW-9 QUOTATION MARK
'22         <Char-8223>         " ‟ U+201F DOUBLE HIGH-REVERSED-9 QUOTATION MARK

,.          <Char-803>          " U+0323 COMBINING DOT BELOW
" Used by epigraphists to indicate obscure letters

.H          <Char-880>          " Ͱ U+0370 GREEK CAPITAL LETTER HETA
.h          <Char-881>          " ͱ U+0371 GREEK SMALL LETTER HETA
.S          <Char-882>          " Ͳ U+0372 GREEK CAPITAL LETTER ARCHAIC SAMPI
.s          <Char-883>          " ͳ U+0373 GREEK SMALL LETTER ARCHAIC SAMPI
#'          <Char-884>          " ʹ U+0374 GREEK NUMERAL SIGN
#,          <Char-885>          " ͵ U+0375 GREEK LOWER NUMERAL SIGN
.W          <Char-886>          " Ͷ U+0376 GREEK CAPITAL LETTER PAMPHYLIAN DIGAMMA
.w          <Char-887>          " ͷ U+0377 GREEK SMALL LETTER PAMPHYLIAN DIGAMMA
,c          <Char-891>          " ͻ U+037B GREEK SMALL REVERSED LUNATE SIGMA SYMBOL
.c          <Char-892>          " ͼ U+037C GREEK SMALL DOTTED LUNATE SIGMA SYMBOL
;c          <Char-893>          " ͽ U+037D GREEK SMALL REVERSED DOTTED LUNATE SIGMA SYMBOL
?           <Char-894>          " ; U+037E GREEK QUESTION MARK
'A          <Char-902>          " Ά U+0386 GREEK CAPITAL LETTER ALPHA WITH TONOS
;           <Char-903>          " · U+0387 GREEK ANO TELEIA
:           <Char-903>          " · U+0387 GREEK ANO TELEIA
;;          <Char-903>          " · U+0387 GREEK ANO TELEIA
::          <Char-903>          " · U+0387 GREEK ANO TELEIA
'E          <Char-904>          " Έ U+0388 GREEK CAPITAL LETTER EPSILON WITH TONOS
'.E         <Char-905>          " Ή U+0389 GREEK CAPITAL LETTER ETA WITH TONOS
'.I         <Char-905>          " Ή U+0389 GREEK CAPITAL LETTER ETA WITH TONOS
'I          <Char-906>          " Ί U+038A GREEK CAPITAL LETTER IOTA WITH TONOS
            <Char-907>          " ΋ U+
'O          <Char-908>          " Ό U+038C GREEK CAPITAL LETTER OMICRON WITH TONOS
            <Char-909>          " ΍ U+
'U          <Char-910>          " Ύ U+038E GREEK CAPITAL LETTER UPSILON WITH TONOS
'Y          <Char-910>          " Ύ U+038E GREEK CAPITAL LETTER UPSILON WITH TONOS
'.O         <Char-911>          " Ώ U+038F GREEK CAPITAL LETTER OMEGA WITH TONOS
:'i         <Char-912>          " ΐ U+0390 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS
A           <Char-913>          " Α U+0391 GREEK CAPITAL LETTER ALPHA
B           <Char-914>          " Β U+0392 GREEK CAPITAL LETTER BETA
V           <Char-914>          " Β U+0392 GREEK CAPITAL LETTER BETA
G           <Char-915>          " Γ U+0393 GREEK CAPITAL LETTER GAMMA
D           <Char-916>          " Δ U+0394 GREEK CAPITAL LETTER DELTA
E           <Char-917>          " Ε U+0395 GREEK CAPITAL LETTER EPSILON
Z           <Char-918>          " Ζ U+0396 GREEK CAPITAL LETTER ZETA
.E          <Char-919>          " Η U+0397 GREEK CAPITAL LETTER ETA
.I          <Char-919>          " Η U+0397 GREEK CAPITAL LETTER ETA
Th          <Char-920>          " Θ U+0398 GREEK CAPITAL LETTER THETA
TH          <Char-920>          " Θ U+0398 GREEK CAPITAL LETTER THETA
I           <Char-921>          " Ι U+0399 GREEK CAPITAL LETTER IOTA
K           <Char-922>          " Κ U+039A GREEK CAPITAL LETTER KAPPA
,K          <Char-922>          " Κ U+039A GREEK CAPITAL LETTER KAPPA
L           <Char-923>          " Λ U+039B GREEK CAPITAL LETTER LAMDA
M           <Char-924>          " Μ U+039C GREEK CAPITAL LETTER MU
N           <Char-925>          " Ν U+039D GREEK CAPITAL LETTER NU
X           <Char-926>          " Ξ U+039E GREEK CAPITAL LETTER XI
KS          <Char-926>          " Ξ U+039E GREEK CAPITAL LETTER XI
O           <Char-927>          " Ο U+039F GREEK CAPITAL LETTER OMICRON
P           <Char-928>          " Π U+03A0 GREEK CAPITAL LETTER PI
R           <Char-929>          " Ρ U+03A1 GREEK CAPITAL LETTER RHO
S           <Char-931>          " Σ U+03A3 GREEK CAPITAL LETTER SIGMA
T           <Char-932>          " Τ U+03A4 GREEK CAPITAL LETTER TAU
,T          <Char-932>          " Τ U+03A4 GREEK CAPITAL LETTER TAU
U           <Char-933>          " Υ U+03A5 GREEK CAPITAL LETTER UPSILON
Y           <Char-933>          " Υ U+03A5 GREEK CAPITAL LETTER UPSILON
Ph          <Char-934>          " Φ U+03A6 GREEK CAPITAL LETTER PHI
PH          <Char-934>          " Φ U+03A6 GREEK CAPITAL LETTER PHI
F           <Char-934>          " Φ U+03A6 GREEK CAPITAL LETTER PHI
Kh          <Char-935>          " Χ U+03A7 GREEK CAPITAL LETTER CHI
KH          <Char-935>          " Χ U+03A7 GREEK CAPITAL LETTER CHI
Ch          <Char-935>          " Χ U+03A7 GREEK CAPITAL LETTER CHI
CH          <Char-935>          " Χ U+03A7 GREEK CAPITAL LETTER CHI
Ps          <Char-936>          " Ψ U+03A8 GREEK CAPITAL LETTER PSI
PS          <Char-936>          " Ψ U+03A8 GREEK CAPITAL LETTER PSI
.O          <Char-937>          " Ω U+03A9 GREEK CAPITAL LETTER OMEGA
:I          <Char-938>          " Ϊ U+03AA GREEK CAPITAL LETTER IOTA WITH DIALYTIKA
:U          <Char-939>          " Ϋ U+03AB GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA
:Y          <Char-939>          " Ϋ U+03AB GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA
'a          <Char-940>          " ά U+03AC GREEK SMALL LETTER ALPHA WITH TONOS
'e          <Char-941>          " έ U+03AD GREEK SMALL LETTER EPSILON WITH TONOS
'.e         <Char-942>          " ή U+03AE GREEK SMALL LETTER ETA WITH TONOS
'.i         <Char-942>          " ή U+03AE GREEK SMALL LETTER ETA WITH TONOS
'i          <Char-943>          " ί U+03AF GREEK SMALL LETTER IOTA WITH TONOS
:'u         <Char-944>          " ΰ U+03B0 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS
:'y         <Char-944>          " ΰ Y+03B0 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS
a           <Char-945>          " α U+03B1 GREEK SMALL LETTER ALPHA
b           <Char-946>          " β U+03B2 GREEK SMALL LETTER BETA
v           <Char-946>          " β U+03B2 GREEK SMALL LETTER BETA
g           <Char-947>          " γ U+03B3 GREEK SMALL LETTER GAMMA
d           <Char-948>          " δ U+03B4 GREEK SMALL LETTER DELTA
e           <Char-949>          " ε U+03B5 GREEK SMALL LETTER EPSILON
z           <Char-950>          " ζ U+03B6 GREEK SMALL LETTER ZETA
.e          <Char-951>          " η U+03B7 GREEK SMALL LETTER ETA
.i          <Char-951>          " η U+03B7 GREEK SMALL LETTER ETA
th          <Char-952>          " θ U+03B8 GREEK SMALL LETTER THETA
i           <Char-953>          " ι U+03B9 GREEK SMALL LETTER IOTA
k           <Char-954>          " κ U+03BA GREEK SMALL LETTER KAPPA
,k          <Char-954>          " κ U+03BA GREEK SMALL LETTER KAPPA
l           <Char-955>          " λ U+03BB GREEK SMALL LETTER LAMDA
m           <Char-956>          " μ U+03BC GREEK SMALL LETTER MU
n           <Char-957>          " ν U+03BD GREEK SMALL LETTER NU
x           <Char-958>          " ξ U+03BE GREEK SMALL LETTER XI
ks          <Char-958>          " ξ U+03BE GREEK SMALL LETTER XI
o           <Char-959>          " ο U+03BF GREEK SMALL LETTER OMICRON
p           <Char-960>          " π U+03C0 GREEK SMALL LETTER PI
,p          <Char-960>          " π U+03C0 GREEK SMALL LETTER PI
r           <Char-961>          " ρ U+03C1 GREEK SMALL LETTER RHO
,s           <Char-962>         " ς U+03C2 GREEK SMALL LETTER FINAL SIGMA
s           <Char-963>          " σ U+03C3 GREEK SMALL LETTER SIGMA
t           <Char-964>          " τ U+03C4 GREEK SMALL LETTER TAU
,t          <Char-964>          " τ U+03C4 GREEK SMALL LETTER TAU
u           <Char-965>          " υ U+03C5 GREEK SMALL LETTER UPSILON
y           <Char-965>          " υ U+03C5 GREEK SMALL LETTER UPSILON
ph          <Char-966>          " φ U+03C6 GREEK SMALL LETTER PHI
f           <Char-966>          " φ U+03C6 GREEK SMALL LETTER PHI
kh          <Char-967>          " χ U+03C7 GREEK SMALL LETTER CHI
ch          <Char-967>          " χ U+03C7 GREEK SMALL LETTER CHI
ps          <Char-968>          " ψ U+03C8 GREEK SMALL LETTER PSI
.o          <Char-969>          " ω U+03C9 GREEK SMALL LETTER OMEGA
:i          <Char-970>          " ϊ U+03CA GREEK SMALL LETTER IOTA WITH DIALYTIKA
:u          <Char-971>          " ϋ U+03CB GREEK SMALL LETTER UPSILON WITH DIALYTIKA
:y          <Char-971>          " ϋ Y+03CB GREEK SMALL LETTER UPSILON WITH DIALYTIKA
'o          <Char-972>          " ό U+03CC GREEK SMALL LETTER OMICRON WITH TONOS
'u          <Char-973>          " ύ U+03CD GREEK SMALL LETTER UPSILON WITH TONOS
'y          <Char-973>          " ύ Y+03CD GREEK SMALL LETTER UPSILON WITH TONOS
'.o         <Char-974>          " ώ U+03CE GREEK SMALL LETTER OMEGA WITH TONOS
&K            <Char-975>        " Ϗ U+03CF GREEK CAPITAL KAI SYMBOL
.b          <Char-976>          " ϐ U+03D0 GREEK BETA SYMBOL
.v          <Char-976>          " ϐ U+03D0 GREEK BETA SYMBOL
.th         <Char-977>          " ϑ U+03D1 GREEK THETA SYMBOL
.U          <Char-978>          " ϒ U+03D2 GREEK UPSILON WITH HOOK SYMBOL
.Y          <Char-978>          " ϒ U+03D2 GREEK UPSILON WITH HOOK SYMBOL
/.U         <Char-979>          " ϓ U+03D3 GREEK UPSILON WITH ACUTE AND HOOK SYMBOL
/.Y         <Char-979>          " ϓ U+03D3 GREEK UPSILON WITH ACUTE AND HOOK SYMBOL
:.U         <Char-980>          " ϔ U+03D4 GREEK UPSILON WITH DIAERESIS AND HOOK SYMBOL
:.Y         <Char-980>          " ϔ U+03D4 GREEK UPSILON WITH DIAERESIS AND HOOK SYMBOL
.ph         <Char-981>          " ϕ U+03D5 GREEK PHI SYMBOL
.f          <Char-981>          " ϕ U+03D5 GREEK PHI SYMBOL
.p          <Char-982>          " ϖ U+03D6 GREEK PI SYMBOL
k&          <Char-983>          " ϗ U+03D7 GREEK KAI SYMBOL
.Q          <Char-984>          " Ϙ U+03D8 GREEK LETTER ARCHAIC KOPPA
.q          <Char-985>          " ϙ U+03D9 GREEK SMALL LETTER ARCHAIC KOPPA
.St         <Char-986>          " Ϛ U+03DA GREEK LETTER STIGMA
.ST         <Char-986>          " Ϛ U+03DA GREEK LETTER STIGMA
.st         <Char-987>          " ϛ U+03DB GREEK SMALL LETTER STIGMA
W           <Char-988>          " Ϝ U+03DC GREEK LETTER DIGAMMA
w           <Char-989>          " ϝ U+03DD GREEK SMALL LETTER DIGAMMA
Q           <Char-990>          " Ϟ U+03DE GREEK LETTER KOPPA
q           <Char-991>          " ϟ U+03DF GREEK SMALL LETTER KOPPA
.Sp         <Char-992>          " Ϡ U+03E0 GREEK LETTER SAMPI
.SP         <Char-992>          " Ϡ U+03E0 GREEK LETTER SAMPI
.sp         <Char-993>          " ϡ U+03E1 GREEK SMALL LETTER SAMPI
.k          <Char-1008>         " ϰ U+03F0 GREEK KAPPA SYMBOL
.r          <Char-1009>         " ϱ U+03F1 GREEK RHO SYMBOL
c          <Char-1010>          " ϲ U+03F2 GREEK LUNATE SIGMA SYMBOL
j           <Char-1011>         " ϳ U+03F3 GREEK LETTER YOT
.Th         <Char-1012>         " ϴ U+03F4 GREEK CAPITAL THETA SYMBOL
.TH         <Char-1012>         " ϴ U+03F4 GREEK CAPITAL THETA SYMBOL
,e          <Char-1013>         " ϵ U+03F5 GREEK LUNATE EPSILON SYMBOL
;e          <Char-1014>         " ϶ U+03F6 GREEK REVERSED LUNATE EPSILON SYMBOL
Sh          <Char-1015>         " Ϸ U+03F7 GREEK CAPITAL LETTER SHO
SH          <Char-1015>         " Ϸ U+03F7 GREEK CAPITAL LETTER SHO
sh          <Char-1016>         " ϸ U+03F8 GREEK SMALL LETTER SHO
C          <Char-1017>          " Ϲ U+03F9 GREEK CAPITAL LUNATE SIGMA SYMBOL
;S          <Char-1018>         " Ϻ U+03FA GREEK CAPITAL LETTER SAN
;s          <Char-1019>         " ϻ U+03FB GREEK SMALL LETTER SAN
,r          <Char-1020>         " ϼ U+03FC GREEK RHO WITH STROKE SYMBOL
,C          <Char-1021>         " Ͻ U+03FD GREEK CAPITAL REVERSED LUNATE SIGMA SYMBOL
.C          <Char-1022>         " Ͼ U+03FE GREEK CAPITAL DOTTED LUNATE SIGMA SYMBOL
;C          <Char-1023>         " Ͽ U+03FF GREEK CAPITAL REVERSED DOTTED LUNATE SIGMA SYMBOL
,a          <Char-7936>         " ἀ U+1F00 GREEK SMALL LETTER ALPHA WITH PSILI
ha          <Char-7937>         " ἁ U+1F01 GREEK SMALL LETTER ALPHA WITH DASIA
,\\a        <Char-7938>         " ἂ U+1F02 GREEK SMALL LETTER ALPHA WITH PSILI AND VARIA
h\\a        <Char-7939>         " ἃ U+1F03 GREEK SMALL LETTER ALPHA WITH DASIA AND VARIA
,/a         <Char-7940>         " ἄ U+1F04 GREEK SMALL LETTER ALPHA WITH PSILI AND OXIA
h/a         <Char-7941>         " ἅ U+1F05 GREEK SMALL LETTER ALPHA WITH DASIA AND OXIA
,<a         <Char-7942>         " ἆ U+1F06 GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI
",~a        <Char-7942>         " ἆ U+1F06 GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI
h<a         <Char-7943>         " ἇ U+1F07 GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI
"h~a        <Char-7943>         " ἇ U+1F07 GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI
,A          <Char-7944>         " Ἀ U+1F08 GREEK CAPITAL LETTER ALPHA WITH PSILI
Ha          <Char-7945>         " Ἁ U+1F09 GREEK CAPITAL LETTER ALPHA WITH DASIA
,\\A        <Char-7946>         " Ἂ U+1F0A GREEK CAPITAL LETTER ALPHA WITH PSILI AND VARIA
H\\a        <Char-7947>         " Ἃ U+1F0B GREEK CAPITAL LETTER ALPHA WITH DASIA AND VARIA
,/A         <Char-7948>         " Ἄ U+1F0C GREEK CAPITAL LETTER ALPHA WITH PSILI AND OXIA
H/a         <Char-7949>         " Ἅ U+1F0D GREEK CAPITAL LETTER ALPHA WITH DASIA AND OXIA
,<A         <Char-7950>         " Ἆ U+1F0E GREEK CAPITAL LETTER ALPHA WITH PSILI AND PERISPOMENI
",~A        <Char-7950>         " Ἆ U+1F0E GREEK CAPITAL LETTER ALPHA WITH PSILI AND PERISPOMENI
H<a         <Char-7951>         " Ἇ U+1F0F GREEK CAPITAL LETTER ALPHA WITH DASIA AND PERISPOMENI
"H~a        <Char-7951>         " Ἇ U+1F0F GREEK CAPITAL LETTER ALPHA WITH DASIA AND PERISPOMENI
,e          <Char-7952>         " ἐ U+1F10 GREEK SMALL LETTER EPSILON WITH PSILI
he          <Char-7953>         " ἑ U+1F11 GREEK SMALL LETTER EPSILON WITH DASIA
,\\e        <Char-7954>         " ἒ U+1F12 GREEK SMALL LETTER EPSILON WITH PSILI AND VARIA
h\\e        <Char-7955>         " ἓ U+1F13 GREEK SMALL LETTER EPSILON WITH DASIA AND VARIA
,/e         <Char-7956>         " ἔ U+1F14 GREEK SMALL LETTER EPSILON WITH PSILI AND OXIA
h/e         <Char-7957>         " ἕ U+1F15 GREEK SMALL LETTER EPSILON WITH DASIA AND OXIA
,E          <Char-7960>         " Ἐ U+1F18 GREEK CAPITAL LETTER EPSILON WITH PSILI
He          <Char-7961>         " Ἑ U+1F19 GREEK CAPITAL LETTER EPSILON WITH DASIA
,\\E        <Char-7962>         " Ἒ U+1F1A GREEK CAPITAL LETTER EPSILON WITH PSILI AND VARIA
H\\e        <Char-7963>         " Ἓ U+1F1B GREEK CAPITAL LETTER EPSILON WITH DASIA AND VARIA
,/E         <Char-7964>         " Ἔ U+1F1C GREEK CAPITAL LETTER EPSILON WITH PSILI AND OXIA
H/e         <Char-7965>         " Ἕ U+1F1D GREEK CAPITAL LETTER EPSILON WITH DASIA AND OXIA
,.e         <Char-7968>         " ἠ U+1F20 GREEK SMALL LETTER ETA WITH PSILI
,.i         <Char-7968>         " ἠ U+1F20 GREEK SMALL LETTER ETA WITH PSILI
h.e         <Char-7969>         " ἡ U+1F21 GREEK SMALL LETTER ETA WITH DASIA
h.i         <Char-7969>         " ἡ U+1F21 GREEK SMALL LETTER ETA WITH DASIA
,\\.e       <Char-7970>         " ἢ U+1F22 GREEK SMALL LETTER ETA WITH PSILI AND VARIA
,\\.i       <Char-7970>         " ἢ U+1F22 GREEK SMALL LETTER ETA WITH PSILI AND VARIA
h\\.e       <Char-7971>         " ἣ U+1F23 GREEK SMALL LETTER ETA WITH DASIA AND VARIA
h\\.i       <Char-7971>         " ἣ U+1F23 GREEK SMALL LETTER ETA WITH DASIA AND VARIA
,/.e        <Char-7972>         " ἤ U+1F24 GREEK SMALL LETTER ETA WITH PSILI AND OXIA
,/.i        <Char-7972>         " ἤ U+1F24 GREEK SMALL LETTER ETA WITH PSILI AND OXIA
h/.e        <Char-7973>         " ἥ U+1F25 GREEK SMALL LETTER ETA WITH DASIA AND OXIA
h/.i        <Char-7973>         " ἥ U+1F25 GREEK SMALL LETTER ETA WITH DASIA AND OXIA
,<.e        <Char-7974>         " ἦ U+1F26 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI
",~.e       <Char-7974>         " ἦ U+1F26 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI
,<.i        <Char-7974>         " ἦ U+1F26 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI
",~.i       <Char-7974>         " ἦ U+1F26 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI
h<.e        <Char-7975>         " ἧ U+1F27 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI
"h~.e       <Char-7975>         " ἧ U+1F27 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI
h<.i        <Char-7975>         " ἧ U+1F27 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI
"h~.i       <Char-7975>         " ἧ U+1F27 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI
,.E         <Char-7976>         " Ἠ U+1F28 GREEK CAPITAL LETTER ETA WITH PSILI
,.I         <Char-7976>         " Ἠ U+1F28 GREEK CAPITAL LETTER ETA WITH PSILI
H.e         <Char-7977>         " Ἡ U+1F29 GREEK CAPITAL LETTER ETA WITH DASIA
H.i         <Char-7977>         " Ἡ U+1F29 GREEK CAPITAL LETTER ETA WITH DASIA
,\\.E       <Char-7978>         " Ἢ U+1F2A GREEK CAPITAL LETTER ETA WITH PSILI AND VARIA
,\\.I       <Char-7978>         " Ἢ U+1F2A GREEK CAPITAL LETTER ETA WITH PSILI AND VARIA
H\\.e       <Char-7979>         " Ἣ U+1F2B GREEK CAPITAL LETTER ETA WITH DASIA AND VARIA
H\\.i       <Char-7979>         " Ἣ U+1F2B GREEK CAPITAL LETTER ETA WITH DASIA AND VARIA
,/.E        <Char-7980>         " Ἤ U+1F2C GREEK CAPITAL LETTER ETA WITH PSILI AND OXIA
,/.I        <Char-7980>         " Ἤ U+1F2C GREEK CAPITAL LETTER ETA WITH PSILI AND OXIA
H/.e        <Char-7981>         " Ἥ U+1F2D GREEK CAPITAL LETTER ETA WITH DASIA AND OXIA
H/.i        <Char-7981>         " Ἥ U+1F2D GREEK CAPITAL LETTER ETA WITH DASIA AND OXIA
,<.E        <Char-7982>         " Ἦ U+1F2E GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI
",~.E       <Char-7982>         " Ἦ U+1F2E GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI
,<.I        <Char-7982>         " Ἦ U+1F2E GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI
",~.I       <Char-7982>         " Ἦ U+1F2E GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI
H<.e        <Char-7983>         " Ἧ U+1F2F GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI
"H~.e       <Char-7983>         " Ἧ U+1F2F GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI
H<.i        <Char-7983>         " Ἧ U+1F2F GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI
"H~.i       <Char-7983>         " Ἧ U+1F2F GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI
,i          <Char-7984>         " ἰ U+1F30 GREEK SMALL LETTER IOTA WITH PSILI
hi          <Char-7985>         " ἱ U+1F31 GREEK SMALL LETTER IOTA WITH DASIA
,\\i        <Char-7986>         " ἲ U+1F32 GREEK SMALL LETTER IOTA WITH PSILI AND VARIA
h\\i        <Char-7987>         " ἳ U+1F33 GREEK SMALL LETTER IOTA WITH DASIA AND VARIA
,/i         <Char-7988>         " ἴ U+1F34 GREEK SMALL LETTER IOTA WITH PSILI AND OXIA
h/i         <Char-7989>         " ἵ U+1F35 GREEK SMALL LETTER IOTA WITH DASIA AND OXIA
,<i         <Char-7990>         " ἶ U+1F36 GREEK SMALL LETTER IOTA WITH PSILI AND PERISPOMENI
",~i        <Char-7990>         " ἶ U+1F36 GREEK SMALL LETTER IOTA WITH PSILI AND PERISPOMENI
h<i         <Char-7991>         " ἷ U+1F37 GREEK SMALL LETTER IOTA WITH DASIA AND PERISPOMENI
"h~i        <Char-7991>         " ἷ U+1F37 GREEK SMALL LETTER IOTA WITH DASIA AND PERISPOMENI
,I          <Char-7992>         " Ἰ U+1F38 GREEK CAPITAL LETTER IOTA WITH PSILI
Hi          <Char-7993>         " Ἱ U+1F39 GREEK CAPITAL LETTER IOTA WITH DASIA
,\\I        <Char-7994>         " Ἲ U+1F3A GREEK CAPITAL LETTER IOTA WITH PSILI AND VARIA
H\\i        <Char-7995>         " Ἳ U+1F3B GREEK CAPITAL LETTER IOTA WITH DASIA AND VARIA
,/I         <Char-7996>         " Ἴ U+1F3C GREEK CAPITAL LETTER IOTA WITH PSILI AND OXIA
H/i         <Char-7997>         " Ἵ U+1F3D GREEK CAPITAL LETTER IOTA WITH DASIA AND OXIA
,<I         <Char-7998>         " Ἶ U+1F3E GREEK CAPITAL LETTER IOTA WITH PSILI AND PERISPOMENI
",~I        <Char-7998>         " Ἶ U+1F3E GREEK CAPITAL LETTER IOTA WITH PSILI AND PERISPOMENI
H<i         <Char-7999>         " Ἷ U+1F3F GREEK CAPITAL LETTER IOTA WITH DASIA AND PERISPOMENI
"H~i        <Char-7999>         " Ἷ U+1F3F GREEK CAPITAL LETTER IOTA WITH DASIA AND PERISPOMENI
,o          <Char-8000>         " ὀ U+1F40 GREEK SMALL LETTER OMICRON WITH PSILI
ho          <Char-8001>         " ὁ U+1F41 GREEK SMALL LETTER OMICRON WITH DASIA
,\\o        <Char-8002>         " ὂ U+1F42 GREEK SMALL LETTER OMICRON WITH PSILI AND VARIA
h\\o        <Char-8003>         " ὃ U+1F43 GREEK SMALL LETTER OMICRON WITH DASIA AND VARIA
,/o         <Char-8004>         " ὄ U+1F44 GREEK SMALL LETTER OMICRON WITH PSILI AND OXIA
h/o         <Char-8005>         " ὅ U+1F45 GREEK SMALL LETTER OMICRON WITH DASIA AND OXIA
,O          <Char-8008>         " Ὀ U+1F48 GREEK CAPITAL LETTER OMICRON WITH PSILI
Ho          <Char-8009>         " Ὁ U+1F49 GREEK CAPITAL LETTER OMICRON WITH DASIA
,\\O        <Char-8010>         " Ὂ U+1F4A GREEK CAPITAL LETTER OMICRON WITH PSILI AND VARIA
H\\o        <Char-8011>         " Ὃ U+1F4B GREEK CAPITAL LETTER OMICRON WITH DASIA AND VARIA
,/O         <Char-8012>         " Ὄ U+1F4C GREEK CAPITAL LETTER OMICRON WITH PSILI AND OXIA
H/o         <Char-8013>         " Ὅ U+1F4D GREEK CAPITAL LETTER OMICRON WITH DASIA AND OXIA
,u          <Char-8016>         " ὐ U+1F50 GREEK SMALL LETTER UPSILON WITH PSILI
,y          <Char-8016>         " ὐ Y+1F50 GREEK SMALL LETTER UPSILON WITH PSILI
hu          <Char-8017>         " ὑ U+1F51 GREEK SMALL LETTER UPSILON WITH DASIA
hy          <Char-8017>         " ὑ Y+1F51 GREEK SMALL LETTER UPSILON WITH DASIA
,\\u        <Char-8018>         " ὒ U+1F52 GREEK SMALL LETTER UPSILON WITH PSILI AND VARIA
,\\y        <Char-8018>         " ὒ Y+1F52 GREEK SMALL LETTER UPSILON WITH PSILI AND VARIA
h\\u        <Char-8019>         " ὓ U+1F53 GREEK SMALL LETTER UPSILON WITH DASIA AND VARIA
h\\y        <Char-8019>         " ὓ Y+1F53 GREEK SMALL LETTER UPSILON WITH DASIA AND VARIA
,/u         <Char-8020>         " ὔ U+1F54 GREEK SMALL LETTER UPSILON WITH PSILI AND OXIA
,/y         <Char-8020>         " ὔ Y+1F54 GREEK SMALL LETTER UPSILON WITH PSILI AND OXIA
h/u         <Char-8021>         " ὕ U+1F55 GREEK SMALL LETTER UPSILON WITH DASIA AND OXIA
h/y         <Char-8021>         " ὕ Y+1F55 GREEK SMALL LETTER UPSILON WITH DASIA AND OXIA
,<u         <Char-8022>         " ὖ U+1F56 GREEK SMALL LETTER UPSILON WITH PSILI AND PERISPOMENI
",~u        <Char-8022>         " ὖ U+1F56 GREEK SMALL LETTER UPSILON WITH PSILI AND PERISPOMENI
,<y         <Char-8022>         " ὖ Y+1F56 GREEK SMALL LETTER UPSILON WITH PSILI AND PERISPOMENI
",~y        <Char-8022>         " ὖ Y+1F56 GREEK SMALL LETTER UPSILON WITH PSILI AND PERISPOMENI
h<u         <Char-8023>         " ὗ U+1F57 GREEK SMALL LETTER UPSILON WITH DASIA AND PERISPOMENI
"h~u        <Char-8023>         " ὗ U+1F57 GREEK SMALL LETTER UPSILON WITH DASIA AND PERISPOMENI
h<y         <Char-8023>         " ὗ Y+1F57 GREEK SMALL LETTER UPSILON WITH DASIA AND PERISPOMENI
"h~y        <Char-8023>         " ὗ Y+1F57 GREEK SMALL LETTER UPSILON WITH DASIA AND PERISPOMENI
Hu          <Char-8025>         " Ὑ U+1F59 GREEK CAPITAL LETTER UPSILON WITH DASIA
Hy          <Char-8025>         " Ὑ Y+1F59 GREEK CAPITAL LETTER UPSILON WITH DASIA
H\\u        <Char-8027>         " Ὓ U+1F5B GREEK CAPITAL LETTER UPSILON WITH DASIA AND VARIA
H\\y        <Char-8027>         " Ὓ Y+1F5B GREEK CAPITAL LETTER UPSILON WITH DASIA AND VARIA
H/u         <Char-8029>         " Ὕ U+1F5D GREEK CAPITAL LETTER UPSILON WITH DASIA AND OXIA
H/y         <Char-8029>         " Ὕ Y+1F5D GREEK CAPITAL LETTER UPSILON WITH DASIA AND OXIA
H<u         <Char-8031>         " Ὗ U+1F5F GREEK CAPITAL LETTER UPSILON WITH DASIA AND PERISPOMENI
"H~u        <Char-8031>         " Ὗ U+1F5F GREEK CAPITAL LETTER UPSILON WITH DASIA AND PERISPOMENI
H<y         <Char-8031>         " Ὗ Y+1F5F GREEK CAPITAL LETTER UPSILON WITH DASIA AND PERISPOMENI
"H~y        <Char-8031>         " Ὗ Y+1F5F GREEK CAPITAL LETTER UPSILON WITH DASIA AND PERISPOMENI
,.o         <Char-8032>         " ὠ U+1F60 GREEK SMALL LETTER OMEGA WITH PSILI
h.o         <Char-8033>         " ὡ U+1F61 GREEK SMALL LETTER OMEGA WITH DASIA
,\\.o       <Char-8034>         " ὢ U+1F62 GREEK SMALL LETTER OMEGA WITH PSILI AND VARIA
h\\.o       <Char-8035>         " ὣ U+1F63 GREEK SMALL LETTER OMEGA WITH DASIA AND VARIA
,/.o        <Char-8036>         " ὤ U+1F64 GREEK SMALL LETTER OMEGA WITH PSILI AND OXIA
h/.o        <Char-8037>         " ὥ U+1F65 GREEK SMALL LETTER OMEGA WITH DASIA AND OXIA
,<.o        <Char-8038>         " ὦ U+1F66 GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI
",~.o       <Char-8038>         " ὦ U+1F66 GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI
h<.o        <Char-8039>         " ὧ U+1F67 GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI
"h~.o       <Char-8039>         " ὧ U+1F67 GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI
,.O         <Char-8040>         " Ὠ U+1F68 GREEK CAPITAL LETTER OMEGA WITH PSILI
H.o         <Char-8041>         " Ὡ U+1F69 GREEK CAPITAL LETTER OMEGA WITH DASIA
,\\.O       <Char-8042>         " Ὢ U+1F6A GREEK CAPITAL LETTER OMEGA WITH PSILI AND VARIA
H\\.o       <Char-8043>         " Ὣ U+1F6B GREEK CAPITAL LETTER OMEGA WITH DASIA AND VARIA
,/.O        <Char-8044>         " Ὤ U+1F6C GREEK CAPITAL LETTER OMEGA WITH PSILI AND OXIA
H/.o        <Char-8045>         " Ὥ U+1F6D GREEK CAPITAL LETTER OMEGA WITH DASIA AND OXIA
,<.O        <Char-8046>         " Ὦ U+1F6E GREEK CAPITAL LETTER OMEGA WITH PSILI AND PERISPOMENI
",~.O       <Char-8046>         " Ὦ U+1F6E GREEK CAPITAL LETTER OMEGA WITH PSILI AND PERISPOMENI
H<.o        <Char-8047>         " Ὧ U+1F6F GREEK CAPITAL LETTER OMEGA WITH DASIA AND PERISPOMENI
"H~.o       <Char-8047>         " Ὧ U+1F6F GREEK CAPITAL LETTER OMEGA WITH DASIA AND PERISPOMENI
\\a         <Char-8048>         " ὰ U+1F70 GREEK SMALL LETTER ALPHA WITH VARIA
/a          <Char-8049>         " ά U+1F71 GREEK SMALL LETTER ALPHA WITH OXIA
\\e         <Char-8050>         " ὲ U+1F72 GREEK SMALL LETTER EPSILON WITH VARIA
/e          <Char-8051>         " έ U+1F73 GREEK SMALL LETTER EPSILON WITH OXIA
\\.e        <Char-8052>         " ὴ U+1F74 GREEK SMALL LETTER ETA WITH VARIA
\\.i        <Char-8052>         " ὴ U+1F74 GREEK SMALL LETTER ETA WITH VARIA
/.e         <Char-8053>         " ή U+1F75 GREEK SMALL LETTER ETA WITH OXIA
/.i         <Char-8053>         " ή U+1F75 GREEK SMALL LETTER ETA WITH OXIA
\\i         <Char-8054>         " ὶ U+1F76 GREEK SMALL LETTER IOTA WITH VARIA
/i          <Char-8055>         " ί U+1F77 GREEK SMALL LETTER IOTA WITH OXIA
\\o         <Char-8056>         " ὸ U+1F78 GREEK SMALL LETTER OMICRON WITH VARIA
/o          <Char-8057>         " ό U+1F79 GREEK SMALL LETTER OMICRON WITH OXIA
\\u         <Char-8058>         " ὺ U+1F7A GREEK SMALL LETTER UPSILON WITH VARIA
\\y         <Char-8058>         " ὺ Y+1F7A GREEK SMALL LETTER UPSILON WITH VARIA
/u          <Char-8059>         " ύ U+1F7B GREEK SMALL LETTER UPSILON WITH OXIA
/y          <Char-8059>         " ύ Y+1F7B GREEK SMALL LETTER UPSILON WITH OXIA
\\.o        <Char-8060>         " ὼ U+1F7C GREEK SMALL LETTER OMEGA WITH VARIA
/.o         <Char-8061>         " ώ U+1F7D GREEK SMALL LETTER OMEGA WITH OXIA
            <Char-8062>         " ὾ U+
            <Char-8063>         " ὿ U+
,a;i        <Char-8064>         " ᾀ U+1F80 GREEK SMALL LETTER ALPHA WITH PSILI AND YPOGEGRAMMENI
",a_i       <Char-8064>         " ᾀ U+1F80 GREEK SMALL LETTER ALPHA WITH PSILI AND YPOGEGRAMMENI
ha;i        <Char-8065>         " ᾁ U+1F81 GREEK SMALL LETTER ALPHA WITH DASIA AND YPOGEGRAMMENI
"ha_i       <Char-8065>         " ᾁ U+1F81 GREEK SMALL LETTER ALPHA WITH DASIA AND YPOGEGRAMMENI
,\\a;i      <Char-8066>         " ᾂ U+1F82 GREEK SMALL LETTER ALPHA WITH PSILI AND VARIA AND YPOGEGRAMMENI
",\\a_i     <Char-8066>         " ᾂ U+1F82 GREEK SMALL LETTER ALPHA WITH PSILI AND VARIA AND YPOGEGRAMMENI
h\\a;i      <Char-8067>         " ᾃ U+1F83 GREEK SMALL LETTER ALPHA WITH DASIA AND VARIA AND YPOGEGRAMMENI
"h\\a_i     <Char-8067>         " ᾃ U+1F83 GREEK SMALL LETTER ALPHA WITH DASIA AND VARIA AND YPOGEGRAMMENI
,/a;i       <Char-8068>         " ᾄ U+1F84 GREEK SMALL LETTER ALPHA WITH PSILI AND OXIA AND YPOGEGRAMMENI
",/a_i      <Char-8068>         " ᾄ U+1F84 GREEK SMALL LETTER ALPHA WITH PSILI AND OXIA AND YPOGEGRAMMENI
h/a;i       <Char-8069>         " ᾅ U+1F85 GREEK SMALL LETTER ALPHA WITH DASIA AND OXIA AND YPOGEGRAMMENI
"h/a_i      <Char-8069>         " ᾅ U+1F85 GREEK SMALL LETTER ALPHA WITH DASIA AND OXIA AND YPOGEGRAMMENI
,<a;i       <Char-8070>         " ᾆ U+1F86 GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
",~a;i      <Char-8070>         " ᾆ U+1F86 GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
",<a_i      <Char-8070>         " ᾆ U+1F86 GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
"",~a_i     <Char-8070>         " ᾆ U+1F86 GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
h<a;i       <Char-8071>         " ᾇ U+1F87 GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
"h~a;i      <Char-8071>         " ᾇ U+1F87 GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
"h<a_i      <Char-8071>         " ᾇ U+1F87 GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
""h~a_i     <Char-8071>         " ᾇ U+1F87 GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
,.e;i       <Char-8080>         " ᾐ U+1F90 GREEK SMALL LETTER ETA WITH PSILI AND YPOGEGRAMMENI
",.e_i      <Char-8080>         " ᾐ U+1F90 GREEK SMALL LETTER ETA WITH PSILI AND YPOGEGRAMMENI
,.i;i       <Char-8080>         " ᾐ U+1F90 GREEK SMALL LETTER ETA WITH PSILI AND YPOGEGRAMMENI
",.i_i      <Char-8080>         " ᾐ U+1F90 GREEK SMALL LETTER ETA WITH PSILI AND YPOGEGRAMMENI
h.e;i       <Char-8081>         " ᾑ U+1F91 GREEK SMALL LETTER ETA WITH DASIA AND YPOGEGRAMMENI
"h.e_i      <Char-8081>         " ᾑ U+1F91 GREEK SMALL LETTER ETA WITH DASIA AND YPOGEGRAMMENI
h.i;i       <Char-8081>         " ᾑ U+1F91 GREEK SMALL LETTER ETA WITH DASIA AND YPOGEGRAMMENI
"h.i_i      <Char-8081>         " ᾑ U+1F91 GREEK SMALL LETTER ETA WITH DASIA AND YPOGEGRAMMENI
,\\.e;i     <Char-8082>         " ᾒ U+1F92 GREEK SMALL LETTER ETA WITH PSILI AND VARIA AND YPOGEGRAMMENI
",\\.e_i    <Char-8082>         " ᾒ U+1F92 GREEK SMALL LETTER ETA WITH PSILI AND VARIA AND YPOGEGRAMMENI
,\\.i;i     <Char-8082>         " ᾒ U+1F92 GREEK SMALL LETTER ETA WITH PSILI AND VARIA AND YPOGEGRAMMENI
",\\.i_i    <Char-8082>         " ᾒ U+1F92 GREEK SMALL LETTER ETA WITH PSILI AND VARIA AND YPOGEGRAMMENI
h\\.e;i     <Char-8083>         " ᾓ U+1F93 GREEK SMALL LETTER ETA WITH DASIA AND VARIA AND YPOGEGRAMMENI
"h\\.e_i    <Char-8083>         " ᾓ U+1F93 GREEK SMALL LETTER ETA WITH DASIA AND VARIA AND YPOGEGRAMMENI
h\\.i;i     <Char-8083>         " ᾓ U+1F93 GREEK SMALL LETTER ETA WITH DASIA AND VARIA AND YPOGEGRAMMENI
"h\\.i_i    <Char-8083>         " ᾓ U+1F93 GREEK SMALL LETTER ETA WITH DASIA AND VARIA AND YPOGEGRAMMENI
,/.e;i      <Char-8084>         " ᾔ U+1F94 GREEK SMALL LETTER ETA WITH PSILI AND OXIA AND YPOGEGRAMMENI
",/.e_i     <Char-8084>         " ᾔ U+1F94 GREEK SMALL LETTER ETA WITH PSILI AND OXIA AND YPOGEGRAMMENI
,/.i;i      <Char-8084>         " ᾔ U+1F94 GREEK SMALL LETTER ETA WITH PSILI AND OXIA AND YPOGEGRAMMENI
",/.i_i     <Char-8084>         " ᾔ U+1F94 GREEK SMALL LETTER ETA WITH PSILI AND OXIA AND YPOGEGRAMMENI
h/.e;i      <Char-8085>         " ᾕ U+1F95 GREEK SMALL LETTER ETA WITH DASIA AND OXIA AND YPOGEGRAMMENI
"h/.e_i     <Char-8085>         " ᾕ U+1F95 GREEK SMALL LETTER ETA WITH DASIA AND OXIA AND YPOGEGRAMMENI
h/.i;i      <Char-8085>         " ᾕ U+1F95 GREEK SMALL LETTER ETA WITH DASIA AND OXIA AND YPOGEGRAMMENI
"h/.i_i     <Char-8085>         " ᾕ U+1F95 GREEK SMALL LETTER ETA WITH DASIA AND OXIA AND YPOGEGRAMMENI
,<.e;i      <Char-8086>         " ᾖ U+1F96 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
",~.e;i     <Char-8086>         " ᾖ U+1F96 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
",<.e_i     <Char-8086>         " ᾖ U+1F96 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
"",~.e_i    <Char-8086>         " ᾖ U+1F96 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
,<.i;i      <Char-8086>         " ᾖ U+1F96 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
",~.i;i     <Char-8086>         " ᾖ U+1F96 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
",<.i_i     <Char-8086>         " ᾖ U+1F96 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
"",~.i_i    <Char-8086>         " ᾖ U+1F96 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
h<.e;i      <Char-8087>         " ᾗ U+1F97 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
"h~.e;i     <Char-8087>         " ᾗ U+1F97 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
"h<.e_i     <Char-8087>         " ᾗ U+1F97 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
""h~.e_i    <Char-8087>         " ᾗ U+1F97 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
h<.i;i      <Char-8087>         " ᾗ U+1F97 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
"h~.i;i     <Char-8087>         " ᾗ U+1F97 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
"h<.i_i     <Char-8087>         " ᾗ U+1F97 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
""h~.i_i    <Char-8087>         " ᾗ U+1F97 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
,.o;i       <Char-8096>         " ᾠ U+1FA0 GREEK SMALL LETTER OMEGA WITH PSILI AND YPOGEGRAMMENI
",.o_i      <Char-8096>         " ᾠ U+1FA0 GREEK SMALL LETTER OMEGA WITH PSILI AND YPOGEGRAMMENI
h.o;i       <Char-8097>         " ᾡ U+1FA1 GREEK SMALL LETTER OMEGA WITH DASIA AND YPOGEGRAMMENI
"h.o_i      <Char-8097>         " ᾡ U+1FA1 GREEK SMALL LETTER OMEGA WITH DASIA AND YPOGEGRAMMENI
,\\.o;i     <Char-8098>         " ᾢ U+1FA2 GREEK SMALL LETTER OMEGA WITH PSILI AND VARIA AND YPOGEGRAMMENI
",\\.o_i    <Char-8098>         " ᾢ U+1FA2 GREEK SMALL LETTER OMEGA WITH PSILI AND VARIA AND YPOGEGRAMMENI
h\\.o;i     <Char-8099>         " ᾣ U+1FA3 GREEK SMALL LETTER OMEGA WITH DASIA AND VARIA AND YPOGEGRAMMENI
"h\\.o_i    <Char-8099>         " ᾣ U+1FA3 GREEK SMALL LETTER OMEGA WITH DASIA AND VARIA AND YPOGEGRAMMENI
,/.o;i      <Char-8100>         " ᾤ U+1FA4 GREEK SMALL LETTER OMEGA WITH PSILI AND OXIA AND YPOGEGRAMMENI
",/.o_i     <Char-8100>         " ᾤ U+1FA4 GREEK SMALL LETTER OMEGA WITH PSILI AND OXIA AND YPOGEGRAMMENI
h/.o;i      <Char-8101>         " ᾥ U+1FA5 GREEK SMALL LETTER OMEGA WITH DASIA AND OXIA AND YPOGEGRAMMENI
"h/.o_i     <Char-8101>         " ᾥ U+1FA5 GREEK SMALL LETTER OMEGA WITH DASIA AND OXIA AND YPOGEGRAMMENI
,<.o;i      <Char-8102>         " ᾦ U+1FA6 GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
",~.o;i     <Char-8102>         " ᾦ U+1FA6 GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
",<.o_i     <Char-8102>         " ᾦ U+1FA6 GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
"",~.o_i    <Char-8102>         " ᾦ U+1FA6 GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
h<.o;i      <Char-8103>         " ᾧ U+1FA7 GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
"h~.o;i     <Char-8103>         " ᾧ U+1FA7 GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
"h<.o_i     <Char-8103>         " ᾧ U+1FA7 GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
""h~.o_i    <Char-8103>         " ᾧ U+1FA7 GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
)a          <Char-8112>         " ᾰ U+1FB0 GREEK SMALL LETTER ALPHA WITH VRACHY
|a          <Char-8113>         " ᾱ U+1FB1 GREEK SMALL LETTER ALPHA WITH MACRON
\\a;i       <Char-8114>         " ᾲ U+1FB2 GREEK SMALL LETTER ALPHA WITH VARIA AND YPOGEGRAMMENI
"\\a_i      <Char-8114>         " ᾲ U+1FB2 GREEK SMALL LETTER ALPHA WITH VARIA AND YPOGEGRAMMENI
a;i         <Char-8115>         " ᾳ U+1FB3 GREEK SMALL LETTER ALPHA WITH YPOGEGRAMMENI
"a_i        <Char-8115>         " ᾳ U+1FB3 GREEK SMALL LETTER ALPHA WITH YPOGEGRAMMENI
/a;i        <Char-8116>         " ᾴ U+1FB4 GREEK SMALL LETTER ALPHA WITH OXIA AND YPOGEGRAMMENI
"/a_i       <Char-8116>         " ᾴ U+1FB4 GREEK SMALL LETTER ALPHA WITH OXIA AND YPOGEGRAMMENI
<a          <Char-8118>         " ᾶ U+1FB6 GREEK SMALL LETTER ALPHA WITH PERISPOMENI
"~a         <Char-8118>         " ᾶ U+1FB6 GREEK SMALL LETTER ALPHA WITH PERISPOMENI
<a;i        <Char-8119>         " ᾷ U+1FB7 GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI
"~a;i       <Char-8119>         " ᾷ U+1FB7 GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI
"<a_i       <Char-8119>         " ᾷ U+1FB7 GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI
""~a_i      <Char-8119>         " ᾷ U+1FB7 GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI
)A          <Char-8120>         " Ᾰ U+1FB8 GREEK CAPITAL LETTER ALPHA WITH VRACHY
|A          <Char-8121>         " Ᾱ U+1FB9 GREEK CAPITAL LETTER ALPHA WITH MACRON
\\A         <Char-8122>         " Ὰ U+1FBA GREEK CAPITAL LETTER ALPHA WITH VARIA
/A          <Char-8123>         " Ά U+1FBB GREEK CAPITAL LETTER ALPHA WITH OXIA
\\.e;i      <Char-8130>         " ῂ U+1FC2 GREEK SMALL LETTER ETA WITH VARIA AND YPOGEGRAMMENI
"\\.e_i     <Char-8130>         " ῂ U+1FC2 GREEK SMALL LETTER ETA WITH VARIA AND YPOGEGRAMMENI
\\.i;i      <Char-8130>         " ῂ U+1FC2 GREEK SMALL LETTER ETA WITH VARIA AND YPOGEGRAMMENI
"\\.i_i     <Char-8130>         " ῂ U+1FC2 GREEK SMALL LETTER ETA WITH VARIA AND YPOGEGRAMMENI
.e;i        <Char-8131>         " ῃ U+1FC3 GREEK SMALL LETTER ETA WITH YPOGEGRAMMENI
".e_i       <Char-8131>         " ῃ U+1FC3 GREEK SMALL LETTER ETA WITH YPOGEGRAMMENI
.i;i        <Char-8131>         " ῃ U+1FC3 GREEK SMALL LETTER ETA WITH YPOGEGRAMMENI
".i_i       <Char-8131>         " ῃ U+1FC3 GREEK SMALL LETTER ETA WITH YPOGEGRAMMENI
/.e;i       <Char-8132>         " ῄ U+1FC4 GREEK SMALL LETTER ETA WITH OXIA AND YPOGEGRAMMENI
"/.e_i      <Char-8132>         " ῄ U+1FC4 GREEK SMALL LETTER ETA WITH OXIA AND YPOGEGRAMMENI
/.i;i       <Char-8132>         " ῄ U+1FC4 GREEK SMALL LETTER ETA WITH OXIA AND YPOGEGRAMMENI
"/.i_i      <Char-8132>         " ῄ U+1FC4 GREEK SMALL LETTER ETA WITH OXIA AND YPOGEGRAMMENI
<.e         <Char-8134>         " ῆ U+1FC6 GREEK SMALL LETTER ETA WITH PERISPOMENI
"~.e        <Char-8134>         " ῆ U+1FC6 GREEK SMALL LETTER ETA WITH PERISPOMENI
<.i         <Char-8134>         " ῆ U+1FC6 GREEK SMALL LETTER ETA WITH PERISPOMENI
"~.i        <Char-8134>         " ῆ U+1FC6 GREEK SMALL LETTER ETA WITH PERISPOMENI
<.e;i       <Char-8135>         " ῇ U+1FC7 GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI
"~.e;i      <Char-8135>         " ῇ U+1FC7 GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI
"<.e_i      <Char-8135>         " ῇ U+1FC7 GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI
""~.e_i     <Char-8135>         " ῇ U+1FC7 GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI
<.i;i       <Char-8135>         " ῇ U+1FC7 GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI
"~.i;i      <Char-8135>         " ῇ U+1FC7 GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI
"<.i_i      <Char-8135>         " ῇ U+1FC7 GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI
""~.i_i     <Char-8135>         " ῇ U+1FC7 GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI
\\E         <Char-8136>         " Ὲ U+1FC8 GREEK CAPITAL LETTER EPSILON WITH VARIA
/E          <Char-8137>         " Έ U+1FC9 GREEK CAPITAL LETTER EPSILON WITH OXIA
\\.E        <Char-8138>         " Ὴ U+1FCA GREEK CAPITAL LETTER ETA WITH VARIA
\\.I        <Char-8138>         " Ὴ U+1FCA GREEK CAPITAL LETTER ETA WITH VARIA
/.E         <Char-8139>         " Ή U+1FCB GREEK CAPITAL LETTER ETA WITH OXIA
/.I         <Char-8139>         " Ή U+1FCB GREEK CAPITAL LETTER ETA WITH OXIA
'\\         <Char-8141>         " ῍ U+1FCD GREEK PSILI AND VARIA
'/          <Char-8142>         " ῎ U+1FCE GREEK PSILI AND OXIA
'<          <Char-8143>         " ῏ U+1FCF GREEK PSILI AND PERISPOMENI
"'~         <Char-8143>         " ῏ U+1FCF GREEK PSILI AND PERISPOMENI
)i          <Char-8144>         " ῐ U+1FD0 GREEK SMALL LETTER IOTA WITH VRACHY
|i          <Char-8145>         " ῑ U+1FD1 GREEK SMALL LETTER IOTA WITH MACRON
:\\i        <Char-8146>         " ῒ U+1FD2 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND VARIA
:/i         <Char-8147>         " ΐ U+1FD3 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND OXIA
            <Char-8148>         " ῔ U+
            <Char-8149>         " ῕ U+
<i          <Char-8150>         " ῖ U+1FD6 GREEK SMALL LETTER IOTA WITH PERISPOMENI
"~i         <Char-8150>         " ῖ U+1FD6 GREEK SMALL LETTER IOTA WITH PERISPOMENI
:<i         <Char-8151>         " ῗ U+1FD7 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND PERISPOMENI
":~i        <Char-8151>         " ῗ U+1FD7 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND PERISPOMENI
)I          <Char-8152>         " Ῐ U+1FD8 GREEK CAPITAL LETTER IOTA WITH VRACHY
|I          <Char-8153>         " Ῑ U+1FD9 GREEK CAPITAL LETTER IOTA WITH MACRON
\\I         <Char-8154>         " Ὶ U+1FDA GREEK CAPITAL LETTER IOTA WITH VARIA
/I          <Char-8155>         " Ί U+1FDB GREEK CAPITAL LETTER IOTA WITH OXIA
            <Char-8156>         " ῜ U+
`\\         <Char-8157>         " ῝ U+1FDD GREEK DASIA AND VARIA
`/          <Char-8158>         " ῞ U+1FDE GREEK DASIA AND OXIA
`<          <Char-8159>         " ῟ U+1FDF GREEK DASIA AND PERISPOMENI
"`~         <Char-8159>         " ῟ U+1FDF GREEK DASIA AND PERISPOMENI
)u          <Char-8160>         " ῠ U+1FE0 GREEK SMALL LETTER UPSILON WITH VRACHY
)y          <Char-8160>         " ῠ Y+1FE0 GREEK SMALL LETTER UPSILON WITH VRACHY
|u          <Char-8161>         " ῡ U+1FE1 GREEK SMALL LETTER UPSILON WITH MACRON
|y          <Char-8161>         " ῡ Y+1FE1 GREEK SMALL LETTER UPSILON WITH MACRON
:\\u        <Char-8162>         " ῢ U+1FE2 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND VARIA
:\\y        <Char-8162>         " ῢ Y+1FE2 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND VARIA
:/u         <Char-8163>         " ΰ U+1FE3 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND OXIA
:/y         <Char-8163>         " ΰ Y+1FE3 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND OXIA
,r          <Char-8164>         " ῤ U+1FE4 GREEK SMALL LETTER RHO WITH PSILI
rh          <Char-8165>         " ῥ U+1FE5 GREEK SMALL LETTER RHO WITH DASIA
<u          <Char-8166>         " ῦ U+1FE6 GREEK SMALL LETTER UPSILON WITH PERISPOMENI
"~u         <Char-8166>         " ῦ U+1FE6 GREEK SMALL LETTER UPSILON WITH PERISPOMENI
<y          <Char-8166>         " ῦ Y+1FE6 GREEK SMALL LETTER UPSILON WITH PERISPOMENI
"~y         <Char-8166>         " ῦ Y+1FE6 GREEK SMALL LETTER UPSILON WITH PERISPOMENI
:<u         <Char-8167>         " ῧ U+1FE7 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND PERISPOMENI
":~u        <Char-8167>         " ῧ U+1FE7 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND PERISPOMENI
:<y         <Char-8167>         " ῧ Y+1FE7 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND PERISPOMENI
":~y        <Char-8167>         " ῧ Y+1FE7 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND PERISPOMENI
)U          <Char-8168>         " Ῠ U+1FE8 GREEK CAPITAL LETTER UPSILON WITH VRACHY
)Y          <Char-8168>         " Ῠ U+1FE8 GREEK CAPITAL LETTER UPSILON WITH VRACHY
|U          <Char-8169>         " Ῡ U+1FE9 GREEK CAPITAL LETTER UPSILON WITH MACRON
|Y          <Char-8169>         " Ῡ U+1FE9 GREEK CAPITAL LETTER UPSILON WITH MACRON
\\U         <Char-8170>         " Ὺ U+1FEA GREEK CAPITAL LETTER UPSILON WITH VARIA
\\Y         <Char-8170>         " Ὺ U+1FEA GREEK CAPITAL LETTER UPSILON WITH VARIA
/U          <Char-8171>         " Ύ U+1FEB GREEK CAPITAL LETTER UPSILON WITH OXIA
/Y          <Char-8171>         " Ύ U+1FEB GREEK CAPITAL LETTER UPSILON WITH OXIA
Rh          <Char-8172>         " Ῥ U+1FEC GREEK CAPITAL LETTER RHO WITH DASIA
RH          <Char-8172>         " Ῥ U+1FEC GREEK CAPITAL LETTER RHO WITH DASIA
\"\\        <Char-8173>         " ῭ U+1FED GREEK DIALYTIKA AND VARIA
\"/         <Char-8174>         " ΅ U+1FEE GREEK DIALYTIKA AND OXIA
\\.o;i      <Char-8178>         " ῲ U+1FF2 GREEK SMALL LETTER OMEGA WITH VARIA AND YPOGEGRAMMENI
"\\.o_i     <Char-8178>         " ῲ U+1FF2 GREEK SMALL LETTER OMEGA WITH VARIA AND YPOGEGRAMMENI
.o;i        <Char-8179>         " ῳ U+1FF3 GREEK SMALL LETTER OMEGA WITH YPOGEGRAMMENI
".o_i       <Char-8179>         " ῳ U+1FF3 GREEK SMALL LETTER OMEGA WITH YPOGEGRAMMENI
/.o;i       <Char-8180>         " ῴ U+1FF4 GREEK SMALL LETTER OMEGA WITH OXIA AND YPOGEGRAMMENI
"/.o_i      <Char-8180>         " ῴ U+1FF4 GREEK SMALL LETTER OMEGA WITH OXIA AND YPOGEGRAMMENI
<.o         <Char-8182>         " ῶ U+1FF6 GREEK SMALL LETTER OMEGA WITH PERISPOMENI
"~.o        <Char-8182>         " ῶ U+1FF6 GREEK SMALL LETTER OMEGA WITH PERISPOMENI
<.o;i       <Char-8183>         " ῷ U+1FF7 GREEK SMALL LETTER OMEGA WITH PERISPOMENI AND YPOGEGRAMMENI
"~.o;i      <Char-8183>         " ῷ U+1FF7 GREEK SMALL LETTER OMEGA WITH PERISPOMENI AND YPOGEGRAMMENI
"<.o_i      <Char-8183>         " ῷ U+1FF7 GREEK SMALL LETTER OMEGA WITH PERISPOMENI AND YPOGEGRAMMENI
""~.o_i     <Char-8183>         " ῷ U+1FF7 GREEK SMALL LETTER OMEGA WITH PERISPOMENI AND YPOGEGRAMMENI
\\O         <Char-8184>         " Ὸ U+1FF8 GREEK CAPITAL LETTER OMICRON WITH VARIA
/O          <Char-8185>         " Ό U+1FF9 GREEK CAPITAL LETTER OMICRON WITH OXIA
\\.O        <Char-8186>         " Ὼ U+1FFA GREEK CAPITAL LETTER OMEGA WITH VARIA
/.O         <Char-8187>         " Ώ U+1FFB GREEK CAPITAL LETTER OMEGA WITH OXIA
