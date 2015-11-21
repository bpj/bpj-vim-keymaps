" vim: set noet ts=24 sts=24 ro list:
"
" Note: Don't take the unicode names next to letters too seriously.
"       Case is often off in them because I've 'inflated' upper- and titlecase
"       programmatically.
"
" CHANGES:
"
" Changed: 21 November 2015
"   Clarified change note from 8 October 2015.
"   Added some comments as 'section headings'
" Changed: 3 November 2015
"   Added Latin Beta and Latin Chi as $B $b $K $k
"       Most of these chars are brand new in Unicode 8.0.0
"       For now Everson Mono or Unifont must be used to display, Quivira to
"       print proportionally.
"   Added Greek Phi Theta Gamma Delta as $F $f $T $t $G $g $D $d
"
" Important: change 8 October 2015
"   I have found the device with curly brackets for n-graphs nnoying so I have
"   replaced it with a system with different sigils depending on the number of
"   characters in the n-graph:
"
"      `#`      for tetragraphs   (`#` + 4 characters)
"      `@`      for trigraphs     (`@` + 3 characters)
"      `&`      for digraphs      (`&` + 2 characters)
"      `$`      for monographs    (`$` + 1 character, effectively a special digraph)
"      `"`      plus any literal ASCII character for that character as before: 
"                   `""` -> `"`
"                   `"#` -> `#`
"                   `"@` -> `@`
"                   `"&` -> `&`
"                   `"a` -> `a`
"                   etc.
"
"   There is currently only one $-graph: `$$` for long s, but I plan to replace
"   some &-graphs with $-graphs as occasion arises.
"   (Note 2015-11-21: some were added 2015-11-3. Further additions/changes
"   will not be added here. Read the change log!)
"
"   Note that these four characters may occur as non-sigil characters in a prefixed n-graph.
"   As yet only `@` for 'loop' and `$` for long s actually do.
"
"   Non-decomposing letters with overstruck diacritics like `ł` are now treated as digraphs: `&l/`
"
"   `#` was formerly unused.  It is not yet used other than as a prefix
"
"   `&` and `@` were formerly used for ring above and ring below. These are now `^%`
"   and `%`
"
"   `%` was formerly oblique stroke. It is now `+/` except in digraphs like `&l/`
"   for `ł` where it is simply `/`
"
"   `$` was formerly used for long s only.  That is now `$$` `&$.` `&$t` etc.
"
"   `+` is now officially used for 'overstrike' like `^` is used for 'above' and `_`
"   is used for 'below'.  OTOH I have removed `+` in prefixed n-graphs like `&l/`
"
"   Curly brackets are now unused. This frees them for markup use.
"   I do believe that e.g. {*foo*} is more readable as markup than "*foo"*
"   This really only affects keymaps as transliterator config, notas actual
"   keymaps!
"
"   I actually made those changes a while ago but didn't commit them. I now
"   backed-up, reset, branched and reinstated them.
"
"   I promise to get better at documenting even small changes!
"
"   TODO:
"       Have (alternative) unprefixed letter+letter digraphs, since there
"       always is `"` + letter to get the vanilla ASCII letter?
"
"       Use `¡` for 'turned'?  Does iPhone English keyboard support it?
"       It is an alternative now, but I want to get rid of double-backtick 3- and 4-graphs!
"
"       In fact I want to get rid of backtick entirely to make it easier to
"       use transliteration modules with Pandoc filters and 'code'.
"
"       Use `*` for something?  I have hitherto not used it to make it easier to
"       enter Markdown, butthen I use `.` and `,` for example.
"
"       Make `{` + punct and punct + `}` generally mean punct unless otherwise
"       defined? I suspect that should better be handled by a parser which
"       actually *understands* balanced constructs.
"       This really only affects keymaps as transliterator config, notas actual
"       keymaps!
"
" Imortant: change 27 March 2014!
"   Since the use of & to mark digraphs conflicted with the use of & for
"   combining ring above I changed the notation of digraphs to use curly
"   brackets around the digraph like &th for þ, rather than the earlier
"   &th.  It's one char more to type, but it allows digraphs to be
"   trigraphs! ;-)

scriptencoding	utf8
let	b:keymap_name	= "latin"
hi	lcursor	guibg=magenta guifg=magenta
loadkeymap	
" Don't remove this line!
"
" ASCII punctuation chars mapped to combining marks and modifier letters
'	ʹ	"	U+02B9 MODIFIER LETTER PRIME
\\	<Char-0x0300>	" -̀	COMBINING GRAVE ACCENT
/	<Char-0x0301>	" -́	COMBINING ACUTE ACCENT
>	<Char-0x0302>	" -̂	COMBINING CIRCUMFLEX ACCENT
~	<Char-0x0303>	" -̃	COMBINING TILDE
|	<Char-0x0304>	" -̄	COMBINING MACRON
"	<Char-0x0305>	" -̅	COMBINING OVERLINE
(	<Char-0x0306>	" -̆	COMBINING BREVE
.	<Char-0x0307>	" -̇	COMBINING DOT ABOVE
:	<Char-0x0308>	" -̈	COMBINING DIAERESIS
?	<Char-0x0309>	" -̉	COMBINING HOOK ABOVE
^%	<Char-0x030a>	" -̊	COMBINING RING ABOVE
//	<Char-0x030b>	" -̋	COMBINING DOUBLE ACUTE ACCENT
<	<Char-0x030c>	" -̌	COMBINING CARON
	"	<Char-0x030d> " -̍	COMBINING VERTICAL LINE ABOVE
\\\\	<Char-0x030f>	" -̏	COMBINING DOUBLE GRAVE ACCENT
(.	<Char-0x0310>	" -̐	COMBINING CANDRABINDU
)	<Char-0x0311>	" -̑	COMBINING INVERTED BREVE
^`	<Char-0x0312>	" -̒	COMBINING TURNED COMMA ABOVE
^,	<Char-0x0313>	" -̓	COMBINING COMMA ABOVE
++	<Char-0x031b>	" -̛	COMBINING HORN
!	<Char-0x0323>	" -̣	COMBINING DOT BELOW
!!	<Char-0x0324>	" -̤	COMBINING DIAERESIS BELOW
%	<Char-0x0325>	" -̥	COMBINING RING BELOW
_,	<Char-0x0326>	" -̦	COMBINING COMMA BELOW
,	<Char-0x0327>	" -̧	COMBINING CEDILLA
;	<Char-0x0328>	" -̨	COMBINING OGONEK
_>	<Char-0x032c>	" -̬	COMBINING CARON BELOW
_<	<Char-0x032d>	" -̭	COMBINING CIRCUMFLEX ACCENT BELOW
_)	<Char-0x032e>	" -̮	COMBINING BREVE BELOW
_(	<Char-0x032f>	" -̯	COMBINING INVERTED BREVE BELOW
_~	<Char-0x0330>	" -̰	COMBINING TILDE BELOW
_|	<Char-0x0331>	" -̱	COMBINING MACRON BELOW
+/	<Char-0x0338>	" -̸	COMBINING LONG SOLIDUS OVERLAY
" ^x	<char-0x033d>	" -̽	COMBINING X ABOVE
" ^X	<CHAR-0X033D>
^X	<Char-0x033D>
^~	<Char-0x033e>	" -̾	COMBINING VERTICAL TILDE
^(	<Char-0x0351>	" -͑	COMBINING LEFT HALF RING ABOVE
.)	<Char-0x0352>	" -͒	COMBINING FERMATA
_x	<char-0x0353>	" -͓	COMBINING X BELOW
_X	<CHAR-0X0353>
_X	<Char-0X0353>
^)	<Char-0x0357>	" -͗	COMBINING RIGHT HALF RING ABOVE
_))	<Char-0x035c>	" -͜	COMBINING DOUBLE BREVE BELOW
((	<Char-0x035d>	" -͝	COMBINING DOUBLE BREVE
||	<Char-0x035e>	" -͞	COMBINING DOUBLE MACRON
_||	<Char-0x035f>	" -͟	COMBINING DOUBLE MACRON BELOW
~~	<Char-0x0360>	" -͠	COMBINING DOUBLE TILDE
))	<Char-0x0361>	" -͡	COMBINING DOUBLE INVERTED BREVE

