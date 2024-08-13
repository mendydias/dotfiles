return {
  "vhyrro/luarocks.nvim",
  priority = 1001, -- this plugin needs to run before anything else
  opts = {
    rocks = { "magick" },
  },
  dependencies = {
    "3rd/image.nvim",
    dependencies = { "luarocks.nvim" },
    config = true,
  },
}
