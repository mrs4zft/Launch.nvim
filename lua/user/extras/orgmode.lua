local M = {
  'nvim-orgmode/orgmode',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', lazy = true },
    {"ranjithshegde/orgWiki.nvim"},
    {"akinsho/org-bullets.nvim"},
    {'dhruvasagar/vim-table-mode'},
    {
        "lukas-reineke/headlines.nvim",
        config = true, -- or `opts = {}`
    },
  },
  event = 'VeryLazy',
}

function M.config()
  -- Load treesitter grammar for org
  require('orgmode').setup_ts_grammar()

  -- Setup treesitter
  require('nvim-treesitter.configs').setup({
    highlight = {
      enable = true,
    },
    ensure_installed = { 'org' },
  })
  -- Setup completion
  require('cmp').setup({
    sources = {
      { name = 'orgmode' }
    }
  })
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
        half = { "", "OrgTSCheckboxHalfChecked" },
        done = { "✓", "OrgDone" },
        todo = { " ", "OrgTODO" },
      },
    }
  }
  -- Setup orgmode
  require('orgmode').setup({
    org_agenda_files = '~/org/**/*',
    org_default_notes_file = '~/org/refile.org',
    mappings = {
      org_return_uses_meta_return = true
    },
    org_startup_folded = {'showeverything'},
    org_capture_templates = {
      r = {
        description = "Repo",
        template = "* [[%x][%(return string.match('%x', '([^/]+)$'))]]%?",
        target = "~/org/repos.org",
      }
    }
  })
end

return M
