"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Reference http://mixandgo.com/blog/vim-config-for-rails-ninjas
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "

autocmd!
set nocompatible
"set noshowmode

" Disable tag generation on file save, slow for large projects
" then you need to do it whenever tags file is out of date
"let g:vim_tags_auto_generate = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle Start
" // To install:
" Launch vim and run :PluginInstall
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off "required for vundle

" Load local .vimrc relative to the project repo
set exrc

" Load .vimrc whenever it's saved
au BufWritePost .vimrc so $MYVIMRC

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'gmarik/vundle'

" Recently added Plugins
Plugin 'scrooloose/nerdtree'
"Plugin 'bling/vim-airline' " cannot get powerline work on some environments
Plugin 'posva/vim-vue'

" All other Plugins
" Plugin 'dockyard/vim-easydir'
" Plugin 'ecomba/vim-ruby-refactoring'
" Plugin 'SirVer/ultisnips'
" Plugin 'int3/vim-extradite'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
"Plugin 'rorymckinley/vim-rubyhash'
" Plugin 'tmhedberg/matchit'
" Plugin 'tpope/vim-commentary'
" Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
" Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
" Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-vinegar'
" Plugin 'tpope/vim-unimpaired'
" Plugin 'tpope/vim-speeddating'
" Plugin 'tpope/vim-rsi'
" Plugin 'tpope/vim-projectionist'
" Plugin 'stefanoverna/vim-i18n'
Plugin 'szw/vim-tags'
Plugin 'vim-ruby/vim-ruby'
" Plugin 'danchoi/ri.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'd11wtq/ctrlp_bdelete.vim'
Plugin 'tacahiroy/ctrlp-funky'
" Plugin 'mileszs/ack.vim'
" Plugin 'junegunn/vim-easy-align'
" Plugin 'chriskempson/vim-tomorrow-theme'
" Plugin 'christoomey/vim-tmux-runner'
" Plugin 'gabebw/vim-spec-runner'
" Plugin 'marcweber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'wellle/targets.vim'
" Plugin 'vim-scripts/SyntaxAttr.vim'
" Plugin 'guns/xterm-color-table.vim'
" Plugin 'slim-template/vim-slim'
" Plugin 'nanotech/jellybeans.vim'
" Plugin 'jgdavey/vim-blockle.git'
" Plugin 'vim-scripts/closetag.vim'
" Plugin 'tommcdo/vim-exchange'
" Plugin 'AndrewRadev/switch.vim'
" Plugin 'mattn/gist-vim'
" Plugin 'mattn/webapi-vim'
" Plugin 'tpope/vim-abolish'
" Plugin 'tpope/vim-repeat'
" Plugin 'gregsexton/gitv'
Plugin 'gabrielelana/vim-markdown'
" Plugin 'henrik/vim-indexed-search'
" Plugin 'vim-scripts/LargeFile'
" Plugin 'skwp/greplace.vim'
" Plugin 'chriskempson/base16-vim'
" Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'avakhov/vim-yaml'
" Plugin 'idanarye/vim-merginal'
" Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'godlygeek/tabular'

" All of Plugins must be added before the following line
call vundle#end()

filetype plugin indent on "requried
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle End
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi def link CtrlPMatch CursorLine
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\^.git$\|^node_modules$\|^bin$\|\^.hg$\|\^.svn$\|^build$\|^log$\|^resources$\|^coverage$\|^doc$\|^tmp$\|^public/assets$\|^vendor$\|^Android$',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }
" nnoremap <C-b> :CtrlPBuffer<cr>
" CtrlP Delete
call ctrlp_bdelete#init()
" CtrlP Funky
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_multi_buffers = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim tmux runner
"" I don't want the default key mappings
"let g:VtrUseVtrMaps = 0
"" Vim spec runner
"let g:spec_runner_dispatcher = 'call VtrSendCommand("{command}")'
"map <Leader>tf <Plug>RunCurrentSpecFile
"map <Leader>tt <Plug>RunFocusedSpec
"map <Leader>tl <Plug>RunMostRecentSpec

" Get rid of buffers I don't use by Ctrl-c
nnoremap <C-c> :bnext\|bdelete #<CR>

