vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, { desc = 'Toggle Diagnostics Window' })
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end,
  { desc = 'Toggle Workspace Diagnostics' })
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end,
  { desc = 'Toggle Document Diagnostics' })
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end,
  { desc = 'Toggle Diagnostics QuickFix' })
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end,
  { desc = 'Toggle open Location List' })
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end, { desc = 'Toggle LSP references' })

require("todo-comments").setup()

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

vim.keymap.set("n", "]te", function()
  require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING" } })
end, { desc = "Next error/warning todo comment" })

vim.keymap.set("n", "<leader>xt", ":TodoTrouble<cr>", { desc = 'Toggle Trouble diagnostics in a prettier window' })
vim.keymap.set("n", "<leader>st", ":TodoTelescope<cr>", { desc = 'Toggle Trouble diagnostics in telescope' })
