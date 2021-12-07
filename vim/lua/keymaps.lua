-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd
local g = vim.g

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------
map('n', '<space>', '<Nop>', {noremap = true})
g.mapleader = ' '             -- change leader to a comma

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

-- clear search highlighting
map('n', '<leader>/', ':nohlsearch | diffupdate<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {noremap = true})
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {noremap = true})
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {noremap = true})
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {noremap = true})
