local config = {}

function config.nvim_lsp()
  require "modules.completion.lspconfig"
end

function config.lspsaga()
  local saga = require "lspsaga"
  saga.init_lsp_saga()
end

function config.nvim_cmp()
  local cmp = require "cmp"
  cmp.setup {
    preselect = cmp.PreselectMode.Item,
    completion = {
      completeopt = "menu,menuone,noinsert",
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    formatting = {
      fields = { "abbr", "kind", "menu" },
    },
    -- You can set mappings if you want
    mapping = cmp.mapping.preset.insert {
      ["<C-e>"] = cmp.config.disable,
      ["<CR>"] = cmp.mapping.confirm { select = true },
    },
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },
    sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "nvim_lua" },
      { name = "path" },
      { name = "buffer" },
    },
  }
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
          virt_text = { { "<- choiceNode", "Comment" } },
        },
      },
    },
  }
  require("luasnip.loaders.from_lua").lazy_load { paths = vim.fn.stdpath "config" .. "/snippets" }
  require("luasnip.loaders.from_vscode").lazy_load()
  require("luasnip.loaders.from_vscode").lazy_load {
    paths = { "./snippets/" },
  }
end

function config.null_ls()
  local null_ls = require "null-ls"
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
end

function config.auto_pairs()
  require("nvim-autopairs").setup {}
  local status, cmp = pcall(require, "cmp")
  if not status then
    vim.cmd [[packadd nvim-cmp]]
  end
  cmp = require "cmp"
  local cmp_autopairs = require "nvim-autopairs.completion.cmp"
  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
end

return config
