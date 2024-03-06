local M = {
  "nvim-neorg/neorg",
  dependencies = {"nvim-lua/plenary.nvim"},
  build = ":Neorg sync-parsers",
  lazy = true,
  ft = "norg",
  cmd = "Neorg",
}

function M.config()
  require("neorg").setup {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {}, -- iconize documents
      ["core.keybinds"] = {},
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/notes",
          }
        }
      }
    }
  }
end

return M
