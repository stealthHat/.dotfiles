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

--ls.loaders.from_vscode.lazy_load()
--ls.loaders.from_vscode.lazy_load { paths = { "./snippets/" } }
