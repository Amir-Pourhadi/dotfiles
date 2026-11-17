-- ----------------   Dashboard ----------------

return {
	enabled = true,

	-- 󰀘  Customize the built-in dashboard preset.
	preset = {
		-- 󰇥  Header displayed at the top of the dashboard.
		header = [[
███╗   ██╗██╗   ██╗██╗███╗   ███╗
████╗  ██║██║   ██║██║████╗ ████║
██╔██╗ ██║██║   ██║██║██╔████╔██║
██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
]],

		-- 󰘳  Frequently used actions.
		keys = {
			{
				icon = " ",
				key = "f",
				desc = "Find File",
				action = ":lua Snacks.picker.files()",
			},
			{
				icon = " ",
				key = "r",
				desc = "Recent Files",
				action = ":lua Snacks.picker.recent()",
			},
			{
				icon = " ",
				key = "e",
				desc = "Explorer",
				action = ":lua Snacks.explorer()",
			},
			{
				icon = "󰊢 ",
				key = "g",
				desc = "LazyGit",
				action = ":lua Snacks.lazygit()",
			},
			{
				icon = " ",
				key = "q",
				desc = "Quit",
				action = ":qa",
			},
		},
	},

	-- 󰇚  Dashboard layout.
	sections = {
		{ section = "header" },
		{ section = "keys", gap = 1, padding = 1 },
		{ section = "startup" },
	},
}
