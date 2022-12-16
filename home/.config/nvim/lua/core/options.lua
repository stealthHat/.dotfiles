local options = {
  --General
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  swapfile = false, -- creates a swapfile
  completeopt = { "menu", "menuone", "noselect" }, -- mostly just for cmp
  fileencoding = "utf-8", -- the encoding written to a file
  undofile = true, -- enable persistent undo
  history = 2000, -- Remember N lines in history
  hidden = true, -- Enable background buffers

  -- Neovim UI
  number = true, -- set numbered lines
  showmatch = true, -- Highlight matching parenthesis
  termguicolors = true, -- set term gui colors (most terminals support this)
  showtabline = 2, -- always show tabs
  conceallevel = 2, -- so that `` is visible in markdown files
  hlsearch = true, -- highlight all matches on previous search pattern
  ignorecase = true, -- ignore case in search patterns
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  smartcase = true, -- smart case
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  wrap = true, -- display lines as one long line

  -- Tabs, indent
  expandtab = true, -- convert tabs to spaces
  shiftwidth = 4, -- the number of spaces inserted for each indentation
  tabstop = 4, -- insert 2 spaces for a tab
  smartindent = true, -- make indenting smarter again
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

local disabled_built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end
