local M = {
    diagnostics = {
        error = "",
        warn  = "",
        info  = "",
        hint  = "󰌵",
    },
}

function M.sign_defines()
    local icons = M.diagnostics
    -- error
    local sign_diag_error = { text = icons.error, texthl = "DiagnosticSignError" }
    vim.fn.sign_define("DiagnosticSignError", sign_diag_error)
    -- warn
    local sign_diag_warn = { text = icons.warn, texthl = "DiagnosticSignWarn" }
    vim.fn.sign_define("DiagnosticSignWarn", sign_diag_warn)
    -- info
    local sign_diag_info = { text = icons.info, texthl = "DiagnosticSignInfo" }
    vim.fn.sign_define("DiagnosticSignInfo", sign_diag_info)
    -- hint
    local sign_diag_hint = { text = icons.hint, texthl = "DiagnosticSignHint" }
    vim.fn.sign_define("DiagnosticSignHint", sign_diag_hint)
end

function M.setup()
    M.sign_defines()
end

return M
