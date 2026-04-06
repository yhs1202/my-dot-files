" +------------------------------------------------------------------+ "
" | Filepath: ~/my-dot-files/hsyoon.vimrc                            | "
" | Version : 1.1.0                                                    | "
" | Author  : Hoseung Yoon                                           | "
" | Last Rev: 26.04.05                                               | "
" +------------------------------------------------------------------+ "


" ██████╗  █████╗ ███████╗██╗ ██████╗     ██████╗ ██████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
" ██╔══██╗██╔══██╗██╔════╝██║██╔════╝    ██╔═══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
" ██████╔╝███████║███████╗██║██║         ██║   ██║██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║███████╗
" ██╔══██╗██╔══██║╚════██║██║██║         ██║   ██║██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║╚════██║
" ██████╔╝██║  ██║███████║██║╚██████╗    ╚██████╔╝██║        ██║   ██║╚██████╔╝██║ ╚████║███████║
" ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝ ╚═════╝     ╚═════╝ ╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝


" ------ Encodings ----- "
lang mes en_US.UTF-8            " Language and message encoding
set encoding=utf-8              " Encoding of the editor
let mapleader = "<\Space>"      " Set the leader key

" ------ General ------- "
set nocompatible                " Disable Vi compatibility

" ------- Visual ------- "
colorscheme darkblue            " Default Colorscheme
syntax on                       " Enable syntax highlighting
set title                       " Set the window title
set nu                          " Show line numbers
set rnu                         " Show relative line numbers
set cursorline                  " Highlight the current line
set hls                         " Highlight search results
set showmatch                   " Highlight matching parentheses
set visualbell                  " Use visual bell instead of beeping
set nolist                      " Don't show whitespace characters by default
set listchars=tab:>>,trail:=,eol:\$ " Define how to display whitespace characters

" ----- Custom status line ----- "
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ ▶\ '.expand('%:p:h:t')}\ ▶\ %t\ %=[%l/%L\:%v]\ [%P]
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ ❯\ '.expand('%:p:h:t')}\ ❯\ %t\ %=[%l/%L\:%v]\ [%P]
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ »\ '.expand('%:p:h:t')}\ »\ %t\ %=[%l/%L\:%v]\ [%P]
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ ›\ '.expand('%:p:h:t')}\ ›\ %t\ %=[%l/%L\:%v]\ [%P]
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ →\ '.expand('%:p:h:t')}\ →\ %t\ %=[%l/%L\:%v]\ [%P]
set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ 〉'.expand('%:p:h:t')}\ 〉%t\ %=[%l/%L\:%v]\ [%P]
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ 》'.expand('%:p:h:t')}\ 》%t\ %=[%l/%L\:%v]\ [%P]
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ 〉'.expand('%:p:h:t')}\ 〉%t\ %=[%l/%L\:%v]\ [%P]
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ ⟩\ '.expand('%:p:h:t')}\ ⟩\ %t\ %=[%l/%L\:%v]\ [%P]
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ ❭\ '.expand('%:p:h:t')}\ ❭\ %t\ %=[%l/%L\:%v]\ [%P]
" set statusline=\ %m[%n]\ %<%{expand('%:p:h:h:t').'\ ❯\ '.expand('%:p:h:t')}\ ❯\ %t\ %=[%l/%L\:%v]\ [%P]

" ------ Editing ------ "
set ignorecase                  " Ignore case in search patterns
set mouse=a                     " Enable mouse support in all modes
set ve=block                    " Enable virtualedit in block visual mode

" ----- Tabs and indentation ----- "
set smartindent                 " Enable smart indentation
set autoindent                  " Enable automatic indentation
set ts=4                        " Set tab width
set sw=4                        " Set indentation width
set expandtab                   " Use spaces instead of tabs
set smarttab                    " Make tab key smarter
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set incsearch                   " Show search matches as you type
set showcmd                     " Show incomplete commands in the last line of the screen
set showmode                    " Show the current mode in the last line of the screen
set timeoutlen=10               " Time to wait for a mapped sequence to complete (in milliseconds)
set clipboard=unnamed           " Use the system clipboard for all operations
set laststatus=2                " Always show the status line
set wildmenu                    " Enable command-line completion in a menu
set wildmode=longest,full       " Command-line completion mode

" ----- Window Management ----- "
set splitright                  " Open new vertical splits to the right
set splitbelow                  " Open new horizontal splits below

" ------- File Handling ------- "
set autoread                    " Automatically read files when they are changed outside of Vim
set nobackup                    " Don't create backup files
set noswapfile                  " Don't create swap files


" ██╗  ██╗███████╗██╗   ██╗    ███╗   ███╗ █████╗ ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
" ██║ ██╔╝██╔════╝╚██╗ ██╔╝    ████╗ ████║██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
" █████╔╝ █████╗   ╚████╔╝     ██╔████╔██║███████║██████╔╝██████╔╝██║██╔██╗ ██║██║  ███╗███████╗
" ██╔═██╗ ██╔══╝    ╚██╔╝      ██║╚██╔╝██║██╔══██║██╔═══╝ ██╔═══╝ ██║██║╚██╗██║██║   ██║╚════██║
" ██║  ██╗███████╗   ██║       ██║ ╚═╝ ██║██║  ██║██║     ██║     ██║██║ ╚████║╚██████╔╝███████║
" ╚═╝  ╚═╝╚══════╝   ╚═╝       ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝


