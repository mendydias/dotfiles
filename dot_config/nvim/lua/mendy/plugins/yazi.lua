local H = {}

H.root_cache = {}

function find_root(path)
    -- disable conflicting vim option
    vim.o.autochdir = false

    names = { '.git', 'Makefile' }
    fallback = function() return nil end

    if path == '' then return end
    --
    -- Try using cache
    local res = H.root_cache[path]
    if res ~= nil then return res end

    -- Find root
    local root_file = vim.fs.find(names, { path = path, upward = true })[1]
    if root_file ~= nil then
        res = vim.fs.dirname(root_file)
        print("res is now: ", res)
    end

    -- Use absolute path to an existing directory
    if type(res) ~= 'string' then return end
    res = vim.fn.fnamemodify(res, ':p')
    if vim.fn.isdirectory(res) == 0 then return end

    -- Cache result per directory path
    H.root_cache[path] = res

    return res
end

return {
    "mikavilpas/yazi.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    keys = {
        -- 👇 in this section, choose your own keymappings!
        {
            "<leader>-",
            function()
                require("yazi").yazi()
            end,
            desc = "Open the file manager",
        },
        {
            -- Open in the current working directory
            "<leader>gy",
            function()
                require("yazi").yazi(nil, vim.fn.getcwd())
            end,
            desc = "Open the file manager in nvim's working directory",
        },
    },
    opts = {
        open_for_directories = true,
        hooks = {
            yazi_closed_successfully = function(chosen_files, config)
                local root = find_root(chosen_files)
                vim.fn.chdir(root);
            end
        }
    },
}
