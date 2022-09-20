local plugin = require("core.pack").register_plugin
local conf = require "modules.completion.config"

local enable_lsp_filetype = {
  "lua",
  "sh",
  "c",
  "cpp",
  "go",
  "typescript",
  "typescriptreact",
  "javascript",
  "python",
  "yaml",
  "yaml.ansible", -- https://github.com/neovim/nvim-lspconfig/issues/2046
  "terraform",
  "dockerfile",
  "json",
}

plugin { "neovim/nvim-lspconfig", ft = enable_lsp_filetype, config = conf.nvim_lsp }

plugin { "glepnir/lspsaga.nvim", branch = "main", after = "nvim-lspconfig", config = conf.lspsaga }

plugin {
  "hrsh7th/nvim-cmp",
  config = conf.nvim_cmp,
  requires = {
    { "hrsh7th/cmp-nvim-lsp", after = "nvim-lspconfig" },
    { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
    { "hrsh7th/cmp-path", after = "nvim-cmp" },
    { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
    { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" },
    { "onsails/lspkind.nvim" },
  },
}

plugin { "L3MON4D3/LuaSnip", config = conf.lua_snip, requires = { "rafamadriz/friendly-snippets" } }

plugin { "jose-elias-alvarez/null-ls.nvim", config = conf.null_ls }

plugin { "windwp/nvim-autopairs", event = "InsertEnter", config = conf.auto_pairs }
