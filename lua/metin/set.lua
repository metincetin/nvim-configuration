

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true


vim.opt.scrolloff = 8

vim.opt.updatetime = 50
vim.opt.colorcolumn = "0"
vim.opt.signcolumn =  "yes"
--vim.opt.guicursor = "n-v-i-c:block-Cursor"

vim.g.mapleader = " "

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.o.exrc = true


vim.diagnostic.goto_prev { float = false }

if vim.g.neovide then
	-- disable cursor animation
	-- vim.g.neovide_cursor_animation_length = 0
end
