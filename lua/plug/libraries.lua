return {
    -- Provides Nerd Font icons (glyphs) for use by neovim plugins
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").set_icon({
                diagnostic_error = {
                    icon = "",
                    color = "#e8274b",
                    name = "DiagnosticError"
                },
                diagnostic_warn = {
                    icon = "",
                    color = "#cbcb41",
                    name = "DiagnosticWarn"
                },
                diagnostic_info = {
                    icon = "",
                    color = "#00c58e",
                    name = "DiagnosticInfo"
                },
                diagnostic_hint = {
                    icon = "󰌵",
                    name = "DiagnosticHint"
                },
            })
        end,
    },
    -- plenary: full; complete; entire; absolute; unqualified.
    -- All the lua functions I don't want to write twice.
    { "nvim-lua/plenary.nvim" },
    -- UI Component Library for Neovim.
    { "MunifTanjim/nui.nvim" },
    -- Promise & Async in Lua
    { "kevinhwang91/promise-async" },
}
