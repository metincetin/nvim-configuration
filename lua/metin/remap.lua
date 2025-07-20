vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory"})



vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gvu")

vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv'")

vim.keymap.set("i", "aü", "<Esc>")
vim.keymap.set('i', '<C-H>', '<C-W>', {noremap = true})


vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set('n', '<leader>wsh', ":vsp<cr>", { desc = "Split window horizontally"})
vim.keymap.set('n', '<leader>wsv', ":sp<cr>", { desc = "Split window vertically"})

vim.keymap.set('n', '<C-w>v', ":vsp<cr>:wincmd w<cr>", { desc = "Create window to right"})
vim.keymap.set('n', '<C-w><C-v>', ":vsp<cr>:wincmd w<cr>", { desc = "Create window below"})

vim.keymap.set('n', '<C-w>s', ":sp<cr>:wincmd w<cr>", { desc = "Split window horizontally" })
vim.keymap.set('n', '<C-w><C-s>', ":sp<cr>:wincmd w<cr>", {desc = "Split window vertically"})

vim.keymap.set('n', '<C-q>', ":q<cr>", { desc = "Delete window"})

vim.keymap.set('n', '<leader>wa', ":only<cr>", { desc = "Delete all windows except focused"})

vim.keymap.set('n', '<leader>wo', ":wincmd w<cr>", { desc = "Other window"})


vim.keymap.set('n', '<leader>bp', ":bprevious<cr>", { desc = "Previous buffer"})
vim.keymap.set('n', '<leader>bn', ":bnext<cr>", { desc = "Next buffer"})
vim.keymap.set('n', '<leader>bx', ":bd<cr>", { desc = "Delete buffer"})

vim.keymap.set('i', "<M-k>", "<Up>")
vim.keymap.set('i', "<M-j>", "<Down>")
vim.keymap.set('i', "<M-l>", "<Right>")
vim.keymap.set('i', "<M-h>", "<Left>")
vim.keymap.set('i', "<M-w>", "<C-Right>")
vim.keymap.set('i', "<M-b>", "<C-Left>")

vim.keymap.set('n', '<leader>fed', ":e ~/.config/nvim<cr>", { desc = "Open config file"})


vim.keymap.set('n', '<leader>pa', ":Alpha<cr>", { desc = "Welcome screen"})

vim.keymap.set("n", "<leader>bX", ":%bd|e#<cr>")


-- winjump
i = 1
while i <= 9
do
	vim.keymap.set("n", "<leader>" .. i, ":" .. i .. "wincmd w<cr>", { desc = "Jump to window " .. i})
	i= i + 1
end


vim.keymap.set("n", "<C-s>", function()
	vim.cmd(":keepjumps normal $a;")
end)
