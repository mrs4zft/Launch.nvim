local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
}


function M.config()
  local servers = {
    "lua_ls",
    "pyright",
    "bashls",
    "jsonls",
  }

  -- Linters, Formatters
  local tools = {
    'black',
    'debugpy',
    'flake8',
    'isort',
    'mypy',
    'pylint',
  }

  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }

  require('mason-tool-installer').setup({
    -- Install these linters, formatters, debuggers automatically
    ensure_installed = tools
  })
  vim.api.nvim_command('MasonToolsInstall')

  require("mason-lspconfig").setup {
    ensure_installed = servers,
  }
end

return M
