return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
      hijack_netrw_behavior = "open_default",
      use_libuv_file_watcher = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    window = {
      position = "left",
      width = 35,
    },
  },
}