" " + ASCII for literal ASCII -- all non-blank ASCII chars
\"!	!	U+0021 EXCLAMATION MARK
\"\"	\"	U+0022 QUOTATION MARK
\"#	#	U+0023 NUMBER SIGN
\"$	$	U+0024 DOLLAR SIGN
\"%	%	U+0025 PERCENT SIGN
\"&	&	U+0026 AMPERSAND
\"'	'	U+0027 APOSTROPHE
\"(	(	U+0028 LEFT PARENTHESIS
\")	)	U+0029 RIGHT PARENTHESIS
\"*	*	U+002A ASTERISK
\"+	+	U+002B PLUS SIGN
\",	,	U+002C COMMA
\"-	-	U+002D HYPHEN-MINUS
\".	.	U+002E FULL STOP
\"/	/	U+002F SOLIDUS
\":	:	U+003A COLON
\";	;	U+003B SEMICOLON
\"<	<	U+003C LESS-THAN SIGN
\"=	=	U+003D EQUALS SIGN
\">	>	U+003E GREATER-THAN SIGN
\"?	?	U+003F QUESTION MARK
\"@	@	U+0040 COMMERCIAL AT
\"[	[	U+005B LEFT SQUARE BRACKET
\"\\	\\	U+005C REVERSE SOLIDUS
\"]	]	U+005D RIGHT SQUARE BRACKET
\"^	^	U+005E CIRCUMFLEX ACCENT
\"`	`	U+0060 GRAVE ACCENT
\"{	{	U+007B LEFT CURLY BRACKET
\"|	|	U+007C VERTICAL LINE
\"}	}	U+007D RIGHT CURLY BRACKET
\"~	~	U+007E TILDE
\"a	a	U+0041 LATIN CAPITAL LETTER A
\"A	A
\"b	b	U+0042 LATIN CAPITAL LETTER B
\"B	B
\"c	c	U+0043 LATIN CAPITAL LETTER C
\"C	C
\"d	d	U+0044 LATIN CAPITAL LETTER D
\"D	D
\"e	e	U+0045 LATIN CAPITAL LETTER E
\"E	E
\"f	f	U+0046 LATIN CAPITAL LETTER F
\"F	F
\"g	g	U+0047 LATIN CAPITAL LETTER G
\"G	G
\"h	h	U+0048 LATIN CAPITAL LETTER H
\"H	H
\"i	i	U+0049 LATIN CAPITAL LETTER I
\"I	I
\"j	j	U+004A LATIN CAPITAL LETTER J
\"J	J
\"k	k	U+004B LATIN CAPITAL LETTER K
\"K	K
\"l	l	U+004C LATIN CAPITAL LETTER L
\"L	L
\"m	m	U+004D LATIN CAPITAL LETTER M
\"M	M
\"n	n	U+004E LATIN CAPITAL LETTER N
\"N	N
\"o	o	U+004F LATIN CAPITAL LETTER O
\"O	O
\"p	p	U+0050 LATIN CAPITAL LETTER P
\"P	P
\"q	q	U+0051 LATIN CAPITAL LETTER Q
\"Q	Q
\"r	r	U+0052 LATIN CAPITAL LETTER R
\"R	R
\"s	s	U+0053 LATIN CAPITAL LETTER S
\"S	S
\"t	t	U+0054 LATIN CAPITAL LETTER T
\"T	T
\"u	u	U+0055 LATIN CAPITAL LETTER U
\"U	U
\"v	v	U+0056 LATIN CAPITAL LETTER V
\"V	V
\"w	w	U+0057 LATIN CAPITAL LETTER W
\"W	W
\"x	x	U+0058 LATIN CAPITAL LETTER X
\"X	X
\"y	y	U+0059 LATIN CAPITAL LETTER Y
\"Y	Y
\"z	z	U+005A LATIN CAPITAL LETTER Z
\"Z	Z

