-- local my_colorscheme = "rose-pine"
local my_colorscheme = "catppuccin-frappe"

function ColorMyPencils(color)
	my_colorscheme = color or my_colorscheme
	vim.cmd.colorscheme(my_colorscheme)

	local hl = function(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	-- Transparent Neovim
	-- hl("Normal", { bg = "none" })
	-- hl("NormalFloat", { bg = "none" })
	-- hl("NormalFloat", { bg = "blue" })

	-- hl("Normal", { bg = "none" })
	hl("NormalFloat", { bg = "none" })
	hl("FloatBorder", {
		bg = "none",
		-- 	fg = "red",
	})
	-- vim.api.l

	-- Indent line
	hl("IndentBlanklineContextStart", { fg = "#FF0000", nocombine = true })
	hl("IndentBlanklineContextChar", { fg = "#FFFF00", nocombine = true })
	hl("IndentBlanklineChar", { fg = "#353535", nocombine = true })

	hl("SignColumn", { bg = "none" })
	hl("TabLine", { bg = "none" })

	-- COLUMN LINE
	hl("CursorLineNR", { bg = "None", fg = "#E24329" })
	-- hl("LineNr", { fg = "#5eacd3" })
end

-- ColorMyPencils(my_colorscheme)

return {
	{
		"xero/miasma.nvim",
		lazy = false,
		priority = 1000,
		-- config = function()
		-- 	vim.cmd("colorscheme miasma")
		-- end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
