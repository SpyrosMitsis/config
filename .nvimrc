syntax on

set nowrap
set nu
set showmatch           " Show matching brackets.
set smartindent
set smartcase
set confirm 
set visualbell
set undodir=~/.nvim/undodir
set undofile
set pastetoggle=<F11>
set incsearch
set relativenumber


set shiftwidth=4
set softtabstop=4
set expandtab

"Shortcuts LaTex
"-----------------------------------------------------------------------------------------------------

inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
autocmd FileType tex inoremap ;b \textbf{}<Space><++><Esc>F}i
autocmd FileType tex inoremap ;i \textit{}<Space><++><Esc>F}i
autocmd FileType tex inoremap ;m $$<Space><++><Esc>F$i
autocmd FileType tex inoremap ;e \begin{equation}<Enter>{}<Enter>\end{equation}<Enter><++><Esc>kkf}i
"-----------------------------------------------------------------------------------------------------
"Shortcuts java
"-----------------------------------------------------------------------------------------------------
"
autocmd FileType java inoremap ;s System.out.println();<Esc>F(a
"
"-----------------------------------------------------------------------------------------------------
"Plugins vim-plug
"-----------------------------------------------------------------------------------------------------
 call plug#begin('~/.local/share/nvim/plugged')
 
 Plug 'gruvbox-community/gruvbox'
 Plug 'vim-utils/vim-man'
 Plug 'mbbill/undotree'
 Plug 'preservim/nerdtree'
 Plug 'norcalli/nvim-colorizer.lua'
 Plug 'ap/vim-css-color'
 Plug 'bling/vim-airline'
 Plug 'xuhdev/vim-latex-live-preview'


 call plug#end()
"-----------------------------------------------------------------------------------------------------

"Set gruvbox as theme
"-----------------------------------------------------------------------------------------------------
colorscheme gruvbox
"-----------------------------------------------------------------------------------------------------

