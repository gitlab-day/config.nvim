return {
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            options = {
                numbers = "buffer_id",
                right_mouse_command = false,
                -- underline
                indicator = {
                    icon = '▎',
                    style = 'underline',
                },
                -- diagnostics
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level)
                    local icons = require("nvim-web-devicons").get_icons()
                    local icon_error = icons.diagnostic_error.icon
                    local icon_warn = icons.diagnostic_warn.icon
                    local icon = level:match("error") and icon_error or icon_warn
                    return " " .. icon .. " " .. count
                end,
                separator_style = "slant",
                always_show_bufferline = false,
            },
        },
        config = function(_, opts)
            require("bufferline").setup(opts)
        end,
    },
}
