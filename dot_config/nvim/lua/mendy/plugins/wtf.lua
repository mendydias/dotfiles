-- Search diagnostics and problems straight from nvim
return {
    "piersolenski/wtf.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    opts = {},
    keys = {
        {
            mode = { "n" },
            "<leader>hwat",
            function()
                require("wtf").search()
            end,
            desc = "Search diagnostic with Google",
        },
    },
}