" ----- Command Abbreviations ----- "
command! Q  q
command! QQ bd
command! W  w!
command! Wq wq
command! WQ wq
command! Qa qa
command! QA qa
command! Vs vs
command! VS vs
command! Sp sp
command! SP sp

" ----- Buffer Management ----- "
" Close all hidden buffers (buffers that are not displayed in any window)
command! BD
      \ for b in getbufinfo({'buflisted':1})
      \ | if empty(b.windows)
      \ |   execute 'bd' b.bufnr
      \ | endif
      \ | endfor

" nnormap <silent> <Esc> :noh<CR><C-l>
nnoremap <silent> <Esc> :<C-u>call MyEsc()<CR>
nnoremap <F2>           :set list!<CR><C-l>
nnoremap <F3>           :set rnu!<CR>
nnoremap <F12>          :lcd %:p:h<CR>:e .<CR>
nnoremap <leader>e      :lcd %:p:h<CR>:e .<CR>
nnoremap <S-F12>        :let @+ = expand('%:p') \| echo @+<CR>
nnoremap <S-F5>         :so ~/.vimrc<CR>
nnoremap <Backspace>    <C-^>

" ----- Center Align ----- "
nnoremap *          *zz
nnoremap #          #zz
nnoremap n          nzz
nnoremap N          Nzz

" ----- Window Navigation ----- "
nnoremap <tab>      <C-w>w
nnoremap <S-tab>    <C-w>W
nnoremap <C-Left>   <C-w>h
nnoremap <C-Down>   <C-w>j
nnoremap <C-Up>     <C-w>k
nnoremap <C-Right>  <C-w>l
nnoremap <C-h>      <C-w>h
nnoremap <C-j>      <C-w>j
nnoremap <C-k>      <C-w>k
nnoremap <C-l>      <C-w>l

" ----- Window Resizing ----- "
nnoremap <S-l>      :vertical resize +20<CR>
nnoremap <S-right>  :vertical resize +20<CR>
nnoremap <S-h>      :vertical resize -20<CR>
nnoremap <S-left>   :vertical resize -20<CR>

" ----- Commenting ----- "
nnoremap <silent> gc :<C-u>call ToggleCommentLine()<CR>
xnoremap <silent> gc :<C-u>call ToggleCommentBlock()<CR>

" ----- Search Highlights ----- "
nnoremap <RightMouse>           <NoP>
nnoremap <2-RightMouse>         <NoP>
nnoremap <3-RightMouse>         <NoP>
nnoremap <S-RightMouse>         <NoP>
nnoremap <S-2-RightMouse>       <NoP>
nnoremap <S-3-RightMouse>       <NoP>
nnoremap <RightRelease>         *
nnoremap <2-RightRelease>       *
nnoremap <3-RightRelease>       *
nnoremap <S-RightRelease>       #
nnoremap <S-2-RightRelease>     #
nnoremap <S-3-RightRelease>     #
nnoremap <S-f>                  :exec '/\v(UVM_ERROR\|UVM_FATAL\|\*E\|\*F)\C'<CR>zz
" nnoremap <LeftRelease>          <CMD>call HighlightCword()<CR>  " VIM 8.1+
nnoremap <silent> <LeftRelease> <LeftRelease>:<C-u> call HighlightCword()<CR>

" ----- buffer navigation ----- "
set timeoutlen=1000             " Time to wait for a mapped sequence to complete (in milliseconds)
nnoremap <silent> [b :bp<CR>    " Go to previous buffer
nnoremap <silent> ]b :bn<CR>    " Go to next buffer


" ██╗  ██╗██╗ ██████╗ ██╗  ██╗██╗     ██╗ ██████╗ ██╗  ██╗████████╗███████╗
" ██║  ██║██║██╔════╝ ██║  ██║██║     ██║██╔════╝ ██║  ██║╚══██╔══╝██╔════╝
" ███████║██║██║  ███╗███████║██║     ██║██║  ███╗███████║   ██║   ███████╗
" ██╔══██║██║██║   ██║██╔══██║██║     ██║██║   ██║██╔══██║   ██║   ╚════██║
" ██║  ██║██║╚██████╔╝██║  ██║███████╗██║╚██████╔╝██║  ██║   ██║   ███████║
" ╚═╝  ╚═╝╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝


highlight MyCwordHL  cterm=bold ctermbg=yellow ctermfg=red    gui=bold guibg=#FFD700 guifg=#000000
highlight Search     cterm=bold ctermbg=yellow ctermfg=red    gui=bold guibg=#FF0000 guifg=#000000
highlight MatchParen cterm=bold ctermbg=red    ctermfg=white  gui=bold guibg=#ff5555 guifg=white


" ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
" ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
" █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
" ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
" ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
" ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝


