require "nvchad.options"

-- add yours here!

local opt = vim.opt
local o = vim.o

o.clipboard = ''
--l o.cursorlineopt ='both' -- to enable cursorline!

languages = {
  "c",
  "cpp",
  "java",
  "kotlin",
  "scala",
  "python",
  "rust",
  "go",
  "markdown",
}

for _, lang in ipairs(languages) do
  vim.api.nvim_create_autocmd("FileType", {
    pattern = lang,
    callback = function()
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
      vim.opt.softtabstop = 4
    end,
  })
end

