local plugin = require("core.pack").register_plugin
local conf = require "modules.ui.config"

plugin { "glepnir/zephyr-nvim", config = conf.zephyr }

plugin {
  "glepnir/galaxyline.nvim",
  branch = "main",
  config = conf.galaxyline,
  requires = "kyazdani42/nvim-web-devicons",
}

plugin {
  "kyazdani42/nvim-tree.lua",
  cmd = "NvimTreeToggle",
  config = conf.nvim_tree,
  requires = "kyazdani42/nvim-web-devicons",
}

plugin {
  "lewis6991/gitsigns.nvim",
  event = { "BufRead", "BufNewFile" },
  config = conf.gitsigns,
  requires = { "nvim-lua/plenary.nvim", opt = true },
}

plugin { "akinsho/nvim-bufferline.lua", config = conf.nvim_bufferline, requires = "kyazdani42/nvim-web-devicons" }
