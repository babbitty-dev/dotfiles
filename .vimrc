"文字コードをUFT-8に設定
set fenc=utf-8

" バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" 編集中のファイルが変更されたら自動で読み直す
set autoread

" バッファが編集中でもその他のファイルを開けるように
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd

" 全角文字表示のため
set ambiwidth=double

"タイトル部分にファイル名を表示する
set title

"行番号を表示
set number

" ファイル名表示
set statusline=%F

" 変更チェック表示
set statusline+=%m

" <BS>や<DEL>がうまく動作しないのを防止する
set backspace=indent,eol,start

" tabキーを押した際にはスペースを入れる（ソフトタブ有効化）
set expandtab

" 画面上でタブ文字が占める幅
set tabstop=2

" 自動インデントでずれる幅
set shiftwidth=2

" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2

" 改行時に前の行のインデントを継続する
set autoindent

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" マウス操作有効化
" set mouse=a

" 編集行ハイライト
set cursorline

" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

" ファイルタイプの自動検出、ファイルタイプ用の プラグインとインデント設定 自動読み込み
filetype plugin indent on

" ColorSchema の設定
" set termguicolors

syntax on

" 背景色
" set background=dark

" OSのクリップボードにコピー
" `$vim --version | grep clipboard` で clipboard の有効を確認
set clipboard+=unnamed

" 起動時のメッセージを表示しない
set shortmess+=I

" 行末の空白をファイル保存時に削除
augroup RemoveWhiteSpace
  autocmd!

  autocmd BufWritePre * :%s/\s\+$//ge
augroup END

""""""""""""""""""""""""""""""
" エイリアス
""""""""""""""""""""""""""""""

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" 検索時のハイライトを消す
nnoremap <ESC><ESC> :noh<CR>
