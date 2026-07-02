return {
  -- Other plugins here

  {
    "andweeb/presence.nvim",
    -- This plugin owns the Neovim Discord card. Discord only renders ONE
    -- rich-presence card at a time, so the Ghostty script
    -- (~/Ghostty-Configs/discord-presence/ghostty_presence.py) is configured to
    -- YIELD (clear its own presence) whenever a Neovim instance is running, so
    -- this plugin's card is the one that shows while you edit.
    config = function()
      require("presence").setup({
        -- Your configuration here, for example:
        auto_update = true,
        neovim_image_text = "The One True Text Editor",
        main_image = "neovim",
        client_id = "793271441293967371",
        debounce_timeout = 40,
        -- On macOS Discord's IPC socket lives under $TMPDIR (a /var/folders/...
        -- path), NOT /tmp. Build the path from the real temp dir so this works
        -- across machines/reboots.
        ipc_socket = ((vim.uv or vim.loop).os_tmpdir() .. "/discord-ipc-0"),
        buttons = true,
        show_time = true,
      })
    end,
  },
}
