-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.gui")
require("oil").setup()
vim.cmd("colorscheme material-deep-ocean")
