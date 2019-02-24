set number  "Numbering lines
set hlsearch "Highlight Searching
set incsearch "Incremental searching
syntax on 
filetype plugin indent on "eneble file type detection
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set laststatus=2 
set statusline=%f\ -\ FileType:\ %y "give filename and filetype 
set statusline+=%l/%L  "gives current line number and total number of lines
set foldmethod=indent " folding
set foldnestmax=10   " fold anything with a max nest level of 10
set nofoldenable     " Don't fold by default when opening a file
set foldlevel=2      " Set at least 2 levels of fold open
map <C-y> "*y"       "copy text on clipboard
set backspace=indent,eol,start

let mapleader="-"

nnoremap <leader>ev :split <cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader><space> :set relativenumber!<cr> "mapping to toggle relative numbers
set updatetime=200

