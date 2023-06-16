local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files,
    { desc = "find among all files" })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({
        search = vim.fn.input("Grep > "),
    }, {
        desc = "search key words inside all files (I think)"
    }
    )
end)

--vim.keymap.set("x", "<leader>p", "\"_dP", {desc = "Paste without replacement"})

-- telescope.setup {}
-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- To get fzf loaded and working with telescope,
-- you need to call load_extension, somewhere after
-- the setup function.
local telescope = require('telescope')
-- telescope.load_extension('fzf')
