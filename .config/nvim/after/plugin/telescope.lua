local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.git_files, { desc = 'Search Git Files' })
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Search Files' })
vim.keymap.set('n', '<leader>ps', function() 
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = 'Search Files' })
