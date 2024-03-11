local M = {
  -- https://github.com/mfussenegger/nvim-dap-python
  'mfussenegger/nvim-dap-python',
  ft = 'python',
  dependencies = {
    -- https://github.com/mfussenegger/nvim-dap
    'mfussenegger/nvim-dap',
  }
}

function M.config()
  -- Update the path passed to setup to point to your system or virtual env python binary
  require('dap-python').setup('/usr/bin/python3')
end

return M
