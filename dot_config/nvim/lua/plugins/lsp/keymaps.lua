-- ---------------- 󰌌  LSP Keymaps ----------------

return {
	"neovim/nvim-lspconfig",

	init = function()
		local group = vim.api.nvim_create_augroup("UserLspKeymaps", {
			clear = true,
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = group,

			callback = function(event)
				local buffer = event.buf

				local function map(lhs, rhs, desc, modes)
					vim.keymap.set(modes or "n", lhs, rhs, {
						buffer = buffer,
						silent = true,
						desc = desc,
					})
				end

				-- ---------------- 󰢱  Navigation ----------------
				map("<leader>ld", vim.lsp.buf.definition, "Go to Definition")
				map("<leader>lD", vim.lsp.buf.declaration, "Go to Declaration")
				map("<leader>li", vim.lsp.buf.implementation, "Go to Implementation")
				map("<leader>lr", vim.lsp.buf.references, "Find References")
				map("<leader>lh", vim.lsp.buf.hover, "Hover Documentation")

				-- ---------------- 󰏫  Code Actions ----------------
				map("<leader>la", vim.lsp.buf.code_action, "Code Action", { "n", "x" })
				map("<leader>ln", vim.lsp.buf.rename, "Rename Symbol")

				-- ---------------- 󰒡  Diagnostics ----------------
				map("<leader>le", function()
					vim.diagnostic.open_float({ scope = "line" })
				end, "Line Diagnostics")

				map("<leader>lp", function()
					vim.diagnostic.jump({ count = -1 })
				end, "Previous Diagnostic")

				map("<leader>lN", function()
					vim.diagnostic.jump({ count = 1 })
				end, "Next Diagnostic")

				map("<leader>ll", function()
					vim.diagnostic.setloclist({ open = true })
				end, "Diagnostic Location List")
			end,
		})
	end,
}
