-- Grammar checking
-- vim.cmd("setlocal spell spelllang=en_us")

--This setting controls the level of coneal that the markdown files support
--THis means that the markdown files will show actual ticks inside checkboxes instead of the markdown syntax
vim.o.conceallevel = 2

-- This setting is used to set the wrap of the lines. 
-- This is useful for markdown files consistin of a lot of text as my usual setting is with wrap off.
-- I hate the wrap of lines in code
-- This is enforced in the main config.lua file
-- Still maintained here for posterity
vim.o.wrap = true
-- vim.o.textwidth = 80
vim.o.linebreak = true
