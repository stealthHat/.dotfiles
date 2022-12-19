local telescope = require "telescope"

telescope.setup {
  defaults = {
    layout_config = {
      horizontal = { prompt_position = "top", results_width = 0.6 },
      vertical = { mirror = false },
    },
    file_ignore_patterns = {
      "node_modules",
      ".git/",
    },
    sorting_strategy = "ascending",
    file_previewer = telescope.previewers.vim_buffer_cat.new,
    grep_previewer = telescope.previewers.vim_buffer_vimgrep.new,
    qflist_previewer = telescope.previewers.vim_buffer_qflist.new,
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
  },
}

telescope.load_extension "fzy_native"