local lsp = require('lsp-zero').preset({"recommended"})

lsp.set_preferences({
})

lsp.set_sign_icons({
    error='',
    warn='',
    hint='',
    info=''
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.clangd.setup({})
lspconfig.jdtls.setup({
    root_dir = function ()
        return vim.fs.dirname(vim.fs.find({'src'}, {upward=true})[1]) .. "/"
    end
})
-- lspconfig.r_language_server.setup({})

vim.lsp.set_log_level("debug")

lsp.setup()
