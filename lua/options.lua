require "nvchad.options"

-- add yours here!

local opt = vim.opt
local o = vim.o

o.clipboard = ''
o.autoread = true

--o.cursorlineopt ='both' -- to enable cursorline!

local languages = {
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
      opt.shiftwidth = 4
      opt.tabstop = 4
      opt.softtabstop = 4
    end,
  })
end

