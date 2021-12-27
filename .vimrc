call plug#begin('~/.vim/plugged')
   "Gruvbox
   Plug 'morhetz/gruvbox'
   " Nerd Tree
   Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
   " emmet
   Plug 'mattn/emmet-vim'
   " Vim slime
   Plug 'jpalardy/vim-slime'
   " themes
   Plug 'ryanoasis/vim-devicons'
   " surround tags
   Plug 'tpope/vim-surround'
   " python linter
   Plug 'dense-analysis/ale'
   " for cursor styling
   Plug 'wincent/terminus'
   " for python indents
   Plug 'Yggdroot/indentLine'
   " jedi vim
   Plug 'davidhalter/jedi-vim'
   " fuzzy file finder
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
   Plug 'junegunn/fzf.vim'
   " makes the project dir as root
   Plug 'airblade/vim-rooter'

   "airline
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'

   call plug#end()
   " set dark gruvbox theme
   set bg=dark
   colorscheme gruvbox
   inoremap jj <esc>

   set relativenumber
   set number

   let g:slime_target = "tmux"
   let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
   let g:slime_cell_delimiter = "#%%"
   let g:slime_python_ipython = 1
   nnoremap q <C-v>
   nmap <C-t> :NERDTreeToggle<CR>
   set encoding=UTF-8

   let g:jedi#popup_on_dot = 0
   let g:jedi#popup_select_first = 0
   let g:jedi#completions_command = "<C-N>"

   :set backspace=indent,eol,start
   nmap <C-e> <Plug>SlimeSendCell

   nnoremap <C-p> :Files<CR>
   nnoremap <C-g> :GFiles<CR>
   nnoremap <C-o> :Buffers<CR>
   nnoremap <C-f> :Ag!

   "set python linter
   let g:ale_linters = {'python':['pyflakes']} " for this to work install linter package using pip install package name

        " enable tabline
        let g:airline#extensions#tabline#enabled = 1

        " enable powerline fonts
        let g:airline_powerline_fonts = 1
        let g:airline_left_sep = ''
        let g:airline_right_sep = ''

        " Switch to your current theme
        let g:airline_theme = 'onedark'

        " We don't need to see things like -- INSERT -- anymore
        set noshowmode

        let g:webdevicons_enable_airline_tabline = 0
