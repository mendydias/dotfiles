-- Save and quit
vim.keymap.set("n", "<leader>w", ":w!<cr>", {})
vim.keymap.set("n", "<leader>q", ":q!<cr>", {})

-- Netrw
vim.keymap.set("n", "-", ":Ex<cr>")
-- Oil
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Windows
-- 1. Window Navigation
vim.keymap.set("n", "<C-h>", "<C-w><Left>", {})
vim.keymap.set("n", "<C-l>", "<C-w><Right>", {})
vim.keymap.set("n", "<C-j>", "<C-w><Down>", {})
vim.keymap.set("n", "<C-k>", "<C-w><Up>", {})
-- 2. Window Resize
vim.keymap.set("n", "<C-Up>", "<C-w>+", {})
vim.keymap.set("n", "<C-Down>", "<C-w>-", {})
vim.keymap.set("n", "<C-Left>", "<C-w>>", {})
vim.keymap.set("n", "<C-Righ>", "<C-w><", {})

-- Plugin manager
vim.keymap.set("n", "<leader>ps", ":Lazy home<cr>", {}) -- plugin list
vim.keymap.set("n", "<leader>pu", ":Lazy sync<cr>", {}) -- plugin install, clean and update
vim.keymap.set("n", "<leader>ms", ":Mason<cr>", {})     -- plugin install, clean and update

-- Movement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move code blocks in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- 1. Make movement less disorienting: centers screen after scrolling
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Editing
-- 1. Cut, copy and paste without saving to registers, and map gui register
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- 2. Faster mode switch from insert to normal
-- use setxkbmap caps:escape from the bash or zsh rc file to swap to capslock based escape
-- vim.keymap.set("i", "jj", "<Esc>", { noremap = true })
-- You can also use the better escape neovim plugin

-- 3. Format document force
vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end, {})

-- Config
-- 1. Edit
vim.keymap.set("n", "<leader>Lc", ":e ~/.config/nvim<cr>")
-- 2. Refresh
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Zen mode and twilight
-- vim.keymap.set("n", "<M-z>", ":ZenMode<cr>")
-- vim.keymap.set("n", "<M-t>", ":Twilight<cr>")

-- Centerpad
-- vim.keymap.set("n", "<M-z>", ":CenterPad<CR>", { desc = "Centers the current buffer" })

-- Switch between files: previous and current
vim.keymap.set("n", "<leader>b", "<C-6>", {})
