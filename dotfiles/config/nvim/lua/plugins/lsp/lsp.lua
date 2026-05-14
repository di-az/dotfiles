return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			lua_ls = {
				settings = {
					Lua = {
						runtime = { version = "LuaJIT" },
						diagnostics = { globals = { "vim" } },
						workspace = { library = { vim.env.VIMRUNTIME }, checkThirdParty = false },
						completion = { callSnippet = "Replace" },
						telemetry = { enable = false },
					},
				},
			},
		},
	},
	config = function(_, opts)
		for name, cfg in pairs(opts.servers) do
			vim.lsp.config(name, cfg)
		end

		local diag_opts = { noremap = true, silent = true }
		-- vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, diag_opts)
		-- vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, diag_opts)
		vim.keymap.set("n", "<leader>dp", function()
			vim.diagnostic.jump({ count = -1, float = true })
		end, diag_opts)
		vim.keymap.set("n", "<leader>dn", function()
			vim.diagnostic.jump({ count = 1, float = true })
		end, diag_opts)
		vim.keymap.set("n", "<leader>dl", "<Cmd>Telescope diagnostics<CR>", diag_opts)
		vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, diag_opts)

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("my.lsp", {}),
			callback = function(args)
				local bufnr = args.buf
				local bufopts = { noremap = true, silent = true, buffer = bufnr }
				local _ = assert(vim.lsp.get_client_by_id(args.data.client_id))

				vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
				vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
				vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
				vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
				vim.keymap.set("n", "<space>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, bufopts)
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
				vim.keymap.set("n", "<C-c>", vim.lsp.buf.code_action, bufopts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
				vim.keymap.set("n", "<space>f", function()
					vim.lsp.buf.format({ async = true })
				end, bufopts)
				-- end
				-- end
			end,
		})
	end,
}
