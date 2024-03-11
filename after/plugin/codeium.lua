vim.keymap.set('i', '<C-i>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
