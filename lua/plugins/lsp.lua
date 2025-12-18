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
              },
            },
          },
        },
        pyright = false,
      },
      setup = {
        pyright = function()
          -- Explicitly prevent pyright from starting
          return true
        end,
      },
    },
  },
  -- Override LazyVim Python extra to disable pyright
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Force disable pyright even if Python extra tries to enable it
      if opts.servers then
        opts.servers.pyright = false
        opts.servers.basedpyright = false
      end
      if opts.setup then
        opts.setup.pyright = function()
          return true -- Prevent setup
        end
        opts.setup.basedpyright = function()
          return true -- Prevent setup
        end
      end
    end,
  },
}
