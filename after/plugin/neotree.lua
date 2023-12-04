-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>:Neotree toggle<cr>", { noremap = true, silent = true })
