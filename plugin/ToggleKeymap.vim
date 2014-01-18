" Hacky plugin to set keymap switching mappings
"
" The nifty thing is that you can map a key combo to switch to your
" last used keymap and back again

""""""""""""""""""""""""""""""""""""""""
"   g:mapkeymap
"
" IMPORTANT!  You will want to change this dict to suit your keymaps
" and put it, uncommented, in your .vimrc
"
" if !exists("g:mapkeymap")
"     let g:mapkeymap = {
"         \   'g' : 'bpjgreek',       " Beta Code drools! ;-)
"         \   'l' : 'latin',          " Hochpotch mappings for Unicode 'Latin' letters and accents
"         \   'n' : "",               " No mapping at all -- you may want to remap this to 0 (zero)
"         \   's' : 'sohlob',         " Accented letters as needed in the Sohlob project
"         \   'x' : 'bxs',            " CXS modified phonetic characters mappings -- see bxs.vim
"         \ }
"     call <SID>MapKeymaps()
" endif

""""""""""""""""""""""""""""""""""""""""
"   SetKeymap keymapname
"
" Switch to/turn on a keymap by name The difference from :setl
" keymap=mapname is that it stashes the currently active keymap name
" in the variable b:lastkeymap so that you can use (the mapping you
" have assigned to) ToggleKeymap to switch back and forth between the
" two keymaps.

fun! s:SetKeymap(mapname)
    let b:lastkeymap = &l:keymap
    exe 'setl keymap='.a:mapname
endfun

""""""""""""""""""""""""""""""""""""""""
"   ToggleKeymap
"
" Provided you set your current keymap with SetKeymap or through a
" mapping created with g:mapkeymap/AddKeymap/MapKeymaps this will
" toggle back and fort between the current keymap and the one last
" used -- or none if there was none used just before the current one.

fun! s:ToggleKeymap()
    if empty(b:lastkeymap)
        let b:lastkeymap = ""
    endif
    call <SID>SetKeymap(b:lastkeymap)
endfun

fun! s:SetToggleKeymap(key)
    exe 'nnor '.a:key.' :call <SID>ToggleKeymap()<CR>'
    exe 'inor '.a:key.' <C-O>:call <SID>ToggleKeymap()<CR>'
endif

"""""""""""""""""""""""""""""""""""""""""
"   MapKeymap keycombo keymapname
"
" Define SetKeymap-aware key mappings (as in :nnoremap and :inoremap)
" so that you can use the keycombo in the first argument to switch
" to/turn on the keymap by the given name in normal and insert mode.
" This actually maps the keycombo to act as if you had said
"
"   SetKeymap keymapname
"
" including allowing you to use ToggleKeymap and notably its
" associated key combination to switch back and forth between
" mappings.

fun! s:MapKeymap(key, name)
    exe ':nnor '.a:key.' :call <SID>SetKeymap("'.a:name.'")<CR>'
    exe ':inor '.a:key.' <C-O>:call <SID>SetKeymap("'.a:name.'")<CR>'
endfun

"""""""""""""""""""""""""""""""""""""""""
"   MapKeymaps
"
" Define SetKeymap-aware key mappings (as in :nnoremap and :inoremap)
" according to the key(s) : keymapname pairs in g:mapkeymap uses the
" 
"   g:keymaptrigger 
"
" variable as a prefix to the mapping if it exists and has non-zero
" string length, or otherwise defines it as <Leader>k and uses that.
" If you have a key :mapname pair { 'l' : 'latin' } in g:mapkeymap
" then if g:keymaptrigger has the value '<F11>' then you will get the
" mapping <F11>l to switch to that mapping in normal and insert mode.
" If you haven't set g:keymaptrigger or it's zero length you will get
" the mapping <Leader>kl in normal and insert mode to switch on the
" latin.vim keymap.

fun! s:MapKeymaps()
    if exists("g:mapkeymap")
        if !exists("g:keymaptrigger") || !strlen("g:keymaptrigger")
            let g:keymaptrigger = '<Leader>k'
        endif
        for [key, name] in items(g:mapkeymap)
            call <SID>MapKeymap(g:keymaptrigger.key, name)
        endfor
    endif
endfun

"""""""""""""""""""""""""""""""""""""""""
"   AddMapKeymap key keymapname
"
" Add the pair 'key' : 'mapkeymap' to g:mapkeymap, then call
" MapKeymap similar to how MapKeymaps does so as to enable it.
" Later you can use 
"
"   :put =string(g:mapkeymap)
"
" to print g:mapkeymap to your .vimrc to redefine g:mapkeymap!

fun! s:AddMapKeymap(key, name)
    if !exists("g:keymaptrigger") || !strlen("g:keymaptrigger")
        let g:keymaptrigger = '<Leader>k'
    endif
    let g:mapkeymap[a:key] = a:name
    call <SID>MapKeymap(g:keymaptrigger.key, name)
endfun

if exists('g:togglekeymap') && strlen('g:togglekeymap')
    call <SID>SetToggleKeymap(g:togglekeymap)
endif

:com! -nargs=+ AddKeymap        :call <SID>AddKeymap(<f-args>)
:com! -nargs=1 SetKeymap        :call <SID>SetKeymap(<f-args>)
:com! -nargs=1 SetToggleKeymap  :call <SID>SetToggleKeymap(<f-args>)
:com! -nargs=0 ToggleKeymap     :call <SID>ToggleKeymap()
:com! -nargs=+ MapKeymap        :call <SID>MapKeymap(<f-args>)
:com! -nargs=0 MapKeymaps       :call <SID>MapKeymaps()

