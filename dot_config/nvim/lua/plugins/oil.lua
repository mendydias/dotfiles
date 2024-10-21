return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup()
  end,
  keys = {
    { "-", ":Oil<CR>", desc = "Opens the Oil file browser" },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
