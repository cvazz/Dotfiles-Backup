require('cvaz.remap')
require('cvaz.set')



vim.cmd([[set splitbelow ]])
vim.cmd([[set splitright ]])

-- navigate buffers without losing unsaved work
vim.cmd([[set hidden ]])


-- Enable mouse support
vim.cmd([[set mouse=a]])


-- Python Support

vim.cmd([[let g:python3_host_prog='/home/cvaz/miniconda3/bin/python']])


-- require('cvaz.plugins.telescope')
-- require('cvaz.plugins.treesitter')
-- require('cvaz.plugins.undotree')
-- require('cvaz.lightline')




-- local opts = { noremap = true, silent = true }
-- local keymap = vim.api.nvim_set_keymap
-- keymap("n","<C-_>",":lua require('Comment.api').toggle_current_linewise()<CR>" ,opts)
-- keymap("n","<a-/>",":lua require('Comment.api').toggle_current_linewise()<CR>" ,opts)
