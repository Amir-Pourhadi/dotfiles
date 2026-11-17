-- ---------------- 󰆍  Terminal ----------------
-- A floating scratch terminal for quick shell commands, without
-- leaving the single-terminal + tmux workflow philosophy —
-- this is for one-off commands, not a tmux replacement.

return {
	enabled = true,

	-- ---------------- 🎨 Layout ----------------
	-- Floating, centered, rounded — consistent with picker/explorer.
	win = {
		style = "float",
		border = "rounded",
		width = 0.8,
		height = 0.8,

		-- 󰌌  Keymaps scoped to the terminal buffer only.
		keys = {
			-- Escape terminal mode without needing <C-\><C-n>.
			term_normal = { "<Esc>", "<Esc>", mode = "t", desc = "Normal Mode" },
		},
	},

	-- 󰐊  Start directly in insert mode (ready to type immediately).
	start_insert = true,

	-- 󰑐  Auto-insert when re-entering the terminal buffer.
	auto_insert = true,

	-- 󰅖  Close the terminal buffer when its process exits.
	auto_close = true,
}
