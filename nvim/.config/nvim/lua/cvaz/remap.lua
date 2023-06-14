vim.g.mapleader = " " 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Go to File View"}) -- go to folder view
vim.keymap.set("n", "<leader>rp", ":w !python <CR>", {desc = "Run Python"}) -- run python

-- Move automatically
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Visually move line down"})
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", {desc = "Visually move line up"})
--
-- Keep things centered
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Go down half a page (centered)"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Go up half a page (centered)"})
vim.keymap.set("n", "n", "nzzzv", {desc = "Search next (centered)"})
vim.keymap.set("n", "N", "Nzzzv", {desc = "Search previous (centered)"})

-- Paste that does not replace
vim.keymap.set("x", "<leader>p", "\"_dP", {desc = "Paste without replacement"})

-- extra paste
vim.keymap.set("n", "<leader>y", "\"+y", {desc = "Yank to system clipboard"})
vim.keymap.set("v", "<leader>y", "\"+y", {desc = "Yank to system clipboard"})
vim.keymap.set("n", "<leader>Y", "\"+Y", {desc = "Should yank, but I don't get it"})


