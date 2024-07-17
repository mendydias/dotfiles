local telescope = require("telescope.builtin")
-- Basic keymaps for telescope
vim.keymap.set("n", "<leader>sf", telescope.find_files, { desc = 'Search Files' })
vim.keymap.set("n", "<leader>sg", telescope.live_grep, { desc = 'Search Live Grep' })
vim.keymap.set("n", "<leader>sb", telescope.buffers, { desc = 'Search open buffers' })
vim.keymap.set("n", "<leader>sh", telescope.help_tags, { desc = 'Search Vim Help Tags' })
vim.keymap.set("n", "<leader>sz", telescope.commands, { desc = 'Search NVim Commands' })
vim.keymap.set("n", "<leader>sc", function()
    telescope.colorscheme({
        enable_preview = true
    })
end, { desc = 'Search and Live Preview Colorschemes' })
vim.keymap.set("n", "<leader>sl", telescope.loclist, { desc = 'Search Location List' })
vim.keymap.set("n", "<leader>sq", telescope.quickfix, { desc = 'Search Quickfix List' })
vim.keymap.set("n", "<leader>sr", telescope.registers, { desc = 'Search Registers' })
vim.keymap.set("n", "<leader>sd", telescope.diagnostics, { desc = 'Search Diagnostics' })
vim.keymap.set("n", "<leader>sym", telescope.lsp_document_symbols, { desc = 'Search Current LSP Symbols' })
vim.keymap.set("n", "<leader>sgb", telescope.git_branches, { desc = 'Git Search Branches' })
vim.keymap.set("n", "<leader>sgc", telescope.git_commits, { desc = 'Git Search Commits' })
vim.keymap.set("n", "<leader>st", telescope.treesitter, { desc = 'Search Treesitter' })
vim.keymap.set("n", "<leader>sk", telescope.keymaps, { desc = 'Search Keymaps' })
vim.keymap.set("n", "<leader>su", telescope.lsp_references, { desc = 'Search LSP references' })

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- Telescope live_grep in git root
-- Function to find the git root directory based on the current buffer's path
local function find_git_root()
    -- Use the current buffer's path as the starting point for the git search
    local current_file = vim.api.nvim_buf_get_name(0)
    local current_dir
    local cwd = vim.fn.getcwd()
    -- If the buffer is not associated with a file, return nil
    if current_file == '' then
        current_dir = cwd
    else
        -- Extract the directory from the current file's path
        current_dir = vim.fn.fnamemodify(current_file, ':h')
    end

    -- Find the Git root directory from the current file's path
    local git_root = vim.fn.systemlist('git -C ' .. vim.fn.escape(current_dir, ' ') .. ' rev-parse --show-toplevel')[1]
    if vim.v.shell_error ~= 0 then
        print 'Not a git repository. Searching on current working directory'
        return cwd
    end
    return git_root
end

-- Custom live_grep function to search in git root
local function live_grep_git_root()
    local git_root = find_git_root()
    if git_root then
        require('telescope.builtin').live_grep {
            search_dirs = { git_root },
        }
    end
end

vim.api.nvim_create_user_command('LiveGrepGitRoot', live_grep_git_root, {})

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>s?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>s/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

local function telescope_live_grep_open_files()
    require('telescope.builtin').live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
    }
end
vim.keymap.set('n', '<leader>sgo', telescope_live_grep_open_files, { desc = '[S]earch and [G]rep [O]pen files' })
vim.keymap.set('n', '<leader>sbu', require('telescope.builtin').builtin, { desc = '[S]earch [B]uiltin [U]' })
vim.keymap.set('n', '<leader>s*', require('telescope.builtin').grep_string, { desc = '[S]earch under current word [*]' })
vim.keymap.set('n', '<leader>sgr', ':LiveGrepGitRoot<cr>', { desc = '[S]earch from [G]rep [R]oot' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- Harpoon integration
local harpoon = require("harpoon")
harpoon:setup({
    settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
    }
})
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end
vim.keymap.set("n", "<leader>m", function() harpoon:list():append() end, { desc = 'Append to Harpoon File List' })
vim.keymap.set("n", "<M-h>", function() toggle_telescope(harpoon:list()) end)
vim.keymap.set("n", "<M-m>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<M-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<M-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<M-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<M-4>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-/>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-.>", function() harpoon:list():next() end)

-- Set up remote-sshfs
require('telescope').load_extension 'remote-sshfs'

require 'telescope'.load_extension 'repo'

vim.keymap.set("n", "<leader>sp", require 'telescope'.extensions.repo.list)
