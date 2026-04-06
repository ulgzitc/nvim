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
	-- Optional dependencies
	dependencies = {
		{ "nvim-mini/mini.icons",    opts = {} },
		{ "benomahony/oil-git.nvim", opts = {} },
	},
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
