-- ---------------- 󰐅  Tree-sitter ----------------

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").setup()

		local group = vim.api.nvim_create_augroup("UserTreeSitter", {
			clear = true,
		})

		vim.api.nvim_create_autocmd("FileType", {
			group = group,
			pattern = {
				"lua",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"html",
				"css",
				"python",
			},
			callback = function(event)
				pcall(vim.treesitter.start, event.buf)
			end,
		})
	end,
}
