return {

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "vim-language-server",
        "html-lsp",
        "css-lsp",
        "lua-language-server",
        "stylua",
        "prettier",
        "pyright",
        "clangd",
        "dockerfile-language-server",
        "marksman",
        "rust-analyzer",
        "svelte-language-server",
        "eslint-lsp",
        "tailwindcss-language-server",
        "biome",
        "bash-language-server",
        "shellcheck",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "python",
        "json5",
        "bash",
        "cmake",
        "c",
        "cpp",
        "diff",
        "dockerfile",
        "make",
        "markdown",
        "markdown_inline",
        "regex",
        "rust",
        "scss",
        "svelte",
        "tsx",
        "typescript",
        "typespec",
        "yaml",
        "xml",
      },
    },
  },
}
