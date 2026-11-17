-- ─────────────── ✨ Formatting ───────────────
return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },

	opts = {
		-- Configure formatters by filetype.
		formatters_by_ft = {
			lua = { "stylua" },

			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },

			html = { "prettier" },
			css = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			svelte = { "prettier" },
			graphql = { "prettier" },
			liquid = { "prettier" },

			python = { "isort", "black" },
		},

		-- Automatically format files before saving.
		format_on_save = {
			timeout_ms = 1000,
			lsp_fallback = true,
		},
	},

	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({
					async = false,
					lsp_fallback = true,
					timeout_ms = 1000,
				})
			end,
			mode = { "n", "v" },
			desc = "Format Buffer",
		},
	},
}
