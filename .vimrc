" Begin .vimrc


"""""""""""""""""""""VUNDLE INSTALLATION""""""""""""""""""""""""""
set backspace=2
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
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


""""""""""""""""""""""""SnipMate Dependencies"""""""""""""""""""""
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"""""""""""""""""""""""""Actual Vim Config""""""""""""""""""""""""""
set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set tabstop=4
set smartindent
set nocompatible      " Disables troublesome VI compatibilty
set title             " Sets the title bar to give the filename and path
set ruler             " Enables the location information in bottom right corner
set nowrap            " Disables text wrapping
set ignorecase        " Searches ignore case
set wildmenu          " Menu for autocomplete of filenames
set number            " Prints line numbers on left of screen

au BufNewFile,BufRead *.cu set ft=cu
au BufNewFile,BufRead *.cuh set ft=cu

filetype plugin indent on
syntax on

"""""""""""""""""""""""""""Pathogen"""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""More Plugins""""""""""""""""""""""""""""""
" solarized scheme NOTE: doesn't work well with powerline
"syntax enable
"set background=dark
"colorscheme solarized

" pydiction 
filetype plugin on
let g:pydiction_location = '/Users/hhsue/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 8

" NERDTree
" autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror


" More powerline stuff
set laststatus=2
set encoding=utf-8 " Necessary to show Unicode glyphs
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Powerline stuff for MacVim
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif

" Change Snipmate mapping to control-o
imap <c-o> <Plug>snipMateNextOrTrigger
smap <c-o> <Plug>snipMateNextOrTrigger

" End .vimrc

