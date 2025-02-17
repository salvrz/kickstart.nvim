--
-- lualine - Statusline configuration
--  See all options: https://github.com/nvim-lualine/lualine.nvim
--

local buffers = {
  'buffers',
  show_filename_only = false, -- shows shortened relative path
  hide_filename_extension = true,
  show_modified_status = true,
}

return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require('lualine').setup {
        options = {
          --theme = 'gruvbox',
          section_separators = '',
          component_separators = '',
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'filename', 'diff' },
          lualine_c = { 'diagnostics', 'searchcount' },
          lualine_x = { buffers, 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
      }
    end,
  },
}
