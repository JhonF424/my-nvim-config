call plug#begin('~/.vim/plugged')

"Visual Plugins
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"File explorer
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

"Code completarion
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'sbdchd/neoformat'

"plugins para javascript
Plug 'pangloss/vim-javascript'
Plug 'honza/vim-snippets'
"snippets para javascript
Plug 'SirVer/ultisnips'

"Emmet 
Plug 'mattn/emmet-vim'
call plug#end()

"Native configs
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
set tabstop=4
set shiftwidth=4
set expandtab

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
nnoremap <F3> :NERDTreeToggle<CR>

"Buffer commands
nnoremap <C-p> :bprev!<CR>
nnoremap <C-n> :bnext!<CR>

"Prettier config
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <C-D> :Prettier<CR>
"

" EMMET configuracion
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
let g:user_emmet_settings={
\ 'javascript':{
\ 'extends':'jsx'
\ }
\ }

" snippets configuracion
let g:UtilSnipsExpandTrigger="<tab>"
" CoC config 
"---------------------------------------------------------------------
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <C-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
