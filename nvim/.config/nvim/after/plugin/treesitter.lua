require('nvim-treesitter.configs').setup {
    ensure_installed = { "bash", "c", "java", "lua", "python" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        disable = {"latex", "processing"},
    }
}

-- workaround for folding
vim.api.nvim_create_autocmd({'BufEnter', 'BufNew', 'BufNewFile', 'BufWinEnter'}, {
    group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
    callback = function ()
        vim.opt.foldmethod = 'expr'
        vim.opt.foldexpr =   'nvim_treesitter#foldexpr()'
    end
})
