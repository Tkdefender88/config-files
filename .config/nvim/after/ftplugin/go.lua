local set = vim.opt_local

set.expandtab = false

vim.keymap.set("n", "<leader>dt", function()
    require('dap-go').debug_test()
end, {
    desc = "Begin debugging with dap for golang"
})

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)
