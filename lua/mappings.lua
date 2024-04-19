require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

vim.g.EasyMotion_do_mapping = 0
map('n', 's', '<Plug>(easymotion-overwin-f)')
vim.g.EasyMotion_smartcase = 1
map('n', '<Leader>j', '<Plug>(easymotion-j)')
map('n', '<Leader>k', '<Plug>(easymotion-k)')
