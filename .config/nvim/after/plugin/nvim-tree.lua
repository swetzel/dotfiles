vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = { width = 35 },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeFindFile<CR>:NvimTreeFocus<CR>")

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function(data)
        local directory = vim.fn.isdirectory(data.file) == 1
        if not directory then
            return
        end

        vim.cmd.cd(data.file)
        require("nvim-tree.api").tree.open()
    end
})
