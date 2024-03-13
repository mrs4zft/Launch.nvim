local M = {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
 },
}

function M.config()
  local wk = require("which-key")
  -- Lua
  wk.register({
    ["<leader>d"] = { name = 'Trouble diagnostics'},
    ["<leader>dx"] = {function() require("trouble").toggle() end, 'Open trouble' },
    ["<leader>dw"] = {function() require("trouble").toggle("workspace_diagnostics") end, 'Workspace diagnostics'},
    ["<leader>dd"] = {function() require("trouble").toggle("document_diagnostics") end, 'Document diagnostics'},
    ["<leader>dq"] = {function() require("trouble").toggle("quickfix") end, 'Trouble quickfix'},
    ["<leader>dl"] = {function() require("trouble").toggle("loclist") end, 'Loclist'},
    ["<leader>dR"] = {function() require("trouble").toggle("lsp_references") end, 'LSP references'},
    ["öt"] = {function() require("trouble").next({skip_groups = true, jump = true}) end, 'Next trouble'},
    ["ät"] = {function() require("trouble").previous({skip_groups = true, jump = true}) end, 'Previous trouble'},
  })
end

return M
