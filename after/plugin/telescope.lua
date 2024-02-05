local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles)
vim.keymap.set('n', '<leader>fs', builtin.live_grep)
vim.keymap.set('n', '<leader>bb', builtin.buffers)
vim.keymap.set('n', '<C-p>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>ps', function()

builtin.grep_string({search = vim.fn.input("Grep > ") })

end)
