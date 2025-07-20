local oil = require("oil")
oil.setup({
	columns = {
		"icon",
		-- "permissions",
		"size",
		-- "mtime",
	},

	win_options = {
		winbar = "%!v:lua.get_oil_winbar()",
	},
	view_options = {
		show_hidden = true,
		is_hidden_file = function(name, bufnr)
		  local m = name:match("^%.")
		  return m ~= nil
		end,
	},
	float = {
		max_width = 50,
		border = "rounded",
		win_options = {
			winblend = 1
		}
	},
	preview_win = {
		update_on_cursor_moved = true,
		preview_method = "fast_scratch",
		disable_preview = function(filename)
			return true
		end
	}
})

vim.keymap.set("n", "<leader>ff", oil.open_float)



-- Declare a global function to retrieve the current directory
function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require("oil").get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end
