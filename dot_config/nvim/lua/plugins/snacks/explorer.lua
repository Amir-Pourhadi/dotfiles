-- ---------------- 󰙅  Explorer ----------------

return {
	enabled = true,

	-- ---------------- 󰕰  Layout ----------------
	layout = {
		layout = {
			box = "horizontal",
			width = 0.25,
			min_width = 30,
			height = 0.9,
			border = "rounded",
			{
				box = "vertical",
				border = "rounded",
				title = " Explorer",
				title_pos = "center",
				{ win = "input", height = 1, border = "bottom" },
				{ win = "list", border = "none" },
			},
		},
	},

	-- ---------------- ⚙️  Behavior ----------------
	auto_close = false,
	jump = {
		close = false,
	},

	follow_file = true,
	hidden = true,
	ignored = false,

	-- ---------------- 🌳  Tree Behavior ----------------
	win = {
		list = {
			keys = {
				["<CR>"] = "confirm",
				["v"] = "edit_vsplit",
				["s"] = "edit_split",
				["h"] = "explorer_up",
				["l"] = "confirm",
				["a"] = "explorer_add",
				["d"] = "explorer_del",
				["r"] = "explorer_rename",
				["y"] = "explorer_yank",
				["p"] = "explorer_paste",
				["c"] = "explorer_copy",
				["m"] = "explorer_move",
				["u"] = "explorer_update",
			},
		},
	},
}
