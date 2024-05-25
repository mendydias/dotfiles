local config = {
  cmd = { "/home/sobasudo/.local/share/nvim/mason/packages/jdtls/bin/jdtls" },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}

local jdtls = require("jdtls")

vim.keymap.set("n", "<A-o>", function() jdtls.organize_imports() end, {})
vim.keymap.set("n", "<leader>crv", function() jdtls.extract_variable() end, {})
vim.keymap.set("n", "<leader>crc", function() jdtls.extract_constant() end, {})

vim.keymap.set("v", "<leader>crv", function() jdtls.extract_variable(true) end, {})
vim.keymap.set("v", "<leader>crc", function() jdtls.extract_constant(true) end, {})
vim.keymap.set("v", "<leader>crm", function() jdtls.extract_method(true) end, {})
