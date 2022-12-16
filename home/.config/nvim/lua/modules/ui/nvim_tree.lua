require("nvim-tree").setup {
  view = {
    width = 30,
    side = "right",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    hide_root_folder = false,
    mappings = {
      list = {
        { key = { "l" }, action = "edit" },
        { key = { "s" }, action = "split" },
        { key = { "v" }, action = "vsplit" },
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          deleted = "",
          ignored = "",
          renamed = "",
          staged = "",
          unmerged = "",
          unstaged = "",
          untracked = "ﲉ",
        },
      },
    },
  },
}
