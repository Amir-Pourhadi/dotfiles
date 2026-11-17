--─── 🧭 Leader Key ─────────────────────────
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--─── 🧰 Keymap Helper ───────────────────────
local map = require("utils.map")

--─── 🧹 General Actions ─────────────────────
map.n("<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })
map.n("<leader>w", "<cmd>wa<CR>", { desc = "Save all files" })
map.n("<leader>q", "<cmd>qa<CR>", { desc = "Quit Neovim" })

--─── 🔢 Numbers ─────────────────────────────
map.n("<leader>+", "<C-a>", { desc = "Increment number" })
map.n("<leader>-", "<C-x>", { desc = "Decrement number" })

--─── 🪟 Window Management ───────────────────
map.n("<leader>vv", "<C-w>v", { desc = "Split vertically" })
map.n("<leader>vh", "<C-w>s", { desc = "Split horizontally" })
map.n("<leader>ve", "<C-w>=", { desc = "Equalize splits" })
map.n("<leader>vx", "<cmd>close<CR>", { desc = "Close split" })

--─── 📑 Tabs ────────────────────────────────
map.n("<leader>to", "<cmd>tabnew<CR>", { desc = "New tab" })
map.n("<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab" })
map.n("<leader>tn", "<cmd>tabnext<CR>", { desc = "Next tab" })
map.n("<leader>tp", "<cmd>tabprevious<CR>", { desc = "Previous tab" })
map.n("<leader>tf", "<cmd>tabnew %<CR>", { desc = "Buffer in new tab" })

--─── 📂 Buffers ─────────────────────────────
map.n("<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer" })
map.n("<leader>bp", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map.n("<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })

--─── ✍️ Text Editing ────────────────────────
map.v("<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map.v("<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

map.n("J", "mzJ`z", { desc = "Join lines (cursor preserved)" })

--─── 🧭 Navigation Improvements ─────────────
map.n("n", "nzzzv", { desc = "Next search result centered" })
map.n("N", "Nzzzv", { desc = "Previous search result centered" })

map.n("H", "^", { desc = "Go to start of line" })
map.n("L", "$", { desc = "Go to end of line" })

--─── 🔝 File Navigation ─────────────────────
map.n("gg", "gg0", { desc = "Go to top of file (column 0)" })

--─── 🧰 Tools ────────────────────────────────
map.n("<leader>L", "<cmd>Lazy<CR>", { desc = "Open Lazy (Plugin Manager)" })
map.n("<leader>M", "<cmd>Mason<CR>", { desc = "Open Mason (LSP/Tool Installer)" })
map.n("<leader>lI", "<cmd>LspInfo<CR>", { desc = "LSP Info" })
map.n("<leader>lc", "<cmd>ConformInfo<CR>", { desc = "Conform Info (Formatter Status)" })
map.n("<leader>ch", "<cmd>checkhealth<CR>", { desc = "Checkhealth" })
