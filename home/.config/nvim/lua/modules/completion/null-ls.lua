local null_ls = require "null-ls"
local formatting = null_ls.builtins.formatting
local completion = null_ls.builtins.completion

null_ls.setup {
  debug = false,
  sources = {
    completion.luasnip,
    formatting.prettier,
    formatting.stylua,
    formatting.shfmt.with { extra_args = { "-i", "2", "-ci", "-bn" } },
  },
}
