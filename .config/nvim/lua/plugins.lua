return require("packer").startup({
    function(use)
        use({
            "nathom/filetype.nvim",
            "romgrk/barbar.nvim",
            "neovim/nvim-lspconfig",
            "lewis6991/impatient.nvim",
            "chriskempson/base16-vim",
            "lukas-reineke/indent-blankline.nvim",
            "dag/vim-fish",
            "norcalli/nvim-terminal.lua",
            "HerringtonDarkholme/yats.vim",
            {
                "vim-airline/vim-airline",
                requires = {
                    "vim-airline/vim-airline-themes"
                },
                config = function()
                    vim.g.airline_powerline_fonts=1
                    vim.g.airline_theme="minimalist"
                end
            },
            {
                "rrethy/vim-hexokinase",
                run = "make hexokinase",
                config = function()
                    vim.g.Hexokinase_highlighters = {"virtual"}
                    vim.g.Hexokinase_optInPatterns = {
                        "full_hex", "rgb", "rgba", "hsl", "hsla"
                    }
                end
            },
            {
                "kien/ctrlp.vim",
                config = function()
                    vim.g.ctrlp_map = "<c-p>"
                    vim.g.ctrlp_cmd = "CtrlP"
                    vim.g.ctrlp_working_path_mode = "cra"
                    vim.g.ctrlp_user_command = "fd . %s --type file"
                end
            },
            {
                "kyazdani42/nvim-tree.lua",
                requires = {
                    'kyazdani42/nvim-web-devicons',
                },
                config = function()
                    require('nvim-tree').setup()
                end
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
            },
            {
                "nvim-treesitter/nvim-treesitter",
                run = ":TSUpdate",
                config = function()
                    require('nvim-treesitter.configs').setup({
                        autopairs = { enable = true },
                        autotag = { enable = true },
                        ensure_installed = 'all',
                        highlight = { enable = true },
                        indent = { enable = true }
                    })
                end
            },
            {
                "neoclide/coc.nvim",
                branch = "release",
                config = function()
                    vim.g.coc_global_file_extensions = {
                        "coc-css",
                        "coc-eslint",
                        "coc-prettier",
                        "coc-html",
                        "coc-json",
                        "coc-lua",
                        "coc-tsserver",
                    }
                end
            }
        })
    end
})
