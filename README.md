BPJ's vim keymaps
=================

My vim keymaps, most of them quite ugly hacks...

bxs.vim
-------

My variation of [CXS](http://www.theiling.de/ipa/),
mainly additions to accommodate more Unicode phonetic
characters, IPA and otherwise, but note that

    l\      ȴ  U+0234 LATIN SMALL LETTER L WITH CURL
    4\      ɺ  U+027A LATIN SMALL LETTER TURNED R WITH LONG LEG

Moreover `"` + any ASCII character gives you that ASCII character.

bpjgreek.vim
------------

My take of entering Unicode (Ancient \[polytonic\]) Greek. Unlike
Beta Code 1:1 correspondence is neither a requirement nor a goal.
If you want to type **χώρη** you type `kh/.or.e` -- or `ch/.or.i`
or anything in between if that suits your pronunciation or
orthographic habits --, and if you want to write **ξηρά** you
type `x.er/a` or `ks.er/a` or... So it's mainly a normal Latin-
letter transcription with ASCII punctuation thrown in as
diacritics, and all such 'diacritics' go before the letter they
modify, so that punctuation characters which normally unly are
used at the end of words can usually be typed normally!
Conveniently rough breathing (spiritus asper) is `h` or `H`. Less
conveniently smooth breathing (spiritus lenis) has to be entered
explicitly as `,`; there is nothing you can do about it the way
vim keymaps work.

There are more detailed explanations in the file.

latin.vim
---------

A hacky concoction on similar principles to enter
Unicode Latin-script characters and combining diacritics.

