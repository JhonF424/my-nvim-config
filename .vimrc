"Vim Plug
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
call plug#end()
"Vim native settings
set number
set rnu
set cursorline
set mouse=a
set clipboard=unnamed
set laststatus=2
set showcmd
set noshowmode
set showmatch
set encoding=utf-8
syntax enable
"Theme config
colorscheme onedark
if (empty($TMUX))
	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif

	if (has("termguicolors"))
		set termguicolors
	endif
endif

"Airline themes config
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'
"NERDTree config
nnoremap <C-n> :NERDTreeToggle<CR>
