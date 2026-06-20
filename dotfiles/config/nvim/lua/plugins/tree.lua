-- empty setup using defaults
return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				adaptive_size = true,
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
			actions = {
				open_file = {
					quit_on_open = false,
				},
			},
		})

		local nvim_tree_api = require("nvim-tree.api")
		vim.keymap.set("n", "<leader>t", function()
			nvim_tree_api.tree.toggle()
			-- require("nvim-tree.api").tree.toggle(false, true) -- Toggle without focusing
		end)
	end,
}
