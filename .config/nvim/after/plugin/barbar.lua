require("bufferline").setup({
    animation = false,
    icon_separator_active = "| ",
    icon_separator_inactive ="| ",
})

local nvim_tree_events = require("nvim-tree.events")
local bufferline_api = require("bufferline.api")

local function get_tree_size()
  return require("nvim-tree.view").View.width
end

nvim_tree_events.subscribe("TreeOpen", function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe("Resize", function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe("TreeClose", function()
  bufferline_api.set_offset(0)
end)

vim.keymap.set("n", "<leader>,", "<Cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<leader>.", "<Cmd>BufferNext<CR>")
vim.keymap.set("n", "<leader>c", "<Cmd>BufferClose<CR>")
vim.keymap.set("n", "<leader>m,", "<Cmd>BufferMovePrevious<CR>")
vim.keymap.set("n", "<leader>m.", "<Cmd>BufferMoveNext<CR>")
