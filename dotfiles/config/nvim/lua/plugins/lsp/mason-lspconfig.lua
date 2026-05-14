return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = { "lua_ls" },
	},
	config = function()
		require("mason-lspconfig").setup({
			automatic_enable = true,
		})
	end,
}
