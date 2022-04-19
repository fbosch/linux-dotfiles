return require("packer").startup({
    function(use)
        use({
            "wbthomason/packer.nvim",
            "tpope/vim-rhubarb",
            "tpope/vim-fugitive",
            "tpope/vim-commentary",
            "tpope/vim-surround",
            "tpope/vim-vinegar",
            "nathom/filetype.nvim",
            "romgrk/barbar.nvim",
            "neovim/nvim-lspconfig",
            "lewis6991/impatient.nvim",
            "chriskempson/base16-vim",
            "lukas-reineke/indent-blankline.nvim",
            "dag/vim-fish",
            "norcalli/nvim-terminal.lua",
            "HerringtonDarkholme/yats.vim",
            "mhinz/vim-sayonara",
            {
                "nvim-telescope/telescope.nvim",
                config = function()
                    require("telescope").setup({
                        pickers = {
                            find_files = {
                                prompt_prefix = "🔍",
                                find_command = { "fd", "--type", "file", "--threads=4", "-E", "*.{png,jpg,jpeg,bmp,webp,log}" },
                                previewer = false,
                                theme = 'dropdown'
                            },
                            grep_string = {
                                disable_coordinates = true
                            },
                            live_grep = {
                                disable_coordinates = true
                            },
                            buffers = {
                                only_cwd = true,
                                theme = 'dropdown'
                            }
                        }
                    })
                end
            },
            {
                "startup-nvim/startup.nvim",
                requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
                config = function()
                    require("startup").setup({
                        theme = "startup_theme"
                    })

                end
            },
            {
                "itchyny/lightline.vim",
                config = function()
                    vim.g.lightline = {
                        colorscheme = "wombat",
                        component_function = {
                            gitbranch = 'FugitiveHead'
                        }
                    }
                end
            },
            {
                "rrethy/vim-hexokinase",
                run = "make hexokinase",
                event = "CursorHold",
                config = function()
                    vim.g.Hexokinase_highlighters = {"virtual"}
                    vim.g.Hexokinase_optInPatterns = {
                        "full_hex", "rgb", "rgba", "hsl", "hsla"
                    }
                end
            },
            {
                "ctrlpvim/ctrlp.vim",
                config = function()
                    vim.g.ctrlp_map = "<c-p>"
                    vim.g.ctrlp_cmd = "CtrlP"
                    vim.g.ctrlp_working_path_mode = "cra"
                    vim.g.ctrlp_user_command = "fd . %s --type file --threads=4 --color=never"
                end
            },
            {
                "kyazdani42/nvim-tree.lua",
                requires = {
                    'kyazdani42/nvim-web-devicons',
                },
                config = function()
                    require("nvim-tree").setup()
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
                    require("nvim-treesitter.configs").setup({
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
                    vim.g.coc_global_extensions = {
                        "coc-diagnostic",
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
