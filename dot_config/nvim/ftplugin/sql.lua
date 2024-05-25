vim.lsp.start({cmd = {"sql-language-server", "up", "--method", "stdio"}, root_dir = vim.loop.cwd()})
