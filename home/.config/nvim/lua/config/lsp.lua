vim.lsp.codelens.enable(true)

vim.lsp.enable {
  "lua_ls",
  "stylua",
  "gopls",
  "golangci_lint_ls",
  "ts_ls",
  "bashls",
  "yamlls",
  "dockerls",
  "jsonls",
  "pyright",
  "ruff",
  "terragrunt_ls",
  "terraformls",
}

vim.diagnostic.config {
  virtual_text = true,
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = " ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(ev)
    if #vim.lsp.get_clients { bufnr = ev.buf, method = "textDocument/formatting" } > 0 then
      vim.lsp.buf.format { bufnr = ev.buf, timeout_ms = 1000 }
    end
  end,
})

local function peek_definition()
  local params = function(client)
    return vim.lsp.util.make_position_params(0, client.offset_encoding)
  end
  vim.lsp.buf_request(0, "textDocument/definition", params, function(_, result, ctx)
    if not result or vim.tbl_isempty(result) then
      return
    end
    local client = vim.lsp.get_client_by_id(ctx.client_id)
    vim.api.nvim_open_win(0, true, { relative = "cursor", row = 1, col = 0, width = math.min(100, vim.o.columns - 4), height = 15, border = "rounded" })
    vim.lsp.util.show_document(result[1] or result, client.offset_encoding, { focus = true })
  end)
end

vim.keymap.set("n", "gd", peek_definition)
