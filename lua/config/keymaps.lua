vim.keymap.set("n", "<space>n", "<cmd>nohlsearch<cr>", { desc = "Turns of highlighted search/text/word" })
vim.keymap.set("n", "<space>w", "<cmd>write<cr>", { desc = "Save file" })
vim.keymap.set({ "n", "x" }, "x", '"_x', { desc = "Don't let the char-delete touch the YANK!" })
vim.keymap.set({ "n", "x" }, "x", '"_x', { desc = "Don't let the char-delete touch the YANK!" })
vim.keymap.set({ "n", "x" }, "X", '"_d', { desc = "Don't let the char-delete touch the YANK!" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

