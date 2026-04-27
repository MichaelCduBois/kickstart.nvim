-- allows creation of neovim terminals
local function createTerminal()
  local name = vim.fn.input 'Terminal name: '
  vim.cmd 'term'
  if name and name ~= '' then vim.cmd('file ' .. name) end
end

return {
  vim.keymap.set('n', '<leader>tt', function() createTerminal() end, { desc = '[T]erminal' }),
}
