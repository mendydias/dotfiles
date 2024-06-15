return {
    'linrongbin16/colorbox.nvim',

    -- don't lazy load
    lazy = false,
    -- load with highest priority
    priority = 1000,

    build = function() require("colorbox").update() end,
    config = function() require("colorbox").setup({ background = "dark" }) end,
}
