return {
    {
        "folke/tokyonight.nvim",
        config = function(_, opts)
            vim.cmd.colorscheme("tokyonight-night")
        end,
    },
    {
        "loctvl842/monokai-pro.nvim",
        event = "VeryLazy",
        enabled = false,
        opts = {
            transparent_background = false,
            terminal_colors = true,
            devicons = true,
            filter = "machine",
            background_clear = {
                "float_win",
                "telescope",
                "renamer",
                "notify",
                "neo-tree",
            },
            plugins = {
                bufferline = {
                    underline_selected = true,
                    underline_visible = true,
                },
                indent_blankline = {
                    context_highlight = "pro", -- default | pro
                    context_start_underline = false,
                },
            },
        },
        config = function(_, opts)
            require("monokai-pro").setup(opts)
            vim.cmd.colorscheme("monokai-pro")
        end,
    },
}
