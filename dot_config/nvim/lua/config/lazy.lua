-- ---------------- 󰒲  Lazy.nvim Bootstrap ----------------

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	local repo = "https://github.com/folke/lazy.nvim.git"

	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		repo,
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- ---------------- 󰏖  Plugin Specifications ----------------

local spec = {
	{ import = "plugins.coding" },
	{ import = "plugins.editor" },
	{ import = "plugins.git" },
	{ import = "plugins.lsp" },
	{ import = "plugins.ui" },
	{ import = "plugins.workflow" },
}

-- ---------------- 󰒲  Lazy.nvim Setup ----------------

require("lazy").setup({
	spec = spec,

	defaults = {
		lazy = true,
	},

	install = {
		colorscheme = { "catppuccin mocha" },
	},

	ui = {
		border = "rounded",
	},

	checker = {
		enabled = true,
		notify = false,
	},

	change_detection = {
		notify = false,
	},
})
