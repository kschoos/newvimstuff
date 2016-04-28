execute pathogen#infect()
syntax on
filetype plugin indent on
let mapleader="#"
set foldmethod=indent
set foldlevel=5

let javascript_enable_domhtmlcss = 1

set backspace=indent,eol,start
set laststatus=2

set tabstop=2
set shiftwidth=2
set expandtab

if !has('gui_running')
      set t_Co=256
endif

set nu
set wildignore=node_modules/**,**/js/**,*.swp

command! Cards call g:CreateCards()

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste'  ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified'  ] ]
      \ 
      \},
      \ 'component': {
      \   'readonly': '%{&readonly?"O":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \},
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ 
      \},
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \}

imap ii <Esc>
noremap <Leader>u :silent !java -jar $JSTD_HOME/JsTestDriver-1.3.5.jar --config jstd.cfg --tests all --reset<CR><C-l>
nnoremap <Leader>b :!browserify -t [ babelify --presets [ react  ]  ] main.js -o bundle.js
nnoremap <Leader>r :w<CR>:!~/reload-chrome Mozilla
nnoremap <Leader>c :exe ':silent !firefox index.html&'<CR><C-l>
nnoremap <Leader>v :tabe ~/.vimrc<CR>
nnoremap <Leader>p "+p
nnoremap <Leader>y "+y
nnoremap ; <Esc>A;<Esc>
nnoremap <Space> za
nnoremap <Leader>i o<CR>// {bla}<CR>
                   \-----------------------------------------------<Esc>?{bla}<CR>"_caB

nnoremap <Leader>x o<CR>//--------------------------------------------------------------------<CR>
                   \                             {bla}<CR><Esc>a
                   \--------------------------------------------------------------------<Esc>?{bla}<CR>"_caB


