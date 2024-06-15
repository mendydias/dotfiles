return {
    "ray-x/navigator.lua",
    dependencies = {
        { "ray-x/guihua.lua",               run = "cd lua/fzy && make" },
        { "neovim/nvim-lspconfig" },
        { "nvim-treesitter/nvim-treesitter" },
    },
    config = function()
        require("navigator").setup({
            mason = true,
        })
    end,
}
