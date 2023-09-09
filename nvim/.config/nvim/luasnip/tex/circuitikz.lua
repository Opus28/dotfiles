local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
 local i = ls.insert_node
-- local f = ls.function_node
-- local d = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
-- local rep = require("luasnip.extras").rep

local helpers = require("luasnip-helpers")
local in_math = helpers.in_math
-- local get_visual = helpers.get_visual

return {
    s(
        {trig=":cir", snippetType="autosnippet", wordTrig=false},
        fmta(
        "\\begin{figure}[!ht]\n\\centering\n\\begin{circuitikz}\n\t\\draw (0,0)\n\t\tto[<>]<>\n\t\t;\n\\end{circuitikz}\n\\caption{<>}\n\\label{<>}\n\\end{figure}",
        {i(1), i(2), i(3), i(4)} ),
        {condition = not in_math}
    ),
}
