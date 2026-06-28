-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Make the terminal use the bright ANSI colors (8-15) for the normal slots (0-7) too.
-- Runs on ColorScheme so it survives theme reloads.
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("bright_terminal_colors", { clear = true }),
  pattern = "*",
  callback = function()
    for i = 0, 7 do
      local bright = vim.g["terminal_color_" .. (i + 8)]
      if bright then
        vim.g["terminal_color_" .. i] = bright
      end
    end
  end,
})
