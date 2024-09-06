-- Space as leader key
vim.g.mapleader = ' '

-- Shortcuts
vim.keymap.set({'n', 'x', 'o'}, '<leader>h', '^', {desc = 'Go to first non-blank character of the line'})
vim.keymap.set({'n', 'x', 'o'}, '<leader>l', 'g_', {desc = 'Go to last non-blank character of the line'})
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>', {desc = 'Select all text in buffer'})

-- Basic clipboard interaction
vim.keymap.set({'n', 'x'}, 'y', '"+y', {desc = 'Copy to clipboard'})
vim.keymap.set({'n', 'x'}, 'p', '"+p', {desc = 'Paste clipboard content'})

-- Delete text without changing vim's internal registers
vim.keymap.set({'n', 'x'}, 'x', '"_x', {desc = 'Cut the character under the cursor'})
vim.keymap.set({'n', 'x'}, 'X', '"_d', {desc = 'Cut text'})

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save buffer'})
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>', {desc = 'Close buffer'})
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>', {desc = 'Go to last active buffer'})

-- インサートモードで 'jj' を押すとノーマルモードに戻る
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- ノーマルモードで矢印キーを無効化
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })

-- インサートモードで矢印キーを無効化
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })

-- ビジュアルモードで矢印キーを無効化
vim.api.nvim_set_keymap('x', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<Right>', '<Nop>', { noremap = true, silent = true })
