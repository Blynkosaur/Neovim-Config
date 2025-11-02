return {
  -- Other plugins here

  {
    "andweeb/presence.nvim",
    config = function()
      require("presence").setup({
        -- Your configuration here, for example:
        auto_update = true,
        neovim_image_text = "The One True Text Editor",
        main_image = "neovim",
        client_id = "793271441293967371",
        debounce_timeout = 40,
        buttons = true,
        show_time = true,
      })
    end,
  },
}
