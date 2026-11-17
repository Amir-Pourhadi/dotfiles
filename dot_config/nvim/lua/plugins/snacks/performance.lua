return {
	-- 󰍛  Optimize editing large files.
	bigfile = {
		enabled = true,
	},

	-- 󰓅  Speed up startup when opening files directly.
	quickfile = {
		enabled = true,
	},

	-- 󰈈  Distraction-free editing mode.
	zen = {
		enabled = true,

		toggles = {
			dim = true,
			diagnostics = true,
			git_signs = false,
			inlay_hints = false,
		},

		show = {
			statusline = false,
			tabline = false,
		},
	},
}