" n-graphs for non-decomposable Latin script letters
&ae	æ	U+00C6 LATIN CAPITAL LETTER AE
&AE	Æ
&Ae	Æ
&dh	ð	U+00D0 LATIN CAPITAL LETTER ETH
&DH	Ð
&Dh	Ð
&o/	ø	U+00D8 LATIN CAPITAL LETTER O WITH STROKE
&O/	Ø
&th	þ	U+00DE LATIN CAPITAL LETTER THORN
&TH	Þ
&Th	Þ
&d-	đ	U+0110 LATIN CAPITAL LETTER D WITH STROKE
&D-	Đ
&h-	ħ	U+0126 LATIN CAPITAL LETTER H WITH STROKE
&H-	Ħ
&ij	ĳ	U+0132 LATIN CAPITAL LIGATURE IJ
&IJ	Ĳ
&Ij	Ĳ
&l.	ŀ	U+013F LATIN CAPITAL LETTER L WITH MIDDLE DOT
&L.	Ŀ
&l/	ł	U+0141 LATIN CAPITAL LETTER L WITH STROKE
&L/	Ł
&ng	ŋ	U+014A LATIN CAPITAL LETTER ENG
&NG	Ŋ
&Ng	Ŋ
&oe	œ	U+0152 LATIN CAPITAL LIGATURE OE
&OE	Œ
&Oe	Œ
&t-	ŧ	U+0166 LATIN CAPITAL LETTER T WITH STROKE
&T-	Ŧ
&b?	ɓ	U+0181 LATIN CAPITAL LETTER B WITH HOOK
&B?	Ɓ
@b^-	ƃ	U+0182 LATIN CAPITAL LETTER B WITH TOPBAR
@B^-	Ƃ
&t6	ƅ	U+0184 LATIN CAPITAL LETTER TONE SIX
&T6	Ƅ
&oh	ɔ	U+0186 LATIN CAPITAL LETTER OPEN O
&OH	Ɔ
&Oh	Ɔ
&c?	ƈ	U+0187 LATIN CAPITAL LETTER C WITH HOOK
&C?	Ƈ
@d_!	ɖ	U+0189 LATIN CAPITAL LETTER AFRICAN D
@D_!	Ɖ
&d?	ɗ	U+018A LATIN CAPITAL LETTER D WITH HOOK
&D?	Ɗ
@d^-	ƌ	U+018B LATIN CAPITAL LETTER D WITH TOPBAR
@D^-	Ƌ
@e``	ǝ	U+018E LATIN CAPITAL LETTER REVERSED E
&e¡	ǝ	U+018E LATIN CAPITAL LETTER REVERSED E
@E``	Ǝ
&E¡	Ǝ
&eh	ə	U+018F LATIN CAPITAL LETTER SCHWA
&EH	Ə
&Eh	Ə
&ea	ɛ	U+0190 LATIN CAPITAL LETTER OPEN E
&EA	Ɛ
&Ea	Ɛ
&f?	ƒ	U+0191 LATIN CAPITAL LETTER F WITH HOOK
&F?	Ƒ
&g?	ɠ	U+0193 LATIN CAPITAL LETTER G WITH HOOK
&G?	Ɠ
&gh	ɣ	U+0194 LATIN CAPITAL LETTER GAMMA
&GH	Ɣ
&Gh	Ɣ
&i`	ɩ	U+0196 LATIN CAPITAL LETTER IOTA
&i£	ɩ	U+0196 LATIN CAPITAL LETTER IOTA
&I`	Ɩ
&I£	Ɩ
&i-	ɨ	U+0197 LATIN CAPITAL LETTER I WITH STROKE
&I-	Ɨ
&k?	ƙ	U+0198 LATIN CAPITAL LETTER K WITH HOOK
&K?	Ƙ
&uu	ɯ	U+019C LATIN CAPITAL LETTER TURNED M
&UU	Ɯ
&Uu	Ɯ
&gn	ɲ	U+019D LATIN CAPITAL LETTER N WITH LEFT HOOK
&GN	Ɲ
&Gn	Ɲ
&o~	ɵ	U+019F LATIN CAPITAL LETTER O WITH MIDDLE TILDE
&O~	Ɵ
&qh	ƣ	U+01A2 LATIN CAPITAL LETTER GHA
&QH	Ƣ
&Qh	Ƣ
&p?	ƥ	U+01A4 LATIN CAPITAL LETTER P WITH HOOK
&P?	Ƥ
&rz	ʀ	U+01A6 LATIN LETTER YR
&RZ	Ʀ
&Rz	Ʀ
&t2	ƨ	U+01A7 LATIN CAPITAL LETTER TONE TWO
&T2	Ƨ
&sh	ʃ	U+01A9 LATIN CAPITAL LETTER ESH
&SH	Ʃ
&Sh	Ʃ
&t?	ƭ	U+01AC LATIN CAPITAL LETTER T WITH HOOK
&T?	Ƭ
@t_!	ʈ	U+01AE LATIN CAPITAL LETTER T WITH RETROFLEX HOOK
@T_!	Ʈ
&uh	ʊ	U+01B1 LATIN CAPITAL LETTER UPSILON
&UH	Ʊ
&Uh	Ʊ
&v?	ʋ	U+01B2 LATIN CAPITAL LETTER V WITH HOOK
&V?	Ʋ
&y?	ƴ	U+01B3 LATIN CAPITAL LETTER Y WITH HOOK
&Y?	Ƴ
&z-	ƶ	U+01B5 LATIN CAPITAL LETTER Z WITH STROKE
&Z-	Ƶ
&zh	ʒ	U+01B7 LATIN CAPITAL LETTER EZH
&ZH	Ʒ
&Zh	Ʒ
&dz	ʒ	U+01B7 LATIN CAPITAL LETTER EZH
&DZ	Ʒ
&Dz	Ʒ
#zh``	ƹ	U+01B8 LATIN CAPITAL LETTER EZH REVERSED
@zh¡	ƹ	U+01B8 LATIN CAPITAL LETTER EZH REVERSED
#ZH``	Ƹ
@ZH¡	Ƹ
#Zh``	Ƹ
@Zh¡	Ƹ
&t5	ƽ	U+01BC LATIN CAPITAL LETTER TONE FIVE
&T5	Ƽ
&g-	ǥ	U+01E4 LATIN CAPITAL LETTER G WITH STROKE
&G-	Ǥ
&hv	ƕ	U+01F6 LATIN CAPITAL LETTER HWAIR
&HV	Ƕ
&Hv	Ƕ
&w`	ƿ	U+01F7 LATIN CAPITAL LETTER WYNN
&w£	ƿ	U+01F7 LATIN CAPITAL LETTER WYNN
&W`	Ƿ
&W£	Ƿ
&yh	ȝ	U+021C LATIN CAPITAL LETTER YOGH
&YH	Ȝ
&Yh	Ȝ
&nj	ƞ	U+0220 LATIN CAPITAL LETTER N WITH LONG RIGHT LEG
&NJ	Ƞ
&Nj	Ƞ
&ou	ȣ	U+0222 LATIN CAPITAL LETTER OU
&OU	Ȣ
&Ou	Ȣ
&z?	ȥ	U+0224 LATIN CAPITAL LETTER Z WITH HOOK
&Z?	Ȥ
&a/	ⱥ	U+023A LATIN CAPITAL LETTER A WITH STROKE
&A/	Ⱥ
&c/	ȼ	U+023B LATIN CAPITAL LETTER C WITH STROKE
&C/	Ȼ
&l-	ƚ	U+023D LATIN CAPITAL LETTER L WITH BAR
&L-	Ƚ
&t/	ⱦ	U+023E LATIN CAPITAL LETTER T WITH DIAGONAL STROKE
&T/	Ⱦ
&qg	ɂ	U+0241 LATIN CAPITAL LETTER GLOTTAL STOP
&QG	Ɂ
&Qg	Ɂ
&b-	ƀ	U+0243 LATIN CAPITAL LETTER B WITH STROKE
&B-	Ƀ
&u-	ʉ	U+0244 LATIN CAPITAL LETTER U BAR
&U-	Ʉ
&vu	ʌ	U+0245 LATIN CAPITAL LETTER TURNED V
&VU	Ʌ
&Vu	Ʌ
&e/	ɇ	U+0246 LATIN CAPITAL LETTER E WITH STROKE
&E/	Ɇ
&j-	ɉ	U+0248 LATIN CAPITAL LETTER J WITH STROKE
&J-	Ɉ
@q_?	ɋ	U+024A LATIN CAPITAL LETTER SMALL Q WITH HOOK TAIL
@Q_?	Ɋ
&r-	ɍ	U+024C LATIN CAPITAL LETTER R WITH STROKE
&R-	Ɍ
&y-	ɏ	U+024E LATIN CAPITAL LETTER Y WITH STROKE
&Y-	Ɏ
&ss	ß	U+1E9E LATIN CAPITAL LETTER SHARP S
&SS	ẞ
&Ss	ẞ
&ll	ỻ	U+1EFA LATIN CAPITAL LETTER MIDDLE-WELSH LL
&LL	Ỻ
&Ll	Ỻ
&vv	ỽ	U+1EFC LATIN CAPITAL LETTER MIDDLE-WELSH V
&VV	Ỽ
&Vv	Ỽ
&y@	ỿ	U+1EFE LATIN CAPITAL LETTER Y WITH LOOP
&Y@	Ỿ
@f``	ⅎ	U+2132 TURNED CAPITAL F
&f¡	ⅎ	U+2132 TURNED CAPITAL F
@F``	Ⅎ
&F¡	Ⅎ
@c``	ↄ	U+2183 ROMAN NUMERAL REVERSED ONE HUNDRED
&c¡	ↄ	U+2183 ROMAN NUMERAL REVERSED ONE HUNDRED
@C``	Ↄ
&C¡	Ↄ
&l=	ⱡ	U+2C60 LATIN CAPITAL LETTER L WITH DOUBLE BAR
&L=	Ⱡ
&l~	ɫ	U+2C62 LATIN CAPITAL LETTER L WITH MIDDLE TILDE
&L~	Ɫ
&p-	ᵽ	U+2C63 LATIN CAPITAL LETTER P WITH STROKE
&P-	Ᵽ
@r_!	ɽ	U+2C64 LATIN CAPITAL LETTER R WITH TAIL
@R_!	Ɽ
@h_;	ⱨ	U+2C67 LATIN CAPITAL LETTER H WITH DESCENDER
@H_;	Ⱨ
@k_;	ⱪ	U+2C69 LATIN CAPITAL LETTER K WITH DESCENDER
@K_;	Ⱪ
@z_;	ⱬ	U+2C6B LATIN CAPITAL LETTER Z WITH DESCENDER
@Z_;	Ⱬ
&ah	ɑ	U+2C6D LATIN CAPITAL LETTER ALPHA
&AH	Ɑ
&Ah	Ɑ
&mj	ɱ	U+2C6E LATIN CAPITAL LETTER M WITH HOOK
&MJ	Ɱ
&Mj	Ɱ
&mv	ɱ
&MV	Ɱ
&Mv	Ɱ
@a``	ɐ	U+2C6F LATIN CAPITAL LETTER TURNED A
&a¡	ɐ	U+2C6F LATIN CAPITAL LETTER TURNED A
@A``	Ɐ
&A¡	Ɐ
&a`	ɒ	U+2C70 LATIN CAPITAL LETTER TURNED ALPHA
&a£	ɒ	U+2C70 LATIN CAPITAL LETTER TURNED ALPHA
&A`	Ɒ
&A£	Ɒ
&w?	ⱳ	U+2C72 LATIN CAPITAL LETTER W WITH HOOK
&W?	Ⱳ
&hh	ⱶ	U+2C75 LATIN CAPITAL LETTER HALF H
&HH	Ⱶ
&Hh	Ⱶ
@s_~	ȿ	U+2C7E LATIN CAPITAL LETTER S WITH SWASH TAIL
@S_~	Ȿ
@z_~	ɀ	U+2C7F LATIN CAPITAL LETTER Z WITH SWASH TAIL
@Z_~	Ɀ
&a3	ꜣ	U+A722 LATIN CAPITAL LETTER EGYPTOLOGICAL ALEF
&A3	Ꜣ
&a2	ꜥ	U+A724 LATIN CAPITAL LETTER EGYPTOLOGICAL AIN
&A2	Ꜥ
&hj	ꜧ	U+A726 LATIN CAPITAL LETTER HENG
&HJ	Ꜧ
&Hj	Ꜧ
&tz	ꜩ	U+A728 LATIN CAPITAL LETTER TZ
&TZ	Ꜩ
&Tz	Ꜩ
&q3	ꜫ	U+A72A LATIN CAPITAL LETTER TRESILLO
&Q3	Ꜫ
&k4	ꜭ	U+A72C LATIN CAPITAL LETTER CUATRILLO
&K4	Ꜭ
&z4	ꜯ	U+A72E LATIN CAPITAL LETTER CUATRILLO WITH COMMA
&Z4	Ꜯ
&aa	ꜳ	U+A732 LATIN CAPITAL LETTER AA
&AA	Ꜳ
&Aa	Ꜳ
&ao	ꜵ	U+A734 LATIN CAPITAL LETTER AO
&AO	Ꜵ
&Ao	Ꜵ
&au	ꜷ	U+A736 LATIN CAPITAL LETTER AU
&AU	Ꜷ
&Au	Ꜷ
&av	ꜹ	U+A738 LATIN CAPITAL LETTER AV
&AV	Ꜹ
&Av	Ꜹ
@av-	ꜻ	U+A73A LATIN CAPITAL LETTER AV WITH HORIZONTAL BAR
@AV-	Ꜻ
@Av-	Ꜻ
&ay	ꜽ	U+A73C LATIN CAPITAL LETTER AY
&AY	Ꜽ
&Ay	Ꜽ
#c``.	ꜿ	U+A73E LATIN CAPITAL LETTER REVERSED C WITH DOT
@c¡.	ꜿ	U+A73E LATIN CAPITAL LETTER REVERSED C WITH DOT
#C``.	Ꜿ
@C¡.	Ꜿ
&k-	ꝁ	U+A740 LATIN CAPITAL LETTER K WITH STROKE
&K-	Ꝁ
@k_/	ꝃ	U+A742 LATIN CAPITAL LETTER K WITH DIAGONAL STROKE
@K_/	Ꝃ
@k-/	ꝅ	U+A744 LATIN CAPITAL LETTER K WITH STROKE AND DIAGONAL STROKE
@K-/	Ꝅ
&l`	ꝇ	U+A746 LATIN CAPITAL LETTER BROKEN L
&l£	ꝇ	U+A746 LATIN CAPITAL LETTER BROKEN L
&L`	Ꝇ
&L£	Ꝇ
@l^-	ꝉ	U+A748 LATIN CAPITAL LETTER L WITH HIGH STROKE
@L^-	Ꝉ
&o|	ꝋ	U+A74A LATIN CAPITAL LETTER O WITH LONG STROKE OVERLAY
&O|	Ꝋ
&o@	ꝍ	U+A74C LATIN CAPITAL LETTER O WITH LOOP
&O@	Ꝍ
&oo	ꝏ	U+A74E LATIN CAPITAL LETTER OO
&OO	Ꝏ
&Oo	Ꝏ
@p_-	ꝑ	U+A750 LATIN CAPITAL LETTER P WITH STROKE THROUGH DESCENDER
@P_-	Ꝑ
&p~	ꝓ	U+A752 LATIN CAPITAL LETTER P WITH FLOURISH
&P~	Ꝓ
@p_~	ꝕ	U+A754 LATIN CAPITAL LETTER P WITH SQUIRREL TAIL
@P_~	Ꝕ
@q_-	ꝗ	U+A756 LATIN CAPITAL LETTER Q WITH STROKE THROUGH DESCENDER
@Q_-	Ꝗ
&q/	ꝙ	U+A758 LATIN CAPITAL LETTER Q WITH DIAGONAL STROKE
&Q/	Ꝙ
&r2	ꝛ	U+A75A LATIN CAPITAL LETTER R ROTUNDA
&R2	Ꝛ
@r2/	ꝝ	U+A75C LATIN CAPITAL LETTER RUM ROTUNDA
@R2/	Ꝝ
&v/	ꝟ	U+A75E LATIN CAPITAL LETTER V WITH DIAGONAL STROKE
&V/	Ꝟ
&vy	ꝡ	U+A760 LATIN CAPITAL LETTER VY
&VY	Ꝡ
&Vy	Ꝡ
&yy	ꝡ	U+A760 LATIN CAPITAL LETTER VY
&YY	Ꝡ
&Yy	Ꝡ
&zz	ꝣ	U+A762 LATIN CAPITAL LETTER VISIGOTHIC Z
&ZZ	Ꝣ
&Zz	Ꝣ
@th-	ꝥ	U+A764 LATIN CAPITAL LETTER THORN WITH STROKE
@TH-	Ꝥ
@Th-	Ꝥ
#th_-	ꝧ	U+A766 LATIN CAPITAL LETTER THORN WITH STROKE THROUGH DESCENDER
#TH_-	Ꝧ
#Th_-	Ꝧ
&v`	ꝩ	U+A768 LATIN CAPITAL LETTER VEND
&v£	ꝩ	U+A768 LATIN CAPITAL LETTER VEND
&V`	Ꝩ
&V£	Ꝩ
&et	ꝫ	U+A76A LATIN CAPITAL LETTER ET
&ET	Ꝫ
&Et	Ꝫ
&is	ꝭ	U+A76C LATIN CAPITAL LETTER IS
&IS	Ꝭ
&Is	Ꝭ
&cn	ꝯ	U+A76E LATIN CAPITAL LETTER CON
&CN	Ꝯ
&Cn	Ꝯ
&d`	ꝺ	U+A779 LATIN CAPITAL LETTER INSULAR D
&d£	ꝺ	U+A779 LATIN CAPITAL LETTER INSULAR D
&D`	Ꝺ
&D£	Ꝺ
&f`	ꝼ	U+A77B LATIN CAPITAL LETTER INSULAR F
&f£	ꝼ	U+A77B LATIN CAPITAL LETTER INSULAR F
&F`	Ꝼ
&F£	Ꝼ
&g`	ᵹ	U+A77D LATIN CAPITAL LETTER INSULAR G
&g£	ᵹ	U+A77D LATIN CAPITAL LETTER INSULAR G
&G`	Ᵹ
&G£	Ᵹ
@g``	ꝿ	U+A77E LATIN CAPITAL LETTER TURNED INSULAR G
&g¡	ꝿ	U+A77E LATIN CAPITAL LETTER TURNED INSULAR G
@G``	Ꝿ
&G¡	Ꝿ
@l``	ꞁ	U+A780 LATIN CAPITAL LETTER TURNED L
&l¡	ꞁ	U+A780 LATIN CAPITAL LETTER TURNED L
@L``	Ꞁ
&L¡	Ꞁ
&r`	ꞃ	U+A782 LATIN CAPITAL LETTER INSULAR R
&r£	ꞃ	U+A782 LATIN CAPITAL LETTER INSULAR R
&R`	Ꞃ
&R£	Ꞃ
&s`	ꞅ	U+A784 LATIN CAPITAL LETTER INSULAR S
&s£	ꞅ	U+A784 LATIN CAPITAL LETTER INSULAR S
&S`	Ꞅ
&S£	Ꞅ
&t`	ꞇ	U+A786 LATIN CAPITAL LETTER INSULAR T
&t£	ꞇ	U+A786 LATIN CAPITAL LETTER INSULAR T
&T`	Ꞇ
&T£	Ꞇ
&qs	ꞌ	U+A78B LATIN CAPITAL LETTER SALTILLO
&QS	Ꞌ
&Qs	Ꞌ
@y``	ɥ	U+A78D LATIN CAPITAL LETTER TURNED H
&y¡	ɥ	U+A78D LATIN CAPITAL LETTER TURNED H
@Y``	Ɥ
&Y¡	Ɥ
@h``	ɥ	U+A78D LATIN CAPITAL LETTER TURNED H
&h¡	ɥ	U+A78D LATIN CAPITAL LETTER TURNED H
@H``	Ɥ
&H¡	Ɥ
@n_;	ꞑ	U+A790 LATIN CAPITAL LETTER N WITH DESCENDER
@N_;	Ꞑ
&c-	Ꞓ	U+A792 LATIN CAPITAL LETTER C WITH BAR
&C-	Ꞓ
&c-	ꞓ
&C-	ꞓ
&g/	ꞡ	U+A7A0 LATIN CAPITAL LETTER G WITH OBLIQUE STROKE
&G/	Ꞡ
&k/	ꞣ	U+A7A2 LATIN CAPITAL LETTER K WITH OBLIQUE STROKE
&K/	Ꞣ
&n/	ꞥ	U+A7A4 LATIN CAPITAL LETTER N WITH OBLIQUE STROKE
&N/	Ꞥ
&r/	ꞧ	U+A7A6 LATIN CAPITAL LETTER R WITH OBLIQUE STROKE
&R/	Ꞧ
&s/	ꞩ	U+A7A8 LATIN CAPITAL LETTER S WITH OBLIQUE STROKE
&S/	Ꞩ
&h?	Ɦ	U+A7AA LATIN CAPITAL LETTER H WITH HOOK
&H?	Ɦ
&h?	ɦ
&H?	ɦ
" Some Latin clones of Greek letters with distinct uppercase in Unicode 8.0.0
$K	Ꭓ	U+A7B3 LATIN CAPITAL LETTER CHI
$k	ꭓ	lower case is AB53 
$B	Ꞵ	A7B4 LATIN CAPITAL LETTER BETA
$b	ꞵ	A7B5 LATIN SMALL LETTER BETA
" N-graphs for some Greek letters used as transliteration characters
$F	Φ
$f	φ
$T	Θ
$t	θ
$D	Δ
$d	δ
$G	Γ
$g	γ



&i.	ı	U+0131 LATIN SMALL LETTER DOTLESS I
&I.	I
&j.	ȷ	U+0237 LATIN SMALL LETTER DOTLESS J
&J.	ȷ
$$	ſ	U+017F LATIN SMALL LETTER LONG S
&$.	ẛ	U+1E9B LATIN SMALL LETTER LONG S WITH DOT ABOVE
&$/	ẜ	U+1E9C LATIN SMALL LETTER LONG S WITH DIAGONAL STROKE
&$-	ẝ	U+1E9D LATIN SMALL LETTER LONG S WITH HIGH STROKE
&$t	ﬅ	U+FB05 LATIN SMALL LIGATURE LONG S T
&$T	ST

" N-graphs for modifier letters
&^j	ʲ
&_j	ⱼ
&^r	ʳ
&^l	ˡ
"^&l%
&^z	ᶻ
&^s	ˢ
&^v	ᵛ
&^x	ˣ
&^w	ʷ
&^y	ʸ
&^i	ⁱ
&^u	ᵘ
&^o	ᵒ
&^e	ᵉ
&^a	ᵃ
 
&^´	ˊ
&^`	ˋ
&^`	ˋ
&_´	ˏ



