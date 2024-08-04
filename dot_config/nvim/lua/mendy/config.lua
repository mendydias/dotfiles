-- Line numbers
-- Lately, I find that it really impedes my workflow and that I end up
vim.wo.number = false
-- vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent and wrapping
-- I have these commented out so that if I ever change my mind, I can just uncomment them.
-- vim.o.breakindent = true
vim.o.wrap = false

-- Lately, I find that it's difficult to work in a team with wierd wrap settings so I just force line breaks now.
-- vim.opt.colorcolumn = "80"
-- vim.o.textwidth = 80

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = false

-- Keep signcolumn on by default
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 500

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Terminal colors (Check with terminal)
vim.o.termguicolors = true

-- Highlight flash on copy/yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})

-- Set netrw list style
vim.g.netrw_liststyle = 3

-- Disable swap file and backup
vim.opt.swapfile = false
vim.opt.backup = false

-- The line numbers are awful to look at. This changes the color to stand out.
-- You can change the colors if you like but I don't really care for it.
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'Plum3', bold = true })
        vim.api.nvim_set_hl(0, 'LineNr', { fg = 'White', bold = true })
        vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'Plum2', bold = true })
    end,
})
