set nocompatible              " don't try to be vi compatible
filetype off                  " force plugins to load proper after its turned back on
execute pathogen#infect()
syntax on                     " syntax highlighting
filetype plugin indent on     " force plugins to load correctly
set number                    " Show line numbers
set ruler                     " Show file stats
set modelines=0
set visualbell                " Blink cursor on error instead of beeping (grr)
set encoding=utf-8            " Encoding
set wrap                      " Whitespace
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Spacebar is leader
nnoremap <SPACE> <Nop>
let mapleader=" "

set scrolloff=3                 " Cursor motion
set backspace=indent,eol,start

set hidden " Allow hidden buffers
set ttyfast " Rendering
set laststatus=2 " Status bar
set showmode " Last line
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
colorscheme stereokai
set background=dark

let user=system("printf $USER")
set statusline=
set statusline+=Editing\ 
set statusline+=%F\ as
set statusline+=\ \%{user}\@%{hostname()}
set statusline+=%=                                           " Switch to the right side
set statusline+=[%1*%M%*%n%R%W\,%{strlen(&ft)?&ft:'none'}]\  " flags /filetype
set statusline+=%(%3l,%02c%03V%)\                            " row,column,virtual-column
set statusline+=%P                                           " percentage of the file


" space + n to open nerdtree
map <Leader>n :NERDTreeToggle<CR>

" close vim if nerdtree is only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

