
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)



-- thePrimagen mappings
-- https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua

-- move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- on J, keeps cursor in current place, instead of end
vim.keymap.set("n", "J", "mzJ`z")

-- Scrolling keeps cursor centered on screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep searched terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over selected text, and send deleted text to void
-- keeps current text in register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete and save to system clipboard
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- end thePrimagen remaps
