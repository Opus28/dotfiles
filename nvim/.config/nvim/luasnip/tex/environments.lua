local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
local d = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local helpers = require("luasnip-helpers")
local get_visual = helpers.get_visual

return {
    s(
        {trig=":env", snippetType="autosnippet"},
        fmta("\\begin{<>}<>\n\\end{<>}", {i(1), d(2, get_visual), rep(1),})
    ),

    s(
        {trig=":fig", snippetType="autosnippet"},
        fmta(
            "\\begin{figure}[!ht]\n\\centering\n\\includegraphics[width=<>]{<>}\n\\caption{<>}\n\\end{figure}",
            {i(1, "\\textwidth"), i(2), i(3)}
        )
    ),

    s(
        {trig=":ls", snippetType="autosnippet"},
        fmta(
            "\\begin{enumerate}[label=<>]\n\t\\item <>\n\\end{enumerate}",
            {i(1, "(\\alph*)"), i(2)}
        )
    ),
}
