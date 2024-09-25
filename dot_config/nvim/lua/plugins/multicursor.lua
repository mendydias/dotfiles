return {
  "jake-stewart/multicursor.nvim",
  branch = "1.0",
  config = function()
    local mc = require("multicursor-nvim")

    mc.setup()

    -- Add cursors above/below the main cursor.
    vim.keymap.set({ "n", "v" }, "<up>", function()
      mc.addCursor("k")
    end)
    vim.keymap.set({ "n", "v" }, "<down>", function()
      mc.addCursor("j")
    end)

    -- Add a cursor and jump to the next word under cursor.
    vim.keymap.set({ "n", "v" }, "<c-n>", function()
      mc.addCursor("*")
    end)

    -- Jump to the next word under cursor but do not add a cursor.
    vim.keymap.set({ "n", "v" }, "<c-s>", function()
      mc.skipCursor("*")
    end)

    -- Rotate the main cursor.
    vim.keymap.set({ "n", "v" }, "<left>", function()
      mc.nextcursor()
    end)
    vim.keymap.set({ "n", "v" }, "<right>", function()
      mc.prevcursor()
    end)

    -- delete the main cursor.
    vim.keymap.set({ "n", "v" }, "<c-x>", function()
      mc.deletecursor()
    end)

    -- add and remove cursors with control + left click.
    vim.keymap.set("n", "<c-leftmouse>", function()
      mc.handlemouse()
    end)

    vim.keymap.set({ "n", "v" }, "<c-q>", function()
      if mc.cursorsenabled() then
        -- stop other cursors from moving.
        -- this allows you to reposition the main cursor.
        mc.disablecursors()
      else
        mc.addcursor()
      end
    end)

    vim.keymap.set("n", "<esc>", function()
      if not mc.cursorsenabled() then
        mc.enablecursors()
      elseif mc.hascursors() then
        mc.clearcursors()
      else
        -- default <esc> handler.
      end
    end)

    -- align cursor columns.
    vim.keymap.set("n", "<m-a>", function()
      mc.aligncursors()
    end)

    -- split visual selections by regex.
    vim.keymap.set("v", "<c-s>", function()
      mc.splitcursors()
    end)

    -- Append/insert for each line of visual selections.
    vim.keymap.set("v", "I", function()
      mc.insertVisual()
    end)
    vim.keymap.set("v", "A", function()
      mc.appendVisual()
    end)

    -- match new cursors within visual selections by regex.
    vim.keymap.set("v", "M", function()
      mc.matchCursors()
    end)

    -- Rotate visual selection contents.
    vim.keymap.set("v", "<leader>t", function()
      mc.transposeCursors(1)
    end)
    vim.keymap.set("v", "<leader>T", function()
      mc.transposeCursors(-1)
    end)

    -- Customize how cursors look.
    vim.api.nvim_set_hl(0, "MultiCursorCursor", { link = "Cursor" })
    vim.api.nvim_set_hl(0, "MultiCursorVisual", { link = "Visual" })
    vim.api.nvim_set_hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
    vim.api.nvim_set_hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
  end,
}
