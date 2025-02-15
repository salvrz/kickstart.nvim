--
-- lualine - Statusline configuration
--
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require('lualine').setup {
        -- [mode, git, curr_file, buffers] [search_count, file_encoding, file_type, row:col/location]
        options = {
          --theme = 'gruvbox',
          section_separators = '',
          component_separators = '',
        },
      }
    end,
  },
}
