local telescope = require("telescope")
telescope.load_extension("media_files")
telescope.setup{
	defaults = {
		-- ignore *.meta and *.asset files
		file_ignore_patterns = {"%.meta", "%.asset"}
	}
}


local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function() builtin.find_files({find_command = {'fd', '--type', 'f'}}) end, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles)
vim.keymap.set('n', '<leader>fw', builtin.grep_string)
vim.keymap.set('n', '<leader>fs', builtin.live_grep)
vim.keymap.set('n', '<leader>bb', function() builtin.buffers({
	sort_mru=true, ignore_current_buffer=true
}) end)
vim.keymap.set('n', '<C-p>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


vim.keymap.set('n', '<leader>ps', function()

builtin.grep_string({search = vim.fn.input("Grep > ") })

end)
