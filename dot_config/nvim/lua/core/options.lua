local opt = vim.opt
local g = vim.g

-- ---------------- 󰉿  Line Numbers ----------------
opt.number = true
opt.relativenumber = true

-- ---------------- 󰍹  UI Basics ----------------
g.have_nerd_font = true
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.fillchars = { eob = " " }

opt.showmode = false
opt.showcmd = false

-- ---------------- 󰉋  Editing Behavior ----------------
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = false

-- ---------------- 󰦨  Line Wrapping And Scrolling ----------------
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

-- ---------------- 󰍉  Search Settings ----------------
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- ---------------- 󰁔  Split Behavior ----------------
opt.splitright = true
opt.splitbelow = true

-- ---------------- 󰆏  Clipboard ----------------
opt.clipboard:append("unnamedplus")

-- ---------------- 󰌑  Backspace Behavior ----------------
opt.backspace = "indent,eol,start"

-- ---------------- 󰓅  Performance ----------------
opt.updatetime = 300
opt.timeoutlen = 300

-- ---------------- 󰏫  Netrw Disabled ----------------
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- ---------------- 󰆓  Swap / Backup / Undo ----------------
local data = vim.fn.stdpath("data")

opt.backup = true
opt.backupdir = data .. "/backup//"
opt.directory = data .. "/swap//"

opt.undofile = true
opt.undodir = data .. "/undo//"
