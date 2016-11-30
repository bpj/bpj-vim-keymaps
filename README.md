# BPJ's Vim keymaps

My [Vim keymaps][], most of them quite ugly hacks...

BTW you might want to [`:set delcombine`][] and [`:set maxcombine=6`][].

## bxs.vim

My variation of [CXS][], mainly additions to accommodate more Unicode phonetic characters, IPA and otherwise, but note that

    l\      ȴ  U+0234 LATIN SMALL LETTER L WITH CURL
    4\      ɺ  U+027A LATIN SMALL LETTER TURNED R WITH LONG LEG

though I might revert that change soonish since I went ahead and added `t; d; n; l; S; Z;` for alveopalatals **ȶ ȡ ȵ ȴ ɕ ʑ**, though my former `t\ d\ n\ l\` are still in place for now and `s\ z\` of course won't go away.

Moreover `"` + any ASCII non-`a-z` character gives you that ASCII character. (Yes this means you need to type `""` to get an ASCII double-quote, but when did you need it in a phone\*ic transcription last?)

## bpjgreek.vim

My take on entering Unicode (Ancient [polytonic][]) Greek. Unlike Beta Code 1:1 character correspondence is neither a requirement nor a goal. If you want to type **χώρη** you type `kh/.or.e` -- or `ch/.or.i` or anything in between if that suits your pronunciation or orthographic habits --, and if you want to write **ξηρά** you type `x.er/a` or `ks.er/a` or...

There are more detailed explanations [in the file][].

## bpjlatin.vim

A hacky concoction on similar principles to enter Unicode Latin-script characters and combining diacritics. I'm planning to replace it with something better-thought-out in a not too far away future (but you know how those things go! :-)

The ASCII double quote `"` + any ASCII character can be used to get that ASCII character literally (including `""` for a literal **"**). This is useful since the keymap defines digraphs like `dh` for **ð** and `d-` for **đ** To get a literal **dh** while the keymap is active you can type `"d"h` or `d"h` and to get a literal **d-** you can type `"d"-` or `d"-`. Sometimes you must use these ASCII digraphs in a specific order: the keymap remaps `/` to the combining acute accent and `o/` to **ø**. To get **ó** you must type `"o/` and to get **o/** you must type `"o"/`.

The keymap doesn't define mappings for precomposed characters where there is an alternative with combining character(s). If that is a concern you can use a [filter][] script like this (originally from [Tom Christiansens Unicode scripts][]) to get precomposed characters where available:

``` perl
#!/usr/bin/env perl
 
use strict;
use 5.10.1;
use autodie;
use warnings qw[ FATAL all ];
use open     qw[ :std IO :utf8 ];
 
END { close STDOUT }
use Unicode::Normalize;
 
print NFC($_) while <>;
```

The repository contains a file `template.vim` which you can use to create your own keymaps where these `"` + ASCII mappings are already defined.

## sohlob.vim

Accented characters and punctuation needed for the Sohlob project.

## texquotes.vim

Originally meant to enable the use of TeX-like sequences for dashes and quotes. Has diverged a bit from that!

# autoload/switchkeymap.vim

My second, much simplified and improved, attempt at helper functions for switching keymaps in Vim. It defines two functions which you can use in `imap` and `nmap` \[mappings\]\[\] to switch back and forth between different keymaps, and some functions which help you define such maps with less typing and copy/paste.

## Simple usage

(The gory details are in the file!)

Suppose that you want to define key mappings to switch between keymaps (either those in this repository or any other keymap) called `bpjlatin.vim`, `myrussian.vim` and `accents.vim` (which must live in `~/.vim/keymap` or a `keymap/` directory in your ['runtimepath'][]), as well as to switch to the previously used keymap or no keymap at all. Put this in your `.vimrc`:

``` viml
let keymapdict = {
            \ '<F9>': "\1",
            \ '0': "\0",
            \ 'a': 'accents',
            \ 'l': 'bpjlatin',
            \ 'r': 'myrussian',
            \ }

call switchkeymap#map_dict(keymapdict, '<F9>')
```

This will define the following mappings for both normal and insert mode:

Mapping      |Effect
-------------|----------------------------------------------------------------------------------
`<F9><F9>`   |Toggles between the current keymap and the previously used one (both of which may be none).
`<F9>0`      |Deactivates the keymap. (Actually sets the ['keymap'][] option to an empty string.)
`<F9>a`      |Saves the previous keyp to `b:prev_keymap` and activates the `accents.vim` keymap.
`<F9>l`      |Saves the previous keyp to `b:prev_keymap` and activates the `bpjlatin.vim` keymap.
`<F9>r`      |Saves the previous keyp to `b:prev_keymap` and activates the `myrussian.vim` keymap.

The previous and current keymap are per buffer. The variables `b:prev_keymap` and `b:cur_keymap` are used to keep track of them.

  [Vim keymaps]: http://vimhelp.appspot.com/mbyte.txt.html#mbyte-keymap ":h mbyte-keymap"
  [`:set delcombine`]: http://vimhelp.appspot.com/options.txt.html#'delcombine' ":h 'delcombine'"
  [`:set maxcombine=6`]: http://vimhelp.appspot.com/options.txt.html#'maxcombine' ":h 'maxcombine'"
  [CXS]: http://www.theiling.de/ipa/
  [polytonic]: http://en.wikipedia.org/wiki/Greek_diacritics
  [in the file]: keymap/bpjgreek.vim
  [filter]: http://vimhelp.appspot.com/change.txt.html#filter ":h filter"
  [Tom Christiansens Unicode scripts]: https://metacpan.org/pod/Unicode::Tussle
  ['runtimepath']: http://vimhelp.appspot.com/options.txt.html#'runtimepath' ":h 'runtimepath'"
  ['keymap']: http://vimhelp.appspot.com/options.txt.html#'keymap' ":h 'keymap'"
