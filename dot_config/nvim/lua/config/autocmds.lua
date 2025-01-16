-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local screenCenter = vim.api.nvim_create_augroup("ScreenCenter", {})
vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = "markdown",
  group = screenCenter,
  command = "norm zz",
})
