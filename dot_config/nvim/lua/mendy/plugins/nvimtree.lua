return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require "nvim-tree".setup(
            {
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 33,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
            }
        )
    end,
    keys = {
        {"<leader>e", ":NvimTreeToggle<cr>", desc = "Toggle NvimTree"},
    }
}
