-- View
vim.opt.number = true               --> show line numbers
vim.opt.relativenumber = false      --> show relative line numbers
-- vim.opt.cursorline = true           --> highlight current line
-- vim.opt.hlsearch = false          --> don't highlight stuff
vim.opt.showcmd = true              --> show last command at last line

-- Indentation and so such
vim.opt.expandtab = true            --> tab inserts spaces
vim.opt.tabstop = 4                 --> tab width is 4 spaces
vim.opt.shiftwidth = 4              --> ">" & "<" shift by four
vim.opt.shiftround = true           --> round shift indentation

-- Keymaps
vim.keymap.set('n', '<esc>', ':noh<CR><esc>', {silent = true})
