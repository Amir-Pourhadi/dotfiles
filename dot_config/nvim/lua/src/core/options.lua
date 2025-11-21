local opt    = vim.opt                      -- For conciseness
local data   = vim.fn.stdpath("data")       -- Usually ~/.local/share/nvim
local global = vim.g

--─── 📁 Netrw File Explorer ───────────────
global.netrw_liststyle = 3                  -- Explorer-style view
global.netrw_banner    = 0                  -- Remove banner

--─── 🔢 Line Numbers ───────────────────────
opt.number           = true                 -- Show absolute line number on cursor line (when relative number is on)
opt.relativenumber   = true                 -- Show relative line numbers

--─── 📝 Tabs And Indentation ──────────────
opt.tabstop       = 2                       -- 2 spaces for tabs (prettier default)
opt.shiftwidth    = 2                       -- 2 spaces for indent width
opt.expandtab     = true                    -- Expand tab to spaces
opt.autoindent    = true                    -- Copy indent from current line when starting a new one
opt.smartindent   = true                    -- Add basic language-aware indentation

--─── 📜 Line Wrapping And Scrolling ───────
opt.wrap           = false                  -- Disable line wrapping
opt.scrolloff      = 8                      -- Keep cursor 8 lines from screen edge vertically
opt.sidescrolloff  = 8                      -- Keep cursor 8 columns from screen edge horizontally

--─── 🔍 Search Settings ────────────────────
opt.ignorecase     = true                   -- Ignore case when searching
opt.smartcase      = true                   -- Enable case-sensitive search when using uppercase letters
opt.hlsearch       = true                   -- Highlight search matches
opt.incsearch      = true                   -- Show matches while typing

--─── 🖊 Cursor Line ────────────────────────
opt.cursorline     = true                   -- Highlight the current cursor line

--─── 🎨 Appearance ─────────────────────────
opt.termguicolors  = true                   -- Enable true colors for modern themes (e.g., nightfly)
opt.background     = "dark"                 -- Use dark background for compatible colorschemes
opt.signcolumn     = "yes"                  -- Keep sign column visible to avoid text shifting

--─── ⌫ Backspace Behavior ─────────────────
opt.backspace      = "indent,eol,start"     -- Allow backspace on indent, end of line, or insert mode start position

--─── 📋 Clipboard ─────────────────────────
opt.clipboard:append("unnamedplus")         -- Use system clipboard as default register

--─── 🪟 Split Window Behavior ──────────────
opt.splitright     = true                   -- Vertical splits go to the right
opt.splitbelow     = true                   -- Horizontal splits go below

--─── 💾 Swap Files ─────────────────────────
opt.swapfile       = true                   -- Enable swap files for crash recovery
opt.directory      = data .. "/swap//"      -- Store swap files in centralized directory

--─── 🗂 Backup Files ───────────────────────
opt.backup         = true                   -- Enable backup files
opt.backupdir      = data .. "/backup//"    -- Store backup files in centralized directory

--─── 🔄 Undo Files ─────────────────────────
opt.undofile       = true                   -- Enable persistent undo
opt.undodir        = data .. "/undo//"      -- Store undo files in centralized directory

--─── 🛡 Fine-Tune Safety Behaviors ─────────
opt.writebackup    = true                   -- Keep backup until write is done
opt.undolevels     = 1000                   -- Maximum undo levels
opt.updatetime     = 300                    -- Faster swap/backup writes

