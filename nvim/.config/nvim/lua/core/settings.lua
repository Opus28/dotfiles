-- View
vim.opt.number = true               --> show line numbers
vim.opt.relativenumber = false      --> show relative line numbers
vim.opt.cursorline = true           --> highlight current line
vim.opt.showcmd = true              --> show last command at last line
-- vim.opt.colorcolumn = "86"          --> highlight 86th column

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "number"

-- Indentation and so such
vim.opt.expandtab = true            --> tab inserts spaces
vim.opt.tabstop = 4                 --> tab width is 4 spaces
vim.opt.shiftwidth = 4              --> ">" & "<" shift by four
vim.opt.shiftround = true           --> round shift indentation

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.lsp.set_log_level("debug")
