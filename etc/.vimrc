" Setting
let mapleader=" "

" Tab系
" set expandtab           " Tab文字を半角スペースにする
" set tabstop=2           " 行頭以外のTab文字の表示幅（スペースいくつ分）
" set shiftwidth=2        " 行頭でのTab文字の表示幅

" Yank系 ()
" set clipboard=unnamed   " y や p が Windows のクリップボード寄りの動作に
" nnoremap x "_x          " 削除時、レジスタに残さない
" nnoremap D "_D          " 削除時、レジスタに残さない

" IME系
" set iminsert=0          " Insert モードでは IME を OFF にする
" set imsearch=-1         " 検索時は今の IME 状態をそのまま使う

" 検索系
" set ignorecase          " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
" set smartcase           " 検索文字列に大文字が含まれている場合は区別して検索する
" set incsearch           " 検索文字列入力時に順次対象文字列にヒットさせる
" set wrapscan            " 検索時に最後まで行ったら最初に戻る
" set hlsearch            " 検索語をハイライト表示

" 表示系
set number              " 行番号を表示
set cursorline          " 現在の行を強調表示
set vsvimcaret=90       " ブロックカーソルの不透明

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" visualStudioのキーマッピング
" ソリューションエクスプローラーを開く
nnoremap <Leader>e :vsc View.SolutionExplorer<CR>
" 参照の検索
nnoremap <Leader>r :vsc Edit.FindAllReferences<CR>


" 定義元に移動
nnoremap <Leader>g gd










" insert: jj でノーマルへ
inoremap jj <Esc>

" ===== 移動系 =====
" 行頭/行末（画面上の行頭行末ではなく、論理行）
nnoremap H ^
nnoremap L $

" ===== 編集系 =====
" 保存（Space+w）
nnoremap <leader>w :w<CR>


" インデントして選択維持（ビジュアル）
vnoremap < <gv
vnoremap > >gv

" ===== クリップボード系（VS Code側のクリップボードを使う想定）=====
" 貼り付け時にヤンクを汚さない（ビジュアルで貼り付け）
xnoremap p "_dP

" ===== ウィンドウ操作（VS Codeの分割に対応する範囲で）=====
" 分割間移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
