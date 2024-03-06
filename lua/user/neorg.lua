local M = {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  lazy = true, -- specify lazy = false because some lazy.nvim distributions set lazy = true by default
  ft = "norg",
  cmd = "Neorg",
  -- tag = "*",
  dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
  require("neorg").setup {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {
        -- Dont like undone todos concealed with x
        config = {
          icons = {
            todo = {
              undone = {
                icon = " ",
              }
            }
          }
        }
      }, -- Adds pretty icons to your documents
      ['core.export'] ={}, -- cmp support 
      ['core.completion'] ={
        config = {
          engine = "nvim-cmp"
        }
      }, -- cmp support 
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/notes",
          },
          default_workspace = "notes",
        },
      },
    },
  }
end

return M

