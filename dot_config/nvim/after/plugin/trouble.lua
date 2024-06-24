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
