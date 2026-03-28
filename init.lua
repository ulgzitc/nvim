--Global
vim.g.mapleader = " "
vim.g.maplocalleader = " "


--Configs
require("config.lazy")



--Options
vim.o.number = true
vim.o.relativenumber = true
--vim.o.autowriteall = true
vim.o.ignorecase = true
vim.o.smartcase = true
--vim.o.hlsearch = false
vim.o.wrap = true
vim.o.breakindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = false
vim.o.cursorline = true
vim.o.scrolloff = 8
--vim.o.autocomplete = true




--Keymap
vim.keymap.set("n", "<space>n", "<cmd>nohlsearch<cr>", {desc = "Turns of highlighted search/text/word"})
vim.keymap.set("n", "<space>w", "<cmd>write<cr>", { desc = "Save file" })
vim.keymap.set({ "n", "x" }, "x", '"_x', { desc = "Don't let the char-delete touch the YANK!" })
vim.keymap.set({ "n", "x" }, "x", '"_x', { desc = "Don't let the char-delete touch the YANK!" })
vim.keymap.set({ "n", "x" }, "X", '"_d', { desc = "Don't let the char-delete touch the YANK!" })








