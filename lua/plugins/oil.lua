return {
	'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		keymaps = {
			["tn"] = {
				desc = "Toggle file detail view",
				callback = function()
					require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
				end,
			},
			["tf"] = {
				desc = "Toggle off file detail view",
				callback = function()
					require("oil").set_columns({ "icon" })
				end,
			},
		},
	},
	dependencies = {
		{ "nvim-mini/mini.icons",    opts = {} },
		{ "benomahony/oil-git.nvim", opts = {} },
	},
	lazy = false,
}
