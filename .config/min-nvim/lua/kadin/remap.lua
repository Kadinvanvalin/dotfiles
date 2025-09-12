vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- disable arrow keys
vim.keymap.set({'n','i'}, '<Up>', '<Nop>');
vim.keymap.set({'n','i'}, '<Down>', '<Nop>');
vim.keymap.set({'n','i'}, '<Left>', '<Nop>');
vim.keymap.set({'n','i'}, '<Right>', '<Nop>');
