-- ---------------- 󰉼  Colorscheme ----------------

return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,

	opts = {
		flavour = "mocha",
		transparent_background = true,
		float = {
			transparent = true,
			solid = false,
		},
		auto_integrations = false,
		integrations = {
			blink_cmp = true,
			gitsigns = true,
			treesitter = true,
			mason = true,
			which_key = true,
			snacks = true,
		},
	},

	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme("catppuccin")
	end,
}
