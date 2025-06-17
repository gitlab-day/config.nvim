local M = {}

function M.setup_keys()
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function()
            local map = vim.keymap.set

            map("n", "K", vim.lsp.buf.hover, { desc = "hover" })
        end
    })
end

function M.setup()
    M.setup_keys()
end

return M
