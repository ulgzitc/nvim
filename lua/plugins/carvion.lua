return {
	"zitrocode/carvion.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("carvion").setup({
			transparent = false,
			styles = {
				comments = { italic = false },
			}
		})
		vim.cmd.colorscheme('carvion')
	end
}
