if has('nvim') && isdirectory(expand('~/.anyenv/envs/pyenv/versions/nvim'))
  let g:python3_host_prog = expand('~/.anyenv/envs/pyenv/versions/nvim/bin/python')
endif

source ~/.config/nvim/lib.vim
source ~/.config/nvim/general.vim

call plug#begin('~/.local/share/nvim/site/autoload/')
" syntax highlight
Plug 'sheerun/vim-polyglot'
Plug 'tomlion/vim-solidity'

" git
Plug 'airblade/vim-gitgutter'

" comment out
Plug 'tyru/caw.vim'

" nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'

" colorscheme
Plug 'jonathanfilip/vim-lucius'

" editorconfig
Plug 'editorconfig/editorconfig-vim'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" set colorschema
colorscheme lucius
LuciusDarkLowContrast

" background opacity setting
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

for f in split(glob('~/.config/nvim/*.vim'), '\n')
  if match(fnameescape(f), 'init.vim') == -1 && match(fnameescape(f), 'general.vim') == -1
    execute 'source' f
  endif
endfor
