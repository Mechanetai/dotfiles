" yank-clipboard共通化
set clipboard+=unnamed

" 行番号を表示する
set number

" VISUALで、上書きペーストしたときに削除された文字をヤンクに保存しない
xnoremap p "_dP

" NORMAL, VISUAL, SELECTで、dとxをカットではなく削除にする
nnoremap d "_d
xnoremap d "_d
nnoremap x "_x
xnoremap x "_x
