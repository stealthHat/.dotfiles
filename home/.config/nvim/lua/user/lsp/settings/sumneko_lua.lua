return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "shell", "turtle", "fs", "multishell", "rednet", "gps", "vector", "sleep", "os", "read"},
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  },
}
