" Plugins
" -----------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')

" Color scheme
Plug 'ayu-theme/ayu-vim'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

" Multiple programming languages support
Plug 'sheerun/vim-polyglot'

" Tracking git changes
Plug 'airblade/vim-gitgutter'

" Code suggestions
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets 
Plug 'SirVer/ultisnips'

call plug#end()


" Aesthetics
" -----------------------------------------------------

" Enable true colors support
set termguicolors

" Settings dark mode
set background=dark

" Color scheme
let ayucolor="dark"
colorscheme ayu

" Numbers at the left side
set number

" Enable syntax highlighting
syntax on


" Avoid populating the repositories with garbage
" -----------------------------------------------------

" Enable swap files
set swapfile
" Swap directory
set dir=/home/fcanela/.hidden/neovim/swap//

" Enable backup files
set backup
" Swap directory
set backupdir=/home/fcanela/.hidden/neovim/backup//


" Editing
" -----------------------------------------------------

" Use spaces for tabs
set expandtab

" Always use 2 spaces for tab/indent
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Hid unused buffers instead of closing
" This is also a requirement for coc.nvim
set hidden


" coc.nvim
" -----------------------------------------------------

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Snippets
" -----------------------------------------------------

" Trigger autocomplete by using tab
let g:UltiSnipsExpandTrigger="<tab>"

" Move around the snippet
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Use the repo snippets
let g:UltiSnipsSnippetsDir = "~/.dotfiles/nvim/snippets"
