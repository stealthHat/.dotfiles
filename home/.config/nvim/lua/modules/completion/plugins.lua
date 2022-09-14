local plugin = require("core.pack").register_plugin
local conf = require "modules.completion.config"

local enable_lsp_filetype = {
  "go",
  "lua",
  "sh",
  "rust",
  "c",
  "cpp",
  "typescript",
  "typescriptreact",
  "javascript",
  "json",
  "python",
  "yaml",
}

plugin { "neovim/nvim-lspconfig", ft = enable_lsp_filetype, config = conf.nvim_lsp }

plugin { "glepnir/lspsaga.nvim", branch = "main", after = "nvim-lspconfig", config = conf.lspsaga }

plugin {
  "hrsh7th/nvim-cmp",
  config = conf.nvim_cmp,
  requires = {
    { "hrsh7th/cmp-nvim-lsp", after = "nvim-lspconfig" },
    { "hrsh7th/cmp-path", after = "nvim-cmp" },
    { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
    { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
  },
}

plugin { "L3MON4D3/LuaSnip", event = "InsertCharPre", config = conf.lua_snip }

plugin { "jose-elias-alvarez/null-ls.nvim", config = conf.null_ls }

plugin { "windwp/nvim-autopairs", event = "InsertEnter", config = conf.auto_pairs }

plugin { 'rhysd/vim-operator-surround', event = 'BufRead', requires = 'kana/vim-operator-user' }
