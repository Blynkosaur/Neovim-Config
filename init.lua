-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.lsp")
vim.opt.winborder = "rounded"
vim.o.hidden = true
require("plugins.cmp-tab")
vim.api.nvim_create_user_command("Config", function()
  require("telescope.builtin").find_files({ cwd = "~/.config/nvim" })
end, {})
