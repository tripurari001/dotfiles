require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- Square bracket mappings (many of them inspired by Unimpaired)
map('n', '[a', '<cmd>prev<cr>', default_opts)
map('n', ']a', '<cmd>next<cr>', default_opts)
map('n', ']q', '<cmd>cnext<cr>zz', default_opts)
map('n', '[q', '<cmd>cprevious<cr>zz', default_opts)
map('n', ']Q', '<cmd>clast<cr>zz', default_opts)
map('n', '[Q', '<cmd>cfirst<cr>zz', default_opts)
