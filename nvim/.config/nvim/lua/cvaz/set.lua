vim.cmd([[colorscheme gruvbox]])
-- vim.opt.colorscheme=gruvbox
-- set background=dark


-- line number rules
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false

-- tab rules
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- enables auto indent
vim.opt.smartindent = true

-- case insensitive search unless capital letters are used
vim.opt.ignorecase = true -- no case considered as long all small caps
vim.opt.smartcase  = true -- case considered once one capitalized

-- undo files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true


-- search rules
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- color rules
vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- new tabs appear on the right and below
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- vim.set.hidden = true


