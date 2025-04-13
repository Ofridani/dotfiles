vim.g.mapleader = " " -- Leader key is <space>

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")

-- File explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Compile current C file with gcc
vim.keymap.set("n", "<leader>c", ":!gcc -g % -o %< && echo 'Compiled!'<CR>")

-- Save
vim.keymap.set("n", "<leader>w", ":w<CR>")
