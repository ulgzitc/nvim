return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"ty",
			"clangd",
			--			"curlylint",
			--			"css-lsp",
			"ruff",
			--			"bash-language-server",
			--			"tsserver",
			--			"yaml-language-server",
			--				"ini_ls",
		},
		automatic_installation = true,
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
