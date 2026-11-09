vim.pack.add {
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim", version = vim.version.range "*" },
}

require("telescope").setup {
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = { prompt_position = "top" },
    },
    file_ignore_patterns = { "node_modules", "%.git/" },
  },
  pickers = {
    find_files = { hidden = true },
  },
}

require("telescope").load_extension "fzf"

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
