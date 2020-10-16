call plug#begin()
Plug 'kien/rainbow_parentheses.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'chrisbra/NrrwRgn'
Plug 'sbdchd/neoformat'
Plug 'fszymanski/fzf-gitignore'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary' 
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
" Terraform
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
" /t>
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'php'] }
call plug#end()

" Leader binds
let mapleader="\<SPACE>"

map <leader>W :wq!<cr>
map <leader>w :w!<cr>
map <leader>q :q!<cr>
map <C-o> :NERDTreeToggle<cr>
nmap <leader>o :NERDTreeFind<CR>
" /l>

" Terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1
" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:deoplete#omni_patterns = {}
" /t>

" Theme
let g:airline_theme='dracula'
" /t>

let g:python_host_prog = '/bin/python2'
let g:python3_host_prog = '/bin/python3'

set termguicolors
set background=dark
syntax on
colorscheme dracula

map <esc> :noh<cr>

set ignorecase
set smartcase

set breakindent
set formatoptions=l
set lbr

set number relativenumber

set clipboard=unnamedplus

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set tabstop=2
set softtabstop=2

set expandtab

set shiftwidth=2
set encoding=utf-8
set cursorline
set title

set noshowmode
set tags+=$HOME/.config/nvim
