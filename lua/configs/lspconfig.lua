require("nvchad.configs.lspconfig").defaults()

local servers = {
  "bashls",
  "html",
  "cssls",
  "lua_ls",

  "clangd",
  "pylsp",
  "gopls",
  "rust_analyzer",
  "jdtls",
  "kotlin_language_server",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
