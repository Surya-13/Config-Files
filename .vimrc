" hi NonText      guifg=darkgray      guibg=darkgrey         gui=none
" hi NonText      ctermfg=darkgray    ctermbg=darkgrey       cterm=none
if &term =~ '256color'
        set t_ut=
    endif
set shiftwidth=4
set clipboard=unnamed
set go+=a
" Copy to clipboard. Doesnt seem to work.    
" nnoremap <silent> <leader>y :call system('/mnt/c/Windows/System32/clip.exe', @")<CR>
" nnoremap <silent> <leader>y :call system('/mnt/c/Windows/System32/clip.exe', @")<CR>
set nocompatible
set cursorline
set autoindent
set smartindent
set smarttab
set hlsearch
set linebreak
set visualbell
set mouse=a
set pastetoggle=<F3>
" filetype indent on
" set filetype=html
" set spell
set backspace=indent,eol,start
set matchpairs+=<:>
set virtualedit=onemore
syntax enable
filetype plugin on
set number
set relativenumber
set noswapfile
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>
set showcmd
filetype indent on
set wildmenu
set lazyredraw
set showmatch
execute pathogen#infect()
nnoremap j gj
nnoremap k gk

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" let g:ycm_semantic_completion_toggle = '<F4>'
" highlight Normal guifg=#e0e0e0 guibg=#232323 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
" highlight NonText guifg=#99968b guibg=#232323 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
" highlight Normal ctermbg=darkgrey
highlight Pmenu ctermfg=black ctermbg=white
highlight PmenuSel ctermfg=white ctermbg=black

" Auto set filename for each window.
autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")
autocmd BufEnter * let &titlestring = ' ' .expand("%t")                                                         
set title

" COPY TO CLIPBOARD
" funtion! Osc52Yank()
"     let buffer=system('base64 -w0', @0) " -w0 to disable 76 char line wrapping
"     let buffer='\ePtmux;\e\e]52;c;'.buffer.'\x07\e\\'
"     silent exe "!echo -ne ".shellescape(buffer)." > ".shellescape(g:tty)
"     endfunction

" nnoremap <Up>y :call Osc52Yank()<CR>

" Syntastic custom settings ---------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" -----------------------------------------------------------------------------


" ####
" Set custom shortcuts for exit,save and exit,Esc mode in EDIT mode
" ####
inoremap jk <Esc>
inoremap jw <Esc>:w<Enter>i
inoremap jq <Esc>:wq<Enter>
inoremap :q <Esc>:q!<Enter>
inoremap :wq <Esc>:wq<Enter>
inoremap M-j C-n
inoremap M-k C-p
" ###################################################################
" C++ custom keybindings
" ###################################################################

" For ( ---> ()
" autocmd FileType cpp inoremap ( ()<Esc>T(i

"For { ---> {
"		#
"	    }
autocmd FileType cpp inoremap {<CR>	{<CR>}<Esc>O

" basic in command mode inserts my usual template.
autocmd FileType cpp nnoremap basic i#include<bits/stdc++.h><Enter>#define<Space>ll<Space>long<Space>long<Space>int<Enter>using<Space>namespace<Space>std;<Enter><Enter>int<Space>main(){<Enter><Enter><Enter>return<Space>0;<Enter>}<Enter><Esc>kkkki<Tab>

" For loop shortcut
autocmd FileType cpp inoremap for for(int i=0;i<n;i++){<Enter>qqq<Enter>}<Esc>k?qqq<Enter>xxxi

" While loop shortcut
autocmd FileType cpp inoremap while while(n){<Enter>n--;<Enter>qqq<Enter>}<Esc>k?qqq<Enter>xxxi

" cin>>`; ---/
autocmd FileType cpp inoremap cin cin>>qqq;<Esc>?qqq<Enter>xxxi

" cout<<`<<endl; ---/
autocmd FileType cpp inoremap cout cout<<qqq<<endl;<Esc>?qqq<Enter>xxxi

" ####################################################################
" Python custom keybinds
" ####################################################################

" For loop shortcut
autocmd FileType python inoremap for for i in range(n):<Enter>
autocmd FileType python nnoremap basic i<Enter>t=int(input())<Enter>while<space>t:<Enter>t-=1<Enter>n=int(input())<Enter>n,k=map(int,input().split())<Enter>l=list(map(int,input(),split()))<Esc>^k


" Nerd Tree toggle shortcut -- F5.
map <F5> :NERDTreeToggle<CR>
map <F2> :SyntasticToggleMode<CR>:w<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Custom binds for navigating while using tabs.
nnoremap tn :tabnew<Space>
nnoremap tf :tabf<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap th :tabfirst<CR>
