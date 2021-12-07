-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-----------------------------------------------------------
-- Easier copy/pasting to/from OS clipboard
-----------------------------------------------------------
map('n', 'gy', '"*y', default_opts)
map('v', 'gy', '"*y', default_opts)
map('n', 'gp', '"*p', default_opts)
map('n', 'gP', '"*P', default_opts)
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

