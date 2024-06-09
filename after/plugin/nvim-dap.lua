local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = '/usr/local/bin/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}


vim.keymap.set("n", "<leader>dc", function() dap.continue() end)
vim.keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dso", function() dap.step_over() end)
vim.keymap.set("n", "<leader>dsi", function() dap.step_into() end)
vim.keymap.set("n", "<leader>dsl", function() dap.step_out() end)
