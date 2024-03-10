local M = {
  "ThePrimeagen/harpoon",
  branch = 'harpoon2',
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
}

function M.config()
  local harpoon = require("harpoon")
  -- REQUIRED
  harpoon:setup({})
  -- REQUIRED

  vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = 'Harpoon buffer' })
  vim.keymap.set("n", "<Tab>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

  -- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
  -- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
  -- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
  -- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

  -- Toggle previous & next buffers stored within Harpoon list
  vim.keymap.set("n", "<C-l>", function() harpoon:list():prev() end, { desc = 'Previous harpoon' })
  vim.keymap.set("n", "<C-h>", function() harpoon:list():next() end, { desc  = 'Next harpoon' })
end

-- function M.mark_file()
--   require("harpoon"):list():append()
--   vim.notify "󱡅  marked file"
-- end

return M
