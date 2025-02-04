require("core.core")
require("plugins.plugins")
require("config.base16-colorscheme")
require("config.conform")
require("config.barbar")
require("config.nvim-tree")
require("config.lualine")
require("config.mason")
require("config.lsp-config")
require("config.nvim-cmp")
require("config.nvim-treesitter")
require("config.colorizer")
require("config.ibl")
require("config.lint-nvim")
require("config.telescope")
require("config.gruvbox")
require("config.material")
require("config.nvim-treesitter-context")
require("config.nvim-breadcrumbs")

vim.cmd("colorscheme vscode")
vim.cmd("TSContextDisable")

vim.diagnostic.config({
    virtual_text = false,
})

vim.o.updatetime = 250
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

require("config.transparency")
