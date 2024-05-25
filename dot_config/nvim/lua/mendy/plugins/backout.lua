return {
    "AgusDOLARD/backout.nvim",
    opts = {},
    keys = {
        -- Define your keybinds
        { "<C-F>", "<cmd>lua require('backout').back()<cr>", mode = { "i" } },
        { "<C-f>", "<cmd>lua require('backout').out()<cr>",  mode = { "i" } },
    },
}
