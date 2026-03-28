--Global
vim.g.mapleader = " "


--Configs
require("config.lazy")


--Options
vim.o.number = true
vim.o.relativenumber = true
--vim.o.autowriteall = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.wrap = true
vim.o.breakindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false


--Keymap
vim.keymap.set("n", "<space>w", "<cmd>write<cr>", { desc = "Save file" })
vim.keymap.set({ "n", "x" }, "gy", '"+y', { desc = "Global YANK! - doesn't work yet" })
vim.keymap.set({ "n", "x" }, "gp", '"+p', { desc = "Global pase!" })
vim.keymap.set({ "n", "x" }, "gy", '"*y', { desc = "Global YANK! - doesn't work yet" })
vim.keymap.set({ "n", "x" }, "gp", '"*p', { desc = "Global pase!" })
vim.keymap.set({ "n", "x" }, "x", '"_x', { desc = "Don't let the char-delete touch the YANK!" })
vim.keymap.set({ "n", "x" }, "x", '"_x', { desc = "Don't let the char-delete touch the YANK!" })
vim.keymap.set({ "n", "x" }, "X", '"_d', { desc = "Don't let the char-delete touch the YANK!" })
