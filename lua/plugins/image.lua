return {
  {
    "3rd/image.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      -- Use sixel when in tmux without allow-passthrough (kitty backend would throw; ueberzugpp not on macOS)
      local backend = "kitty"
      if vim.env.TMUX then
        local ok, result = pcall(vim.fn.system, { "tmux", "show", "-gv", "allow-passthrough" })
        local passthrough = ok and result and (result:gsub("%s+", "") == "on" or result:gsub("%s+", "") == "all")
        if not passthrough then
          backend = "sixel"
        end
      end
      require("image").setup({ backend = backend })
    end,
  },
}
