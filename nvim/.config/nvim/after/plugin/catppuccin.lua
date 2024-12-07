require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = true,
        mini = true,
    },
})

-- default config
require('solarized').setup({
    transparent = false, -- enable transparent background
    palette = 'solarized', -- or selenized
    styles = {
      comments = {},
      functions = {},
      variables = {},
      numbers = {},
      constants = {},
      parameters = {},
      keywords = {},
      types = {},
    },
    enables = {
      bufferline = true,
      cmp = true,
      diagnostic = true,
      dashboard = true,
      editor = true,
      gitsign = true,
      hop = true,
      indentblankline = true,
      lsp = true,
      lspsaga = true,
      navic = true,
      neogit = true,
      neotree = true,
      notify = true,
      noice = true,
      semantic = true,
      syntax = true,
      telescope = true,
      tree = true,
      treesitter = true,
      todo = true,
      whichkey = true,
      mini = true,
    },
    highlights = {},
    colors = {},
    theme = 'neo', -- or 'neo'
    autocmd = true,
})

vim.cmd.colorscheme "catppuccin"
