return {
    {
        "kevinhwang91/nvim-ufo",
        event = "VeryLazy",
        dependencies = {
            "kevinhwang91/promise-async",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            vim.o.foldenable = true
            vim.o.foldcolumn = "1"
            vim.o.foldlevel = 99
            vim.o.foldlevelstart = 99

            -- vim.keymap.set("n", "zR", require("ufo").openAllFolds)
            -- vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

            local handler = function(virtText, lnum, endLnum, width, truncate)
                local newVirtText = {}
                local suffix = (" 󰁂 %d "):format(endLnum - lnum)
                local sufWidth = vim.fn.strdisplaywidth(suffix)
                local targetWidth = width - sufWidth
                local curWidth = 0
                for _, chunk in ipairs(virtText) do
                    local chunkText = chunk[1]
                    local chunkWidth = vim.fn.strdisplaywidth(chunkText)
                    if targetWidth > curWidth + chunkWidth then
                        table.insert(newVirtText, chunk)
                    else
                        chunkText = truncate(chunkText, targetWidth - curWidth)
                        local hlGroup = chunk[2]
                        table.insert(newVirtText, { chunkText, hlGroup })
                        chunkWidth = vim.fn.strdisplaywidth(chunkText)
                        -- str width returned from truncate() may less than 2nd argument, need padding
                        if curWidth + chunkWidth < targetWidth then
                            suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
                        end
                        break
                    end
                    curWidth = curWidth + chunkWidth
                end
                table.insert(newVirtText, { suffix, "MoreMsg" })
                return newVirtText
            end

            -- Option 3: treesitter as a main provider instead
            -- (Note: the `nvim-treesitter` plugin is *not* needed.)
            require("ufo").setup({
                provider_selector = function(bufnr, filetype, buftype)
                    return { "treesitter", "indent" }
                end,
                fold_virt_text_handler = handler,
            })
        end,
    },
}

