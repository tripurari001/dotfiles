return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require('tokyonight')
            vim.cmd[[colorscheme tokyonight]]
        end
    },
}
