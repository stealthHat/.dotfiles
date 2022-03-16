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

" AutoComplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-syntastic/syntastic'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'pearofducks/ansible-vim' " Ansible

" fzf
Plug 'junegunn/fzf.vim'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Deoplete

Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
call plug#end()

" Global
syntax on
"set hidden
"set nocomeatible
set title
set modifiable
set smartcase
set smartindent
set expandtab
set noshowmode
set cursorline
set shiftwidth=2
set tabstop=2 softtabstop=2
set encoding=UTF-8
set clipboard=unnamedplus
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

" Deoplete
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" /d>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Terraform
let g:deoplete#omni_patterns = {}
call deoplete#custom#option('omni_patterns', {
\ 'complete_method': 'omnifunc',
\ 'terraform': '[^ *\t"{=$]\w*',
\})
call deoplete#initialize()
" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1
" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0
let g:terraform_align=1
let g:terraform_fmt_on_save=1
" /t>
" /s>

" Go
"let g:go_fmt_autosave = 0
let g:go_doc_popup_window = 1
set background=dark
colorscheme dracula
" /go>

" Theme
let g:airline_theme='dracula'
" /t>

" File tree
let g:NERDTreeWinPos = "right"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree()) | q | endif
" /f>

" numbertoggle
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd FileType nerdtree set norelativenumber
augroup END
" /n>

set tags=tags;
