require("nvim-tree").setup()

vim.keymap.set("n", "<leader>e", ":NvimTreeFindFile<cr>")

vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function() require("nvim-tree.api").tree.open() end
})
