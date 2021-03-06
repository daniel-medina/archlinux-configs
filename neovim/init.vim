filetype plugin indent on
set nocompatible
set number
set autoindent
set smartindent
set hidden
set expandtab
set shiftwidth=2
set tabstop=2
set foldmethod=marker
highlight Folded ctermbg=black
set relativenumber
syntax on
let base16colorspace=256

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#guess = 0
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'ts',
                \ 'tsx',
                \ 'vue',
                \ '...'
                \ ]
" CS
let g:OmniSharp_server_stdio = 1
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

" Folding
nmap <Leader>ff :call <SID>ToggleFold()<CR>
function! s:ToggleFold()
    if &foldmethod == 'marker'
        let &l:foldmethod = 'syntax'
    else
        let &l:foldmethod = 'marker'
    endif
    echo 'foldmethod is now ' . &l:foldmethod
  endfunction

let g:Tex_FoldedSections = 'tcbraster'

" Vue
autocmd FileType vue syntax sync fromstart

" Cursor
let &t_SI .= "\<Esc>[4 q"
let &t_EI .= "\<Esc>[4 q"
let &guicursor = substitute(&guicursor, 'n-v-c:', '&blinkon0-', '')

" Filetypes
autocmd BufEnter *.scss :setlocal filetype=scss.css
autocmd BufEnter *.ts :setlocal filetype=javascript.jsx
autocmd BufEnter *.tsx :setlocal filetype=typescriptreact
autocmd BufEnter *.jsx :setlocal filetype=typescriptreact
autocmd BufEnter *.asm :setlocal filetype=nasm

let g:tex_flavor = 'latex'

" Variables
let g:airline_theme='base16'
let g:autoformat_remove_trailing_spaces = 0
let g:airline_powerline_fonts = 1
let g:netrw_banner = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#ale#enabled = 1
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"

" Cpp auto completion
" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

" Folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Deoplete configuration
let g:deoplete#auto_complete_delay = 5
let g:deoplete#auto_refresh_delay = 100
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#omni_patterns = {}
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Tern
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
      \ 'tern#Complete',
      \ 'jspc#omni'
      \]

set completeopt-=preview
"set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

"autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.pug

" Deoplete autocompletion keys
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:UltiSnipsExpandTrigger = "<C-a>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Fzf
let g:fzf_layout = { 'down': '~10%' }
let g:fzf_history_dir = '~/.local/share/fzf-history'

" GrammarousCheck
let g:grammarous#hooks = {}
function! g:grammarous#hooks.on_check(errs) abort
  " If the check has been executed
  nmap <buffer><A-f> <Plug>(grammarous-fixit)
  "nmap <buffer><A-l> <Plug>(grammarous-move-to-next-error)
  "nmap <buffer><A-h> <Plug>(grammarous-move-to-previous-error)
endfunction

function! g:grammarous#hooks.on_reset(errs) abort
  " If the check hasn't been executed, returning mappings to previous function
  nmap <buffer><A-f>
  "nmap <silent> <A-l> :wincmd l<CR>
  "nmap <silent> <A-h> :wincmd h<CR>
endfunction

nmap <silent> <F6> :GrammarousCheck<CR>
nmap <silent> <F7> :BufExplorer<CR>
nmap <silent> <F8> :Ranger<CR>
nmap <silent> <F9> :Autoformat<CR>
nmap <silent> <C-p> :bnext<CR>
nmap <silent> <C-n> :tabnew<CR>
nmap <silent> <C-x> :tabclose<CR>
nmap <silent> <C-h> :tabp<CR>
nmap <silent> <C-l> :tabn<CR>
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
nnoremap <leader>d "_d

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
NeoBundle 'Valloric/MatchTagAlways'
NeoBundle 'othree/html5.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'ternjs/tern_for_vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'othree/jspc.vim'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'w0rp/ale'
NeoBundle 'rbgrouleff/bclose.vim'
NeoBundle 'rhysd/vim-grammarous'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'lervag/vimtex'
NeoBundle 'vim-latex/vim-latex'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'ianks/vim-tsx'
NeoBundle 'francoiscabrol/ranger.vim'
NeoBundle 'alvan/vim-closetag'
NeoBundle 'godlygeek/tabular'
NeoBundle 'OrangeT/vim-csharp'
NeoBundle 'OmniSharp/omnisharp-vim'
NeoBundle 'matze/vim-tex-fold'
NeoBundle 'jbyuki/instant.nvim'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'peitalin/vim-jsx-typescript'
call neobundle#end()
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
colorscheme base16-eighties
