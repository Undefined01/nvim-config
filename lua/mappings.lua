require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "v" }, "<leader>y", '"+y')
map({ "n", "v" }, "<leader>d", '"+d')
map({ "n", "v" }, "<leader>p", '"+p')

map("n", "<A-F>", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format code" })

map({ "n", "i", "v" }, "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find files" })

local nomap = vim.keymap.del

nomap("t", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
