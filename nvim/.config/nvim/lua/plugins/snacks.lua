return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      { "<leader>ff", false },
      {
        "<leader><space>",
        function()
          Snacks.picker.buffers()
        end,
      },
      {
        "<C-p>",
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      },
    },
  },
}
