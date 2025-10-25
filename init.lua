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
