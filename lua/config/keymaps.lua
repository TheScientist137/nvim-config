vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex) -- Open nvim default Explorer


vim.keymap.set("n", "B", "^") -- Jump to first word
vim.keymap.set("n", "E", "$") -- Jump to last word

-- Keymaps config for windows (split windows)
vim.keymap.set("n", "<S-l>", "<C-w>l")            -- Move right
vim.keymap.set("n", "<S-h>", "<C-w>h")            -- Move left
vim.keymap.set("n", "<S-k>", "<C-w>k")            -- Move up
vim.keymap.set("n", "<S-j>", "<C-w>j")            -- Move down
vim.keymap.set("n", "<leader>bc", "<cmd>:bd<cr>") -- (buffer)

-- Keymaps config for tab windows
vim.keymap.set("n", "<C-l>", "<cmd>tabnext<cr>")
vim.keymap.set("n", "<C-h>", "<cmd>tabprev<cr>")
vim.keymap.set("n", "<C-w>", "<cmd>tabclose<cr>")

-- Mover la línea actual (o bloque visual) hacia arriba / abajo
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")     -- Alt-j → línea hacia abajo
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")     -- Alt-k → línea hacia arriba
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- mismo en modo visual
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
