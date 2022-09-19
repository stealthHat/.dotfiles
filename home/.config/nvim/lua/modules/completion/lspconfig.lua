local api = vim.api
local lspconfig = require "lspconfig"

local capabilities = vim.lsp.protocol.make_client_capabilities()

if not packer_plugins["cmp-nvim-lsp"].loaded then
  vim.cmd [[packadd cmp-nvim-lsp]]
end
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local signs = {
  Error = " ",
  Warn = " ",
  Info = " ",
  Hint = " ",
}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config {
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  virtual_text = {
    source = true,
  },
}

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    api.nvim_create_autocmd("BufWritePre", {
      pattern = client.config.filetypes,
      callback = function()
        vim.lsp.buf.format {
          bufnr = bufnr,
          async = true,
        }
      end,
    })
  end
--  if client.name == "tsserver" then
--    client.resolved_capabilities.document_formatting = false
--  end
  if client.name == "sumneko_lua" then
    client.resolved_capabilities.document_formatting = false
  end
end

local servers = {
  "sumneko_lua",
  "bashls",
  "clangd",
  "gopls",
  "golangci_lint_ls",
  "tsserver",
  "eslint",
  "pyright",
  "yamlls",
  "ansiblels",
  "terraformls",
  "dockerls",
  "jsonls",
}

for _, server in ipairs(servers) do
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  local has_custom_opts, server_custom_opts = pcall(require, "modules.completion.settings." .. server)
  if has_custom_opts then
    opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
  end

  lspconfig[server].setup(opts)
end
