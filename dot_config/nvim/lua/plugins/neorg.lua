return {
  "nvim-neorg/neorg",
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = "*", -- Pin Neorg to the latest stable release
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              studies = "$HOME/Documents/3.resources/1.notes",
              work = "$HOME/Documents/2.areas/3.work",
            },
            default_workspace = "studies",
          },
        },
        ["core.integrations.telescope"] = {},
        ["core.integrations.image"] = {},
        ["core.latex.renderer"] = {
          render_on_enter = true,
          dpi = 500,
        },
        ["core.export"] = {},
        ["core.export.markdown"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.integrations.nvim-cmp"] = {},
        ["core.summary"] = {
          strategy = "by_path",
        },
        ["external.templates"] = {},
      },
    })
  end,
  dependencies = {
    { "nvim-neorg/neorg-telescope" },
    { "pysan3/neorg-templates", dependencies = { "L3MON4D3/LuaSnip" } },
  },
  keys = {
    { "<leader>obo", ":Telescope neorg switch_workspace<cr>" },
    { "<leader>obh", ":Neorg index<cr>" },
    { "<leader>obr", ":Neorg return<cr>" },
    { "<leader>obpt", ":Telescope neorg find_project_tasks<cr>" },
    { "<leader>obapt", ":Telescope neorg find_aof_project_tasks<cr>" },
    { "<leader>obat", ":Telescope neorg find_aof_tasks<cr>" },
    { "<leader>obct", ":Telescope neorg find_context_tasks<cr>" },
    { "<leader>obfn", ":Telescope neorg find_norg_files<cr>" },
    { "<leader>obfl", ":Telescope neorg find_linkable<cr>" },
    { "<leader>obfb", ":Telescope neorg find_backlinks<cr>" },
    { "<leader>obfh", ":Telescope neorg find_header_backlinks<cr>" },
    { "<leader>obsh", ":Telescope neorg search_headings<cr>" },
    { "<leader>obil", ":Telescope neorg insert_link<cr>" },
    { "<leader>obif", ":Telescope neorg insert_file_link<cr>" },
  },
}
