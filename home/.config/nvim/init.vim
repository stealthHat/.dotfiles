call plug#begin()
" General
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" File tree
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']} | Plug 'tiagofumo/vim-nerdtree-syntax-highlight' | Plug 'ryanoasis/vim-devicons'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godoctor/godoctor.vim', {'for': 'go'}
Plug 'sebdah/vim-delve', {'for': 'go'}

" Terraform
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'pearofducks/ansible-vim' " Ansible

" fzf
Plug 'junegunn/fzf.vim'
Plug 'fszymanski/fzf-gitignore'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-syntastic/syntastic'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'php'] }
call plug#end()

"Global
syntax on
syntax enable
set hidden
set modifiable
set encoding=UTF-8
autocmd BufWritePre * :%s/\s\+$//e
" /g>

" Leader and binds
let mapleader="\<SPACE>"
map <leader>W :wq!<cr>
map <leader>w :w!<cr>
map <leader>q :q!<cr>
map <leader>o :NERDTreeToggle<cr>
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

" Go
"let g:go_fmt_autosave = 0
let g:go_doc_popup_window = 1
" /go>

" airline dracula suport
let g:airline_theme='dracula'
" /t>

" nerdtree
let g:NERDTreeWinPos = "right"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree()) | q | endif
" /n>

" numbertoggle
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd FileType nerdtree set norelativenumber
augroup END
" /n>

let g:python3_host_prog = '/bin/python3'

"set termguicolors
set background=dark
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
set tags=./$HOME/.config/nvim/tags;
