return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "packer_plugins", "shell", "turtle", "fs", "multishell", "rednet", "gps", "vector", "sleep", "os", "read" },
      },
      runtime = { version = "LuaJIT" },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
}
