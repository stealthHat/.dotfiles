local plugin = require("core.pack").register_plugin
local conf = require "modules.tools.config"

plugin {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  config = conf.telescope,
  requires = {
    { "nvim-lua/popup.nvim", opt = true },
    { "nvim-lua/plenary.nvim", opt = true },
    { "nvim-telescope/telescope-fzy-native.nvim", opt = true },
  },
}

plugin { "christoomey/vim-tmux-navigator" }

plugin { 'rhysd/vim-operator-surround', event = 'BufRead', requires = 'kana/vim-operator-user' }
