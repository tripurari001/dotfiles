--[[
  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
Neovim init file
Version: 0.42.0 - 2021/12/01
Maintainer: Brainf+ck
Website: https://github.com/brainfucksec/neovim-lua
--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('settings')
require('keymaps')
require('plugins/packer')
require('plugins/nvim-telescope')
require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')
require('plugins/nvim-lsp-installer')
require('plugins/nvim-treesitter')
