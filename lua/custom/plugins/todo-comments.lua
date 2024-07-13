return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  config = function()
    local todoComments = require('todo-comments')
    todoComments:setup()

    -- Search Todos
    vim.keymap.set('n', '<leader>st', ':TodoTelescope<cr>', { desc = '[S]earch for [T]odos in Git Root' })
  end,
}
