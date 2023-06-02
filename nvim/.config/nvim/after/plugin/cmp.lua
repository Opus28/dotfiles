local luasnip = require("luasnip")
local cmp = require("cmp")

local function has_words_before()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({

    mapping = {

        ["<cr>"] = cmp.mapping({
            i = function (fallback)
                if cmp.visible() and cmp.get_active_entry() then
                    cmp.confirm({behavior = cmp.ConfirmBehavior.Replace, select = false})
                else
                    fallback()
                end
            end,
            s = cmp.mapping.confirm({select = true}),
            c = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = true})
        }),

        ["<tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, {"i", "s"}),

        ["<s-tab>"] = cmp.mapping(function (fallback)
            if cmp.visible() then

                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {"i", "s"}),
    }
})
