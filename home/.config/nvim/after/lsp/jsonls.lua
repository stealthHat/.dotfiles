return {
  settings = {
    json = {
      validate = { enable = true },
      schemas = {
        { fileMatch = { "package.json" }, url = "https://www.schemastore.org/package.json" },
        { fileMatch = { "tsconfig*.json" }, url = "https://www.schemastore.org/tsconfig.json" },
        { fileMatch = { ".eslintrc.json" }, url = "https://www.schemastore.org/eslintrc.json" },
      },
    },
  },
}
