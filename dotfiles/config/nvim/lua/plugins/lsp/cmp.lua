return {
	"hrsh7th/nvim-cmp",
	lazy = false,
	dependencies = {
		"onsails/lspkind.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		{ "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },
	},
	config = function()
		local lspkind = require("lspkind")
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
				end,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lua" },
				{ name = "nvim_lsp" },
				{ name = "nvim_lsp_signature_help" },
				{ name = "path" },
				{ name = "luasnip" },
				{ name = "buffer", keyword_length = 4 },
			}),
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol_text",
					maxwidth = 50,
					ellipsis_char = "...",
					menu = {
						nvim_lua = "[API]",
						nvim_lsp_signature_help = "[HLP]",
						nvim_lsp = "[LSP]",
						path = "[PTH]",
						luasnip = "[SNP]",
						buffer = "[BUF]",
					},
					before = function(entry, vim_item)
						if vim.tbl_contains({ "path" }, entry.source.name) then
							local icon, hl_group =
								require("nvim-web-devicons").get_icon(entry:get_completion_item().label)
							if icon then
								vim_item.kind = icon
								vim_item.kind_hl_group = hl_group
								return vim_item
							end
						end
						return vim_item
					end,
				}),
			},
			window = {
				completion = {
					border = "rounded",
					-- scrollbar = "║",
				},
				documentation = {
					border = nil,
					-- scrollbar = "",
				},
			},
			experimental = {
				ghost_text = true,
				native_menu = false,
			},
		})

		-- local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()
		-- vim.lsp.config("*", { capabilities = cmp_capabilities })
	end,
}
