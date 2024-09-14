return {
  {
    'stevearc/oil.nvim',
    opts = {
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    init = function()
      vim.keymap.set("n", "<leader>ff", function() vim.cmd(":Oil --float") end)
      vim.keymap.set("n", "<leader>fo", function() vim.cmd(":Oil --float .") end)
    end
  }
}
