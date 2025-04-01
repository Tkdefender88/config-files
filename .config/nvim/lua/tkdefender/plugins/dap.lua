return {
    {
        'mfussenegger/nvim-dap',
        config = function()
            local map = vim.keymap
            local dap = require('dap')
            map.set("n", "<F5>", function() dap.continue() end)
            map.set("n", "<F10>", function() dap.step_over() end)
            map.set("n", "<F11>", function() dap.step_into() end)
            map.set("n", "<F12>", function() dap.step_out() end)
            map.set("n", "<leader>b", function() dap.toggle_breakpoint() end)
            map.set("n", "<leader>B", function() dap.set_breakpoint(vim.fn.input('Break point condition: ')) end)
            map.set("n", "<leader>lp", function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
            map.set("n", "<leader>dr", function() dap.repl.open() end)

        end
    },
    {
        'rcarriga/nvim-dap-ui',
        dependencies = {
            "nvim-neotest/nvim-nio",
            "mfussenegger/nvim-dap"
        },
        config = function ()
            local dap, dapui = require("dap"), require("dapui")
            dapui.setup()
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end
    },
    {
        'theHamsta/nvim-dap-virtual-text',
        dependencies = {
            'mfussenegger/nvim-dap'
        },
        config = function()
            require('nvim-dap-virtual-text').setup()
        end
    }
}
