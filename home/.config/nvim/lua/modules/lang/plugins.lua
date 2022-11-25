local plugin = require("core.pack").register_plugin
local conf = require "modules.lang.config"

plugin {
  "nvim-treesitter/nvim-treesitter",
  event = "BufRead",
  run = ":TSUpdate",
  after = "telescope.nvim",
  config = conf.nvim_treesitter,
  requires = {
    { "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter" },
    { "p00f/nvim-ts-rainbow", after = "nvim-treesitter" },
    { "nvim-treesitter/nvim-treesitter-context", after = "nvim-treesitter" },
  },
}
