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


-----------------------------------------------------------
-- Easier copy/pasting to/from OS clipboard
-----------------------------------------------------------
map('n', 'gy', '"*y', default_opts)
map('v', 'gy', '"*y', default_opts)
map('n', 'gp', '"*p', default_opts)
map('v', 'gp', '"*p', default_opts)
map('n', 'gP', '"*P', default_opts)
map('v', 'gP', '"*P', default_opts)
map('n', 'gY', '"*Y', default_opts)

map('n', '<leader>sp', '<cmd>set spell!<CR>', {noremap = true})
map('n', '<c-g>', '2<c-g>', default_opts)
map('v', '*', '"xy/<C-R>x<CR>', default_opts)

-- Toggle last buffer
map('n', '<leader><leader>', '<C-^>', default_opts)
map('n', '<leader>X', '<cmd>%bd|e#|bd#<CR>', default_opts)
