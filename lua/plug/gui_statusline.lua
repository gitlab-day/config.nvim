return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            options = {
                globalstatus = true,
                theme = "molokai",
                -- section_separators = { left = "", right = "" },
                -- component_separators = { left = "", right = "" },
            },
        },
        config = function(_, opts)
            require("lualine").setup(opts)
        end,
    },
}
