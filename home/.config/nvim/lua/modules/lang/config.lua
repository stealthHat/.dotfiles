local config = {}

function config.nvim_treesitter()
  vim.api.nvim_command "set foldmethod=expr"
  vim.api.nvim_command "set foldexpr=nvim_treesitter#foldexpr()"
  require("nvim-treesitter.configs").setup {
    ensure_installed = "all",
    ignore_install = { "phpdoc" },
    highlight = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
    },
    rainbow = {
      enable = true,
      extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    },
  }
end

return config
