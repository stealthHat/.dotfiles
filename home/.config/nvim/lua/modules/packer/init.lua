local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- general
  use "christoomey/vim-tmux-navigator"

  -- completion
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"
  use "glepnir/lspsaga.nvim"
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-nvim-lua" },
      { "onsails/lspkind.nvim" },
    },
  }

  -- tools
  use "echasnovski/mini.nvim"
  use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim", opt = true } }
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    requires = {
      { "nvim-treesitter/nvim-treesitter-textobjects" },
      { "p00f/nvim-ts-rainbow" },
      { "nvim-treesitter/nvim-treesitter-context" },
    },
  }
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      { "nvim-lua/plenary.nvim", opt = true },
      { "nvim-telescope/telescope-fzy-native.nvim", opt = true },
    },
  }

  -- ui
  use "glepnir/zephyr-nvim"
  use { "glepnir/galaxyline.nvim", requires = "kyazdani42/nvim-web-devicons" }
  use { "akinsho/nvim-bufferline.lua", requires = "kyazdani42/nvim-web-devicons" }
  use { "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)