local viz = require('vi-viz')
vim.keymap.set('n', '<leader>kk', function() viz.vizInit() end)
vim.keymap.set('x', '<leader>kk', function() viz.vizExpand() end)
