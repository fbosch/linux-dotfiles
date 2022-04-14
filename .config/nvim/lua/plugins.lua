return require("packer").startup({
    function(use)
        use({
            "nathom/filetype.nvim",
            "vim-airline/vim-ariline",
            "romgrk/barbar.nvim",
            "vim-airline/vim-airline",
            "vim-airline/vim-airline-themes",
            "neovim/nvim-lspconfig",
            "lewis6991/impatient.nvim",
            "chriskempson/base16-vim",
            "lukas-reineke/indent-blankline",
            "dag/vim-fish",
            "neovim/nvim-lspconfig",
            "norcalli/nvim-terminal.lua",
            "norcalli/nvim-colorizer.lua",
            {
                "kyazdani42/nvim-tree.lua",
                requires = {
                    'kyazdani42/nvim-web-devicons',
                },
            },
            {
                "ibhagwan/fzf-lua",
                requires = { "kyazdani42/nvim-web-devicons" }
            },
            {
                "jghauser/kitty-runner.nvim",
                config = function()
                    require("kitty-runner").setup()
                end
            }
        })
    end
})
