set nocompatible
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch

set ignorecase
set smartcase

set backspace=indent,eol,start

set autoindent
set nostartofline
set ruler
set confirm

set laststatus=2

set cmdheight=2

set number

set notimeout ttimeout ttimeoutlen=200

set pastetoggle=<F11>

set shiftwidth=4
set softtabstop=4
set expandtab

set autochdir

map Y y$

nnoremap<C-L> :nohl<CR><C-L>

set scrolloff=6

" auto make install suckless
autocmd BufWritePost config.h,config.def.h call Succ()
function Succ()
    ! make
    ! sudo make install
endfunction
