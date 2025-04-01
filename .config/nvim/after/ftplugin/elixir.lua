local set = vim.opt

set.shiftwidth = 2
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2

vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
