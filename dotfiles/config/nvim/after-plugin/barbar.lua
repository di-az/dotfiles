local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)

-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)

-- Set barbar's options
require("barbar").setup({
	-- Enable/disable animations
	animation = true,
	-- Enable/disable auto-hiding the tab bar when there is a single buffer
	auto_hide = false,
	-- Enable/disable current/total tabpages indicator (top right corner)
	tabpages = true,
	-- Enable/disable close button
	closable = true,
	-- Enables/disable clickable tabs
	--  - left-click: go to buffer
	--  - middle-click: delete buffer
	clickable = true,
	-- Enables / disables diagnostic symbols
	-- diagnostics = {
	-- 	[vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
	-- 	[vim.diagnostic.severity.WARN] = { enabled = false },
	-- 	[vim.diagnostic.severity.INFO] = { enabled = false },
	-- 	[vim.diagnostic.severity.HINT] = { enabled = true },
	-- },

	-- Disable highlighting alternate buffers
	highlight_alternate = false,
	-- Disable highlighting file icons in inactive buffers
	highlight_inactive_file_icons = false,
	-- Enable highlighting visible buffers
	highlight_visible = true,
	-- Enable/disable icons
	icons = {
		filetype = {
			icon_custom_colors = false,
			enabled = true,
		},
		-- button = "",
		-- modified = "●",
		pinned = {
			button = "車",
		},
	},
	-- Configure icons on the bufferline.
	-- icon_separator_active = "▎",
	-- icon_separator_inactive = "▎",
})
