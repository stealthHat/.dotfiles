local keymap = vim.keymap.set
local autocmd = vim.api.nvim_command

-- Remap space as leader key
vim.g.mapleader = " "

keymap("n", "<esc>", "<cmd>noh<cr>")
keymap("n", "Q", "<Nop>")

-- Auto cmds
autocmd [[autocmd BufWritePre * :%s/\s\+$//e]]

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>")
keymap("n", "<C-Down>", ":resize +2<CR>")
keymap("n", "<C-Left>", ":vertical resize +2<CR>")
keymap("n", "<C-Right>", ":vertical resize -2<CR>")
