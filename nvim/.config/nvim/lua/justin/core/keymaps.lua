vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>ch", ":nohl<CR>", { desc = "Clear search highlights" }) -- dam search highlights are so fucking annoying

-- numbers and shit
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- windows
keymap.set("n", "<leader>sj", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sk", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>=", "<C-w>=", { desc = "Evens out the windows" })
keymap.set("n", "<leader>sf", "<cmd>close<CR>", { desc = "Close split" })

keymap.set("n", "<leader>t", "<cmd>tabnew<CR>", { desc = "New tab" })
keymap.set("n", "<leader>w", "<cmd>tabclose<CR>", { desc = "Close tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Previous tab" })
