syntax enable "enables vim syntax highlighting
set nu " OR set number
set ai " OR set autoindent
set si " OR set smartindent
"Similarly, ts = tabstop; sts = softtabstop; sw = shiftwidth
set ts=4 sw=4
set cursorline "highlights the current line where cursor is present
set mouse=a "enables cursor move with mouse pointer
filetype plugin indent on
set encoding=UTF-8

"-------------------------------------------------------------------------------------------------------------------------------
"													Plugins used:
"-------------------------------------------------------------------------------------------------------------------------------
"Install Vundle(Plugin manager) from here:  https://github.com/VundleVim/Vundle.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'https://github.com/vim-airline/vim-airline' "vim status bar
	Plugin 'https://github.com/preservim/nerdtree' "file system explorer for vim e.g :NERDTreeToggle
	Plugin 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
	Plugin 'https://github.com/ap/vim-css-color' " CSS Color Preview
	Plugin 'https://github.com/ryanoasis/vim-devicons' " Developer Icons (requires NERD Fonts)
	Plugin 'https://github.com/neoclide/coc.nvim' "coc - syntax suggestions/ Auto completion - for NEOVIM only.
	Plugin 'https://github.com/preservim/tagbar' " Tagbar for code navigation - :TagbarToggle
	Plugin 'https://github.com/nvim-treesitter/nvim-treesitter' "syntax higlight :TSInstall <language_to_install> :TSInstallInfo
	Plugin 'https://github.com/turbio/bracey.vim' "live preview for html, css, and js; :Bracey, :BraceyStop, :BraceyReload
	Plugin 'https://github.com/pacha/vem-tabline' "displays tabs - multiple files opened
	Plugin 'https://github.com/tribela/vim-transparent' " :TransparentEnable (by default), :TransparentDisable
	Plugin 'https://github.com/kaicataldo/material.vim' "material theme
	Plugin 'https://github.com/overcache/NeoSolarized' "NeoSolarized theme
call vundle#end()

"-------------------------------------------------------------
"					KEY MAPS:
"-------------------------------------------------------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-e> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"ALT + UP/DOWN - to move line UP/DOWN:
"normal mode -->
nnoremap <A-Down> :m .+1<CR>== 
nnoremap <A-Up> :m .-2<CR>== 
"visual mode -->
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

"CTRL + UP/DOWN to copy line above/below:
nnoremap <C-D> yyp
nnoremap <C-U> yyP

"Press F9 --> previous tab, and F10 --> next tab: 
map <F9> :bprevious<CR>
map <F10> :bnext<CR>

"-------------------------------------------------------------------------------------------------------------------------------
"												Editor Background Color Theme
"-------------------------------------------------------------------------------------------------------------------------------

"Material themes - Background:

if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif
"let g:material_termcolors=256
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'
colorscheme material

"									>>>>>>>>>>>>>>>>>>>>>>>  OR  <<<<<<<<<<<<<<<<<<<<<<<

"NeoSolarized theme / Solarized Dark (by default):
colorscheme NeoSolarized
"------------------------------------------------------------------------------------------------------------------------------
"														Status Bar Setup: 
"------------------------------------------------------------------------------------------------------------------------------
"let g:airline_theme = 'NeoSolarized'
let g:airline_theme = 'material' "changing status bar theme
let g:airline_powerline_fonts = 1 "makes staus bar section arrow head style, set to O to make it normal.

"------------------------------------------------------------------------------------------------------------------------------
"														Smart Tab line: 
"------------------------------------------------------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1