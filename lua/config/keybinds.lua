vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Neotree
vim.keymap.set("n", "<leader>d", "<cmd>Neotree toggle reveal left<cr>") -- Open tree and focus on current file

-- Toggleterm
local term = '<Cmd>ToggleTerm direction=horizontal size=15<CR>'

-- Normal → abre la terminal
vim.keymap.set('n', '<C-t>', term, { desc = 'Terminal toggle' })
-- Dentro de la terminal → mismo atajo la cierra
vim.keymap.set('t', '<C-t>', term, { desc = 'Terminal toggle' })
