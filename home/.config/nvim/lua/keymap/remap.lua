local keymap = require "core.keymap"
local nmap, imap, cmap, tmap = keymap.nmap, keymap.imap, keymap.cmap, keymap.tmap
local silent, noremap = keymap.silent, keymap.noremap
local expr = keymap.expr
local opts = keymap.new_opts
local cmd = keymap.cmd

-- noremal remap
nmap {
  -- close buffer
  { "<C-x>k", cmd "bdelete", opts(noremap, silent) },
  -- buffer jump
  { "]b", cmd "bn", opts(noremap) },
  { "[b", cmd "bp", opts(noremap) },
  -- remove trailing white space
  { "<Leader>t", cmd "TrimTrailingWhitespace", opts(noremap) },
  -- resize window
  { "<A-[>", cmd "vertical resize -5", opts(noremap, silent) },
  { "<A-]>", cmd "vertical resize +5", opts(noremap, silent) },
}

-- insertmode remap
imap {
  { "<C-w>", "<C-[>diwa", opts(noremap) },
  { "<C-h>", "<Bs>", opts(noremap) },
  { "<C-d>", "<Del>", opts(noremap) },
  { "<C-u>", "<C-G>u<C-u>", opts(noremap) },
  { "<C-b>", "<Left>", opts(noremap) },
  { "<C-f>", "<Right>", opts(noremap) },
  { "<C-a>", "<Esc>^i", opts(noremap) },
  { "<C-j>", "<Esc>o", opts(noremap) },
  { "<C-k>", "<Esc>O", opts(noremap) },
  { "<C-s>", "<ESC>:w<CR>", opts(noremap) },
  {
    "<C-e>",
    function()
      return vim.fn.pumvisible() == 1 and "<C-e>" or "<End>"
    end,
    opts(expr),
  },
}

-- commandline remap
cmap {
  { "<C-b>", "<Left>", opts(noremap) },
  { "<C-f>", "<Right>", opts(noremap) },
  { "<C-a>", "<Home>", opts(noremap) },
  { "<C-e>", "<End>", opts(noremap) },
  { "<C-d>", "<Del>", opts(noremap) },
  { "<C-h>", "<BS>", opts(noremap) },
}

tmap { "<Esc>", [[<C-\><C-n>]], opts(silent) }
