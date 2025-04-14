local module = { }

function module.setup(use)
	use "zootedb0t/citruszest.nvim"
	use 'javiorfo/nvim-nyctophilia'
	use "seandewar/paragon.vim"
	use "miikanissi/modus-themes.nvim"
	use "EdenEast/nightfox.nvim"
	use {'nyoom-engineering/oxocarbon.nvim'}

	use { "dgox16/oldworld.nvim",
	config = function()
		require("oldworld").setup({
			styles = {
				booleans = { italic = true, bold = true },
				functions = { italic = true, bold = true },
			},
			integrations = {
			},
		})
	end}
end

return module
