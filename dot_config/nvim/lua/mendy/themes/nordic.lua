return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic'.setup {
            transparent_bg = false
        }
        require 'nordic'.load()
    end
}
