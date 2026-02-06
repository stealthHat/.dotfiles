local types = require "luasnip.util.types"
local loaders = require "luasnip.loaders.from_vscode"

require("luasnip").config.set_config {
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

loaders.lazy_load()
loaders.lazy_load { paths = { "./snippets/" } }
