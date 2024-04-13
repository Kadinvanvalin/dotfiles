
local harpoon = require("harpoon")

harpoon:setup({})
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = 'append to harpoon' })
vim.keymap.set("n", "<leader>l", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'view harpoon list'})

 -- vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
 -- vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end)
 -- vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end)
 -- vim.keymap.set("n", "<C-;>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)


function _G.git_diff(opts)
    local file_paths = {}
    local pickers = require("telescope.pickers")
  local finders = require "telescope.finders"
  local conf = require("telescope.config").values
  list = vim.fn.systemlist('git diff --name-only main')

  pickers.new(opts, {
    prompt_title = "git diff",
    finder = finders.new_table { results = list },
    previewer = conf.file_previewer({}),
    sorter = conf.generic_sorter(opts)
  }):find()
end


vim.keymap.set('n', '<leader>gd', ':lua git_diff()<CR>')
