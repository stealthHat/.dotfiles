vim.pack.add { "https://github.com/nvim-treesitter/nvim-treesitter" }

local languages = {
  "bash",
  "c",
  "diff",
  "dockerfile",
  "gitcommit",
  "go",
  "gomod",
  "gowork",
  "hcl",
  "javascript",
  "json",
  "make",
  "python",
  "sql",
  "terraform",
  "toml",
  "typescript",
  "xml",
  "yaml",
}

require("nvim-treesitter").install(languages)

vim.api.nvim_create_autocmd("FileType", {
  callback = function(ev)
    local lang = vim.treesitter.language.get_lang(ev.match)
    if lang and vim.list_contains(languages, lang) and vim.treesitter.language.add(lang) then
      vim.treesitter.start(ev.buf, lang)
    end
  end,
})