" Use vim's default file manager instead of NERDTree
"let g:netrw_liststyle = 0
" I use NERDTree for now

""""Rubyhash""""
" Don't map rubyhash keys
let g:rubyhash_map_keys = 0
" ruby path if you are using RVM
"let g:ruby_path = system('rvm current')
" Disable mappings from vim-ruby-refactoring
let g:ruby_refactoring_map_keys = 0
" Intent private methods

"Disabling it because of strange line change behavior
"let g:ruby_indent_access_modifier_style = 'outdent'

"This one just tells the ultisnips plugin where it should look for my custom
"snippets
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Default encoding
set encoding=utf-8 nobomb

" Disable ex-mode
nnoremap Q <nop>

" Invisible characters
"set listchars=tab:?\ ,trail:?,eol:?,nbsp:_,extends:?,precedes:?

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=1200

" Use only 1 space after "." when joining (J key) lines instead of 2
"set nojoinspaces

" Don't reset cursor to start of line when moving around
set nostartofline

" Autocomplete ids and classes in CSS
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
" Add the '-' as a keyword in erb files
autocmd FileType eruby set iskeyword=@,48-57,_,192-255,$,-

" Make those debugger statements painfully obvious
au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.rb syn match error contained "\<debugger\>"

" Other one-liners
set hlsearch          " highlight the search
" remove search highlighting
nnoremap <leader>h :noh<cr>

set ls=2              " show a status line even if there's only one window

" Improve vim's scrolling speed
set ttyfast
set ttyscroll=3
set lazyredraw

set wildmenu                    " show completion on the mode-line
set linespace=0                 " number of pixels between the lines
set splitright                  " open vertical splits on the right
set splitbelow                  " open the horizontal split below
set wrap!                       " don't wrap long lines //correlated to Plugin ecomba/vim-ruby-refactoring
set textwidth=79                " definition for long lines
set linebreak                   " break lines at word end
set nobackup                    " don't want no backup files
set nowritebackup           	" don't make a backup before overwriting a file
set noswapfile                  " no swap files
set hidden                      " hide buffers when abandoned

" Time out on key codes but not mappings
set notimeout
set ttimeout
set ttimeoutlen=100

" Auto-reload buffers when files are changed on disk
set autoread

" Lines with equal indent form a fold.
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
" Open all folds by default
set nofoldenable

set undofile                    " Save undo's after file closes
set undodir=~/.vim/undo         " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo

set vb                          " disable alert sound
set showcmd                     " display incomplete commands
set history=100                 " a ton of history

" Default shell and shell syntax and source ~/.bash_profile
set shell=/bin/bash\ --login
"set shell=/usr/bin/zsh\ --login
let g:is_bash=1

" Whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set scrolloff=5                 " keep a 5 line padding when moving the cursor

set autoindent                  " indent on enter
set smartindent                 " do smart indenting when starting a new line
set shiftround                  " indent to the closest shiftwidth

set switchbuf=""                " do not move focus/cursor to where the buffer is already open
set tagbsearch                  " use binary searching for tags

" The 'Press ENTER or type command to continue' prompt is jarring and usually unnecessary.
"set shortmess=atI

" C-c send enter in insert mode
"inoremap <C-c> <Esc>

"I'm aliasing w and q to their uppercase counterparts because I often have the shift key pressed and I type W instead of w.
cnoreabbrev W w
cnoreabbrev Q q

" Expand %% to current directory (eg. :%%)
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%')<cr>

" Force you to type commit messages that are no longer than 72 characters.
" Which is a very good practice.
autocmd Filetype gitcommit setlocal spell textwidth=72

" TODO:
" I want a minimalistic one with just the file name and probably the line/col
" numbers but I'm not entirely sold on it, I know I'm gonna change it in the
" near future.
if has("statusline") && !&cp
  set statusline=%y\ %<%f\ %h%m%r%=%-16.(line\ %l\ of\ %L%)
  set statusline+=%#warningmsg#
  set statusline+=%*
endif

" Changing files only writable by the root user
"cnoremap w!! %!sudo tee > /dev/null %

