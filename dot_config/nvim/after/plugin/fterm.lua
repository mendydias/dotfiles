-- Toggle the terminal
vim.keymap.set("n", "<A-i>", "<CMD>lua require('FTerm').toggle()<CR>")
vim.keymap.set("t", "<A-i>", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>")

-- Exit the current terminal
vim.keymap.set("t", "<A-x>", "<C-\\><C-n><CMD>lua require('FTerm').exit()<CR>" )

-- Scratch terminal
--
-- Sample
-- vim.api.nvim_create_user_command('CargoBuild', function()
--     require('FTerm').scratch({ cmd = {'cargo', 'build', '--target', os.getenv("RUST_TARGET")} })
--     end, { bang = true })
--
-- Code Runner - execute commands in a floating terminal
-- local runners = { lua = 'lua', javascript = 'node' }
--
-- vim.keymap.set('n', '<leader><Enter>', function()
--     local buf = vim.api.nvim_buf_get_name(0)
--     local ftype = vim.filetype.match({ filename = buf })
--     local exec = runners[ftype]
--     if exec ~= nil then
--         require('FTerm').scratch({ cmd = { exec, buf } })
--     end
-- end)
--

-- New Terminal Commands
local fterm = require("FTerm")

local btop = fterm:new({
  ft="fterm_bashtop",
  cmd="bashtop"
})

vim.keymap.set("n", "<A-p>", function()
  btop.toggle(btop)
end)
vim.keymap.set("t", "<C-\\><C-n><A-p>", function()
  btop:toggle()
end)
