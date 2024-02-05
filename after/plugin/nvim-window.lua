local win = require('nvim-window')
vim.keymap.set('n', '<leader>ww', function() win.pick() end)
