vim.pack.add {
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/refractalize/oil-git-status.nvim",
}

require("oil").setup {
  view_options = { show_hidden = true },
  win_options = { signcolumn = "yes:2" },
  float = {
    padding = 0,
    max_width = 40,
    preview_split = "below",
    override = function(conf)
      conf.col = vim.o.columns - conf.width - 2
      return conf
    end,
  },
}

require("oil-git-status").setup()

vim.keymap.set("n", "<leader>e", "<cmd>Oil --float<cr>")
