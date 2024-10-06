vim.g_barbar_auto_setup = false

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<A-[>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-]>', '<Cmd>BufferNext<CR>', opts)
map('n', '<C-A-[>', "<Cmd>BufferMovePrevious<CR>", opts)
map('n', "<C-A-]>", "<Cmd>BufferMoveNext<CR>", opts)
map('n', '<A-q>', "<Cmd>BufferClose<CR>", opts)
map('n', '<A-p>', "<Cmd>BufferPin<CR>", opts)

require("barbar").setup {
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = true,
    focus_on_left = true,
    minimum_padding = 1,
    maximum_padding = 1
}
