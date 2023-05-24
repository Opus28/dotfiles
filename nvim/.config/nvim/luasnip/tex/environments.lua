local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
-- local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
local d = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local function get_visual(args, parent)
    if (#parent.snippet.env.LS_SELECT_RAW > 0) then
        return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
    else
        return sn(nil, i(1))
    end
end

return {
    s(
        {trig=":env", snippetType="autosnippet"},
        fmta("\\begin{<>}<>\n\\end{<>}", {i(1), d(2, get_visual), rep(1),})
    ),

    s(
        {trig=":fig", snippetType="autosnippet"},
        fmta(
            "\\begin{figure}[!ht]\n\\centering\n\\includegraphics[width=<>mm]{<>}\n\\caption{<>}\n\\end{figure}",
            {i(1), i(2), i(3)}
        )
    ),

    s(
        {trig=":ls", snippetType="autosnippet"},
        fmta(
            "\\begin{enumerate}[label=<>]\n\\end{enumerate}",
            {i(1)}
        )
    ),
}
