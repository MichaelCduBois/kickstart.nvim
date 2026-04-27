return {
	"f-person/git-blame.nvim",
	event = "VeryLazy",
	opts = {
		enabled = true,
		date_format = "%Y/%m/%d %H:%M:%S",
		ignored_filetypes = {
			"netrw",
		},
	},

	-- set keybinds
	vim.keymap.set('n', '<leader>gc', ':GitBlameOpenCommitURL<cr>', { desc = '[G]it Blame open [C]ommit URL in browser' }),
	vim.keymap.set('n', '<leader>gf', ':GitBlameOpenFileURL<cr>', { desc = '[G]it Blame open [F]ile URL in browser' }),
}
