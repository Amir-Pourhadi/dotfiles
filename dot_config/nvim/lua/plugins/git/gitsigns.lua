-- ─────────────── 🌿 Git Signs ───────────────
return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },

	opts = {
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			-- Buffer-local keymap helper.
			local function map(mode, lhs, rhs, desc)
				vim.keymap.set(mode, lhs, rhs, {
					buffer = bufnr,
					desc = desc,
				})
			end

			-- ─────────────── 🧭 Navigation ───────────────
			map("n", "]h", gs.next_hunk, "Git: Next Hunk")
			map("n", "[h", gs.prev_hunk, "Git: Previous Hunk")

			-- ─────────────── ✨ Hunk Actions ───────────────
			map("n", "<leader>hs", gs.stage_hunk, "Git: Stage Hunk")
			map("n", "<leader>hr", gs.reset_hunk, "Git: Reset Hunk")

			map("v", "<leader>hs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Git: Stage Selection")

			map("v", "<leader>hr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Git: Reset Selection")

			map("n", "<leader>hS", gs.stage_buffer, "Git: Stage Buffer")
			map("n", "<leader>hR", gs.reset_buffer, "Git: Reset Buffer")
			map("n", "<leader>hu", gs.undo_stage_hunk, "Git: Undo Stage Hunk")
			map("n", "<leader>hp", gs.preview_hunk, "Git: Preview Hunk")

			-- ─────────────── 📝 Blame ───────────────
			map("n", "<leader>hb", function()
				gs.blame_line({ full = true })
			end, "Git: Blame Line")

			map("n", "<leader>hB", gs.toggle_current_line_blame, "Git: Toggle Line Blame")

			-- ─────────────── 🔍 Diff ───────────────
			map("n", "<leader>hd", gs.diffthis, "Git: Diff")

			map("n", "<leader>hD", function()
				gs.diffthis("~")
			end, "Git: Diff Against HEAD~")

			-- ─────────────── 📦 Text Object ───────────────
			map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Git: Select Hunk")
		end,
	},
}
