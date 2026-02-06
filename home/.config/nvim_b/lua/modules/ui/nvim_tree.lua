require("nvim-tree").setup {
  view = {
    width = 30,
    side = "right",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
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
