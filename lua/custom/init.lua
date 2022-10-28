-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

-- autocmds
local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function(_)
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 200 }
  end,
})
