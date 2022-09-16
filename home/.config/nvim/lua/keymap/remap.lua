local keymap = require "core.keymap"
local nmap = keymap.nmap
local silent, noremap = keymap.silent, keymap.noremap
local opts = keymap.new_opts
local cmd = keymap.cmd

-- noremal remap
nmap {
  -- close buffer
  { "<C-x>x", cmd "bdelete", opts(noremap, silent) },
  -- buffer jump
  { "]b", cmd "bn", opts(noremap) },
  { "[b", cmd "bp", opts(noremap) },
  -- remove trailing white space
  { "<Leader>t", cmd "TrimTrailingWhitespace", opts(noremap) },
  -- resize window
  { "<A-[>", cmd "vertical resize -5", opts(noremap, silent) },
  { "<A-]>", cmd "vertical resize +5", opts(noremap, silent) },
}
