-----------------------------------------------------------
-- Treesitter configuration file
-----------------------------------------------------------

-- Plugin: nvim-treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
  -- treesitter interface
  {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
      require('nvim-treesitter.configs').setup {
        highlight = {
          enable = true,
        },
      }
    end
  },

}

