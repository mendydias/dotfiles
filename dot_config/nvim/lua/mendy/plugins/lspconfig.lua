return {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
        -- Lazy load crumb navigation on code context
        -- For example, enables you to quickly list all code contexts (class, method, etc) in current file and quickly switch to it
        -- Needs to be loaded before lsp as a dependency
        {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                {
                    "SmiteshP/nvim-navic",
                    opts = {
                        lsp = {
                            auto_attach = true,
                        },
                    }
                },
                "MunifTanjim/nui.nvim"
            },
            opts = { lsp = { auto_attach = true } }
        },
        {
            'nvim-java/nvim-java',
            dependencies = {
                'nvim-java/lua-async-await',
                'nvim-java/nvim-java-core',
                'nvim-java/nvim-java-test',
                'nvim-java/nvim-java-dap',
                'MunifTanjim/nui.nvim',
                'neovim/nvim-lspconfig',
                'mfussenegger/nvim-dap',
                {
                    'williamboman/mason.nvim',
                    opts = {
                        registries = {
                            'github:nvim-java/mason-registry',
                            'github:mason-org/mason-registry',
                        },
                    },
                }
            },
        },
        'williamboman/mason-lspconfig.nvim',
        -- Useful status updates for LSP
        { 'j-hui/fidget.nvim', opts = {} },
        -- Additional lua configuration, makes nvim stuff amazing!
        { 'folke/neodev.nvim', opts = {} },
    },
}
