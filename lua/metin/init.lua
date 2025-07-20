require("metin.remap")
require("metin.set")
require("metin.packer")

if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
	vim.g.neovide_floating_blur_amount_x = 2.0
	vim.g.neovide_floating_blur_amount_y = 2.0
end

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
