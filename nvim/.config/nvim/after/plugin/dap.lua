local dap = require('dap')

vim.keymap.set('n', '<F1>', require'dap'.step_back)
vim.keymap.set('n', '<F2>', require'dap'.step_into)
vim.keymap.set('n', '<F3>', require'dap'.step_over)
vim.keymap.set('n', '<F4>', require'dap'.step_out)
vim.keymap.set('n', '<F5>', require'dap'.continue)
vim.keymap.set('n', '<leader>db', require'dap'.toggle_breakpoint)
vim.keymap.set('n', '<leader>dr', require'dap'.repl.open)

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js'},
}

dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}

dap.configurations.typescript = {
  {
    name = "Debug (Attach) - Remote",
    type = "node2",
    request = "attach",
    -- program = "${file}",
    -- cwd = vim.fn.getcwd(),
    sourceMaps = true,
    -- reAttach = true,
    trace = true,
    -- protocol = "inspector",
    -- hostName = "127.0.0.1",
    port = 9229,
    webRoot = "${workspaceFolder}"
  }
}

require('dap-python').setup('/usr/bin/python3')

