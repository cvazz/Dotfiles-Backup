
local lsp = require('lsp-zero')

lsp.preset('recommended')


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete({
        reason = cmp.ContextReason.Auto,
    }), {"i", "c"}),
})


-- lsp.set_preferences({
--     sign_icons = {
--         error = 'E',
--         warn = 'W',
--         hint = 'H',
--         info = 'I'
--     }
-- })

---@diagnostic disable-next-line: unused-local
lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts, {desc = "Go to function definition"})
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts, {desc = "Show object description"})
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts, {desc="No clue"})
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts, {desc="Show error message"})
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts, {desc="Go to next error"})
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts, {desc="Go to previous error"})
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts, {desc="Show options how to deal with error"})
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts, {desc="Show all uses of variable"})
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts, {desc="Rename variable"})
    vim.keymap.set("n", "<leader>vf", function() vim.lsp.buf.format() end, opts, {desc="Format Text"})
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts, {desc="Show signature help (WTF?)"})
end)


lsp.setup()



vim.diagnostic.config({
    virtual_text =true,
    severity_sort =true,
})

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

