-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local g = vim.g

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------
map('n', '<space>', '<Nop>', default_opts)
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


-- general
map('n', '<leader>sp', '<cmd>set spell!<CR>', {noremap = true})
map('n', '<c-g>', '2<c-g>', default_opts)
map('v', '*', '"xy/<C-R>x<CR>', default_opts)

-- for switching to window
map('n', '<leader>1', '1<c-w>w', default_opts)
map('n', '<leader>2', '2<c-w>w', default_opts)
map('n', '<leader>3', '3<c-w>w', default_opts)
map('n', '<leader>4', '4<c-w>w', default_opts)
map('n', '<leader>5', '5<c-w>w', default_opts)
map('n', '<leader>6', '6<c-w>w', default_opts)
map('n', '<leader>7', '7<c-w>w', default_opts)
map('n', '<leader>8', '8<c-w>w', default_opts)
map('n', '<leader>9', '9<c-w>w', default_opts)
map('n', '<leader>0', '10<c-w>w', default_opts)

-- clear search highlighting
map('n', '<leader>/', ':nohlsearch | diffupdate<CR>', default_opts)

-- Toggle last buffer
map('n', '<leader><leader>', '<C-^>', default_opts)

-- Square bracket mappings (many of them inspired by Unimpaired)
map('n', '[a', '<cmd>prev<cr>', default_opts)
map('n', ']a', '<cmd>next<cr>', default_opts)
map('n', ']b', '<cmd>bn<cr>', default_opts)
map('n', '[b', '<cmd>bp<cr>', default_opts)
map('n', ']q', '<cmd>cnext<cr>zz', default_opts)
map('n', '[q', '<cmd>cprevious<cr>zz', default_opts)
map('n', ']Q', '<cmd>clast<cr>zz', default_opts)
map('n', '[Q', '<cmd>cfirst<cr>zz', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- Navigate neovim + neovim terminal emulator with alt+direction
map('t', '<C-h>', '<C-\\><C-n><C-w>h', default_opts)
map('t', '<C-j>', '<C-\\><C-n><C-w>j', default_opts)
map('t', '<C-k>', '<C-\\><C-n><C-w>k', default_opts)
map('t', '<C-l>', '<C-\\><C-n><C-w>l', default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {noremap = true})
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {noremap = true})
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {noremap = true})
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {noremap = true})

-- Nvim Tree
map('n', '<leader>nf', '<cmd>NvimTreeFindFile<CR>', {noremap = true})
map('n', '<leader>nn', '<cmd>NvimTreeToggle<CR>', {noremap = true})
