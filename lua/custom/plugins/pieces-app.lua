return {
  'pieces-app/plugin_neovim',
  lazy = false,
  dependencies = {
    'kyazdani42/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('pieces.config').host = 'http://localhost:1000'
    -- normal mode keybinds
    vim.keymap.set('n', '<leader>pc', ':PiecesCopilot<cr>', { desc = 'Open [P]ieces [C]opilot' })
    vim.keymap.set('n', '<leader>pC', ':PiecesConversations<cr>', { desc = 'Open [P]ieces [C]onversation Window' })
    vim.keymap.set('n', '<leader>ph', ':PiecesHealth<cr>', { desc = 'Show [P]ieces [H]ealth' })
    vim.keymap.set('n', '<leader>po', ':PiecesOSVersion<cr>', { desc = 'Show [P]ieces [O]S Version' })
    vim.keymap.set('n', '<leader>pp', ':PiecesPluginVersion<cr>', { desc = 'Show [P]ieces [P]lugin Version' })
    vim.keymap.set('n', '<leader>ps', ':PiecesSnippets<cr>', { desc = 'Search stored [P]ieces [S]nippets' })
    -- visual mode keybinds
    vim.keymap.set('v', '<leader>pc', ':PiecesCreateSnippet<cr>', { desc = '[P]ieces [C]reate Snippet' })
  end,
}
