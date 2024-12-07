local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },

    sources = cmp.config.sources{
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
    },

    mapping = {
--         ["c-n"] = cmp.mapping()
    }
})

-- local luasnip = require("luasnip")

--[=[
local function has_words_before()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
]=]
