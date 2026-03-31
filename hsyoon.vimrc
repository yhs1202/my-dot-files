" +------------------------------------------------------------------+ "
" | Filepath: ~/my-dot-files/hsyoon.vimrc                            | "
" | Version : 1.0.1                                                    | "
" | Author  : Hoseung Yoon                                           | "
" | Last Rev: 26.03.31                                               | "
" +------------------------------------------------------------------+ "

" ==================================================================== "
" ========================== BASIC OPTIONS =========================== "
" ==================================================================== "

" ------ Encodings ----- "
lang mes en_US.UTF-8        " Language and message encoding
set encoding=utf-8          " Encoding of the editor
let mapleader = "<\Space>"  " Set the leader key

" ------ General ------- "
set nocompatible            " Disable Vi compatibility

" ------- Visual ------- "
colorscheme darkblue        " Default Colorscheme
syntax on                   " Enable syntax highlighting
set title                   " Set the window title
set nu                      " Show line numbers
set rnu                     " Show relative line numbers
set cursorline              " Highlight the current line
set hls                     " Highlight search results
set showmatch               " Highlight matching parentheses
set visualbell              " Use visual bell instead of beeping
set nolist                  " Don't show whitespace characters by default
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
set ignorecase              " Ignore case in search patterns
set mouse=a                 " Enable mouse support in all modes

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


" ==================================================================== "
" =========================== KEY MAPPINGS =========================== "
" ==================================================================== "

" ----- Command Abbreviations ----- "
command! Q  q
command! QQ bd
command! W  w!
command! WQ wq
command! Wq wq
command! Qa qa
command! VS vs
command! Vs vs
command! Sp sp
command! SP sp

" nnormap <silent> <Esc> :noh<CR><C-l>
nnoremap <silent> <Esc> :<C-u>noh<Bar>call ClearCwordHighlight()<CR><C-l>
nnoremap <F2>           :set list!<CR><C-l>
nnoremap <F3>           :set rnu!<CR>
nnoremap <F12>          :lcd %:p:h<CR>:e .<CR>
nnoremap <S-F12>        :let @+ = expand('%:p') \| echo @+<CR>
nnoremap <leader>e      :lcd %:p:h<CR>:e .<CR>
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

" ----- Commenting ----- "  // TODO: FILE Type
nnoremap <S-c>      :call CmtOn()<CR>
vnoremap <S-c>      :call CmtOn()<CR>
nnoremap <C-S-c>    :call CmtOff()<CR>
vnoremap <C-S-c>    :call CmtOff()<CR>

" ----- Search Highlights ----- "
nmap <RightMouse>           <NoP>
nmap <2-RightMouse>         <NoP>
nmap <3-RightMouse>         <NoP>
nmap <S-RightMouse>         <NoP>
nmap <S-2-RightMouse>       <NoP>
nmap <S-3-RightMouse>       <NoP>
nmap <RightRelease>         *
nmap <2-RightRelease>       *
nmap <3-RightRelease>       *
nmap <S-RightRelease>       #
nmap <S-2-RightRelease>     #
nmap <S-3-RightRelease>     #
nnoremap <S-f>                  :exec '/\v(UVM_ERROR\|UVM_FATAL\|\*E\|\*F)\C'<CR>zz
" nnoremap <LeftRelease>          <CMD>call HighlightCword()<CR>  " VIM 8.1+
nnoremap <silent> <LeftRelease> <LeftRelease>:<C-u> call HighlightCword()<CR>


" ==================================================================== "
" ============================= HIGHLIGHTS =========================== "
" ==================================================================== "

highlight MyCwordHL cterm=bold ctermbg=yellow ctermfg=red gui=bold guibg=#FFD700 guifg=#000000
highlight Search    cterm=bold ctermbg=yellow ctermfg=red gui=bold guibg=#FF0000 guifg=#000000


" ==================================================================== "
" ============================= FUNCTIONS ============================ "
" ==================================================================== "

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

" Toggle comment on selected lines
function! CmtOn()
    exe "'<,'>norm i// "
endfunction
function! CmtOff()
    exe "'<,'>norm 2x"
endfunction

" ==================================================================== "
" =========================== AUTOCOMMANDS =========================== "
" ==================================================================== "
au FileType * setlocal formatoptions=ql       " Disable cro "

" ==================================================================== "
" ============================= PLUGINS ============================== "
" ==================================================================== "
packadd matchit
highlight MatchParen cterm=bold ctermbg=red ctermfg=white gui=bold guibg=#ff5555 guifg=white
