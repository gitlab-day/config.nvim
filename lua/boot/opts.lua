
-- ********** leader **********
vim.g.mapleader = " "

-- ********** line number **********
vim.o.number = true
vim.o.relativenumber = true

-- ********** tab size **********
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- ********** encoding **********
vim.o.encoding = "utf-8"
-- vim.o.termencoding = "utf-8"
vim.o.fileencodings = "utf-8,gb2312,gbk,ucs-bom,cp936,latin-1"

-- ********** backup **********
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- ********** search **********
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.incsearch = false

-- ********** display **********
-- blank chars
vim.o.list = true
vim.o.listchars = "space:·"
-- syntax
vim.o.syntax = "on"
vim.o.termguicolors = true
vim.o.cursorline = true
-- wrap
vim.o.wrap = false
-- fold
vim.o.foldenable = true
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldmethod = "manual"
-- vim.o.foldmethod = "indent"

-- ********** clipboard **********
vim.o.clipboard = "unnamedplus"

-- ********** mouse **********
vim.o.mouse = "a"

-- ********** gui **********
if vim.fn.has("gui_running") then
    vim.o.guifont = "FiraCode Nerd Font:h11"

    if vim.fn.exists("g:neovide") then
        -- Floating Shadow
        vim.g.neovide_floating_shadow = true
        vim.g.neovide_floating_z_height = 10
        vim.g.neovide_light_angle_degrees = 45
        vim.g.neovide_light_radius = 5
        -- Transparency
        vim.g.neovide_transparency = 0.8
    end
end

