-- [[ General Settings ]]
-- See `:help vim.opt`
--  For more options, see `:help option-list`

--
-- [[ General ]]
--
vim.opt.number      = true -- Make line numbers default
vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile    = true -- Save undo history
vim.opt.updatetime  = 250  -- Decrease update time
vim.opt.timeoutlen  = 300  -- Decrease mapped sequence wait time
vim.opt.hidden      = true -- Required to keep multiple buffers open
vim.opt.splitright  = true -- Configure new vertical splits
vim.opt.splitbelow  = true -- Configure new horizontal splits
vim.opt.ignorecase  = true -- Case-insensitive searching
vim.opt.smartcase   = true -- Case-sensitive searching if \C or 1+
-- capital letters in search term

--
-- [[ Visual ]]
--
vim.opt.showmode    = false      -- Mode already shown in status line
vim.opt.colorcolumn = { 74, 80 } -- Column markers
vim.opt.inccommand  = 'split'    -- Preview substitutions as you type
vim.opt.cursorline  = true       -- Show cursor line
vim.opt.ruler       = true       -- Show cursor position all the time
vim.opt.signcolumn  = 'yes'      -- Keep signcolumn on by default
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list        = true
vim.opt.listchars   = { tab = '» ', trail = '·', nbsp = '␣' }

--
-- [[ Functional ]]
--
vim.opt.mouse       = 'a'           -- Enable mouse
vim.lsp.inlay_hint.enable(true)     -- Enable inlay hints (eg. rust type hints)
vim.schedule(function()             -- Schedule the setting after `UiEnter`, faster startup
  vim.opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.
end)
