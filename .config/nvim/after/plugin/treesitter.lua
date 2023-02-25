require("nvim-treesitter.configs").setup({
  ensure_installed = { "help", "javascript", "typescript", "lua", "c", "java" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
