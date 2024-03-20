local M = {
  "L3MON4DE/LuaSnip",
  version = "2.2.0",
  build = "make install_jsregexp",
  dependencies = {
    -- `friendly-snippets` contains a variety of premade snippets.
    --    See the README about individual language/framework/plugin snippets:
    --    https://github.com/rafamadriz/friendly-snippets
    {
      'rafamadriz/friendly-snippets',
      config = function()
        require('luasnip.loaders.from_vscode').lazy_load()
      end,
    },
  },
}

function M.config()
  local ls = require("luasnip")
  --- TODO: What is expand?
  vim.keymap.set({"i", "s"}, "<C-Tab>", function()
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    end
  end, {silent = true})
end

return M
