-- ---------------- 󰢱  LSP Configuration ----------------

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },

	dependencies = {
		"saghen/blink.cmp",
		{
			"folke/lazydev.nvim",
			opts = {},
		},
	},

	config = function()
		-- ---------------- 󰒡  Diagnostics ----------------
		local severity = vim.diagnostic.severity

		vim.diagnostic.config({
			virtual_text = true,
			signs = {
				text = {
					[severity.ERROR] = " ",
					[severity.WARN] = " ",
					[severity.HINT] = "󰠠 ",
					[severity.INFO] = " ",
				},
			},
			underline = true,
			update_in_insert = false,
			severity_sort = true,
			float = {
				border = "rounded",
			},
		})

		-- ---------------- 󰏖  Capabilities ----------------
		local capabilities = vim.lsp.protocol.make_client_capabilities()

		local ok, blink = pcall(require, "blink.cmp")
		if ok then
			capabilities = blink.get_lsp_capabilities(capabilities)
		end

		-- ---------------- 󰢱  Language Servers ----------------
		local servers = {
			ts_ls = {},
			eslint = {},
			pyright = {},
			html = {},
			cssls = {},
			jsonls = {},
			yamlls = {},

			lua_ls = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			},
		}

		for server, config in pairs(servers) do
			config.capabilities = vim.tbl_deep_extend("force", capabilities, config.capabilities or {})

			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end,
}
