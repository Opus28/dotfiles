local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
local d = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
-- local rep = require("luasnip.extras").rep

local function in_math()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local function get_visual(args, parent)
    if (#parent.snippet.env.LS_SELECT_RAW > 0) then
        return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
    else
        return sn(nil, i(1))
    end
end

return {

    -- Inline Math zone
    s(
        {trig=";im", snippetType="autosnippet"},
        fmta( "$<>$", {i(1, "insert math")} ),
        {condition = (not in_math)}
    ),

    -- Display Math zone
    s(
        {trig=";dm", snippetType="autosnippet"},
        fmta( "\n\\[\n\t<>\n\\] ", {i(1, "insert math")} ),
        {condition = (not in_math)}
    ),

    -- Equation (Math) env
    s(
        {trig=";em", snippetType="autosnippet"},
        fmta( "\n\\begin{equation}\n\t<>\n\\end{equation}", {i(1, "insert math")} ),
        {condition = (not in_math)}
    ),

    -- TeXt 
    s(
        {trig="tx", snippetType="autosnippet"},
        fmta( "\\text{<>}", {d(1, get_visual)} ),
        {condition = (in_math)}
    ),

    -- BoXed 
    s(
        {trig="bx", snippetType="autosnippet"},
        fmta( "\\boxed{<>}", {d(1, get_visual)} ),
        {condition = (in_math)}
    ),

    -- FRaction
    s(
        {trig="fr", snippetType="autosnippet", wordTrig = false},
        fmta( "\\frac{<>}{<>}", {i(1, "num"), i(2, "denom"), } ),
        {condition = in_math}
    ),

    -- square RooT
    s(
        {trig="rt",  snippetType="autosnippet"},
        fmta( "\\sqrt{<>}", {i(1)} ),
        {condition = in_math} ),

    -- exponent (Power Of)
    s(
        {trig="po", snippetType="autosnippet", wordTrig = false},
        fmta( "^{<>}", {i(1, "2")} ),
        {condition = in_math}
    ),

    -- SUbscript
    s(
        {trig="su", snippetType="autosnippet", wordTrig = false},
        fmta( "_{<>}", {i(1)} ),
        {condition = in_math}
    ),

    --COSine
    s(
        {trig="cos", snippetType="autosnippet", wordTrig = false},
        fmta( "\\cos(<>)", {i(1)} ),
        {condition = in_math}
    ),

    --SINe
    s(
        {trig="sin", snippetType="autosnippet", wordTrig = false},
        fmta( "\\sin(<>)", {i(1)} ),
        {condition = in_math}
    ),

    --TANgent
    s(
        {trig="tan", snippetType="autosnippet", wordTrig = false},
        fmta( "\\tan(<>)", {i(1)} ),
        {condition = in_math}
    ),

    --SECant
    s(
        {trig="sec", snippetType="autosnippet", wordTrig = false},
        fmta( "\\sec(<>)", {i(1)} ),
        {condition = in_math}
    ),

    --CoSeCant
    s(
        {trig="csc", snippetType="autosnippet", wordTrig = false},
        fmta( "\\csc(<>)", {i(1)} ),
        {condition = in_math}
    ),

    --COTangent
    s(
        {trig="cot", snippetType="autosnippet", wordTrig = false},
        fmta( "\\cot(<>)", {i(1)} ),
        {condition = in_math}
    ),

    --iNFinity
    s( {trig="nf",  snippetType="autosnippet"}, {t("\\infty")}, {condition = in_math} ),

    --PArtial differential
    s( {trig="pa",  snippetType="autosnippet"}, {t("\\partial")}, {condition = in_math} ),

    -- large operators
    s( {trig="nt",  snippetType="autosnippet"}, {t("\\int")}, {condition = in_math} ),
    s( {trig="ad",  snippetType="autosnippet"}, {t("\\sum")}, {condition = in_math} ),
    s( {trig="lim",  snippetType="autosnippet"}, {t("\\lim")}, {condition = in_math} ),
    s( {trig="pr",  snippetType="autosnippet"}, {t("\\prod")}, {condition = in_math} ),

    -- relational operators
    s( {trig="in",  snippetType="autosnippet"}, {t("\\in")}, {condition = in_math} ),
    s( {trig="to",  snippetType="autosnippet"}, {t("\\to")}, {condition = in_math} ),

    -- binary operators
    s( {trig="tim",  snippetType="autosnippet"}, {t("\\times")}, {condition = in_math} ),
    s( {trig="div",  snippetType="autosnippet"}, {t("\\div")}, {condition = in_math} ),
    -- s( {trig="pm",  snippetType="autosnippet"}, {t("\\pm")}, {condition = in_math} ),
    -- s( {trig="mp",  snippetType="autosnippet"}, {t("\\mp")}, {condition = in_math} ),

    -- Greek Alphabet (lowercase)
    s( {trig=";a",  snippetType="autosnippet"}, {t("\\alpha")}, {condition = in_math} ),
    s( {trig=";b",  snippetType="autosnippet"}, {t("\\beta")}, {condition = in_math} ),
    s( {trig=";g",  snippetType="autosnippet"}, {t("\\gamma")}, {condition = in_math} ),
    s( {trig=";d",  snippetType="autosnippet"}, {t("\\delta")}, {condition = in_math} ),
    s( {trig=";e",  snippetType="autosnippet"}, {t("\\epsilon")}, {condition = in_math} ),
    s( {trig=";ve", snippetType="autosnippet"}, {t("\\varepsilon")}, {condition = in_math} ),
    s( {trig=";z",  snippetType="autosnippet"}, {t("\\zeta")}, {condition = in_math} ),
    s( {trig=";h",  snippetType="autosnippet"}, {t("\\eta")}, {condition = in_math} ),
    s( {trig=";th", snippetType="autosnippet"}, {t("\\theta")}, {condition = in_math} ),
    s( {trig=";i",  snippetType="autosnippet"}, {t("\\iota")}, {condition = in_math} ),
    s( {trig=";k",  snippetType="autosnippet"}, {t("\\kappa")}, {condition = in_math} ),
    s( {trig=";l",  snippetType="autosnippet"}, {t("\\lambda")}, {condition = in_math} ),
    s( {trig=";m",  snippetType="autosnippet"}, {t("\\mu")}, {condition = in_math} ),
    s( {trig=";n",  snippetType="autosnippet"}, {t("\\nu")}, {condition = in_math} ),
    s( {trig=";x",  snippetType="autosnippet"}, {t("\\xi")}, {condition = in_math} ),
    s( {trig=";p",  snippetType="autosnippet"}, {t("\\pi")}, {condition = in_math} ),
    s( {trig=";r",  snippetType="autosnippet"}, {t("\\rho")}, {condition = in_math} ),
    s( {trig=";s",  snippetType="autosnippet"}, {t("\\sigma")}, {condition = in_math} ),
    s( {trig=";ta", snippetType="autosnippet"}, {t("\\tau")}, {condition = in_math} ),
    s( {trig=";u",  snippetType="autosnippet"}, {t("\\upsilon")}, {condition = in_math} ),
    s( {trig=";f",  snippetType="autosnippet"}, {t("\\phi")}, {condition = in_math} ),
    s( {trig=";vf", snippetType="autosnippet"}, {t("\\varphi")}, {condition = in_math} ),
    s( {trig=";c",  snippetType="autosnippet"}, {t("\\chi")}, {condition = in_math} ),
    s( {trig=";w",  snippetType="autosnippet"}, {t("\\omega")}, {condition = in_math} ),
    s( {trig=";ps", snippetType="autosnippet"}, {t("\\psi")}, {condition = in_math} ),

    -- Greek Alphabet (uppercase)
    s( {trig=";G",  snippetType="autosnippet"}, {t("\\Gamma")}, {condition = in_math} ),
    s( {trig=";D",  snippetType="autosnippet"}, {t("\\Delta")}, {condition = in_math} ),
    s( {trig=";Th", snippetType="autosnippet"}, {t("\\Theta")}, {condition = in_math} ),
    s( {trig=";L",  snippetType="autosnippet"}, {t("\\Lambda")}, {condition = in_math} ),
    s( {trig=";X",  snippetType="autosnippet"}, {t("\\Xi")}, {condition = in_math} ),
    s( {trig=";P",  snippetType="autosnippet"}, {t("\\Pi")}, {condition = in_math} ),
    s( {trig=";S",  snippetType="autosnippet"}, {t("\\Sigma")}, {condition = in_math} ),
    s( {trig=";U",  snippetType="autosnippet"}, {t("\\Upsilon")}, {condition = in_math} ),
    s( {trig=";F",  snippetType="autosnippet"}, {t("\\Phi")}, {condition = in_math} ),
    s( {trig=";C",  snippetType="autosnippet"}, {t("\\Chi")}, {condition = in_math} ),
    s( {trig=";Ps", snippetType="autosnippet"}, {t("\\Psi")}, {condition = in_math} ),
    s( {trig=";W",  snippetType="autosnippet"}, {t("\\Omega")}, {condition = in_math} ),
}
