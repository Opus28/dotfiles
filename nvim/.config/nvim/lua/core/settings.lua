-- View
vim.opt.number = true               --> show line numbers
vim.opt.relativenumber = false      --> show relative line numbers
vim.opt.cursorline = true           --> highlight current line
vim.opt.cursorcolumn = true         --> highlight current column
vim.opt.showcmd = true              --> show last command at last line
vim.opt.foldenable = false          --> open folds by default
vim.opt.wrap = false                --> wrap lines which are too long
-- vim.opt.colorcolumn = "86"       --> highlight 86th column

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 2
vim.opt.signcolumn = "number"

-- Windows
vim.opt.splitbelow = true
vim.opt.splitright = false

-- Indentation and so such
vim.opt.expandtab = true            --> tab inserts spaces
vim.opt.tabstop = 4                 --> tab width is 4 spaces
vim.opt.shiftwidth = 4              --> ">" & "<" shift by four
vim.opt.shiftround = true           --> round shift indentation

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
