local M = {}

function M.sep()
    return vim.fn.has("win32") and "\\" or "/"
end

function M.normalize(path)
    local parts = {}
    for part in path:gmatch("([^/\\\\]*)") do
        if part ~= "" then
            table.insert(parts, part)
        end
    end
    local path_joined = table.concat(parts, M.sep())

    local first_char = path:sub(1, 1)
    if first_char == "/" or first_char == "\\" then
        path_joined = M.sep() .. path_joined
    end
    local last_char = path:sub(path:len())
    if last_char == "/" or last_char == "\\" then
        path_joined = path_joined .. M.sep()
    end
    return vim.fn.expand(path_joined)
end

function M.join(base_path, ...)
    local parts = { base_path }
    for _, part in ipairs({ ... }) do
        table.insert(parts, part)
    end

    local path_joined = table.concat(parts, M.sep())
    return M.normalize(path_joined)
end

function M.join_stdpath(what, ...)
    local base_path = vim.fn.stdpath(what)
    local parts = { base_path }
    for _, part in ipairs({ ... }) do
        table.insert(parts, part)
    end

    local path_joined = table.concat(parts, M.sep())
    return M.normalize(path_joined)
end

function M.is_directory(path)
    return vim.fn.isdirectory(M.normalize(path)) == 1
end

function M.is_file(path)
    return vim.fn.filereadable(M.normalize(path)) == 1
end

return M
