local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap
local autocmd = vim.api.nvim_command

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Leader binds
keymap("n", "<esc>", "<cmd>noh<cr>", opts)
keymap("n", "<leader>w", "<cmd>wa!<cr>", opts)
keymap("n", "<leader>r", "<cmd>b#|bd#|<cr>", opts)
keymap("n", "<leader>q", "<cmd>q!<cr>", opts)
keymap("n", "<leader>o", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<leader>h", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)
keymap("n", "<leader>F", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "Q", "<Nop>", opts)

-- Auto cmds
autocmd [[autocmd BufWritePre * :%s/\s\+$//e]]

-- Navigate buffers
keymap("n", "<leader>l", ":bnext<CR>", opts)
keymap("n", "<leader>h", ":bprevious<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
