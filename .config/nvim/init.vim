set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

colorscheme default

call plug#begin('~/.local/share/nvim/plugged')

"Plug 'davidhalter/jedi-vim'"
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
"Plug 'tmhedberg/SimpylFold'
Plug 'preservim/tagbar'
Plug 'artanikin/vim-synthwave84'
Plug 'joshdick/onedark.vim'
"Plug 'gmarik/Vundle.vim'
"Plug 'Valloric/YouCompleteMe'

call plug#end()

nmap <F12> :TagbarToggle<CR>
nmap <TAB> :NERDTreeToggle<CR>
nmap <C-Up> :m -2<CR>
nmap <C-Down> :m +1<CR>
vnoremap <A-c> "*y :let @+=@*<CR>
nmap <A-v> "*P<CR>
colorscheme onedark
