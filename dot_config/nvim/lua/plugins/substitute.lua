return {
  "gbprod/substitute.nvim",
  opts = {
    on_substitute = nil,
    yank_substituted_text = false,
    preserve_cursor_position = false,
    modifiers = nil,
    highlight_substituted_text = {
      enabled = true,
      timer = 500,
    },
    range = {
      prefix = "s",
      prompt_current_text = false,
      confirm = false,
      complete_word = false,
      subject = nil,
      range = nil,
      suffix = "",
      auto_apply = false,
      cursor_position = "end",
    },
    exchange = {
      motion = false,
      use_esc_to_cancel = true,
      preserve_cursor_position = false,
    },
  },
  config = function()
    vim.keymap.set("n", "js", require("substitute").operator, { noremap = true })
    vim.keymap.set("n", "jss", require("substitute").line, { noremap = true })
    vim.keymap.set("n", "jS", require("substitute").eol, { noremap = true })
    vim.keymap.set("x", "js", require("substitute").visual, { noremap = true })
    vim.keymap.set("n", "jsx", require("substitute.exchange").operator, { noremap = true })
    vim.keymap.set("n", "jsxx", require("substitute.exchange").line, { noremap = true })
    vim.keymap.set("x", "jX", require("substitute.exchange").visual, { noremap = true })
    vim.keymap.set("n", "jsxc", require("substitute.exchange").cancel, { noremap = true })
  end,
}
