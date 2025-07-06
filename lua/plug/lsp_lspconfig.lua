return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
        config = function(_, opts)
            require("mason").setup(opts)
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = {
            { "mason-org/mason.nvim" },
            { "neovim/nvim-lspconfig" },
            { "folke/neodev.nvim" },
        },
        config = function()
            -- setup lsps
            vim.lsp.config('lua_ls', {
                settings = {
                    Lua = {
                        hint = { enable = true },
                        runtime = { version = "LuaJIT" },
                        diagnostics = { globals = { "vim", "require" } },
                        workspace = {
                            checkThirdParty = true,
                            library = {
                                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                            },
                        },
                    },
                },
            })

            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "vimls", "bashls", "rust_analyzer" },
                automatic_enable = { "lua_ls", "vimls", "bashls", "rust_analyzer" }
            }
            require("neodev").setup()

            -- setup keymaps
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(_)
                    -- local fn_format = function()
                        -- vim.lsp.buf.format({ async = true })
                    -- end
                    -- hover
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "hover (K)" })
                    -- vim.keymap.set("n", "<leader>lah", vim.lsp.buf.hover, { desc = "hover (K)" })
                    -- format
                    -- vim.keymap.set({ "n", "v" }, "<leader>laf", fn_format, { desc = "formatting" })
                    -- rename
                    -- vim.keymap.set({ "n", "v" }, "<leader>lar", vim.lsp.buf.rename, { desc = "rename" })
                    -- code_action
                    -- vim.keymap.set({ "n", "v" }, "<leader>laa", vim.lsp.buf.code_action, { desc = "code_action" })

                    -- definition
                    -- vim.keymap.set("n", "<leader>lgd", vim.lsp.buf.definition, { desc = "definition" })
                    -- declaration
                    -- vim.keymap.set("n", "<leader>lgD", vim.lsp.buf.declaration, { desc = "declaration" })
                    -- implementation
                    -- vim.keymap.set("n", "<leader>lgi", vim.lsp.buf.implementation, { desc = "implementation" })
                    -- references
                    -- vim.keymap.set("n", "<leader>lgr", vim.lsp.buf.references, { desc = "references" })
                    -- type_definition
                    -- vim.keymap.set("n", "<leader>lgt", vim.lsp.buf.type_definition, { desc = "type_definition" })
                end,
            })
        end,
    },
}
