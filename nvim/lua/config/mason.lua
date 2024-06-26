require("mason").setup({
	ensure_installed = { "eslint_d", "prettier" },
})

require("mason-lspconfig").setup({
	ensure_installed = { "clangd", "tsserver", "lua_ls" },
	automatic_installation = true,
})
