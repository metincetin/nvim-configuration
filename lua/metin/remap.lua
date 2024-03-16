vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)



vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gvu")

vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv'")

vim.keymap.set("i", "aü", "<Esc>")
vim.keymap.set('i', '<C-H>', '<C-W>', {noremap = true})


vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set('n', '<leader>wsh', ":vsp<cr>")
vim.keymap.set('n', '<leader>wsv', ":sp<cr>")

vim.keymap.set('n', '<leader>wa', ":only<cr>")

vim.keymap.set('n', '<leader>wo', ":wincmd w<cr>")


vim.keymap.set('n', '<leader>bp', ":bprevious<cr>")
vim.keymap.set('n', '<leader>bn', ":bnext<cr>")
vim.keymap.set('n', '<leader>bx', ":bd<cr>")

vim.keymap.set('i', "<M-k>", "<Up>")
vim.keymap.set('i', "<M-j>", "<Down>")
vim.keymap.set('i', "<M-l>", "<Right>")
vim.keymap.set('i', "<M-h>", "<Left>")
vim.keymap.set('i', "<M-w>", "<C-Right>")
vim.keymap.set('i', "<M-b>", "<C-Left>")


vim.keymap.set("n", "<C-s>", function()
	vim.cmd(":keepjumps normal $a;")
end)
