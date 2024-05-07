require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local nomap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "v" }, "<leader>y", '"+y')
map({ "n", "v" }, "<leader>d", '"+d')
map({ "n", "v" }, "<leader>p", '"+p')

map("n", "<A-F>", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format code" })

map({ "n", "i", "v" }, "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Open diffview" })

map("n", "<leader>ss", "<cmd>SessionSave<cr>", { desc = "Save session" })
map("n", "<leader>sl", "<cmd>SessionLoad<cr>", { desc = "Load session" })
map("n", "<leader>sd", "<cmd>SessionDelete<cr>", { desc = "Delete session" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move this line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move this line up" })
map("v", "<", "<gv", { desc = "Decrease indent" })
map("v", ">", ">gv", { desc = "Increase indent" })
