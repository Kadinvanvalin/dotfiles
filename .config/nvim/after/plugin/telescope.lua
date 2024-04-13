local builtin = require('telescope.builtin')
pcall(require('telescope').load_extension, 'fzf')
vim.keymap.set('n', '<leader>pf', builtin.git_files, { desc = 'Search Git Files' })
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Search Files' })
vim.keymap.set('n', '<leader>ps', function() 
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = 'Search Files' })
-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}


-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>o', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
-- vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
--
-- vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
--  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--    winblend = 10,
--    previewer = false,
--  })
-- end, { desc = '[/] Fuzzily search in current buffer' })
