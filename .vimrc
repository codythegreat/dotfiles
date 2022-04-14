syntax on
set nocompatible              " be iMproved, required
filetype off                  " required
" filetype plugin indent on



""""""""" VUNDLE & VUNDLE PLUGINS """"""""" 
" " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


""""""""" PLUGINS START """"""""" 
" navigate via <leader><leader>s{character}
Plugin 'easymotion/vim-easymotion'
" change surrounding characters and tags
Plugin 'tpope/vim-surround'
" comment out stuff
Plugin 'tpope/vim-commentary'
" tpope's DB plugin
Plugin 'tpope/vim-dadbod'
" gruvbox colorscheme
Plugin 'morhetz/gruvbox'
" nerdtree
Plugin 'preservim/nerdtree'
" emmet for html
Plugin 'mattn/emmet-vim'
""""""""" PLUGINS END """"""""" 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set mouse=a                  " allows scrolling and highlighting with mouse
set tabstop=4
set shiftwidth=4
set expandtab                " convert from tab character to spaces
set smartindent              " vim will indent for you
set number relativenumber    " current line # and relative #s
set nowrap                   " disables word wrapping
set smartcase                " case insensitive searching when in lower case
set noswapfile               " vim wont generate swap files
set nobackup                 " vim wont backup
set undodir=~/.vim/undodir   " creates a directory for undo
set undofile                 " creates files for undo
set incsearch                " allows for incremental searching
" set spell                    " enables spell checking
set path+=**                 " for files, search subfolders with tab-completion
set wildmenu                 " show all matching files when tab completing
colorscheme gruvbox
set background=dark
set colorcolumn=80           " adds a colored column at 80th col
highlight ColorColumn ctermbg=0 guibg=lightgrey

""""""""" remaps """"""""" 

" change leader to space
let mapleader =" "

" make capital Y yank to the end of a line, similar to D and C
nnoremap Y y$

" when inserting, any of these characters will trigger a new change
" which will prevent undoing a large section of text
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" moving text 
" visual mode: select and use cap J/K to move lines down/up
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" insert mode: for current line, move down and up with ctrl + j/k
inoremap <C-j> <esc>:m .+1<CR>==i
inoremap <C-k> <esc>:m .-2<CR>==i

" normal mode: space + j/k moves line down/up
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" yanking/putting to/from system registers
vnoremap <leader>y "+y
" if in WSL, use this instead
" vnoremap <leader>y :w !clip.exe<CR><CR>

nnoremap <leader>p "*p

" yank and put current word into search
nnoremap <leader>sw "cyiw/<C-R>c<CR>
 
" yank and put current word into search
nnoremap <leader>sl "cY/<C-R>c<CR>

" open word as file
nnoremap <leader>sfw "cyiw:tabe *<C-R>c
" open line as file
nnoremap <leader>sfl "cyy:tabe <C-R>c<BS><CR>

" quickly open/close nerd tree
nnoremap <leader>n :NERDTreeToggle<CR>

" quickly source vimrc
nnoremap <leader>src :source ~/.vimrc<CR>

""""""""" netrw changes """"""""" 

" hide the banner
let g:netrw_banner=0
let g:netrw_liststyle=3
