local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({

    --- LSPZero
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },

    --- Additional completion
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/cmp-path' },

    --- Lines
    { 'nvim-lualine/lualine.nvim' },
    { 'kdheepak/tabline.nvim' },

    --- Utilities
    { 'mbbill/undotree' },
    { 'chrisbra/matchit' },
    { 'windwp/nvim-autopairs' },
    { "nvim-treesitter/nvim-treesitter",  build = { ":TSUpdate" } },
    {
        'nvim-telescope/telescope.nvim',
        version = "0.1.4",
        dependencies = { { 'nvim-lua/plenary.nvim' }, { 'BurntSushi/ripgrep' } }
    },

    --- Colors
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "maxmx03/solarized.nvim", name = "solarized", priority = 1000 },

    --- Languages

    -- LaTeX
    { 'lervag/vimtex' },

    -- Markdown
    {
        "toppair/peek.nvim",
        event = { "VeryLazy" },
        build = "deno task --quiet build:fast",
        config = function()
            require("peek").setup()
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
    },

    -- {
    -- "iamcco/markdown-preview.nvim",
    -- cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    -- ft = { "markdown" },
    -- build = function() vim.fn["mkdp#util#install"]() end,
    -- },

    -- Processing
    { 'sophacles/vim-processing' },

    -- R
    -- { 'jalvesaq/nvim-r' },
    -- RMarkdown
    -- {
        -- 'vim-pandoc/vim-rmarkdown',
        -- dependencies = {
            -- { 'vim-pandoc/vim-pandoc' },
            -- { 'vim-pandoc/vim-pandoc-syntax' },
        -- }
    -- }

})
