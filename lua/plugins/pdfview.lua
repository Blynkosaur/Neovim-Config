return {
  {
    "basola21/PDFview",
    lazy = false,
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      vim.keymap.set(
        "n",
        "<leader>jj",
        "<cmd>lua require('pdfview.renderer').next_page()<CR>",
        { desc = "PDFview: Next page" }
      )
      vim.keymap.set(
        "n",
        "<leader>kk",
        "<cmd>lua require('pdfview.renderer').previous_page()<CR>",
        { desc = "PDFview: Previous page" }
      )
      vim.api.nvim_create_autocmd("BufReadPost", {
        pattern = "*.pdf",
        callback = function()
          local file_path = vim.api.nvim_buf_get_name(0)
          require("pdfview").open(file_path)
        end,
      })
    end,
  },
}
