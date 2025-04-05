vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.autowrite = true -- Enable auto save
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
opt.conceallevel = 2
opt.completeopt = "menu,menuone,popup"
opt.confirm = true
opt.cursorline = true
opt.expandtab = true
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.foldlevel = 99
opt.formatoptions = "jtcroqln"
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true
opt.inccommand = "nosplit"
opt.jumpoptions = "view" -- Restore view when jumping with marks and C-O
opt.laststatus = 3 -- Global status bar shared by all windows
opt.linebreak = true
opt.list = true
opt.mouse = "a" -- All modes, normal, visual, etc
opt.number = true
opt.relativenumber = true
opt.pumblend = 10 -- Transparent blend of the popup window for code completion
opt.pumheight = 10 -- Max number of items in the popup window for code completion
opt.ruler = false
opt.scrolloff = 4
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
opt.shiftround = true -- Rounding indentation values for > and <
opt.shiftwidth = 2
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.showmode = false
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.spelllang = { "en" }
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.timeoutlen = vim.g.vscode and 1000 or 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200
opt.virtualedit = "block"
opt.wildmode = "longest:full,full"
opt.wrap = false
opt.winminwidth = 5
