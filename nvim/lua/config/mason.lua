require("mason").setup({
    ensure_installed = { "eslint_d", "prettier" },
})

require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "ts_ls", "lua_ls" },
    automatic_installation = true,
})
