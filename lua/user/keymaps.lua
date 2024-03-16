local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

keymap("n", "ö", "[", opts)
keymap("n", "<C-ä>", "<C-]>", opts)
keymap("n", "Ö", "{", opts)
keymap("n", "Ä", "}", opts)
keymap("n", "ü", "@", opts)

keymap("n", "<C-i>", "<C-i>", opts)

 -- Remove search highlights through ESC
keymap("n", "<ESC>", "<cmd>nohlsearch<CR>")

-- Better window navigation
keymap("n", "<M-j>", "<C-w>w", opts) -- Alt j

-- Stay centered on moving
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Diagnostic keymaps
-- keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
-- keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap('n', '<leader>de', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- more good
keymap({ "n", "o", "x" }, "<s-h>", "^", opts)
keymap({ "n", "o", "x" }, "<s-l>", "g_", opts)

-- tailwind bearable to work with
keymap({ "n", "x" }, "j", "gj", opts)
keymap({ "n", "x" }, "k", "gk", opts)

-- Toggle line wrap
opts.desc = "Toggle line wrap"
keymap("n", "<leader>W", ":lua vim.wo.wrap = not vim.wo.wrap<CR>", opts)

opts.desc = nil
vim.api.nvim_set_keymap('t', '<C-;>', '<C-\\><C-n>', opts)

-- Move highlighted text up and down and indent properly
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Leave cursor where it is when joining lines
keymap("n", "J", "mzJ`z")


-- In visual mode, replace selection without yanking
keymap("x", "<leader>p", [["_dP]], { desc = "Paste without yank" })

keymap({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yank" })

keymap("n", "Q", "<nop>")

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Change word under cursor" })

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
