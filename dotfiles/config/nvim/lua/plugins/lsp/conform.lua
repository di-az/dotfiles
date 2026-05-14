return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt", "golines" },
			},
			format_on_save = {
				-- I recommend these options. See :help conform.format for details.
				lsp_format = "fallback",
			},
		})

		-- 	-- Format on save
		-- 	vim.api.nvim_create_autocmd("BufWritePre", {
		-- 		pattern = "*",
		-- 		callback = function(args)
		-- 			conform.format({ bufnr = args.buf })
		-- 		end,
		-- 	})
		--
		-- 	-- Format with keymap in normal mode
		-- 	local bufopts = { noremap = true, silent = true }
		-- 	vim.keymap.set("n", "<space>f", function(args)
		-- 		-- vim.lsp.buf.format({ async = true })
		-- 		conform.format({ bufnr = args.buf })
		-- 	end, bufopts)
		--
		-- 	-- Format command to format in command mode
		-- 	vim.api.nvim_create_user_command("Format", function(args)
		-- 		local range = nil
		-- 		if args.count ~= -1 then
		-- 			local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		-- 			range = {
		-- 				start = { args.line1, 0 },
		-- 				["end"] = { args.line2, end_line:len() },
		-- 			}
		-- 		end
		-- 		conform.format({ async = true, range = range })
		-- 	end, { range = true })
	end,
}
