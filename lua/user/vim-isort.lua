local M = {
  -- https://github.com/fisadev/vim-isort
  'fisadev/vim-isort',
  ft = 'python',
}

function M.config()
    -- Disable default key binding
    vim.g.vim_isort_map = ''

    -- Automatically format file buffer when saving
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      pattern = "*.py",
      callback = function()
        vim.cmd("Isort")
      end,
    })
end

return M
