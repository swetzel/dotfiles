require("nvim-tree").setup({
    view = { width = 35 }
})

vim.keymap.set("n", "<leader>e", ":NvimTreeFindFile<CR>:NvimTreeFocus<CR>")

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function() require("nvim-tree.api").tree.open() end
})
