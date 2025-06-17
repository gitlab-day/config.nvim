return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        cmd = "Neotree",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        opts = {
            filesystem = {
                follow_current_file = { enabled = true },
            },
        },
        config = function(_, opts)
            local icons = require("nvim-web-devicons").get_icons()
            vim.fn.sign_define("DiagnosticSignError",
                { text = icons.diagnostic_error.icon, texthl = "DiagnosticSignError"})
            vim.fn.sign_define("DiagnosticSignWarn",
                { text = icons.diagnostic_warn.icon, texthl = "DiagnosticSignWarn"})
            vim.fn.sign_define("DiagnosticSignInfo",
                { text = icons.diagnostic_info.icon, texthl = "DiagnosticSignInfo"})
            vim.fn.sign_define("DiagnosticSignHint",
                { text = icons.diagnostic_hint.icon, texthl = "DiagnosticSignHint"})

            require("neo-tree").setup(opts)
        end,
    },
}
