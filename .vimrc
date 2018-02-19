" .vimrc
" autor: Thiago Dong Chen

" -------------- General Settings -------------- 
set cursorline
set mouse=a
set number
set showcmd
set hlsearch
set ignorecase
syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
:hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
set clipboard=unnamedplus

" status line
set laststatus=2
set statusline=
set statusline+=\ %F						" Path to the file
set statusline+=%m							" [+] modifier
set statusline+=%#CursorColumn#
set statusline+=%=
set statusline+=\ %l:%c
set statusline+= 
filetype plugin indent on

" -------------- Mappings -------------- 
"Tab switch
nmap <C-Tab> :tabnext<CR>
imap <C-Tab> <ESC>:tabnext<CR>
" Complete '' "" <> () {} []
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>< <><ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {<CR>}<ESC>O

" -------------- Abreviation -------------- 
ab pt printf("****************\n");

" -------------- Plugins -------------- 
execute pathogen#infect()

" colorschemes
set t_Co=256
syntax enable
set background=dark

" Colorscheme Solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=0
colorscheme solarized

" Colorscheme base16
"let base16colorspace=256
"syntax enable

" Colorscheme Tomorrow
"colorscheme Tomorrow-Night
":hi SpellBad term=undercurl cterm=undercurl ctermbg=none gui=undercurl guisp=Red

" Sintastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" NERDtree
map <F2> :NERDTreeToggle<CR>
"Arm Syntax: .s armv6
au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/dong/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_warning_symbol = '>'
let g:ycm_error_symbol = '>>'
