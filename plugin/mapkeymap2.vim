" Hacky plugin to set keymap switching mappings
"
" The nifty thing is that you can map a key combo
" to swith to your last used keymap and back again

fun! s:NoKeymap()
    setl keymap=""
endfun

fun! s:SetKeymap(mapname)
    let b:lastkeymap = &l:keymap
    exe 'setl keymap='.a:mapname
    if empty(&l:keymap)
        call <SID>NoKeymap()
        map()
    endif
endfun

fun! s:ToggleKeymap()
    if empty(b:lastkeymap)
        let b:lastkeymap = ""
    endif
    call <SID>SetKeymap(b:lastkeymap)
endfun

fun! s:MapKeymaps()
    if exists("g:mapkeymap")
        for [letter, name] in items(g:mapkeymap)
            exe ':nnor <F11>'.letter.' :call <SID>SetKeymap("'.name.'")<CR>'
            exe ':inor <F11>'.letter.' <C-O>:call <SID>SetKeymap("'.name.'")<CR>'
        endfor
    endif
endfun

fun! s:AddKeymap(key, val)
    let g:mapkeymap[a:key] = a:val
    call <SID>MapKeymaps()
endfun

if !exists("g:mapkeymap")
    let g:mapkeymap = {
        \   'x':'bxs', 
        \   's':'sohlob', 
        \   'g':'bpjgreek', 
        \   'l':'latin',
        \   'n':"",}
    call <SID>MapKeymaps()
endif

:com! -nargs=+ AddKeymap :call <SID>AddKeymap(<f-args>)
:com! -nargs=1 SetKeymap :call <SID>SetKeymap(<f-args>)
:com! -nargs=0 NoKeymap  :call <SID>NoKeymap()
:com! -nargs=0 MapKeymaps :call <SID>MapKeymaps()

nnor <F11><F11> :call <SID>ToggleKeymap()<CR>
inor <F11><F11> <C-O>:call <SID>ToggleKeymap()<CR>

nnor <F11>0 :call <SID>NoKeymap()<CR>
inor <F11>0 <C-O>:call <SID>NoKeymap()<CR>


