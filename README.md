BPJ's vim keymaps
=================

My vim keymaps, most of them quite ugly hacks...

bxs.vim
-------

My variation of [CXS](http://www.theiling.de/ipa/), mainly additions to accommodate more Unicode phonetic characters, IPA and otherwise, but note that

    l\      ȴ  U+0234 LATIN SMALL LETTER L WITH CURL
    4\      ɺ  U+027A LATIN SMALL LETTER TURNED R WITH LONG LEG

Moreover `"` + any ASCII non-`a-z` character gives you that ASCII character. (Yes this means you need to type `""` to get an ASCII double-quote, but when did you need it in a phone\*ic transcription last?)

bpjgreek.vim
------------

My take on entering Unicode (Ancient [polytonic](http://en.wikipedia.org/wiki/Greek_diacritics)) Greek. Unlike Beta Code 1:1 character correspondence is neither a requirement nor a goal. If you want to type **χώρη** you type `kh/.or.e` -- or `ch/.or.i` or anything in between if that suits your pronunciation or orthographic habits --, and if you want to write **ξηρά** you type `x.er/a` or `ks.er/a` or...

There are more detailed explanations [in the file](keymap/bpjgreek.vim).

latin.vim
---------

A hacky concoction on similar principles to enter Unicode Latin-script characters and combining diacritics. I'm planning to replace it with something better-thought-out in a not too far away future (but you know how those things go! :-)

sohlob.vim
----------

Accented characters and punctuation needed for the Sohlob project.

texquotes.vim
-------------

Originally meant to enable the use of TeX-like sequences for dashes and quotes.  Has diverged a bit from that! 
