vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)

    use({ "wbthomason/packer.nvim" })
    use({ "olimorris/onedarkpro.nvim" })

    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    })

    use({
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup({}) end
    })

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        requires = {
            { "nvim-lua/plenary.nvim" },
        }
    })

    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    })

    use({
        "akinsho/toggleterm.nvim",
        tag = '*',
   })

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lua" },
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        }
    })

end)
