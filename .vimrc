call plug#begin()
  Plug 'LunarWatcher/auto-pairs'
  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/vim-github-dashboard'
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
  Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle'  }
  Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }
  Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'  }
  Plug 'fatih/vim-go', { 'tag': '*'  }
  Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'morhetz/gruvbox'
  Plug 'cormacrelf/vim-colors-github'
  Plug 'chriskempson/base16-vim'
  Plug 'kien/ctrlp.vim'
  Plug 'Heliferepo/VimTek'
  Plug 'HelifeWasTaken/VimUtils'
  Plug 'tpope/vim-fugitive'
  " Plug 'vim-ctrlspace/vim-ctrlspace'
  Plug 'sheerun/vim-polyglot'
  Plug 'itchyny/lightline.vim'
  Plug 'catppuccin/vim', { 'as': 'catppuccin' }
  Plug 'ghifarit53/tokyonight-vim'
call plug#end()

set number
set relativenumber
set background=dark
set scrolloff=10
set nowrap
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set cursorline
set signcolumn=no

set termguicolors

let g:tokyonight_style = "night" " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme gruvbox

let g:gruvbox_contrast_dark='soft'
let &t_SI = "\e[4 q"
let &t_EI = "\e[2 q"

let g:airline_powerline_fonts = 1

let mapleader=' '
nnoremap <leader>pv <cmd>Ex<cr>
nnoremap <leader>ff <cmd>FZF<cr>
nnoremap <leader>bb <cmd>buffers<cr>
nnoremap <leader>bn <cmd>bnext<cr>
nnoremap <leader>bp <cmd>bprevious<cr>
nnoremap <leader>bd <cmd>bdelete<cr>

hi! Normal ctermbg=NONE guibg=NONE

set laststatus=2
let g:lightline = {'colorscheme': 'gruvbox'}
