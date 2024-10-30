-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- I like centering my scrolls
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<M-a>", "I#<Esc>$")
vim.keymap.set("n", "<M-x>", "^x$")

vim.keymap.set("n", "<F6>", function()
  require("dap").step_into()
end)

vim.keymap.set("n", "<F7>", function()
  require("dap").step_over()
end)

vim.keymap.set("n", "<F8>", function()
  require("dap").run_to_cursor()
end)
