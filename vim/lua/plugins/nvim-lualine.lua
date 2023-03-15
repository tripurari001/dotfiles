return {
  -- Status Line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      {'kyazdani42/nvim-web-devicons', lazy = true},
    },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'auto'
        }
      }
    end
  },
}
