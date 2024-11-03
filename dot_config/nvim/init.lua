-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.gui")
require("oil").setup({
  default_file_explorer = true,
  keymaps = {
    ["g?"] = "actions.show_help",
    ["<CR>"] = "actions.select",
    ["<M-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
    ["<M-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
    ["<M-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
    ["<M-p>"] = "actions.preview",
    ["<M-c>"] = "actions.close",
    ["<M-l>"] = "actions.refresh",
    ["-"] = "actions.parent",
    ["_"] = "actions.open_cwd",
    ["`"] = "actions.cd",
    ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory", mode = "n" },
    ["gs"] = "actions.change_sort",
    ["gx"] = "actions.open_external",
    ["g."] = "actions.toggle_hidden",
    ["g\\"] = "actions.toggle_trash",
  },
  use_default_keymaps = false,
})

vim.cmd("colorscheme tokyonight")
