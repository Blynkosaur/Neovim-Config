-- Disable pyright globally
vim.g.lazyvim_python_lsp = "pylsp"

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = { enabled = false },
                pyflakes = { enabled = false },
                mccabe = { enabled = false },
                autopep8 = { enabled = false },
              },
            },
          },
        },
        pyright = false,
      },
      setup = {
        pyright = function()
          return true
        end,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      if opts.servers then
        opts.servers.pyright = false
        opts.servers.basedpyright = false
      end
      if opts.setup then
        opts.setup.pyright = function()
          return true
        end
        opts.setup.basedpyright = function()
          return true
        end
      end
    end,
  },
}
