return {
    "nvim-telescope/telescope.nvim",
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>;ff',
            function()
                builtin.find_files({
                    no_ignore = false,
                    hidden = true,
                })
            end,
            {}
        )

        vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
        vim.keymap.set('n', 'gr', builtin.lsp_references, {})
        vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
    end
}

