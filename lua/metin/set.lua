

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true


vim.opt.scrolloff = 8

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.opt.signcolumn =  "yes"
vim.opt.guicursor = "n-v-i-c:block-Cursor"

vim.g.mapleader = " "

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.o.exrc = true


-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
  callback = function ()
    vim.diagnostic.open_float(nil, {focus=false})
  end
})
