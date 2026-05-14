require("rose-pine").setup({
	disable_background = true,
})

require("onedark").setup({
	transparent = true, -- Show/hide background
})

require("catppuccin").setup({
	transparent = true,
})

-- SET UP COLORSCHEME
local my_colorscheme = "rose-pine"

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

ColorMyPencils(my_colorscheme)
