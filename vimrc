set showmatch
set hlsearch
set incsearch
set number
set tabstop=4
set softtabstop=4
set autoindent
set shiftwidth=4
set expandtab
set smartindent
set wildmode=longest,list
set cc=80
set ttyfast
set nospell
set clipboard=unnamedplus

filetype plugin indent on
syntax on

augroup markdown
  autocmd!
  autocmd FileType markdown setlocal wrap linebreak breakindent
  autocmd FileType markdown setlocal cc=
  autocmd FileType markdown nnoremap <buffer> j gj
  autocmd FileType markdown nnoremap <buffer> k gk
augroup END
