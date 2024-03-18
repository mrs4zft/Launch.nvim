local M = {
  "nvim-lualine/lualine.nvim",
  -- dependencies = {
  --   "AndreM222/copilot-lualine",
  -- },
}

function M.config()
  require("lualine").setup {
    options = {
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" }, 
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      ignore_focus = { "NvimTree" },
    },
    sections = {
      lualine_a = {"mode", "searchcount"},
      lualine_b = { "branch" , "diff"},
      lualine_c = { "diagnostics" },
      lualine_x = {  "filetype" },
      lualine_y = { "progress" },
      lualine_z = {"location"},
    },
    extensions = { "quickfix", "man", "fugitive" , "trouble", "nvim-dap-ui", "oil"},
  }
end

return M
