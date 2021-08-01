call plug#begin()
Plug 'christoomey/vim-tmux-navigator' " Vim tmux
Plug 'pearofducks/ansible-vim' " Ansible
Plug 'ryanoasis/vim-devicons' " Nerd tree icon
" Terraform
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
" /t>
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-syntastic/syntastic'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'fszymanski/fzf-gitignore'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'php'] }
call plug#end()

"Global
set modifiable
set encoding=UTF-8
autocmd BufWritePre * :%s/\s\+$//e
" /g>

" Leader and binds
let mapleader="\<SPACE>"

map <leader>W :wq!<cr>
map <leader>w :w!<cr>
map <leader>q :q!<cr>
map <C-o> :NERDTreeToggle<cr>
map <esc> :noh<cr>
" /l>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1
let g:deoplete#omni_patterns = {}
" /t>
" /s>

" airline dracula suport
let g:airline_theme='dracula'
" /t>

" numbertoggle
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd FileType nerdtree set norelativenumber
augroup END
" /n>

" devicons
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
" /d>

let g:python3_host_prog = '/bin/python3'

"set termguicolors
set background=dark
syntax enable
colorscheme dracula

set ignorecase
set smartcase

set breakindent
set formatoptions=l
set lbr

set tabstop=2
set softtabstop=2

set clipboard=unnamedplus
set expandtab

set shiftwidth=2
set cursorline
set title

set noshowmode
set tags+=$HOME/.config/nvim
