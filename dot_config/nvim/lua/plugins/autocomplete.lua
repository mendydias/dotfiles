return {
  "nvim-cmp",
  dependencies = {
    {
      "garymjr/nvim-snippets",
      opts = {
        friendly_snippets = true,
      },
      dependencies = { "rafamadriz/friendly-snippets" },
    },
  },
  opts = function(_, opts)
    opts.snippet = {
      expand = function(item)
        return LazyVim.cmp.expand(item.body)
      end,
    }
    if LazyVim.has("nvim-snippets") then
      table.insert(opts.sources, { name = "snippets" })
    end
    table.insert(opts.sources, { name = "neorg" })
  end,
  keys = {
    {
      "<C-n>",
      function()
        require("cmp").mapping.select_next_item()
      end,
    },
    {
      "<C-p>",
      function()
        require("cmp").mapping.select_prev_item()
      end,
    },
    {
      "<C-b",
      function()
        require("cmp").mapping.scroll_docs(-4)
      end,
    },
    {
      "<C-f",
      function()
        require("cmp").mapping.scroll_docs(4)
      end,
    },
    {
      "C-Space",
      function()
        require("cmp").mapping.complete({})
      end,
    },
    {
      "<Tab>",
      function()
        return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Tab>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
    {
      "<S-Tab>",
      function()
        return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<S-Tab>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
  },
}
