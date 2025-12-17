
vim.keymap.set('n', '<Tab>', function()
  require("astrocore.buffer").nav(vim.v.count1)
end, { noremap = true, silent = true, desc = "Next buffer" })

vim.keymap.set('n', '<S-Tab>', function()
  require("astrocore.buffer").nav(-vim.v.count1)
end, { noremap = true, silent = true, desc = "Previous buffer" })


vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')
