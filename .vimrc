set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" Comment lines with gc and gcc
Plugin 'tomtom/tcomment_vim'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'kannokanno/previm'

Plugin 'tyru/open-browser.vim'

Plugin 'Yggdroot/indentLine'

Plugin 'vim-scripts/a.vim'

Plugin 'tpope/vim-repeat'

Plugin 'elzr/vim-json'

" Plugin 'Vimjas/vim-plugin-pep8-indent'

Plugin 'severin-lemaignan/vim-minimap'

" Maximizer; press <F3> to maximize vim window
Plugin 'szw/vim-maximizer'

" Nice colorscheme library
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the followingo line

call vundle#end()            " required

filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"================================================================================
" Previm settings
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mark*} set filetype=markdown
augroup END

" YCM settings
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:previm_enable_realtime = 1
let g:indentLine_color_term = 50

let g:vim_json_syntax_conceal = 0
let g:indentLine_concealcursor=""

let g:pyindent_continue = 'shiftwidth()'
"================================================================================
set number
" size of a hard tabstop
set tabstop=4
filetype indent on
colorscheme badwolf
" colorscheme industry
" expandtab - spaces instead of tab characters
"shiftwidth - size of an indent
set softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
" set syntax on
syntax on

" pressing SHIFT+TAB inserts ahard tab
inoremap <S-Tab> <C-V><Tab>
set autochdir

set formatoptions+=cro

set hlsearch
set colorcolumn=80
set conceallevel=0

set cursorline

autocmd FileType python setlocal ts=8 sw=4 sts=4 et
"================================================================================
nnoremap <S-F11> <ESC>:set hls! hls?<cr>
inoremap <S-F11> <C-o>:set hls! hls?<cr>
vnoremap <S-F11> <ESC>:set hls! hls?<cr>

nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>

"================================================================================

set printoptions=header:0,number:y
