-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

--
-- Clear search highlight (esc)
--
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

--
-- Escape alternatives (j/k + k/j)
--
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

--
-- Diagnostics (lead + q)
--
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--
-- Exit terminal mode
--  NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
--  or just use <C-\><C-n> (the common default) to exit terminal mode
--
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--
-- Window splitting (alt + cv)
--
vim.keymap.set('n', '<M-v>', '<C-w>v')
vim.keymap.set('n', '<M-c>', '<C-w>s')

--
-- Window nav (ctrl + hjkl || ctrl + arrow keys)
--  See `:help wincmd` for a list of all window commands
--
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--
-- Window resize (alt + hjkl || alt + arrow keys)
--
vim.keymap.set('n', '<M-h>', '<cmd>vertical resize -2<CR>', { desc = 'Vertical resize decrease' })
vim.keymap.set('n', '<M-l>', '<cmd>vertical resize +2<CR>', { desc = 'Vertical resize increase' })
vim.keymap.set('n', '<M-j>', '<cmd>resize -2<CR>', { desc = 'Horizontal resize decrease' })
vim.keymap.set('n', '<M-k>', '<cmd>resize +2<CR>', { desc = 'Horizontal resize increase' })
vim.keymap.set('n', '<M-left>', '<cmd>vertical resize -2<CR>', { desc = 'Vertical resize decrease' })
vim.keymap.set('n', '<M-right>', '<cmd>vertical resize +2<CR>', { desc = 'Vertical resize increase' })
vim.keymap.set('n', '<M-down>', '<cmd>resize -2<CR>', { desc = 'Horizontal resize decrease' })
vim.keymap.set('n', '<M-up>', '<cmd>resize +2<CR>', { desc = 'Horizontal resize increase' })

--
-- Switch text buffers (tab & shift + tab)
--
vim.keymap.set('n', '<TAB>', ':bnext<CR>')
vim.keymap.set('n', '<S-TAB>', ':bprevious<CR>')

--
-- Delete current buffer, without closing current window
--
vim.keymap.set('n', '<leader>dd', function()
  local n = vim.fn.bufnr()
  vim.cmd 'bn'
  vim.cmd('bd ' .. n)
end, { desc = '[D]elete [B]uffer, without closing window' })

--
-- Toggle diagnostics virtual lines
--
vim.keymap.set('n', '<leader>td', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled { virtual_lines = true }, { virtual_lines = true })
end, { desc = '[T]oggle [D]iagnostics virtual lines' })

--
-- Go to the 80th colunm in the current line
--
vim.keymap.set('n', '<leader>$', '80|', { desc = 'Goto column 80' })

--
-- Keybind to wrap the text of the current line after the 80th colunm
--
-- TODO: this currently doesn't work!
vim.keymap.set('n', '<CR>', '<cmd>i<CR><Esc><CR>', { desc = 'Insert newline at cursor' })
