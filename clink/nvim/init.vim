set termguicolors

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" Language Plugins
"Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'pearofducks/ansible-vim', { 'for': 'ansible' }
"Plug 'fatih/vim-go', { 'for': 'golang' }
Plug 'python-mode/python-mode', { 'for': 'python' }
"Plug 'tpope/vim-markdown', { 'for': 'markdown' }
"Plug 'ekalinin/Dockerfile.vim'
"Plug 'pallets/jinja', { 'for': 'jinja2' }

" Auto Completion/Snippets
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi', { 'for': 'python' }
"Plug 'heavenshell/vim-pydocstring', { 'for': 'python' }
"Plug 'zchee/deoplete-go', { 'for': 'golang', 'do': 'make' }
"Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

" Build/Lint
"Plug 'neomake/neomake'

" Testing
"Plug 'janko-m/vim-test'

" SCM
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Fuzzy Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Whitespace Management
Plug 'ntpeters/vim-better-whitespace'

" Table Formatting
"Plug 'dhruvasagar/vim-table-mode'

" Status Line
Plug 'vim-airline/vim-airline'

" Comments
"Plug 'scrooloose/nerdcommenter'

" Matching delimiters
Plug 'Raimondi/delimitMate'

" Filesystem
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Other
"Plug 'easymotion/vim-easymotion'

" Color Schemes
"Plug 'flazz/vim-colorschemes'
Plug 'frankier/neovim-colors-solarized-truecolor-only'

call plug#end()

" Set color scheme
silent! colorscheme solarized
set background=dark

" Enable autocompletion
let g:deoplete#enable_at_startup = 1
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" After a buffer's been saved or read, run :Neomake.
"au BufReadPost,BufWritePost * Neomake
"let g:neomake_open_list = 2

" Comment configs
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
