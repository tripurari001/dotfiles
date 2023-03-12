-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

local fn = vim.fn
local cmd = vim.cmd

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- init Lazy
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },

  -- autopair
  {
    'windwp/nvim-autopairs',
    config = true,
  },

  -- treesitter interface
  'nvim-treesitter/nvim-treesitter',

  -- colorschemes
  'folke/tokyonight.nvim',

  -- fugitive
  'tpope/vim-fugitive',

  -- LSP
  'neovim/nvim-lspconfig',
  'williamboman/nvim-lsp-installer',

  -- Status Line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      {'kyazdani42/nvim-web-devicons', lazy = true},
    },
  },

  -- File Tree
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
  },

  -- autocomplete
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
  },

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

})
