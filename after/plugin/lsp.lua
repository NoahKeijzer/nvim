local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        enable = true,
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
})

lspconfig.ts_ls.setup({})

lspconfig.pyright.setup({})

lspconfig.gopls.setup({})

lspconfig.rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
    },
  },
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true
})

