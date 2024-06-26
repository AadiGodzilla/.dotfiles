require("nvim-tree").setup({
   view = {
      width = 40
   }
})

vim.keymap.set("n", "<C-K>", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-S-K>", ":NvimTreeFindFileToggle<CR>")