" Visually select the text that was last edited/pasted
nnoremap gV `[v`]
" selelct what you've just pasted
nnoremap gp `[v`]

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Given you have your hands on the home row most of the time, these shortcuts
" will save you when you try to switch window splits. And that happens a lot.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" type the spacebar twice and it will bring me back to the last buffer I was on
nnoremap <leader><leader> :b#<cr>
" The <leader>V get to my .vimrc file quickly.
nnoremap <leader>V :e $MYVIMRC<cr>

" I don't use vim-fugitive too much but when I do I want those buffers it
" creates to be gone by the time I'm done with it. That's what the line above
" does, it removes those fugitive buffers.
"autocmd BufReadPost fugitive://* set bufhidden=delete

" .hamljs files should be using the haml mode.
autocmd BufRead,BufNewFile *.hamljs set filetype=haml

" resizes the quickfix window to match it's contents.
"au FileType qf call AdjustWindowHeight(3, 15)
"function! AdjustWindowHeight(minheight, maxheight)
"  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
"endfunction

" call update on the current file whenever you leave it. So that your files
" will always be saved.
"autocmd BufLeave,FocusLost * silent! update

""I've used this in the past to do a replace in project kind of operation.
"Unfortunately this is how ugly it looks in vim."
" The custom :Qargs command sets the arglist to contain each of the files
" referenced by the quickfix list.
"command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
"function! QuickfixFilenames()
"  " Building a hash ensures we get each buffer only once
"  let buffer_numbers = {}
"  for quickfix_item in getqflist()
"    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
"  endfor
"  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
"endfunction

"That's the last one. I'm using vim in terminal inside tmux so I want my vim
"windows to resize themselves whenever I resize the terminal window.
autocmd VimResized * :wincmd =


" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>m :NERDTreeFind<CR>
"let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
" Disable NERDTreeDirArrows (use +dir -file)
let g:NERDTreeDirArrows=0 " cannot get powerline arrow to work in some environments
"let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible = '<'
let g:NERDTreeWinSize=25

" Vim-airline
let g:airline_powerline_fonts = 1


" Set up line number
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tmux helper
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Compeletion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Complete till longest common string.
" When more than one match exists, list them all.
set wildmode=longest,list
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignore images and log files
set wildignore+=*.gif,*.jpg,*.png,*.log

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Ignore custom folders
set wildignore+=*/resources/*

" Ignore node modules
set wildignore+=node_modules/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Disable osx index files
set wildignore+=.DS_Store

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => file type specific settings
" example JSON files have the javascript mode enabled, markdown files have
" different spaces/tabs setting, and so on.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimrcEx
  " Clear all autocmds for the current group
  autocmd!

  " Jump to last cursor position unless it's invalid or in an event
  " handler or
  " a git commit
  au BufReadPost *
    \ if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " Some file types use real tabs
  au FileType {make,gitconfig} set noexpandtab sw=4

  " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json setf javascript

  " Make Python follow PEP8
  au FileType python set sts=4 ts=4 sw=4 tw=79

  " Make sure all markdown files have the correct filetype
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown

  " MultiMarkdown requires 4-space tabs
  au FileType markdown set sts=4 ts=4 sw=4
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 
syntax sync fromstart

set background=dark
colorscheme desert
"colorscheme railscasts
highlight Normal guifg=grey90

"hi TabLineFill ctermfg=Grey
hi TabLine ctermbg=LightBlue
hi TabLineSel ctermbg=Red
"hi Title ctermfg=LightBlue ctermbg=Magenta

"vmap <C-x> :!pbcopy<CR>  
""map <C-c> :w !pbcopy<CR><CR> 
"nmap <F2> :w !pbcopy<CR><CR>
"vmap <C-v> :r !pbpaste<CR>
"
" Before having clipboard working, make sure vim is compiled with clipboard
" enabled. 
" > vim --version | grep "clipboard"
" you shall see "+clipboard" rather than "-clipboard"
" For ubuntu, to have "+clipboard", just "sudo apt-get install vim-gtk"
set clipboard=unnamed


" Auto format json in a human readable way
":function Jsonf()
":  %!python -m json.tool
":endfunction
"nmap <leader>f :call Jsonf()<CR>

" map ctrl+d in vim to run :sh so that we can toggle between bash and vim
" quickly
noremap <C-d> :sh<cr>
