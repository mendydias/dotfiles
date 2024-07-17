return {
    'piersolenski/telescope-import.nvim',
    dependencies = 'nvim-telescope/telescope.nvim',
    config = function()
        require("telescope").load_extension("import")
        vim.keymap.set("n", "<leader>sim", ":Telescope import<cr>",  {})
    end
}
