-- ---------------- 󰏖  Mason Tool Installer ----------------

return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	event = "VeryLazy",

	dependencies = {
		"mason-org/mason.nvim",
	},

	opts = {
		ensure_installed = {
			-- Language servers
			"typescript-language-server",
			"eslint-lsp",
			"html-lsp",
			"css-lsp",
			"json-lsp",
			"yaml-language-server",
			"lua-language-server",

			-- Formatters
			"stylua",
			"prettier",
			"isort",
			"black",
		},

		run_on_start = true,
		start_delay = 3000,
		auto_update = false,
	},
}
