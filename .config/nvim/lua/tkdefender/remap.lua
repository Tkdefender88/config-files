vim.g.mapleader = " "

vim.keymap.set("n", "<leader>dv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "move a highlighted block"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "move a highlighted block"})

vim.keymap.set("n", "J", "mzJ`z", {desc = "Keep cursor in the same spot after J"})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Keep cursor in the same spot after half page jump"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Keep cursor in the same spot after half page jump"})

vim.keymap.set("n", "n", "nzzzv", {desc = "Keep cursor in the same spot after jumping search terms"})
vim.keymap.set("n", "N", "Nzzzv", {desc = "Keep cursor in the same spot after jumping search terms"})

vim.keymap.set("x", "<leader>p", "\"_dP", {desc= "don't overwrite the paste buffer when pasting over something"})

vim.keymap.set("n", "<leader>y", "\"+y", {desc = "yank to system clipboard"})
vim.keymap.set("v", "<leader>y", "\"+y", {desc = "yank to system clipboard"})
vim.keymap.set("n", "<leader>Y", "\"+Y", {desc = "yank to system clipboard"})

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>dm", function() vim.opt.background="dark" end, {desc="toggle dark mode"})
vim.keymap.set("n", "<leader>lm", function() vim.opt.background="light" end, {desc="toggle dark mode"})

