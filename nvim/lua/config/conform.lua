local conform = require("conform")

conform.setup({
   formatter_by_ft = {
      lua = { "stylua" },
      javascript = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      javascriptreact = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
      html = { { "prettierd", "prettier" } },
      css = { { "prettierd", "prettier" } },
      python = { { "pyright" } },
      c = { "clang-format" },
      cpp = { "clang-format" },
      cmake = { "cmakelang" }
   },

   format_on_save = {
      lsp_fallback = true,
      timeout_ms = 500,
   },
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
   pattern = "*",
   callback = function(args)
      conform.format({ bufnr = args.buf })
   end,
})
