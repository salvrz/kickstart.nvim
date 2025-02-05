--
-- rnvimr - Ranger file management integration
--
return {
  {
    'kevinhwang91/rnvimr',
    keys = {
      {'<leader>r', '<cmd>RnvimrToggle<CR>', desc = 'Toggle [R]anger'},
    },
    opts = {
        rnvimr_ex_enable = 1,
    },
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
  },
}
