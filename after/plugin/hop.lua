local hop = require('hop')


vim.keymap.set({'n', 'v'}, "<leader>aa", function() hop.hint_char1() end)
