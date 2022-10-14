local key = require "core.keymap"
local nmap, tmap = key.nmap, key.tmap
local silent, noremap = key.silent, key.noremap
local opts = key.new_opts
local cmd = key.cmd

nmap {
  { "<esc>", cmd "noh", opts(noremap, silent) },
  -- close buffer
  { "<C-x>x", cmd "bdelete", opts(noremap, silent) },
  -- buffer jump
  { "]b", cmd "bn", opts(noremap) },
  { "[b", cmd "bp", opts(noremap) },
  -- resize window
  { "<C-Up>", cmd "resize +2", opts(noremap, silent) },
  { "<C-Down>", cmd "resize -2", opts(noremap, silent) },
  { "<C-Left>", cmd "vertical resize -2", opts(noremap, silent) },
  { "<C-Right>", cmd "vertical resize +2", opts(noremap, silent) },
  -- Packer
  { "<Leader>pu", cmd "PackerUpdate", opts(noremap, silent) },
  { "<Leader>pi", cmd "PackerInstall", opts(noremap, silent) },
  { "<Leader>pc", cmd "PackerCompile", opts(noremap, silent) },
  -- Lsp
  { "<Leader>li", cmd "LspInfo", opts(noremap, silent) },
  { "<Leader>ll", cmd "LspLog", opts(noremap, silent) },
  { "<Leader>lr", cmd "LspRestart", opts(noremap, silent) },
  { "<Leader>lf", cmd "lua vim.lsp.buf.format { async = true }", opts(noremap, silent) },
  { "<Leader>le", cmd "lua vim.diagnostic.setloclist()", opts(noremap, silent) },
  { "<Leader>la", cmd "set ft=yaml.ansible", opts(noremap, silent) },
  { "gi", cmd "vim.lsp.buf.implementation", opts(noremap, silent) },
  { "gD", cmd "vim.lsp.buf.declaration", opts(noremap, silent) },
  -- Lspsaga
  { "[e", cmd "Lspsaga diagnostic_jump_next", opts(noremap, silent) },
  { "]e", cmd "Lspsaga diagnostic_jump_prev", opts(noremap, silent) },
  { "K", cmd "Lspsaga hover_doc", opts(silent) },
  { "ga", cmd "Lspsaga code_action", opts(noremap, silent) },
  { "gd", cmd "Lspsaga peek_definition", opts(noremap, silent) },
  { "gs", cmd "Lspsaga signature_help", opts(noremap, silent) },
  { "gr", cmd "Lspsaga rename", opts(noremap, silent) },
  { "gh", cmd "Lspsaga lsp_finder", opts(noremap, silent) },
  { "<A-d>", cmd "Lspsaga open_floaterm", opts(noremap, silent) },
  { "<Leader>o", cmd "LSoutlineToggle", opts(noremap, silent) },
  { "<Leader>g", cmd "Lspsaga open_floaterm lazygit", opts(noremap, silent) },
  -- Nvimtree
  { "<Leader>e", cmd "NvimTreeToggle", opts(noremap, silent) },
  -- Telescope
  { "<Leader>b", cmd "Telescope buffers", opts(noremap, silent) },
  { "<Leader>fa", cmd "Telescope live_grep", opts(noremap, silent) },
  { "<Leader>fb", cmd "Telescope file_browser", opts(noremap, silent) },
  { "<Leader>fd", cmd "Telescope dotfiles", opts(noremap, silent) },
  { "<Leader>ff", cmd "Telescope find_files", opts(noremap, silent) },
  { "<Leader>fg", cmd "Telescope gif_files", opts(noremap, silent) },
  { "<Leader>fw", cmd "Telescope grep_string", opts(noremap, silent) },
  { "<Leader>fh", cmd "Telescope help_tags", opts(noremap, silent) },
  { "<Leader>fo", cmd "Telescope oldfiles", opts(noremap, silent) },
  { "<Leader>gc", cmd "Telescope git_commits", opts(noremap, silent) },
  -- Gitsings
  { "<Leader>gd", cmd "Gitsigns diffthis", opts(noremap, silent) },
  -- save quit
  { "<Leader>w", cmd "wa!", opts(noremap) },
  { "<Leader>q", cmd "q!", opts(noremap) },
}

-- Lspsaga floaterminal
tmap { "<A-d>", [[<C-\><C-n>:Lspsaga close_floaterm<CR>]], opts(noremap, silent) }
