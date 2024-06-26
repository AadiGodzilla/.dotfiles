-- Variables
local telescope = require("telescope")
local builtin = require("telescope.builtin")

-- Keymaps
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

-- main setup
telescope.setup({
   defaults = {
      file_ignore_patterns = { "include", "node_modules" },
   },
   pickers = {
      buffers = {
         initial_mode = "normal"
      }
   }
})

-- extensions
telescope.load_extension "file_browser"
