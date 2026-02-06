require("telescope").setup {
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = { prompt_position = "top", results_width = 0.6 },
      vertical = { mirror = false },
    },
    file_ignore_patterns = {
      "node_modules",
      ".git/",
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
}
