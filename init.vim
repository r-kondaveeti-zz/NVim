" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'OmniSharp/omnisharp-vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()
set number
colorscheme gruvbox

" let g:ale_linters = {
" \ 'cs': ['OmniSharp']
" \}

inoremap jk <ESC>

nmap ttt :NERDTreeToggle<CR>

function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction

nmap <Leader>j :call GotoJump()<CR>
" let NERDTreeMapOpenInTab='<ENTER>'
