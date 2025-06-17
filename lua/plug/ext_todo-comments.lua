return {
    {
        -- FIX:  Tag Test
        -- TODO: Tag test
        -- HACK: Tag test
        -- WARN: Tag test
        -- PERF: Tag test
        -- NOTE: Tag test
        -- TEST: Tag test
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = "VeryLazy",
        config = function()
            require("todo-comments").setup()
        end,
    },
}
