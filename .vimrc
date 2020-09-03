""""" Vundle Settings
""""" ref: https://github.com/VundleVim/Vundle.Vim#quick-start
""""" Launch vim and run ':PluginInstall'
""""" Command line running 'vim +PluginInstall +qall'
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'posva/vim-vue'

call vundle#end()
filetype plugin indent on



""""" lightline.vim Settings
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif



""""" tmuxline.vim Settings
""""" Launch tmux + vim and run ':Tmuxline' + ':TmuxlineSnapshot <ConfFileName>'
let g:tmuxline_preset = {
  \'a'    : '#S',
  \'c'    : ['#(whoami)', '#(uptime | cud -d " " -f 1,2,3)'],
  \'win'  : ['#I', '#W'],
  \'cwin' : ['#I', '#W', '#F'],
  \'x'    : '#(date)',
  \'y'    : ['%R', '%a', '%Y'],
  \'z'    : '#H'}
let g:tmuxline_theme = 'lightline_visual'



""""" Key Bindings
nnoremap + <C-a>
nnoremap - <C-x>



""""" Basic Settings
set belloff=all
set noswapfile
set ruler
set title
set wildmenu
set showcmd
set smartcase
set showmatch
set matchtime=1
set expandtab
set tabstop=4
set shiftwidth=4
"set tabstop=4
"set shiftwidth=4
set nosmarttab
set noautoindent
set nosmartindent
set nocindent
set indentexpr=""
"set whichwrap=b,s,h,l,<,>,[,]
set hlsearch
set incsearch
set number
set background=dark
set viminfo='20,\"10000
set display=lastline
set mouse=a
set ttymouse=xterm2
colorscheme desert
highlight LineNr ctermfg=darkyellow
syntax on
set clipboard=unnamed,autoselect



""""" AutoIndent Disable Settings
augroup vimrc
    autocmd FileType aap setlocal indentexpr=
    autocmd FileType ada setlocal indentexpr=
    autocmd FileType ant setlocal indentexpr=
    autocmd FileType automake setlocal indentexpr=
    autocmd FileType awk setlocal indentexpr=
    autocmd FileType bib setlocal indentexpr=
    autocmd FileType bst setlocal indentexpr=
    autocmd FileType bzl setlocal indentexpr=
    autocmd FileType c setlocal indentexpr=
    autocmd FileType cdl setlocal indentexpr=
    autocmd FileType ch setlocal indentexpr=
    autocmd FileType chaiscript setlocal indentexpr=
    autocmd FileType changelog setlocal indentexpr=
    autocmd FileType clojure setlocal indentexpr=
    autocmd FileType cmake setlocal indentexpr=
    autocmd FileType cobol setlocal indentexpr=
    autocmd FileType config setlocal indentexpr=
    autocmd FileType context setlocal indentexpr=
    autocmd FileType cpp setlocal indentexpr=
    autocmd FileType cs setlocal indentexpr=
    autocmd FileType css setlocal indentexpr=
    autocmd FileType cucumber setlocal indentexpr=
    autocmd FileType cuda setlocal indentexpr=
    autocmd FileType d setlocal indentexpr=
    autocmd FileType dictconf setlocal indentexpr=
    autocmd FileType dictdconf setlocal indentexpr=
    autocmd FileType docbk setlocal indentexpr=
    autocmd FileType dtd setlocal indentexpr=
    autocmd FileType dtrace setlocal indentexpr=
    autocmd FileType dylan setlocal indentexpr=
    autocmd FileType eiffel setlocal indentexpr=
    autocmd FileType erlang setlocal indentexpr=
    autocmd FileType eruby setlocal indentexpr=
    autocmd FileType eterm setlocal indentexpr=
    autocmd FileType falcon setlocal indentexpr=
    autocmd FileType fortran setlocal indentexpr=
    autocmd FileType framescript setlocal indentexpr=
    autocmd FileType gitconfig setlocal indentexpr=
    autocmd FileType gitolite setlocal indentexpr=
    autocmd FileType go setlocal indentexpr=
    autocmd FileType haml setlocal indentexpr=
    autocmd FileType hamster setlocal indentexpr=
    autocmd FileType hog setlocal indentexpr=
    autocmd FileType html setlocal indentexpr=
    autocmd FileType htmldjango setlocal indentexpr=
    autocmd FileType idlang setlocal indentexpr=
    autocmd FileType ishd setlocal indentexpr=
    autocmd FileType j setlocal indentexpr=
    autocmd FileType java setlocal indentexpr=
    autocmd FileType javascript setlocal indentexpr=
    autocmd FileType json setlocal indentexpr=
    autocmd FileType jsp setlocal indentexpr=
    autocmd FileType ld setlocal indentexpr=
    autocmd FileType less setlocal indentexpr=
    autocmd FileType lifelines setlocal indentexpr=
    autocmd FileType liquid setlocal indentexpr=
    autocmd FileType lisp setlocal indentexpr=
    autocmd FileType logtalk setlocal indentexpr=
    autocmd FileType lua setlocal indentexpr=
    autocmd FileType mail setlocal indentexpr=
    autocmd FileType make setlocal indentexpr=
    autocmd FileType matlab setlocal indentexpr=
    autocmd FileType mf setlocal indentexpr=
    autocmd FileType mma setlocal indentexpr=
    autocmd FileType mp setlocal indentexpr=
    autocmd FileType nsis setlocal indentexpr=
    autocmd FileType objc setlocal indentexpr=
    autocmd FileType ocaml setlocal indentexpr=
    autocmd FileType occam setlocal indentexpr=
    autocmd FileType pascal setlocal indentexpr=
    autocmd FileType perl setlocal indentexpr=
    autocmd FileType perl6 setlocal indentexpr=
    autocmd FileType php setlocal indentexpr=
    autocmd FileType postscr setlocal indentexpr=
    autocmd FileType pov setlocal indentexpr=
    autocmd FileType prolog setlocal indentexpr=
    autocmd FileType pyrex setlocal indentexpr=
    autocmd FileType python setlocal indentexpr=
    autocmd FileType r setlocal indentexpr=
    autocmd FileType readline setlocal indentexpr=
    autocmd FileType rhelp setlocal indentexpr=
    autocmd FileType rmd setlocal indentexpr=
    autocmd FileType rnoweb setlocal indentexpr=
    autocmd FileType rpl setlocal indentexpr=
    autocmd FileType rrst setlocal indentexpr=
    autocmd FileType rst setlocal indentexpr=
    autocmd FileType ruby setlocal indentexpr=
    autocmd FileType rust setlocal indentexpr=
    autocmd FileType sas setlocal indentexpr=
    autocmd FileType sass setlocal indentexpr=
    autocmd FileType scala setlocal indentexpr=
    autocmd FileType scheme setlocal indentexpr=
    autocmd FileType scss setlocal indentexpr=
    autocmd FileType sdl setlocal indentexpr=
    autocmd FileType sh setlocal indentexpr=
    autocmd FileType sml setlocal indentexpr=
    autocmd FileType sql setlocal indentexpr=
    autocmd FileType sqlanywhere setlocal indentexpr=
    autocmd FileType systemd setlocal indentexpr=
    autocmd FileType systemverilog setlocal indentexpr=
    autocmd FileType tcl setlocal indentexpr=
    autocmd FileType tcsh setlocal indentexpr=
    autocmd FileType teraterm setlocal indentexpr=
    autocmd FileType tex setlocal indentexpr=
    autocmd FileType tf setlocal indentexpr=
    autocmd FileType tilde setlocal indentexpr=
    autocmd FileType treetop setlocal indentexpr=
    autocmd FileType vb setlocal indentexpr=
    autocmd FileType verilog setlocal indentexpr=
    autocmd FileType vhdl setlocal indentexpr=
    autocmd FileType vim setlocal indentexpr=
    autocmd FileType vroom setlocal indentexpr=
    autocmd FileType xf86conf setlocal indentexpr=
    autocmd FileType xhtml setlocal indentexpr=
    autocmd FileType xinetd setlocal indentexpr=
    autocmd FileType xml setlocal indentexpr=
    autocmd FileType xsd setlocal indentexpr=
    autocmd FileType xslt setlocal indentexpr=
    autocmd FileType yacc setlocal indentexpr=
    autocmd FileType yaml setlocal indentexpr=
    autocmd FileType zimbu setlocal indentexpr=
    autocmd FileType zsh setlocal indentexpr=
    autocmd FileType vue syntax sync fromstart
augroup END

""""" ref: https://qiita.com/nabewata07/items/d92655485622aeb847a8
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction
