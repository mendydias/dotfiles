-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

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

vim.keymap.set(
  "v",
  "<leader>oln",
  "<cmd>ObsidianLinkNew<cr>",
  { desc = "Create a new link from the in-line visual selection" }
)

vim.keymap.set(
  "v",
  "<leader>ole",
  "<cmd>ObsidianExtractNote<cr>",
  { desc = "Extract visual selection to a new note and link to it in the current buffer at the cursor location" }
)
