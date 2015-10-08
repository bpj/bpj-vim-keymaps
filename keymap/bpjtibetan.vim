" vim: et tw=0 ts=40 sts=40

" ASCII to Unicode Tibetan
"
" N.B. that the ASCII mapping is *not* Wylie, except for the names in
" brackets. Notably:
"
"    Sanskrit letters:          T Th D Dh N S kS rI lI
"    Y R L W vs. y r l w:       Lowercase are the usual subjoined letters.
"                               Uppercase are the normal non-subjoined letters.
"                               The fixed-form subjoined letters are available
"                               as +Y +R +W.
"   ka/k/.k:                    The ka/k alternatives are available for all letters
"                               both normal and subjoined letters (as +ka/+k),
"                               while the .k alternatives are available only for normal
"                               letters. (Use +ka/+k for subjoined.)
"   Wylie g.ya                  Is thus typed g.Ya or gYa.
"   Subjoined letters:          All subjoined letters are available as +ka etc.
"                               so you can in theory build arbitrary stacks!
"                               The exception are:
"    Y R L W vs. y r l w:       Lowercase are the usual subjoined letters.
"                               Uppercase are the normal non-subjoined letters.
"                               The fixed-form subjoined letters are available
"                               as +Y +R +W.
"   ska, rka, lka etc.:         Standard Tibetan stacks are precomposed, so you just
"                               type sk Rk Lk, and thanks to the preceding entry
"                               ky, sky, kr, skr etc. work as you would expect too.
"   tza and tsa:                Instead of tsa and tsha!
"   A:                          Is the last letter of the alphabet. 
"                               ASCII a is essentially a no-op used in 
"                               alternative mappings like ka vs. k.
"                               N.B. you must type Ai Au Ae Ao for initial vowels!
"                               Maybe I'll add qa/q etcetera for the last letter.
"   I, E, O                     Are inverted i, doubled e and doubled o respectively.
"   Ha vs. ha vs. ':            Wylie ha is Ha etc. while Wylie 'a is ha etc.
"                               and ' (apostrophe) is subscript 'a ('a chung).
"                               Note that you should write k'u and not ku', and 
"                               the u may not be visible in Vim.
"   Fixed-form ra:              Is "ra/"r/".r
"   Inverted ra (RRA):          Is "Ra/"R/".R
"   tseg and tseg bstar:        Are , and - respectively.
"   shad and nyis shad:         Are / and // respectively.
"   Other punctuation:          Have codes consisting of an abbreviation of their Unicode 
"                               names in hyphenated Wylie, between angle brackets.
"                               Consult the mapping itself for the mappings!
"   Marks, signs, symbols:      Are mostly treated like 'other punctuation' for the time being.
"                               Consult the mapping itself for the mappings!
"
" You probably want to use the Unifont font <http://unifoundry.com/>;
" it is ugly but AFAIK the only monowidth font which covers Tibetan
"  and a number of other scripts! You also want 16 font size!
"  
" Maintainer: Benct Philip Jonsson <bpjonsson+keymap@gmail.com>
"
" Github: <https://github.com/bpj/vim-keymap/blob/master/keymap/bpjtibetan.vim>

