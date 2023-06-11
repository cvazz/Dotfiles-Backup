-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'



    use( 'mbbill/undotree') -- undotree

    -- File Search
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- quick commenting
    use "terrortylor/nvim-comment"

    -- eye candie
    -- use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {'itchyny/lightline.vim'}
    use {'gruvbox-community/gruvbox'}


    -- Integrate tmux & nvim
    use ('christoomey/vim-tmux-navigator', {lazy = false})

    -- Integrate tmux & nvim
    use {'luk400/vim-jukit'}

    -- Syntax Highlighting

    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})


    -- AI code Completion

    use 'Exafunction/codeium.vim'


    use { -- LSP-zero Setup
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
end)