" Highlight the word under the cursor on left mouse release
function! HighlightCword()
    if exists('w:cword_match_id')
        call matchdelete(w:cword_match_id)
        unlet w:cword_match_id
    endif
    let l:word = expand('<cword>')
    if empty(l:word)
        return
    endif
    let l:pat = '\V\<'.escape(l:word, '\').'\>'
    let w:cword_match_id = matchadd('MyCwordHL', l:pat)
endfunction

" Clear the highlight when the cursor moves
function! ClearCwordHighlight() abort
    if exists('w:cword_match_id')
        call matchdelete(w:cword_match_id)
        unlet w:cword_match_id
    endif
endfunction


" Esc Operation
function! MyEsc() abort
    nohlsearch                  " Clear search highlights
    call ClearCwordHighlight()  " Clear cword highlights
    let @/ = ''                 " Clear the search register
    redraw!                     " Redraw the screen to update highlights
endfunction

" Toggle comment on selected lines
"" 1. Define comment characters
let g:comment_map = {
\ 'c':              '//',
\ 'cpp':            '//',
\ 'systemverilog':  '//',
\ 'verilog':        '//',
\ 'vim':            '"',
\ 'tcl':            '#',
\ 'python':         '#',
\ 'perl':           '#',
\ 'sh':             '#',
\ 'bash':           '#',
\}

"" 2. Get comment prefix based on filetype
function! s:GetCommentPrefix() abort
    let l:ft = &filetype
    if has_key(g:comment_map, l:ft)
        return g:comment_map[l:ft]
    endif
    return ''
endfunction

"" 3. Calculate minimum indentation of non-empty lines in the selection
function! s:MinIndent(lines) abort
    let l:min = -1
    for l:ln in a:lines
        if l:ln =~ '^\s*$'
            continue
        endif
        let l:indent = strlen(matchstr(l:ln, '^\s*'))
        if l:min == -1 || l:indent < l:min
            let l:min = l:indent
        endif
    endfor
    return max([l:min, 0])
endfunction

"" 4. Check if all non-empty lines in the selection are already commented
function! s:IsAllCommented(lines, prefix) abort
    for l:ln in a:lines
        if l:ln =~ '^\s*$'
            continue
        endif
        if l:ln !~ '^\s*' . escape(a:prefix, '/\.*~[]')
            return 0
        endif
    endfor
    return 1
endfunction

"" 5-1. Toggle comment on the current line
function! ToggleCommentLine() abort
    silent! setlocal noreadonly
    let l:prefix = s:GetCommentPrefix()
    if empty(l:prefix)
        return
    endif
    let l:lnum = line('.')
    let l:ln = getline(l:lnum)
    if l:ln =~ '^\s*$'
        return
    endif
    let l:indent = strlen(matchstr(l:ln, '^\s*'))
    if l:ln =~ '^\s*' . escape(l:prefix, '/\.*~[]')
        call setline(l:lnum,
        \ substitute(l:ln,
        \ '^\(\s*\)' . escape(l:prefix, '/\.*~[]') . '\s\?',
        \ '\1', ''))
    else
        call setline(l:lnum,
        \ strpart(l:ln, 0, l:indent)
        \ . l:prefix . ' '
        \ . strpart(l:ln, l:indent))
    endif
endfunction

"" 5-2. Toggle comment on visually selected lines
function! ToggleCommentBlock() abort
    silent! setlocal noreadonly
    let l:prefix = s:GetCommentPrefix()
    if empty(l:prefix)
        return
    endif
    let l:start = line("'<")
    let l:end   = line("'>")
    let l:lines = getline(l:start, l:end)
    let l:minindent = s:MinIndent(l:lines)
    let l:all_commented = s:IsAllCommented(l:lines, l:prefix)
    for i in range(0, len(l:lines)-1)
        let l:ln = l:lines[i]
        if l:ln =~ '^\s*$'
            continue
        endif
        if l:all_commented
            /
            " Remove the comment prefix
            let l:lines[i] = substitute(
            \ l:ln,
            \ '\^\(\s*\)' . escape(l:prefix, '/\.*~[]') . '\s\?',
            \ '\1', '')
        else
            " Preserve the original indentation and add the comment prefix after it
            let l:lines[i] =
            \ strpart(l:ln, 0, l:minindent)
            \ . l:prefix . ' '
            \ . strpart(l:ln, l:minindent)
        endif
    endfor
    call setline(l:start, l:lines)
endfunction


"  █████╗ ██╗   ██╗████████╗ ██████╗  ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ ███████╗
" ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝
" ███████║██║   ██║   ██║   ██║   ██║██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║███████╗
" ██╔══██║██║   ██║   ██║   ██║   ██║██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║╚════██║
" ██║  ██║╚██████╔╝   ██║   ╚██████╔╝╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝███████║
" ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝


" Set formatoptions for all filetypes to avoid auto-commenting on new lines 
au FileType * setlocal formatoptions=ql

" Clear search register when leaving netrw
augroup NetrwClearSearch
  au!
  au BufLeave * if &filetype ==# 'netrw' | let @/ = '' | endif
augroup END


" ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
" ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
" ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
" ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
" ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
" ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝


packadd matchit
