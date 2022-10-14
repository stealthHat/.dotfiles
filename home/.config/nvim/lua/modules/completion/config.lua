local config = {}

function config.nvim_lsp()
  require "modules.completion.lspconfig"
end

function config.lspsaga()
  local saga = require "lspsaga"
  saga.init_lsp_saga()
end

function config.nvim_cmp()
  require "modules.completion.cmpconfig"
end

function config.lua_snip()
  local ls = require "luasnip"
  local types = require "luasnip.util.types"
  ls.config.set_config {
    history = true,
    enable_autosnippets = true,
    updateevents = "TextChanged,TextChangedI",
    ext_opts = {
      [types.choiceNode] = {
        active = {
          virt_text = { { "", "GruvboxOrange" } },
        },
      },
      [types.insertNode] = {
        active = {
          virt_text = { { "", "GruvboxBlue" } },
        },
      },
    },
  }
  require("luasnip.loaders.from_vscode").lazy_load()
  require("luasnip.loaders.from_vscode").lazy_load { paths = { "./snippets/" } }
end

function config.null_ls()
  local null_ls = require "null-ls"
  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    debug = false,
    sources = {
      formatting.prettier,
      formatting.stylua,
      formatting.shellharden,
      formatting.shfmt.with { extra_args = { "-i", "2", "-ci", "-bn" } },
    },
  }
end

return config
