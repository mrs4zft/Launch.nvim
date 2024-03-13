require "user.launch"
require "user.options"
require "user.keymaps"
require "user.autocmds"


-- Plugins
---- Coloring Highlighting
spec "user.colorschemes.rosepine"
spec "user.devicons"
spec "user.treesitter"
spec "user.illuminate"

---- Lsp related
spec "user.mason"
spec "user.schemastore"
spec "user.lspconfig"
spec "user.none-ls"
spec "user.neotest"
spec "user.extras.trouble"

-- Completion
spec "user.cmp"
spec "user.whichkey"
spec "user.comment"
spec "user.autopairs"

-- Fuzzyness
spec "user.telescope"
spec "user.telescope-file-browser"

-- Files & Buffers Navigation
spec "user.nvimtree"
spec "user.navic"
spec "user.breadcrumbs"
spec "user.harpoon"
spec "user.oil"
spec "user.neoscroll"
spec "user.ufo"

-- UI
spec "user.lualine"
spec "user.alpha"
spec "user.indentline"
spec "user.toggleterm"
spec "user.extras.fidget"
spec "user.extras.cellular-automaton"

-- git
spec "user.gitsigns"
spec "user.neogit"
spec "user.project"
spec "user.diffview"
spec "user.fugitive"

-- note taking
spec "user.neorg"

-- mini
---- mini.ai better a and i commands
---- mini.surround surrounding objects with characters
spec "user.mini"

-- python
spec "user.black"
spec "user.nvim-dap-ui"
spec "user.nvim-dap-python"
spec "user.vim-isort"
spec "user.nvim-lint"
spec "user.nvim-dap-virtual-text"

require "user.lazy"
