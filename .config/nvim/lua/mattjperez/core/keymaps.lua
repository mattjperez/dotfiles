vim.g.mapleader = " "

local keymap = vim.keymap

-- 'jk' to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- remove highlighting after search
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- don't x'd items into clipboard
-- keymap.set("n", "x", '"_x"')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertical
keymap.set("n", "<leader>sh", "<C-w>v") -- split horizontal
keymap.set("n", "<leader>se", "<C-w>=") -- equalize split windows
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split

-- tab management 
keymap.set("n", "<leader>to", ":tabnew<CR>") -- new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- prev tab 

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- restart lsp
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
