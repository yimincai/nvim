vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
-- 使用 <F1> 切換到下一個文檔
vim.api.nvim_set_keymap('n', '<F1>', ':bnext<CR>', { noremap = true, silent = true })
-- 使用 <F1> 切換到前一個文檔
vim.api.nvim_set_keymap('n', '<F1>', ':bprev<CR>', { noremap = true, silent = true })

-- use Ctrl-hjkl to switch between windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- 使用 <F2> 交換當前視窗和下一個視窗的位置
vim.api.nvim_set_keymap('n', '<F2>', '<C-w>x', { noremap = true, silent = true })

-- Copilot
vim.g.copilot_assume_mapped = true
