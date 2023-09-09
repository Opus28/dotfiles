local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
local d = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
-- local rep = require("luasnip.extras").rep

local sw = ls.extend_decorator.apply(s, {wordTrig=false})

local helpers = require("luasnip-helpers")
local in_math = helpers.in_math
local get_visual = helpers.get_visual

return {

    -- Inline Math zone
    sw(
        {trig=";im", snippetType="autosnippet"},
        fmta( "$<>$", {d(1, get_visual)} ),
        {condition = (not in_math)}
    ),

    -- Display Math zone
    sw(
        {trig=";dm", snippetType="autosnippet"},
        fmta( "\n\\[\n\t<>\n\\] ", {d(1, get_visual)} ),
        {condition = (not in_math)}
    ),

    -- Equation (Math) env
    sw(
        {trig=";em", snippetType="autosnippet"},
        fmta( "\n\\begin{equation}\n\t<>\n\\end{equation}", {d(1, get_visual)} ),
        {condition = (not in_math)}
    ),

    -- TeXt 
    sw(
        {trig="tx", snippetType="autosnippet"},
        fmta( "\\text{<>}", {d(1, get_visual)} ),
        {condition = (in_math)}
    ),

    -- BoXed 
    sw(
        {trig="bx", snippetType="autosnippet"},
        fmta( "\\boxed{<>}", {d(1, get_visual)} ),
        {condition = (in_math)}
    ),

    -- FRaction
    sw(
        {trig="fr", snippetType="autosnippet"},
        fmta( "\\frac{<>}{<>}", {i(1, "num"), i(2, "denom"), } ),
        {condition = in_math}
    ),

    -- square RooT
    sw(
        {trig="rt",  snippetType="autosnippet"},
        fmta( "\\sqrt{<>}", {d(1, get_visual)} ),
        {condition = in_math} ),

    -- exponent (Power Of)
    sw(
        {trig="po", snippetType="autosnippet"},
        fmta( "^{<>}", {d(1, get_visual)} ),
        {condition = in_math}
    ),

    -- SUbscript
    sw(
        {trig="su", snippetType="autosnippet"},
        fmta( "_{<>}", {d(1, get_visual)} ),
        {condition = in_math}
    ),

    --COSine
    sw(
        {trig="cos", snippetType="autosnippet"},
        fmta( "\\cos(<>)", {d(1, get_visual)} ),
        {condition = in_math}
    ),

    --SINe
    sw(
        {trig="sin", snippetType="autosnippet"},
        fmta( "\\sin(<>)", {d(1, get_visual)} ),
        {condition = in_math}
    ),

    --TANgent
    sw(
        {trig="tan", snippetType="autosnippet"},
        fmta( "\\tan(<>)", {d(1, get_visual)} ),
        {condition = in_math}
    ),

    --SECant
    sw(
        {trig="sec", snippetType="autosnippet"},
        fmta( "\\sec(<>)", {d(1, get_visual)} ),
        {condition = in_math}
    ),

    --CoSeCant
    sw(
        {trig="csc", snippetType="autosnippet"},
        fmta( "\\csc(<>)", {d(1, get_visual)} ),
        {condition = in_math}
    ),

    --COTangent
    sw(
        {trig="cot", snippetType="autosnippet"},
        fmta( "\\cot(<>)", {d(1, get_visual)} ),
        {condition = in_math}
    ),

    -- transforms
    sw(
        {trig="op",  snippetType="autosnippet"},
        fmta( "\\mathcal{<>}", {d(1, get_visual)} ),
        {condition = in_math}
    ),


    --iNFinity
    sw( {trig="nf",  snippetType="autosnippet"}, {t("\\infty")}, {condition = in_math} ),

    --PArtial differential
    sw( {trig="pa",  snippetType="autosnippet"}, {t("\\partial")}, {condition = in_math} ),

    -- large operators
    sw( {trig="nt",  snippetType="autosnippet"}, {t("\\int")}, {condition = in_math} ),
    sw( {trig="ad",  snippetType="autosnippet"}, {t("\\sum")}, {condition = in_math} ),
    sw( {trig="lim",  snippetType="autosnippet"}, {t("\\lim")}, {condition = in_math} ),
    sw( {trig="pr",  snippetType="autosnippet"}, {t("\\prod")}, {condition = in_math} ),

    -- relational operators
    sw( {trig="to",  snippetType="autosnippet"}, {t("\\to")}, {condition = in_math} ),

    -- binary operators
    sw( {trig="tim",  snippetType="autosnippet"}, {t("\\times")}, {condition = in_math} ),
    sw( {trig="div",  snippetType="autosnippet"}, {t("\\div")}, {condition = in_math} ),
    -- sw( {trig="pm",  snippetType="autosnippet"}, {t("\\pm")}, {condition = in_math} ),
    -- sw( {trig="mp",  snippetType="autosnippet"}, {t("\\mp")}, {condition = in_math} ),

    -- Greek Alphabet (lowercase)
    sw( {trig=";a",  snippetType="autosnippet"}, {t("\\alpha")}, {condition = in_math} ),
    sw( {trig=";b",  snippetType="autosnippet"}, {t("\\beta")}, {condition = in_math} ),
    sw( {trig=";g",  snippetType="autosnippet"}, {t("\\gamma")}, {condition = in_math} ),
    sw( {trig=";d",  snippetType="autosnippet"}, {t("\\delta")}, {condition = in_math} ),
    sw( {trig=";e",  snippetType="autosnippet"}, {t("\\epsilon")}, {condition = in_math} ),
    sw( {trig=";ve", snippetType="autosnippet"}, {t("\\varepsilon")}, {condition = in_math} ),
    sw( {trig=";z",  snippetType="autosnippet"}, {t("\\zeta")}, {condition = in_math} ),
    sw( {trig=";h",  snippetType="autosnippet"}, {t("\\eta")}, {condition = in_math} ),
    sw( {trig=";y",  snippetType="autosnippet"}, {t("\\theta")}, {condition = in_math} ),
    sw( {trig=";i",  snippetType="autosnippet"}, {t("\\iota")}, {condition = in_math} ),
    sw( {trig=";k",  snippetType="autosnippet"}, {t("\\kappa")}, {condition = in_math} ),
    sw( {trig=";l",  snippetType="autosnippet"}, {t("\\lambda")}, {condition = in_math} ),
    sw( {trig=";m",  snippetType="autosnippet"}, {t("\\mu")}, {condition = in_math} ),
    sw( {trig=";n",  snippetType="autosnippet"}, {t("\\nu")}, {condition = in_math} ),
    sw( {trig=";x",  snippetType="autosnippet"}, {t("\\xi")}, {condition = in_math} ),
    sw( {trig=";p",  snippetType="autosnippet"}, {t("\\pi")}, {condition = in_math} ),
    sw( {trig=";r",  snippetType="autosnippet"}, {t("\\rho")}, {condition = in_math} ),
    sw( {trig=";s",  snippetType="autosnippet"}, {t("\\sigma")}, {condition = in_math} ),
    sw( {trig=";t",  snippetType="autosnippet"}, {t("\\tau")}, {condition = in_math} ),
    sw( {trig=";u",  snippetType="autosnippet"}, {t("\\upsilon")}, {condition = in_math} ),
    sw( {trig=";f",  snippetType="autosnippet"}, {t("\\phi")}, {condition = in_math} ),
    sw( {trig=";vf", snippetType="autosnippet"}, {t("\\varphi")}, {condition = in_math} ),
    sw( {trig=";c",  snippetType="autosnippet"}, {t("\\chi")}, {condition = in_math} ),
    sw( {trig=";w",  snippetType="autosnippet"}, {t("\\omega")}, {condition = in_math} ),
    sw( {trig=";ps", snippetType="autosnippet"}, {t("\\psi")}, {condition = in_math} ),

    -- Greek Alphabet (uppercase)
    sw( {trig=";G",  snippetType="autosnippet"}, {t("\\Gamma")}, {condition = in_math} ),
    sw( {trig=";D",  snippetType="autosnippet"}, {t("\\Delta")}, {condition = in_math} ),
    sw( {trig=";Y",  snippetType="autosnippet"}, {t("\\Theta")}, {condition = in_math} ),
    sw( {trig=";L",  snippetType="autosnippet"}, {t("\\Lambda")}, {condition = in_math} ),
    sw( {trig=";X",  snippetType="autosnippet"}, {t("\\Xi")}, {condition = in_math} ),
    sw( {trig=";P",  snippetType="autosnippet"}, {t("\\Pi")}, {condition = in_math} ),
    sw( {trig=";S",  snippetType="autosnippet"}, {t("\\Sigma")}, {condition = in_math} ),
    sw( {trig=";U",  snippetType="autosnippet"}, {t("\\Upsilon")}, {condition = in_math} ),
    sw( {trig=";F",  snippetType="autosnippet"}, {t("\\Phi")}, {condition = in_math} ),
    sw( {trig=";C",  snippetType="autosnippet"}, {t("\\Chi")}, {condition = in_math} ),
    sw( {trig=";Ps", snippetType="autosnippet"}, {t("\\Psi")}, {condition = in_math} ),
    sw( {trig=";W",  snippetType="autosnippet"}, {t("\\Omega")}, {condition = in_math} ),
}
