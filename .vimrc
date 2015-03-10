" --------------------------------------
"           my vimrc setting
" --------------------------------------



" View ---------------------------------
syntax enable                           " シンタックスon
"colorscheme default                     " カラースキームの設定
colorscheme morning                     " カラースキームの設定
"colorscheme morning                     " カラースキームの設定
set background=light                    " 背景色の傾向
set display=uhex                        " 印字不可能文字を16進数で表示
set cursorline                          " カーソル行を強調
set number                              " 行番号表示
set ruler                               " カーソル位置を右下に表示
set showcmd                             " 現在のコマンドモードを表示
set laststatus=2                        " ステータスラインを2行に
set statusline=%<%f\ #%n%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%y%=%l,%c%V%8P
set nowrap                              " 画面幅で折り返さない
set list                                " 不可視文字表示
set listchars=tab:>\ ,trail:-           " 不可視文字の表示方法
set scrolloff=5                         " 行送り
set sidescrolloff=16                    " 左右スクロール時の視界を確保
set sidescroll=1                        " 左右スクロールは一文字づつ行う
set showmatch                           " 括弧の対応をハイライト
hi ZenkakuSpace gui=underline guibg=DarkBlue cterm=underline ctermfg=LightBlue " 全角スペースの定義
match ZenkakuSpace /　/                 " 全角スペースの色を変更



" Commond ------------------------------
set wildmenu wildmode=list:full         " コマンドラインモードでTABキーによるファイル名補完を有効にする
set history=100                         " コマンドラインの履歴を100件保存する



" Assist inputting ---------------------
set backspace=indent,eol,start          " BS,Delキーの影響範囲に制限を設けない
set whichwrap=<,>,[,]                   " 行頭行末のカーソルキーで行をまたぐ
"set clipboard=unnamed,autoselect       " バッファにクリップボードを利用する
nnoremap <silent> <CR> :<C-u>call append(expand('.'), '')<CR>j



" Search -------------------------------
set wrapscan                            " 最後まで検索したら先頭へ戻る
set ignorecase                          " 大文字小文字無視
set smartcase                           " 大文字が含まれていたら大文字小文字無視しない
set incsearch                           " インクリメンタルサーチ
set nohlsearch                            " 検索文字をハイライト
set gdefault                            " 置換の時 g オプションをデフォルトで有効にする



" File ---------------------------------
set autoread                            " 外部からの更新時に自動再読込み
set hidden                              " 編集中でも他のファイルを開けるようにする
set nobackup                            " バックアップを取らない
set confirm                             " 保存されていないファイルがあるときは終了前に保存確認
"autocmd BufWritePre * :%s/\s\+$//ge    " 保存時に行末の空白を除去する



" Indent -------------------------------
set expandtab                           " タブ入力を複数の空白入力に置き換える
set tabstop=4                           " 画面上でタブ文字が占める幅
set shiftwidth=4                        " 自動インデントでずれる幅
set softtabstop=4                       " TABキー押し下げ時の挿入される空白の量,BSにも影響する
set autoindent                          " 改行時に前の行のインデントを継続する
set smartindent                         " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する



" Edit vimrc ---------------------------
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
nnoremap <Space>, :<C-u>source ~/.vimrc<CR>



" Charset, Line ending -----------------
"set termencoding=utf-8
"set encoding=utf-8
"set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp
"set ffs=unix,dos,mac            " LF, CRLF, CR
"if exists('&ambiwidth')
"    set ambiwidth=double        " UTF-8の□や○でカーソル位置がずれないようにする
"endif



" Key Mapping --------------------------
nnoremap <Space>h ^                     " 行頭に移動
nnoremap <Space>l $                     " 行末に移動
nnoremap gs :<C-u>%s///g<Left><Left><Left>
vnoremap gs :s///g<Left><Left><Left>


" Vim終了時に現在のセッションを保存する
au VimLeave * mks!  ~/vimsession

" 引数なし起動の時、前回のsessionを復元
"autocmd VimEnter * nested if @% == '' && s:GetBufByte() == 0 | source ~/vimsession | endif
"function! s:GetBufByte()
"    let byte = line2byte(line('$') + 1)
"    if byte == -1
"        return 0
"    else
"        return byte - 1
"    endif
"endfunction


set runtimepath+=~/_vimfiles/
runtime! userautoload/*.vim



