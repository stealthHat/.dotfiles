---@type vim.lsp.Config
return {
  root_dir = function(bufnr, on_dir)
    local path = vim.uv.fs_realpath(vim.api.nvim_buf_get_name(bufnr))
    on_dir(path and vim.fs.root(path, {
      { ".emmyrc.json", ".luarc.json", ".luarc.jsonc" },
      { ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml" },
      ".git",
    }))
  end,
  settings = {
    Lua = {
      codeLens = { enable = false },
      completion = { maxSuggestCount = 1000 },
      format = { enable = false },
      hint = { arrayIndex = "Disable", paramName = "Disable" },
      runtime = { version = "LuaJIT" },
      workspace = {
        library = { vim.env.VIMRUNTIME },
      },
    },
  },
}
