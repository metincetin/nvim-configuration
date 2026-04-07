local flash = require("flash")

flash.setup({
	modes = {
		char = {
			enabled = false
		}
	}
})




-- vim.keymap.set({'n', 'v'}, "<leader>aa", function() hop.hint_char1() end)
vim.keymap.set({'n', 'v'}, "<leader>aa", function() flash.jump() end, {desc = "Flash Jump"})
