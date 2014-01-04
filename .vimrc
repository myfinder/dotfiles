"行番号を表示
set number
"括弧入力時に対応する括弧を表示
set showmatch
"コマンドをステータス行に表示
set showcmd
"タイトルを表示
set title
"常にステータス行を表示
set laststatus=2
"if(){}などのインデント
set cindent
"ルーラーを表示
set ruler
set ignorecase
"検索に大文字を含んでいたら大小区別
set smartcase
"検索時にヒット部位の色を変更
set hlsearch
"検索時にインクリメンタルサーチを行う
set incsearch
set showmode
"コマンドラインの履歴の保存数
set history=1024
"インデント
set autoindent
set smartindent
set smarttab
"置換に正規表現を使えるようにする
set magic
"ペースト
"set paste
"タブを空白に置き換える
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
" 全角スペースとタブの表示
highlight WhiteSpace cterm=underline ctermfg=lightblue guibg=darkgray
match WhiteSpace /[	　]/

" syntax
filetype off
filetype plugin indent off
set runtimepath+=/usr/local/go/misc/vim
filetype plugin indent on
syntax on

" syntax
:au BufEnter *.t,*.psgi,*.perl,*.pm,*.pl execute ":setlocal filetype=perl"
:au BufEnter *.t,*.psgi,*.perl,*.pm,*.pl execute ":setlocal filetype=perl"
:au BufEnter *.tt,*.tx,*.cfm execute ":setlocal filetype=html"
:au BufEnter *.sql execute ":setlocal filetype=mysql"
":au BufReadPost,BufNewFile *.t,*.psgi :setl filetype=perl
"autocmd BufWritePost,FileWritePost *.p[lm],*.psgi,*.t !perl -MFindBin::libs -Mlocal::lib=/fout/fout/extlib -wc <afile>
"autocmd Syntax yaml map ,t :w<CR>:!~/local/bin/yaml_checker.pl %<CR> | set makeprg=~/bin/yaml_checker.pl
":au BufReadPost,BufNewFile *.yaml :setl filetype=yaml
"autocmd BufWritePost,FileWritePost *.yaml !~/local/bin/yaml_checker.pl <afile>
"reset highlight
"nmap :nohlsearch
":w + !perl command
"map <F4>  :w !perl -Ilib<CR>
"!perl command
"map <F5>  :!perl -Ilib %<CR>

"全選択
"map <F8> ggVG
filetype off
" Vundle '''
"set rtp+=~/.vim/vundle/
"call vundle#rc()
"filetype plugin on

" 利用中のプラグインをBundle
"Bundle 'Gist.vim'
"let g:gist_detect_filetype = 1
"let g:github_user  = 'myfinder'
"let g:github_token = 'f7587af37d2515c0aa657fafa7fccfc1'
