local map = vim.api.nvim_set_keymap

-- buffers
map("n", "<C-H>", ":bp<esc>", { desc = "buffer prev" })
map("n", "<C-L>", ":bn<esc>", { desc = "buffer next" })

map("i", "<C-H>", "<esc>:bp<esc>", { desc = "buffer prev" })
map("i", "<C-L>", "<esc>:bn<esc>", { desc = "buffer next" })
