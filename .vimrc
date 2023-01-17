set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set shiftwidth=2 tabstop=2 expandtab softtabstop=2
set nobackup
set scrolloff=10
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set laststatus=2
set autoindent
set nohlsearch
set list
set lcs+=space:·

if has('nvim')
  call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'morhetz/gruvbox'
  Plug 'mfukar/robotframework-vim'
  Plug 'rhysd/git-messenger.vim'
  Plug 'preservim/nerdtree'
  call plug#end()
  let g:gruvbox_contrast_dark = 'hard'
  let NERDTreeShowHidden=1
  autocmd vimenter * ++nested colorscheme gruvbox

  nnoremap <silent> <C-p> :Files<CR>
  nnoremap <silent> <C-f> :Ag<CR>
  nnoremap <leader>n :NERDTreeFocus<CR>
  "autocmd vimenter * NERDTree | wincmd p
  autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
  nmap <C-n> :NERDTreeToggle<CR>
endif

