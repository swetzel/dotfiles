local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.setup()

vim.diagnostic.config({
    virtual_text = {
        severity = { min = vim.diagnostic.severity.ERROR }
    }
})
