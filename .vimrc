   call plug#begin('~/.vim/plugged')
   "Gruvbox
   Plug 'morhetz/gruvbox' 
   " Nerd Tree
   Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
   " Jedi-Vim
   Plug 'davidhalter/jedi-vim'
   " Vim slime
   Plug 'jpalardy/vim-slime'
   " airline
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'
   " nerdtree icons
   Plug 'ryanoasis/vim-devicons'
   " python linter
   Plug 'dense-analysis/ale'
   " for cursor styling
   Plug 'wincent/terminus'
   " for python indents
   Plug 'Yggdroot/indentLine'
   call plug#end()
   " set dark gruvbox theme
   set bg=dark
   colorscheme gruvbox 
   inoremap jj <esc>
   let g:jedi#popup_on_dot = 0 
   let g:jedi#completions_command = "<C-Space>"

   set relativenumber
   set number

   execute pathogen#infect()
   let g:jedi#completions_command = "<C-N>"
   let g:slime_target = "tmux"
   let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
   let g:airline_theme='powerlineish'
   let g:slime_cell_delimiter = "#%%"
   let g:slime_python_ipython = 1
   nnoremap q <C-v>
   nmap <C-t> :NERDTreeToggle<CR>
   set encoding=UTF-8

   :set backspace=indent,eol,start
   nmap <C-e> <Plug>SlimeSendCell

   "set python linter
   let g:ale_linters = {'python':['pyflakes']} " for this to work install linter package using pip install package name
