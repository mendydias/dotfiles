-- Unset space
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- Sets the leader and local leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set proper color support
vim.opt.termguicolors = true
-- Package manager of choice is lazy.nvim
-- Yoinked from lazy.nvim's README
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Git related plugins
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
  { "lewis6991/gitsigns.nvim", opts = {} },

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Easily change surrounding characters like < '' to ""
  'tpope/vim-surround',

  -- JSON validation and auto-complete based on SchemaStore
  "b0o/schemastore.nvim",

  -- Rainbow highlighting
  "HiPhish/rainbow-delimiters.nvim",

  -- Code documentation snippet generator
  {
    'kkoomen/vim-doge',
    build = ':call doge#install()'
  },
  -- Other plugins to be imported
  { import = "mendy.plugins" },
  { import = "mendy.themes" }
}, {})

require("mendy.config")
require("mendy.keybindings")
require("mendy.gui")

-- This setting is only for the zenbones theme. Comment it when changing the theme.
-- vim.g.zenbones_transparent_background = true

vim.cmd("colorscheme catppuccin-mocha")

-- Config for quickscope
-- vim: ts=2 sts=2 sw=2 et
