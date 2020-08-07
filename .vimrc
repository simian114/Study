set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"
" 42header
Plugin 'pbondoer/vim-42header'

Plugin 'tpope/vim-commentary'
Plugin 'Tagbar'
Plugin 'neocomplcache'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'fugitive.vim'
Plugin 'gtags.vim'
Plugin 'lrvick/Conque-Shell'
Plugin 'DoxygenToolkit.vim'
Plugin 'SearchComplete'
" indentline
Plugin 'Yggdroot/indentLine'
" Markdown
Plugin 'shime/vim-livedown'
" Ctags
" Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
" vim theme
Plugin 'morhetz/gruvbox'

call vundle#end()
"======================= markdown ======================
nmap gm :LivedownPreview<CR>
"======================= key mapping =======================
nmap <F2> :Stdheader<CR>
nmap <F3> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" ESC + / -> 주석
noremap <ESC>/ :Commentary<cr>

" Save!
map <C-s> <ESC>:w<CR>
imap <C-s> <ESC>:w<CR>

" Save and Quit!
map <C-d> <ESC>:wq<CR>
imap <C-d> <ESC>:wq<CR>

" Folding
map <F9> v]}zf
map <F10> zo

" <ESC to CTRL + C>
nmap <C-c> :<ESC>

" Moving line

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+1<CR>

" 파일 버퍼 간 이동
" 원하는 파일 버퍼로 이동하기
" 파일 여러개 동시에 편집 작업하는 경우
map ,` :ls<CR>
map ,1 :b!1<CR>
map ,2 :b!2<CR>
map ,3 :b!3<CR>
map ,4 :b!4<CR>
map ,5 :b!5<CR>
map ,6 :b!6<CR>
map ,7 :b!7<CR>
map ,8 :b!8<CR>
map ,9 :b!9<CR>

" 다음 파일 버퍼로 이동
map ,x :bn!<CR>
nnoremap <S-RIGHT> :bn!<CR>

" 이 전 파일 버퍼로 이동
map ,z :bp!<CR>
nnoremap <S-LEFT> :bp!<CR>

" 현재 파일 버퍼 닫음
map ,w :bw<CR>

"==================== theme ========================
"colorscheme gruvbox
"set dark mode
"set bg=dark

"===================== man page 설정 =========================

func! Man()
	let sm = expand("<cword>")
		exe "!man -S 2:3:4:5:6:7:8:9:tcl:n:l:p:o ".sm
		endfunc
		nmap ,ma :call Man ()<cr><cr>

"===================== 기본 설정========================
" indent line
"set listchars=tab:\|\ 
"set list
set cursorline
set ruler
set tabstop=4
set shiftwidth=4
set noexpandtab

set autoindent
set cindent

set nu

" 검색할 때 대소문자 구분 x
set ignorecase

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

if has ("syntax")
	syntax on
endif

