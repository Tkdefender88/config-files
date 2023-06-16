vim.g.mapleader = " "

local nmap = function(keys, func, desc)
    if desc then
        desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>pv", vim.cmd.Lex)
vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

nmap("<leader>sw", require('telescope.builtin').grep_string, '[S]earch current [W]ord')
nmap("<leader>sg", require('telescope.builtin').live_grep, '[S]earch by [G]rep' )
nmap("<leader>ws", require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
nmap("gD", vim.lsp.buf.declaration, '[G]oto [D]eclaration' )

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("x", "<leader>p", "\"_dP")

