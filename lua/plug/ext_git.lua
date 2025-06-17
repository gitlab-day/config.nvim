return {
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        opts = {
            current_line_blame = true,
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "right_align",
                delay = 1000,
                ignore_whitespace = false,
            },
        },
        config = function(_, opts)
            require("gitsigns").setup(opts)
        end,
    },
}

