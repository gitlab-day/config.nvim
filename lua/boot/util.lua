local M = {
    uv = vim.uv or vim.loop,

    has = function(what)
        return vim.fn.has(what) == 1
    end,

    executable = function(what)
        return vim.fn.executable(what) == 1
    end,
}

setmetatable(M, {
    ---@param key string
    __index = function(_, key)
        return require("util." .. key)
    end,
})

_G.NeoVim = M
