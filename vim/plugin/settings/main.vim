set autoindent
set autoread
set expandtab
set history=500
set magic
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4
set tw=0
set formatoptions=l
set lbr
set mouse=a
set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set bs=2
set noswapfile
set hlsearch
set incsearch
set visualbell t_vb=
set showmode
set pastetoggle=<F3> " Toggle paste on F3
set relativenumber
set number
set colorcolumn=80

nnoremap NT :tabe <cr>
nnoremap ZW :w <cr>
nnoremap H :tabp <cr>
nnoremap L :tabn <cr>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
map <leader>y "+yy<cr>
map <leader>p "+p
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <F3> :set invpaste paste?<cr>
nnoremap <leader>n :set relativenumber!<cr>
vnoremap <leader>n :set relativenumber!<cr>
nnoremap gp `[v`]
nnoremap <leader>s :setlocal spell spelllang=en_us<cr>

syntax on

colorscheme bubblegum

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" automatically strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="
