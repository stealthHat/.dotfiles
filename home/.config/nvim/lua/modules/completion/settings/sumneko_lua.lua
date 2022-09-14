return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "packer_plugins", "shell", "turtle", "fs", "multishell", "rednet", "gps", "vector", "sleep", "os", "read"},
      },
      runtime = { version = "LuaJIT" },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  },
}
