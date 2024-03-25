local M = {
  "nvim-orgmode/orgmode",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter", lazy = true },
    { "ranjithshegde/orgWiki.nvim" },
    { "akinsho/org-bullets.nvim" },
    { "dhruvasagar/vim-table-mode" },
  },
  event = "VeryLazy",
}

function M.config()
  -- Mapping to add new items from insert mode.
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "org",
    callback = function()
      vim.keymap.set("i", "<M-CR>", '<cmd>lua require("orgmode").action("org_mappings.meta_return")<CR>', {
        silent = true,
        buffer = true,
      })
    end,
  })

  vim.keymap.set("n", "<leader>oo", "<cmd>e ~/org/refile.org<CR>", { desc = "Open refile.org" })

  -- Load treesitter grammar for org
  require("orgmode").setup_ts_grammar()

  -- Setup treesitter
  require("nvim-treesitter.configs").setup {
    highlight = {
      enable = true,
    },
    ensure_installed = { "org" },
  }

  -- Org wiki
  require("orgWiki").setup {
    wiki_path = { "~/org/wiki/" },
    diary_path = "~/org/diary/",
  }
  -- setup org bullets
  require("org-bullets").setup {
    concealcursor = false, -- If false then when the cursor is on a line underlying characters are visible
    symbols = {
      -- list symbol
      list = "•",
      -- headlines can be a list
      headlines = { "◉", "○", "✸", "✿" },
      -- or false to disable the symbol. Works for all symbols
      checkboxes = {
        half = { "󰦖", "OrgTSCheckboxHalfChecked" },
        done = { "✓", "OrgDone" },
        todo = { " ", "OrgTODO" },
      },
    },
  }
  -- Setup orgmode
  require("orgmode").setup {
    org_agenda_files = "~/org/**/*",
    org_archive_file = "~/org/archive/2024archive.org",
    org_default_notes_file = "~/org/refile.org",
    -- mappings = {
    --   org_return_uses_meta_return = true
    -- },
    org_startup_folded = "showeverything",
    org_capture_templates = {
      r = {
        description = "Repo",
        template = "* [[%x][%(return string.match('%x', '([^/]+)$'))]]%?",
        target = "~/org/repos.org",
      },
      p = {
        description = "Positivtagebuch",
        template = "* %t",
        target = "~/org/positiv.org",
      },
    },
  }
end

return M