scriptencoding utf-8
let b:keymap_name = "Tibt"
hi lCursor guibg=Violet guifg=Violet
setlocal delcombine
setlocal maxcombine=6 " The max...
loadkeymap
[om]	ༀ  " U+0F00 TIBETAN SYLLABLE OM
[gter-yig-mgo-truncated-a]	༁  " U+0F01 TIBETAN MARK GTER YIG MGO TRUNCATED A
[A]	༁  " U+0F01 TIBETAN MARK GTER YIG MGO TRUNCATED A
[gter-yig-mgo-'um-rnam-bcad-ma]	༂  " U+0F02 TIBETAN MARK GTER YIG MGO -UM RNAM BCAD MA
['aum:]	༂  " U+0F02 TIBETAN MARK GTER YIG MGO -UM RNAM BCAD MA
[gter-yig-mgo-'um-gter-tsheg-ma]	༃  " U+0F03 TIBETAN MARK GTER YIG MGO -UM GTER TSHEG MA
['aum%]	༃  " U+0F03 TIBETAN MARK GTER YIG MGO -UM GTER TSHEG MA
[initial-yig-mgo-mdun-ma]	༄  " U+0F04 TIBETAN MARK INITIAL YIG MGO MDUN MA
[@]	༄  " U+0F04 TIBETAN MARK INITIAL YIG MGO MDUN MA
[closing-yig-mgo-sgab-ma]	༅  " U+0F05 TIBETAN MARK CLOSING YIG MGO SGAB MA
[+@]	༅  " U+0F05 TIBETAN MARK CLOSING YIG MGO SGAB MA
[caret-yig-mgo-phur-shad-ma]	༆  " U+0F06 TIBETAN MARK CARET YIG MGO PHUR SHAD MA
[|@]	༆  " U+0F06 TIBETAN MARK CARET YIG MGO PHUR SHAD MA
[yig-mgo-tsheg-shad-ma]	༇  " U+0F07 TIBETAN MARK YIG MGO TSHEG SHAD MA
[sbrul-shad]	༈  " U+0F08 TIBETAN MARK SBRUL SHAD
[bskur-yig-mgo]	༉  " U+0F09 TIBETAN MARK BSKUR YIG MGO
[bka-'shog-yig-mgo]	༊  " U+0F0A TIBETAN MARK BKA- SHOG YIG MGO
[intersyllabic-tsheg]	་  " U+0F0B TIBETAN MARK INTERSYLLABIC TSHEG
,	་  " U+0F0B TIBETAN MARK INTERSYLLABIC TSHEG
[delimiter-tsheg-bstar]	༌  " U+0F0C TIBETAN MARK DELIMITER TSHEG BSTAR
-	༌  " U+0F0C TIBETAN MARK DELIMITER TSHEG BSTAR
[shad]	།  " U+0F0D TIBETAN MARK SHAD
/	།  " U+0F0D TIBETAN MARK SHAD
[nyis-shad]	༎  " U+0F0E TIBETAN MARK NYIS SHAD
//	༎  " U+0F0E TIBETAN MARK NYIS SHAD
[tsheg-shad]	༏  " U+0F0F TIBETAN MARK TSHEG SHAD
[nyis-tsheg-shad]	༐  " U+0F10 TIBETAN MARK NYIS TSHEG SHAD
[rin-chen-spungs-shad]	༑  " U+0F11 TIBETAN MARK RIN CHEN SPUNGS SHAD
[rgya-gram-shad]	༒  " U+0F12 TIBETAN MARK RGYA GRAM SHAD
[caret-'dzud-rtags-me-long-can]	༓  " U+0F13 TIBETAN MARK CARET -DZUD RTAGS ME LONG CAN
[gter-tsheg]	༔  " U+0F14 TIBETAN MARK GTER TSHEG
[chad-rtags]	༕  " U+0F15 TIBETAN LOGOTYPE SIGN CHAD RTAGS
[lhag-rtags]	༖  " U+0F16 TIBETAN LOGOTYPE SIGN LHAG RTAGS
[sgra-gcan-'char-rtags]	༗  " U+0F17 TIBETAN ASTROLOGICAL SIGN SGRA GCAN -CHAR RTAGS
['khyud-pa]	<char-0x0F18> " ◌༘  " U+0F18 TIBETAN ASTROLOGICAL SIGN -KHYUD PA
[sdong-tshugs]	<char-0x0F19> " ◌༙  " U+0F19 TIBETAN ASTROLOGICAL SIGN SDONG TSHUGS
[rdel-dkar-gcig]	༚  " U+0F1A TIBETAN SIGN RDEL DKAR GCIG
[rdel-dkar-gnyis]	༛  " U+0F1B TIBETAN SIGN RDEL DKAR GNYIS
[rdel-dkar-gsum]	༜  " U+0F1C TIBETAN SIGN RDEL DKAR GSUM
[rdel-nag-gcig]	༝  " U+0F1D TIBETAN SIGN RDEL NAG GCIG
[rdel-nag-gnyis]	༞  " U+0F1E TIBETAN SIGN RDEL NAG GNYIS
[rdel-dkar-rdel-nag]	༟  " U+0F1F TIBETAN SIGN RDEL DKAR RDEL NAG
0	༠  " U+0F20 TIBETAN DIGIT ZERO
1	༡  " U+0F21 TIBETAN DIGIT ONE
2	༢  " U+0F22 TIBETAN DIGIT TWO
3	༣  " U+0F23 TIBETAN DIGIT THREE
4	༤  " U+0F24 TIBETAN DIGIT FOUR
5	༥  " U+0F25 TIBETAN DIGIT FIVE
6	༦  " U+0F26 TIBETAN DIGIT SIX
7	༧  " U+0F27 TIBETAN DIGIT SEVEN
8	༨  " U+0F28 TIBETAN DIGIT EIGHT
9	༩  " U+0F29 TIBETAN DIGIT NINE
\"1	༪  " U+0F2A TIBETAN DIGIT HALF ONE
\"2	༫  " U+0F2B TIBETAN DIGIT HALF TWO
\"3	༬  " U+0F2C TIBETAN DIGIT HALF THREE
\"4	༭  " U+0F2D TIBETAN DIGIT HALF FOUR
\"5	༮  " U+0F2E TIBETAN DIGIT HALF FIVE
\"6	༯  " U+0F2F TIBETAN DIGIT HALF SIX
\"7	༰  " U+0F30 TIBETAN DIGIT HALF SEVEN
\"8	༱  " U+0F31 TIBETAN DIGIT HALF EIGHT
\"9	༲  " U+0F32 TIBETAN DIGIT HALF NINE
\"0	༳  " U+0F33 TIBETAN DIGIT HALF ZERO
[bsdus-rtags]	༴  " U+0F34 TIBETAN MARK BSDUS RTAGS
[ngas-bzung-nyi-zla]	<char-0x0F35> " ◌༵  " U+0F35 TIBETAN MARK NGAS BZUNG NYI ZLA
[caret-'dzud-rtags-bzhi-mig-can]	༶  " U+0F36 TIBETAN MARK CARET -DZUD RTAGS BZHI MIG CAN
[ngas-bzung-sgor-rtags]	<char-0x0F37> " ◌༷  " U+0F37 TIBETAN MARK NGAS BZUNG SGOR RTAGS
[che-mgo]	༸  " U+0F38 TIBETAN MARK CHE MGO
[tsa-'phru]	<char-0x0F39> " ◌༹  " U+0F39 TIBETAN MARK TSA -PHRU
[gug-rtags-gyon]	༺  " U+0F3A TIBETAN MARK GUG RTAGS GYON
[@:-]	༺  " U+0F3A TIBETAN MARK GUG RTAGS GYON
[gug-rtags-gyas]	༻  " U+0F3B TIBETAN MARK GUG RTAGS GYAS
[-:@]	༻  " U+0F3B TIBETAN MARK GUG RTAGS GYAS
[ang-khang-gyon]	༼  " U+0F3C TIBETAN MARK ANG KHANG GYON
{	༼  " U+0F3C TIBETAN MARK ANG KHANG GYON
[ang-khang-gyas]	༽  " U+0F3D TIBETAN MARK ANG KHANG GYAS
}	༽  " U+0F3D TIBETAN MARK ANG KHANG GYAS
[yar-tshes]	<char-0x0F3E> " ◌༾  " U+0F3E TIBETAN SIGN YAR TSHES
[mar-tshes]	<char-0x0F3F> " ◌༿  " U+0F3F TIBETAN SIGN MAR TSHES
ka	ཀ  " U+0F40 TIBETAN LETTER KA
k	ཀ  " U+0F40 TIBETAN LETTER KA
.k	ཀ  " U+0F40 TIBETAN LETTER KA
kha	ཁ  " U+0F41 TIBETAN LETTER KHA
kh	ཁ  " U+0F41 TIBETAN LETTER KHA
.kh	ཁ  " U+0F41 TIBETAN LETTER KHA
ga	ག  " U+0F42 TIBETAN LETTER GA
g	ག  " U+0F42 TIBETAN LETTER GA
.g	ག  " U+0F42 TIBETAN LETTER GA
gha	གྷ  " U+0F43 TIBETAN LETTER GHA
gh	གྷ  " U+0F43 TIBETAN LETTER GHA
.gh	གྷ  " U+0F43 TIBETAN LETTER GHA
nga	ང  " U+0F44 TIBETAN LETTER NGA
ng	ང  " U+0F44 TIBETAN LETTER NGA
.ng	ང  " U+0F44 TIBETAN LETTER NGA
ca	ཅ  " U+0F45 TIBETAN LETTER CA
c	ཅ  " U+0F45 TIBETAN LETTER CA
.c	ཅ  " U+0F45 TIBETAN LETTER CA
cha	ཆ  " U+0F46 TIBETAN LETTER CHA
ch	ཆ  " U+0F46 TIBETAN LETTER CHA
.ch	ཆ  " U+0F46 TIBETAN LETTER CHA
ja	ཇ  " U+0F47 TIBETAN LETTER JA
j	ཇ  " U+0F47 TIBETAN LETTER JA
.j	ཇ  " U+0F47 TIBETAN LETTER JA
nya	ཉ  " U+0F49 TIBETAN LETTER NYA
ny	ཉ  " U+0F49 TIBETAN LETTER NYA
.ny	ཉ  " U+0F49 TIBETAN LETTER NYA
Ta	ཊ  " U+0F4A TIBETAN LETTER TTA
T	ཊ  " U+0F4A TIBETAN LETTER TTA
.T	ཊ  " U+0F4A TIBETAN LETTER TTA
Tha	ཋ  " U+0F4B TIBETAN LETTER TTHA
Th	ཋ  " U+0F4B TIBETAN LETTER TTHA
.Th	ཋ  " U+0F4B TIBETAN LETTER TTHA
Da	ཌ  " U+0F4C TIBETAN LETTER DDA
D	ཌ  " U+0F4C TIBETAN LETTER DDA
.D	ཌ  " U+0F4C TIBETAN LETTER DDA
Dha	ཌྷ  " U+0F4D TIBETAN LETTER DDHA
Dh	ཌྷ  " U+0F4D TIBETAN LETTER DDHA
.Dh	ཌྷ  " U+0F4D TIBETAN LETTER DDHA
Na	ཎ  " U+0F4E TIBETAN LETTER NNA
N	ཎ  " U+0F4E TIBETAN LETTER NNA
.N	ཎ  " U+0F4E TIBETAN LETTER NNA
ta	ཏ  " U+0F4F TIBETAN LETTER TA
t	ཏ  " U+0F4F TIBETAN LETTER TA
.t	ཏ  " U+0F4F TIBETAN LETTER TA
tha	ཐ  " U+0F50 TIBETAN LETTER THA
th	ཐ  " U+0F50 TIBETAN LETTER THA
.th	ཐ  " U+0F50 TIBETAN LETTER THA
da	ད  " U+0F51 TIBETAN LETTER DA
d	ད  " U+0F51 TIBETAN LETTER DA
.d	ད  " U+0F51 TIBETAN LETTER DA
dha	དྷ  " U+0F52 TIBETAN LETTER DHA
dh	དྷ  " U+0F52 TIBETAN LETTER DHA
.dh	དྷ  " U+0F52 TIBETAN LETTER DHA
na	ན  " U+0F53 TIBETAN LETTER NA
n	ན  " U+0F53 TIBETAN LETTER NA
.n	ན  " U+0F53 TIBETAN LETTER NA
pa	པ  " U+0F54 TIBETAN LETTER PA
p	པ  " U+0F54 TIBETAN LETTER PA
.p	པ  " U+0F54 TIBETAN LETTER PA
pha	ཕ  " U+0F55 TIBETAN LETTER PHA
ph	ཕ  " U+0F55 TIBETAN LETTER PHA
.ph	ཕ  " U+0F55 TIBETAN LETTER PHA
ba	བ  " U+0F56 TIBETAN LETTER BA
b	བ  " U+0F56 TIBETAN LETTER BA
.b	བ  " U+0F56 TIBETAN LETTER BA
bha	བྷ  " U+0F57 TIBETAN LETTER BHA
bh	བྷ  " U+0F57 TIBETAN LETTER BHA
.bh	བྷ  " U+0F57 TIBETAN LETTER BHA
ma	མ  " U+0F58 TIBETAN LETTER MA
m	མ  " U+0F58 TIBETAN LETTER MA
.m	མ  " U+0F58 TIBETAN LETTER MA
tza	ཙ  " U+0F59 TIBETAN LETTER TSA
tz	ཙ  " U+0F59 TIBETAN LETTER TSA
.tz	ཙ  " U+0F59 TIBETAN LETTER TSA
tsa	ཚ  " U+0F5A TIBETAN LETTER TSHA
ts	ཚ  " U+0F5A TIBETAN LETTER TSHA
.ts	ཚ  " U+0F5A TIBETAN LETTER TSHA
dza	ཛ  " U+0F5B TIBETAN LETTER DZA
dz	ཛ  " U+0F5B TIBETAN LETTER DZA
.dz	ཛ  " U+0F5B TIBETAN LETTER DZA
jha	ཛྷ  " U+0F5C TIBETAN LETTER DZHA
jh	ཛྷ  " U+0F5C TIBETAN LETTER DZHA
.jh	ཛྷ  " U+0F5C TIBETAN LETTER DZHA
Wa	ཝ  " U+0F5D TIBETAN LETTER WA
W	ཝ  " U+0F5D TIBETAN LETTER WA
.W	ཝ  " U+0F5D TIBETAN LETTER WA
zha	ཞ  " U+0F5E TIBETAN LETTER ZHA
zh	ཞ  " U+0F5E TIBETAN LETTER ZHA
.zh	ཞ  " U+0F5E TIBETAN LETTER ZHA
za	ཟ  " U+0F5F TIBETAN LETTER ZA
z	ཟ  " U+0F5F TIBETAN LETTER ZA
.z	ཟ  " U+0F5F TIBETAN LETTER ZA
ha	འ  " U+0F60 TIBETAN LETTER -A
h	འ  " U+0F60 TIBETAN LETTER -A
.h	འ  " U+0F60 TIBETAN LETTER -A
Ya	ཡ  " U+0F61 TIBETAN LETTER YA
Y	ཡ  " U+0F61 TIBETAN LETTER YA
.Y	ཡ  " U+0F61 TIBETAN LETTER YA
Ra	ར  " U+0F62 TIBETAN LETTER RA
R	ར  " U+0F62 TIBETAN LETTER RA
.R	ར  " U+0F62 TIBETAN LETTER RA
La	ལ  " U+0F63 TIBETAN LETTER LA
L	ལ  " U+0F63 TIBETAN LETTER LA
.L	ལ  " U+0F63 TIBETAN LETTER LA
sha	ཤ  " U+0F64 TIBETAN LETTER SHA
sh	ཤ  " U+0F64 TIBETAN LETTER SHA
.sh	ཤ  " U+0F64 TIBETAN LETTER SHA
Sa	ཥ  " U+0F65 TIBETAN LETTER SSA
S	ཥ  " U+0F65 TIBETAN LETTER SSA
.S	ཥ  " U+0F65 TIBETAN LETTER SSA
sa	ས  " U+0F66 TIBETAN LETTER SA
s	ས  " U+0F66 TIBETAN LETTER SA
.s	ས  " U+0F66 TIBETAN LETTER SA
Ha	ཧ  " U+0F67 TIBETAN LETTER HA
H	ཧ  " U+0F67 TIBETAN LETTER HA
.H	ཧ  " U+0F67 TIBETAN LETTER HA
A	ཨ  " U+0F68 TIBETAN LETTER A
.A	ཨ  " U+0F68 TIBETAN LETTER A
kSa	ཀྵ  " U+0F69 TIBETAN LETTER KSSA
kS	ཀྵ  " U+0F69 TIBETAN LETTER KSSA
.kS	ཀྵ  " U+0F69 TIBETAN LETTER KSSA
\"ra	ཪ  " U+0F6A TIBETAN LETTER FIXED-FORM RA
\"r	ཪ  " U+0F6A TIBETAN LETTER FIXED-FORM RA
.\"r	ཪ  " U+0F6A TIBETAN LETTER FIXED-FORM RA
Ka	ཫ  " U+0F6B TIBETAN LETTER KKA
K	ཫ  " U+0F6B TIBETAN LETTER KKA
.K	ཫ  " U+0F6B TIBETAN LETTER KKA
\"Ra	ཬ  " U+0F6C TIBETAN LETTER RRA
\"R	ཬ  " U+0F6C TIBETAN LETTER RRA
.\"R	ཬ  " U+0F6C TIBETAN LETTER RRA
'	<char-0x0F71> " ◌ཱ  " U+0F71 TIBETAN VOWEL SIGN AA
i	<char-0x0F72> " ◌ི  " U+0F72 TIBETAN VOWEL SIGN I
" ii	<char-0x0F73> " ◌ཱི  " U+0F73 TIBETAN VOWEL SIGN II
u	<char-0x0F74> " ◌ུ  " U+0F74 TIBETAN VOWEL SIGN U
" uu	<char-0x0F75> " ◌ཱུ  " U+0F75 TIBETAN VOWEL SIGN UU
" r	<char-0x0F76> " ◌ྲྀ  " U+0F76 TIBETAN VOWEL SIGN VOCALIC R
" rr	<char-0x0F77> " ◌ཷ  " U+0F77 TIBETAN VOWEL SIGN VOCALIC RR
" l	<char-0x0F78> " ◌ླྀ  " U+0F78 TIBETAN VOWEL SIGN VOCALIC L
" ll	<char-0x0F79> " ◌ཹ  " U+0F79 TIBETAN VOWEL SIGN VOCALIC LL
e	<char-0x0F7A> " ◌ེ  " U+0F7A TIBETAN VOWEL SIGN E
E	<char-0x0F7B> " ◌ཻ  " U+0F7B TIBETAN VOWEL SIGN EE
o	<char-0x0F7C> " ◌ོ  " U+0F7C TIBETAN VOWEL SIGN O
O	<char-0x0F7D> " ◌ཽ  " U+0F7D TIBETAN VOWEL SIGN OO
[rjes-su-nga-ro]	<char-0x0F7E> " ◌ཾ  " U+0F7E TIBETAN SIGN RJES SU NGA RO
[rnam-bcad]	<char-0x0F7F> " ◌ཿ  " U+0F7F TIBETAN SIGN RNAM BCAD
I	<char-0x0F80> " ◌ྀ  " U+0F80 TIBETAN VOWEL SIGN REVERSED I
" ii	<char-0x0F81> " ◌ཱྀ  " U+0F81 TIBETAN VOWEL SIGN REVERSED II
[nyi-zla-naa-da]	<char-0x0F82> " ◌ྂ  " U+0F82 TIBETAN SIGN NYI ZLA NAA DA
[sna-ldan]	<char-0x0F83> " ◌ྃ  " U+0F83 TIBETAN SIGN SNA LDAN
[halanta]	<char-0x0F84> " ◌྄  " U+0F84 TIBETAN MARK HALANTA
[paluta]	྅  " U+0F85 TIBETAN MARK PALUTA
[lci-rtags]	<char-0x0F86> " ◌྆  " U+0F86 TIBETAN SIGN LCI RTAGS
[yang-rtags]	<char-0x0F87> " ◌྇  " U+0F87 TIBETAN SIGN YANG RTAGS
[lce-tsa-can]	ྈ  " U+0F88 TIBETAN SIGN LCE TSA CAN
[mchu-can]	ྉ  " U+0F89 TIBETAN SIGN MCHU CAN
[gru-can-rgyings]	ྊ  " U+0F8A TIBETAN SIGN GRU CAN RGYINGS
[gru-med-rgyings]	ྋ  " U+0F8B TIBETAN SIGN GRU MED RGYINGS
[inverted-mchu-can]	ྌ  " U+0F8C TIBETAN SIGN INVERTED MCHU CAN
[+ltze-tsh-ĉhn]	<char-0x0F8D> " ◌ྍ  " U+0F8D TIBETAN SUBJOINED SIGN LCE TSA CAN
[+mtsu-ĉhn]	<char-0x0F8E> " ◌ྎ  " U+0F8E TIBETAN SUBJOINED SIGN MCHU CAN
[+inverted-mtsu-ĉhn]	<char-0x0F8F> " ◌ྏ  " U+0F8F TIBETAN SUBJOINED SIGN INVERTED MCHU CAN
+ka	<char-0x0F90> " ◌ྐ  " U+0F90 TIBETAN SUBJOINED LETTER KA
+k	<char-0x0F90> " ◌ྐ  " U+0F90 TIBETAN SUBJOINED LETTER KA
Rka	ར<char-0x0F90> " ◌ྐ  " U+0F90 TIBETAN SUBJOINED LETTER KA
Rk	ར<char-0x0F90> " ◌ྐ  " U+0F90 TIBETAN SUBJOINED LETTER KA
Lka	ལ<char-0x0F90> " ◌ྐ  " U+0F90 TIBETAN SUBJOINED LETTER KA
Lk	ལ<char-0x0F90> " ◌ྐ  " U+0F90 TIBETAN SUBJOINED LETTER KA
ska	ས<char-0x0F90> " ◌ྐ  " U+0F90 TIBETAN SUBJOINED LETTER KA
sk	ས<char-0x0F90> " ◌ྐ  " U+0F90 TIBETAN SUBJOINED LETTER KA
+kha	<char-0x0F91> " ◌ྑ  " U+0F91 TIBETAN SUBJOINED LETTER KHA
+kh	<char-0x0F91> " ◌ྑ  " U+0F91 TIBETAN SUBJOINED LETTER KHA
+ga	<char-0x0F92> " ◌ྒ  " U+0F92 TIBETAN SUBJOINED LETTER GA
+g	<char-0x0F92> " ◌ྒ  " U+0F92 TIBETAN SUBJOINED LETTER GA
Rga	ར<char-0x0F92> " ◌ྒ  " U+0F92 TIBETAN SUBJOINED LETTER GA
Rg	ར<char-0x0F92> " ◌ྒ  " U+0F92 TIBETAN SUBJOINED LETTER GA
Lga	ལ<char-0x0F92> " ◌ྒ  " U+0F92 TIBETAN SUBJOINED LETTER GA
Lg	ལ<char-0x0F92> " ◌ྒ  " U+0F92 TIBETAN SUBJOINED LETTER GA
sga	ས<char-0x0F92> " ◌ྒ  " U+0F92 TIBETAN SUBJOINED LETTER GA
sg	ས<char-0x0F92> " ◌ྒ  " U+0F92 TIBETAN SUBJOINED LETTER GA
+gha	<char-0x0F93> " ◌ྒྷ  " U+0F93 TIBETAN SUBJOINED LETTER GHA
+gh	<char-0x0F93> " ◌ྒྷ  " U+0F93 TIBETAN SUBJOINED LETTER GHA
+nga	<char-0x0F94> " ◌ྔ  " U+0F94 TIBETAN SUBJOINED LETTER NGA
+ng	<char-0x0F94> " ◌ྔ  " U+0F94 TIBETAN SUBJOINED LETTER NGA
Rnga	ར<char-0x0F94> " ◌ྔ  " U+0F94 TIBETAN SUBJOINED LETTER NGA
Rng	ར<char-0x0F94> " ◌ྔ  " U+0F94 TIBETAN SUBJOINED LETTER NGA
Lnga	ལ<char-0x0F94> " ◌ྔ  " U+0F94 TIBETAN SUBJOINED LETTER NGA
Lng	ལ<char-0x0F94> " ◌ྔ  " U+0F94 TIBETAN SUBJOINED LETTER NGA
snga	ས<char-0x0F94> " ◌ྔ  " U+0F94 TIBETAN SUBJOINED LETTER NGA
sng	ས<char-0x0F94> " ◌ྔ  " U+0F94 TIBETAN SUBJOINED LETTER NGA
+ca	<char-0x0F95> " ◌ྕ  " U+0F95 TIBETAN SUBJOINED LETTER CA
+c	<char-0x0F95> " ◌ྕ  " U+0F95 TIBETAN SUBJOINED LETTER CA
Lca	ལ<char-0x0F95> " ◌ྕ  " U+0F95 TIBETAN SUBJOINED LETTER CA
Lc	ལ<char-0x0F95> " ◌ྕ  " U+0F95 TIBETAN SUBJOINED LETTER CA
+cha	<char-0x0F96> " ◌ྖ  " U+0F96 TIBETAN SUBJOINED LETTER CHA
+ch	<char-0x0F96> " ◌ྖ  " U+0F96 TIBETAN SUBJOINED LETTER CHA
+ja	<char-0x0F97> " ◌ྗ  " U+0F97 TIBETAN SUBJOINED LETTER JA
+j	<char-0x0F97> " ◌ྗ  " U+0F97 TIBETAN SUBJOINED LETTER JA
Rja	ར<char-0x0F97> " ◌ྗ  " U+0F97 TIBETAN SUBJOINED LETTER JA
Rj	ར<char-0x0F97> " ◌ྗ  " U+0F97 TIBETAN SUBJOINED LETTER JA
Lja	ལ<char-0x0F97> " ◌ྗ  " U+0F97 TIBETAN SUBJOINED LETTER JA
Lj	ལ<char-0x0F97> " ◌ྗ  " U+0F97 TIBETAN SUBJOINED LETTER JA
+nya	<char-0x0F99> " ◌ྙ  " U+0F99 TIBETAN SUBJOINED LETTER NYA
+ny	<char-0x0F99> " ◌ྙ  " U+0F99 TIBETAN SUBJOINED LETTER NYA
Rnya	ར<char-0x0F99> " ◌ྙ  " U+0F99 TIBETAN SUBJOINED LETTER NYA
Rny	ར<char-0x0F99> " ◌ྙ  " U+0F99 TIBETAN SUBJOINED LETTER NYA
snya	ས<char-0x0F99> " ◌ྙ  " U+0F99 TIBETAN SUBJOINED LETTER NYA
sny	ས<char-0x0F99> " ◌ྙ  " U+0F99 TIBETAN SUBJOINED LETTER NYA
+Ta	<char-0x0F9A> " ◌ྚ  " U+0F9A TIBETAN SUBJOINED LETTER TTA
+T	<char-0x0F9A> " ◌ྚ  " U+0F9A TIBETAN SUBJOINED LETTER TTA
+Tha	<char-0x0F9B> " ◌ྛ  " U+0F9B TIBETAN SUBJOINED LETTER TTHA
+Th	<char-0x0F9B> " ◌ྛ  " U+0F9B TIBETAN SUBJOINED LETTER TTHA
+Da	<char-0x0F9C> " ◌ྜ  " U+0F9C TIBETAN SUBJOINED LETTER DDA
+D	<char-0x0F9C> " ◌ྜ  " U+0F9C TIBETAN SUBJOINED LETTER DDA
+Dha	<char-0x0F9D> " ◌ྜྷ  " U+0F9D TIBETAN SUBJOINED LETTER DDHA
+Dh	<char-0x0F9D> " ◌ྜྷ  " U+0F9D TIBETAN SUBJOINED LETTER DDHA
+Na	<char-0x0F9E> " ◌ྞ  " U+0F9E TIBETAN SUBJOINED LETTER NNA
+N	<char-0x0F9E> " ◌ྞ  " U+0F9E TIBETAN SUBJOINED LETTER NNA
+ta	<char-0x0F9F> " ◌ྟ  " U+0F9F TIBETAN SUBJOINED LETTER TA
+t	<char-0x0F9F> " ◌ྟ  " U+0F9F TIBETAN SUBJOINED LETTER TA
Rta	ར<char-0x0F9F> " ◌ྟ  " U+0F9F TIBETAN SUBJOINED LETTER TA
Rt	ར<char-0x0F9F> " ◌ྟ  " U+0F9F TIBETAN SUBJOINED LETTER TA
Lta	ལ<char-0x0F9F> " ◌ྟ  " U+0F9F TIBETAN SUBJOINED LETTER TA
Lt	ལ<char-0x0F9F> " ◌ྟ  " U+0F9F TIBETAN SUBJOINED LETTER TA
sta	ས<char-0x0F9F> " ◌ྟ  " U+0F9F TIBETAN SUBJOINED LETTER TA
st	ས<char-0x0F9F> " ◌ྟ  " U+0F9F TIBETAN SUBJOINED LETTER TA
+tha	<char-0x0FA0> " ◌ྠ  " U+0FA0 TIBETAN SUBJOINED LETTER THA
+th	<char-0x0FA0> " ◌ྠ  " U+0FA0 TIBETAN SUBJOINED LETTER THA
+da	<char-0x0FA1> " ◌ྡ  " U+0FA1 TIBETAN SUBJOINED LETTER DA
+d	<char-0x0FA1> " ◌ྡ  " U+0FA1 TIBETAN SUBJOINED LETTER DA
Rda	ར<char-0x0FA1> " ◌ྡ  " U+0FA1 TIBETAN SUBJOINED LETTER DA
Rd	ར<char-0x0FA1> " ◌ྡ  " U+0FA1 TIBETAN SUBJOINED LETTER DA
Lda	ལ<char-0x0FA1> " ◌ྡ  " U+0FA1 TIBETAN SUBJOINED LETTER DA
Ld	ལ<char-0x0FA1> " ◌ྡ  " U+0FA1 TIBETAN SUBJOINED LETTER DA
sda	ས<char-0x0FA1> " ◌ྡ  " U+0FA1 TIBETAN SUBJOINED LETTER DA
sd	ས<char-0x0FA1> " ◌ྡ  " U+0FA1 TIBETAN SUBJOINED LETTER DA
+dha	<char-0x0FA2> " ◌ྡྷ  " U+0FA2 TIBETAN SUBJOINED LETTER DHA
+dh	<char-0x0FA2> " ◌ྡྷ  " U+0FA2 TIBETAN SUBJOINED LETTER DHA
+na	<char-0x0FA3> " ◌ྣ  " U+0FA3 TIBETAN SUBJOINED LETTER NA
+n	<char-0x0FA3> " ◌ྣ  " U+0FA3 TIBETAN SUBJOINED LETTER NA
Rna	ར<char-0x0FA3> " ◌ྣ  " U+0FA3 TIBETAN SUBJOINED LETTER NA
Rn	ར<char-0x0FA3> " ◌ྣ  " U+0FA3 TIBETAN SUBJOINED LETTER NA
sna	ས<char-0x0FA3> " ◌ྣ  " U+0FA3 TIBETAN SUBJOINED LETTER NA
sn	ས<char-0x0FA3> " ◌ྣ  " U+0FA3 TIBETAN SUBJOINED LETTER NA
+pa	<char-0x0FA4> " ◌ྤ  " U+0FA4 TIBETAN SUBJOINED LETTER PA
+p	<char-0x0FA4> " ◌ྤ  " U+0FA4 TIBETAN SUBJOINED LETTER PA
Lpa	ལ<char-0x0FA4> " ◌ྤ  " U+0FA4 TIBETAN SUBJOINED LETTER PA
Lp	ལ<char-0x0FA4> " ◌ྤ  " U+0FA4 TIBETAN SUBJOINED LETTER PA
spa	ས<char-0x0FA4> " ◌ྤ  " U+0FA4 TIBETAN SUBJOINED LETTER PA
sp	ས<char-0x0FA4> " ◌ྤ  " U+0FA4 TIBETAN SUBJOINED LETTER PA
+pha	<char-0x0FA5> " ◌ྥ  " U+0FA5 TIBETAN SUBJOINED LETTER PHA
+ph	<char-0x0FA5> " ◌ྥ  " U+0FA5 TIBETAN SUBJOINED LETTER PHA
+ba	<char-0x0FA6> " ◌ྦ  " U+0FA6 TIBETAN SUBJOINED LETTER BA
+b	<char-0x0FA6> " ◌ྦ  " U+0FA6 TIBETAN SUBJOINED LETTER BA
Rba	ར<char-0x0FA6> " ◌ྦ  " U+0FA6 TIBETAN SUBJOINED LETTER BA
Rb	ར<char-0x0FA6> " ◌ྦ  " U+0FA6 TIBETAN SUBJOINED LETTER BA
Lba	ལ<char-0x0FA6> " ◌ྦ  " U+0FA6 TIBETAN SUBJOINED LETTER BA
Lb	ལ<char-0x0FA6> " ◌ྦ  " U+0FA6 TIBETAN SUBJOINED LETTER BA
sba	ས<char-0x0FA6> " ◌ྦ  " U+0FA6 TIBETAN SUBJOINED LETTER BA
sb	ས<char-0x0FA6> " ◌ྦ  " U+0FA6 TIBETAN SUBJOINED LETTER BA
+bha	<char-0x0FA7> " ◌ྦྷ  " U+0FA7 TIBETAN SUBJOINED LETTER BHA
+bh	<char-0x0FA7> " ◌ྦྷ  " U+0FA7 TIBETAN SUBJOINED LETTER BHA
+ma	<char-0x0FA8> " ◌ྨ  " U+0FA8 TIBETAN SUBJOINED LETTER MA
+m	<char-0x0FA8> " ◌ྨ  " U+0FA8 TIBETAN SUBJOINED LETTER MA
Rma	ར<char-0x0FA8> " ◌ྨ  " U+0FA8 TIBETAN SUBJOINED LETTER MA
Rm	ར<char-0x0FA8> " ◌ྨ  " U+0FA8 TIBETAN SUBJOINED LETTER MA
sma	ས<char-0x0FA8> " ◌ྨ  " U+0FA8 TIBETAN SUBJOINED LETTER MA
sm	ས<char-0x0FA8> " ◌ྨ  " U+0FA8 TIBETAN SUBJOINED LETTER MA
+tza	<char-0x0FA9> " ◌ྩ  " U+0FA9 TIBETAN SUBJOINED LETTER TSA
+tz	<char-0x0FA9> " ◌ྩ  " U+0FA9 TIBETAN SUBJOINED LETTER TSA
Rtza	ར<char-0x0FA9> " ◌ྩ  " U+0FA9 TIBETAN SUBJOINED LETTER TSA
Rtz	ར<char-0x0FA9> " ◌ྩ  " U+0FA9 TIBETAN SUBJOINED LETTER TSA
stza	ས<char-0x0FA9> " ◌ྩ  " U+0FA9 TIBETAN SUBJOINED LETTER TSA
stz	ས<char-0x0FA9> " ◌ྩ  " U+0FA9 TIBETAN SUBJOINED LETTER TSA
+tsa	<char-0x0FAA> " ◌ྪ  " U+0FAA TIBETAN SUBJOINED LETTER TSHA
+ts	<char-0x0FAA> " ◌ྪ  " U+0FAA TIBETAN SUBJOINED LETTER TSHA
+dza	<char-0x0FAB> " ◌ྫ  " U+0FAB TIBETAN SUBJOINED LETTER DZA
+dz	<char-0x0FAB> " ◌ྫ  " U+0FAB TIBETAN SUBJOINED LETTER DZA
Rdza	ར<char-0x0FAB> " ◌ྫ  " U+0FAB TIBETAN SUBJOINED LETTER DZA
Rdz	ར<char-0x0FAB> " ◌ྫ  " U+0FAB TIBETAN SUBJOINED LETTER DZA
+dzha	<char-0x0FAC> " ◌ྫྷ  " U+0FAC TIBETAN SUBJOINED LETTER DZHA
+dzh	<char-0x0FAC> " ◌ྫྷ  " U+0FAC TIBETAN SUBJOINED LETTER DZHA
wa	<char-0x0FAD> " ◌ྭ  " U+0FAD TIBETAN SUBJOINED LETTER WA
w	<char-0x0FAD> " ◌ྭ  " U+0FAD TIBETAN SUBJOINED LETTER WA
+zha	<char-0x0FAE> " ◌ྮ  " U+0FAE TIBETAN SUBJOINED LETTER ZHA
+zh	<char-0x0FAE> " ◌ྮ  " U+0FAE TIBETAN SUBJOINED LETTER ZHA
+za	<char-0x0FAF> " ◌ྯ  " U+0FAF TIBETAN SUBJOINED LETTER ZA
+z	<char-0x0FAF> " ◌ྯ  " U+0FAF TIBETAN SUBJOINED LETTER ZA
+ha	<char-0x0FB0> " ◌ྰ  " U+0FB0 TIBETAN SUBJOINED LETTER -A
+h	<char-0x0FB0> " ◌ྰ  " U+0FB0 TIBETAN SUBJOINED LETTER -A
ya	<char-0x0FB1> " ◌ྱ  " U+0FB1 TIBETAN SUBJOINED LETTER YA
y	<char-0x0FB1> " ◌ྱ  " U+0FB1 TIBETAN SUBJOINED LETTER YA
ra	<char-0x0FB2> " ◌ྲ  " U+0FB2 TIBETAN SUBJOINED LETTER RA
r	<char-0x0FB2> " ◌ྲ  " U+0FB2 TIBETAN SUBJOINED LETTER RA
la	<char-0x0FB3> " ◌ླ  " U+0FB3 TIBETAN SUBJOINED LETTER LA
l	<char-0x0FB3> " ◌ླ  " U+0FB3 TIBETAN SUBJOINED LETTER LA
+sha	<char-0x0FB4> " ◌ྴ  " U+0FB4 TIBETAN SUBJOINED LETTER SHA
+sh	<char-0x0FB4> " ◌ྴ  " U+0FB4 TIBETAN SUBJOINED LETTER SHA
+Sa	<char-0x0FB5> " ◌ྵ  " U+0FB5 TIBETAN SUBJOINED LETTER SSA
+S	<char-0x0FB5> " ◌ྵ  " U+0FB5 TIBETAN SUBJOINED LETTER SSA
+sa	<char-0x0FB6> " ◌ྶ  " U+0FB6 TIBETAN SUBJOINED LETTER SA
+s	<char-0x0FB6> " ◌ྶ  " U+0FB6 TIBETAN SUBJOINED LETTER SA
+Ha	<char-0x0FB7> " ◌ྷ  " U+0FB7 TIBETAN SUBJOINED LETTER HA
+H	<char-0x0FB7> " ◌ྷ  " U+0FB7 TIBETAN SUBJOINED LETTER HA
+A	<chara-0x0FB8> " ◌ྸ  " U+0FB8 TIBETAN SUBJOINED LETTER A
+A	<char-0x0FB8> " ◌ྸ  " U+0FB8 TIBETAN SUBJOINED LETTER A
+kSa	<char-0x0FB9> " ◌ྐྵ  " U+0FB9 TIBETAN SUBJOINED LETTER KSSA
+kS	<char-0x0FB9> " ◌ྐྵ  " U+0FB9 TIBETAN SUBJOINED LETTER KSSA
+Wa	<char-0x0FBA> " ◌ྺ  " U+0FBA TIBETAN SUBJOINED LETTER FIXED-FORM WA
+W	<char-0x0FBA> " ◌ྺ  " U+0FBA TIBETAN SUBJOINED LETTER FIXED-FORM WA
+Ya	<char-0x0FBB> " ◌ྻ  " U+0FBB TIBETAN SUBJOINED LETTER FIXED-FORM YA
+Y	<char-0x0FBB> " ◌ྻ  " U+0FBB TIBETAN SUBJOINED LETTER FIXED-FORM YA
+Ra	<char-0x0FBC> " ◌ྼ  " U+0FBC TIBETAN SUBJOINED LETTER FIXED-FORM RA
+R	<char-0x0FBC> " ◌ྼ  " U+0FBC TIBETAN SUBJOINED LETTER FIXED-FORM RA
[ku-ru-kha]             	྾  " U+0FBE-TIBETAN-KU-RU-KHA
[ku-ru-kha-bzhi-mig-can]	྿  " U+0FBF-TIBETAN-KU-RU-KHA-BZHI-MIG-CAN
[heavy-beat]	࿀  " U+0FC0 TIBETAN CANTILLATION SIGN HEAVY BEAT
[light-beat]	࿁  " U+0FC1 TIBETAN CANTILLATION SIGN LIGHT BEAT
[cang-te-u]	࿂  " U+0FC2 TIBETAN CANTILLATION SIGN CANG TE-U
[sbub-'chal]	࿃  " U+0FC3 TIBETAN CANTILLATION SIGN SBUB -CHAL
[dril-bu]	࿄  " U+0FC4 TIBETAN SYMBOL DRIL BU
[rdo-rje]	࿅  " U+0FC5 TIBETAN SYMBOL RDO RJE
[padma-gdan]	<char-0x0FC6> " ◌࿆  " U+0FC6 TIBETAN SYMBOL PADMA GDAN
[rdo-rje-rgya-gram]	࿇  " U+0FC7 TIBETAN SYMBOL RDO RJE RGYA GRAM
[phur-pa]	࿈  " U+0FC8 TIBETAN SYMBOL PHUR PA
[nor-bu]	࿉  " U+0FC9 TIBETAN SYMBOL NOR BU
[nor-bu-nyis-'khyil]	࿊  " U+0FCA TIBETAN SYMBOL NOR BU NYIS -KHYIL
[nor-bu-gsum-'khyil]	࿋  " U+0FCB TIBETAN SYMBOL NOR BU GSUM -KHYIL
[nor-bu-bzhi-'khyil]	࿌  " U+0FCC TIBETAN SYMBOL NOR BU BZHI -KHYIL
[rdel-nag-rdel-dkar]	࿎  " U+0FCE TIBETAN SIGN RDEL NAG RDEL DKAR
[rdel-nag-gsum]	࿏  " U+0FCF TIBETAN SIGN RDEL NAG GSUM
[bka'-shog-gi-mgo-rgyan]	࿐  " U+0FD0 TIBETAN MARK BKA- SHOG GI MGO RGYAN
[mnyam-yig-gi-mgo-rgyan]	࿑  " U+0FD1 TIBETAN MARK MNYAM YIG GI MGO RGYAN
[nyis-tsheg]	࿒  " U+0FD2 TIBETAN MARK NYIS TSHEG
[initial-brda-rnying-yig-mgo-mdun-ma]	࿓  " U+0FD3 TIBETAN MARK INITIAL BRDA RNYING YIG MGO MDUN MA
[closing-brda-rnying-yig-mgo-sgab-ma]	࿔  " U+0FD4 TIBETAN MARK CLOSING BRDA RNYING YIG MGO SGAB MA
[right-svasti]                          ࿕  " U+0FD5 RIGHT-FACING SVASTI SIGN
[left-svasti]                           ࿖  " U+0FD6 LEFT-FACING SVASTI SIGN
[right-svasti-with-dots]	࿗  " U+0FD7 RIGHT-FACING SVASTI SIGN WITH DOTS
[left-svasti-with-dots]	࿘  " U+0FD8 LEFT-FACING SVASTI SIGN WITH DOTS
[leading-mchan-rtags]	࿙  " U+0FD9 TIBETAN MARK LEADING MCHAN RTAGS
[trailing-mchan-rtags]	࿚  " U+0FDA TIBETAN MARK TRAILING MCHAN RTAGS
