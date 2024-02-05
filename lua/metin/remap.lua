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

vim.keymap.set('n', '<leader>wsv', ":sp<cr>")
vim.keymap.set('n', '<leader>wa', ":%bd|e#<cr>")

vim.keymap.set('n', '<leader>wo', ":wincmd w<cr>")

vim.keymap.set('n', '<leader>bp', ":bprevious<cr>")
vim.keymap.set('n', '<leader>bn', ":bnext<cr>")
vim.keymap.set('n', '<leader>bx', ":wq!<cr>")
