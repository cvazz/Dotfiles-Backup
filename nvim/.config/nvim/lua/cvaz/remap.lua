vim.g.mapleader = " " 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move automatically
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "k", ":m '<-2<cr>gv=gv")
--
-- Keep things centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- Paste that does not replace
vim.keymap.set("x", "<leader>p", "\"_dP")

-- extra paste
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
