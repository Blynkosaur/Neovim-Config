-- Swap <leader>sg and <leader>sG (Grep Root Dir <-> Grep cwd).
-- The LazyVim picker extra registers these keys *after* any user plugin `keys`
-- fragment, so a spec-level override never sees them. Instead we re-map them
-- right after snacks.nvim finishes loading (its default keys are applied at load
-- time; this autocmd fires after that and wins).
return {
  "folke/snacks.nvim",
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyLoad",
      callback = function(ev)
        if ev.data ~= "snacks.nvim" then
          return
        end
        vim.keymap.set("n", "<leader>sg", LazyVim.pick("live_grep", { root = false }), { desc = "Grep (cwd)" })
        vim.keymap.set("n", "<leader>sG", LazyVim.pick("live_grep"), { desc = "Grep (Root Dir)" })
      end,
    })
  end,
}
