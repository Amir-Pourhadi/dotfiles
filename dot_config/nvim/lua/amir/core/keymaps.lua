-- Leader
vim.g.mapleader = " "

-- 🔥 Snappy keymap behavior
vim.opt.timeout = true
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 0

-- Helper function
local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end

-- ---------------------------------------------
-- 🧹 General
-- ---------------------------------------------
map("n", "<leader>nh", function() vim.cmd.nohlsearch() end, "🧹 Clear search highlights")
map("n", "<leader>w", function() vim.cmd.write() end, "💾 Save file")
map("n", "<leader>q", function() vim.cmd.quit() end, "❌ Quit file")
map("n", "<leader>wq", function() vim.cmd("wq") end, "💾❌ Save & quit")

-- ---------------------------------------------
-- 🔢 Numbers
-- ---------------------------------------------
map("n", "<leader>+", "<C-a>", "🔼 Increment number")
map("n", "<leader>-", "<C-x>", "🔽 Decrement number")

-- ---------------------------------------------
-- 🪟 Window Management
-- ---------------------------------------------
map("n", "<leader>sv", "<C-w>v", "🖼 Vertical split")
map("n", "<leader>sh", "<C-w>s", "🖼 Horizontal split")
map("n", "<leader>se", "<C-w>=", "⚖ Equalize splits")
map("n", "<leader>sx", "<cmd>close<CR>", "❌ Close split")

-- ---------------------------------------------
-- 📑 Tabs
-- ---------------------------------------------
map("n", "<leader>to", "<cmd>tabnew<CR>", "🆕 New tab")
map("n", "<leader>tx", "<cmd>tabclose<CR>", "❌ Close tab")
map("n", "<leader>tn", "<cmd>tabnext<CR>", "➡ Next tab")
map("n", "<leader>tp", "<cmd>tabprevious<CR>", "⬅ Previous tab")
map("n", "<leader>tf", "<cmd>tabnew %<CR>", "📄 Open buffer in new tab")

-- ---------------------------------------------
-- 📂 Buffers
-- ---------------------------------------------
map("n", "<leader>bn", "<cmd>bnext<CR>", "➡ Next buffer")
map("n", "<leader>bp", "<cmd>bprevious<CR>", "⬅ Previous buffer")
map("n", "<leader>bd", "<cmd>bdelete<CR>", "❌ Delete buffer")

-- ---------------------------------------------
-- ✏️ Text Editing & Movement
-- ---------------------------------------------
map("v", "<A-j>", ":m '>+1<CR>gv=gv", "⬇ Move selection down")
map("v", "<A-k>", ":m '<-2<CR>gv=gv", "⬆ Move selection up")

-- Keep cursor centered when joining lines
map("n", "J", "mzJ`z", "🔗 Join lines (cursor preserved)")

-- Replace word under cursor
map("n", "<leader>r",
  ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
  "🔁 Replace word under cursor"
)

-- ---------------------------------------------
-- 🧭 Navigation
-- ---------------------------------------------
map("n", "n", "nzzzv", "🔎 Next search result (centered)")
map("n", "N", "Nzzzv", "🔎 Prev search result (centered)")

map("n", "H", "^", "⏮ Start of line")
map("n", "L", "$", "⏭ End of line")

-- ---------------------------------------------
-- 📋 Clipboard
-- ---------------------------------------------
map({ "n", "v" }, "<leader>y", '"+y', "📋 Yank → System clipboard")
map("n", "<leader>Y", '"+Y', "📋 Yank line → System clipboard")
map({ "n", "v" }, "<leader>p", '"+p', "📥 Paste from clipboard")
map({ "n", "v" }, "<leader>P", '"+P', "📤 Paste before cursor")

-- ---------------------------------------------
-- 🐞 Quickfix
-- ---------------------------------------------
map("n", "<leader>co", "<cmd>copen<CR>", "📖 Open quickfix")
map("n", "<leader>cc", "<cmd>cclose<CR>", "❌ Close quickfix")
map("n", "<leader>cn", "<cmd>cnext<CR>", "➡ Next quickfix item")
map("n", "<leader>cp", "<cmd>cprevious<CR>", "⬅ Prev quickfix item")

-- ---------------------------------------------
-- 📂 Folding
-- ---------------------------------------------
map("n", "<leader>za", "za", "📂 Toggle fold")
map("n", "<leader>zc", "zc", "📂 Close fold")
map("n", "<leader>zo", "zo", "📂 Open fold")

-- ---------------------------------------------
-- 🔝 Better gg
-- ---------------------------------------------
map("n", "gg", "gg0", "🔝 Go to top (column 0)")

