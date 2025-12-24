return {
  {
    "tpope/vim-fugitive",
    -- cmd = "Git",
    -- keys = {
    --   { "<leader>gg", "<cmd>Git<cr>", desc = "Git Status" },
    --   { "<leader>gj", "<cmd>G cl<cr>", desc = "Git Next Hunk" },
    --   { "<leader>gk", "<cmd>G cpl<cr>", desc = "Git Prev Hunk" },
    --   { "<leader>gb", "<cmd>G blame<cr>", desc = "Git Blame" },
    -- },
    -- config = function()
    --   -- Enhance diff views with more context and vertical splits
    --   vim.opt.diffopt = vim.opt.diffopt + { "vertical", "context=1000", "iwhite", "hiddenoff" }
    --
    --   -- Optional: Fugitive-specific mappings in status buffer
    --   vim.api.nvim_create_autocmd("FileType", {
    --     pattern = "fugitive",
    --     callback = function()
    --       local opts = { buffer = true, noremap = true, silent = true }
    --       vim.keymap.set("n", "<leader>p", "<cmd>Git push<cr>", opts)
    --       vim.keymap.set("n", "<leader>P", "<cmd>Git pull<cr>", opts)
    --       vim.keymap.set("n", "cc", "<cmd>Git commit<cr>", opts)
    --     end,
    --   })
    -- end,
  },
}
