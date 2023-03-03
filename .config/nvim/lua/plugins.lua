vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)

    use({ "wbthomason/packer.nvim" })

    use({ "olimorris/onedarkpro.nvim" })
    use({ "nvim-tree/nvim-web-devicons" })

    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    })

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lua",
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
        }
    })

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        requires = {
            "nvim-lua/plenary.nvim",
        }
    })

    use({ "nvim-tree/nvim-tree.lua" })
    use({ "romgrk/barbar.nvim" })
    use({ "nvim-lualine/lualine.nvim" })

    use({ "windwp/nvim-autopairs" })
    use({ "windwp/nvim-ts-autotag" })

end)
