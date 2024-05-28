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

local osc52 = require('vim.ui.clipboard.osc52')
local clipboard_cache = {}
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = function(text)
      clipboard_cache['+'] = text
      osc52.copy('+', text)
    end,
    ['*'] = function(text)
      clipboard_cache['*'] = text
      osc52.copy('*', text)
    end,
  },
  -- disabling pasting from OSC 52 because it's not working properly in Windows Terminal
  -- use cached clipboard instead
  paste = {
    ['+'] = function()
      -- return osc52.paste('+')
      return clipboard_cache['+']
    end,
    ['*'] = function()
      return clipboard_cache['*']
    end,
  },
}

