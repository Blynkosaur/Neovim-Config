return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = { undojoin = true },
    formatters = {
      ruff_format = {
        command = "poetry",
        args = { "run", "ruff", "format", "--stdin-filename", "$FILENAME", "-" },
      },
    },
  },
}
