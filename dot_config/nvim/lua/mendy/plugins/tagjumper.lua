return {
    'harrisoncramer/jump-tag',
    config = function()
        vim.api.nvim_set_keymap('n', '<leader>55', ':lua require("jump-tag").jumpParent()<CR>',
            { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>5n', ':lua require("jump-tag").jumpNextSibling()<CR>',
            { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>5p', ':lua require("jump-tag").jumpPrevSibling()<CR>',
            { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>5c', ':lua require("jump-tag").jumpChild()<CR>',
            { noremap = true, silent = true })
    end,
}
