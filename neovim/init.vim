set nocompatible
filetype plugin indent on
syntax on
set number
set autoindent
set smartindent
set hidden

" Variables
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:netrw_banner = 0
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.pug

" Rebinds
nmap <silent> <F8> :BufExplorer<CR>
nmap <silent> <F9> :Explore<CR>
nmap <silent> <A-n> :sp<CR>
nmap <silent> <A-p> :vsp<CR>
nmap <silent> <A-x> <C-W>q<CR>
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>
nmap <silent> <A-Up> :res -3<CR> 
nmap <silent> <A-Down> :res +3<CR>
nmap <silent> <A-Left> :vertical res -3<CR>
nmap <silent> <A-Right> :vertical res +3<CR>

" NeoBundle Scripts-----------------------------
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)  
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))  
NeoBundleFetch 'Shougo/neobundle.vim'

" ------------------------------------
" PLUGINS HERE
" ------------------------------------
NeoBundle 'vimwiki/vimwiki'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'digitaltoad/vim-pug'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'posva/vim-vue'

call neobundle#end()  
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck  
"End NeoBundle Scripts-------------------------
