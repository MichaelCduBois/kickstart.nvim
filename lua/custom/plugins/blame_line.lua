return {
  {
    'braxtons12/blame_line.nvim',
    lazy = false,
    config = function()
      require('blame_line').setup {
        show_in_insert = false,
        template = '<author> • <author-time> • <commit-short> • <summary>',
        prefix = '',
      }
    end,
  },
}
