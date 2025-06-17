if vim.fn.executable("git") == 1 then
    if vim.fn.isdirectory(vim.fn.stdpath("data") .. "/lazy/lazy.nvim") == 0 then
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable",
            vim.fn.stdpath("data") .. "/lazy/lazy.nvim",
        })
    end
    vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

    require("lazy").setup({ { import = "plug" } })
end
