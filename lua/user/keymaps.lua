-- Tab switches buffers
vim.keymap.set('n', '<Tab>', function() 
  require("astrocore.buffer").nav(vim.v.count1)
end, { noremap = true, silent = true, desc = "Next buffer" })

-- Shift+Tab switches to the previous buffer
vim.keymap.set('n', '<S-Tab>', function()
  require("astrocore.buffer").nav(-vim.v.count1)
end, { noremap = true, silent = true, desc = "Previous buffer" })

-- esc enters normal mode in terminal
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- leap.nvim configuration
vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')

-- Resizing windows
vim.keymap.set('n', '<A-Left>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-Down>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-Up>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-Right>', require('smart-splits').resize_right)

-- Switching between windows
vim.keymap.set('n', '<C-Left>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-Down>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-Up>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-Right>', require('smart-splits').move_cursor_right)

local wk = require("which-key")
wk.add({
  { "<leader>h", "<cmd>:HexToggle<cr><cr>", desc = "Toggle hex" },
})