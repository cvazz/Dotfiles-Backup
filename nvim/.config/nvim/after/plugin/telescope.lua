
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- telescope.setup {}
-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- To get fzf loaded and working with telescope,
-- you need to call load_extension, somewhere after
-- the setup function.
local telescope = require('telescope')
-- telescope.load_extension('fzf')

