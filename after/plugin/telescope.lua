--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, { noremap = true, silent = true, hidden = true,  })
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--vim.keymap.set('n', '<leader>fg', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)
--vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true }

map('n', '<leader>\\', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
map('n', '<leader><bar>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
map('n', '<leader>ff',
    "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--no-ignore-vcs', '--hidden', '-g', '!.git' }})<cr>",
    default_opts)
map('n', '<leader>fr', "<cmd>lua require'telescope.builtin'.buffers({ show_all_buffers = true })<cr>", default_opts)
map('n', '<leader>fg', "<cmd>lua require'telescope.builtin'.git_status()<cr>", default_opts)
map('n', '<leader>f?', ":TodoTelescope<cr>", default_opts)
map('n', '<leader>/', ":silent grep ", default_opts)
map('n', '<leader>_', "<cmd>lua require'telescope.builtin'.live_grep()<cr>", default_opts)
