local config = {}

function config.telescope()
  if not packer_plugins["plenary.nvim"].loaded then
    vim.cmd [[packadd plenary.nvim]]
    vim.cmd [[packadd telescope-fzy-native.nvim]]
    vim.cmd [[packadd telescope-file-browser.nvim]]
  end
  require("telescope").setup {
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
      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
      qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
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
  require("telescope").load_extension "fzy_native"
end

function config.mini_nvim()
  require("mini.surround").setup()
  require("mini.pairs").setup()
  require("mini.trailspace").setup { only_in_normal_buffers = false }
end

return config
