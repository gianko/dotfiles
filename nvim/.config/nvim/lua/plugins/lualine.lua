return {
  {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      section_separators = "",
      component_separators = { left = '|', right = '|' },
    },
    sections = {
      lualine_y = {}
    },
    tabline = {
      lualine_a = { 'buffers' },
      -- maybe implement later?
      -- lualine_z = { "require'lsp-status'.status()" },
    },
    extensions = { 'fugitive', 'oil' }
  }
}
}

