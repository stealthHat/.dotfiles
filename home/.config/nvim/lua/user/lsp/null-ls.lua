local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier,
    formatting.stylua,
    formatting.shellharden,
    diagnostics.shellcheck,
    formatting.shfmt.with { extra_args = { "-i", "2", "-ci", "-bn" } },
  },
}
