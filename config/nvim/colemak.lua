
local config = require("core.utils").load_config()

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
local xpr = {noremap = true, expr = true}

-- Colemak Keybindings 
----------------------
--     ^
--     e
-- < h   i >
--     n
--     v
map('n', 'n', 'j', opts)
map('x', 'n', 'j', opts)
map('o', 'n', 'j', opts)
map('n', 'e', 'k', opts)
map('x', 'e', 'k', opts)
map('o', 'e', 'k', opts)
map('n', 'i', 'l', opts)
map('x', 'i', 'l', opts)
map('o', 'i', 'l', opts)

-- Colemak Insert
map('n', 'u', 'i', opts)
map('n', 'U', 'I', opts)
map('x', 'u', 'i', opts)
map('x', 'U', 'I', opts)
map('o', 'u', 'i', opts)
map('o', 'U', 'I', opts)

-- Undo/redo
map('n', 'l', 'u', opts)
map('x', 'l', ':<C-U>undo<CR>', opts)
map('n', 'gl', 'u', opts)
map('x', 'gl', ':<C-U>undo<CR>', opts)

-- Common
map('i', '<C-s>', '<ESC>:w<CR>i<right>', norm)
map('n', '<C-s>', ':w<CR>', norm)
map('n', '<C-q>', ':q<CR>', norm)
map('n', '<A-">', '<C-y>', norm)
map('n', '<A-:>', '<C-e>', norm)
map('n', '<C-l>', 'zz', norm)
map('n', 'E', '5k', norm)
map('n', 'N', '5j', norm)
map('n', 'H', '0', norm)
map('n', 'I', '$', norm)
map('n', '<C-e>', '5<C-y>', norm)
map('n', '<C-n>', '5<C-e>', norm)
