" Some utility functions for switching between keymaps
"
" Bugs/irritations:
"
" * If a keymap sets ahighlight for the cursor it is not reset when calling
"  switchkeymap#switch() without a value.
" * When switching buffers the keymap is unset.  This may be a Good Thing!

" takes the name of a keymap as optional argument
" lets b:prev_keymap to the current value of b:cur_keymap
" and lets b:cur_keymap to the argument if any or to old value of b:prev_keymap,
" then it executes :setl keymap={b:cur_keymap}
" i.e. it stashes the current 'keymap' value and makes the
" previously stashed 'keymap' value the current 'keymap' value,
" unless it was called with an argument, in which case the
" argument is made the current value of 'keymap' 
fun! switchkeymap#switch(...)
    let keymap = a:0 ? a:1 : exists('b:prev_keymap') ? b:prev_keymap : ""
    let b:prev_keymap = exists('b:cur_keymap') ? b:cur_keymap : ""
    let b:cur_keymap = keymap
    exe 'setl keymap=' . b:cur_keymap
endfun

" takes a string describing a key (combo) and a keymap name
" and maps the key to call switchkeymap#switch() 
" with the keymap name as argument in normal and insert mode
"
" For example after you say in your .vimrc
"    :call switchkeymap#map_set('<F11>g', 'greek')
"    :call switchkeymap#map_set('<F11>a', 'accents')
"    :call switchkeymap#map_set('<F11>0', "")
"    :call switchkeymap#map_set('<F11><F11>')
" then pressing <F11>g will set 'keymap' to "greek",
" pressing <F11>a will set it to "accents",
" pressing <F11>0 will set it to ""
" and pressing <F11><F11> will set it to its previous value for the buffer 
fun! switchkeymap#map_set(key, ...)
    let keymap = a:0 ? "'" . a:1 . "'" : ""
    exe "inor <silent> " . a:key . " <C-O>:call switchkeymap#switch(" . keymap . ")<cr>"
    exe "nnor <silent> " . a:key . " :call switchkeymap#switch(" . keymap . ")<cr>"
endfun

" takes a Dictionary mapping keys/combos to keymap names
" plus an optional prefix key (combo)
" and calls switchkeymap#map_set() for each item in the Dictionary,
" with the prefix + key as the keycombo argument 
" and the value as the keymap name argument.
" The values "\0" and "\1" are special:
" * "\0" sets 'keymap' to an empty string. Mnemonic: None
" * "\1" switches to the previous keymap. Mnemonic: the ONE before
fun! switchkeymap#map_dict(dict, ...)
    let prefix = a:0 ? a:1 : ""
    for [key, keymap] in items(a:dict)
        if keymap == "\1"
            call switchkeymap#map_set(prefix . key)
        elseif keymap == "\0"
            call switchkeymap#map_set(prefix . key, "")
        else
            call switchkeymap#map_set(prefix . key, keymap)
        endif
    endfor
endfun

" let keymapdict = {
"             \ '<F9>': "\1",
"             \ '0': "\0",
"             \ 'r': 'bpj-ru',
"             \ 'g': 'bpjgreek',
"             \ 'x': 'bxs',
"             \ }

" call switchkeymap#map_dict(keymapdict, '<F9>')
