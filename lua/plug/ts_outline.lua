return {
    {
        "stevearc/aerial.nvim",
        cmd = "AerialToggle",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("aerial").setup()
        end,
    },
}
