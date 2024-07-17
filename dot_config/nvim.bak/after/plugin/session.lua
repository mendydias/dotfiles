vim.keymap.set("n", "<leader>ss", function()
  require('session-lens').search_session()
end, {desc = "Search saved sessions"})
