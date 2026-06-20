return {
	{
		dir = "/Users/diaz/code/projects/related",
		config = function()
			require("related").setup()
		end,
		keys = {
			{
				"<leader>rf",
				function()
					require("related").open()
				end,
				desc = "Related File",
			},
		},
	},
}
