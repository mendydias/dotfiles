-- If you're like me and choose to use a gui frontend like neovide,
-- then these settings are for you.
-- Check for the existence of neovide frst or there will be errors from the TUI
if vim.g.neovide then
    -- Set the font to something I like
    -- Sets the font size with the h option
    vim.o.guifont = "JetBrainsMono Nerd Font:h13"
    -- Sets the linespacing
    vim.opt.linespace = 1
    -- Set the transparency of the window
    vim.g.neovide_transparency = 0.67
    vim.g.neovide_window_blurred = true
    -- Hide the mouse cursor when typing
    vim.g.neovide_hide_mouse_when_typing = true
    -- Set underline to scale properly
    vim.g.neovide_underline_stroke_scale = 1.0
    -- Set the window to start in fullscreen mode
end
