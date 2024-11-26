local capabilities = require("cmp_nvim_lsp").default_capabilities()

local map = vim.api.nvim_set_keymap

map("n", "<A-CR>", "<Cmd>lua vim.lsp.buf.code_action()<CR>", { silent = true })

require("lspconfig")["clangd"].setup({
    capabilities = capabilities,
})

require("lspconfig")["cmake"].setup({
    capabilities = capabilities,
})
