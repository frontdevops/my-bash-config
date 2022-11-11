let $VIMHOME = $HOME."/.vim/"

set t_Co=256
syntax on
set nocompatible
filetype off
set encoding=UTF-8
set termencoding=UTF-8
set fileencodings=utf8,cp1251
scriptencoding utf-8


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'git://git.wincent.com/command-t.git'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'flazz/vim-colorschemes'
    Plugin 'tpope/vim-surround'
    Plugin 'preservim/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'preservim/tagbar.git'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'xolox/vim-misc'
    Plugin 'xolox/vim-easytags'					" Update ctags on the fly
    Plugin 'ctrlpvim/ctrlp.vim'					" Find file in project
    Plugin 'airblade/vim-gitgutter'				" Show changed lines
call vundle#end()
filetype plugin indent on

set guifont=Monaco:h12
set background=dark
colorscheme OceanicNext

set nu
set mouse=a
set mousehide
set novisualbell
set visualbell t_vb=
set t_vb=
set backspace=indent,eol,start whichwrap+=<,>,[,]
set showtabline=1
set clipboard=unnamed
set ruler
set hidden
set splitbelow
set incsearch
set ignorecase
set hlsearch


set laststatus=2
set cursorline
set number
function! ResetCursorPosition()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunc
augroup resetCursor
    autocmd! BufWinEnter * call ResetCursorPosition()
augroup END

set list
set listchars=tab:⤚—,trail:·,extends:⇥,precedes:⇤
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set wrap
set linebreak

set wildmenu
set wildignore=*.map,*.swp

let python_highlight_all = 1
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

map <silent> <F6> :NERDTreeToggle<CR>
map <silent> <F7> :NERDTreeFind<CR>
map <silent> <F8> :TagbarToggle<CR>

" @todo: 
" map <silent> <F1> <Esc>gT<CR>
" map <silent> <F2> <Esc>gt<CR>
" map <silent> <F3> <Esc>:tabnew<CR>



if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif




if filereadable($PWD."/.vi")
    source $PWD/.vi
endif

" EOF "
