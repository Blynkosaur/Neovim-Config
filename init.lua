-- Disable pyright - set this BEFORE LazyVim loads
vim.g.lazyvim_python_lsp = "pylsp"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.lsp")
vim.opt.winborder = "rounded"
vim.o.hidden = true
require("plugins.cmp-tab")
vim.api.nvim_create_user_command("Config", function()
  require("telescope.builtin").find_files({ cwd = "~/.config/nvim" })
end, {})
vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Disable Copilot by default on startup",
  command = "Copilot disable",
})
vim.keymap.set("n", "L", "<C-E>", { noremap = true, silent = true })
vim.keymap.set("n", "H", "<C-Y>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>i", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "U", "H", { desc = "Cursor to top of screen" })
vim.keymap.set("n", "D", "L", { desc = "Cursor to bottom of screen" })
