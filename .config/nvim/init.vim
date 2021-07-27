source $HOME/.config/nvim/plug-config/coc.vim

" *** Plugins ***
set nocompatible

call plug#begin('~/.config/nvim/autoload/plugged')

" golang highlighting
Plug 'sheerun/vim-polyglot'
Plug 'fatih/molokai'

" Intellisense
Plug 'neoclide/coc.nvim', { 'do' : { -> coc#util#install() } }
" auto pairs
Plug 'jiangmiao/auto-pairs'
" Preview colors in the editor
Plug 'ap/vim-css-color'

Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'phanviet/vim-monokai-pro'
Plug 'dart-lang/dart-vim-plugin'
Plug 'junegunn/goyo.vim'

call plug#end()

" ====== COC NVIM CONFIG =======
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

set updatetime=300

" don't give |ins-cimpletion-menu| messages.
set shortmess+=c

" show signcolumns
set signcolumn=yes

" use tabe for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugins
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <leader>rn <Plug>(coc-rename)

"*** me stuffs ***
filetype plugin indent on

" Syntax Coloring
set termguicolors
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
syntax enable

"
let mapleader = ","
set tabstop=4 shiftwidth=4
"
set noexpandtab
set list
set listchars=tab:\|\ ,trail:∙,nbsp:␣,
set modelines=0         " CVE-2007-2438
set backspace=indent,eol,start        " more powerful backspacing
" set textwidth=120
set colorcolumn=120
set autoindent
set relativenumber
set wildmenu
set cmdheight=1
set path+=**
set laststatus=2
set statusline=%f

set splitbelow splitright

"" set autocompletion
set wildmode=longest,list,full

" set up quick jump tags for tex and html
autocmd FileType tex inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
autocmd FileType html inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

map <leader>m :!make<CR>

" Goyo
map <leader>g :Goyo \| set linebreak<CR>
"
" spell check
map <leader>o :setlocal spell! spelllang=en_us<CR>

" netrw config
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 15

" dart config
command! -nargs=0 Rel :call CocAction('runCommand', 'flutter.dev.hotReload')
command! -nargs=0 FlutterEmulate :call CocAction('runCommand', 'flutter.emulators')
command! -nargs=0 Attach :call CocAction('runCommand', 'flutter.attach')
command! -nargs=0 Run :call CocAction('runCommand', 'flutter.run')
command! -nargs=0 Res :call CocAction('runCommand', 'flutter.dev.hotRestart')
command! -nargs=0 Console :call CocAction('runCommand', 'flutter.dev.openDevLog')

" golang config
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 0

let g:go_fmt_command = "goimports"

autocmd FileType go nmap <leader>f :!goimports -w %<CR>
autocmd FileType go nmap <leader>b :!go build<CR>
autocmd FileType go nmap <leader>gtf :CocCommand go.test.generate.function<CR>
autocmd FileType go nmap <leader>gti :CocCommand go.test.generate.file<CR>

" html
autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>2ki

"latex
autocmd FileType tex inoremap ;b \begin{}<Enter><++><Enter>\end{<++>}<Esc>2kT{i
autocmd FileType tex inoremap ;list \begin{enumerate}<Enter>\item<Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap ;sec \section{}<Enter><Enter><++><Esc>2kf{a
