return {
  -- File Tree
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup {
        git = {
          enable = true,
          ignore = false,
          timeout = 500,
        },
        view = {
          width = 40,
          number = true,
          relativenumber = true,
        }
      }
    end
  },
}
