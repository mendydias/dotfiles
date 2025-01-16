return {
  "xvzc/chezmoi.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("chezmoi").setup({
      -- your configurations
      -- edit = {
      --   watch = false,
      --   force = false,
      -- },
      -- notification = {
      --   on_open = true,
      --   on_apply = true,
      --   on_watch = false,
      -- },
      -- telescope = {
      --   select = { "<CR>" },
      -- },
    })
    --  Auto command to treat all files in local/share/chezmoi as source config files to be pushed
    --  e.g. ~/.local/share/chezmoi/*
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      pattern = { os.getenv("HOME") .. "/.local/share/chezmoi/*" },
      callback = function()
        vim.schedule(require("chezmoi.commands.__edit").watch)
      end,
    })
    -- Telescope integration
    local telescope = require("telescope")
    telescope.load_extension("chezmoi")
    vim.keymap.set("n", "<leader>fC", telescope.extensions.chezmoi.find_files, {})
  end,
}
