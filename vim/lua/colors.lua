local opt = vim.opt         	-- global/buffer/windows-scoped options

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors
require('onedark').load()
