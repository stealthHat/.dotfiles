local keyset = vim.keymap.set

local function setcmd(key, cmd)
  keyset("n", key, "<cmd>" .. cmd .. "<CR>")
end

vim.g.mapleader = " "

keyset("n", "Q", "<nop>")

setcmd("<Leader>w", "wa!")
setcmd("<Leader>q", "q!")

setcmd("<esc>", "noh")
-- close buffer
setcmd("<C-x>x", "bdelete")

-- buffer jump
setcmd("]b", "bn")
setcmd("[b", "bp")

-- resize window
setcmd("<C-Up>", "resize +2")
setcmd("<C-Down>", "resize -2")
setcmd("<C-Left>", "vertical resize -2")
setcmd("<C-Right>", "vertical resize +2")

-- Packer
setcmd("<Leader>pu", "PackerUpdate")
setcmd("<Leader>pi", "PackerInstall")
setcmd("<Leader>pc", "PackerCompile")

-- Lsp
setcmd("<Leader>li", "LspInfo")
setcmd("<Leader>ll", "LspLog")
setcmd("<Leader>lr", "LspRestart")
setcmd("<Leader>lf", "lua vim.lsp.buf.format { async = true }")
setcmd("<Leader>le", "lua vim.diagnostic.setloclist()")
setcmd("<Leader>la", "set ft=yaml.ansible")
setcmd("gi", "vim.lsp.buf.implementation")
setcmd("gD", "vim.lsp.buf.declaration")

-- Lspsaga
setcmd("[e", "Lspsaga diagnostic_jump_next")
setcmd("]e", "Lspsaga diagnostic_jump_prev")
setcmd("K", "Lspsaga hover_doc")
setcmd("ga", "Lspsaga code_action")
setcmd("gd", "Lspsaga peek_definition")
setcmd("gs", "Lspsaga signature_help")
setcmd("gr", "Lspsaga rename")
setcmd("gh", "Lspsaga lsp_finder")
setcmd("<A-d>", "Lspsaga open_floaterm")
setcmd("<Leader>o", "LSoutlineToggle")
setcmd("<Leader>g", "Lspsaga open_floaterm lazygit")
keyset("t", "<A-d>", [[<C-\><C-n>:Lspsaga close_floaterm<CR>]])

-- Nvimtree
setcmd("<Leader>e", "NvimTreeToggle")

-- Telescope
setcmd("<Leader>b", "Telescope buffers")
setcmd("<Leader>fa", "Telescope live_grep")
setcmd("<Leader>fb", "Telescope file_browser")
setcmd("<Leader>fd", "Telescope dotfiles")
setcmd("<Leader>ff", "Telescope find_files")
setcmd("<Leader>fg", "Telescope gif_files")
setcmd("<Leader>fw", "Telescope grep_string")
setcmd("<Leader>fh", "Telescope help_tags")
setcmd("<Leader>fo", "Telescope oldfiles")
setcmd("<Leader>gc", "Telescope git_commits")

-- Gitsings
setcmd("<Leader>gd", "Gitsigns diffthis")
