local opt = vim.opt         	-- global/buffer/windows-scoped options
local cmd = vim.cmd     		-- execute Vim commands

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors
cmd [[colorscheme moonlight]]
