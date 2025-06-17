return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        config = function()
            local wk = require("which-key")
            wk.add({
                { "<leader>f", group = "File" },
                { "<leader>fo", ":Neotree position=float<cr>", desc = "open" },
                { "<leader>fx", ":q<cr>", desc = "exit" },
                { "<leader>v", group = "View" },
                { "<leader>vf", ":Neotree position=left toggle<cr>", desc = "explorer" },
                { "<leader>vo", ":AerialToggle<cr>", desc = "outline" },
                { "<leader>b", group = "Buffer" },
                { "<leader>bn", ":bn<cr>", desc = "next" },
                { "<leader>bp", ":bp<cr>", desc = "prev" },
                { "<leader>bd", ":bd<cr>", desc = "delete" },
            })
        end,
    },
}
