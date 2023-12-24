-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------

-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
local cmd = vim.cmd     				-- execute Vim commands
local exec = vim.api.nvim_exec 	        -- execute Vimscript
local fn = vim.fn       				-- call Vim functions
local g = vim.g         				-- global variables
local opt = vim.opt         		    -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.undofile  = true           -- keep undo history across session
opt.backupdir = fn.expand('~/dotfiles/vim/backups')
opt.directory = fn.expand('~/dotfiles/vim/swaps')
opt.undodir   = fn.expand('~/dotfiles/vim/undo')
opt.fileformats = 'unix,mac,dos' -- EOL of current buffer
opt.path:append('**')
opt.joinspaces = false
opt.timeoutlen  = 5000    -- for key mapping time wait
opt.ttimeout    = true
opt.ttimeoutlen = 10      -- This must be a low value for <esc>-key not to be confused with an <a-…> mapping
opt.encoding    = 'utf-8'
opt.bomb        = false
opt.iskeyword:append('-')
opt.backupcopy = 'yes'
opt.wildchar   = ('\t'):byte() -- number equivalent for <TAB>
opt.wildignorecase = true
opt.wildignore:append('.DS_Store')
opt.wildignore:append('*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js')
opt.wildignore:append('*/bower_components/*,*/node_modules/*,*/compiled/*,*/public/*')
opt.wildignore:append('*/smarty/*,*/vendor/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*,*/cache/*')

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.wrap   = false            -- Don't Wrap text instead show in one line
opt.number = true             -- show line number
opt.relativenumber = true     -- show relative line number
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.cursorline = true         -- Highlight current line
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.scrolloff = 5             -- show extra line in bottom
opt.sidescrolloff = 5         -- Show extra chars on side
opt.diffopt:append("vertical")-- show vertical diff
opt.listchars={tab = '▸ ', trail = '·', eol = '¬',nbsp = '_'} -- to show invisible character as

-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]


-- highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 240       -- max column for syntax highlight

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.softtabstop = 4       -- Number of spaces that a <Tab> counts for
opt.formatoptions:append('1')  -- Don't break a line after a one-letter word. It's broken before it instead (if possible)
opt.keywordprg = ':help'  -- Get help for word under cursor by pressing K
opt.shortmess:append('m') -- No intro, suppress ins-completion messages, use [+] instead of [Modified]

-----------------------------------------------------------
-- Autocompletion
-----------------------------------------------------------
-- insert mode completion options
opt.completeopt = 'menuone,noselect'

-----------------------------------------------------------
-- Terminal
-----------------------------------------------------------
-- open a terminal pane on the right using :Term
-- cmd [[command Term :botright vsplit term://$SHELL]]

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
