-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- jk to escape in insert mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- <C-f>l / <C-f>h — push the vertical split border right/left by 5 columns,
-- mirroring tmux prefix + l/h (resize-pane -R/-L 5)
local function resize_border(dir)
  local has_window_to_right = vim.fn.winnr("l") ~= vim.fn.winnr()
  local grow = (dir == "right") == has_window_to_right
  vim.cmd("vertical resize " .. (grow and "+5" or "-5"))
end

vim.keymap.set("n", "<C-f>l", function() resize_border("right") end, { desc = "Expand window right" })
vim.keymap.set("n", "<C-f>h", function() resize_border("left") end, { desc = "Expand window left" })
