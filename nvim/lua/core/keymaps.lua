local keymap = vim.keymap.set

-- Leader key
vim.g.mapleader = " "

-- Modalità normale
keymap("n", "<leader>w", ":w<CR>", { desc = "Salva file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Chiudi finestra" })
keymap("n", "<C-h>", "<C-w>h", { desc = "Muovi a sinistra" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Muovi in basso" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Muovi in alto" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Muovi a destra" })

-- Modalità inserimento
keymap("i", "jk", "<ESC>", { desc = "Esci dalla modalità inserimento" })

-- Modalità visuale
keymap("v", "<", "<gv", { desc = "Indenta a sinistra" })
keymap("v", ">", ">gv", { desc = "Indenta a destra" })
