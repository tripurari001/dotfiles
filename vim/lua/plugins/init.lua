return {
  -- autopair
  {
    'windwp/nvim-autopairs',
    config = true,
  },

  -- colorschemes
  'folke/tokyonight.nvim',

  -- fugitive
  'tpope/vim-fugitive',

  -- Prisma syntax Support
  'pantharshit00/vim-prisma',

  {
      'nmac427/guess-indent.nvim',
      config = true,
  },

  'gpanders/editorconfig.nvim',

  {
      "ur4ltz/surround.nvim",
      config = function()
          require"surround".setup {mappings_style = "surround"}
      end,
  },

  'findango/vim-mdx',

  {
    'numToStr/Comment.nvim',
    config = true,
  },

}
