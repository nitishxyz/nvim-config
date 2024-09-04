local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }


vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Navigate vim panes better
map("n", "<c-k>", ":wincmd k<CR>", opts)
map("n", "<c-j>", ":wincmd j<CR>", opts)
map("n", "<c-h>", ":wincmd h<CR>", opts)
map("n", "<c-l>", ":wincmd l<CR>", opts)

map("n", "<leader>h", ":nohlsearch<CR>", opts)

vim.cmd("set ignorecase")
vim.cmd("set smartcase")
-- Set clipboard to system clipboard
vim.cmd("set clipboard=unnamedplus")

map("n", "<space>e", ":lua vim.diagnostic.open_float()<CR>", opts)

-- Copy to clipboard
map("n", "<A-y>", "+y", opts)
map("n", "<A-Y>", "+Y", opts)
map("n", "<A-yy>", "+yy", opts)

-- Paste from clipboard
map("n", "<A-p>", "+p", opts)
map("n", "<A-P>", "+P", opts)


vim.wo.number = true
vim.wo.relativenumber = true



-- mapping to reload LSP
map("n", "<leader>l", ":LspRestart<CR>", opts)

-- mapping for command palette :!
map("n", "<leader>k", ":!", { noremap = true, silent = false })

-- mapping for redo
map("n", "<leader>r", "<C-r>", opts)


