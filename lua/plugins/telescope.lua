return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	event = 'VimEnter',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	config = function()
		require('telescope').setup {
			defaults = {
				initial_mode = "normal",
				border = false,
			},
			pickers = {
				current_buffer_fuzzy_find = {
					initial_mode = "insert",
				},
				find_files = {
					initial_mode = "insert",
				}
			}
		}
		local builtin = require 'telescope.builtin'
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
		vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
		vim.keymap.set('n', '<leader>fs', builtin.builtin, { desc = '[F]ind [S]elect Telescope' })
		vim.keymap.set({ 'n', 'v' }, '<leader>fw', builtin.grep_string, { desc = '[F]ind current [W]ord' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
		vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
		vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]ind [R]esume' })
		vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
		vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = '[F]ind [C]ommands' })
		vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
		vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find,
			{ desc = "[F]uzzy [L]ive search inside of the currently open buffer" })
		vim.keymap.set({ 'n', 'v' }, '<leader>lr', builtin.lsp_references,
			{ desc = 'Lists LSP references for word under the cursor' })
		vim.keymap.set({ 'n', 'v' }, '<leader>li', builtin.lsp_implementations,
			{ desc = "Goto the implementation of the word under the cursor" })
		vim.keymap.set({ 'n', 'v' }, '<leader>ld', builtin.lsp_definitions,
			{ desc = "Goto the definition of the word under the cursor" })
		vim.keymap.set('n', '<leader>gc', builtin.git_commits,
			{
				desc =
				"Lists git commits with diff preview, checkout action <cr>, reset mixed <C-r>m, reset soft <C-r>s and reset hard <C-r>h"
			})
		vim.keymap.set('n', '<leader>gb', builtin.git_branches,
			{
				desc =
				"Lists all branches with log preview, checkout action <cr>, track action <C-t>, rebase action<C-r>, create action <C-a>, switch action <C-s>, delete action <C-d> and merge action <C-y>"
			})
		vim.keymap.set('n', '<leader>gs', builtin.git_status,
			{ desc = "Lists current changes per file with diff preview and add action. (Multi-selection still WIP)" })
		vim.keymap.set('n', '<leader>t', builtin.treesitter,
			{ desc = 'Lists Function names, variables, ... using treesitter locals queries' })
	end,
}
