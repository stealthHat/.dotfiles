local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap
local autocmd = vim.api.nvim_command

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Leader binds
keymap("n", "<leader>W", "<cmd>wq!<cr>", opts)
keymap("n", "<leader>w", "<cmd>wa!<cr>", opts)
keymap("n", "<leader>q", "<cmd>q!<cr>", opts)
keymap("n", "<leader>f", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>o", "<cmd>NvimTreeToggle<cr>", opts)

-- Auto cmds
autocmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- remove word highlight when press esc
keymap("n", "<esc>", "<cmd>:noh<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
