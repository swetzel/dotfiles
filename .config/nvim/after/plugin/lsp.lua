local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    "eslint",
    "tsserver",
    "cssls",
    "lua_ls",
    "vimls",
    "jsonls",
    "jdtls"
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr }

  vim.keymap.set("n", "<leader>d", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>i", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>h", function() vim.diagnostic.open_float() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = {
        severity = { min = vim.diagnostic.severity.ERROR }
    }
})
