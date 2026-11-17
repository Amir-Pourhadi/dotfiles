-- lua/utils/map.lua

local M = {}

-- ─────────────── 🔑 Default Options ───────────────
-- Every mapping is non-recursive and silent unless overridden.
local defaults = {
	noremap = true,
	silent = true,
}

-- ─────────────── ⚙️ Generic Mapper ───────────────
---Create a keymap with project defaults.
---
---@param mode string|string[] Mode(s): "n", "i", "v", { "n", "v" }, etc.
---@param lhs string Left-hand side (key combination)
---@param rhs string|function Right-hand side (command or callback)
---@param opts? vim.keymap.set.Opts Additional options
function M.map(mode, lhs, rhs, opts)
	opts = vim.tbl_extend("force", defaults, opts or {})
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- ─────────────── 📖 Mode Helpers ───────────────

function M.n(lhs, rhs, opts)
	M.map("n", lhs, rhs, opts)
end

function M.i(lhs, rhs, opts)
	M.map("i", lhs, rhs, opts)
end

function M.v(lhs, rhs, opts)
	M.map("v", lhs, rhs, opts)
end

function M.x(lhs, rhs, opts)
	M.map("x", lhs, rhs, opts)
end

function M.s(lhs, rhs, opts)
	M.map("s", lhs, rhs, opts)
end

function M.o(lhs, rhs, opts)
	M.map("o", lhs, rhs, opts)
end

function M.t(lhs, rhs, opts)
	M.map("t", lhs, rhs, opts)
end

function M.c(lhs, rhs, opts)
	M.map("c", lhs, rhs, opts)
end

return M
