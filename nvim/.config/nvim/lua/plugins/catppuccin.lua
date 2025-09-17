return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    opts = {
      flavour = "mocha",
      auto_integrations = true,
      integrations = {
        telescope = {
          enabled = true,
        },
        mini = {
          enabled = true,
          -- indentscope_color = "", -- catppuccin color (eg. `lavender`) Default: text
        },
      },
      custom_highlights = function(colors)
        return {
          WinSeparator = { fg = colors.flamingo },
        }
      end,
    },
    config = true,
  },
}
