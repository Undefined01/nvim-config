local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    json = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },

    c = { "clang-format" },
    cpp = { "clang-format" },
    csharp = { "omnisharp_codeformat" },
    python = { "black" },
    rust = { "rustfmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
