-- ---------------- 󰭎  Picker ----------------
-- Replaces telescope.nvim entirely: files, grep, buffers, LSP,
-- diagnostics, git, help — all through Snacks.picker.

return {
	enabled = true,

	-- 󰆾  Use Snacks for vim.ui.select (code actions, LSP renames, etc.)
	ui_select = true,

	-- ---------------- 🎨 Layout ----------------
	-- Match the rounded/minimal aesthetic used across LSP + Lazy UI.
	layout = {
		preset = "default",
		cycle = true,
	},

	-- Layout presets you can call per-source with `layout = "vscode"` etc.
	layouts = {
		default = {
			layout = {
				box = "horizontal",
				width = 0.8,
				height = 0.8,
				border = "rounded",
				{
					box = "vertical",
					border = "rounded",
					title = "{title}",
					title_pos = "center",
					{ win = "input", height = 1, border = "bottom" },
					{ win = "list", border = "none" },
				},
				{ win = "preview", title = "{preview}", border = "rounded", width = 0.5 },
			},
		},

		-- Compact centered picker for quick, low-context lookups
		-- (command palette, keymaps, help pages).
		vscode = {
			layout = {
				backdrop = false,
				row = 1,
				width = 0.5,
				min_width = 80,
				height = 0.4,
				border = "rounded",
				box = "vertical",
				{ win = "input", height = 1, border = "bottom" },
				{ win = "list", border = "none" },
				{ win = "preview", title = "{preview}", height = 0.4, border = "top" },
			},
		},
	},

	-- ---------------- 🧰 Behavior ----------------
	win = {
		input = {
			keys = {
				["<Esc>"] = { "close", mode = { "n", "i" } },
				["<C-j>"] = { "list_down", mode = { "i", "n" } },
				["<C-k>"] = { "list_up", mode = { "i", "n" } },
				["<C-q>"] = { "qflist", mode = { "i", "n" } },
			},
		},
	},

	-- ---------------- 📝 Formatters ----------------
	formatters = {
		file = {
			filename_first = true,
			truncate = "center",
		},
	},

	-- ---------------- 📁 Source Overrides ----------------
	sources = {
		files = {
			hidden = true,
			ignored = false,
		},

		grep = {
			hidden = true,
		},

		recent = {
			filter = { cwd = true },
		},

		buffers = {
			current = false,
			sort_lastused = true,
		},

		diagnostics = {
			layout = "vscode",
		},

		help = {
			layout = "vscode",
		},

		keymaps = {
			layout = "vscode",
		},

		command_history = {
			layout = "vscode",
		},
	},
}
