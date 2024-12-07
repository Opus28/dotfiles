vim.g.mapleader = " "

-- Toggle light/dark mode
vim.keymap.set('n', '<leader>ct', function ()
    vim.o.bg = (vim.o.bg == "dark" and "light" or "dark")
end)

-- Open terminal 
vim.keymap.set('n', '<leader>tt', ':botright 16split|term<CR>', {silent = true})

-- Clear highlighting with Esc
vim.keymap.set('n', '<esc>', ':noh<CR><esc>', {silent = true})

-- Windows
vim.keymap.set('n', '<c-w><c-v>', ':belowright vertical split<CR>', {silent = true}) -- manual splits go right

-- Refresh settings
-- vim.keymap.set('n', '<leader>r', ':source ~/.dotfiles/nvim/.config/nvim/lua/core/keymaps.lua' + ':source <CR>', { silent = true })
vim.keymap.set('n', '<leader>r', ':source ~/.dotfiles/nvim/.config/nvim/init.lua<CR>', { silent = true })
