local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    use("nvim-tree/nvim-tree.lua")
    use("norcalli/nvim-colorizer.lua")
    use({ "Fymyte/rasi.vim", ft = "rasi" })

    -- themeing
    use({ "ellisonleao/gruvbox.nvim" })
    use({
        "nvim-lualine/lualine.nvim",
    })
    use("nvim-tree/nvim-web-devicons")

    use({
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup()
        end,
    })
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "jay-babu/mason-null-ls.nvim",
        "neovim/nvim-lspconfig",
    })
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-cmdline")
    use({
        "L3MON4D3/LuaSnip",
        tag = "v2.*",
        run = "make install_jsregexp",
    })
    use("lewis6991/gitsigns.nvim")
    use("romgrk/barbar.nvim")
    use("adelarsq/image_preview.nvim")

    use("windwp/nvim-ts-autotag")
    use("stevearc/conform.nvim")
    use("lukas-reineke/indent-blankline.nvim")
    use("nvim-treesitter/nvim-treesitter-context")
    use("mfussenegger/nvim-lint")
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use({ "nvim-telescope/telescope-file-browser.nvim", require = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' } })
    use("marko-cerovac/material.nvim")
    use { "SmiteshP/nvim-navic" }
    use { "LunarVim/breadcrumbs.nvim", require = { "SmiteshP/nvim-navic" } }

    use("RRethy/base16-nvim")
    if packer_bootstrap then
        require("packer").sync()
    end
end)
