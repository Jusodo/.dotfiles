local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- colorscheme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })
    use 'martinsione/darkplus.nvim'
    use 'doums/darcula'
    use 'navarasu/onedark.nvim'
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use { 'sonph/onehalf', rtp = 'vim', }

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- Snippet Collection (Optional)
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- toggleterm
    use 'akinsho/toggleterm.nvim'

    -- nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons', },
    }

    -- bufferline
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*", 
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use { 'numToStr/Comment.nvim' }


    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
