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

BPJ's keymap-switching plugin
=============================

mapkeymap2.vim
--------------

My hacky plugin to add mappings for switching keymaps.

The original idea was that I could add letter:keymapname pairs in a dict rather than copy-pasting mappings ad nauseam.

So the dict looks like

```vimL
{'a':'keymapA', 'b':'keymapB', 'c':'keymapC',}
```

and the mappings become `<F11>a <F11>b <F11>c` which of course suits noone but me!

Each mapping calls a function with the keymap name as argument which first sets the buffer-local variable `b:lastkeymap` to the current value of `&l:keymap`, then sets `'keymap'` locally to the argument. When you then use the mapping `<F11><F11>` a function is called which calls the aforementioned keymap-setting function with the variable `b:lastkeymap` as argument, thus effectively switching between the current keymap and the previous, which may be no keymap at all.
