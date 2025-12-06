return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      files = {
        hidden = true, -- show hidden files including .env
        no_ignore = true, -- include files ignored by .gitignore
      },
    },
    picker = {
      sources = {
        files = {
          hidden = true,
          no_ignore = true,
        },
      },
    },
  },
}
