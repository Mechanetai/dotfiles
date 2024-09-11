-- \n 選択中の単語を編集(n -> . で他の単語にも適用)
vim.keymap.set("n", "<leader>*", "*''cgn")

-- yank-clipboard共通化
vim.opt.clipboard:append("unnamed")

-- 行番号を表示する
vim.opt.number = true

-- VISUALで、上書きペーストしたときに削除された文字をヤンクに保存しない
vim.api.nvim_set_keymap('x', 'p', '"_dP', { noremap = true, silent = true })

-- NORMAL, VISUAL, SELECTで、dとxをカットではなく削除にする
vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'd', '"_d', { noremap = true, silent = true })

-- xを切り取りにする
vim.api.nvim_set_keymap('n', 'x', 'd', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'x', 'd', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'xx', 'dd', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'X', 'D', { noremap = true, silent = true })