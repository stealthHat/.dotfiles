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

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format {
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  }
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        lsp_formatting(bufnr)
      end,
    })
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
