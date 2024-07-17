-- Automatic session management
return {
    'rmagatti/auto-session',
    config = function()
        require("auto-session").setup {
            log_level = "error",
        }

        vim.keymap.set("n", "<leader>sav", ":SessionSave<cr>", {})
        vim.keymap.set("n", "<leader>res", ":SessionRestore<cr>", {})
    end
}
