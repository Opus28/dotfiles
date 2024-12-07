local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.set_sign_icons({
    error = '',
    warn = '',
    hint = '',
    info = ''
})

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- see :help lsp-zero-guide:integrate-with-mason-nvim
-- to learn how to use mason.nvim with lsp-zero
require('mason').setup({})
-- require('mason-lspconfig').setup({
  -- handlers = {
    -- lsp_zero.default_setup,
  -- }
-- })

local lsp = require('lspconfig')

lsp.lua_ls.setup {}
lsp.pylsp.setup {}
lsp.rust_analyzer.setup {}
lsp.julials.setup {}
lsp.clangd.setup {filetypes={"c", "h"}}
lsp.jdtls.setup {}
lsp.quick_lint_js.setup {}
lsp.ts_ls.setup {}
lsp.html.setup {}
lsp.sqlls.setup {}

vim.lsp.set_log_level("debug")
