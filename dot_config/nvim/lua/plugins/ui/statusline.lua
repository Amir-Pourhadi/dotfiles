-- ─────────────── 📊 Statusline ───────────────
return {
	"nvim-lualine/lualine.nvim",

	event = "VeryLazy",

	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local lazy_status = require("lazy.status")

		require("lualine").setup({
			options = {
				-- Use the active colorscheme (Catppuccin).
				theme = "auto",

				-- Use one statusline across all windows.
				globalstatus = true,

				section_separators = "",
				component_separators = "",
			},

			sections = {
				lualine_a = { "mode" },

				lualine_b = {
					"branch",
					"diff",
				},

				lualine_c = {
					{
						"filename",
						path = 1, -- Relative path
					},
				},

				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#f9e2af" },
					},
					"diagnostics",
					"filetype",
				},

				lualine_y = {
					"progress",
				},

				lualine_z = {
					"location",
				},
			},
		})
	end,
}
