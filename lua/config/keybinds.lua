vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Neotree
vim.keymap.set("n", "<leader>d", "<cmd>Neotree toggle reveal<cr>") -- Open tree and focus on current filee

-- Toggleterm
local term = "<Cmd>ToggleTerm direction=horizontal size=15<CR>"

vim.keymap.set("n", "<C-t>", term, { desc = "Terminal toggle" }) -- Open/Close terminal in normal mode
vim.keymap.set("t", "<C-t>", term, { desc = "Terminal toggle" }) -- Open/Close terminal in terminal mode
