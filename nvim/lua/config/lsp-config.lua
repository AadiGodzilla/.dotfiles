local capabilities = require("cmp_nvim_lsp").default_capabilities()

local map = vim.api.nvim_set_keymap

map("n", "<A-CR>", "<Cmd>lua vim.lsp.buf.code_action()<CR>", { silent = true })

require("lspconfig")["clangd"].setup({
    capabilities = capabilities,
})

require("lspconfig")["tsserver"].setup({
    capabilities = capabilities,
})

require("lspconfig")["cssls"].setup({
    capabilities = capabilities,
})

require("lspconfig")["cssmodules_ls"].setup({
    capabilities = capabilities,
})

require("lspconfig")["emmet_ls"].setup({
    capabilities = capabilities,
})

require("lspconfig")["html"].setup({
    capabilities = capabilities,
})

require("lspconfig")["eslint"].setup({
    capabilities = capabilities,
})

require("lspconfig")["pyright"].setup({
    capabilities = capabilities,
})

require("lspconfig")["jsonls"].setup({
    capabilities = capabilities,
})

require("lspconfig")["cmake"].setup({
    capabilities = capabilities,
})

require("lspconfig")["rust_analyzer"].setup({
    capabilities = capabilities,
    filetypes = { "rust" },
    settings = {
        ['rust-analyzer'] = {
            carge = {
                allFeatures = true,
            }
        }
    }
})

require("lspconfig")["bashls"].setup({
    capabilities = capabilities
})

require("lspconfig")["jdtls"].setup({
    capabilities = capabilities
})

require("lspconfig")["lua_ls"].setup({
    capabilities = capabilities,
    Lua = {
        runtime = {
            version = "LuaJIT",
        },
        diagnostics = {
            globals = { "vim" },
        },
        workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = {
            enable = false,
        },
    },
})
